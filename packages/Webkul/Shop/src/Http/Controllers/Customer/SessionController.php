<?php

namespace Webkul\Shop\Http\Controllers\Customer;

use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Event;
use Webkul\Shop\Http\Controllers\Controller;
use Webkul\Shop\Http\Requests\Customer\LoginRequest;

class SessionController extends Controller
{
    /**
     * Display the resource.
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\View\View
     */
    public function index()
    {
        if (auth()->guard('customer')->check()) {
            return redirect()->route('shop.home.index');
        }

        return view('shop::customers.sign-in');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response|\Illuminate\Http\JsonResponse
     */
    public function store(LoginRequest $loginRequest)
    {
        if (! auth()->guard('customer')->attempt($loginRequest->only(['email', 'password']))) {
            // MODIFICACIÓN SENA: Error de autenticación en JSON si es petición API
            if ($loginRequest->expectsJson()) {
                return response()->json([
                    'status'  => 'error',
                    'message' => 'Error en la autenticación'
                ], 401);
            }

            session()->flash('error', trans('shop::app.customers.login-form.invalid-credentials'));

            return redirect()->back();
        }

        if (! auth()->guard('customer')->user()->status) {
            auth()->guard('customer')->logout();

            if ($loginRequest->expectsJson()) {
                return response()->json([
                    'status'  => 'error',
                    'message' => 'Error en la autenticación: Cuenta inactiva'
                ], 401);
            }

            session()->flash('warning', trans('shop::app.customers.login-form.not-activated'));

            return redirect()->back();
        }

        if (! auth()->guard('customer')->user()->is_verified) {
            if ($loginRequest->expectsJson()) {
                return response()->json([
                    'status'  => 'error',
                    'message' => 'Error en la autenticación: Cuenta no verificada'
                ], 401);
            }

            session()->flash('info', trans('shop::app.customers.login-form.verify-first'));

            Cookie::queue(Cookie::make('enable-resend', 'true', 1));

            Cookie::queue(Cookie::make('email-for-resend', $loginRequest->get('email'), 1));

            auth()->guard('customer')->logout();

            return redirect()->back();
        }

        /**
         * Event passed to prepare cart after login.
         */
        Event::dispatch('customer.after.login', auth()->guard()->user());

        // MODIFICACIÓN SENA: Mensaje explícito de autenticación satisfactoria para Postman
        if ($loginRequest->expectsJson()) {
            return response()->json([
                'status'  => 'success',
                'message' => 'Autenticación satisfactoria',
                'user'    => auth()->guard('customer')->user()
            ], 200);
        }

        if (core()->getConfigData('customer.settings.login_options.redirected_to_page') == 'account') {
            return redirect()->route('shop.customers.account.profile.index');
        }

        return redirect()->route('shop.home.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        auth()->guard('customer')->logout();

        Event::dispatch('customer.after.logout', $id);

        return redirect()->route('shop.home.index');
    }
}