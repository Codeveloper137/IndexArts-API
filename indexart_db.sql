-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2026 a las 06:48:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `indexart_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `address_type` varchar(191) NOT NULL,
  `parent_address_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'null if guest checkout',
  `cart_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for cart_addresses',
  `order_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for order_addresses',
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `postcode` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `vat_id` varchar(191) DEFAULT NULL,
  `default_address` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'only for customer_addresses',
  `use_for_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `addresses`
--

INSERT INTO `addresses` (`id`, `address_type`, `parent_address_id`, `customer_id`, `cart_id`, `order_id`, `first_name`, `last_name`, `gender`, `company_name`, `address`, `city`, `state`, `country`, `postcode`, `email`, `phone`, `vat_id`, `default_address`, `use_for_shipping`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'cart_billing', NULL, NULL, 1, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 1, NULL, '2026-08-10 22:47:24', '2026-08-10 22:47:24'),
(2, 'cart_shipping', NULL, NULL, 1, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-10 22:47:24', '2026-08-10 22:47:24'),
(3, 'order_shipping', NULL, NULL, NULL, 1, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-10 22:48:10', '2026-08-10 22:48:10'),
(4, 'order_billing', NULL, NULL, NULL, 1, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-10 22:48:10', '2026-08-10 22:48:10'),
(5, 'cart_billing', NULL, NULL, 2, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 1, NULL, '2026-08-11 02:15:26', '2026-08-11 02:15:26'),
(6, 'cart_shipping', NULL, NULL, 2, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-11 02:15:26', '2026-08-11 02:15:26'),
(7, 'cart_billing', NULL, NULL, 4, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 1, NULL, '2026-08-27 04:39:53', '2026-08-27 04:39:53'),
(8, 'cart_shipping', NULL, NULL, 4, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-27 04:39:53', '2026-08-27 04:39:53'),
(9, 'order_shipping', NULL, NULL, NULL, 2, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-27 04:42:28', '2026-08-27 04:42:28'),
(10, 'order_billing', NULL, NULL, NULL, 2, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-27 04:42:28', '2026-08-27 04:42:28'),
(11, 'cart_billing', NULL, NULL, 5, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'Atlántico', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 1, NULL, '2026-08-27 04:43:00', '2026-08-27 04:43:00'),
(12, 'cart_shipping', NULL, NULL, 5, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'Atlántico', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-27 04:43:00', '2026-08-27 04:43:00'),
(13, 'order_shipping', NULL, NULL, NULL, 3, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'Atlántico', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-27 04:43:07', '2026-08-27 04:43:07'),
(14, 'order_billing', NULL, NULL, NULL, 3, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'Atlántico', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-27 04:43:07', '2026-08-27 04:43:07'),
(15, 'cart_billing', NULL, NULL, 6, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 1, NULL, '2026-08-27 04:43:35', '2026-08-27 04:43:35'),
(16, 'cart_shipping', NULL, NULL, 6, NULL, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-27 04:43:35', '2026-08-27 04:43:35'),
(17, 'order_shipping', NULL, NULL, NULL, 4, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-27 04:43:43', '2026-08-27 04:43:43'),
(18, 'order_billing', NULL, NULL, NULL, 4, 'Camilo', 'Garcia', NULL, 'Camilo Garcia', 'Carrera 12 E Calle 69 - 71', 'Soledad', 'CO-ATL', 'CO', '083010', 'Camiilogarcia69@gmail.com', '3012455860', NULL, 0, 0, NULL, '2026-08-27 04:43:43', '2026-08-27 04:43:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `api_token`, `status`, `role_id`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@example.com', '$2y$10$Fjjv6r8Ga1X0T0CGTAHO3uZUDBLBd4/uZvjzeRWWpko8cCLloRpeO', 'AhtCpuoC9zsAEqbVBeq7Oo199eEEaQ9dshaA10fEVXjVWXiBNJELRXA0PGbE2a5SDHfbedzuykAPAIlN', 1, 1, 'admins/1/k1tq7682Y25u3oLLHr3oKKfgxA4lNaRg3Avg2ZVT.jpg', NULL, '2026-08-03 18:09:40', '2026-08-10 18:15:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `admin_name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `swatch_type` varchar(191) DEFAULT NULL,
  `validation` varchar(191) DEFAULT NULL,
  `regex` varchar(191) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_comparable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_visible_on_front` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_locale` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_channel` tinyint(1) NOT NULL DEFAULT 0,
  `default_value` int(11) DEFAULT NULL,
  `enable_wysiwyg` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `admin_name`, `type`, `swatch_type`, `validation`, `regex`, `position`, `is_required`, `is_unique`, `is_filterable`, `is_comparable`, `is_configurable`, `is_user_defined`, `is_visible_on_front`, `value_per_locale`, `value_per_channel`, `default_value`, `enable_wysiwyg`, `created_at`, `updated_at`) VALUES
(1, 'sku', 'SKU', 'text', NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(2, 'name', 'Nombre', 'text', NULL, NULL, NULL, 3, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(3, 'url_key', 'Clave de URL', 'text', NULL, NULL, NULL, 4, 1, 1, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(4, 'tax_category_id', 'Categoría de Impuestos', 'select', NULL, NULL, NULL, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(5, 'new', 'Nuevo', 'boolean', NULL, NULL, NULL, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(6, 'featured', 'Destacado', 'boolean', NULL, NULL, NULL, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(7, 'visible_individually', 'Visible Individualmente', 'boolean', NULL, NULL, NULL, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(8, 'status', 'Estado', 'boolean', NULL, NULL, NULL, 10, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(9, 'short_description', 'Descripción Corta', 'textarea', NULL, NULL, NULL, 11, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(10, 'description', 'Descripción', 'textarea', NULL, NULL, NULL, 12, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 1, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(11, 'price', 'Precio', 'price', NULL, 'decimal', NULL, 13, 1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(12, 'cost', 'Costo', 'price', NULL, 'decimal', NULL, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(13, 'special_price', 'Precio Especial', 'price', NULL, 'decimal', NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(14, 'special_price_from', 'Precio Especial Desde', 'date', NULL, NULL, NULL, 16, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(15, 'special_price_to', 'Precio Especial Hasta', 'date', NULL, NULL, NULL, 17, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(16, 'meta_title', 'Meta Título', 'textarea', NULL, NULL, NULL, 18, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(17, 'meta_keywords', 'Meta Palabras Clave', 'textarea', NULL, NULL, NULL, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(18, 'meta_description', 'Meta Descripción', 'textarea', NULL, NULL, NULL, 21, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(19, 'length', 'Longitud', 'text', NULL, 'decimal', NULL, 22, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(20, 'width', 'Ancho', 'text', NULL, 'decimal', NULL, 23, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(21, 'height', 'Altura', 'text', NULL, 'decimal', NULL, 24, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(22, 'weight', 'Peso', 'text', NULL, 'decimal', NULL, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(23, 'color', 'Color', 'select', 'dropdown', NULL, NULL, 26, 0, 0, 0, 0, 1, 1, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-27 04:36:30'),
(24, 'size', 'Tamaño', 'select', 'dropdown', NULL, NULL, 27, 0, 0, 0, 0, 1, 1, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-27 04:36:55'),
(25, 'brand', 'Marca', 'select', NULL, NULL, NULL, 28, 0, 0, 1, 0, 0, 1, 1, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(26, 'guest_checkout', 'Compra de Invitado', 'boolean', NULL, NULL, NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(27, 'product_number', 'Número de Producto', 'text', NULL, NULL, NULL, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(28, 'manage_stock', 'Gestionar Stock', 'boolean', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '2026-08-03 18:09:40', '2026-08-03 18:09:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attribute_families`
--

CREATE TABLE `attribute_families` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `attribute_families`
--

INSERT INTO `attribute_families` (`id`, `code`, `name`, `status`, `is_user_defined`) VALUES
(1, 'default', 'Predeterminado', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attribute_groups`
--

CREATE TABLE `attribute_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `column` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `attribute_groups`
--

INSERT INTO `attribute_groups` (`id`, `code`, `attribute_family_id`, `name`, `column`, `position`, `is_user_defined`) VALUES
(1, 'general', 1, 'General', 1, 1, 0),
(2, 'description', 1, 'Descripción', 1, 2, 0),
(3, 'meta_description', 1, 'Meta Descripción', 1, 3, 0),
(4, 'price', 1, 'Precio', 2, 1, 0),
(5, 'shipping', 1, 'Envío', 2, 2, 0),
(6, 'settings', 1, 'Configuraciones', 2, 3, 0),
(7, 'inventories', 1, 'Inventarios', 2, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attribute_group_mappings`
--

CREATE TABLE `attribute_group_mappings` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_group_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `attribute_group_mappings`
--

INSERT INTO `attribute_group_mappings` (`attribute_id`, `attribute_group_id`, `position`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 6, 1),
(6, 6, 2),
(7, 6, 3),
(8, 6, 4),
(9, 2, 1),
(10, 2, 2),
(11, 4, 1),
(12, 4, 2),
(13, 4, 3),
(14, 4, 4),
(15, 4, 5),
(16, 3, 1),
(17, 3, 2),
(18, 3, 3),
(19, 5, 1),
(20, 5, 2),
(21, 5, 3),
(22, 5, 4),
(23, 1, 6),
(24, 1, 7),
(25, 1, 8),
(26, 6, 5),
(27, 1, 2),
(28, 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `swatch_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `admin_name`, `sort_order`, `swatch_value`) VALUES
(1, 23, 'Rojo', 0, NULL),
(2, 23, 'Verde', 1, NULL),
(3, 23, 'Amarillo', 2, NULL),
(4, 23, 'Negro', 3, NULL),
(5, 23, 'Blanco', 4, NULL),
(6, 24, 'S', 0, NULL),
(7, 24, 'M', 1, NULL),
(8, 24, 'L', 2, NULL),
(9, 24, 'XL', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attribute_option_translations`
--

CREATE TABLE `attribute_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `label` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `attribute_option_translations`
--

INSERT INTO `attribute_option_translations` (`id`, `attribute_option_id`, `locale`, `label`) VALUES
(1, 1, 'es', 'Rojo'),
(2, 2, 'es', 'Verde'),
(3, 3, 'es', 'Amarillo'),
(4, 4, 'es', 'Negro'),
(5, 5, 'es', 'Blanco'),
(6, 6, 'es', 'S'),
(7, 7, 'es', 'M'),
(8, 8, 'es', 'L'),
(9, 9, 'es', 'XL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(1, 1, 'es', 'SKU'),
(2, 2, 'es', 'Nombre'),
(3, 3, 'es', 'Clave de URL'),
(4, 4, 'es', 'Categoría de Impuestos'),
(5, 5, 'es', 'Nuevo'),
(6, 6, 'es', 'Destacado'),
(7, 7, 'es', 'Visible Individualmente'),
(8, 8, 'es', 'Estado'),
(9, 9, 'es', 'Descripción Corta'),
(10, 10, 'es', 'Descripción'),
(11, 11, 'es', 'Precio'),
(12, 12, 'es', 'Costo'),
(13, 13, 'es', 'Precio Especial'),
(14, 14, 'es', 'Precio Especial Desde'),
(15, 15, 'es', 'Precio Especial Hasta'),
(16, 16, 'es', 'Meta Título'),
(17, 17, 'es', 'Meta Palabras Clave'),
(18, 18, 'es', 'Meta Descripción'),
(19, 19, 'es', 'Longitud'),
(20, 20, 'es', 'Ancho'),
(21, 21, 'es', 'Altura'),
(22, 22, 'es', 'Peso'),
(23, 23, 'es', 'Color'),
(24, 24, 'es', 'Tamaño'),
(25, 25, 'es', 'Marca'),
(26, 26, 'es', 'Compra de Invitado'),
(27, 27, 'es', 'Número de Producto'),
(28, 28, 'es', 'Gestionar Stock');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_first_name` varchar(191) DEFAULT NULL,
  `customer_last_name` varchar(191) DEFAULT NULL,
  `shipping_method` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `items_count` int(11) DEFAULT NULL,
  `items_qty` decimal(12,4) DEFAULT NULL,
  `exchange_rate` decimal(12,4) DEFAULT NULL,
  `global_currency_code` varchar(191) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `cart_currency_code` varchar(191) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `tax_total` decimal(12,4) DEFAULT 0.0000,
  `base_tax_total` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `checkout_method` varchar(191) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `applied_cart_rule_ids` varchar(191) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `coupon_code`, `is_gift`, `items_count`, `items_qty`, `exchange_rate`, `global_currency_code`, `base_currency_code`, `channel_currency_code`, `cart_currency_code`, `grand_total`, `base_grand_total`, `sub_total`, `base_sub_total`, `tax_total`, `base_tax_total`, `discount_amount`, `base_discount_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `checkout_method`, `is_guest`, `is_active`, `applied_cart_rule_ids`, `customer_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'Camiilogarcia69@gmail.com', 'Camilo', 'Garcia', 'free_free', NULL, 0, 1, 1.0000, NULL, 'COP', 'COP', 'COP', 'COP', 200000.0000, 200000.0000, 200000.0000, 200000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200000.0000, 200000.0000, NULL, 1, 0, NULL, NULL, 1, '2026-08-10 22:47:04', '2026-08-10 22:48:14'),
(2, 'Camiilogarcia69@gmail.com', 'Camilo', 'Garcia', NULL, NULL, 0, 1, 1.0000, NULL, 'COP', 'COP', 'COP', 'COP', 200000.0000, 200000.0000, 200000.0000, 200000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200000.0000, 200000.0000, NULL, 1, 1, NULL, NULL, 1, '2026-08-11 02:15:14', '2026-08-11 02:15:26'),
(4, 'Camiilogarcia69@gmail.com', 'Camilo', 'Garcia', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'COP', 'COP', 'COP', 'COP', 350000.0000, 350000.0000, 250000.0000, 250000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 100000.0000, 100000.0000, 100000.0000, 250000.0000, 250000.0000, NULL, 1, 0, NULL, NULL, 1, '2026-08-27 04:39:19', '2026-08-27 04:42:34'),
(5, 'Camiilogarcia69@gmail.com', 'Camilo', 'Garcia', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'COP', 'COP', 'COP', 'COP', 600000.0000, 600000.0000, 500000.0000, 500000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 100000.0000, 100000.0000, 100000.0000, 500000.0000, 500000.0000, NULL, 1, 0, NULL, NULL, 1, '2026-08-27 04:42:49', '2026-08-27 04:43:10'),
(6, 'Camiilogarcia69@gmail.com', 'Camilo', 'Garcia', 'flatrate_flatrate', NULL, 0, 1, 1.0000, NULL, 'COP', 'COP', 'COP', 'COP', 250000.0000, 250000.0000, 150000.0000, 150000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 100000.0000, 100000.0000, 100000.0000, 150000.0000, 150000.0000, NULL, 1, 0, NULL, NULL, 1, '2026-08-27 04:43:24', '2026-08-27 04:43:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sku` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price` decimal(12,4) NOT NULL DEFAULT 1.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `custom_price` decimal(12,4) DEFAULT NULL,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `applied_tax_rate` varchar(191) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cart_items`
--

INSERT INTO `cart_items` (`id`, `quantity`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `base_total_weight`, `price`, `base_price`, `custom_price`, `total`, `base_total`, `tax_percent`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `applied_tax_rate`, `parent_id`, `product_id`, `cart_id`, `tax_category_id`, `applied_cart_rule_ids`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, '001', 'simple', 'Mona Lisa - Leonardo Da Vinci', NULL, 1000.0000, 1000.0000, 1000.0000, 200000.0000, 200000.0000, NULL, 200000.0000, 200000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200000.0000, 200000.0000, 200000.0000, 200000.0000, NULL, NULL, 1, 1, NULL, NULL, '{\"product_id\":\"1\",\"is_buy_now\":\"0\",\"quantity\":1}', '2026-08-10 22:47:04', '2026-08-10 22:47:04'),
(2, 1, '001', 'simple', 'Mona Lisa - Leonardo Da Vinci', NULL, 1000.0000, 1000.0000, 1000.0000, 200000.0000, 200000.0000, NULL, 200000.0000, 200000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200000.0000, 200000.0000, 200000.0000, 200000.0000, NULL, NULL, 1, 2, NULL, NULL, '{\"quantity\":1,\"product_id\":1}', '2026-08-11 02:15:14', '2026-08-11 02:15:14'),
(4, 1, '004', 'simple', 'Bohemian Rhapsody - Queen', NULL, 100.0000, 100.0000, 100.0000, 250000.0000, 250000.0000, NULL, 250000.0000, 250000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 250000.0000, 250000.0000, 250000.0000, 250000.0000, NULL, NULL, 4, 4, NULL, NULL, '{\"quantity\":1,\"product_id\":4}', '2026-08-27 04:39:19', '2026-08-27 04:39:19'),
(5, 1, '003', 'simple', 'La Divina Comedia - Dante Alighieri', NULL, 100.0000, 100.0000, 100.0000, 500000.0000, 500000.0000, NULL, 500000.0000, 500000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 500000.0000, 500000.0000, 500000.0000, 500000.0000, NULL, NULL, 3, 5, NULL, NULL, '{\"quantity\":1,\"product_id\":3}', '2026-08-27 04:42:49', '2026-08-27 04:42:49'),
(6, 1, '005', 'simple', 'Fight Club - David Fincher', NULL, 100.0000, 100.0000, 100.0000, 150000.0000, 150000.0000, NULL, 150000.0000, 150000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 150000.0000, 150000.0000, 150000.0000, 150000.0000, NULL, NULL, 5, 6, NULL, NULL, '{\"quantity\":1,\"product_id\":5}', '2026-08-27 04:43:24', '2026-08-27 04:43:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_item_inventories`
--

CREATE TABLE `cart_item_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_payment`
--

CREATE TABLE `cart_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(191) NOT NULL,
  `method_title` varchar(191) DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cart_payment`
--

INSERT INTO `cart_payment` (`id`, `method`, `method_title`, `cart_id`, `created_at`, `updated_at`) VALUES
(8, 'epayco', 'Epayco', 1, '2026-08-10 22:48:04', '2026-08-10 22:48:04'),
(9, 'epayco', 'Epayco', 4, '2026-08-27 04:42:26', '2026-08-27 04:42:26'),
(10, 'epayco', 'Epayco', 5, '2026-08-27 04:43:06', '2026-08-27 04:43:06'),
(11, 'moneytransfer', 'Money Transfer', 6, '2026-08-27 04:43:42', '2026-08-27 04:43:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_rules`
--

CREATE TABLE `cart_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_type` int(11) NOT NULL DEFAULT 1,
  `use_auto_generation` tinyint(1) NOT NULL DEFAULT 0,
  `usage_per_customer` int(11) NOT NULL DEFAULT 0,
  `uses_per_coupon` int(11) NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `uses_attribute_conditions` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_quantity` int(11) NOT NULL DEFAULT 1,
  `discount_step` varchar(191) NOT NULL DEFAULT '1',
  `apply_to_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_rule_channels`
--

CREATE TABLE `cart_rule_channels` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_rule_coupons`
--

CREATE TABLE `cart_rule_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `usage_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usage_per_customer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `expired_at` date DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_rule_coupon_usage`
--

CREATE TABLE `cart_rule_coupon_usage` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` int(11) NOT NULL DEFAULT 0,
  `cart_rule_coupon_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_rule_customers`
--

CREATE TABLE `cart_rule_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_rule_customer_groups`
--

CREATE TABLE `cart_rule_customer_groups` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_rule_translations`
--

CREATE TABLE `cart_rule_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `label` text DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_shipping_rates`
--

CREATE TABLE `cart_shipping_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `carrier` varchar(191) NOT NULL,
  `carrier_title` varchar(191) NOT NULL,
  `method` varchar(191) NOT NULL,
  `method_title` varchar(191) NOT NULL,
  `method_description` varchar(191) DEFAULT NULL,
  `price` double DEFAULT 0,
  `base_price` double DEFAULT 0,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_percent` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `applied_tax_rate` varchar(191) DEFAULT NULL,
  `is_calculate_tax` tinyint(1) NOT NULL DEFAULT 1,
  `cart_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cart_shipping_rates`
--

INSERT INTO `cart_shipping_rates` (`id`, `carrier`, `carrier_title`, `method`, `method_title`, `method_description`, `price`, `base_price`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `price_incl_tax`, `base_price_incl_tax`, `applied_tax_rate`, `is_calculate_tax`, `cart_address_id`, `created_at`, `updated_at`, `cart_id`) VALUES
(3, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, NULL, 1, 2, '2026-08-10 22:47:27', '2026-08-10 22:47:27', 1),
(4, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 2, '2026-08-10 22:47:27', '2026-08-10 22:47:27', 1),
(5, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, NULL, 1, 6, '2026-08-11 02:15:26', '2026-08-11 02:15:26', 2),
(6, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 6, '2026-08-11 02:15:26', '2026-08-11 02:15:26', 2),
(12, 'flatrate', 'Envío Tarifa Plena', 'flatrate_flatrate', 'Envío Tarifa Plena', 'Envío Tarifa Plena', 100000, 100000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 100000.0000, NULL, 1, 8, '2026-08-27 04:40:39', '2026-08-27 04:40:39', 4),
(14, 'flatrate', 'Envío Tarifa Plena', 'flatrate_flatrate', 'Envío Tarifa Plena', 'Envío Tarifa Plena', 100000, 100000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 100000.0000, NULL, 1, 12, '2026-08-27 04:43:03', '2026-08-27 04:43:03', 5),
(16, 'flatrate', 'Envío Tarifa Plena', 'flatrate_flatrate', 'Envío Tarifa Plena', 'Envío Tarifa Plena', 100000, 100000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 100000.0000, NULL, 1, 16, '2026-08-27 04:43:37', '2026-08-27 04:43:37', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalog_rules`
--

CREATE TABLE `catalog_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `starts_from` date DEFAULT NULL,
  `ends_till` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalog_rule_channels`
--

CREATE TABLE `catalog_rule_channels` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalog_rule_customer_groups`
--

CREATE TABLE `catalog_rule_customer_groups` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalog_rule_products`
--

CREATE TABLE `catalog_rule_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalog_rule_product_prices`
--

CREATE TABLE `catalog_rule_product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `rule_date` date NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `logo_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `display_mode` varchar(191) DEFAULT 'products_and_description',
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `banner_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `position`, `logo_path`, `status`, `display_mode`, `_lft`, `_rgt`, `parent_id`, `additional`, `banner_path`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'products_and_description', 1, 24, NULL, NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(2, 2, 'category/2/4TFKbmBaCenxGZy7crmmCljqsnYQZYQj9zRDnP4B.webp', 1, 'products_and_description', 14, 15, 1, NULL, 'category/2/q1srVG6cwT29CkwG7GLho8ja8QqepzpvH3WRQkxJ.webp', '2026-08-10 19:12:49', '2026-08-10 19:21:02'),
(3, 3, 'category/3/Kthgaevqolk2QWtmKcoaXibPYhM3Nqma8FYt6y3t.webp', 1, 'products_and_description', 16, 17, 1, NULL, 'category/3/6FMf6BK4DhmZflU8PGZIjWzfedks6LCbKjO1os1n.webp', '2026-08-10 19:19:14', '2026-08-10 19:19:15'),
(4, 4, 'category/4/9v1aBLVbg0BT2w4Ro6eMsOSUpuSJNoQl38SlO8gC.webp', 1, 'products_and_description', 18, 19, 1, NULL, 'category/4/9jUIMlaLsJbx6TF5qSwJQHB4mmfGpMHStoZoYmpD.webp', '2026-08-10 19:27:25', '2026-08-10 19:27:26'),
(5, 5, 'category/5/ATpsX2AxkDVRHAoVl8uG4nsLQqrmfjx4i6cw1TiC.webp', 1, 'products_and_description', 20, 21, 1, NULL, 'category/5/50IRaquZiKjznGwwSrLiEHQQdj86KE7Ysd9C9oVd.webp', '2026-08-10 22:34:04', '2026-08-10 22:34:04'),
(6, 6, 'category/6/2NocFFS4zbGfnDOf022LopOOgjRtYLh5GLpi2rwX.webp', 1, 'products_and_description', 22, 23, 1, NULL, 'category/6/tPoYpKawQaMb9ggGMg5Y5AdSMc4cZOQHksXJoo58.webp', '2026-08-10 22:36:47', '2026-08-10 22:36:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_filterable_attributes`
--

CREATE TABLE `category_filterable_attributes` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `category_filterable_attributes`
--

INSERT INTO `category_filterable_attributes` (`category_id`, `attribute_id`) VALUES
(2, 11),
(2, 25),
(3, 11),
(3, 25),
(4, 11),
(4, 25),
(5, 11),
(5, 25),
(6, 11),
(6, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(191) NOT NULL,
  `url_path` varchar(2048) NOT NULL,
  `description` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `locale_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `slug`, `url_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `locale_id`, `locale`) VALUES
(1, 1, 'Raíz', 'root', '', 'Descripción de la Categoría Raíz', '', '', '', NULL, 'es'),
(2, 2, 'Escultura', 'escultura', '', '<p data-path-to-node=\"1\">Explora nuestra colecci&oacute;n de <strong data-path-to-node=\"1\" data-index-in-node=\"29\">esculturas</strong>, una disciplina art&iacute;stica que transforma materiales nobles como barro, madera, piedra y metal en piezas tridimensionales &uacute;nicas. Cada obra de esta selecci&oacute;n destaca por su t&eacute;cnica &mdash;desde el tallado meticuloso y el moldeado artesanal hasta el esculpido y la fundici&oacute;n&mdash;, capturando volumen, textura y movimiento en tres dimensiones.</p>\r\n<p data-path-to-node=\"2\">Encuentra la pieza perfecta para enriquecer tus espacios con car&aacute;cter, elegancia y valor est&eacute;tico. Ya sea que busques piezas contempor&aacute;neas, figuras cl&aacute;sicas o arte figurativo y abstracto, nuestras esculturas est&aacute;n pensadas para amantes del arte y decoradores que desean integrar el volumen de las bellas artes en su hogar u oficina.</p>', 'Escultura IndexArts', 'Descubre nuestra colección de esculturas exclusivas. Piezas únicas en madera, metal, barro y piedra para decorar tus espacios con arte tridimensional.', 'Escultura, Arte, Bellas Artes, Artes, Tallado, Esculpido, Modelado, Vaciado, Fundición, Relieve, Busto', 1, 'es'),
(3, 3, 'Pintura', 'pintura', '', '<p data-path-to-node=\"1\">Sum&eacute;rgete en nuestra colecci&oacute;n de <strong data-path-to-node=\"1\" data-index-in-node=\"34\">pinturas</strong>, una de las expresiones m&aacute;s puras de las bellas artes que cobra vida a trav&eacute;s de la forma, el color y la textura sobre el lienzo. Cada obra refleja la sensibilidad de sus creadores a trav&eacute;s de t&eacute;cnicas como el &oacute;leo, el acr&iacute;lico, la acuarela y la t&eacute;cnica mixta, capturando emociones, paisajes y visiones &uacute;nicas que transforman cualquier ambiente.</p>\r\n<p data-path-to-node=\"2\">Descubre una amplia selecci&oacute;n de obras originales y reproducciones de alta calidad, ideales para apasionados del arte, coleccionistas y amantes del dise&ntilde;o de interiores. Ya sea que busques el dinamismo del arte abstracto, la serenidad del paisajismo o la fuerza del arte figurativo, aqu&iacute; encontrar&aacute;s la pintura perfecta para vestir tus paredes con identidad y elegancia.</p>', 'Pintura IndexArts', 'Explora nuestra colección de pinturas al óleo, acrílico y acuarela. Encuentra obras únicas y llena de color y elegancia las paredes de tu hogar u oficina.', 'Pintura, Arte, Bellas Artes, Óleo, Acrílico, Acuarela, Pastel, Realismo, Impresionismo, Cubismo, Arte Abstracto, Cuadros', 1, 'es'),
(4, 4, 'Música', 'musica', '', '<p data-path-to-node=\"1\">Sum&eacute;rgete en nuestra colecci&oacute;n dedicada a la <strong data-path-to-node=\"1\" data-index-in-node=\"45\">m&uacute;sica</strong>, una de las bellas artes m&aacute;s universales que utiliza la melod&iacute;a, la armon&iacute;a y el ritmo para transformar emociones y crear atm&oacute;sferas &uacute;nicas. Esta categor&iacute;a rinde homenaje al arte del sonido a trav&eacute;s de una cuidada selecci&oacute;n que abarca desde producciones en formatos cl&aacute;sicos y coleccionables &mdash;como vinilos y CDs&mdash; hasta instrumentos, partituras y piezas de arte sonoro pensadas para inspirar tanto a mel&oacute;manos como a creadores.</p>\r\n<p data-path-to-node=\"2\">Encuentra el elemento perfecto para enriquecer tu colecci&oacute;n personal, regalar a amantes del sonido o integrar la pasi&oacute;n musical en tu vida cotidiana. Explora diferentes g&eacute;neros, composiciones y art&iacute;culos que aportan identidad, ritmo y sofisticaci&oacute;n a tus espacios.</p>', 'Música IndexArts', 'Explora nuestra colección de música. Encuentra vinilos, instrumentos y obras sonoras exclusivas para llenar de ritmo, armonía y emoción todos tus espacios.', 'Música, Arte, Bellas Artes, Sonido, Armonía, Ritmo, Melodía, Música Culta, Música Académica, Música Tradicional, Música Folclórica, Música Popular', 1, 'es'),
(5, 5, 'Literatura', 'literatura', '', '<p data-path-to-node=\"1\">Sum&eacute;rgete en nuestra colecci&oacute;n dedicada a la <strong data-path-to-node=\"1\" data-index-in-node=\"45\">literatura</strong>, el arte de la palabra escrita que convierte pensamientos, historias y emociones en experiencias inolvidables. Esta categor&iacute;a re&uacute;ne obras que abordan la riqueza de la condici&oacute;n humana a trav&eacute;s de diversos g&eacute;neros &mdash;desde la narrativa, la novela y la poes&iacute;a hasta el ensayo y la dramaturgia&mdash;, invitando a la reflexi&oacute;n, el conocimiento y el entretenimiento.</p>\r\n<p data-path-to-node=\"2\">Encuentra ediciones cuidadas, cl&aacute;sicos imprescindibles y t&iacute;tulos contempor&aacute;neos ideales para enriquecer tu biblioteca personal, encontrar tu pr&oacute;xima lectura o regalar a verdaderos apasionados de las letras. Deja que la belleza de la palabra escrita transforme tus momentos de descanso e inspire tu vida cotidiana.</p>', 'Literatura IndexArts', 'Descubre nuestra selección de literatura. Explora novelas, poesía y ensayos únicos para enriquecer tu biblioteca e inspirar tu pasión por las letras.', 'Literatura, Bellas Artes, Arte, Narrativa, Lírica, Escritores, Novelas', 1, 'es'),
(6, 6, 'Cine', 'cine', '', '<p data-path-to-node=\"1\">Descubre nuestra colecci&oacute;n dedicada al <strong data-path-to-node=\"1\" data-index-in-node=\"39\">cine</strong>, el s&eacute;ptimo arte que combina imagen, narrativa, actuaci&oacute;n y sonido para contar historias que inspiran y conmueven. Esta categor&iacute;a celebra la belleza audiovisual a trav&eacute;s de una selecci&oacute;n pensada para cin&eacute;filos, coleccionistas y amantes del entretenimiento, que abarca desde producciones cl&aacute;sicas y cine de autor en formatos f&iacute;sicos de alta calidad, hasta guiones, carteles de culto y piezas de arte conceptual.</p>\r\n<p data-path-to-node=\"2\">Encuentra el t&iacute;tulo o coleccionable ideal para enriquecer tu filmoteca personal, decorar tus espacios con un toque cinematogr&aacute;fico o regalar a verdaderos apasionados del plat&oacute;. Revive la magia de las grandes historias y lleva la fuerza expresiva de la pantalla grande a tu vida cotidiana.</p>', 'Cine IndexArts', 'Explora nuestra colección de cine. Descubre películas de culto, carteles y ediciones exclusivas para amantes del séptimo arte. ¡Inspira tus espacios!', 'Cine, Bellas Artes, Cinematográfico, Arte, Terror, Suspenso, Thriller, Películas, Reality, Show', 1, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `timezone` varchar(191) DEFAULT NULL,
  `theme` varchar(191) DEFAULT NULL,
  `hostname` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `home_seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`home_seo`)),
  `is_maintenance_on` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_ips` text DEFAULT NULL,
  `root_category_id` int(10) UNSIGNED DEFAULT NULL,
  `default_locale_id` int(10) UNSIGNED NOT NULL,
  `base_currency_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `channels`
--

INSERT INTO `channels` (`id`, `code`, `timezone`, `theme`, `hostname`, `logo`, `favicon`, `home_seo`, `is_maintenance_on`, `allowed_ips`, `root_category_id`, `default_locale_id`, `base_currency_id`, `created_at`, `updated_at`) VALUES
(1, 'default', NULL, 'default', 'http://127.0.0.1:8000', NULL, NULL, NULL, 0, '', 1, 1, 1, '2026-08-03 18:09:40', '2026-08-27 04:50:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channel_currencies`
--

CREATE TABLE `channel_currencies` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `channel_currencies`
--

INSERT INTO `channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channel_inventory_sources`
--

CREATE TABLE `channel_inventory_sources` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `inventory_source_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `channel_inventory_sources`
--

INSERT INTO `channel_inventory_sources` (`channel_id`, `inventory_source_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channel_locales`
--

CREATE TABLE `channel_locales` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `channel_locales`
--

INSERT INTO `channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channel_translations`
--

CREATE TABLE `channel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `maintenance_mode_text` text DEFAULT NULL,
  `home_seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`home_seo`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `channel_translations`
--

INSERT INTO `channel_translations` (`id`, `channel_id`, `locale`, `name`, `description`, `maintenance_mode_text`, `home_seo`, `created_at`, `updated_at`) VALUES
(1, 1, 'es', 'Predeterminado', NULL, '', '{\"meta_title\":\"IndexArts - Galer\\u00eda de Arte\",\"meta_description\":\"Descripci\\u00f3n de IndexArts\",\"meta_keywords\":\"Palabras Clave de Meta de IndexArts\"}', NULL, '2026-08-27 04:50:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `layout` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `layout`, `created_at`, `updated_at`) VALUES
(1, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(2, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(3, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(4, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(5, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(6, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(7, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(9, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(10, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(11, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(12, NULL, '2026-08-11 21:48:14', '2026-08-11 21:48:14'),
(13, NULL, '2026-08-11 21:53:15', '2026-08-11 21:53:15'),
(14, NULL, '2026-08-26 05:37:42', '2026-08-26 05:37:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_page_channels`
--

CREATE TABLE `cms_page_channels` (
  `cms_page_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_page_channels`
--

INSERT INTO `cms_page_channels` (`cms_page_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(7, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_page_translations`
--

CREATE TABLE `cms_page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_title` varchar(191) NOT NULL,
  `url_key` varchar(191) NOT NULL,
  `html_content` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `locale` varchar(191) NOT NULL,
  `cms_page_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_page_translations`
--

INSERT INTO `cms_page_translations` (`id`, `page_title`, `url_key`, `html_content`, `meta_title`, `meta_description`, `meta_keywords`, `locale`, `cms_page_id`) VALUES
(1, 'Acerca de Nosotros', 'about-us', '<p style=\"text-align: center;\" data-path-to-node=\"3\"><strong data-path-to-node=\"3\" data-index-in-node=\"0\">Acerca de IndexArts</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"3\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"3\"><em data-path-to-node=\"3\" data-index-in-node=\"20\">Galer&iacute;a de Arte Contempor&aacute;neo &amp; Curadur&iacute;a Exclusiva</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"3\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"3\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"4\"><strong data-path-to-node=\"4\" data-index-in-node=\"0\">Nuestra Historia</strong></p>\r\n<p style=\"text-align: left;\" data-path-to-node=\"4\"><strong data-path-to-node=\"4\" data-index-in-node=\"0\"><br></strong> <br>En IndexArts nacemos de la pasi&oacute;n por tender un puente entre la creatividad pl&aacute;stica y los coleccionistas de todo el mundo. Desde nuestros inicios, nos hemos consolidado como una plataforma dedicada a promover el talento art&iacute;stico, ofreciendo una selecci&oacute;n rigurosa de obras originales, pinturas, esculturas y grabado.</p>\r\n<p data-path-to-node=\"4\">&nbsp;</p>\r\n<p data-path-to-node=\"5\">Entendemos el arte no solo como un elemento decorativo, sino como una inversi&oacute;n patrimonial y una manifestaci&oacute;n cultural que transforma espacios y transmite emociones profundas. Nos esforzamos por crear un entorno seguro e inspirador donde tanto coleccionistas experimentados como nuevos compradores puedan adquirir piezas de valor incalculable.</p>\r\n<p data-path-to-node=\"5\">&nbsp;</p>\r\n<p data-path-to-node=\"5\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"6\"><strong data-path-to-node=\"6\" data-index-in-node=\"0\">Nuestra Filosof&iacute;a y Valores</strong></p>\r\n<p data-path-to-node=\"6\">&nbsp;</p>\r\n<ul data-path-to-node=\"7\">\r\n<li>\r\n<p data-path-to-node=\"7,0,0\"><strong data-path-to-node=\"7,0,0\" data-index-in-node=\"0\">Curadur&iacute;a Profesional:</strong> Cada pieza expuesta en nuestro cat&aacute;logo atraviesa un meticuloso proceso de verificaci&oacute;n y estudio est&eacute;tico realizado por curadores expertos.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"7\">\r\n<li>\r\n<p data-path-to-node=\"7,1,0\"><strong data-path-to-node=\"7,1,0\" data-index-in-node=\"0\">Autenticidad Transparente:</strong> Respaldamos la procedencia de cada obra garantizando la autor&iacute;a mediante certificados oficiales firmados por los propios artistas o galer&iacute;as representadas.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"7\">\r\n<li>\r\n<p data-path-to-node=\"7,2,0\"><strong data-path-to-node=\"7,2,0\" data-index-in-node=\"0\">Preservaci&oacute;n del Arte:</strong> Promovemos m&eacute;todos de manipulaci&oacute;n, embalaje y traslado de nivel de museo para proteger el patrimonio cultural en cada entrega.</p>\r\n</li>\r\n</ul>', 'about us', '', 'aboutus', 'es', 1),
(2, 'Política de Retorno', 'return-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<p style=\"text-align: center;\" data-path-to-node=\"29\"><strong data-path-to-node=\"29\" data-index-in-node=\"0\">Pol&iacute;tica de Retorno</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"29\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"29\"><em data-path-to-node=\"29\" data-index-in-node=\"20\">Condiciones para la restituci&oacute;n de piezas</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"29\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"29\">&nbsp;</p>\r\n<p data-path-to-node=\"30\"><strong data-path-to-node=\"30\" data-index-in-node=\"0\">1. Derecho de Retorno</strong> Comprendemos la importancia de que una obra dialogue correctamente con su espacio. Si al recibir la pieza no cumple con tus expectativas, dispones de un plazo de 14 d&iacute;as calendario a partir de la entrega para solicitar la devoluci&oacute;n.</p>\r\n<p data-path-to-node=\"30\">&nbsp;</p>\r\n<p data-path-to-node=\"30\">&nbsp;</p>\r\n<p data-path-to-node=\"31\"><strong data-path-to-node=\"31\" data-index-in-node=\"0\">2. Requisitos Obligatorios:</strong></p>\r\n<p data-path-to-node=\"31\">&nbsp;</p>\r\n<ul data-path-to-node=\"32\">\r\n<li>\r\n<p data-path-to-node=\"32,0,0\">La obra debe encontrarse exactamente en el mismo estado en que fue entregada, sin manipulaci&oacute;n que altere su estado original.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"32\">\r\n<li>\r\n<p data-path-to-node=\"32,1,0\">Se debe devolver junto con el Certificado de Autenticidad original y el embalaje especializado protector.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"32\">\r\n<li>\r\n<p data-path-to-node=\"32,2,0\">Obras por encargo personalizado o comisiones privadas no est&aacute;n sujetas al beneficio de retorno de acuerdo con las normativas comerciales.</p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>', 'return policy', '', 'return, policy', 'es', 2),
(3, 'Política de Devolución', 'refund-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<p style=\"text-align: center;\" data-path-to-node=\"35\"><strong data-path-to-node=\"35\" data-index-in-node=\"0\">Pol&iacute;tica de Devoluci&oacute;n de Dinero</strong>&nbsp;<br><br></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"35\"><em data-path-to-node=\"35\" data-index-in-node=\"33\">Garant&iacute;as financieras y reembolsos</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"35\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"35\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"36\"><strong data-path-to-node=\"36\" data-index-in-node=\"0\">Proceso de Reembolso</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"36\">&nbsp;<br>Una vez que la pieza retornada sea recibida e inspeccionada en nuestras instalaciones por el equipo de peritaje para validar su condici&oacute;n intacta, se proceder&aacute; a la emisi&oacute;n del reembolso. El dinero se reintegrar&aacute; a trav&eacute;s del mismo medio de pago utilizado para la compra en un plazo estimado de 5 a 10 d&iacute;as h&aacute;biles, dependiendo de la entidad bancaria.</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"36\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"36\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"37\"><strong data-path-to-node=\"37\" data-index-in-node=\"0\">Gastos Operativos y de Env&iacute;os</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"37\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"37\">Salvo en casos donde la devoluci&oacute;n corresponda a un da&ntilde;o durante el transporte reportado de inmediato, los costes asociados al env&iacute;o de retorno y seguro de transporte ser&aacute;n asumidos por cuenta del comprador.</p>\r\n</div>\r\n</div>', 'Refund policy', '', 'refund, policy', 'es', 3),
(4, 'Términos y Condiciones', 'terms-conditions', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<p style=\"text-align: center;\" data-path-to-node=\"46\"><strong data-path-to-node=\"46\" data-index-in-node=\"0\">T&eacute;rminos &amp; Condiciones</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"46\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"46\"><em data-path-to-node=\"46\" data-index-in-node=\"23\">Marco Legal de Contrataci&oacute;n y Venta</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"46\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"46\">&nbsp;</p>\r\n<p data-path-to-node=\"47\"><strong data-path-to-node=\"47\" data-index-in-node=\"0\">1. Generalidades</strong> El presente documento establece las condiciones comerciales y normativas reguladoras de la adquisici&oacute;n de bienes culturales en el sitio web de IndexArts. Al completar una orden de compra, el cliente declara aceptar en su totalidad las cl&aacute;usulas aqu&iacute; estipuladas.</p>\r\n<p data-path-to-node=\"47\">&nbsp;</p>\r\n<p data-path-to-node=\"48\"><strong data-path-to-node=\"48\" data-index-in-node=\"0\">2. Disponibilidad y Precios</strong> Por la naturaleza exclusiva del arte, las piezas originales son &uacute;nicas e irrepetibles. Los precios se encuentran fijados en la moneda indicada e incluyen los impuestos aplicables. En caso de que dos transacciones simult&aacute;neas ocurran sobre una misma obra original, prevalecer&aacute; el pedido registrado primero por la pasarela de pagos.</p>\r\n</div>\r\n</div>', 'Terms Conditions', '', 'term, conditions', 'es', 4),
(5, 'Términos de Uso', 'terms-of-use', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<p style=\"text-align: center;\" data-path-to-node=\"68\"><strong data-path-to-node=\"68\" data-index-in-node=\"0\">T&eacute;rminos de Uso del Sitio Web</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"68\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"68\"><em data-path-to-node=\"68\" data-index-in-node=\"30\">Reglas de navegaci&oacute;n y propiedad intelectual</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"68\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"68\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong data-path-to-node=\"69\" data-index-in-node=\"0\">Propiedad Intelectual</strong></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">Todo el contenido presentado en la plataforma de IndexArts &mdash;incluyendo im&aacute;genes fotogr&aacute;ficas de obras de arte, logotipos, textos curatoriales, v&iacute;deos y dise&ntilde;o gr&aacute;fico&mdash; est&aacute; protegido por las leyes de propiedad intelectual e industrial. Queda terminantemente prohibida la reproducci&oacute;n, distribuci&oacute;n o explotaci&oacute;n comercial de estos contenidos sin la autorizaci&oacute;n escrita por parte de los titulares.</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"70\"><strong data-path-to-node=\"70\" data-index-in-node=\"0\">Responsabilidad del Usuario</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"70\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"70\">El usuario se compromete a hacer un uso adecuado de los servicios del sitio web, absteni&eacute;ndose de realizar maniobras maliciosas, intentar vulnerar los sistemas de seguridad o extraer datos masivos de la tienda.</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"70\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"70\">&nbsp;</p>\r\n</div>\r\n</div>', 'Terms of use', '', 'term, use', 'es', 5),
(6, 'Servicio al Cliente', 'customer-service', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<p style=\"text-align: center;\" data-path-to-node=\"10\"><strong data-path-to-node=\"10\" data-index-in-node=\"0\">Servicio al Cliente</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"10\">&nbsp;<br><em data-path-to-node=\"10\" data-index-in-node=\"20\">Atenci&oacute;n Personalizada y Asesor&iacute;a de Arte</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"10\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"10\">&nbsp;</p>\r\n<p data-path-to-node=\"11\"><strong data-path-to-node=\"11\" data-index-in-node=\"0\">Compromiso con el Coleccionista</strong> En IndexArts, nos esforzamos por ofrecer una experiencia de compra impecable. Si necesitas asistencia para seleccionar una obra para tu espacio, seguimiento detallado de un env&iacute;o o informaci&oacute;n t&eacute;cnica de una pieza en cat&aacute;logo, nuestro equipo especialista est&aacute; a tu completa disposici&oacute;n.</p>\r\n<p data-path-to-node=\"11\">&nbsp;</p>\r\n<p data-path-to-node=\"11\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"12\"><strong data-path-to-node=\"12\" data-index-in-node=\"0\">Canales de Contacto Directo</strong></p>\r\n<p data-path-to-node=\"12\">&nbsp;</p>\r\n<ul data-path-to-node=\"13\">\r\n<li>\r\n<p data-path-to-node=\"13,0,0\"><strong data-path-to-node=\"13,0,0\" data-index-in-node=\"0\">Atenci&oacute;n Telef&oacute;nica y WhatsApp:</strong> (+57) 300 123 4567 &mdash; Lunes a Viernes de 8:00 AM a 6:00 PM</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"13\">\r\n<li>\r\n<p data-path-to-node=\"13,1,0\"><strong data-path-to-node=\"13,1,0\" data-index-in-node=\"0\">Correo Electr&oacute;nico General:</strong> soporte@indexarts.com</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"13\">\r\n<li>\r\n<p data-path-to-node=\"13,2,0\"><strong data-path-to-node=\"13,2,0\" data-index-in-node=\"0\">Asesor&iacute;a de Curadur&iacute;a:</strong> curaduria@indexarts.com</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p data-path-to-node=\"14\"><strong><em data-path-to-node=\"14\" data-index-in-node=\"0\">Nota:</em></strong> Contamos con un compromiso de respuesta de m&aacute;ximo 24 horas h&aacute;biles para todas las solicitudes enviadas a trav&eacute;s de nuestros canales oficiales.</p>\r\n</div>\r\n</div>', 'Customer Service', '', 'customer, service', 'es', 7),
(8, 'Política de Pago', 'payment-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<p style=\"text-align: center;\" data-path-to-node=\"40\"><strong data-path-to-node=\"40\" data-index-in-node=\"0\">Pol&iacute;tica de Pago</strong>&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"40\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"40\"><em data-path-to-node=\"40\" data-index-in-node=\"17\">Pasarelas de pago seguras y transacciones</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"40\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"40\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"41\"><strong data-path-to-node=\"41\" data-index-in-node=\"0\">M&eacute;todos de Pago Autorizados</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"41\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"41\">En IndexArts procesamos las transacciones con los est&aacute;ndares internacionales m&aacute;s estrictos de seguridad de datos. Aceptamos los siguientes canales:</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"41\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"41\">&nbsp;</p>\r\n<ul data-path-to-node=\"42\">\r\n<li>\r\n<p data-path-to-node=\"42,0,0\"><strong data-path-to-node=\"42,0,0\" data-index-in-node=\"0\">Tarjetas de Cr&eacute;dito y D&eacute;bito:</strong> Visa, MasterCard, American Express.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"42\">\r\n<li><strong data-path-to-node=\"42,1,0\" data-index-in-node=\"0\">Transferencia Bancaria Directa:</strong> Habilitada para obras de alto valor (los datos de la cuenta oficial se entregan al finalizar el proceso de checkout).</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"42\">\r\n<li>\r\n<p data-path-to-node=\"42,2,0\"><strong data-path-to-node=\"42,2,0\" data-index-in-node=\"0\">Pasarelas Digitales:</strong> Epayco, PayPal y m&eacute;todos de pago electr&oacute;nicos regionales.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"43\"><strong data-path-to-node=\"43\" data-index-in-node=\"0\">Seguridad Transaccional</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"43\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"43\">Nuestra plataforma cuenta con cifrado certificado SSL. IndexArts no almacena ni conserva datos sensibles de tarjetas de cr&eacute;dito o credenciales bancarias en sus servidores internos.</p>\r\n</div>\r\n</div>', 'Payment Policy', '', 'payment, policy', 'es', 9),
(9, 'Política de Envío', 'shipping-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<p style=\"text-align: center;\" data-path-to-node=\"51\"><strong data-path-to-node=\"51\" data-index-in-node=\"0\">Pol&iacute;tica de Env&iacute;o y Log&iacute;stica</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"51\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"51\"><em data-path-to-node=\"51\" data-index-in-node=\"30\">Embalaje especializado y despacho internacional</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"51\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"51\">&nbsp;</p>\r\n<p><strong data-path-to-node=\"52\" data-index-in-node=\"0\">1. Preparaci&oacute;n y Embalaje</strong> Las obras de arte requieren un manejo delicado. Dependiendo de la fragilidad del soporte, cada pieza se embala utilizando cajas de madera construidas a medida, esquineros de hule espuma t&eacute;cnico, pl&aacute;sticos libres de &aacute;cido y sellos anti-humedad.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p data-path-to-node=\"53\"><strong data-path-to-node=\"53\" data-index-in-node=\"0\">2. Tiempos de Entrega</strong></p>\r\n<p data-path-to-node=\"53\">&nbsp;</p>\r\n<ul data-path-to-node=\"54\">\r\n<li>\r\n<p data-path-to-node=\"54,0,0\"><strong data-path-to-node=\"54,0,0\" data-index-in-node=\"0\">Env&iacute;os Nacionales:</strong> Entre 3 y 6 d&iacute;as h&aacute;biles una vez procesada la certificaci&oacute;n de salida.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"54\">\r\n<li>\r\n<p data-path-to-node=\"54,1,0\"><strong data-path-to-node=\"54,1,0\" data-index-in-node=\"0\">Env&iacute;os Internacionales:</strong> Entre 7 y 15 d&iacute;as h&aacute;biles (sujeto a revisiones de aduana e inspecciones transfronterizas).</p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>', 'Shipping Policy', '', 'shipping, policy', 'es', 10),
(10, 'Política de Privacidad', 'privacy-policy', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<p style=\"text-align: center;\" data-path-to-node=\"57\"><strong data-path-to-node=\"57\" data-index-in-node=\"0\">Pol&iacute;tica de Privacidad</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"57\"><em data-path-to-node=\"57\" data-index-in-node=\"23\">Protecci&oacute;n y Tratamiento de Datos Personales</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"57\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"57\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"58\"><strong data-path-to-node=\"58\" data-index-in-node=\"0\">Tratamiento de Datos</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"58\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"58\">En IndexArts asumimos el compromiso de resguardar la privacidad de nuestros usuarios. La informaci&oacute;n personal recopilada (nombre, direcci&oacute;n de env&iacute;o, correo electr&oacute;nico y n&uacute;mero de contacto) se utiliza exclusivamente para fines operativos relacionados con la facturaci&oacute;n, log&iacute;stica y soporte de la compra.</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"58\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"58\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"59\"><strong data-path-to-node=\"59\" data-index-in-node=\"0\">No Transferencia a Terceros</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"59\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"59\">Garantizamos que sus datos de contacto no ser&aacute;n comercializados, cedidos ni distribuidos a terceros ajenos a la transacci&oacute;n log&iacute;stica sin su consentimiento previo y expl&iacute;cito.</p>\r\n</div>\r\n</div>', 'Privacy Policy', '', 'privacy, policy', 'es', 11),
(11, 'FAQ', 'frequently-asked-questions', '<p style=\"text-align: center;\" data-path-to-node=\"23\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"23\"><strong data-path-to-node=\"23\" data-index-in-node=\"0\">Preguntas Frecuentes</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"23\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"23\"><em data-path-to-node=\"23\" data-index-in-node=\"21\">Resolvemos tus dudas sobre la adquisici&oacute;n de arte en l&iacute;nea</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"23\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"23\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"24\"><strong data-path-to-node=\"24\" data-index-in-node=\"0\">&iquest;C&oacute;mo garantizan la autenticidad de las obras?</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"24\"><strong data-path-to-node=\"24\" data-index-in-node=\"0\"><br></strong>Todas las obras vendidas en IndexArts incluyen un Certificado de Autenticidad f&iacute;sico firmado por el artista o la galer&iacute;a autorizada, especificando detalles t&eacute;cnicos, a&ntilde;o de creaci&oacute;n y n&uacute;mero de serie (si aplica).</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"24\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"24\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"25\"><strong data-path-to-node=\"25\" data-index-in-node=\"0\">&iquest;Las pinturas se env&iacute;an enmarcadas?</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"25\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"25\">Depende de la obra. En la ficha t&eacute;cnica de cada pieza se especifica expl&iacute;citamente si se entrega en lienzo sobre bastidor, enrollada en tubo protector de grado de museo o montada en marco de exhibici&oacute;n.</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"25\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"25\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"26\"><strong data-path-to-node=\"26\" data-index-in-node=\"0\">&iquest;Tienen env&iacute;os asegurados?</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"26\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"26\">S&iacute;, el 100% de los env&iacute;os realizados por IndexArts cuentan con una p&oacute;liza de seguro especializada en bienes de arte contra da&ntilde;os, p&eacute;rdida o robo durante el transporte.</p>', 'Frequently Asked Questions', '', 'Frequently Asked Questions', 'es', 12),
(12, 'Política de Cookies', 'cookies-policy', '<p style=\"text-align: center;\" data-path-to-node=\"62\"><strong data-path-to-node=\"62\" data-index-in-node=\"0\">Pol&iacute;tica de Cookies</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"62\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"62\"><em data-path-to-node=\"62\" data-index-in-node=\"20\">Uso de tecnolog&iacute;as de rastreo y almacenamiento</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"62\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"62\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"63\"><strong data-path-to-node=\"63\" data-index-in-node=\"0\">&iquest;Qu&eacute; son las cookies en IndexArts?</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"63\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"63\">Las cookies son archivos de texto breves que se descargan en su dispositivo al navegar en la tienda en l&iacute;nea de IndexArts. Nos permiten garantizar el correcto funcionamiento del carrito de compras, recordar sus preferencias de idioma y analizar patrones de navegaci&oacute;n para optimizar la interfaz.</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"63\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"63\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"64\"><strong data-path-to-node=\"64\" data-index-in-node=\"0\">Tipos de Cookies Utilizadas</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"64\">&nbsp;</p>\r\n<ul data-path-to-node=\"65\">\r\n<li>\r\n<p data-path-to-node=\"65,0,0\"><strong data-path-to-node=\"65,0,0\" data-index-in-node=\"0\">T&eacute;cnicas y Esenciales:</strong> Indispensables para poder a&ntilde;adir obras a la cesta de compra y completar el checkout seguro.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul data-path-to-node=\"65\">\r\n<li>\r\n<p data-path-to-node=\"65,1,0\"><strong data-path-to-node=\"65,1,0\" data-index-in-node=\"0\">Anal&iacute;ticas:</strong> Utilizadas para medir de manera an&oacute;nima el tr&aacute;fico y las secciones m&aacute;s visitadas dentro de la plataforma.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'cookies policy', '', 'cookies policy', 'es', 13),
(13, 'Novedades', 'novedades', '<div class=\"static-container\">\r\n<div class=\"mb-5\">\r\n<p style=\"text-align: center;\" data-path-to-node=\"17\"><strong data-path-to-node=\"17\" data-index-in-node=\"0\">Novedades y Exposiciones</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"17\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"17\"><em data-path-to-node=\"17\" data-index-in-node=\"25\">Bolet&iacute;n Informativo de la Galer&iacute;a IndexArts</em></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"17\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"17\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"18\"><strong data-path-to-node=\"18\" data-index-in-node=\"0\">Nuevas Incorporaciones al Cat&aacute;logo</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"18\">&nbsp;</p>\r\n<p data-path-to-node=\"18\">Mantenerse a la vanguardia del arte contempor&aacute;neo es nuestra prioridad. Constantemente actualizamos nuestras colecciones incorporando nuevos artistas talentosos y piezas exclusivas de series limitadas.</p>\r\n<p data-path-to-node=\"19\">Explora nuestras &uacute;ltimas firmas internacionales, colecciones escult&oacute;ricas de edici&oacute;n limitada e instalaciones visuales que acaban de incorporarse a nuestra plataforma.</p>\r\n<p data-path-to-node=\"19\">&nbsp;</p>\r\n<p data-path-to-node=\"19\">&nbsp;</p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"20\"><strong data-path-to-node=\"20\" data-index-in-node=\"0\">Eventos y Subastas Privadas</strong></p>\r\n<p style=\"text-align: center;\" data-path-to-node=\"20\">&nbsp;</p>\r\n<p data-path-to-node=\"20\">Suscr&iacute;bete a nuestra lista de correo preferencial para obtener invitaciones anticipadas a vernissages virtuales, preventas exclusivas para coleccionistas y boletines con an&aacute;lisis sobre las tendencias actuales en el mercado del arte.</p>\r\n</div>\r\n</div>', 'Novedades', 'novedades', 'novedades', 'es', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compare_items`
--

CREATE TABLE `compare_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_config`
--

CREATE TABLE `core_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `channel_code` varchar(191) DEFAULT NULL,
  `locale_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `core_config`
--

INSERT INTO `core_config` (`id`, `code`, `value`, `channel_code`, `locale_code`, `created_at`, `updated_at`) VALUES
(1, 'sales.checkout.shopping_cart.allow_guest_checkout', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(2, 'emails.general.notifications.emails.general.notifications.verification', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(3, 'emails.general.notifications.emails.general.notifications.registration', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(4, 'emails.general.notifications.emails.general.notifications.customer', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(5, 'emails.general.notifications.emails.general.notifications.new_order', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(6, 'emails.general.notifications.emails.general.notifications.new_admin', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(7, 'emails.general.notifications.emails.general.notifications.new_invoice', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(8, 'emails.general.notifications.emails.general.notifications.new_refund', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(9, 'emails.general.notifications.emails.general.notifications.new_shipment', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(10, 'emails.general.notifications.emails.general.notifications.new_inventory_source', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(11, 'emails.general.notifications.emails.general.notifications.cancel_order', '1', NULL, NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(12, 'customer.settings.social_login.enable_facebook', '1', 'default', NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(13, 'customer.settings.social_login.enable_twitter', '1', 'default', NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(14, 'customer.settings.social_login.enable_google', '1', 'default', NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(15, 'customer.settings.social_login.enable_linkedin', '1', 'default', NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(16, 'customer.settings.social_login.enable_github', '1', 'default', NULL, '2026-08-03 18:09:40', '2026-08-03 18:09:40'),
(17, 'general.general.locale_options.weight_unit', 'kgs', 'default', NULL, '2026-08-10 16:53:46', '2026-08-10 16:53:46'),
(18, 'general.general.breadcrumbs.shop', '1', NULL, NULL, '2026-08-10 16:53:46', '2026-08-10 16:53:46'),
(19, 'general.general.whatsapp.number', '3012455860', NULL, NULL, '2026-08-10 16:53:46', '2026-08-10 16:53:46'),
(20, 'general.general.whatsapp-mensaje.description', 'Estoy interesado en adquirir uno o varios de sus productos, ¿me brindaría más información al respecto? Gracias.', NULL, NULL, '2026-08-10 16:53:46', '2026-08-10 16:53:46'),
(21, 'general.content.header_offer.title', '50% de Descuento en tu primera compra', NULL, NULL, '2026-08-10 16:54:59', '2026-08-10 16:54:59'),
(22, 'general.content.header_offer.redirection_title', 'Compra ahora', NULL, NULL, '2026-08-10 16:54:59', '2026-08-10 16:54:59'),
(23, 'general.content.header_offer.redirection_link', '', NULL, NULL, '2026-08-10 16:54:59', '2026-08-10 16:54:59'),
(24, 'general.content.custom_scripts.custom_css', '', 'default', NULL, '2026-08-10 16:54:59', '2026-08-10 16:54:59'),
(25, 'general.content.custom_scripts.custom_javascript', '', 'default', NULL, '2026-08-10 16:54:59', '2026-08-10 16:54:59'),
(27, 'general.design.admin_logo.logo_image', 'configuration/cR6Xn4eCLwcJ46A2ETUlEx3yiBuXRIoQUrE9twh7.svg', NULL, NULL, '2026-08-10 16:56:12', '2026-08-10 18:14:57'),
(28, 'general.design.admin_logo.favicon', 'configuration/rmGpgD5d0eX7FNsIYEMATCUjTcYRdienQjfdprhY.svg', NULL, NULL, '2026-08-10 16:56:13', '2026-08-10 18:14:57'),
(29, 'general.social-media.tiktok.content', '', NULL, NULL, '2026-08-10 17:42:59', '2026-08-10 17:42:59'),
(30, 'general.social-media.instagram.content', 'https://www.instagram.com/indexartss/', NULL, NULL, '2026-08-10 17:42:59', '2026-08-10 17:42:59'),
(31, 'general.social-media.facebook.content', 'https://www.facebook.com/indexarts137', NULL, NULL, '2026-08-10 17:42:59', '2026-08-10 17:42:59'),
(32, 'general.social-media.youtube.content', '', NULL, NULL, '2026-08-10 17:42:59', '2026-08-10 17:42:59'),
(33, 'general.social-media.twitter.content', '', NULL, NULL, '2026-08-10 17:42:59', '2026-08-10 17:42:59'),
(34, 'catalog.rich_snippets.products.enable', '1', NULL, NULL, '2026-08-10 17:44:01', '2026-08-10 17:44:01'),
(35, 'catalog.rich_snippets.products.show_sku', '0', NULL, NULL, '2026-08-10 17:44:01', '2026-08-10 17:44:01'),
(36, 'catalog.rich_snippets.products.show_weight', '0', NULL, NULL, '2026-08-10 17:44:01', '2026-08-10 17:44:01'),
(37, 'catalog.rich_snippets.products.show_categories', '1', NULL, NULL, '2026-08-10 17:44:01', '2026-08-10 17:44:01'),
(38, 'catalog.rich_snippets.products.show_images', '1', NULL, NULL, '2026-08-10 17:44:01', '2026-08-10 17:44:01'),
(39, 'catalog.rich_snippets.products.show_reviews', '0', NULL, NULL, '2026-08-10 17:44:01', '2026-08-10 17:44:01'),
(40, 'catalog.rich_snippets.products.show_ratings', '0', NULL, NULL, '2026-08-10 17:44:02', '2026-08-10 17:44:02'),
(41, 'catalog.rich_snippets.products.show_offers', '0', NULL, NULL, '2026-08-10 17:44:02', '2026-08-10 17:44:02'),
(42, 'catalog.rich_snippets.categories.enable', '1', NULL, NULL, '2026-08-10 17:44:02', '2026-08-10 17:44:02'),
(43, 'catalog.rich_snippets.categories.show_search_input_field', '0', NULL, NULL, '2026-08-10 17:44:02', '2026-08-10 17:44:02'),
(44, 'sales.shipping.origin.country', 'CO', 'default', 'es', '2026-08-11 22:07:58', '2026-08-11 22:07:58'),
(45, 'sales.shipping.origin.state', 'CO-ATL', 'default', 'es', '2026-08-11 22:07:58', '2026-08-11 22:07:58'),
(46, 'sales.shipping.origin.city', 'Soledad', 'default', 'es', '2026-08-11 22:07:58', '2026-08-11 22:07:58'),
(47, 'sales.shipping.origin.address', 'Carrera 12 E Calle 69 - 71', 'default', 'es', '2026-08-11 22:07:58', '2026-08-11 22:07:58'),
(48, 'sales.shipping.origin.zipcode', '083010', 'default', 'es', '2026-08-11 22:07:58', '2026-08-11 22:07:58'),
(49, 'sales.shipping.origin.store_name', 'IndexArts', 'default', 'es', '2026-08-11 22:07:59', '2026-08-11 22:07:59'),
(50, 'sales.shipping.origin.vat_number', '', 'default', NULL, '2026-08-11 22:07:59', '2026-08-11 22:07:59'),
(51, 'sales.shipping.origin.contact', '3012455860', 'default', NULL, '2026-08-11 22:07:59', '2026-08-11 22:07:59'),
(52, 'sales.shipping.origin.bank_details', 'Nequi: 3012455860', 'default', 'es', '2026-08-11 22:07:59', '2026-08-11 22:07:59'),
(53, 'sales.carriers.free.title', 'Envío Gratuito', 'default', 'es', '2026-08-11 22:09:10', '2026-08-11 22:09:10'),
(54, 'sales.carriers.free.description', 'Envío Gratuito', 'default', 'es', '2026-08-11 22:09:10', '2026-08-11 22:09:10'),
(55, 'sales.carriers.free.active', '0', 'default', NULL, '2026-08-11 22:09:10', '2026-08-27 04:40:27'),
(56, 'sales.carriers.flatrate.title', 'Envío Tarifa Plena', 'default', 'es', '2026-08-11 22:09:10', '2026-08-11 22:09:10'),
(57, 'sales.carriers.flatrate.description', 'Envío Tarifa Plena', 'default', 'es', '2026-08-11 22:09:11', '2026-08-11 22:09:11'),
(58, 'sales.carriers.flatrate.default_rate', '100000', 'default', NULL, '2026-08-11 22:09:11', '2026-08-11 22:09:11'),
(59, 'sales.carriers.flatrate.type', 'per_order', 'default', NULL, '2026-08-11 22:09:11', '2026-08-11 22:09:11'),
(60, 'sales.carriers.flatrate.active', '1', 'default', NULL, '2026-08-11 22:09:11', '2026-08-11 22:09:11'),
(61, 'sales.payment_methods.paypal_smart_button.description', 'PayPal', 'default', 'es', '2026-08-27 04:42:15', '2026-08-27 04:42:15'),
(62, 'sales.payment_methods.paypal_smart_button.active', '0', 'default', NULL, '2026-08-27 04:42:15', '2026-08-27 04:42:15'),
(63, 'sales.payment_methods.paypal_smart_button.sandbox', '0', 'default', NULL, '2026-08-27 04:42:15', '2026-08-27 04:42:15'),
(64, 'sales.payment_methods.epayco.title', 'Epayco', NULL, 'es', '2026-08-27 04:42:16', '2026-08-27 04:42:16'),
(65, 'sales.payment_methods.epayco.name_store', 'IndexArts', NULL, 'es', '2026-08-27 04:42:16', '2026-08-27 04:42:16'),
(66, 'sales.payment_methods.epayco.url_response', 'https://indexarts.com.co/epayco/standard/success', NULL, 'es', '2026-08-27 04:42:16', '2026-08-27 04:42:16'),
(67, 'sales.payment_methods.epayco.url_confirmation', 'https://indexarts.com.co/epayco/standard/success', NULL, 'es', '2026-08-27 04:42:16', '2026-08-27 04:42:16'),
(68, 'sales.payment_methods.epayco.description', 'Epayco', NULL, 'es', '2026-08-27 04:42:16', '2026-08-27 04:42:16'),
(69, 'sales.payment_methods.epayco.cust_id_client', '', NULL, 'es', '2026-08-27 04:42:16', '2026-08-27 04:42:16'),
(70, 'sales.payment_methods.epayco.p_key', '', NULL, 'es', '2026-08-27 04:42:16', '2026-08-27 04:42:16'),
(71, 'sales.payment_methods.epayco.public_key', '', NULL, 'es', '2026-08-27 04:42:16', '2026-08-27 04:42:16'),
(72, 'sales.payment_methods.epayco.active', '1', NULL, 'es', '2026-08-27 04:42:17', '2026-08-27 04:42:17'),
(73, 'sales.payment_methods.epayco.testing_mode', '1', NULL, 'es', '2026-08-27 04:42:17', '2026-08-27 04:42:17'),
(74, 'sales.payment_methods.cashondelivery.title', 'Cash On Delivery', 'default', 'es', '2026-08-27 04:42:17', '2026-08-27 04:42:17'),
(75, 'sales.payment_methods.cashondelivery.description', 'Cash On Delivery', 'default', 'es', '2026-08-27 04:42:17', '2026-08-27 04:42:17'),
(76, 'sales.payment_methods.cashondelivery.instructions', '', 'default', 'es', '2026-08-27 04:42:17', '2026-08-27 04:42:17'),
(77, 'sales.payment_methods.cashondelivery.generate_invoice', '0', 'default', NULL, '2026-08-27 04:42:17', '2026-08-27 04:42:17'),
(78, 'sales.payment_methods.cashondelivery.invoice_status', 'pending', 'default', NULL, '2026-08-27 04:42:17', '2026-08-27 04:42:17'),
(79, 'sales.payment_methods.cashondelivery.active', '1', 'default', NULL, '2026-08-27 04:42:17', '2026-08-27 04:42:17'),
(80, 'sales.payment_methods.cashondelivery.sort', '1', NULL, NULL, '2026-08-27 04:42:18', '2026-08-27 04:42:18'),
(81, 'sales.payment_methods.moneytransfer.title', 'Money Transfer', 'default', 'es', '2026-08-27 04:42:18', '2026-08-27 04:42:18'),
(82, 'sales.payment_methods.moneytransfer.description', 'Money Transfer', 'default', 'es', '2026-08-27 04:42:18', '2026-08-27 04:42:18'),
(83, 'sales.payment_methods.moneytransfer.generate_invoice', '0', 'default', NULL, '2026-08-27 04:42:18', '2026-08-27 04:42:18'),
(84, 'sales.payment_methods.moneytransfer.mailing_address', '', 'default', 'es', '2026-08-27 04:42:18', '2026-08-27 04:42:18'),
(85, 'sales.payment_methods.moneytransfer.active', '1', 'default', NULL, '2026-08-27 04:42:18', '2026-08-27 04:42:18'),
(86, 'sales.payment_methods.moneytransfer.sort', '2', NULL, NULL, '2026-08-27 04:42:18', '2026-08-27 04:42:18'),
(87, 'sales.payment_methods.paypal_standard.title', 'PayPal Standard', 'default', 'es', '2026-08-27 04:42:18', '2026-08-27 04:42:18'),
(88, 'sales.payment_methods.paypal_standard.description', 'PayPal Standard', 'default', 'es', '2026-08-27 04:42:19', '2026-08-27 04:42:19'),
(89, 'sales.payment_methods.paypal_standard.business_account', 'test@webkul.com', 'default', NULL, '2026-08-27 04:42:19', '2026-08-27 04:42:19'),
(90, 'sales.payment_methods.paypal_standard.active', '1', 'default', NULL, '2026-08-27 04:42:19', '2026-08-27 04:42:19'),
(91, 'sales.payment_methods.paypal_standard.sandbox', '1', 'default', NULL, '2026-08-27 04:42:19', '2026-08-27 04:42:19'),
(92, 'sales.payment_methods.paypal_standard.sort', '3', NULL, NULL, '2026-08-27 04:42:19', '2026-08-27 04:42:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Åland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua & Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AC', 'Ascension Island'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia & Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'VG', 'British Virgin Islands'),
(34, 'BN', 'Brunei'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'IC', 'Canary Islands'),
(42, 'CV', 'Cape Verde'),
(43, 'BQ', 'Caribbean Netherlands'),
(44, 'KY', 'Cayman Islands'),
(45, 'CF', 'Central African Republic'),
(46, 'EA', 'Ceuta & Melilla'),
(47, 'TD', 'Chad'),
(48, 'CL', 'Chile'),
(49, 'CN', 'China'),
(50, 'CX', 'Christmas Island'),
(51, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoros'),
(54, 'CG', 'Congo - Brazzaville'),
(55, 'CD', 'Congo - Kinshasa'),
(56, 'CK', 'Cook Islands'),
(57, 'CR', 'Costa Rica'),
(58, 'CI', 'Côte d’Ivoire'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czechia'),
(64, 'DK', 'Denmark'),
(65, 'DG', 'Diego Garcia'),
(66, 'DJ', 'Djibouti'),
(67, 'DM', 'Dominica'),
(68, 'DO', 'Dominican Republic'),
(69, 'EC', 'Ecuador'),
(70, 'EG', 'Egypt'),
(71, 'SV', 'El Salvador'),
(72, 'GQ', 'Equatorial Guinea'),
(73, 'ER', 'Eritrea'),
(74, 'EE', 'Estonia'),
(75, 'ET', 'Ethiopia'),
(76, 'EZ', 'Eurozone'),
(77, 'FK', 'Falkland Islands'),
(78, 'FO', 'Faroe Islands'),
(79, 'FJ', 'Fiji'),
(80, 'FI', 'Finland'),
(81, 'FR', 'France'),
(82, 'GF', 'French Guiana'),
(83, 'PF', 'French Polynesia'),
(84, 'TF', 'French Southern Territories'),
(85, 'GA', 'Gabon'),
(86, 'GM', 'Gambia'),
(87, 'GE', 'Georgia'),
(88, 'DE', 'Germany'),
(89, 'GH', 'Ghana'),
(90, 'GI', 'Gibraltar'),
(91, 'GR', 'Greece'),
(92, 'GL', 'Greenland'),
(93, 'GD', 'Grenada'),
(94, 'GP', 'Guadeloupe'),
(95, 'GU', 'Guam'),
(96, 'GT', 'Guatemala'),
(97, 'GG', 'Guernsey'),
(98, 'GN', 'Guinea'),
(99, 'GW', 'Guinea-Bissau'),
(100, 'GY', 'Guyana'),
(101, 'HT', 'Haiti'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong SAR China'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'XK', 'Kosovo'),
(122, 'KW', 'Kuwait'),
(123, 'KG', 'Kyrgyzstan'),
(124, 'LA', 'Laos'),
(125, 'LV', 'Latvia'),
(126, 'LB', 'Lebanon'),
(127, 'LS', 'Lesotho'),
(128, 'LR', 'Liberia'),
(129, 'LY', 'Libya'),
(130, 'LI', 'Liechtenstein'),
(131, 'LT', 'Lithuania'),
(132, 'LU', 'Luxembourg'),
(133, 'MO', 'Macau SAR China'),
(134, 'MK', 'Macedonia'),
(135, 'MG', 'Madagascar'),
(136, 'MW', 'Malawi'),
(137, 'MY', 'Malaysia'),
(138, 'MV', 'Maldives'),
(139, 'ML', 'Mali'),
(140, 'MT', 'Malta'),
(141, 'MH', 'Marshall Islands'),
(142, 'MQ', 'Martinique'),
(143, 'MR', 'Mauritania'),
(144, 'MU', 'Mauritius'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'Mexico'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldova'),
(149, 'MC', 'Monaco'),
(150, 'MN', 'Mongolia'),
(151, 'ME', 'Montenegro'),
(152, 'MS', 'Montserrat'),
(153, 'MA', 'Morocco'),
(154, 'MZ', 'Mozambique'),
(155, 'MM', 'Myanmar (Burma)'),
(156, 'NA', 'Namibia'),
(157, 'NR', 'Nauru'),
(158, 'NP', 'Nepal'),
(159, 'NL', 'Netherlands'),
(160, 'NC', 'New Caledonia'),
(161, 'NZ', 'New Zealand'),
(162, 'NI', 'Nicaragua'),
(163, 'NE', 'Niger'),
(164, 'NG', 'Nigeria'),
(165, 'NU', 'Niue'),
(166, 'NF', 'Norfolk Island'),
(167, 'KP', 'North Korea'),
(168, 'MP', 'Northern Mariana Islands'),
(169, 'NO', 'Norway'),
(170, 'OM', 'Oman'),
(171, 'PK', 'Pakistan'),
(172, 'PW', 'Palau'),
(173, 'PS', 'Palestinian Territories'),
(174, 'PA', 'Panama'),
(175, 'PG', 'Papua New Guinea'),
(176, 'PY', 'Paraguay'),
(177, 'PE', 'Peru'),
(178, 'PH', 'Philippines'),
(179, 'PN', 'Pitcairn Islands'),
(180, 'PL', 'Poland'),
(181, 'PT', 'Portugal'),
(182, 'PR', 'Puerto Rico'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Réunion'),
(185, 'RO', 'Romania'),
(186, 'RU', 'Russia'),
(187, 'RW', 'Rwanda'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'São Tomé & Príncipe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SX', 'Sint Maarten'),
(198, 'SK', 'Slovakia'),
(199, 'SI', 'Slovenia'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia & South Sandwich Islands'),
(204, 'KR', 'South Korea'),
(205, 'SS', 'South Sudan'),
(206, 'ES', 'Spain'),
(207, 'LK', 'Sri Lanka'),
(208, 'BL', 'St. Barthélemy'),
(209, 'SH', 'St. Helena'),
(210, 'KN', 'St. Kitts & Nevis'),
(211, 'LC', 'St. Lucia'),
(212, 'MF', 'St. Martin'),
(213, 'PM', 'St. Pierre & Miquelon'),
(214, 'VC', 'St. Vincent & Grenadines'),
(215, 'SD', 'Sudan'),
(216, 'SR', 'Suriname'),
(217, 'SJ', 'Svalbard & Jan Mayen'),
(218, 'SZ', 'Swaziland'),
(219, 'SE', 'Sweden'),
(220, 'CH', 'Switzerland'),
(221, 'SY', 'Syria'),
(222, 'TW', 'Taiwan'),
(223, 'TJ', 'Tajikistan'),
(224, 'TZ', 'Tanzania'),
(225, 'TH', 'Thailand'),
(226, 'TL', 'Timor-Leste'),
(227, 'TG', 'Togo'),
(228, 'TK', 'Tokelau'),
(229, 'TO', 'Tonga'),
(230, 'TT', 'Trinidad & Tobago'),
(231, 'TA', 'Tristan da Cunha'),
(232, 'TN', 'Tunisia'),
(233, 'TR', 'Turkey'),
(234, 'TM', 'Turkmenistan'),
(235, 'TC', 'Turks & Caicos Islands'),
(236, 'TV', 'Tuvalu'),
(237, 'UM', 'U.S. Outlying Islands'),
(238, 'VI', 'U.S. Virgin Islands'),
(239, 'UG', 'Uganda'),
(240, 'UA', 'Ukraine'),
(241, 'AE', 'United Arab Emirates'),
(242, 'GB', 'United Kingdom'),
(243, 'UN', 'United Nations'),
(244, 'US', 'United States'),
(245, 'UY', 'Uruguay'),
(246, 'UZ', 'Uzbekistan'),
(247, 'VU', 'Vanuatu'),
(248, 'VA', 'Vatican City'),
(249, 'VE', 'Venezuela'),
(250, 'VN', 'Vietnam'),
(251, 'WF', 'Wallis & Futuna'),
(252, 'EH', 'Western Sahara'),
(253, 'YE', 'Yemen'),
(254, 'ZM', 'Zambia'),
(255, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_states`
--

CREATE TABLE `country_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `default_name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `country_code`, `code`, `default_name`) VALUES
(1, 244, 'US', 'AL', 'Alabama'),
(2, 244, 'US', 'AK', 'Alaska'),
(3, 244, 'US', 'AS', 'American Samoa'),
(4, 244, 'US', 'AZ', 'Arizona'),
(5, 244, 'US', 'AR', 'Arkansas'),
(6, 244, 'US', 'AE', 'Armed Forces Africa'),
(7, 244, 'US', 'AA', 'Armed Forces Americas'),
(8, 244, 'US', 'AE', 'Armed Forces Canada'),
(9, 244, 'US', 'AE', 'Armed Forces Europe'),
(10, 244, 'US', 'AE', 'Armed Forces Middle East'),
(11, 244, 'US', 'AP', 'Armed Forces Pacific'),
(12, 244, 'US', 'CA', 'California'),
(13, 244, 'US', 'CO', 'Colorado'),
(14, 244, 'US', 'CT', 'Connecticut'),
(15, 244, 'US', 'DE', 'Delaware'),
(16, 244, 'US', 'DC', 'District of Columbia'),
(17, 244, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 244, 'US', 'FL', 'Florida'),
(19, 244, 'US', 'GA', 'Georgia'),
(20, 244, 'US', 'GU', 'Guam'),
(21, 244, 'US', 'HI', 'Hawaii'),
(22, 244, 'US', 'ID', 'Idaho'),
(23, 244, 'US', 'IL', 'Illinois'),
(24, 244, 'US', 'IN', 'Indiana'),
(25, 244, 'US', 'IA', 'Iowa'),
(26, 244, 'US', 'KS', 'Kansas'),
(27, 244, 'US', 'KY', 'Kentucky'),
(28, 244, 'US', 'LA', 'Louisiana'),
(29, 244, 'US', 'ME', 'Maine'),
(30, 244, 'US', 'MH', 'Marshall Islands'),
(31, 244, 'US', 'MD', 'Maryland'),
(32, 244, 'US', 'MA', 'Massachusetts'),
(33, 244, 'US', 'MI', 'Michigan'),
(34, 244, 'US', 'MN', 'Minnesota'),
(35, 244, 'US', 'MS', 'Mississippi'),
(36, 244, 'US', 'MO', 'Missouri'),
(37, 244, 'US', 'MT', 'Montana'),
(38, 244, 'US', 'NE', 'Nebraska'),
(39, 244, 'US', 'NV', 'Nevada'),
(40, 244, 'US', 'NH', 'New Hampshire'),
(41, 244, 'US', 'NJ', 'New Jersey'),
(42, 244, 'US', 'NM', 'New Mexico'),
(43, 244, 'US', 'NY', 'New York'),
(44, 244, 'US', 'NC', 'North Carolina'),
(45, 244, 'US', 'ND', 'North Dakota'),
(46, 244, 'US', 'MP', 'Northern Mariana Islands'),
(47, 244, 'US', 'OH', 'Ohio'),
(48, 244, 'US', 'OK', 'Oklahoma'),
(49, 244, 'US', 'OR', 'Oregon'),
(50, 244, 'US', 'PW', 'Palau'),
(51, 244, 'US', 'PA', 'Pennsylvania'),
(52, 244, 'US', 'PR', 'Puerto Rico'),
(53, 244, 'US', 'RI', 'Rhode Island'),
(54, 244, 'US', 'SC', 'South Carolina'),
(55, 244, 'US', 'SD', 'South Dakota'),
(56, 244, 'US', 'TN', 'Tennessee'),
(57, 244, 'US', 'TX', 'Texas'),
(58, 244, 'US', 'UT', 'Utah'),
(59, 244, 'US', 'VT', 'Vermont'),
(60, 244, 'US', 'VI', 'Virgin Islands'),
(61, 244, 'US', 'VA', 'Virginia'),
(62, 244, 'US', 'WA', 'Washington'),
(63, 244, 'US', 'WV', 'West Virginia'),
(64, 244, 'US', 'WI', 'Wisconsin'),
(65, 244, 'US', 'WY', 'Wyoming'),
(66, 40, 'CA', 'AB', 'Alberta'),
(67, 40, 'CA', 'BC', 'British Columbia'),
(68, 40, 'CA', 'MB', 'Manitoba'),
(69, 40, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 40, 'CA', 'NB', 'New Brunswick'),
(71, 40, 'CA', 'NS', 'Nova Scotia'),
(72, 40, 'CA', 'NT', 'Northwest Territories'),
(73, 40, 'CA', 'NU', 'Nunavut'),
(74, 40, 'CA', 'ON', 'Ontario'),
(75, 40, 'CA', 'PE', 'Prince Edward Island'),
(76, 40, 'CA', 'QC', 'Quebec'),
(77, 40, 'CA', 'SK', 'Saskatchewan'),
(78, 40, 'CA', 'YT', 'Yukon Territory'),
(79, 88, 'DE', 'NDS', 'Niedersachsen'),
(80, 88, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 88, 'DE', 'BAY', 'Bayern'),
(82, 88, 'DE', 'BER', 'Berlin'),
(83, 88, 'DE', 'BRG', 'Brandenburg'),
(84, 88, 'DE', 'BRE', 'Bremen'),
(85, 88, 'DE', 'HAM', 'Hamburg'),
(86, 88, 'DE', 'HES', 'Hessen'),
(87, 88, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 88, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 88, 'DE', 'SAR', 'Saarland'),
(91, 88, 'DE', 'SAS', 'Sachsen'),
(92, 88, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 88, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 88, 'DE', 'THE', 'Thüringen'),
(95, 16, 'AT', 'WI', 'Wien'),
(96, 16, 'AT', 'NO', 'Niederösterreich'),
(97, 16, 'AT', 'OO', 'Oberösterreich'),
(98, 16, 'AT', 'SB', 'Salzburg'),
(99, 16, 'AT', 'KN', 'Kärnten'),
(100, 16, 'AT', 'ST', 'Steiermark'),
(101, 16, 'AT', 'TI', 'Tirol'),
(102, 16, 'AT', 'BL', 'Burgenland'),
(103, 16, 'AT', 'VB', 'Vorarlberg'),
(104, 220, 'CH', 'AG', 'Aargau'),
(105, 220, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 220, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 220, 'CH', 'BE', 'Bern'),
(108, 220, 'CH', 'BL', 'Basel-Landschaft'),
(109, 220, 'CH', 'BS', 'Basel-Stadt'),
(110, 220, 'CH', 'FR', 'Freiburg'),
(111, 220, 'CH', 'GE', 'Genf'),
(112, 220, 'CH', 'GL', 'Glarus'),
(113, 220, 'CH', 'GR', 'Graubünden'),
(114, 220, 'CH', 'JU', 'Jura'),
(115, 220, 'CH', 'LU', 'Luzern'),
(116, 220, 'CH', 'NE', 'Neuenburg'),
(117, 220, 'CH', 'NW', 'Nidwalden'),
(118, 220, 'CH', 'OW', 'Obwalden'),
(119, 220, 'CH', 'SG', 'St. Gallen'),
(120, 220, 'CH', 'SH', 'Schaffhausen'),
(121, 220, 'CH', 'SO', 'Solothurn'),
(122, 220, 'CH', 'SZ', 'Schwyz'),
(123, 220, 'CH', 'TG', 'Thurgau'),
(124, 220, 'CH', 'TI', 'Tessin'),
(125, 220, 'CH', 'UR', 'Uri'),
(126, 220, 'CH', 'VD', 'Waadt'),
(127, 220, 'CH', 'VS', 'Wallis'),
(128, 220, 'CH', 'ZG', 'Zug'),
(129, 220, 'CH', 'ZH', 'Zürich'),
(130, 206, 'ES', 'A Coruсa', 'A Coruña'),
(131, 206, 'ES', 'Alava', 'Alava'),
(132, 206, 'ES', 'Albacete', 'Albacete'),
(133, 206, 'ES', 'Alicante', 'Alicante'),
(134, 206, 'ES', 'Almeria', 'Almeria'),
(135, 206, 'ES', 'Asturias', 'Asturias'),
(136, 206, 'ES', 'Avila', 'Avila'),
(137, 206, 'ES', 'Badajoz', 'Badajoz'),
(138, 206, 'ES', 'Baleares', 'Baleares'),
(139, 206, 'ES', 'Barcelona', 'Barcelona'),
(140, 206, 'ES', 'Burgos', 'Burgos'),
(141, 206, 'ES', 'Caceres', 'Caceres'),
(142, 206, 'ES', 'Cadiz', 'Cadiz'),
(143, 206, 'ES', 'Cantabria', 'Cantabria'),
(144, 206, 'ES', 'Castellon', 'Castellon'),
(145, 206, 'ES', 'Ceuta', 'Ceuta'),
(146, 206, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 206, 'ES', 'Cordoba', 'Cordoba'),
(148, 206, 'ES', 'Cuenca', 'Cuenca'),
(149, 206, 'ES', 'Girona', 'Girona'),
(150, 206, 'ES', 'Granada', 'Granada'),
(151, 206, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 206, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 206, 'ES', 'Huelva', 'Huelva'),
(154, 206, 'ES', 'Huesca', 'Huesca'),
(155, 206, 'ES', 'Jaen', 'Jaen'),
(156, 206, 'ES', 'La Rioja', 'La Rioja'),
(157, 206, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 206, 'ES', 'Leon', 'Leon'),
(159, 206, 'ES', 'Lleida', 'Lleida'),
(160, 206, 'ES', 'Lugo', 'Lugo'),
(161, 206, 'ES', 'Madrid', 'Madrid'),
(162, 206, 'ES', 'Malaga', 'Malaga'),
(163, 206, 'ES', 'Melilla', 'Melilla'),
(164, 206, 'ES', 'Murcia', 'Murcia'),
(165, 206, 'ES', 'Navarra', 'Navarra'),
(166, 206, 'ES', 'Ourense', 'Ourense'),
(167, 206, 'ES', 'Palencia', 'Palencia'),
(168, 206, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 206, 'ES', 'Salamanca', 'Salamanca'),
(170, 206, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 206, 'ES', 'Segovia', 'Segovia'),
(172, 206, 'ES', 'Sevilla', 'Sevilla'),
(173, 206, 'ES', 'Soria', 'Soria'),
(174, 206, 'ES', 'Tarragona', 'Tarragona'),
(175, 206, 'ES', 'Teruel', 'Teruel'),
(176, 206, 'ES', 'Toledo', 'Toledo'),
(177, 206, 'ES', 'Valencia', 'Valencia'),
(178, 206, 'ES', 'Valladolid', 'Valladolid'),
(179, 206, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 206, 'ES', 'Zamora', 'Zamora'),
(181, 206, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 81, 'FR', '1', 'Ain'),
(183, 81, 'FR', '2', 'Aisne'),
(184, 81, 'FR', '3', 'Allier'),
(185, 81, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 81, 'FR', '5', 'Hautes-Alpes'),
(187, 81, 'FR', '6', 'Alpes-Maritimes'),
(188, 81, 'FR', '7', 'Ardèche'),
(189, 81, 'FR', '8', 'Ardennes'),
(190, 81, 'FR', '9', 'Ariège'),
(191, 81, 'FR', '10', 'Aube'),
(192, 81, 'FR', '11', 'Aude'),
(193, 81, 'FR', '12', 'Aveyron'),
(194, 81, 'FR', '13', 'Bouches-du-Rhône'),
(195, 81, 'FR', '14', 'Calvados'),
(196, 81, 'FR', '15', 'Cantal'),
(197, 81, 'FR', '16', 'Charente'),
(198, 81, 'FR', '17', 'Charente-Maritime'),
(199, 81, 'FR', '18', 'Cher'),
(200, 81, 'FR', '19', 'Corrèze'),
(201, 81, 'FR', '2A', 'Corse-du-Sud'),
(202, 81, 'FR', '2B', 'Haute-Corse'),
(203, 81, 'FR', '21', 'Côte-d\'Or'),
(204, 81, 'FR', '22', 'Côtes-d\'Armor'),
(205, 81, 'FR', '23', 'Creuse'),
(206, 81, 'FR', '24', 'Dordogne'),
(207, 81, 'FR', '25', 'Doubs'),
(208, 81, 'FR', '26', 'Drôme'),
(209, 81, 'FR', '27', 'Eure'),
(210, 81, 'FR', '28', 'Eure-et-Loir'),
(211, 81, 'FR', '29', 'Finistère'),
(212, 81, 'FR', '30', 'Gard'),
(213, 81, 'FR', '31', 'Haute-Garonne'),
(214, 81, 'FR', '32', 'Gers'),
(215, 81, 'FR', '33', 'Gironde'),
(216, 81, 'FR', '34', 'Hérault'),
(217, 81, 'FR', '35', 'Ille-et-Vilaine'),
(218, 81, 'FR', '36', 'Indre'),
(219, 81, 'FR', '37', 'Indre-et-Loire'),
(220, 81, 'FR', '38', 'Isère'),
(221, 81, 'FR', '39', 'Jura'),
(222, 81, 'FR', '40', 'Landes'),
(223, 81, 'FR', '41', 'Loir-et-Cher'),
(224, 81, 'FR', '42', 'Loire'),
(225, 81, 'FR', '43', 'Haute-Loire'),
(226, 81, 'FR', '44', 'Loire-Atlantique'),
(227, 81, 'FR', '45', 'Loiret'),
(228, 81, 'FR', '46', 'Lot'),
(229, 81, 'FR', '47', 'Lot-et-Garonne'),
(230, 81, 'FR', '48', 'Lozère'),
(231, 81, 'FR', '49', 'Maine-et-Loire'),
(232, 81, 'FR', '50', 'Manche'),
(233, 81, 'FR', '51', 'Marne'),
(234, 81, 'FR', '52', 'Haute-Marne'),
(235, 81, 'FR', '53', 'Mayenne'),
(236, 81, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 81, 'FR', '55', 'Meuse'),
(238, 81, 'FR', '56', 'Morbihan'),
(239, 81, 'FR', '57', 'Moselle'),
(240, 81, 'FR', '58', 'Nièvre'),
(241, 81, 'FR', '59', 'Nord'),
(242, 81, 'FR', '60', 'Oise'),
(243, 81, 'FR', '61', 'Orne'),
(244, 81, 'FR', '62', 'Pas-de-Calais'),
(245, 81, 'FR', '63', 'Puy-de-Dôme'),
(246, 81, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 81, 'FR', '65', 'Hautes-Pyrénées'),
(248, 81, 'FR', '66', 'Pyrénées-Orientales'),
(249, 81, 'FR', '67', 'Bas-Rhin'),
(250, 81, 'FR', '68', 'Haut-Rhin'),
(251, 81, 'FR', '69', 'Rhône'),
(252, 81, 'FR', '70', 'Haute-Saône'),
(253, 81, 'FR', '71', 'Saône-et-Loire'),
(254, 81, 'FR', '72', 'Sarthe'),
(255, 81, 'FR', '73', 'Savoie'),
(256, 81, 'FR', '74', 'Haute-Savoie'),
(257, 81, 'FR', '75', 'Paris'),
(258, 81, 'FR', '76', 'Seine-Maritime'),
(259, 81, 'FR', '77', 'Seine-et-Marne'),
(260, 81, 'FR', '78', 'Yvelines'),
(261, 81, 'FR', '79', 'Deux-Sèvres'),
(262, 81, 'FR', '80', 'Somme'),
(263, 81, 'FR', '81', 'Tarn'),
(264, 81, 'FR', '82', 'Tarn-et-Garonne'),
(265, 81, 'FR', '83', 'Var'),
(266, 81, 'FR', '84', 'Vaucluse'),
(267, 81, 'FR', '85', 'Vendée'),
(268, 81, 'FR', '86', 'Vienne'),
(269, 81, 'FR', '87', 'Haute-Vienne'),
(270, 81, 'FR', '88', 'Vosges'),
(271, 81, 'FR', '89', 'Yonne'),
(272, 81, 'FR', '90', 'Territoire-de-Belfort'),
(273, 81, 'FR', '91', 'Essonne'),
(274, 81, 'FR', '92', 'Hauts-de-Seine'),
(275, 81, 'FR', '93', 'Seine-Saint-Denis'),
(276, 81, 'FR', '94', 'Val-de-Marne'),
(277, 81, 'FR', '95', 'Val-d\'Oise'),
(278, 185, 'RO', 'AB', 'Alba'),
(279, 185, 'RO', 'AR', 'Arad'),
(280, 185, 'RO', 'AG', 'Argeş'),
(281, 185, 'RO', 'BC', 'Bacău'),
(282, 185, 'RO', 'BH', 'Bihor'),
(283, 185, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 185, 'RO', 'BT', 'Botoşani'),
(285, 185, 'RO', 'BV', 'Braşov'),
(286, 185, 'RO', 'BR', 'Brăila'),
(287, 185, 'RO', 'B', 'Bucureşti'),
(288, 185, 'RO', 'BZ', 'Buzău'),
(289, 185, 'RO', 'CS', 'Caraş-Severin'),
(290, 185, 'RO', 'CL', 'Călăraşi'),
(291, 185, 'RO', 'CJ', 'Cluj'),
(292, 185, 'RO', 'CT', 'Constanţa'),
(293, 185, 'RO', 'CV', 'Covasna'),
(294, 185, 'RO', 'DB', 'Dâmboviţa'),
(295, 185, 'RO', 'DJ', 'Dolj'),
(296, 185, 'RO', 'GL', 'Galaţi'),
(297, 185, 'RO', 'GR', 'Giurgiu'),
(298, 185, 'RO', 'GJ', 'Gorj'),
(299, 185, 'RO', 'HR', 'Harghita'),
(300, 185, 'RO', 'HD', 'Hunedoara'),
(301, 185, 'RO', 'IL', 'Ialomiţa'),
(302, 185, 'RO', 'IS', 'Iaşi'),
(303, 185, 'RO', 'IF', 'Ilfov'),
(304, 185, 'RO', 'MM', 'Maramureş'),
(305, 185, 'RO', 'MH', 'Mehedinţi'),
(306, 185, 'RO', 'MS', 'Mureş'),
(307, 185, 'RO', 'NT', 'Neamţ'),
(308, 185, 'RO', 'OT', 'Olt'),
(309, 185, 'RO', 'PH', 'Prahova'),
(310, 185, 'RO', 'SM', 'Satu-Mare'),
(311, 185, 'RO', 'SJ', 'Sălaj'),
(312, 185, 'RO', 'SB', 'Sibiu'),
(313, 185, 'RO', 'SV', 'Suceava'),
(314, 185, 'RO', 'TR', 'Teleorman'),
(315, 185, 'RO', 'TM', 'Timiş'),
(316, 185, 'RO', 'TL', 'Tulcea'),
(317, 185, 'RO', 'VS', 'Vaslui'),
(318, 185, 'RO', 'VL', 'Vâlcea'),
(319, 185, 'RO', 'VN', 'Vrancea'),
(320, 80, 'FI', 'Lappi', 'Lappi'),
(321, 80, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 80, 'FI', 'Kainuu', 'Kainuu'),
(323, 80, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 80, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 80, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 80, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 80, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 80, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 80, 'FI', 'Satakunta', 'Satakunta'),
(330, 80, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 80, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 80, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 80, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 80, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 80, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 80, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 80, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 80, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 80, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 74, 'EE', 'EE-37', 'Harjumaa'),
(341, 74, 'EE', 'EE-39', 'Hiiumaa'),
(342, 74, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 74, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 74, 'EE', 'EE-51', 'Järvamaa'),
(345, 74, 'EE', 'EE-57', 'Läänemaa'),
(346, 74, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 74, 'EE', 'EE-65', 'Põlvamaa'),
(348, 74, 'EE', 'EE-67', 'Pärnumaa'),
(349, 74, 'EE', 'EE-70', 'Raplamaa'),
(350, 74, 'EE', 'EE-74', 'Saaremaa'),
(351, 74, 'EE', 'EE-78', 'Tartumaa'),
(352, 74, 'EE', 'EE-82', 'Valgamaa'),
(353, 74, 'EE', 'EE-84', 'Viljandimaa'),
(354, 74, 'EE', 'EE-86', 'Võrumaa'),
(355, 125, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 125, 'LV', 'LV-JEL', 'Jelgava'),
(357, 125, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 125, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 125, 'LV', 'LV-LPX', 'Liepāja'),
(360, 125, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 125, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 125, 'LV', 'LV-RIX', 'Rīga'),
(363, 125, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 125, 'LV', 'Valmiera', 'Valmiera'),
(365, 125, 'LV', 'LV-VEN', 'Ventspils'),
(366, 125, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 125, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 125, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 125, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 125, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 125, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 125, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 125, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 125, 'LV', 'Apes novads', 'Apes novads'),
(375, 125, 'LV', 'Auces novads', 'Auces novads'),
(376, 125, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 125, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 125, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 125, 'LV', 'LV-BL', 'Balvu novads'),
(380, 125, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 125, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 125, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 125, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 125, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 125, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 125, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 125, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 125, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 125, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 125, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 125, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 125, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 125, 'LV', 'Engures novads', 'Engures novads'),
(394, 125, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 125, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 125, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 125, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 125, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 125, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 125, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 125, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 125, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 125, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 125, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 125, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 125, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 125, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 125, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 125, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 125, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 125, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 125, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 125, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 125, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 125, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 125, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 125, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 125, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 125, 'LV', 'LV-MA', 'Madonas novads'),
(420, 125, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 125, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 125, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 125, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 125, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 125, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 125, 'LV', 'LV-OG', 'Ogres novads'),
(427, 125, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 125, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 125, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 125, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 125, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 125, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 125, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 125, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 125, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 125, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 125, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 125, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 125, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 125, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 125, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 125, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 125, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 125, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 125, 'LV', 'Salas novads', 'Salas novads'),
(446, 125, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 125, 'LV', 'LV-SA', 'Saldus novads'),
(448, 125, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 125, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 125, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 125, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 125, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 125, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 125, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 125, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 125, 'LV', 'LV-TA', 'Talsu novads'),
(457, 125, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 125, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 125, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 125, 'LV', 'LV-VK', 'Valkas novads'),
(461, 125, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 125, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 125, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 125, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 125, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 125, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 125, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 125, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 125, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 125, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 125, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 125, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 125, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 125, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 131, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 131, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 131, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 131, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 131, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 131, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 131, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 131, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 131, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 131, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 31, 'BR', 'AC', 'Acre'),
(486, 31, 'BR', 'AL', 'Alagoas'),
(487, 31, 'BR', 'AP', 'Amapá'),
(488, 31, 'BR', 'AM', 'Amazonas'),
(489, 31, 'BR', 'BA', 'Bahia'),
(490, 31, 'BR', 'CE', 'Ceará'),
(491, 31, 'BR', 'ES', 'Espírito Santo'),
(492, 31, 'BR', 'GO', 'Goiás'),
(493, 31, 'BR', 'MA', 'Maranhão'),
(494, 31, 'BR', 'MT', 'Mato Grosso'),
(495, 31, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 31, 'BR', 'MG', 'Minas Gerais'),
(497, 31, 'BR', 'PA', 'Pará'),
(498, 31, 'BR', 'PB', 'Paraíba'),
(499, 31, 'BR', 'PR', 'Paraná'),
(500, 31, 'BR', 'PE', 'Pernambuco'),
(501, 31, 'BR', 'PI', 'Piauí'),
(502, 31, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 31, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 31, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 31, 'BR', 'RO', 'Rondônia'),
(506, 31, 'BR', 'RR', 'Roraima'),
(507, 31, 'BR', 'SC', 'Santa Catarina'),
(508, 31, 'BR', 'SP', 'São Paulo'),
(509, 31, 'BR', 'SE', 'Sergipe'),
(510, 31, 'BR', 'TO', 'Tocantins'),
(511, 31, 'BR', 'DF', 'Distrito Federal'),
(512, 59, 'HR', 'HR-01', 'Zagrebačka županija'),
(513, 59, 'HR', 'HR-02', 'Krapinsko-zagorska županija'),
(514, 59, 'HR', 'HR-03', 'Sisačko-moslavačka županija'),
(515, 59, 'HR', 'HR-04', 'Karlovačka županija'),
(516, 59, 'HR', 'HR-05', 'Varaždinska županija'),
(517, 59, 'HR', 'HR-06', 'Koprivničko-križevačka županija'),
(518, 59, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija'),
(519, 59, 'HR', 'HR-08', 'Primorsko-goranska županija'),
(520, 59, 'HR', 'HR-09', 'Ličko-senjska županija'),
(521, 59, 'HR', 'HR-10', 'Virovitičko-podravska županija'),
(522, 59, 'HR', 'HR-11', 'Požeško-slavonska županija'),
(523, 59, 'HR', 'HR-12', 'Brodsko-posavska županija'),
(524, 59, 'HR', 'HR-13', 'Zadarska županija'),
(525, 59, 'HR', 'HR-14', 'Osječko-baranjska županija'),
(526, 59, 'HR', 'HR-15', 'Šibensko-kninska županija'),
(527, 59, 'HR', 'HR-16', 'Vukovarsko-srijemska županija'),
(528, 59, 'HR', 'HR-17', 'Splitsko-dalmatinska županija'),
(529, 59, 'HR', 'HR-18', 'Istarska županija'),
(530, 59, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija'),
(531, 59, 'HR', 'HR-20', 'Međimurska županija'),
(532, 59, 'HR', 'HR-21', 'Grad Zagreb'),
(533, 106, 'IN', 'AN', 'Andaman and Nicobar Islands'),
(534, 106, 'IN', 'AP', 'Andhra Pradesh'),
(535, 106, 'IN', 'AR', 'Arunachal Pradesh'),
(536, 106, 'IN', 'AS', 'Assam'),
(537, 106, 'IN', 'BR', 'Bihar'),
(538, 106, 'IN', 'CH', 'Chandigarh'),
(539, 106, 'IN', 'CT', 'Chhattisgarh'),
(540, 106, 'IN', 'DN', 'Dadra and Nagar Haveli'),
(541, 106, 'IN', 'DD', 'Daman and Diu'),
(542, 106, 'IN', 'DL', 'Delhi'),
(543, 106, 'IN', 'GA', 'Goa'),
(544, 106, 'IN', 'GJ', 'Gujarat'),
(545, 106, 'IN', 'HR', 'Haryana'),
(546, 106, 'IN', 'HP', 'Himachal Pradesh'),
(547, 106, 'IN', 'JK', 'Jammu and Kashmir'),
(548, 106, 'IN', 'JH', 'Jharkhand'),
(549, 106, 'IN', 'KA', 'Karnataka'),
(550, 106, 'IN', 'KL', 'Kerala'),
(551, 106, 'IN', 'LD', 'Lakshadweep'),
(552, 106, 'IN', 'MP', 'Madhya Pradesh'),
(553, 106, 'IN', 'MH', 'Maharashtra'),
(554, 106, 'IN', 'MN', 'Manipur'),
(555, 106, 'IN', 'ML', 'Meghalaya'),
(556, 106, 'IN', 'MZ', 'Mizoram'),
(557, 106, 'IN', 'NL', 'Nagaland'),
(558, 106, 'IN', 'OR', 'Odisha'),
(559, 106, 'IN', 'PY', 'Puducherry'),
(560, 106, 'IN', 'PB', 'Punjab'),
(561, 106, 'IN', 'RJ', 'Rajasthan'),
(562, 106, 'IN', 'SK', 'Sikkim'),
(563, 106, 'IN', 'TN', 'Tamil Nadu'),
(564, 106, 'IN', 'TG', 'Telangana'),
(565, 106, 'IN', 'TR', 'Tripura'),
(566, 106, 'IN', 'UP', 'Uttar Pradesh'),
(567, 106, 'IN', 'UT', 'Uttarakhand'),
(568, 106, 'IN', 'WB', 'West Bengal'),
(569, 176, 'PY', 'PY-16', 'Alto Paraguay'),
(570, 176, 'PY', 'PY-10', 'Alto Paraná'),
(571, 176, 'PY', 'PY-13', 'Amambay'),
(572, 176, 'PY', 'PY-ASU', 'Asunción'),
(573, 176, 'PY', 'PY-19', 'Boquerón'),
(574, 176, 'PY', 'PY-5', 'Caaguazú'),
(575, 176, 'PY', 'PY-6', 'Caazapá'),
(576, 176, 'PY', 'PY-14', 'Canindeyú'),
(577, 176, 'PY', 'PY-11', 'Central'),
(578, 176, 'PY', 'PY-1', 'Concepción'),
(579, 176, 'PY', 'PY-3', 'Cordillera'),
(580, 176, 'PY', 'PY-4', 'Guairá'),
(581, 176, 'PY', 'PY-7', 'Itapúa'),
(582, 176, 'PY', 'PY-8', 'Misiones'),
(583, 176, 'PY', 'PY-9', 'Paraguarí'),
(584, 176, 'PY', 'PY-15', 'Presidente Hayes'),
(585, 176, 'PY', 'PY-2', 'San Pedro'),
(586, 176, 'PY', 'PY-12', 'Ñeembucú'),
(587, 52, 'CO', 'CO-AMA', 'Amazonas'),
(588, 52, 'CO', 'CO-ANT', 'Antioquia'),
(589, 52, 'CO', 'CO-ARA', 'Arauca'),
(590, 52, 'CO', 'CO-ATL', 'Atlántico'),
(591, 52, 'CO', 'CO-BOL', 'Bolívar'),
(592, 52, 'CO', 'CO-BOY', 'Boyacá'),
(593, 52, 'CO', 'CO-CAL', 'Caldas'),
(594, 52, 'CO', 'CO-CAQ', 'Caquetá'),
(595, 52, 'CO', 'CO-CAS', 'Casanare'),
(596, 52, 'CO', 'CO-CAU', 'Cauca'),
(597, 52, 'CO', 'CO-CES', 'Cesar'),
(598, 52, 'CO', 'CO-CHO', 'Chocó'),
(599, 52, 'CO', 'CO-COR', 'Córdoba'),
(600, 52, 'CO', 'CO-CUN', 'Cundinamarca'),
(601, 52, 'CO', 'CO-GUA', 'Guainía'),
(602, 52, 'CO', 'CO-GUV', 'Guaviare'),
(603, 52, 'CO', 'CO-HUI', 'Huila'),
(604, 52, 'CO', 'CO-LAG', 'La Guajira'),
(605, 52, 'CO', 'CO-MAG', 'Magdalena'),
(606, 52, 'CO', 'CO-MET', 'Meta'),
(607, 52, 'CO', 'CO-NAR', 'Nariño'),
(608, 52, 'CO', 'CO-NSA', 'Norte de Santander'),
(609, 52, 'CO', 'CO-PUT', 'Putumayo'),
(610, 52, 'CO', 'CO-QUI', 'Quindío'),
(611, 52, 'CO', 'CO-RIS', 'Risaralda'),
(612, 52, 'CO', 'CO-SAP', 'San Andrés y Providencia'),
(613, 52, 'CO', 'CO-SAN', 'Santander'),
(614, 52, 'CO', 'CO-SUC', 'Sucre'),
(615, 52, 'CO', 'CO-TOL', 'Tolima'),
(616, 52, 'CO', 'CO-VAC', 'Valle del Cauca'),
(617, 52, 'CO', 'CO-VAU', 'Vaupés'),
(618, 52, 'CO', 'CO-VID', 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_state_translations`
--

CREATE TABLE `country_state_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_state_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `default_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `symbol` varchar(191) DEFAULT NULL,
  `decimal` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `group_separator` varchar(191) NOT NULL DEFAULT ',',
  `decimal_separator` varchar(191) NOT NULL DEFAULT '.',
  `currency_position` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `decimal`, `group_separator`, `decimal_separator`, `currency_position`, `created_at`, `updated_at`) VALUES
(1, 'COP', 'Peso Colombiano', '$', 2, ',', '.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currency_exchange_rates`
--

CREATE TABLE `currency_exchange_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate` decimal(24,12) NOT NULL,
  `target_currency` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(191) DEFAULT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribed_to_news_letter` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `token` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `email`, `phone`, `image`, `status`, `password`, `api_token`, `customer_group_id`, `channel_id`, `subscribed_to_news_letter`, `is_verified`, `is_suspended`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andrés Camilo', 'García Carreño', NULL, NULL, 'Camiilogarcia69@gmail.com', NULL, NULL, 1, '$2y$10$Cjqw.t9LjwacvhEAZt6jF.8Zze.Omo77Sn9SQ3AIr9TAgZCxM6Gmu', '1TNyRpaN50TqWC1up7ddN8ILPhpHbyzFEdI0rHAyfxXKWh7YstyaSLaJKnG1CCm9yQd4gLPUm00OwuDl', 1, 1, 0, 1, 0, '8f7dd8964e3fc7feef025990619f38fd', NULL, '2026-09-01 18:45:30', '2026-09-01 18:45:30'),
(2, 'Camilo', 'García', NULL, NULL, 'camilo.prueba@indexarts.com', NULL, NULL, 1, '$2y$10$5Fwp8FBDv/17txI95mFGbe/.8tjRAaiugzUuflXqew4hU5.IfY55O', 'kIkxV67bwwKXD0g8Dtwvm16uDUZKGuOyDLI1d5jK5LDMDHQCUiXF3EbE8BRyOCtvKWnnlV6bi1Sdt4UD', 1, 1, 0, 1, 0, '6b08d7c883785e4bd9034dd6bc700eb5', NULL, '2026-09-01 19:01:45', '2026-09-01 19:01:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `code`, `name`, `is_user_defined`, `created_at`, `updated_at`) VALUES
(1, 'guest', 'Invitado', 0, NULL, NULL),
(2, 'general', 'General', 0, NULL, NULL),
(3, 'wholesale', 'Mayorista', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_notes`
--

CREATE TABLE `customer_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `note` text NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_password_resets`
--

CREATE TABLE `customer_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_social_accounts`
--

CREATE TABLE `customer_social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `provider_name` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datagrid_saved_filters`
--

CREATE TABLE `datagrid_saved_filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `src` varchar(191) NOT NULL,
  `applied` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`applied`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `download_bought` int(11) NOT NULL DEFAULT 0,
  `download_used` int(11) NOT NULL DEFAULT 0,
  `status` varchar(191) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `download_canceled` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imports`
--

CREATE TABLE `imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(191) NOT NULL DEFAULT 'pending',
  `process_in_queue` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(191) NOT NULL,
  `action` varchar(191) NOT NULL,
  `validation_strategy` varchar(191) NOT NULL,
  `allowed_errors` int(11) NOT NULL DEFAULT 0,
  `processed_rows_count` int(11) NOT NULL DEFAULT 0,
  `invalid_rows_count` int(11) NOT NULL DEFAULT 0,
  `errors_count` int(11) NOT NULL DEFAULT 0,
  `errors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`errors`)),
  `field_separator` varchar(191) NOT NULL,
  `file_path` varchar(191) NOT NULL,
  `images_directory_path` varchar(191) DEFAULT NULL,
  `error_file_path` varchar(191) DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `import_batches`
--

CREATE TABLE `import_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(191) NOT NULL DEFAULT 'pending',
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `import_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_sources`
--

CREATE TABLE `inventory_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `contact_name` varchar(191) NOT NULL,
  `contact_email` varchar(191) NOT NULL,
  `contact_number` varchar(191) NOT NULL,
  `contact_fax` varchar(191) DEFAULT NULL,
  `country` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `street` varchar(191) NOT NULL,
  `postcode` varchar(191) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `inventory_sources`
--

INSERT INTO `inventory_sources` (`id`, `code`, `name`, `description`, `contact_name`, `contact_email`, `contact_number`, `contact_fax`, `country`, `state`, `city`, `street`, `postcode`, `priority`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Predeterminado', NULL, 'Predeterminado', 'warehouse@example.com', '1234567899', NULL, 'US', 'MI', 'Detroit', '12th Street', '48127', 0, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `order_currency_code` varchar(191) DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `reminders` int(11) NOT NULL DEFAULT 0,
  `next_reminder_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` text NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locales`
--

CREATE TABLE `locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `direction` enum('ltr','rtl') NOT NULL DEFAULT 'ltr',
  `logo_path` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `locales`
--

INSERT INTO `locales` (`id`, `code`, `name`, `direction`, `logo_path`, `created_at`, `updated_at`) VALUES
(1, 'es', 'Español', 'ltr', 'locales/uOVcsj6edH2UHk681n0az7wyNPdeLNZLkwMgPoxI.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(191) NOT NULL,
  `mail_to` varchar(191) NOT NULL,
  `spooling` varchar(191) DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `marketing_template_id` int(10) UNSIGNED DEFAULT NULL,
  `marketing_event_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marketing_events`
--

CREATE TABLE `marketing_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `marketing_events`
--

INSERT INTO `marketing_events` (`id`, `name`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Birthday', 'Birthday', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marketing_templates`
--

CREATE TABLE `marketing_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_admin_password_resets_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_06_12_111907_create_admins_table', 1),
(5, '2018_06_13_055341_create_roles_table', 1),
(6, '2018_07_05_130148_create_attributes_table', 1),
(7, '2018_07_05_132854_create_attribute_translations_table', 1),
(8, '2018_07_05_135150_create_attribute_families_table', 1),
(9, '2018_07_05_135152_create_attribute_groups_table', 1),
(10, '2018_07_05_140832_create_attribute_options_table', 1),
(11, '2018_07_05_140856_create_attribute_option_translations_table', 1),
(12, '2018_07_05_142820_create_categories_table', 1),
(13, '2018_07_10_055143_create_locales_table', 1),
(14, '2018_07_20_054426_create_countries_table', 1),
(15, '2018_07_20_054502_create_currencies_table', 1),
(16, '2018_07_20_054542_create_currency_exchange_rates_table', 1),
(17, '2018_07_20_064849_create_channels_table', 1),
(18, '2018_07_21_142836_create_category_translations_table', 1),
(19, '2018_07_23_110040_create_inventory_sources_table', 1),
(20, '2018_07_24_082635_create_customer_groups_table', 1),
(21, '2018_07_24_082930_create_customers_table', 1),
(22, '2018_07_27_065727_create_products_table', 1),
(23, '2018_07_27_070011_create_product_attribute_values_table', 1),
(24, '2018_07_27_092623_create_product_reviews_table', 1),
(25, '2018_07_27_113941_create_product_images_table', 1),
(26, '2018_07_27_113956_create_product_inventories_table', 1),
(27, '2018_08_30_064755_create_tax_categories_table', 1),
(28, '2018_08_30_065042_create_tax_rates_table', 1),
(29, '2018_08_30_065840_create_tax_mappings_table', 1),
(30, '2018_09_05_150444_create_cart_table', 1),
(31, '2018_09_05_150915_create_cart_items_table', 1),
(32, '2018_09_11_064045_customer_password_resets', 1),
(33, '2018_09_19_093453_create_cart_payment', 1),
(34, '2018_09_19_093508_create_cart_shipping_rates_table', 1),
(35, '2018_09_20_060658_create_core_config_table', 1),
(36, '2018_09_27_113154_create_orders_table', 1),
(37, '2018_09_27_113207_create_order_items_table', 1),
(38, '2018_09_27_115022_create_shipments_table', 1),
(39, '2018_09_27_115029_create_shipment_items_table', 1),
(40, '2018_09_27_115135_create_invoices_table', 1),
(41, '2018_09_27_115144_create_invoice_items_table', 1),
(42, '2018_10_01_095504_create_order_payment_table', 1),
(43, '2018_10_03_025230_create_wishlist_table', 1),
(44, '2018_10_12_101803_create_country_translations_table', 1),
(45, '2018_10_12_101913_create_country_states_table', 1),
(46, '2018_10_12_101923_create_country_state_translations_table', 1),
(47, '2018_11_16_173504_create_subscribers_list_table', 1),
(48, '2018_11_21_144411_create_cart_item_inventories_table', 1),
(49, '2018_12_06_185202_create_product_flat_table', 1),
(50, '2018_12_24_123812_create_channel_inventory_sources_table', 1),
(51, '2018_12_26_165327_create_product_ordered_inventories_table', 1),
(52, '2019_05_13_024321_create_cart_rules_table', 1),
(53, '2019_05_13_024322_create_cart_rule_channels_table', 1),
(54, '2019_05_13_024323_create_cart_rule_customer_groups_table', 1),
(55, '2019_05_13_024324_create_cart_rule_translations_table', 1),
(56, '2019_05_13_024325_create_cart_rule_customers_table', 1),
(57, '2019_05_13_024326_create_cart_rule_coupons_table', 1),
(58, '2019_05_13_024327_create_cart_rule_coupon_usage_table', 1),
(59, '2019_06_17_180258_create_product_downloadable_samples_table', 1),
(60, '2019_06_17_180314_create_product_downloadable_sample_translations_table', 1),
(61, '2019_06_17_180325_create_product_downloadable_links_table', 1),
(62, '2019_06_17_180346_create_product_downloadable_link_translations_table', 1),
(63, '2019_06_21_202249_create_downloadable_link_purchased_table', 1),
(64, '2019_07_30_153530_create_cms_pages_table', 1),
(65, '2019_07_31_143339_create_category_filterable_attributes_table', 1),
(66, '2019_08_02_105320_create_product_grouped_products_table', 1),
(67, '2019_08_20_170510_create_product_bundle_options_table', 1),
(68, '2019_08_20_170520_create_product_bundle_option_translations_table', 1),
(69, '2019_08_20_170528_create_product_bundle_option_products_table', 1),
(70, '2019_09_11_184511_create_refunds_table', 1),
(71, '2019_09_11_184519_create_refund_items_table', 1),
(72, '2019_12_03_184613_create_catalog_rules_table', 1),
(73, '2019_12_03_184651_create_catalog_rule_channels_table', 1),
(74, '2019_12_03_184732_create_catalog_rule_customer_groups_table', 1),
(75, '2019_12_06_101110_create_catalog_rule_products_table', 1),
(76, '2019_12_06_110507_create_catalog_rule_product_prices_table', 1),
(77, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(78, '2020_01_14_191854_create_cms_page_translations_table', 1),
(79, '2020_01_15_130209_create_cms_page_channels_table', 1),
(80, '2020_04_16_185147_add_table_addresses', 1),
(81, '2020_05_06_171638_create_order_comments_table', 1),
(82, '2020_05_21_171500_create_product_customer_group_prices_table', 1),
(83, '2020_06_25_162154_create_customer_social_accounts_table', 1),
(84, '2020_11_19_112228_create_product_videos_table', 1),
(85, '2020_11_26_141455_create_marketing_templates_table', 1),
(86, '2020_11_26_150534_create_marketing_events_table', 1),
(87, '2020_11_26_150644_create_marketing_campaigns_table', 1),
(88, '2020_12_21_000200_create_channel_translations_table', 1),
(89, '2020_12_27_121950_create_jobs_table', 1),
(90, '2021_03_11_212124_create_order_transactions_table', 1),
(91, '2021_04_07_132010_create_product_review_images_table', 1),
(92, '2021_12_15_104544_notifications', 1),
(93, '2022_03_15_160510_create_failed_jobs_table', 1),
(94, '2022_04_01_094622_create_sitemaps_table', 1),
(95, '2022_10_03_144232_create_product_price_indices_table', 1),
(96, '2022_10_04_144444_create_job_batches_table', 1),
(97, '2022_10_08_134150_create_product_inventory_indices_table', 1),
(98, '2023_05_26_213105_create_wishlist_items_table', 1),
(99, '2023_05_26_213120_create_compare_items_table', 1),
(100, '2023_06_27_163529_rename_product_review_images_to_product_review_attachments', 1),
(101, '2023_07_06_140013_add_logo_path_column_to_locales', 1),
(102, '2023_07_10_184256_create_theme_customizations_table', 1),
(103, '2023_07_12_181722_remove_home_page_and_footer_content_column_from_channel_translations_table', 1),
(104, '2023_07_20_185324_add_column_column_in_attribute_groups_table', 1),
(105, '2023_07_25_145943_add_regex_column_in_attributes_table', 1),
(106, '2023_07_25_165945_drop_notes_column_from_customers_table', 1),
(107, '2023_07_25_171058_create_customer_notes_table', 1),
(108, '2023_07_31_125232_rename_image_and_category_banner_columns_from_categories_table', 1),
(109, '2023_09_15_170053_create_theme_customization_translations_table', 1),
(110, '2023_09_20_102031_add_default_value_column_in_attributes_table', 1),
(111, '2023_09_20_102635_add_inventories_group_in_attribute_groups_table', 1),
(112, '2023_09_26_155709_add_columns_to_currencies', 1),
(113, '2023_10_05_163612_create_visits_table', 1),
(114, '2023_10_12_090446_add_tax_category_id_column_in_order_items_table', 1),
(115, '2023_11_08_054614_add_code_column_in_attribute_groups_table', 1),
(116, '2023_11_08_140116_create_search_terms_table', 1),
(117, '2023_11_09_162805_create_url_rewrites_table', 1),
(118, '2023_11_17_150401_create_search_synonyms_table', 1),
(119, '2023_12_11_054614_add_channel_id_column_in_product_price_indices_table', 1),
(120, '2024_01_11_154640_create_imports_table', 1),
(121, '2024_01_11_154741_create_import_batches_table', 1),
(122, '2024_01_19_170350_add_unique_id_column_in_product_attribute_values_table', 1),
(123, '2024_01_19_170350_add_unique_id_column_in_product_customer_group_prices_table', 1),
(124, '2024_01_22_170814_add_unique_index_in_mapping_tables', 1),
(125, '2024_02_26_153000_add_columns_to_addresses_table', 1),
(126, '2024_03_07_193421_rename_address1_column_in_addresses_table', 1),
(127, '2024_04_16_144400_add_cart_id_column_in_cart_shipping_rates_table', 1),
(128, '2024_04_19_102939_add_incl_tax_columns_in_orders_table', 1),
(129, '2024_04_19_135405_add_incl_tax_columns_in_cart_items_table', 1),
(130, '2024_04_19_144641_add_incl_tax_columns_in_order_items_table', 1),
(131, '2024_04_23_133154_add_incl_tax_columns_in_cart_table', 1),
(132, '2024_04_23_150945_add_incl_tax_columns_in_cart_shipping_rates_table', 1),
(133, '2024_04_24_102939_add_incl_tax_columns_in_invoices_table', 1),
(134, '2024_04_24_102939_add_incl_tax_columns_in_refunds_table', 1),
(135, '2024_04_24_144641_add_incl_tax_columns_in_invoice_items_table', 1),
(136, '2024_04_24_144641_add_incl_tax_columns_in_refund_items_table', 1),
(137, '2024_04_24_144641_add_incl_tax_columns_in_shipment_items_table', 1),
(138, '2024_05_10_152848_create_saved_filters_table', 1),
(139, '2024_06_03_174128_create_product_channels_table', 1),
(140, '2024_06_04_130527_add_channel_id_column_in_customers_table', 1),
(141, '2024_06_04_134403_add_channel_id_column_in_visits_table', 1),
(142, '2024_06_13_184426_add_theme_column_into_theme_customizations_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `read`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'order', 0, 1, '2026-08-10 22:48:12', '2026-08-10 22:48:12'),
(2, 'order', 0, 2, '2026-08-27 04:42:32', '2026-08-27 04:42:32'),
(3, 'order', 0, 3, '2026-08-27 04:43:09', '2026-08-27 04:43:09'),
(4, 'order', 0, 4, '2026-08-27 04:43:45', '2026-08-27 04:43:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `channel_name` varchar(191) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_first_name` varchar(191) DEFAULT NULL,
  `customer_last_name` varchar(191) DEFAULT NULL,
  `shipping_method` varchar(191) DEFAULT NULL,
  `shipping_title` varchar(191) DEFAULT NULL,
  `shipping_description` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `total_item_count` int(11) DEFAULT NULL,
  `total_qty_ordered` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `order_currency_code` varchar(191) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `shipping_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_type` varchar(191) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `increment_id`, `status`, `channel_name`, `is_guest`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `shipping_title`, `shipping_description`, `coupon_code`, `is_gift`, `total_item_count`, `total_qty_ordered`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `grand_total`, `base_grand_total`, `grand_total_invoiced`, `base_grand_total_invoiced`, `grand_total_refunded`, `base_grand_total_refunded`, `sub_total`, `base_sub_total`, `sub_total_invoiced`, `base_sub_total_invoiced`, `sub_total_refunded`, `base_sub_total_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `shipping_amount`, `base_shipping_amount`, `shipping_invoiced`, `base_shipping_invoiced`, `shipping_refunded`, `base_shipping_refunded`, `shipping_discount_amount`, `base_shipping_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `shipping_tax_refunded`, `base_shipping_tax_refunded`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `customer_id`, `customer_type`, `channel_id`, `channel_type`, `cart_id`, `applied_cart_rule_ids`, `created_at`, `updated_at`) VALUES
(1, '1', 'canceled', 'Predeterminado', 1, 'Camiilogarcia69@gmail.com', 'Camilo', 'Garcia', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'COP', 'COP', 'COP', 200000.0000, 200000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200000.0000, 200000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200000.0000, 200000.0000, 0.0000, 0.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 1, NULL, '2026-08-10 22:48:10', '2026-08-27 04:45:29'),
(2, '2', 'canceled', 'Predeterminado', 1, 'Camiilogarcia69@gmail.com', 'Camilo', 'Garcia', 'flatrate_flatrate', 'Envío Tarifa Plena - Envío Tarifa Plena', 'Envío Tarifa Plena', NULL, 0, 1, 1, 'COP', 'COP', 'COP', 350000.0000, 350000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 250000.0000, 250000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 100000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 250000.0000, 250000.0000, 100000.0000, 100000.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 4, NULL, '2026-08-27 04:42:28', '2026-08-27 04:45:16'),
(3, '3', 'canceled', 'Predeterminado', 1, 'Camiilogarcia69@gmail.com', 'Camilo', 'Garcia', 'flatrate_flatrate', 'Envío Tarifa Plena - Envío Tarifa Plena', 'Envío Tarifa Plena', NULL, 0, 1, 1, 'COP', 'COP', 'COP', 600000.0000, 600000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 500000.0000, 500000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 100000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 500000.0000, 500000.0000, 100000.0000, 100000.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 5, NULL, '2026-08-27 04:43:07', '2026-08-27 04:45:02'),
(4, '4', 'canceled', 'Predeterminado', 1, 'Camiilogarcia69@gmail.com', 'Camilo', 'Garcia', 'flatrate_flatrate', 'Envío Tarifa Plena - Envío Tarifa Plena', 'Envío Tarifa Plena', NULL, 0, 1, 1, 'COP', 'COP', 'COP', 250000.0000, 250000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 150000.0000, 150000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 100000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 150000.0000, 150000.0000, 100000.0000, 100000.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 6, NULL, '2026-08-27 04:43:43', '2026-08-27 04:44:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_comments`
--

CREATE TABLE `order_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT 0.0000,
  `total_weight` decimal(12,4) DEFAULT 0.0000,
  `qty_ordered` int(11) DEFAULT 0,
  `qty_shipped` int(11) DEFAULT 0,
  `qty_invoiced` int(11) DEFAULT 0,
  `qty_canceled` int(11) DEFAULT 0,
  `qty_refunded` int(11) DEFAULT 0,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `qty_ordered`, `qty_shipped`, `qty_invoiced`, `qty_canceled`, `qty_refunded`, `price`, `base_price`, `total`, `base_total`, `total_invoiced`, `base_total_invoiced`, `amount_refunded`, `base_amount_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_id`, `tax_category_id`, `parent_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, '001', 'simple', 'Mona Lisa - Leonardo Da Vinci', NULL, 1000.0000, 1000.0000, 1, 0, 0, 1, 0, 200000.0000, 200000.0000, 200000.0000, 200000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200000.0000, 200000.0000, 200000.0000, 200000.0000, 1, 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, '{\"product_id\":\"1\",\"is_buy_now\":\"0\",\"quantity\":1,\"locale\":\"es\"}', '2026-08-10 22:48:10', '2026-08-27 04:45:29'),
(2, '004', 'simple', 'Bohemian Rhapsody - Queen', NULL, 100.0000, 100.0000, 1, 0, 0, 1, 0, 250000.0000, 250000.0000, 250000.0000, 250000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 250000.0000, 250000.0000, 250000.0000, 250000.0000, 4, 'Webkul\\Product\\Models\\Product', 2, NULL, NULL, '{\"quantity\":1,\"product_id\":4,\"locale\":\"es\"}', '2026-08-27 04:42:28', '2026-08-27 04:45:16'),
(3, '003', 'simple', 'La Divina Comedia - Dante Alighieri', NULL, 100.0000, 100.0000, 1, 0, 0, 1, 0, 500000.0000, 500000.0000, 500000.0000, 500000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 500000.0000, 500000.0000, 500000.0000, 500000.0000, 3, 'Webkul\\Product\\Models\\Product', 3, NULL, NULL, '{\"quantity\":1,\"product_id\":3,\"locale\":\"es\"}', '2026-08-27 04:43:07', '2026-08-27 04:45:02'),
(4, '005', 'simple', 'Fight Club - David Fincher', NULL, 100.0000, 100.0000, 1, 0, 0, 1, 0, 150000.0000, 150000.0000, 150000.0000, 150000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 150000.0000, 150000.0000, 150000.0000, 150000.0000, 5, 'Webkul\\Product\\Models\\Product', 4, NULL, NULL, '{\"quantity\":1,\"product_id\":5,\"locale\":\"es\"}', '2026-08-27 04:43:43', '2026-08-27 04:44:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_payment`
--

CREATE TABLE `order_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `method` varchar(191) NOT NULL,
  `method_title` varchar(191) DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `order_payment`
--

INSERT INTO `order_payment` (`id`, `order_id`, `method`, `method_title`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, 'epayco', 'Epayco', NULL, '2026-08-10 22:48:10', '2026-08-10 22:48:10'),
(2, 2, 'epayco', 'Epayco', NULL, '2026-08-27 04:42:28', '2026-08-27 04:42:28'),
(3, 3, 'epayco', 'Epayco', NULL, '2026-08-27 04:43:07', '2026-08-27 04:43:07'),
(4, 4, 'moneytransfer', 'Money Transfer', NULL, '2026-08-27 04:43:43', '2026-08-27 04:43:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT 0.0000,
  `payment_method` varchar(191) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `sku`, `type`, `parent_id`, `attribute_family_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, '001', 'simple', NULL, 1, NULL, '2026-08-10 22:37:31', '2026-08-10 22:37:31'),
(2, '002', 'simple', NULL, 1, NULL, '2026-08-10 22:51:02', '2026-08-10 22:51:02'),
(3, '003', 'simple', NULL, 1, NULL, '2026-08-11 02:04:44', '2026-08-11 02:04:44'),
(4, '004', 'simple', NULL, 1, NULL, '2026-08-11 21:32:46', '2026-08-11 21:32:46'),
(5, '005', 'simple', NULL, 1, NULL, '2026-08-11 21:35:55', '2026-08-11 21:35:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) DEFAULT NULL,
  `channel` varchar(191) DEFAULT NULL,
  `text_value` text DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(12,4) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_value`)),
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 5, '1|5'),
(2, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 6, '1|6'),
(3, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 7, '1|7'),
(4, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 8, 'default|1|8'),
(5, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 26, '1|26'),
(6, 'es', NULL, '<p><em id=\"mwCw\"><strong id=\"mwDA\">La Gioconda</strong></em>&nbsp;(<em id=\"mwDQ\"><strong id=\"mwDg\">La Joconde</strong></em>, en&nbsp;<a id=\"mwDw\" title=\"Idioma franc&eacute;s\" href=\"https://es.wikipedia.org/wiki/Idioma_franc%C3%A9s\" rel=\"mw:WikiLink\">franc&eacute;s</a>) o&nbsp;<em id=\"mwEA\"><strong id=\"mwEQ\">Mona Lisa</strong></em>, es una c&eacute;lebre&nbsp;<a id=\"mwEg\" title=\"Obra de arte\" href=\"https://es.wikipedia.org/wiki/Obra_de_arte\" rel=\"mw:WikiLink\">obra pict&oacute;rica</a>&nbsp;al&nbsp;<a id=\"mwEw\" title=\"Pintura al &oacute;leo\" href=\"https://es.wikipedia.org/wiki/Pintura_al_%C3%B3leo\" rel=\"mw:WikiLink\">&oacute;leo</a>&nbsp;de&nbsp;<a id=\"mwFA\" title=\"Leonardo da Vinci\" href=\"https://es.wikipedia.org/wiki/Leonardo_da_Vinci\" rel=\"mw:WikiLink\">Leonardo da Vinci</a>, creada en su natal&nbsp;<a id=\"mwFQ\" title=\"Rep&uacute;blica de Florencia\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_de_Florencia\" rel=\"mw:WikiLink\">Florencia</a>&nbsp;entre los a&ntilde;os 1503 y 1506, posiblemente continuando hasta aproximadamente 1515 o 1517, aunque esta fecha de conclusi&oacute;n tan imprecisa es objeto de debate. El retrato corresponde a&nbsp;<a id=\"mwFg\" title=\"Lisa Gherardini\" href=\"https://es.wikipedia.org/wiki/Lisa_Gherardini\" rel=\"mw:WikiLink\">Lisa Gherardini</a>, esposa de Francesco del Giocondo,<sup id=\"cite_ref-Louvre_1-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Louvre&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-Louvre-1&quot;}}\"></sup>&nbsp;m&aacute;s conocida por extensi&oacute;n como&nbsp;<em id=\"mwGw\">La Gioconda</em>. Fue adquirida por el rey&nbsp;<a id=\"mwHA\" title=\"Francisco I de Francia\" href=\"https://es.wikipedia.org/wiki/Francisco_I_de_Francia\" rel=\"mw:WikiLink\">Francisco I de Francia</a>&nbsp;a comienzos del&nbsp;<span id=\"mwHQ\" data-mw=\"{&quot;parts&quot;:[{&quot;template&quot;:{&quot;target&quot;:{&quot;wt&quot;:&quot;siglo&quot;,&quot;href&quot;:&quot;./Plantilla:Siglo&quot;},&quot;params&quot;:{&quot;1&quot;:{&quot;wt&quot;:&quot;XVI&quot;},&quot;2&quot;:{&quot;wt&quot;:&quot;&quot;},&quot;3&quot;:{&quot;wt&quot;:&quot;s&quot;}},&quot;i&quot;:0}}]}\">siglo</span>&nbsp;<span id=\"mwHg\">XVI</span>&nbsp;y desde entonces es propiedad del&nbsp;<a id=\"mwHw\" title=\"Francia\" href=\"https://es.wikipedia.org/wiki/Francia\" rel=\"mw:WikiLink\">Estado franc&eacute;s</a>. Est&aacute; expuesta en el&nbsp;<a id=\"mwIA\" title=\"Museo del Louvre\" href=\"https://es.wikipedia.org/wiki/Museo_del_Louvre\" rel=\"mw:WikiLink\">Museo del Louvre</a>&nbsp;de&nbsp;<a id=\"mwIQ\" title=\"Par&iacute;s\" href=\"https://es.wikipedia.org/wiki/Par%C3%ADs\" rel=\"mw:WikiLink\">Par&iacute;s</a>, siendo, sin duda, la &laquo;joya&raquo; de sus colecciones.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 'es|1|9'),
(7, 'es', NULL, '<p id=\"mwCg\"><em id=\"mwCw\"><strong id=\"mwDA\">La Gioconda</strong></em>&nbsp;(<em id=\"mwDQ\"><strong id=\"mwDg\">La Joconde</strong></em>, en&nbsp;<a id=\"mwDw\" title=\"Idioma franc&eacute;s\" href=\"https://es.wikipedia.org/wiki/Idioma_franc%C3%A9s\" rel=\"mw:WikiLink\">franc&eacute;s</a>) o&nbsp;<em id=\"mwEA\"><strong id=\"mwEQ\">Mona Lisa</strong></em>, es una c&eacute;lebre&nbsp;<a id=\"mwEg\" title=\"Obra de arte\" href=\"https://es.wikipedia.org/wiki/Obra_de_arte\" rel=\"mw:WikiLink\">obra pict&oacute;rica</a>&nbsp;al&nbsp;<a id=\"mwEw\" title=\"Pintura al &oacute;leo\" href=\"https://es.wikipedia.org/wiki/Pintura_al_%C3%B3leo\" rel=\"mw:WikiLink\">&oacute;leo</a>&nbsp;de&nbsp;<a id=\"mwFA\" title=\"Leonardo da Vinci\" href=\"https://es.wikipedia.org/wiki/Leonardo_da_Vinci\" rel=\"mw:WikiLink\">Leonardo da Vinci</a>, creada en su natal&nbsp;<a id=\"mwFQ\" title=\"Rep&uacute;blica de Florencia\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_de_Florencia\" rel=\"mw:WikiLink\">Florencia</a>&nbsp;entre los a&ntilde;os 1503 y 1506, posiblemente continuando hasta aproximadamente 1515 o 1517, aunque esta fecha de conclusi&oacute;n tan imprecisa es objeto de debate. El retrato corresponde a&nbsp;<a id=\"mwFg\" title=\"Lisa Gherardini\" href=\"https://es.wikipedia.org/wiki/Lisa_Gherardini\" rel=\"mw:WikiLink\">Lisa Gherardini</a>, esposa de Francesco del Giocondo,<sup id=\"cite_ref-Louvre_1-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Louvre&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-Louvre-1&quot;}}\"></sup>&nbsp;m&aacute;s conocida por extensi&oacute;n como&nbsp;<em id=\"mwGw\">La Gioconda</em>. Fue adquirida por el rey&nbsp;<a id=\"mwHA\" title=\"Francisco I de Francia\" href=\"https://es.wikipedia.org/wiki/Francisco_I_de_Francia\" rel=\"mw:WikiLink\">Francisco I de Francia</a>&nbsp;a comienzos del&nbsp;<span id=\"mwHQ\" data-mw=\"{&quot;parts&quot;:[{&quot;template&quot;:{&quot;target&quot;:{&quot;wt&quot;:&quot;siglo&quot;,&quot;href&quot;:&quot;./Plantilla:Siglo&quot;},&quot;params&quot;:{&quot;1&quot;:{&quot;wt&quot;:&quot;XVI&quot;},&quot;2&quot;:{&quot;wt&quot;:&quot;&quot;},&quot;3&quot;:{&quot;wt&quot;:&quot;s&quot;}},&quot;i&quot;:0}}]}\">siglo</span>&nbsp;<span id=\"mwHg\">XVI</span>&nbsp;y desde entonces es propiedad del&nbsp;<a id=\"mwHw\" title=\"Francia\" href=\"https://es.wikipedia.org/wiki/Francia\" rel=\"mw:WikiLink\">Estado franc&eacute;s</a>. Est&aacute; expuesta en el&nbsp;<a id=\"mwIA\" title=\"Museo del Louvre\" href=\"https://es.wikipedia.org/wiki/Museo_del_Louvre\" rel=\"mw:WikiLink\">Museo del Louvre</a>&nbsp;de&nbsp;<a id=\"mwIQ\" title=\"Par&iacute;s\" href=\"https://es.wikipedia.org/wiki/Par%C3%ADs\" rel=\"mw:WikiLink\">Par&iacute;s</a>, siendo, sin duda, la &laquo;joya&raquo; de sus colecciones.</p>\r\n<p id=\"mwIg\"><em id=\"mwIw\">Gioconda</em>&nbsp;significa &laquo;esposa alegre o jovial&raquo; en italiano. Hay 12&nbsp;<a id=\"mwJA\" class=\"extiw\" title=\"it:Giocondo\" href=\"https://it.wikipedia.org/wiki/Giocondo\" rel=\"mw:WikiLink/Interwiki\">santorales</a>&nbsp;con ese nombre, unos masculinos, otros femeninos. Una tesis del nombre del &oacute;leo,&nbsp;<em id=\"mwJQ\">La Gioconda</em>, la m&aacute;s aceptada es sobre la identidad de la modelo: la esposa de Francesco Bartolomeo de Giocondo, que realmente se llamaba&nbsp;<a id=\"mwJg\" title=\"Lisa Gherardini\" href=\"https://es.wikipedia.org/wiki/Lisa_Gherardini\" rel=\"mw:WikiLink\">Lisa Gherardini</a>, de donde viene su otro nombre:&nbsp;<em id=\"mwJw\">Monna</em>&nbsp;(<em id=\"mwKA\">se&ntilde;ora</em>, en el italiano antiguo)&nbsp;<em id=\"mwKQ\">Lisa</em>. El&nbsp;<a id=\"mwKg\" title=\"Museo del Louvre\" href=\"https://es.wikipedia.org/wiki/Museo_del_Louvre\" rel=\"mw:WikiLink\">Museo del Louvre</a> acepta el t&iacute;tulo completo indicado al principio como el t&iacute;tulo original de la obra, aunque no reconoce la identidad de la modelo y tan solo la acepta como una hip&oacute;tesis.<sup id=\"cite_ref-LOU_2-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;LOU&quot;}}\"></sup></p>\r\n<p id=\"mwLw\">Es un&nbsp;<a id=\"mwMA\" title=\"Pintura al &oacute;leo\" href=\"https://es.wikipedia.org/wiki/Pintura_al_%C3%B3leo\" rel=\"mw:WikiLink\">&oacute;leo</a>&nbsp;sobre tabla de&nbsp;<a id=\"mwMQ\" class=\"mw-redirect\" title=\"&Aacute;lamo\" href=\"https://es.wikipedia.org/wiki/%C3%81lamo\" rel=\"mw:WikiLink\">&aacute;lamo</a>&nbsp;de 79 &times; 53<span id=\"mwMg\">&nbsp;</span><a id=\"mwMw\" title=\"Cent&iacute;metro\" href=\"https://es.wikipedia.org/wiki/Cent%C3%ADmetro\" rel=\"mw:WikiLink\">cm</a>, pintado entre 1503 y 1519,<sup id=\"cite_ref-El_Pa&iacute;s_3-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;El Pa&iacute;s&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-El_Pa&iacute;s-3&quot;}}\"></sup>&nbsp;y retocado varias veces por el autor. Se considera el ejemplo m&aacute;s logrado de&nbsp;<a id=\"mwOA\" title=\"Esfumado\" href=\"https://es.wikipedia.org/wiki/Esfumado\" rel=\"mw:WikiLink\"><em id=\"mwOQ\">sfumato</em></a>, t&eacute;cnica muy caracter&iacute;stica de Leonardo, si bien actualmente su colorido original es menos perceptible por el oscurecimiento de los barnices. El cuadro est&aacute; protegido por m&uacute;ltiples sistemas de seguridad y ambientado a temperatura estable para su preservaci&oacute;n &oacute;ptima.<sup id=\"cite_ref-Widerko,_Kasia_4-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Widerko, Kasia&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-Widerko,_Kasia-4&quot;}}\"></sup>&nbsp;Es revisado constantemente para verificar y prevenir su deterioro.</p>\r\n<p id=\"mwPg\">Por medio de estudios hist&oacute;ricos se ha determinado que la modelo podr&iacute;a ser una vecina de Leonardo, que podr&iacute;an conocerse sus descendientes, y que la modelo podr&iacute;a haber estado embarazada, por la forma de esconder que tienen sus manos. Pese a todas las suposiciones, las respuestas en firme a los varios interrogantes en torno a la obra de arte resultan francamente insuficientes, lo cual genera m&aacute;s curiosidad entre los admiradores del cuadro.</p>\r\n<p id=\"mwPw\">La fama de esta pintura no se basa &uacute;nicamente en la t&eacute;cnica empleada o en su belleza, sino tambi&eacute;n en los misterios que la rodean. Adem&aacute;s, el&nbsp;<a id=\"mwQA\" title=\"Vincenzo Peruggia\" href=\"https://es.wikipedia.org/wiki/Vincenzo_Peruggia\" rel=\"mw:WikiLink\">robo que sufri&oacute; en 1911</a>, las reproducciones realizadas, las m&uacute;ltiples obras de arte que se han inspirado en el cuadro y las parodias existentes contribuyen a convertir a&nbsp;<em id=\"mwQQ\">La Gioconda</em> en el cuadro m&aacute;s famoso del mundo, visitado por millones de personas anualmente.<sup id=\"cite_ref-Bioportal_5-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Bioportal&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-Bioportal-5&quot;}}\"></sup></p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 'es|1|10'),
(8, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 19, '1|19'),
(9, NULL, NULL, '53', NULL, NULL, NULL, NULL, NULL, NULL, 1, 20, '1|20'),
(10, NULL, NULL, '79', NULL, NULL, NULL, NULL, NULL, NULL, 1, 21, '1|21'),
(11, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 1, 22, '1|22'),
(12, NULL, NULL, '001', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1|1'),
(13, 'es', NULL, 'Mona Lisa - Leonardo Da Vinci', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 'es|1|2'),
(14, 'es', NULL, 'mona-lisa-leonardo-da-vinci', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 'es|1|3'),
(15, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 27, '1|27'),
(16, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 28, 'default|1|28'),
(17, 'es', NULL, 'Cuadro \"La Mona Lisa\" de Leonardo da Vinci', NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'es|1|16'),
(18, 'es', NULL, 'cuadro la mona lisa, la Gioconda Leonardo da vinci, replica mona lisa, comprar cuadro mona lisa, pintura mona lisa da vinci, cuadros famosos arte clásico, reproducción la mona lisa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 17, 'es|1|17'),
(19, 'es', NULL, 'Compra la réplica del cuadro \"La Mona Lisa\" de Leonardo da Vinci. Excelente calidad de impresión y acabado para decorar tu hogar u oficina con arte clásico', NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, 'es|1|18'),
(20, NULL, NULL, NULL, NULL, NULL, 1500000.0000, NULL, NULL, NULL, 1, 11, '1|11'),
(21, NULL, NULL, NULL, NULL, NULL, 1000000.0000, NULL, NULL, NULL, 1, 12, '1|12'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, '1|13'),
(23, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'default|1|14'),
(24, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 15, 'default|1|15'),
(25, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, '2|5'),
(26, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 6, '2|6'),
(27, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 7, '2|7'),
(28, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 8, 'default|2|8'),
(29, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 26, '2|26'),
(30, 'es', NULL, '<p>El&nbsp;<em id=\"mwEg\"><strong id=\"mwEw\">David</strong></em>&nbsp;es una escultura de&nbsp;<a id=\"mwFA\" title=\"M&aacute;rmol\" href=\"https://es.wikipedia.org/wiki/M%C3%A1rmol\" rel=\"mw:WikiLink\">m&aacute;rmol blanco</a> de 5,17 metros <sup id=\"cite_ref-517cm_1-2\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;517cm&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-517cm-1&quot;}}\"></sup>de altura y 5572&nbsp;<a id=\"mwGQ\" title=\"Kilogramo\" href=\"https://es.wikipedia.org/wiki/Kilogramo\" rel=\"mw:WikiLink\">kilogramos</a> de peso,<sup id=\"cite_ref-elpais_2-1\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;elpais&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-elpais-2&quot;}}\"></sup>&nbsp;esculpida por&nbsp;<a id=\"mwHg\" title=\"Miguel &Aacute;ngel\" href=\"https://es.wikipedia.org/wiki/Miguel_%C3%81ngel\" rel=\"mw:WikiLink\">Miguel &Aacute;ngel Buonarroti</a>&nbsp;entre 1501 y 1504 por encargo de la&nbsp;<em id=\"mwHw\">Opera del Duomo</em>&nbsp;de la&nbsp;<a id=\"mwIA\" class=\"mw-redirect\" title=\"Santa Mar&iacute;a del Fiore\" href=\"https://es.wikipedia.org/wiki/Santa_Mar%C3%ADa_del_Fiore\" rel=\"mw:WikiLink\">catedral de Santa Mar&iacute;a del Fiore</a>&nbsp;de&nbsp;<a id=\"mwIQ\" title=\"Florencia\" href=\"https://es.wikipedia.org/wiki/Florencia\" rel=\"mw:WikiLink\">Florencia</a>. La escultura representa al&nbsp;<a id=\"mwIg\" title=\"David\" href=\"https://es.wikipedia.org/wiki/David\" rel=\"mw:WikiLink\">rey David</a>&nbsp;<a id=\"mwIw\" title=\"Biblia\" href=\"https://es.wikipedia.org/wiki/Biblia\" rel=\"mw:WikiLink\">b&iacute;blico</a>&nbsp;en el momento previo a enfrentarse con&nbsp;<a id=\"mwJA\" title=\"Goliat\" href=\"https://es.wikipedia.org/wiki/Goliat\" rel=\"mw:WikiLink\">Goliat</a>, y fue acogida como un s&iacute;mbolo de la&nbsp;<a id=\"mwJQ\" title=\"Rep&uacute;blica de Florencia\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_de_Florencia\" rel=\"mw:WikiLink\">Rep&uacute;blica de Florencia</a>&nbsp;frente a la hegemon&iacute;a de sus derrocados dirigentes, los&nbsp;<a id=\"mwJg\" title=\"M&eacute;dici\" href=\"https://es.wikipedia.org/wiki/M%C3%A9dici\" rel=\"mw:WikiLink\">M&eacute;dici</a>, y la amenaza de los estados adyacentes, especialmente los&nbsp;<a id=\"mwJw\" title=\"Estados Pontificios\" href=\"https://es.wikipedia.org/wiki/Estados_Pontificios\" rel=\"mw:WikiLink\">Estados Pontificios</a>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 9, 'es|2|9'),
(31, 'es', NULL, '<p id=\"mwEQ\">El&nbsp;<em id=\"mwEg\"><strong id=\"mwEw\">David</strong></em>&nbsp;es una escultura de&nbsp;<a id=\"mwFA\" title=\"M&aacute;rmol\" href=\"https://es.wikipedia.org/wiki/M%C3%A1rmol\" rel=\"mw:WikiLink\">m&aacute;rmol blanco</a> de 5,17 metros<sup id=\"cite_ref-517cm_1-2\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;517cm&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-517cm-1&quot;}}\"></sup>&nbsp;de altura y 5572&nbsp;<a id=\"mwGQ\" title=\"Kilogramo\" href=\"https://es.wikipedia.org/wiki/Kilogramo\" rel=\"mw:WikiLink\">kilogramos</a> de peso,<sup id=\"cite_ref-elpais_2-1\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;elpais&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-elpais-2&quot;}}\"></sup>&nbsp;esculpida por&nbsp;<a id=\"mwHg\" title=\"Miguel &Aacute;ngel\" href=\"https://es.wikipedia.org/wiki/Miguel_%C3%81ngel\" rel=\"mw:WikiLink\">Miguel &Aacute;ngel Buonarroti</a>&nbsp;entre 1501 y 1504 por encargo de la&nbsp;<em id=\"mwHw\">Opera del Duomo</em>&nbsp;de la&nbsp;<a id=\"mwIA\" class=\"mw-redirect\" title=\"Santa Mar&iacute;a del Fiore\" href=\"https://es.wikipedia.org/wiki/Santa_Mar%C3%ADa_del_Fiore\" rel=\"mw:WikiLink\">catedral de Santa Mar&iacute;a del Fiore</a>&nbsp;de&nbsp;<a id=\"mwIQ\" title=\"Florencia\" href=\"https://es.wikipedia.org/wiki/Florencia\" rel=\"mw:WikiLink\">Florencia</a>. La escultura representa al&nbsp;<a id=\"mwIg\" title=\"David\" href=\"https://es.wikipedia.org/wiki/David\" rel=\"mw:WikiLink\">rey David</a>&nbsp;<a id=\"mwIw\" title=\"Biblia\" href=\"https://es.wikipedia.org/wiki/Biblia\" rel=\"mw:WikiLink\">b&iacute;blico</a>&nbsp;en el momento previo a enfrentarse con&nbsp;<a id=\"mwJA\" title=\"Goliat\" href=\"https://es.wikipedia.org/wiki/Goliat\" rel=\"mw:WikiLink\">Goliat</a>, y fue acogida como un s&iacute;mbolo de la&nbsp;<a id=\"mwJQ\" title=\"Rep&uacute;blica de Florencia\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_de_Florencia\" rel=\"mw:WikiLink\">Rep&uacute;blica de Florencia</a>&nbsp;frente a la hegemon&iacute;a de sus derrocados dirigentes, los&nbsp;<a id=\"mwJg\" title=\"M&eacute;dici\" href=\"https://es.wikipedia.org/wiki/M%C3%A9dici\" rel=\"mw:WikiLink\">M&eacute;dici</a>, y la amenaza de los estados adyacentes, especialmente los&nbsp;<a id=\"mwJw\" title=\"Estados Pontificios\" href=\"https://es.wikipedia.org/wiki/Estados_Pontificios\" rel=\"mw:WikiLink\">Estados Pontificios</a>.</p>\r\n<p id=\"mwKA\">El&nbsp;<em id=\"mwKQ\">David</em>&nbsp;es una de las&nbsp;<a id=\"mwKg\" title=\"Obra maestra (gremio)\" href=\"https://es.wikipedia.org/wiki/Obra_maestra_(gremio)\" rel=\"mw:WikiLink\">obras maestras</a>&nbsp;del&nbsp;<a id=\"mwKw\" title=\"Escultura del Renacimiento\" href=\"https://es.wikipedia.org/wiki/Escultura_del_Renacimiento\" rel=\"mw:WikiLink\">Renacimiento</a> seg&uacute;n la mayor&iacute;a de los historiadores,<sup id=\"cite_ref-restored_3-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;restored&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-restored-3&quot;}}\"></sup>&nbsp;y una de las&nbsp;<a id=\"mwMA\" title=\"Escultura\" href=\"https://es.wikipedia.org/wiki/Escultura\" rel=\"mw:WikiLink\">esculturas</a> m&aacute;s famosas del mundo.<sup id=\"cite_ref-terrarest_4-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;terrarest&quot;}}\"></sup><sup id=\"cite_ref-usa_5-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;usa&quot;}}\"></sup>&nbsp;Actualmente se encuentra expuesta en la&nbsp;<a id=\"mwOQ\" title=\"Galer&iacute;a de la Academia de Florencia\" href=\"https://es.wikipedia.org/wiki/Galer%C3%ADa_de_la_Academia_de_Florencia\" rel=\"mw:WikiLink\">Galer&iacute;a de la Academia de Florencia</a>,<sup id=\"cite_ref-6\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-6&quot;}}\"></sup>&nbsp;aunque hasta 1873 estuvo ubicada en la&nbsp;<a id=\"mwPg\" title=\"Plaza de la Se&ntilde;or&iacute;a\" href=\"https://es.wikipedia.org/wiki/Plaza_de_la_Se%C3%B1or%C3%ADa\" rel=\"mw:WikiLink\">plaza de la Se&ntilde;or&iacute;a</a>&nbsp;de la capital&nbsp;<a id=\"mwPw\" title=\"Toscana\" href=\"https://es.wikipedia.org/wiki/Toscana\" rel=\"mw:WikiLink\">toscana</a>; desde entonces en su lugar se erige una copia realizada tambi&eacute;n en m&aacute;rmol blanco.01</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 10, 'es|2|10'),
(32, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 19, '2|19'),
(33, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 20, '2|20'),
(34, NULL, NULL, '517', NULL, NULL, NULL, NULL, NULL, NULL, 2, 21, '2|21'),
(35, NULL, NULL, '5572', NULL, NULL, NULL, NULL, NULL, NULL, 2, 22, '2|22'),
(36, NULL, NULL, '002', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2|1'),
(37, 'es', NULL, 'David - Miguel Angel', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 'es|2|2'),
(38, 'es', NULL, 'david-miguel-angel', NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 'es|2|3'),
(39, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 27, '2|27'),
(40, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 28, 'default|2|28'),
(41, 'es', NULL, 'Escultura David de Miguel Ángel', NULL, NULL, NULL, NULL, NULL, NULL, 2, 16, 'es|2|16'),
(42, 'es', NULL, 'escultura david miguel angel, replica david miguel angel, comprar estatua david miguel angel, figura david miguel angel, estatuas arte clasico, replicas de arte renacentista, comprar escultura renacentista', NULL, NULL, NULL, NULL, NULL, NULL, 2, 17, 'es|2|17'),
(43, 'es', NULL, 'Compra la réplica de la famosa escultura del David de Miguel Ángel. Acabados de alta calidad e idóneos para decorar tu hogar u oficina con arte clásico.', NULL, NULL, NULL, NULL, NULL, NULL, 2, 18, 'es|2|18'),
(44, NULL, NULL, NULL, NULL, NULL, 2000000.0000, NULL, NULL, NULL, 2, 11, '2|11'),
(45, NULL, NULL, NULL, NULL, NULL, 1200000.0000, NULL, NULL, NULL, 2, 12, '2|12'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 13, '2|13'),
(47, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 14, 'default|2|14'),
(48, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 15, 'default|2|15'),
(49, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 5, '3|5'),
(50, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 6, '3|6'),
(51, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 7, '3|7'),
(52, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 8, 'default|3|8'),
(53, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 26, '3|26'),
(54, 'es', NULL, '<p>La&nbsp;<em id=\"mwBg\"><strong id=\"mwBw\">Divina comedia</strong></em>&nbsp;(<span id=\"mwCA\" data-mw=\"{&quot;parts&quot;:[{&quot;template&quot;:{&quot;target&quot;:{&quot;wt&quot;:&quot;lang-it&quot;,&quot;href&quot;:&quot;./Plantilla:Lang-it&quot;},&quot;params&quot;:{&quot;1&quot;:{&quot;wt&quot;:&quot;Divina Commedia&quot;}},&quot;i&quot;:0}}]}\">en&nbsp;</span><a title=\"Idioma italiano\" href=\"https://es.wikipedia.org/wiki/Idioma_italiano\" rel=\"mw:WikiLink\">italiano</a>:&nbsp;<em lang=\"it\">Divina Commedia</em>, en&nbsp;<a id=\"mwCg\" title=\"Toscano\" href=\"https://es.wikipedia.org/wiki/Toscano\" rel=\"mw:WikiLink\">toscano</a>:&nbsp;<em id=\"mwCw\">Divina Comed&igrave;a</em>), tambi&eacute;n conocida simplemente como&nbsp;<em id=\"mwDA\"><strong id=\"mwDQ\">Comedia</strong></em>, es un poema escrito por&nbsp;<a id=\"mwDg\" title=\"Dante Alighieri\" href=\"https://es.wikipedia.org/wiki/Dante_Alighieri\" rel=\"mw:WikiLink\">Dante Alighieri</a>. Se desconoce la fecha exacta en que fue redactado aunque las opiniones m&aacute;s reconocidas aseguran que el&nbsp;<em id=\"mwDw\"><a id=\"mwEA\" title=\"Infierno (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Infierno_(Divina_comedia)\" rel=\"mw:WikiLink\">Infierno</a></em>&nbsp;pudo ser compuesto entre 1304 y 1308, el&nbsp;<em id=\"mwEQ\"><a id=\"mwEg\" title=\"Purgatorio (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Purgatorio_(Divina_comedia)\" rel=\"mw:WikiLink\">Purgatorio</a></em>&nbsp;de 1307 a 1314 y, por &uacute;ltimo, el&nbsp;<em id=\"mwEw\"><a id=\"mwFA\" title=\"Para&iacute;so (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Para%C3%ADso_(Divina_comedia)\" rel=\"mw:WikiLink\">Para&iacute;so</a></em>&nbsp;de 1313 a 1321, fecha del fallecimiento del poeta. Se considera por tanto que la redacci&oacute;n de la primera parte habr&iacute;a sido alternada con la redacci&oacute;n del&nbsp;<em id=\"mwFQ\">Convivium</em>&nbsp;y&nbsp;<em id=\"mwFg\">De vulgari eloquentia</em>, mientras que&nbsp;<em id=\"mwFw\">De monarchia</em>&nbsp;pertenecer&iacute;a a la &eacute;poca de la segunda o tercera etapa, a la &uacute;ltima de las cuales hay que atribuir sin duda la de dos obras de menor empe&ntilde;o: la&nbsp;<em id=\"mwGA\">Cuesti&oacute;n de agua</em>&nbsp;y&nbsp;<em id=\"mwGQ\">La Tierra</em>&nbsp;y las dos&nbsp;<a id=\"mwGg\" title=\"&Eacute;gloga\" href=\"https://es.wikipedia.org/wiki/%C3%89gloga\" rel=\"mw:WikiLink\">&eacute;glogas</a> escritas en respuesta a sendos poemas de Giovanni de Regina.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, 'es|3|9'),
(55, 'es', NULL, '<p id=\"mwBQ\">La&nbsp;<em id=\"mwBg\"><strong id=\"mwBw\">Divina comedia</strong></em>&nbsp;(<span id=\"mwCA\" data-mw=\"{&quot;parts&quot;:[{&quot;template&quot;:{&quot;target&quot;:{&quot;wt&quot;:&quot;lang-it&quot;,&quot;href&quot;:&quot;./Plantilla:Lang-it&quot;},&quot;params&quot;:{&quot;1&quot;:{&quot;wt&quot;:&quot;Divina Commedia&quot;}},&quot;i&quot;:0}}]}\">en&nbsp;</span><a title=\"Idioma italiano\" href=\"https://es.wikipedia.org/wiki/Idioma_italiano\" rel=\"mw:WikiLink\">italiano</a>:&nbsp;<em lang=\"it\">Divina Commedia</em>, en&nbsp;<a id=\"mwCg\" title=\"Toscano\" href=\"https://es.wikipedia.org/wiki/Toscano\" rel=\"mw:WikiLink\">toscano</a>:&nbsp;<em id=\"mwCw\">Divina Comed&igrave;a</em>), tambi&eacute;n conocida simplemente como&nbsp;<em id=\"mwDA\"><strong id=\"mwDQ\">Comedia</strong></em>, es un poema escrito por&nbsp;<a id=\"mwDg\" title=\"Dante Alighieri\" href=\"https://es.wikipedia.org/wiki/Dante_Alighieri\" rel=\"mw:WikiLink\">Dante Alighieri</a>. Se desconoce la fecha exacta en que fue redactado aunque las opiniones m&aacute;s reconocidas aseguran que el&nbsp;<em id=\"mwDw\"><a id=\"mwEA\" title=\"Infierno (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Infierno_(Divina_comedia)\" rel=\"mw:WikiLink\">Infierno</a></em>&nbsp;pudo ser compuesto entre 1304 y 1308, el&nbsp;<em id=\"mwEQ\"><a id=\"mwEg\" title=\"Purgatorio (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Purgatorio_(Divina_comedia)\" rel=\"mw:WikiLink\">Purgatorio</a></em>&nbsp;de 1307 a 1314 y, por &uacute;ltimo, el&nbsp;<em id=\"mwEw\"><a id=\"mwFA\" title=\"Para&iacute;so (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Para%C3%ADso_(Divina_comedia)\" rel=\"mw:WikiLink\">Para&iacute;so</a></em>&nbsp;de 1313 a 1321, fecha del fallecimiento del poeta. Se considera por tanto que la redacci&oacute;n de la primera parte habr&iacute;a sido alternada con la redacci&oacute;n del&nbsp;<em id=\"mwFQ\">Convivium</em>&nbsp;y&nbsp;<em id=\"mwFg\">De vulgari eloquentia</em>, mientras que&nbsp;<em id=\"mwFw\">De monarchia</em>&nbsp;pertenecer&iacute;a a la &eacute;poca de la segunda o tercera etapa, a la &uacute;ltima de las cuales hay que atribuir sin duda la de dos obras de menor empe&ntilde;o: la&nbsp;<em id=\"mwGA\">Cuesti&oacute;n de agua</em>&nbsp;y&nbsp;<em id=\"mwGQ\">La Tierra</em>&nbsp;y las dos&nbsp;<a id=\"mwGg\" title=\"&Eacute;gloga\" href=\"https://es.wikipedia.org/wiki/%C3%89gloga\" rel=\"mw:WikiLink\">&eacute;glogas</a>&nbsp;escritas en respuesta a sendos poemas de Giovanni de Regina.</p>\r\n<p id=\"mwGw\">Es la creaci&oacute;n m&aacute;s importante de su autor y una de las obras fundamentales de la transici&oacute;n del pensamiento medieval (<a id=\"mwHA\" title=\"Teocentrismo\" href=\"https://es.wikipedia.org/wiki/Teocentrismo\" rel=\"mw:WikiLink\">teocentrista</a>) al renacentista (<a id=\"mwHQ\" title=\"Antropocentrismo\" href=\"https://es.wikipedia.org/wiki/Antropocentrismo\" rel=\"mw:WikiLink\">antropocentrista</a>). Es considerada la obra maestra de la&nbsp;<a id=\"mwHg\" title=\"Literatura de Italia\" href=\"https://es.wikipedia.org/wiki/Literatura_de_Italia\" rel=\"mw:WikiLink\">literatura italiana</a>, de la&nbsp;<a id=\"mwHw\" title=\"Literatura medieval\" href=\"https://es.wikipedia.org/wiki/Literatura_medieval\" rel=\"mw:WikiLink\">literatura medieval</a> y una de las cumbres de la literatura universal.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 3, 10, 'es|3|10'),
(56, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 19, '3|19'),
(57, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 20, '3|20'),
(58, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 21, '3|21'),
(59, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, 3, 22, '3|22'),
(60, NULL, NULL, '003', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '3|1'),
(61, 'es', NULL, 'La Divina Comedia - Dante Alighieri', NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 'es|3|2'),
(62, 'es', NULL, 'la-divina-comedia-dante-alighieri', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 'es|3|3'),
(63, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, 3, 27, '3|27'),
(64, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 28, 'default|3|28'),
(65, 'es', NULL, 'Libro La Divina Comedia de Dante Alighieri', NULL, NULL, NULL, NULL, NULL, NULL, 3, 16, 'es|3|16'),
(66, 'es', NULL, 'libro la divina comedia, la divina comedia dante alighieri, comprar la divina comedia, dante alighieri libro, literatura clasica dante, libros clasicos universales, comprar libros de literatura', NULL, NULL, NULL, NULL, NULL, NULL, 3, 17, 'es|3|17'),
(67, 'es', NULL, 'Compra el libro La Divina Comedia de Dante Alighieri. Explora una edición cuidada de este clásico de la literatura universal para enriquecer tu biblioteca.', NULL, NULL, NULL, NULL, NULL, NULL, 3, 18, 'es|3|18'),
(68, NULL, NULL, NULL, NULL, NULL, 500000.0000, NULL, NULL, NULL, 3, 11, '3|11'),
(69, NULL, NULL, NULL, NULL, NULL, 300000.0000, NULL, NULL, NULL, 3, 12, '3|12'),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 13, '3|13'),
(71, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 14, 'default|3|14'),
(72, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 15, 'default|3|15'),
(73, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 5, '4|5'),
(74, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 6, '4|6'),
(75, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 7, '4|7'),
(76, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 8, 'default|4|8'),
(77, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 26, '4|26'),
(78, 'es', NULL, '<p>&laquo;<strong id=\"mwBw\">Bohemian Rhapsody</strong>&raquo; es una canci&oacute;n y&nbsp;<a id=\"mwCA\" title=\"Sencillo\" href=\"https://es.wikipedia.org/wiki/Sencillo\" rel=\"mw:WikiLink\">sencillo</a>&nbsp;de la banda&nbsp;<a id=\"mwCQ\" title=\"Reino Unido\" href=\"https://es.wikipedia.org/wiki/Reino_Unido\" rel=\"mw:WikiLink\">brit&aacute;nica</a>&nbsp;de&nbsp;<em id=\"mwCg\"><a id=\"mwCw\" title=\"Rock\" href=\"https://es.wikipedia.org/wiki/Rock\" rel=\"mw:WikiLink\">rock</a></em>&nbsp;<a id=\"mwDA\" title=\"Queen\" href=\"https://es.wikipedia.org/wiki/Queen\" rel=\"mw:WikiLink\">Queen</a>. Fue escrita por&nbsp;<a id=\"mwDQ\" title=\"Freddie Mercury\" href=\"https://es.wikipedia.org/wiki/Freddie_Mercury\" rel=\"mw:WikiLink\">Freddie Mercury</a>&nbsp;para el &aacute;lbum de 1975 titulado&nbsp;<em id=\"mwDg\"><a id=\"mwDw\" title=\"A Night at the Opera\" href=\"https://es.wikipedia.org/wiki/A_Night_at_the_Opera\" rel=\"mw:WikiLink\">A Night at the Opera</a></em>. &laquo;Bohemian Rhapsody&raquo; presenta una estructura inusual, m&aacute;s similar a una&nbsp;<a id=\"mwEA\" title=\"Rapsodia (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Rapsodia_(m%C3%BAsica)\" rel=\"mw:WikiLink\">rapsodia</a>&nbsp;cl&aacute;sica que a la&nbsp;<a id=\"mwEQ\" title=\"M&uacute;sica popular\" href=\"https://es.wikipedia.org/wiki/M%C3%BAsica_popular\" rel=\"mw:WikiLink\">m&uacute;sica popular</a>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 4, 9, 'es|4|9'),
(79, 'es', NULL, '<p id=\"mwBg\">&laquo;<strong id=\"mwBw\">Bohemian Rhapsody</strong>&raquo; es una canci&oacute;n y&nbsp;<a id=\"mwCA\" title=\"Sencillo\" href=\"https://es.wikipedia.org/wiki/Sencillo\" rel=\"mw:WikiLink\">sencillo</a>&nbsp;de la banda&nbsp;<a id=\"mwCQ\" title=\"Reino Unido\" href=\"https://es.wikipedia.org/wiki/Reino_Unido\" rel=\"mw:WikiLink\">brit&aacute;nica</a>&nbsp;de&nbsp;<em id=\"mwCg\"><a id=\"mwCw\" title=\"Rock\" href=\"https://es.wikipedia.org/wiki/Rock\" rel=\"mw:WikiLink\">rock</a></em>&nbsp;<a id=\"mwDA\" title=\"Queen\" href=\"https://es.wikipedia.org/wiki/Queen\" rel=\"mw:WikiLink\">Queen</a>. Fue escrita por&nbsp;<a id=\"mwDQ\" title=\"Freddie Mercury\" href=\"https://es.wikipedia.org/wiki/Freddie_Mercury\" rel=\"mw:WikiLink\">Freddie Mercury</a>&nbsp;para el &aacute;lbum de 1975 titulado&nbsp;<em id=\"mwDg\"><a id=\"mwDw\" title=\"A Night at the Opera\" href=\"https://es.wikipedia.org/wiki/A_Night_at_the_Opera\" rel=\"mw:WikiLink\">A Night at the Opera</a></em>. &laquo;Bohemian Rhapsody&raquo; presenta una estructura inusual, m&aacute;s similar a una&nbsp;<a id=\"mwEA\" title=\"Rapsodia (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Rapsodia_(m%C3%BAsica)\" rel=\"mw:WikiLink\">rapsodia</a>&nbsp;cl&aacute;sica que a la&nbsp;<a id=\"mwEQ\" title=\"M&uacute;sica popular\" href=\"https://es.wikipedia.org/wiki/M%C3%BAsica_popular\" rel=\"mw:WikiLink\">m&uacute;sica popular</a>.</p>\r\n<p id=\"mwEg\">La canci&oacute;n no posee estribillo y consiste en seis secciones: una introducci&oacute;n de&nbsp;<a id=\"mwEw\" title=\"Piano\" href=\"https://es.wikipedia.org/wiki/Piano\" rel=\"mw:WikiLink\">piano</a>, una&nbsp;<a id=\"mwFA\" title=\"Balada\" href=\"https://es.wikipedia.org/wiki/Balada\" rel=\"mw:WikiLink\">balada</a>, un&nbsp;<a id=\"mwFQ\" title=\"Solo (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Solo_(m%C3%BAsica)\" rel=\"mw:WikiLink\">solo</a>&nbsp;de&nbsp;<a id=\"mwFg\" title=\"Guitarra\" href=\"https://es.wikipedia.org/wiki/Guitarra\" rel=\"mw:WikiLink\">guitarra</a>, un segmento&nbsp;<a id=\"mwFw\" title=\"&Oacute;pera\" href=\"https://es.wikipedia.org/wiki/%C3%93pera\" rel=\"mw:WikiLink\">oper&iacute;stico</a>, una secci&oacute;n de&nbsp;<em id=\"mwGA\">rock</em>&nbsp;y una&nbsp;<a id=\"mwGQ\" title=\"Coda (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Coda_(m%C3%BAsica)\" rel=\"mw:WikiLink\">coda</a>&nbsp;que retoma el&nbsp;<a id=\"mwGg\" title=\"Tempo\" href=\"https://es.wikipedia.org/wiki/Tempo\" rel=\"mw:WikiLink\">tempo</a>&nbsp;y la&nbsp;<a id=\"mwGw\" title=\"Tonalidad (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Tonalidad_(m%C3%BAsica)\" rel=\"mw:WikiLink\">tonalidad</a>&nbsp;de la balada introductoria. El solo de guitarra de esta canci&oacute;n ha sido considerado el vig&eacute;simo mejor de todos los tiempos en el&nbsp;<a id=\"mwHA\" title=\"Reino Unido\" href=\"https://es.wikipedia.org/wiki/Reino_Unido\" rel=\"mw:WikiLink\">Reino Unido</a>.<sup id=\"cite_ref-solo_1-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;solo&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-solo-1&quot;}}\"></sup></p>\r\n<p id=\"mwIQ\">Cuando se puso a la venta como&nbsp;<a id=\"mwIg\" title=\"Sencillo\" href=\"https://es.wikipedia.org/wiki/Sencillo\" rel=\"mw:WikiLink\">sencillo</a>, &laquo;Bohemian Rhapsody&raquo; se convirti&oacute; en un &eacute;xito comercial que permaneci&oacute; en la cima de las&nbsp;<a id=\"mwIw\" title=\"UK Singles Chart\" href=\"https://es.wikipedia.org/wiki/UK_Singles_Chart\" rel=\"mw:WikiLink\">listas brit&aacute;nicas</a>&nbsp;durante nueve semanas. Alcanz&oacute; all&iacute; el puesto n&uacute;mero uno otra vez en 1991, tras la muerte de&nbsp;<a id=\"mwJA\" title=\"Freddie Mercury\" href=\"https://es.wikipedia.org/wiki/Freddie_Mercury\" rel=\"mw:WikiLink\">Freddie Mercury</a>. En total, alcanz&oacute; 2<span id=\"mwJQ\">&nbsp;</span>176<span id=\"mwJg\">&nbsp;</span>000 ventas, siendo el tercer sencillo m&aacute;s vendido de todos los tiempos en Reino Unido.<sup id=\"cite_ref-2\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-2&quot;}}\"></sup></p>', NULL, NULL, NULL, NULL, NULL, NULL, 4, 10, 'es|4|10'),
(80, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 19, '4|19'),
(81, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 20, '4|20'),
(82, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 21, '4|21'),
(83, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, 4, 22, '4|22'),
(84, NULL, NULL, '004', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '4|1'),
(85, 'es', NULL, 'Bohemian Rhapsody - Queen', NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 'es|4|2'),
(86, 'es', NULL, 'bohemian-rhapsody-queen', NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 'es|4|3'),
(87, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, 4, 27, '4|27'),
(88, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 28, 'default|4|28'),
(89, 'es', NULL, 'Vinilo y Disco Bohemian Rhapsody de Queen', NULL, NULL, NULL, NULL, NULL, NULL, 4, 16, 'es|4|16'),
(90, 'es', NULL, 'bohemian rhapsody queen, disco bohemian rhapsody, vinilo bohemian rhapsody queen, comprar disco queen, album queen bohemian rhapsody, musica rock clasico vinilo, regalos para fans de queen', NULL, NULL, NULL, NULL, NULL, NULL, 4, 17, 'es|4|17'),
(91, 'es', NULL, 'Compra la obra maestra Bohemian Rhapsody de Queen. Ediciones exclusivas en vinilo y CD para coleccionistas y amantes del rock clásico. ¡Añádelo a tu colección!', NULL, NULL, NULL, NULL, NULL, NULL, 4, 18, 'es|4|18'),
(92, NULL, NULL, NULL, NULL, NULL, 250000.0000, NULL, NULL, NULL, 4, 11, '4|11'),
(93, NULL, NULL, NULL, NULL, NULL, 150000.0000, NULL, NULL, NULL, 4, 12, '4|12'),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 13, '4|13'),
(95, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 14, 'default|4|14'),
(96, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 15, 'default|4|15'),
(97, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 5, '5|5'),
(98, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 6, '5|6'),
(99, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 7, '5|7'),
(100, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 8, 'default|5|8'),
(101, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 26, '5|26'),
(102, 'es', NULL, '<p><em id=\"mwIg\"><strong id=\"mwIw\">Fight Club</strong></em>&nbsp;(conocida como&nbsp;<em id=\"mwJA\"><strong id=\"mwJQ\">El club de la lucha</strong></em>&nbsp;en&nbsp;<a id=\"mwJg\" title=\"Espa&ntilde;a\" href=\"https://es.wikipedia.org/wiki/Espa%C3%B1a\" rel=\"mw:WikiLink\">Espa&ntilde;a</a>&nbsp;y como&nbsp;<em id=\"mwJw\"><strong id=\"mwKA\">El club de la pelea</strong></em>&nbsp;en&nbsp;<a id=\"mwKQ\" title=\"Hispanoam&eacute;rica\" href=\"https://es.wikipedia.org/wiki/Hispanoam%C3%A9rica\" rel=\"mw:WikiLink\">Hispanoam&eacute;rica</a>) es una pel&iacute;cula&nbsp;<a id=\"mwKg\" title=\"Cine de los Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Cine_de_los_Estados_Unidos\" rel=\"mw:WikiLink\">estadounidense</a>&nbsp;de 1999 basada en&nbsp;<a id=\"mwKw\" title=\"Fight Club (novela)\" href=\"https://es.wikipedia.org/wiki/Fight_Club_(novela)\" rel=\"mw:WikiLink\">la novela hom&oacute;nima</a>&nbsp;de&nbsp;<a id=\"mwLA\" title=\"Chuck Palahniuk\" href=\"https://es.wikipedia.org/wiki/Chuck_Palahniuk\" rel=\"mw:WikiLink\">Chuck Palahniuk</a>. La cinta fue dirigida por&nbsp;<a id=\"mwLQ\" title=\"David Fincher\" href=\"https://es.wikipedia.org/wiki/David_Fincher\" rel=\"mw:WikiLink\">David Fincher</a>&nbsp;y protagonizada por&nbsp;<a id=\"mwLg\" title=\"Edward Norton\" href=\"https://es.wikipedia.org/wiki/Edward_Norton\" rel=\"mw:WikiLink\">Edward Norton</a>,&nbsp;<a id=\"mwLw\" title=\"Brad Pitt\" href=\"https://es.wikipedia.org/wiki/Brad_Pitt\" rel=\"mw:WikiLink\">Brad Pitt</a>&nbsp;y&nbsp;<a id=\"mwMA\" title=\"Helena Bonham Carter\" href=\"https://es.wikipedia.org/wiki/Helena_Bonham_Carter\" rel=\"mw:WikiLink\">Helena Bonham Carter</a>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, 'es|5|9'),
(103, 'es', NULL, '<p id=\"mwIQ\"><em id=\"mwIg\"><strong id=\"mwIw\">Fight Club</strong></em>&nbsp;(conocida como&nbsp;<em id=\"mwJA\"><strong id=\"mwJQ\">El club de la lucha</strong></em>&nbsp;en&nbsp;<a id=\"mwJg\" title=\"Espa&ntilde;a\" href=\"https://es.wikipedia.org/wiki/Espa%C3%B1a\" rel=\"mw:WikiLink\">Espa&ntilde;a</a>&nbsp;y como&nbsp;<em id=\"mwJw\"><strong id=\"mwKA\">El club de la pelea</strong></em>&nbsp;en&nbsp;<a id=\"mwKQ\" title=\"Hispanoam&eacute;rica\" href=\"https://es.wikipedia.org/wiki/Hispanoam%C3%A9rica\" rel=\"mw:WikiLink\">Hispanoam&eacute;rica</a>) es una pel&iacute;cula&nbsp;<a id=\"mwKg\" title=\"Cine de los Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Cine_de_los_Estados_Unidos\" rel=\"mw:WikiLink\">estadounidense</a>&nbsp;de 1999 basada en&nbsp;<a id=\"mwKw\" title=\"Fight Club (novela)\" href=\"https://es.wikipedia.org/wiki/Fight_Club_(novela)\" rel=\"mw:WikiLink\">la novela hom&oacute;nima</a>&nbsp;de&nbsp;<a id=\"mwLA\" title=\"Chuck Palahniuk\" href=\"https://es.wikipedia.org/wiki/Chuck_Palahniuk\" rel=\"mw:WikiLink\">Chuck Palahniuk</a>. La cinta fue dirigida por&nbsp;<a id=\"mwLQ\" title=\"David Fincher\" href=\"https://es.wikipedia.org/wiki/David_Fincher\" rel=\"mw:WikiLink\">David Fincher</a>&nbsp;y protagonizada por&nbsp;<a id=\"mwLg\" title=\"Edward Norton\" href=\"https://es.wikipedia.org/wiki/Edward_Norton\" rel=\"mw:WikiLink\">Edward Norton</a>,&nbsp;<a id=\"mwLw\" title=\"Brad Pitt\" href=\"https://es.wikipedia.org/wiki/Brad_Pitt\" rel=\"mw:WikiLink\">Brad Pitt</a>&nbsp;y&nbsp;<a id=\"mwMA\" title=\"Helena Bonham Carter\" href=\"https://es.wikipedia.org/wiki/Helena_Bonham_Carter\" rel=\"mw:WikiLink\">Helena Bonham Carter</a>.</p>\r\n<p id=\"mwMQ\">La novela de&nbsp;<a id=\"mwMg\" title=\"Chuck Palahniuk\" href=\"https://es.wikipedia.org/wiki/Chuck_Palahniuk\" rel=\"mw:WikiLink\">Chuck Palahniuk</a>&nbsp;fue escogida por Laura Ziskin, productora de la&nbsp;<a id=\"mwMw\" class=\"mw-redirect\" title=\"20th Century Fox\" href=\"https://es.wikipedia.org/wiki/20th_Century_Fox\" rel=\"mw:WikiLink\">20th Century Fox</a>, quien contrat&oacute; a Jim Uhls para escribir el guion de la adaptaci&oacute;n cinematogr&aacute;fica. David Fincher fue uno de los cuatro directores considerados, siendo contratado finalmente por su entusiasmo hacia el proyecto. Fincher desarroll&oacute; el guion con Uhls y solicit&oacute; la ayuda en su escritura a actores y otros miembros de la industria del cine. El director y el elenco compararon la pel&iacute;cula con&nbsp;<em id=\"mwNA\"><a id=\"mwNQ\" title=\"Rebelde sin causa\" href=\"https://es.wikipedia.org/wiki/Rebelde_sin_causa\" rel=\"mw:WikiLink\">Rebelde sin causa</a></em>&nbsp;de 1955 y&nbsp;<em id=\"mwNg\"><a id=\"mwNw\" class=\"mw-redirect\" title=\"El Graduado\" href=\"https://es.wikipedia.org/wiki/El_Graduado\" rel=\"mw:WikiLink\">El Graduado</a></em>&nbsp;de 1967. Fincher intent&oacute; que la violencia de la cinta sirviese como&nbsp;<a id=\"mwOA\" title=\"Met&aacute;fora\" href=\"https://es.wikipedia.org/wiki/Met%C3%A1fora\" rel=\"mw:WikiLink\">met&aacute;fora</a>&nbsp;del conflicto entre las&nbsp;<a id=\"mwOQ\" title=\"Generaci&oacute;n X\" href=\"https://es.wikipedia.org/wiki/Generaci%C3%B3n_X\" rel=\"mw:WikiLink\">generaciones j&oacute;venes</a>&nbsp;y el&nbsp;<a id=\"mwOg\" title=\"Valor (&eacute;tica)\" href=\"https://es.wikipedia.org/wiki/Valor_(%C3%A9tica)\" rel=\"mw:WikiLink\">sistema de valores</a> de la publicidad.<sup id=\"cite_ref-CNN1999_4-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;CNN1999&quot;}}\"></sup><sup id=\"cite_ref-Laist_5-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Laist&quot;}}\"></sup>&nbsp;El director copi&oacute; los matices&nbsp;<a id=\"mwQw\" title=\"Homoerotismo\" href=\"https://es.wikipedia.org/wiki/Homoerotismo\" rel=\"mw:WikiLink\">homoer&oacute;ticos</a>&nbsp;de la novela de Palahniuk para hacerla inc&oacute;moda al p&uacute;blico y evitar que anticipasen el&nbsp;<a id=\"mwRA\" class=\"mw-redirect\" title=\"Vuelta de tuerca (argumento)\" href=\"https://es.wikipedia.org/wiki/Vuelta_de_tuerca_(argumento)\" rel=\"mw:WikiLink\">dram&aacute;tico giro</a> del final.<sup id=\"cite_ref-fiction_6-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;fiction&quot;}}\"></sup></p>\r\n<p id=\"mwSQ\">A los ejecutivos del estudio no les gust&oacute; la pel&iacute;cula y reestructuraron la campa&ntilde;a de marketing para tratar de reducir las posibles p&eacute;rdidas.&nbsp;<em id=\"mwSg\">Fight Club</em>&nbsp;no cumpli&oacute; las expectativas del estudio en taquilla y recibi&oacute; reacciones polarizadas por parte de la&nbsp;<a id=\"mwSw\" title=\"Cr&iacute;tica cinematogr&aacute;fica\" href=\"https://es.wikipedia.org/wiki/Cr%C3%ADtica_cinematogr%C3%A1fica\" rel=\"mw:WikiLink\">cr&iacute;tica</a>, volvi&eacute;ndose una de las pel&iacute;culas m&aacute;s controvertidas y discutidas de ese a&ntilde;o. Los cr&iacute;ticos elogiaron la actuaci&oacute;n, la direcci&oacute;n, los temas y los mensajes, pero debatieron sobre la violencia expl&iacute;cita y la ambig&uuml;edad moral. Con el tiempo, sin embargo, la recepci&oacute;n hacia la pel&iacute;cula se ha vuelto muy positiva entre los cr&iacute;ticos y el p&uacute;blico, encontrando &eacute;xito cr&iacute;tico y comercial con su lanzamiento en&nbsp;<a id=\"mwTA\" title=\"DVD\" href=\"https://es.wikipedia.org/wiki/DVD\" rel=\"mw:WikiLink\">DVD</a>, lo que facilit&oacute; que&nbsp;<em id=\"mwTQ\">Fight Club</em>&nbsp;se convirtiera en una&nbsp;<a id=\"mwTg\" title=\"Pel&iacute;cula de culto\" href=\"https://es.wikipedia.org/wiki/Pel%C3%ADcula_de_culto\" rel=\"mw:WikiLink\">pel&iacute;cula de culto</a>. Es considerada por muchos como una de las mejores pel&iacute;culas de la d&eacute;cada de 1990.<sup id=\"cite_ref-7\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-7&quot;}}\"></sup><sup id=\"cite_ref-8\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-8&quot;}}\"></sup><sup id=\"cite_ref-9\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-9&quot;}}\"></sup></p>', NULL, NULL, NULL, NULL, NULL, NULL, 5, 10, 'es|5|10'),
(104, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 19, '5|19'),
(105, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 20, '5|20'),
(106, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 21, '5|21'),
(107, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, 5, 22, '5|22'),
(108, NULL, NULL, '005', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, '5|1'),
(109, 'es', NULL, 'Fight Club - David Fincher', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 'es|5|2'),
(110, 'es', NULL, 'fight-club-david-fincher', NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, 'es|5|3'),
(111, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 5, 27, '5|27'),
(112, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 28, 'default|5|28'),
(113, 'es', NULL, 'Película Fight Club de David Fincher | Edición Colección', NULL, NULL, NULL, NULL, NULL, NULL, 5, 16, 'es|5|16'),
(114, 'es', NULL, 'fight club david fincher, pelicula fight club, el club de la pelea pelicula, comprar blu ray fight club, cine de culto david fincher, edicion coleccionista fight club, regalos para cinefilos', NULL, NULL, NULL, NULL, NULL, NULL, 5, 17, 'es|5|17'),
(115, 'es', NULL, 'Compra la obra maestra Fight Club (El Club de la Pelea) de David Fincher. Ediciones exclusivas para amantes del cine de culto y coleccionistas. ¡Consíguela!', NULL, NULL, NULL, NULL, NULL, NULL, 5, 18, 'es|5|18'),
(116, NULL, NULL, NULL, NULL, NULL, 150000.0000, NULL, NULL, NULL, 5, 11, '5|11'),
(117, NULL, NULL, NULL, NULL, NULL, 50000.0000, NULL, NULL, NULL, 5, 12, '5|12'),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 13, '5|13'),
(119, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 14, 'default|5|14'),
(120, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 15, 'default|5|15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_bundle_options`
--

CREATE TABLE `product_bundle_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_bundle_option_products`
--

CREATE TABLE `product_bundle_option_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_bundle_option_translations`
--

CREATE TABLE `product_bundle_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(1, 3),
(2, 2),
(3, 5),
(4, 4),
(5, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_channels`
--

CREATE TABLE `product_channels` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `product_channels`
--

INSERT INTO `product_channels` (`product_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_cross_sells`
--

CREATE TABLE `product_cross_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_customer_group_prices`
--

CREATE TABLE `product_customer_group_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `value_type` varchar(191) NOT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unique_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_downloadable_links`
--

CREATE TABLE `product_downloadable_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sample_url` varchar(191) DEFAULT NULL,
  `sample_file` varchar(191) DEFAULT NULL,
  `sample_file_name` varchar(191) DEFAULT NULL,
  `sample_type` varchar(191) DEFAULT NULL,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_downloadable_link_translations`
--

CREATE TABLE `product_downloadable_link_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_downloadable_link_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_downloadable_samples`
--

CREATE TABLE `product_downloadable_samples` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_downloadable_sample_translations`
--

CREATE TABLE `product_downloadable_sample_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_downloadable_sample_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_flat`
--

CREATE TABLE `product_flat` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `product_number` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url_key` varchar(191) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` date DEFAULT NULL,
  `special_price_to` date DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(191) DEFAULT NULL,
  `channel` varchar(191) DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `visible_individually` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `product_flat`
--

INSERT INTO `product_flat` (`id`, `sku`, `type`, `product_number`, `name`, `short_description`, `description`, `url_key`, `new`, `featured`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `price`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `created_at`, `locale`, `channel`, `attribute_family_id`, `product_id`, `updated_at`, `parent_id`, `visible_individually`) VALUES
(1, '001', 'simple', '1', 'Mona Lisa - Leonardo Da Vinci', '<p><em id=\"mwCw\"><strong id=\"mwDA\">La Gioconda</strong></em>&nbsp;(<em id=\"mwDQ\"><strong id=\"mwDg\">La Joconde</strong></em>, en&nbsp;<a id=\"mwDw\" title=\"Idioma franc&eacute;s\" href=\"https://es.wikipedia.org/wiki/Idioma_franc%C3%A9s\" rel=\"mw:WikiLink\">franc&eacute;s</a>) o&nbsp;<em id=\"mwEA\"><strong id=\"mwEQ\">Mona Lisa</strong></em>, es una c&eacute;lebre&nbsp;<a id=\"mwEg\" title=\"Obra de arte\" href=\"https://es.wikipedia.org/wiki/Obra_de_arte\" rel=\"mw:WikiLink\">obra pict&oacute;rica</a>&nbsp;al&nbsp;<a id=\"mwEw\" title=\"Pintura al &oacute;leo\" href=\"https://es.wikipedia.org/wiki/Pintura_al_%C3%B3leo\" rel=\"mw:WikiLink\">&oacute;leo</a>&nbsp;de&nbsp;<a id=\"mwFA\" title=\"Leonardo da Vinci\" href=\"https://es.wikipedia.org/wiki/Leonardo_da_Vinci\" rel=\"mw:WikiLink\">Leonardo da Vinci</a>, creada en su natal&nbsp;<a id=\"mwFQ\" title=\"Rep&uacute;blica de Florencia\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_de_Florencia\" rel=\"mw:WikiLink\">Florencia</a>&nbsp;entre los a&ntilde;os 1503 y 1506, posiblemente continuando hasta aproximadamente 1515 o 1517, aunque esta fecha de conclusi&oacute;n tan imprecisa es objeto de debate. El retrato corresponde a&nbsp;<a id=\"mwFg\" title=\"Lisa Gherardini\" href=\"https://es.wikipedia.org/wiki/Lisa_Gherardini\" rel=\"mw:WikiLink\">Lisa Gherardini</a>, esposa de Francesco del Giocondo,<sup id=\"cite_ref-Louvre_1-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Louvre&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-Louvre-1&quot;}}\"></sup>&nbsp;m&aacute;s conocida por extensi&oacute;n como&nbsp;<em id=\"mwGw\">La Gioconda</em>. Fue adquirida por el rey&nbsp;<a id=\"mwHA\" title=\"Francisco I de Francia\" href=\"https://es.wikipedia.org/wiki/Francisco_I_de_Francia\" rel=\"mw:WikiLink\">Francisco I de Francia</a>&nbsp;a comienzos del&nbsp;<span id=\"mwHQ\" data-mw=\"{&quot;parts&quot;:[{&quot;template&quot;:{&quot;target&quot;:{&quot;wt&quot;:&quot;siglo&quot;,&quot;href&quot;:&quot;./Plantilla:Siglo&quot;},&quot;params&quot;:{&quot;1&quot;:{&quot;wt&quot;:&quot;XVI&quot;},&quot;2&quot;:{&quot;wt&quot;:&quot;&quot;},&quot;3&quot;:{&quot;wt&quot;:&quot;s&quot;}},&quot;i&quot;:0}}]}\">siglo</span>&nbsp;<span id=\"mwHg\">XVI</span>&nbsp;y desde entonces es propiedad del&nbsp;<a id=\"mwHw\" title=\"Francia\" href=\"https://es.wikipedia.org/wiki/Francia\" rel=\"mw:WikiLink\">Estado franc&eacute;s</a>. Est&aacute; expuesta en el&nbsp;<a id=\"mwIA\" title=\"Museo del Louvre\" href=\"https://es.wikipedia.org/wiki/Museo_del_Louvre\" rel=\"mw:WikiLink\">Museo del Louvre</a>&nbsp;de&nbsp;<a id=\"mwIQ\" title=\"Par&iacute;s\" href=\"https://es.wikipedia.org/wiki/Par%C3%ADs\" rel=\"mw:WikiLink\">Par&iacute;s</a>, siendo, sin duda, la &laquo;joya&raquo; de sus colecciones.</p>', '<p id=\"mwCg\"><em id=\"mwCw\"><strong id=\"mwDA\">La Gioconda</strong></em>&nbsp;(<em id=\"mwDQ\"><strong id=\"mwDg\">La Joconde</strong></em>, en&nbsp;<a id=\"mwDw\" title=\"Idioma franc&eacute;s\" href=\"https://es.wikipedia.org/wiki/Idioma_franc%C3%A9s\" rel=\"mw:WikiLink\">franc&eacute;s</a>) o&nbsp;<em id=\"mwEA\"><strong id=\"mwEQ\">Mona Lisa</strong></em>, es una c&eacute;lebre&nbsp;<a id=\"mwEg\" title=\"Obra de arte\" href=\"https://es.wikipedia.org/wiki/Obra_de_arte\" rel=\"mw:WikiLink\">obra pict&oacute;rica</a>&nbsp;al&nbsp;<a id=\"mwEw\" title=\"Pintura al &oacute;leo\" href=\"https://es.wikipedia.org/wiki/Pintura_al_%C3%B3leo\" rel=\"mw:WikiLink\">&oacute;leo</a>&nbsp;de&nbsp;<a id=\"mwFA\" title=\"Leonardo da Vinci\" href=\"https://es.wikipedia.org/wiki/Leonardo_da_Vinci\" rel=\"mw:WikiLink\">Leonardo da Vinci</a>, creada en su natal&nbsp;<a id=\"mwFQ\" title=\"Rep&uacute;blica de Florencia\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_de_Florencia\" rel=\"mw:WikiLink\">Florencia</a>&nbsp;entre los a&ntilde;os 1503 y 1506, posiblemente continuando hasta aproximadamente 1515 o 1517, aunque esta fecha de conclusi&oacute;n tan imprecisa es objeto de debate. El retrato corresponde a&nbsp;<a id=\"mwFg\" title=\"Lisa Gherardini\" href=\"https://es.wikipedia.org/wiki/Lisa_Gherardini\" rel=\"mw:WikiLink\">Lisa Gherardini</a>, esposa de Francesco del Giocondo,<sup id=\"cite_ref-Louvre_1-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Louvre&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-Louvre-1&quot;}}\"></sup>&nbsp;m&aacute;s conocida por extensi&oacute;n como&nbsp;<em id=\"mwGw\">La Gioconda</em>. Fue adquirida por el rey&nbsp;<a id=\"mwHA\" title=\"Francisco I de Francia\" href=\"https://es.wikipedia.org/wiki/Francisco_I_de_Francia\" rel=\"mw:WikiLink\">Francisco I de Francia</a>&nbsp;a comienzos del&nbsp;<span id=\"mwHQ\" data-mw=\"{&quot;parts&quot;:[{&quot;template&quot;:{&quot;target&quot;:{&quot;wt&quot;:&quot;siglo&quot;,&quot;href&quot;:&quot;./Plantilla:Siglo&quot;},&quot;params&quot;:{&quot;1&quot;:{&quot;wt&quot;:&quot;XVI&quot;},&quot;2&quot;:{&quot;wt&quot;:&quot;&quot;},&quot;3&quot;:{&quot;wt&quot;:&quot;s&quot;}},&quot;i&quot;:0}}]}\">siglo</span>&nbsp;<span id=\"mwHg\">XVI</span>&nbsp;y desde entonces es propiedad del&nbsp;<a id=\"mwHw\" title=\"Francia\" href=\"https://es.wikipedia.org/wiki/Francia\" rel=\"mw:WikiLink\">Estado franc&eacute;s</a>. Est&aacute; expuesta en el&nbsp;<a id=\"mwIA\" title=\"Museo del Louvre\" href=\"https://es.wikipedia.org/wiki/Museo_del_Louvre\" rel=\"mw:WikiLink\">Museo del Louvre</a>&nbsp;de&nbsp;<a id=\"mwIQ\" title=\"Par&iacute;s\" href=\"https://es.wikipedia.org/wiki/Par%C3%ADs\" rel=\"mw:WikiLink\">Par&iacute;s</a>, siendo, sin duda, la &laquo;joya&raquo; de sus colecciones.</p>\r\n<p id=\"mwIg\"><em id=\"mwIw\">Gioconda</em>&nbsp;significa &laquo;esposa alegre o jovial&raquo; en italiano. Hay 12&nbsp;<a id=\"mwJA\" class=\"extiw\" title=\"it:Giocondo\" href=\"https://it.wikipedia.org/wiki/Giocondo\" rel=\"mw:WikiLink/Interwiki\">santorales</a>&nbsp;con ese nombre, unos masculinos, otros femeninos. Una tesis del nombre del &oacute;leo,&nbsp;<em id=\"mwJQ\">La Gioconda</em>, la m&aacute;s aceptada es sobre la identidad de la modelo: la esposa de Francesco Bartolomeo de Giocondo, que realmente se llamaba&nbsp;<a id=\"mwJg\" title=\"Lisa Gherardini\" href=\"https://es.wikipedia.org/wiki/Lisa_Gherardini\" rel=\"mw:WikiLink\">Lisa Gherardini</a>, de donde viene su otro nombre:&nbsp;<em id=\"mwJw\">Monna</em>&nbsp;(<em id=\"mwKA\">se&ntilde;ora</em>, en el italiano antiguo)&nbsp;<em id=\"mwKQ\">Lisa</em>. El&nbsp;<a id=\"mwKg\" title=\"Museo del Louvre\" href=\"https://es.wikipedia.org/wiki/Museo_del_Louvre\" rel=\"mw:WikiLink\">Museo del Louvre</a> acepta el t&iacute;tulo completo indicado al principio como el t&iacute;tulo original de la obra, aunque no reconoce la identidad de la modelo y tan solo la acepta como una hip&oacute;tesis.<sup id=\"cite_ref-LOU_2-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;LOU&quot;}}\"></sup></p>\r\n<p id=\"mwLw\">Es un&nbsp;<a id=\"mwMA\" title=\"Pintura al &oacute;leo\" href=\"https://es.wikipedia.org/wiki/Pintura_al_%C3%B3leo\" rel=\"mw:WikiLink\">&oacute;leo</a>&nbsp;sobre tabla de&nbsp;<a id=\"mwMQ\" class=\"mw-redirect\" title=\"&Aacute;lamo\" href=\"https://es.wikipedia.org/wiki/%C3%81lamo\" rel=\"mw:WikiLink\">&aacute;lamo</a>&nbsp;de 79 &times; 53<span id=\"mwMg\">&nbsp;</span><a id=\"mwMw\" title=\"Cent&iacute;metro\" href=\"https://es.wikipedia.org/wiki/Cent%C3%ADmetro\" rel=\"mw:WikiLink\">cm</a>, pintado entre 1503 y 1519,<sup id=\"cite_ref-El_Pa&iacute;s_3-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;El Pa&iacute;s&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-El_Pa&iacute;s-3&quot;}}\"></sup>&nbsp;y retocado varias veces por el autor. Se considera el ejemplo m&aacute;s logrado de&nbsp;<a id=\"mwOA\" title=\"Esfumado\" href=\"https://es.wikipedia.org/wiki/Esfumado\" rel=\"mw:WikiLink\"><em id=\"mwOQ\">sfumato</em></a>, t&eacute;cnica muy caracter&iacute;stica de Leonardo, si bien actualmente su colorido original es menos perceptible por el oscurecimiento de los barnices. El cuadro est&aacute; protegido por m&uacute;ltiples sistemas de seguridad y ambientado a temperatura estable para su preservaci&oacute;n &oacute;ptima.<sup id=\"cite_ref-Widerko,_Kasia_4-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Widerko, Kasia&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-Widerko,_Kasia-4&quot;}}\"></sup>&nbsp;Es revisado constantemente para verificar y prevenir su deterioro.</p>\r\n<p id=\"mwPg\">Por medio de estudios hist&oacute;ricos se ha determinado que la modelo podr&iacute;a ser una vecina de Leonardo, que podr&iacute;an conocerse sus descendientes, y que la modelo podr&iacute;a haber estado embarazada, por la forma de esconder que tienen sus manos. Pese a todas las suposiciones, las respuestas en firme a los varios interrogantes en torno a la obra de arte resultan francamente insuficientes, lo cual genera m&aacute;s curiosidad entre los admiradores del cuadro.</p>\r\n<p id=\"mwPw\">La fama de esta pintura no se basa &uacute;nicamente en la t&eacute;cnica empleada o en su belleza, sino tambi&eacute;n en los misterios que la rodean. Adem&aacute;s, el&nbsp;<a id=\"mwQA\" title=\"Vincenzo Peruggia\" href=\"https://es.wikipedia.org/wiki/Vincenzo_Peruggia\" rel=\"mw:WikiLink\">robo que sufri&oacute; en 1911</a>, las reproducciones realizadas, las m&uacute;ltiples obras de arte que se han inspirado en el cuadro y las parodias existentes contribuyen a convertir a&nbsp;<em id=\"mwQQ\">La Gioconda</em> en el cuadro m&aacute;s famoso del mundo, visitado por millones de personas anualmente.<sup id=\"cite_ref-Bioportal_5-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Bioportal&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-Bioportal-5&quot;}}\"></sup></p>', 'mona-lisa-leonardo-da-vinci', 1, 1, 1, 'Cuadro \"La Mona Lisa\" de Leonardo da Vinci', 'cuadro la mona lisa, la Gioconda Leonardo da vinci, replica mona lisa, comprar cuadro mona lisa, pintura mona lisa da vinci, cuadros famosos arte clásico, reproducción la mona lisa', 'Compra la réplica del cuadro \"La Mona Lisa\" de Leonardo da Vinci. Excelente calidad de impresión y acabado para decorar tu hogar u oficina con arte clásico', 1500000.0000, NULL, NULL, NULL, 1000.0000, '2026-08-10 17:37:31', 'es', 'default', 1, 1, '2026-08-11 16:40:58', NULL, 1),
(2, '002', 'simple', '2', 'David - Miguel Angel', '<p>El&nbsp;<em id=\"mwEg\"><strong id=\"mwEw\">David</strong></em>&nbsp;es una escultura de&nbsp;<a id=\"mwFA\" title=\"M&aacute;rmol\" href=\"https://es.wikipedia.org/wiki/M%C3%A1rmol\" rel=\"mw:WikiLink\">m&aacute;rmol blanco</a> de 5,17 metros <sup id=\"cite_ref-517cm_1-2\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;517cm&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-517cm-1&quot;}}\"></sup>de altura y 5572&nbsp;<a id=\"mwGQ\" title=\"Kilogramo\" href=\"https://es.wikipedia.org/wiki/Kilogramo\" rel=\"mw:WikiLink\">kilogramos</a> de peso,<sup id=\"cite_ref-elpais_2-1\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;elpais&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-elpais-2&quot;}}\"></sup>&nbsp;esculpida por&nbsp;<a id=\"mwHg\" title=\"Miguel &Aacute;ngel\" href=\"https://es.wikipedia.org/wiki/Miguel_%C3%81ngel\" rel=\"mw:WikiLink\">Miguel &Aacute;ngel Buonarroti</a>&nbsp;entre 1501 y 1504 por encargo de la&nbsp;<em id=\"mwHw\">Opera del Duomo</em>&nbsp;de la&nbsp;<a id=\"mwIA\" class=\"mw-redirect\" title=\"Santa Mar&iacute;a del Fiore\" href=\"https://es.wikipedia.org/wiki/Santa_Mar%C3%ADa_del_Fiore\" rel=\"mw:WikiLink\">catedral de Santa Mar&iacute;a del Fiore</a>&nbsp;de&nbsp;<a id=\"mwIQ\" title=\"Florencia\" href=\"https://es.wikipedia.org/wiki/Florencia\" rel=\"mw:WikiLink\">Florencia</a>. La escultura representa al&nbsp;<a id=\"mwIg\" title=\"David\" href=\"https://es.wikipedia.org/wiki/David\" rel=\"mw:WikiLink\">rey David</a>&nbsp;<a id=\"mwIw\" title=\"Biblia\" href=\"https://es.wikipedia.org/wiki/Biblia\" rel=\"mw:WikiLink\">b&iacute;blico</a>&nbsp;en el momento previo a enfrentarse con&nbsp;<a id=\"mwJA\" title=\"Goliat\" href=\"https://es.wikipedia.org/wiki/Goliat\" rel=\"mw:WikiLink\">Goliat</a>, y fue acogida como un s&iacute;mbolo de la&nbsp;<a id=\"mwJQ\" title=\"Rep&uacute;blica de Florencia\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_de_Florencia\" rel=\"mw:WikiLink\">Rep&uacute;blica de Florencia</a>&nbsp;frente a la hegemon&iacute;a de sus derrocados dirigentes, los&nbsp;<a id=\"mwJg\" title=\"M&eacute;dici\" href=\"https://es.wikipedia.org/wiki/M%C3%A9dici\" rel=\"mw:WikiLink\">M&eacute;dici</a>, y la amenaza de los estados adyacentes, especialmente los&nbsp;<a id=\"mwJw\" title=\"Estados Pontificios\" href=\"https://es.wikipedia.org/wiki/Estados_Pontificios\" rel=\"mw:WikiLink\">Estados Pontificios</a>.</p>', '<p id=\"mwEQ\">El&nbsp;<em id=\"mwEg\"><strong id=\"mwEw\">David</strong></em>&nbsp;es una escultura de&nbsp;<a id=\"mwFA\" title=\"M&aacute;rmol\" href=\"https://es.wikipedia.org/wiki/M%C3%A1rmol\" rel=\"mw:WikiLink\">m&aacute;rmol blanco</a> de 5,17 metros<sup id=\"cite_ref-517cm_1-2\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;517cm&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-517cm-1&quot;}}\"></sup>&nbsp;de altura y 5572&nbsp;<a id=\"mwGQ\" title=\"Kilogramo\" href=\"https://es.wikipedia.org/wiki/Kilogramo\" rel=\"mw:WikiLink\">kilogramos</a> de peso,<sup id=\"cite_ref-elpais_2-1\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;elpais&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-elpais-2&quot;}}\"></sup>&nbsp;esculpida por&nbsp;<a id=\"mwHg\" title=\"Miguel &Aacute;ngel\" href=\"https://es.wikipedia.org/wiki/Miguel_%C3%81ngel\" rel=\"mw:WikiLink\">Miguel &Aacute;ngel Buonarroti</a>&nbsp;entre 1501 y 1504 por encargo de la&nbsp;<em id=\"mwHw\">Opera del Duomo</em>&nbsp;de la&nbsp;<a id=\"mwIA\" class=\"mw-redirect\" title=\"Santa Mar&iacute;a del Fiore\" href=\"https://es.wikipedia.org/wiki/Santa_Mar%C3%ADa_del_Fiore\" rel=\"mw:WikiLink\">catedral de Santa Mar&iacute;a del Fiore</a>&nbsp;de&nbsp;<a id=\"mwIQ\" title=\"Florencia\" href=\"https://es.wikipedia.org/wiki/Florencia\" rel=\"mw:WikiLink\">Florencia</a>. La escultura representa al&nbsp;<a id=\"mwIg\" title=\"David\" href=\"https://es.wikipedia.org/wiki/David\" rel=\"mw:WikiLink\">rey David</a>&nbsp;<a id=\"mwIw\" title=\"Biblia\" href=\"https://es.wikipedia.org/wiki/Biblia\" rel=\"mw:WikiLink\">b&iacute;blico</a>&nbsp;en el momento previo a enfrentarse con&nbsp;<a id=\"mwJA\" title=\"Goliat\" href=\"https://es.wikipedia.org/wiki/Goliat\" rel=\"mw:WikiLink\">Goliat</a>, y fue acogida como un s&iacute;mbolo de la&nbsp;<a id=\"mwJQ\" title=\"Rep&uacute;blica de Florencia\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_de_Florencia\" rel=\"mw:WikiLink\">Rep&uacute;blica de Florencia</a>&nbsp;frente a la hegemon&iacute;a de sus derrocados dirigentes, los&nbsp;<a id=\"mwJg\" title=\"M&eacute;dici\" href=\"https://es.wikipedia.org/wiki/M%C3%A9dici\" rel=\"mw:WikiLink\">M&eacute;dici</a>, y la amenaza de los estados adyacentes, especialmente los&nbsp;<a id=\"mwJw\" title=\"Estados Pontificios\" href=\"https://es.wikipedia.org/wiki/Estados_Pontificios\" rel=\"mw:WikiLink\">Estados Pontificios</a>.</p>\r\n<p id=\"mwKA\">El&nbsp;<em id=\"mwKQ\">David</em>&nbsp;es una de las&nbsp;<a id=\"mwKg\" title=\"Obra maestra (gremio)\" href=\"https://es.wikipedia.org/wiki/Obra_maestra_(gremio)\" rel=\"mw:WikiLink\">obras maestras</a>&nbsp;del&nbsp;<a id=\"mwKw\" title=\"Escultura del Renacimiento\" href=\"https://es.wikipedia.org/wiki/Escultura_del_Renacimiento\" rel=\"mw:WikiLink\">Renacimiento</a> seg&uacute;n la mayor&iacute;a de los historiadores,<sup id=\"cite_ref-restored_3-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;restored&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-restored-3&quot;}}\"></sup>&nbsp;y una de las&nbsp;<a id=\"mwMA\" title=\"Escultura\" href=\"https://es.wikipedia.org/wiki/Escultura\" rel=\"mw:WikiLink\">esculturas</a> m&aacute;s famosas del mundo.<sup id=\"cite_ref-terrarest_4-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;terrarest&quot;}}\"></sup><sup id=\"cite_ref-usa_5-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;usa&quot;}}\"></sup>&nbsp;Actualmente se encuentra expuesta en la&nbsp;<a id=\"mwOQ\" title=\"Galer&iacute;a de la Academia de Florencia\" href=\"https://es.wikipedia.org/wiki/Galer%C3%ADa_de_la_Academia_de_Florencia\" rel=\"mw:WikiLink\">Galer&iacute;a de la Academia de Florencia</a>,<sup id=\"cite_ref-6\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-6&quot;}}\"></sup>&nbsp;aunque hasta 1873 estuvo ubicada en la&nbsp;<a id=\"mwPg\" title=\"Plaza de la Se&ntilde;or&iacute;a\" href=\"https://es.wikipedia.org/wiki/Plaza_de_la_Se%C3%B1or%C3%ADa\" rel=\"mw:WikiLink\">plaza de la Se&ntilde;or&iacute;a</a>&nbsp;de la capital&nbsp;<a id=\"mwPw\" title=\"Toscana\" href=\"https://es.wikipedia.org/wiki/Toscana\" rel=\"mw:WikiLink\">toscana</a>; desde entonces en su lugar se erige una copia realizada tambi&eacute;n en m&aacute;rmol blanco.01</p>', 'david-miguel-angel', 1, 1, 1, 'Escultura David de Miguel Ángel', 'escultura david miguel angel, replica david miguel angel, comprar estatua david miguel angel, figura david miguel angel, estatuas arte clasico, replicas de arte renacentista, comprar escultura renacentista', 'Compra la réplica de la famosa escultura del David de Miguel Ángel. Acabados de alta calidad e idóneos para decorar tu hogar u oficina con arte clásico.', 2000000.0000, NULL, NULL, NULL, 5572.0000, '2026-08-10 17:51:02', 'es', 'default', 1, 2, '2026-08-11 16:41:20', NULL, 1),
(3, '003', 'simple', '3', 'La Divina Comedia - Dante Alighieri', '<p>La&nbsp;<em id=\"mwBg\"><strong id=\"mwBw\">Divina comedia</strong></em>&nbsp;(<span id=\"mwCA\" data-mw=\"{&quot;parts&quot;:[{&quot;template&quot;:{&quot;target&quot;:{&quot;wt&quot;:&quot;lang-it&quot;,&quot;href&quot;:&quot;./Plantilla:Lang-it&quot;},&quot;params&quot;:{&quot;1&quot;:{&quot;wt&quot;:&quot;Divina Commedia&quot;}},&quot;i&quot;:0}}]}\">en&nbsp;</span><a title=\"Idioma italiano\" href=\"https://es.wikipedia.org/wiki/Idioma_italiano\" rel=\"mw:WikiLink\">italiano</a>:&nbsp;<em lang=\"it\">Divina Commedia</em>, en&nbsp;<a id=\"mwCg\" title=\"Toscano\" href=\"https://es.wikipedia.org/wiki/Toscano\" rel=\"mw:WikiLink\">toscano</a>:&nbsp;<em id=\"mwCw\">Divina Comed&igrave;a</em>), tambi&eacute;n conocida simplemente como&nbsp;<em id=\"mwDA\"><strong id=\"mwDQ\">Comedia</strong></em>, es un poema escrito por&nbsp;<a id=\"mwDg\" title=\"Dante Alighieri\" href=\"https://es.wikipedia.org/wiki/Dante_Alighieri\" rel=\"mw:WikiLink\">Dante Alighieri</a>. Se desconoce la fecha exacta en que fue redactado aunque las opiniones m&aacute;s reconocidas aseguran que el&nbsp;<em id=\"mwDw\"><a id=\"mwEA\" title=\"Infierno (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Infierno_(Divina_comedia)\" rel=\"mw:WikiLink\">Infierno</a></em>&nbsp;pudo ser compuesto entre 1304 y 1308, el&nbsp;<em id=\"mwEQ\"><a id=\"mwEg\" title=\"Purgatorio (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Purgatorio_(Divina_comedia)\" rel=\"mw:WikiLink\">Purgatorio</a></em>&nbsp;de 1307 a 1314 y, por &uacute;ltimo, el&nbsp;<em id=\"mwEw\"><a id=\"mwFA\" title=\"Para&iacute;so (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Para%C3%ADso_(Divina_comedia)\" rel=\"mw:WikiLink\">Para&iacute;so</a></em>&nbsp;de 1313 a 1321, fecha del fallecimiento del poeta. Se considera por tanto que la redacci&oacute;n de la primera parte habr&iacute;a sido alternada con la redacci&oacute;n del&nbsp;<em id=\"mwFQ\">Convivium</em>&nbsp;y&nbsp;<em id=\"mwFg\">De vulgari eloquentia</em>, mientras que&nbsp;<em id=\"mwFw\">De monarchia</em>&nbsp;pertenecer&iacute;a a la &eacute;poca de la segunda o tercera etapa, a la &uacute;ltima de las cuales hay que atribuir sin duda la de dos obras de menor empe&ntilde;o: la&nbsp;<em id=\"mwGA\">Cuesti&oacute;n de agua</em>&nbsp;y&nbsp;<em id=\"mwGQ\">La Tierra</em>&nbsp;y las dos&nbsp;<a id=\"mwGg\" title=\"&Eacute;gloga\" href=\"https://es.wikipedia.org/wiki/%C3%89gloga\" rel=\"mw:WikiLink\">&eacute;glogas</a> escritas en respuesta a sendos poemas de Giovanni de Regina.</p>', '<p id=\"mwBQ\">La&nbsp;<em id=\"mwBg\"><strong id=\"mwBw\">Divina comedia</strong></em>&nbsp;(<span id=\"mwCA\" data-mw=\"{&quot;parts&quot;:[{&quot;template&quot;:{&quot;target&quot;:{&quot;wt&quot;:&quot;lang-it&quot;,&quot;href&quot;:&quot;./Plantilla:Lang-it&quot;},&quot;params&quot;:{&quot;1&quot;:{&quot;wt&quot;:&quot;Divina Commedia&quot;}},&quot;i&quot;:0}}]}\">en&nbsp;</span><a title=\"Idioma italiano\" href=\"https://es.wikipedia.org/wiki/Idioma_italiano\" rel=\"mw:WikiLink\">italiano</a>:&nbsp;<em lang=\"it\">Divina Commedia</em>, en&nbsp;<a id=\"mwCg\" title=\"Toscano\" href=\"https://es.wikipedia.org/wiki/Toscano\" rel=\"mw:WikiLink\">toscano</a>:&nbsp;<em id=\"mwCw\">Divina Comed&igrave;a</em>), tambi&eacute;n conocida simplemente como&nbsp;<em id=\"mwDA\"><strong id=\"mwDQ\">Comedia</strong></em>, es un poema escrito por&nbsp;<a id=\"mwDg\" title=\"Dante Alighieri\" href=\"https://es.wikipedia.org/wiki/Dante_Alighieri\" rel=\"mw:WikiLink\">Dante Alighieri</a>. Se desconoce la fecha exacta en que fue redactado aunque las opiniones m&aacute;s reconocidas aseguran que el&nbsp;<em id=\"mwDw\"><a id=\"mwEA\" title=\"Infierno (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Infierno_(Divina_comedia)\" rel=\"mw:WikiLink\">Infierno</a></em>&nbsp;pudo ser compuesto entre 1304 y 1308, el&nbsp;<em id=\"mwEQ\"><a id=\"mwEg\" title=\"Purgatorio (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Purgatorio_(Divina_comedia)\" rel=\"mw:WikiLink\">Purgatorio</a></em>&nbsp;de 1307 a 1314 y, por &uacute;ltimo, el&nbsp;<em id=\"mwEw\"><a id=\"mwFA\" title=\"Para&iacute;so (Divina comedia)\" href=\"https://es.wikipedia.org/wiki/Para%C3%ADso_(Divina_comedia)\" rel=\"mw:WikiLink\">Para&iacute;so</a></em>&nbsp;de 1313 a 1321, fecha del fallecimiento del poeta. Se considera por tanto que la redacci&oacute;n de la primera parte habr&iacute;a sido alternada con la redacci&oacute;n del&nbsp;<em id=\"mwFQ\">Convivium</em>&nbsp;y&nbsp;<em id=\"mwFg\">De vulgari eloquentia</em>, mientras que&nbsp;<em id=\"mwFw\">De monarchia</em>&nbsp;pertenecer&iacute;a a la &eacute;poca de la segunda o tercera etapa, a la &uacute;ltima de las cuales hay que atribuir sin duda la de dos obras de menor empe&ntilde;o: la&nbsp;<em id=\"mwGA\">Cuesti&oacute;n de agua</em>&nbsp;y&nbsp;<em id=\"mwGQ\">La Tierra</em>&nbsp;y las dos&nbsp;<a id=\"mwGg\" title=\"&Eacute;gloga\" href=\"https://es.wikipedia.org/wiki/%C3%89gloga\" rel=\"mw:WikiLink\">&eacute;glogas</a>&nbsp;escritas en respuesta a sendos poemas de Giovanni de Regina.</p>\r\n<p id=\"mwGw\">Es la creaci&oacute;n m&aacute;s importante de su autor y una de las obras fundamentales de la transici&oacute;n del pensamiento medieval (<a id=\"mwHA\" title=\"Teocentrismo\" href=\"https://es.wikipedia.org/wiki/Teocentrismo\" rel=\"mw:WikiLink\">teocentrista</a>) al renacentista (<a id=\"mwHQ\" title=\"Antropocentrismo\" href=\"https://es.wikipedia.org/wiki/Antropocentrismo\" rel=\"mw:WikiLink\">antropocentrista</a>). Es considerada la obra maestra de la&nbsp;<a id=\"mwHg\" title=\"Literatura de Italia\" href=\"https://es.wikipedia.org/wiki/Literatura_de_Italia\" rel=\"mw:WikiLink\">literatura italiana</a>, de la&nbsp;<a id=\"mwHw\" title=\"Literatura medieval\" href=\"https://es.wikipedia.org/wiki/Literatura_medieval\" rel=\"mw:WikiLink\">literatura medieval</a> y una de las cumbres de la literatura universal.</p>', 'la-divina-comedia-dante-alighieri', 1, 1, 1, 'Libro La Divina Comedia de Dante Alighieri', 'libro la divina comedia, la divina comedia dante alighieri, comprar la divina comedia, dante alighieri libro, literatura clasica dante, libros clasicos universales, comprar libros de literatura', 'Compra el libro La Divina Comedia de Dante Alighieri. Explora una edición cuidada de este clásico de la literatura universal para enriquecer tu biblioteca.', 500000.0000, NULL, NULL, NULL, 100.0000, '2026-08-10 21:04:44', 'es', 'default', 1, 3, '2026-08-10 21:13:44', NULL, 1),
(4, '004', 'simple', '4', 'Bohemian Rhapsody - Queen', '<p>&laquo;<strong id=\"mwBw\">Bohemian Rhapsody</strong>&raquo; es una canci&oacute;n y&nbsp;<a id=\"mwCA\" title=\"Sencillo\" href=\"https://es.wikipedia.org/wiki/Sencillo\" rel=\"mw:WikiLink\">sencillo</a>&nbsp;de la banda&nbsp;<a id=\"mwCQ\" title=\"Reino Unido\" href=\"https://es.wikipedia.org/wiki/Reino_Unido\" rel=\"mw:WikiLink\">brit&aacute;nica</a>&nbsp;de&nbsp;<em id=\"mwCg\"><a id=\"mwCw\" title=\"Rock\" href=\"https://es.wikipedia.org/wiki/Rock\" rel=\"mw:WikiLink\">rock</a></em>&nbsp;<a id=\"mwDA\" title=\"Queen\" href=\"https://es.wikipedia.org/wiki/Queen\" rel=\"mw:WikiLink\">Queen</a>. Fue escrita por&nbsp;<a id=\"mwDQ\" title=\"Freddie Mercury\" href=\"https://es.wikipedia.org/wiki/Freddie_Mercury\" rel=\"mw:WikiLink\">Freddie Mercury</a>&nbsp;para el &aacute;lbum de 1975 titulado&nbsp;<em id=\"mwDg\"><a id=\"mwDw\" title=\"A Night at the Opera\" href=\"https://es.wikipedia.org/wiki/A_Night_at_the_Opera\" rel=\"mw:WikiLink\">A Night at the Opera</a></em>. &laquo;Bohemian Rhapsody&raquo; presenta una estructura inusual, m&aacute;s similar a una&nbsp;<a id=\"mwEA\" title=\"Rapsodia (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Rapsodia_(m%C3%BAsica)\" rel=\"mw:WikiLink\">rapsodia</a>&nbsp;cl&aacute;sica que a la&nbsp;<a id=\"mwEQ\" title=\"M&uacute;sica popular\" href=\"https://es.wikipedia.org/wiki/M%C3%BAsica_popular\" rel=\"mw:WikiLink\">m&uacute;sica popular</a>.</p>', '<p id=\"mwBg\">&laquo;<strong id=\"mwBw\">Bohemian Rhapsody</strong>&raquo; es una canci&oacute;n y&nbsp;<a id=\"mwCA\" title=\"Sencillo\" href=\"https://es.wikipedia.org/wiki/Sencillo\" rel=\"mw:WikiLink\">sencillo</a>&nbsp;de la banda&nbsp;<a id=\"mwCQ\" title=\"Reino Unido\" href=\"https://es.wikipedia.org/wiki/Reino_Unido\" rel=\"mw:WikiLink\">brit&aacute;nica</a>&nbsp;de&nbsp;<em id=\"mwCg\"><a id=\"mwCw\" title=\"Rock\" href=\"https://es.wikipedia.org/wiki/Rock\" rel=\"mw:WikiLink\">rock</a></em>&nbsp;<a id=\"mwDA\" title=\"Queen\" href=\"https://es.wikipedia.org/wiki/Queen\" rel=\"mw:WikiLink\">Queen</a>. Fue escrita por&nbsp;<a id=\"mwDQ\" title=\"Freddie Mercury\" href=\"https://es.wikipedia.org/wiki/Freddie_Mercury\" rel=\"mw:WikiLink\">Freddie Mercury</a>&nbsp;para el &aacute;lbum de 1975 titulado&nbsp;<em id=\"mwDg\"><a id=\"mwDw\" title=\"A Night at the Opera\" href=\"https://es.wikipedia.org/wiki/A_Night_at_the_Opera\" rel=\"mw:WikiLink\">A Night at the Opera</a></em>. &laquo;Bohemian Rhapsody&raquo; presenta una estructura inusual, m&aacute;s similar a una&nbsp;<a id=\"mwEA\" title=\"Rapsodia (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Rapsodia_(m%C3%BAsica)\" rel=\"mw:WikiLink\">rapsodia</a>&nbsp;cl&aacute;sica que a la&nbsp;<a id=\"mwEQ\" title=\"M&uacute;sica popular\" href=\"https://es.wikipedia.org/wiki/M%C3%BAsica_popular\" rel=\"mw:WikiLink\">m&uacute;sica popular</a>.</p>\r\n<p id=\"mwEg\">La canci&oacute;n no posee estribillo y consiste en seis secciones: una introducci&oacute;n de&nbsp;<a id=\"mwEw\" title=\"Piano\" href=\"https://es.wikipedia.org/wiki/Piano\" rel=\"mw:WikiLink\">piano</a>, una&nbsp;<a id=\"mwFA\" title=\"Balada\" href=\"https://es.wikipedia.org/wiki/Balada\" rel=\"mw:WikiLink\">balada</a>, un&nbsp;<a id=\"mwFQ\" title=\"Solo (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Solo_(m%C3%BAsica)\" rel=\"mw:WikiLink\">solo</a>&nbsp;de&nbsp;<a id=\"mwFg\" title=\"Guitarra\" href=\"https://es.wikipedia.org/wiki/Guitarra\" rel=\"mw:WikiLink\">guitarra</a>, un segmento&nbsp;<a id=\"mwFw\" title=\"&Oacute;pera\" href=\"https://es.wikipedia.org/wiki/%C3%93pera\" rel=\"mw:WikiLink\">oper&iacute;stico</a>, una secci&oacute;n de&nbsp;<em id=\"mwGA\">rock</em>&nbsp;y una&nbsp;<a id=\"mwGQ\" title=\"Coda (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Coda_(m%C3%BAsica)\" rel=\"mw:WikiLink\">coda</a>&nbsp;que retoma el&nbsp;<a id=\"mwGg\" title=\"Tempo\" href=\"https://es.wikipedia.org/wiki/Tempo\" rel=\"mw:WikiLink\">tempo</a>&nbsp;y la&nbsp;<a id=\"mwGw\" title=\"Tonalidad (m&uacute;sica)\" href=\"https://es.wikipedia.org/wiki/Tonalidad_(m%C3%BAsica)\" rel=\"mw:WikiLink\">tonalidad</a>&nbsp;de la balada introductoria. El solo de guitarra de esta canci&oacute;n ha sido considerado el vig&eacute;simo mejor de todos los tiempos en el&nbsp;<a id=\"mwHA\" title=\"Reino Unido\" href=\"https://es.wikipedia.org/wiki/Reino_Unido\" rel=\"mw:WikiLink\">Reino Unido</a>.<sup id=\"cite_ref-solo_1-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;solo&quot;},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-solo-1&quot;}}\"></sup></p>\r\n<p id=\"mwIQ\">Cuando se puso a la venta como&nbsp;<a id=\"mwIg\" title=\"Sencillo\" href=\"https://es.wikipedia.org/wiki/Sencillo\" rel=\"mw:WikiLink\">sencillo</a>, &laquo;Bohemian Rhapsody&raquo; se convirti&oacute; en un &eacute;xito comercial que permaneci&oacute; en la cima de las&nbsp;<a id=\"mwIw\" title=\"UK Singles Chart\" href=\"https://es.wikipedia.org/wiki/UK_Singles_Chart\" rel=\"mw:WikiLink\">listas brit&aacute;nicas</a>&nbsp;durante nueve semanas. Alcanz&oacute; all&iacute; el puesto n&uacute;mero uno otra vez en 1991, tras la muerte de&nbsp;<a id=\"mwJA\" title=\"Freddie Mercury\" href=\"https://es.wikipedia.org/wiki/Freddie_Mercury\" rel=\"mw:WikiLink\">Freddie Mercury</a>. En total, alcanz&oacute; 2<span id=\"mwJQ\">&nbsp;</span>176<span id=\"mwJg\">&nbsp;</span>000 ventas, siendo el tercer sencillo m&aacute;s vendido de todos los tiempos en Reino Unido.<sup id=\"cite_ref-2\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-2&quot;}}\"></sup></p>', 'bohemian-rhapsody-queen', 1, 1, 1, 'Vinilo y Disco Bohemian Rhapsody de Queen', 'bohemian rhapsody queen, disco bohemian rhapsody, vinilo bohemian rhapsody queen, comprar disco queen, album queen bohemian rhapsody, musica rock clasico vinilo, regalos para fans de queen', 'Compra la obra maestra Bohemian Rhapsody de Queen. Ediciones exclusivas en vinilo y CD para coleccionistas y amantes del rock clásico. ¡Añádelo a tu colección!', 250000.0000, NULL, NULL, NULL, 100.0000, '2026-08-11 16:32:46', 'es', 'default', 1, 4, '2026-08-11 16:35:26', NULL, 1),
(5, '005', 'simple', '5', 'Fight Club - David Fincher', '<p><em id=\"mwIg\"><strong id=\"mwIw\">Fight Club</strong></em>&nbsp;(conocida como&nbsp;<em id=\"mwJA\"><strong id=\"mwJQ\">El club de la lucha</strong></em>&nbsp;en&nbsp;<a id=\"mwJg\" title=\"Espa&ntilde;a\" href=\"https://es.wikipedia.org/wiki/Espa%C3%B1a\" rel=\"mw:WikiLink\">Espa&ntilde;a</a>&nbsp;y como&nbsp;<em id=\"mwJw\"><strong id=\"mwKA\">El club de la pelea</strong></em>&nbsp;en&nbsp;<a id=\"mwKQ\" title=\"Hispanoam&eacute;rica\" href=\"https://es.wikipedia.org/wiki/Hispanoam%C3%A9rica\" rel=\"mw:WikiLink\">Hispanoam&eacute;rica</a>) es una pel&iacute;cula&nbsp;<a id=\"mwKg\" title=\"Cine de los Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Cine_de_los_Estados_Unidos\" rel=\"mw:WikiLink\">estadounidense</a>&nbsp;de 1999 basada en&nbsp;<a id=\"mwKw\" title=\"Fight Club (novela)\" href=\"https://es.wikipedia.org/wiki/Fight_Club_(novela)\" rel=\"mw:WikiLink\">la novela hom&oacute;nima</a>&nbsp;de&nbsp;<a id=\"mwLA\" title=\"Chuck Palahniuk\" href=\"https://es.wikipedia.org/wiki/Chuck_Palahniuk\" rel=\"mw:WikiLink\">Chuck Palahniuk</a>. La cinta fue dirigida por&nbsp;<a id=\"mwLQ\" title=\"David Fincher\" href=\"https://es.wikipedia.org/wiki/David_Fincher\" rel=\"mw:WikiLink\">David Fincher</a>&nbsp;y protagonizada por&nbsp;<a id=\"mwLg\" title=\"Edward Norton\" href=\"https://es.wikipedia.org/wiki/Edward_Norton\" rel=\"mw:WikiLink\">Edward Norton</a>,&nbsp;<a id=\"mwLw\" title=\"Brad Pitt\" href=\"https://es.wikipedia.org/wiki/Brad_Pitt\" rel=\"mw:WikiLink\">Brad Pitt</a>&nbsp;y&nbsp;<a id=\"mwMA\" title=\"Helena Bonham Carter\" href=\"https://es.wikipedia.org/wiki/Helena_Bonham_Carter\" rel=\"mw:WikiLink\">Helena Bonham Carter</a>.</p>', '<p id=\"mwIQ\"><em id=\"mwIg\"><strong id=\"mwIw\">Fight Club</strong></em>&nbsp;(conocida como&nbsp;<em id=\"mwJA\"><strong id=\"mwJQ\">El club de la lucha</strong></em>&nbsp;en&nbsp;<a id=\"mwJg\" title=\"Espa&ntilde;a\" href=\"https://es.wikipedia.org/wiki/Espa%C3%B1a\" rel=\"mw:WikiLink\">Espa&ntilde;a</a>&nbsp;y como&nbsp;<em id=\"mwJw\"><strong id=\"mwKA\">El club de la pelea</strong></em>&nbsp;en&nbsp;<a id=\"mwKQ\" title=\"Hispanoam&eacute;rica\" href=\"https://es.wikipedia.org/wiki/Hispanoam%C3%A9rica\" rel=\"mw:WikiLink\">Hispanoam&eacute;rica</a>) es una pel&iacute;cula&nbsp;<a id=\"mwKg\" title=\"Cine de los Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Cine_de_los_Estados_Unidos\" rel=\"mw:WikiLink\">estadounidense</a>&nbsp;de 1999 basada en&nbsp;<a id=\"mwKw\" title=\"Fight Club (novela)\" href=\"https://es.wikipedia.org/wiki/Fight_Club_(novela)\" rel=\"mw:WikiLink\">la novela hom&oacute;nima</a>&nbsp;de&nbsp;<a id=\"mwLA\" title=\"Chuck Palahniuk\" href=\"https://es.wikipedia.org/wiki/Chuck_Palahniuk\" rel=\"mw:WikiLink\">Chuck Palahniuk</a>. La cinta fue dirigida por&nbsp;<a id=\"mwLQ\" title=\"David Fincher\" href=\"https://es.wikipedia.org/wiki/David_Fincher\" rel=\"mw:WikiLink\">David Fincher</a>&nbsp;y protagonizada por&nbsp;<a id=\"mwLg\" title=\"Edward Norton\" href=\"https://es.wikipedia.org/wiki/Edward_Norton\" rel=\"mw:WikiLink\">Edward Norton</a>,&nbsp;<a id=\"mwLw\" title=\"Brad Pitt\" href=\"https://es.wikipedia.org/wiki/Brad_Pitt\" rel=\"mw:WikiLink\">Brad Pitt</a>&nbsp;y&nbsp;<a id=\"mwMA\" title=\"Helena Bonham Carter\" href=\"https://es.wikipedia.org/wiki/Helena_Bonham_Carter\" rel=\"mw:WikiLink\">Helena Bonham Carter</a>.</p>\r\n<p id=\"mwMQ\">La novela de&nbsp;<a id=\"mwMg\" title=\"Chuck Palahniuk\" href=\"https://es.wikipedia.org/wiki/Chuck_Palahniuk\" rel=\"mw:WikiLink\">Chuck Palahniuk</a>&nbsp;fue escogida por Laura Ziskin, productora de la&nbsp;<a id=\"mwMw\" class=\"mw-redirect\" title=\"20th Century Fox\" href=\"https://es.wikipedia.org/wiki/20th_Century_Fox\" rel=\"mw:WikiLink\">20th Century Fox</a>, quien contrat&oacute; a Jim Uhls para escribir el guion de la adaptaci&oacute;n cinematogr&aacute;fica. David Fincher fue uno de los cuatro directores considerados, siendo contratado finalmente por su entusiasmo hacia el proyecto. Fincher desarroll&oacute; el guion con Uhls y solicit&oacute; la ayuda en su escritura a actores y otros miembros de la industria del cine. El director y el elenco compararon la pel&iacute;cula con&nbsp;<em id=\"mwNA\"><a id=\"mwNQ\" title=\"Rebelde sin causa\" href=\"https://es.wikipedia.org/wiki/Rebelde_sin_causa\" rel=\"mw:WikiLink\">Rebelde sin causa</a></em>&nbsp;de 1955 y&nbsp;<em id=\"mwNg\"><a id=\"mwNw\" class=\"mw-redirect\" title=\"El Graduado\" href=\"https://es.wikipedia.org/wiki/El_Graduado\" rel=\"mw:WikiLink\">El Graduado</a></em>&nbsp;de 1967. Fincher intent&oacute; que la violencia de la cinta sirviese como&nbsp;<a id=\"mwOA\" title=\"Met&aacute;fora\" href=\"https://es.wikipedia.org/wiki/Met%C3%A1fora\" rel=\"mw:WikiLink\">met&aacute;fora</a>&nbsp;del conflicto entre las&nbsp;<a id=\"mwOQ\" title=\"Generaci&oacute;n X\" href=\"https://es.wikipedia.org/wiki/Generaci%C3%B3n_X\" rel=\"mw:WikiLink\">generaciones j&oacute;venes</a>&nbsp;y el&nbsp;<a id=\"mwOg\" title=\"Valor (&eacute;tica)\" href=\"https://es.wikipedia.org/wiki/Valor_(%C3%A9tica)\" rel=\"mw:WikiLink\">sistema de valores</a> de la publicidad.<sup id=\"cite_ref-CNN1999_4-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;CNN1999&quot;}}\"></sup><sup id=\"cite_ref-Laist_5-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;Laist&quot;}}\"></sup>&nbsp;El director copi&oacute; los matices&nbsp;<a id=\"mwQw\" title=\"Homoerotismo\" href=\"https://es.wikipedia.org/wiki/Homoerotismo\" rel=\"mw:WikiLink\">homoer&oacute;ticos</a>&nbsp;de la novela de Palahniuk para hacerla inc&oacute;moda al p&uacute;blico y evitar que anticipasen el&nbsp;<a id=\"mwRA\" class=\"mw-redirect\" title=\"Vuelta de tuerca (argumento)\" href=\"https://es.wikipedia.org/wiki/Vuelta_de_tuerca_(argumento)\" rel=\"mw:WikiLink\">dram&aacute;tico giro</a> del final.<sup id=\"cite_ref-fiction_6-0\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{&quot;name&quot;:&quot;fiction&quot;}}\"></sup></p>\r\n<p id=\"mwSQ\">A los ejecutivos del estudio no les gust&oacute; la pel&iacute;cula y reestructuraron la campa&ntilde;a de marketing para tratar de reducir las posibles p&eacute;rdidas.&nbsp;<em id=\"mwSg\">Fight Club</em>&nbsp;no cumpli&oacute; las expectativas del estudio en taquilla y recibi&oacute; reacciones polarizadas por parte de la&nbsp;<a id=\"mwSw\" title=\"Cr&iacute;tica cinematogr&aacute;fica\" href=\"https://es.wikipedia.org/wiki/Cr%C3%ADtica_cinematogr%C3%A1fica\" rel=\"mw:WikiLink\">cr&iacute;tica</a>, volvi&eacute;ndose una de las pel&iacute;culas m&aacute;s controvertidas y discutidas de ese a&ntilde;o. Los cr&iacute;ticos elogiaron la actuaci&oacute;n, la direcci&oacute;n, los temas y los mensajes, pero debatieron sobre la violencia expl&iacute;cita y la ambig&uuml;edad moral. Con el tiempo, sin embargo, la recepci&oacute;n hacia la pel&iacute;cula se ha vuelto muy positiva entre los cr&iacute;ticos y el p&uacute;blico, encontrando &eacute;xito cr&iacute;tico y comercial con su lanzamiento en&nbsp;<a id=\"mwTA\" title=\"DVD\" href=\"https://es.wikipedia.org/wiki/DVD\" rel=\"mw:WikiLink\">DVD</a>, lo que facilit&oacute; que&nbsp;<em id=\"mwTQ\">Fight Club</em>&nbsp;se convirtiera en una&nbsp;<a id=\"mwTg\" title=\"Pel&iacute;cula de culto\" href=\"https://es.wikipedia.org/wiki/Pel%C3%ADcula_de_culto\" rel=\"mw:WikiLink\">pel&iacute;cula de culto</a>. Es considerada por muchos como una de las mejores pel&iacute;culas de la d&eacute;cada de 1990.<sup id=\"cite_ref-7\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-7&quot;}}\"></sup><sup id=\"cite_ref-8\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-8&quot;}}\"></sup><sup id=\"cite_ref-9\" class=\"mw-ref reference\" data-mw=\"{&quot;name&quot;:&quot;ref&quot;,&quot;attrs&quot;:{},&quot;body&quot;:{&quot;id&quot;:&quot;mw-reference-text-cite_note-9&quot;}}\"></sup></p>', 'fight-club-david-fincher', 1, 1, 1, 'Película Fight Club de David Fincher | Edición Colección', 'fight club david fincher, pelicula fight club, el club de la pelea pelicula, comprar blu ray fight club, cine de culto david fincher, edicion coleccionista fight club, regalos para cinefilos', 'Compra la obra maestra Fight Club (El Club de la Pelea) de David Fincher. Ediciones exclusivas para amantes del cine de culto y coleccionistas. ¡Consíguela!', 150000.0000, NULL, NULL, NULL, 100.0000, '2026-08-11 16:35:55', 'es', 'default', 1, 5, '2026-08-11 16:40:01', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_grouped_products`
--

CREATE TABLE `product_grouped_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `associated_product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `path` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `type`, `path`, `product_id`, `position`) VALUES
(1, 'images', 'product/1/8I57rxywnNZaEuwhhZvgFqjwVzBnPG76KCHNTmWi.webp', 1, 1),
(2, 'images', 'product/2/RhMM6Xp9wGDPQvaRGLMYpAFf3ziQgLoRIWS6QxNO.webp', 2, 1),
(3, 'images', 'product/3/MOGyNtbmXA1sgCakg6APj2dmzmrAahvVzbtUAfHR.webp', 3, 1),
(4, 'images', 'product/4/hKGgDu2YjyyV88ulwYUOl01RThggHUw0sVVdICXY.webp', 4, 1),
(5, 'images', 'product/5/kJN3U9H8MCLzdtyYjh6eJKER2TYdIzGlkYiPXOm9.webp', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `inventory_source_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `qty`, `product_id`, `vendor_id`, `inventory_source_id`) VALUES
(1, 10, 1, 0, 1),
(2, 1, 2, 0, 1),
(3, 1, 3, 0, 1),
(4, 1, 4, 0, 1),
(5, 1, 5, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_inventory_indices`
--

CREATE TABLE `product_inventory_indices` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `product_inventory_indices`
--

INSERT INTO `product_inventory_indices` (`id`, `qty`, `product_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 1, NULL, '2026-08-27 04:45:31'),
(2, 1, 2, 1, NULL, NULL),
(3, 1, 3, 1, NULL, '2026-08-27 04:45:04'),
(4, 1, 4, 1, NULL, '2026-08-27 04:45:18'),
(5, 1, 5, 1, NULL, '2026-08-27 04:44:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_ordered_inventories`
--

CREATE TABLE `product_ordered_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `product_ordered_inventories`
--

INSERT INTO `product_ordered_inventories` (`id`, `qty`, `product_id`, `channel_id`) VALUES
(1, 0, 1, 1),
(2, 0, 4, 1),
(3, 0, 3, 1),
(4, 0, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_price_indices`
--

CREATE TABLE `product_price_indices` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `min_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `regular_min_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `max_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `regular_max_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `product_price_indices`
--

INSERT INTO `product_price_indices` (`id`, `product_id`, `customer_group_id`, `channel_id`, `min_price`, `regular_min_price`, `max_price`, `regular_max_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1500000.0000, 1500000.0000, 1500000.0000, 1500000.0000, NULL, '2026-08-11 21:40:58'),
(2, 1, 2, 1, 1500000.0000, 1500000.0000, 1500000.0000, 1500000.0000, NULL, '2026-08-11 21:40:58'),
(3, 1, 3, 1, 1500000.0000, 1500000.0000, 1500000.0000, 1500000.0000, NULL, '2026-08-11 21:40:58'),
(4, 2, 1, 1, 2000000.0000, 2000000.0000, 2000000.0000, 2000000.0000, NULL, NULL),
(5, 2, 2, 1, 2000000.0000, 2000000.0000, 2000000.0000, 2000000.0000, NULL, NULL),
(6, 2, 3, 1, 2000000.0000, 2000000.0000, 2000000.0000, 2000000.0000, NULL, NULL),
(7, 3, 1, 1, 500000.0000, 500000.0000, 500000.0000, 500000.0000, NULL, NULL),
(8, 3, 2, 1, 500000.0000, 500000.0000, 500000.0000, 500000.0000, NULL, NULL),
(9, 3, 3, 1, 500000.0000, 500000.0000, 500000.0000, 500000.0000, NULL, NULL),
(10, 4, 1, 1, 250000.0000, 250000.0000, 250000.0000, 250000.0000, NULL, NULL),
(11, 4, 2, 1, 250000.0000, 250000.0000, 250000.0000, 250000.0000, NULL, NULL),
(12, 4, 3, 1, 250000.0000, 250000.0000, 250000.0000, 250000.0000, NULL, NULL),
(13, 5, 1, 1, 150000.0000, 150000.0000, 150000.0000, 150000.0000, NULL, NULL),
(14, 5, 2, 1, 150000.0000, 150000.0000, 150000.0000, 150000.0000, NULL, NULL),
(15, 5, 3, 1, 150000.0000, 150000.0000, 150000.0000, 150000.0000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_relations`
--

CREATE TABLE `product_relations` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `title` varchar(191) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_review_attachments`
--

CREATE TABLE `product_review_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT 'image',
  `mime_type` varchar(191) DEFAULT NULL,
  `path` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_super_attributes`
--

CREATE TABLE `product_super_attributes` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_up_sells`
--

CREATE TABLE `product_up_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_videos`
--

CREATE TABLE `product_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `path` varchar(191) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refunds`
--

CREATE TABLE `refunds` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `order_currency_code` varchar(191) DEFAULT NULL,
  `adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refund_items`
--

CREATE TABLE `refund_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `refund_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `permission_type` varchar(191) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'Los usuarios con este rol tendrán acceso a todo', 'all', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `search_synonyms`
--

CREATE TABLE `search_synonyms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `terms` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) NOT NULL,
  `results` int(11) NOT NULL DEFAULT 0,
  `uses` int(11) NOT NULL DEFAULT 0,
  `redirect_url` varchar(191) DEFAULT NULL,
  `display_in_suggested_terms` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipments`
--

CREATE TABLE `shipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `carrier_code` varchar(191) DEFAULT NULL,
  `carrier_title` varchar(191) DEFAULT NULL,
  `track_number` text DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_address_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_source_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipment_items`
--

CREATE TABLE `shipment_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT 0.0000,
  `base_price` decimal(12,4) DEFAULT 0.0000,
  `total` decimal(12,4) DEFAULT 0.0000,
  `base_total` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `path` varchar(191) NOT NULL,
  `generated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscribers_list`
--

CREATE TABLE `subscribers_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `subscribers_list`
--

INSERT INTO `subscribers_list` (`id`, `email`, `is_subscribed`, `token`, `customer_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'codeveloper137@gmail.com', 1, '6a7a0f4560431', NULL, 1, '2026-08-10 17:49:57', '2026-08-10 17:49:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_categories`
--

CREATE TABLE `tax_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_categories_tax_rates`
--

CREATE TABLE `tax_categories_tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `is_zip` tinyint(1) NOT NULL DEFAULT 0,
  `zip_code` varchar(191) DEFAULT NULL,
  `zip_from` varchar(191) DEFAULT NULL,
  `zip_to` varchar(191) DEFAULT NULL,
  `state` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `tax_rate` decimal(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `theme_customizations`
--

CREATE TABLE `theme_customizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_code` varchar(191) DEFAULT 'default',
  `type` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `theme_customizations`
--

INSERT INTO `theme_customizations` (`id`, `theme_code`, `type`, `name`, `sort_order`, `status`, `channel_id`, `created_at`, `updated_at`) VALUES
(13, 'default', 'image_carousel', 'Home', 1, 1, 1, '2026-08-10 22:58:53', '2026-08-11 01:14:40'),
(14, 'default', 'product_carousel', 'Productos Destacados', 2, 1, 1, '2026-08-10 23:02:49', '2026-08-10 23:03:19'),
(15, 'default', 'services_content', 'Servicios', 3, 0, 1, '2026-08-11 01:16:10', '2026-08-11 01:16:10'),
(16, 'default', 'footer_links', 'Enlaces Pie de Pagina', 3, 0, 1, '2026-08-11 01:17:04', '2026-08-11 01:17:04'),
(17, 'default', 'footer_links', 'Pie de pagina', 5, 1, 1, '2026-08-11 21:42:00', '2026-08-27 04:30:44'),
(18, 'default', 'services_content', 'Servicios', 3, 1, 1, '2026-08-27 04:10:45', '2026-08-27 04:28:54'),
(19, 'default', 'static_content', 'Contenido Estático', 4, 1, 1, '2026-08-27 04:30:24', '2026-08-27 04:33:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `theme_customization_translations`
--

CREATE TABLE `theme_customization_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_customization_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `theme_customization_translations`
--

INSERT INTO `theme_customization_translations` (`id`, `theme_customization_id`, `locale`, `options`) VALUES
(13, 13, 'es', '{\"images\":[{\"title\":\"Escultura\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/escultura\",\"image\":\"storage\\/theme\\/13\\/7zxzduuyR5qEEoErG6KEClvX0LzSb65J1pNnWBtD.webp\"},{\"image\":\"storage\\/theme\\/13\\/ztI49stnj6S8UK777RP7N11GTJ8sLKU9ejXfZCKq.webp\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/pintura\",\"title\":\"Pintura\"},{\"image\":\"storage\\/theme\\/13\\/KamfUcHLq6qqAHdKYUXmfLrzg7r67IclEjFYDWvQ.webp\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/musica\",\"title\":\"M\\u00fasica\"},{\"image\":\"storage\\/theme\\/13\\/BGZxjuTrj6KFdkMIOiQZ5bB4d8mfQ21YYLtyn8uG.webp\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/literatura\",\"title\":\"Literatura\"},{\"image\":\"storage\\/theme\\/13\\/FKJPBUR21OidRhGJhGOGMKdr6U2EV2bSP8hdfkqp.webp\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/cine\",\"title\":\"Cine\"}]}'),
(14, 14, 'es', '{\"title\":\"Productos Destacados\",\"filters\":{\"sort\":\"created_at-desc\",\"limit\":\"12\"}}'),
(15, 17, 'es', '{\"column_1\":[{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/about-us\",\"title\":\"Acerca de Nosotros\",\"sort_order\":\"1\"},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/customer-service\",\"title\":\"Servicio al Cliente\",\"sort_order\":\"2\"},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/novedades\",\"title\":\"Novedades\",\"sort_order\":\"3\"},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/frequently-asked-questions\",\"title\":\"Preguntas Frecuentes\",\"sort_order\":\"4\"}],\"column_2\":[{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/return-policy\",\"title\":\"Pol\\u00edtica de Retorno\",\"sort_order\":\"1\"},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/refund-policy\",\"title\":\"Pol\\u00edtica de Devoluci\\u00f3n\",\"sort_order\":\"2\"},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/payment-policy\",\"title\":\"Pol\\u00edtica de Pago\",\"sort_order\":\"3\"},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/terms-conditions\",\"title\":\"T\\u00e9rminos & Condiciones\",\"sort_order\":\"4\"}],\"column_3\":[{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/shipping-policy\",\"title\":\"Pol\\u00edtica de Env\\u00edo\",\"sort_order\":\"1\"},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/privacy-policy\",\"title\":\"Pol\\u00edtica de Privacidad\",\"sort_order\":\"2\"},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/cookies-policy\",\"title\":\"Pol\\u00edtica de Cookies\",\"sort_order\":\"3\"},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/terms-of-use\",\"title\":\"T\\u00e9rminos de Uso\",\"sort_order\":\"4\"}]}'),
(16, 18, 'es', '{\"services\":[{\"service_icon\":\"fas fa-truck\",\"description\":\"Env\\u00edos seguros y r\\u00e1pidos a nivel nacional. Recibe tus productos en la puerta de tu casa.\",\"title\":\"Env\\u00edo\"},{\"service_icon\":\"fas fa-shield-alt\",\"description\":\"Garantizamos la autenticidad y calidad de cada obra de arte, libro y pieza de nuestro cat\\u00e1logo.\",\"title\":\"Garant\\u00eda y Autenticidad\"},{\"service_icon\":\"fas fa-lock\",\"description\":\"Procesamos tus pagos con los m\\u00e1s altos est\\u00e1ndares de seguridad y cifrado para proteger tus datos.\",\"title\":\"Pago Seguro\"}]}'),
(17, 19, 'es', '{\"html\":\"<div class=\\\"indexarts-banner-container\\\">\\r\\n    <div class=\\\"indexarts-banner-content\\\"> <span class=\\\"indexarts-tag\\\">Galer\\u00eda & Coleccionismo<\\/span>\\r\\n\\r\\n         <h2 class=\\\"indexarts-title\\\">Descubre Obras \\u00danicas y Cl\\u00e1sicos Universales<\\/h2>\\r\\n\\r\\n        <p class=\\\"indexarts-description\\\">Explora nuestra cuidada selecci\\u00f3n de escultura, pintura, literatura, m\\u00fasica y cine. Piezas exclusivas pensadas para los amantes del arte y la cultura.<\\/p> <a href=\\\"\\/search?sort=created_at-desc&limit=12\\\" class=\\\"indexarts-btn\\\">Explorar Cat\\u00e1logo<\\/a>\\r\\n\\r\\n    <\\/div>\\r\\n<\\/div>\",\"css\":\".indexarts-banner-container {\\r\\n    background: linear-gradient(135deg, #1f2937 0%, #111827 100%);\\r\\n    color: #ffffff;\\r\\n    padding: 60px 20px;\\r\\n    border-radius: 12px;\\r\\n    margin: 40px auto;\\r\\n    max-width: 1200px;\\r\\n    text-align: center;\\r\\n    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);\\r\\n}\\r\\n\\r\\n.indexarts-banner-content {\\r\\n    max-width: 750px;\\r\\n    margin: 0 auto;\\r\\n}\\r\\n\\r\\n.indexarts-tag {\\r\\n    display: inline-block;\\r\\n    background-color: rgba(255, 255, 255, 0.1);\\r\\n    color: #f3f4f6;\\r\\n    font-size: 0.875rem;\\r\\n    font-weight: 600;\\r\\n    letter-spacing: 1px;\\r\\n    text-transform: uppercase;\\r\\n    padding: 6px 16px;\\r\\n    border-radius: 20px;\\r\\n    margin-bottom: 16px;\\r\\n    border: 1px solid rgba(255, 255, 255, 0.2);\\r\\n}\\r\\n\\r\\n.indexarts-title {\\r\\n    font-size: 2.25rem;\\r\\n    font-weight: 700;\\r\\n    line-height: 1.2;\\r\\n    margin-bottom: 16px;\\r\\n    color: #ffffff;\\r\\n}\\r\\n\\r\\n.indexarts-description {\\r\\n    font-size: 1.1rem;\\r\\n    line-height: 1.6;\\r\\n    color: #d1d5db;\\r\\n    margin-bottom: 28px;\\r\\n}\\r\\n\\r\\n.indexarts-btn {\\r\\n    display: inline-block;\\r\\n    background-color: #ffffff;\\r\\n    color: #111827;\\r\\n    font-size: 1rem;\\r\\n    font-weight: 600;\\r\\n    padding: 12px 32px;\\r\\n    border-radius: 6px;\\r\\n    text-decoration: none;\\r\\n    transition: all 0.3s ease;\\r\\n}\\r\\n\\r\\n.indexarts-btn:hover {\\r\\n    background-color: #f3f4f6;\\r\\n    transform: translateY(-2px);\\r\\n    box-shadow: 0 4px 12px rgba(255, 255, 255, 0.2);\\r\\n}\\r\\n\\r\\n@media (max-width: 768px) {\\r\\n    .indexarts-banner-container {\\r\\n        padding: 40px 16px;\\r\\n    }\\r\\n    \\r\\n    .indexarts-title {\\r\\n        font-size: 1.75rem;\\r\\n    }\\r\\n    \\r\\n    .indexarts-description {\\r\\n        font-size: 1rem;\\r\\n    }\\r\\n}\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `url_rewrites`
--

CREATE TABLE `url_rewrites` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `request_path` varchar(191) NOT NULL,
  `target_path` varchar(191) NOT NULL,
  `redirect_type` varchar(191) DEFAULT NULL,
  `locale` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `url_rewrites`
--

INSERT INTO `url_rewrites` (`id`, `entity_type`, `request_path`, `target_path`, `redirect_type`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'cms_page', 'cookies', 'cookies-policy', '301', 'es', '2026-08-11 21:54:43', '2026-08-11 21:54:43'),
(3, 'cms_page', 'whats-news', 'whats-new', '301', 'es', '2026-08-26 05:35:29', '2026-08-26 05:35:29'),
(4, 'cms_page', 'faq', 'frequently-asked-questions', '301', 'es', '2026-08-27 03:46:27', '2026-08-27 03:46:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(191) DEFAULT NULL,
  `request` mediumtext DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `referer` mediumtext DEFAULT NULL,
  `languages` text DEFAULT NULL,
  `useragent` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `platform` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `visitable_type` varchar(191) DEFAULT NULL,
  `visitable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(191) DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `visits`
--

INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjRqUVF5eXFFV1BHMmQyakRGUG5WK0E9PSIsInZhbHVlIjoiWDdlWnlsSmROMmhJVFAxYU1DTTY5OTdiL202SkFNN0VNRm1qcko3Mm95c1Q5bExEeUt6dzgxNTZhMVUzamJhVnNLYTVFTWhyeGE2M0RuN2dkZE1XVTdrVHE0TGozQlFtM0JKYUJHN1Y2TXJPQ3dZMWRjM3ppaWdieU9qaWY3QS8iLCJtYWMiOiJhOGVlZmY2MGM0MDhkMGI4MzgyMmEyMDFlZDM1NjM0YTJjODg4NWRmNWFkM2IxNzM5NzY5ZWM1MDc1NzdlNjM1IiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IldINzN3aE1PdTBYWVd3a3FvQ2tsUHc9PSIsInZhbHVlIjoib3I0Wk1yNUNCTGYrTi96WVF4aGVRMW11L0p5cGZoWkZyY3c0a2hQT3ZnUEtHVzQzM2thejJFakJNaUdhQnhrNTBNcXpZZm1zMlRlaWhkV2h3WEpGcURWUmxLaFNxbU1tcmU3VktMdGN1Tm55UHJUOElGenpwYVMyWGhjLzlYYlMiLCJtYWMiOiJlMjhhNTAyYWZiZDhiMDg3NWQ1ZTliZjc3MWIwZDk5YzY1NzZlNmU2Y2Q5ZDk5ZjE2NTU4Njk4NGIzYzZhYjIyIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:08', '2026-08-03 18:10:08'),
(2, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/P5TKQEzIWmWioXyYWgvddqYYiIrDyKBmQI31v1AB.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:30', '2026-08-03 18:10:30'),
(3, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/RCi5vjGt3VoVBMGcwi7iIegZIZuFvL40k99JqAqb.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:31', '2026-08-03 18:10:31'),
(4, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/fqdOsfkNneZZy5mzIjIiXlPqeEgav2s9hFC88LkL.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:32', '2026-08-03 18:10:32'),
(5, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/rweTHOA3MvC9Q8HQowdGnxLCECiDSd6vJg24gVeg.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:33', '2026-08-03 18:10:33'),
(6, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/TenGIXMyP20peVEsca3Poh12R48rWouvpSJxWgpZ.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:35', '2026-08-03 18:10:35'),
(7, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/WhaXhtyj8HLxEr5CpUoYKYZXnh422pUdR7VO0JIJ.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:36', '2026-08-03 18:10:36'),
(8, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/6/SkThj1qEPHppm91ukMsTigEMOSJ8chKxAaZGxQJo.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:37', '2026-08-03 18:10:37'),
(9, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/H9zlshxOrM7iyO3v8dNXs44mg5hSUwCkNpbjXKNm.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:38', '2026-08-03 18:10:38'),
(10, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/4Nqgkzx6qi4A9RYvA7OBGGKqKnP7tXmOXG92g2Mr.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:41', '2026-08-03 18:10:41'),
(11, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/10/gUMgpoSXOwmc3ti6fusc6v1GiAcIQbaxyMST0TQa.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:42', '2026-08-03 18:10:42'),
(12, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/NMJCkHcfMyw6o9eJjskwNPHADMOGsETJJTCqvPEC.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:43', '2026-08-03 18:10:43'),
(13, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/upJZWs9BfIJkcYbWtWxr2gRnbo0tu9qJaLBpZEHg.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InlFWU10UkRHeStIeDVYS2Y1RW5nT1E9PSIsInZhbHVlIjoiVUNNbG5sbzZJaERScFdPa3ZxRllta3pQZWpGL1dURnRhUnhweGlHdXJLMm9BR0tpMXlXc3FMQnpMQnU1bmhiOHhQT0txNnd2RVlmVEpqQUFRcThIeVRocjZQbHhlL2JFS2hnSnFOTlhTTUVyUTJTVG55OHorN1RicERQZkdIYksiLCJtYWMiOiI0ZWI1YjNlNDA4NTExNGNiOTliYTUyOGEyNDZjMjAyMDhlOWNjOGU3OGIyODZjODY4YWE4NGIzYTNiMzc4Y2IzIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IkFITzk5ejhvZjFQZStscElhTmt6SkE9PSIsInZhbHVlIjoiVXh5aTlldFlMa1NyY1p1TW91eC9XUVU2TDZCajZ5L2VGYjhvR0tXb1hud1YrVGYvOVJIMm9wd1NUYXZsK2psVWdDK21QVUNCSm5TTUozUzU0NXZtZWtvL0cwT0tNQzMyenh4NkxlN2ZYYzhrYkl3WldOWWQ3WEZhc1cvek80aXMiLCJtYWMiOiIxNjQ5OTZjY2VjYmQ5NmE0Mjg1YzUxOTE4MDkxMTIxZTIwOTZkZDljYzdlYWRmYWZlYmUxODUwM2NlZjFkMTkwIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:45', '2026-08-03 18:10:45'),
(14, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/D5xWTcXv63qzJw72hA7oNU59vxyXkGxGuWFVvyHg.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjBBZGYrdko4TGgvZUJ1WFpzMk04WGc9PSIsInZhbHVlIjoicmxDeUdmMGRiNWF4RnRucGpUSng5Z2FOSDE1eWIvc0xNc2hrNjY2RzdpMXpmSVlPSUl0SlI3elJjZ2xtVmpLRXA2a2tzQXV6Kytma05uSzlSRUVGRVh3L3lneS84WDQvNjBDTDBMOU1zNnQrZlNBQUtJY3cyaFNCYjhMN0hqT0kiLCJtYWMiOiJhMGE3MmNlMjY2MGQ0YmNkZjQyZDNlMGNkNTY2MjU5MzYxYWNiZGNlMGJjYTVlMTYwMGE1ZjdkOGE5MDM4ODYwIiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IjBKaUVkS0hobTJFRmM0NFB6VHBDbUE9PSIsInZhbHVlIjoic08za09oN2xmK3hWMmtMRHR3QnFneE5lNVBrOTAxT2Y4emtWYnU5RFBCeXlMNlFtejhYWk0rMXgxRy9EN2lUTXdiWEVuUGtmUSt5NURwYTVrOUhuckJ5TmNna2ZpV1lWM3QwVHNUcmlKSHdaMWVjQXRrQlZXTXMvb2lVbmNtbm8iLCJtYWMiOiJiZWI2ZjNjYTkzYTQ0ODVhNWY0NDQyOWE5MDQ1OTcyMGEzYzdlOTUyNTM5NzgwNTc4MzIzOWExNDIxMTI5MDZhIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:10:46', '2026-08-03 18:10:46'),
(15, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/is26MuOp6QqQ8bosdASkSihH22v9IQyLIYUrknHH.webp', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IitkTVNzVFplR2JaUzVqekNlR011OVE9PSIsInZhbHVlIjoiZmVYK3k0MWZHeGNIYk5IOEtqK3FnWFRsaGhpcnNLaXBQcGdKV1FocitnczRDQlh1Um9IeE5Xb280bmR4OXJKcTNzNS9FWXdld29sR3lkTGFsOGNuMG5tZHVJem9XSDdQK0RGcE5uN3RaZGdrZ3F1OWQ1M0ZBUU14ZElabksyd1MiLCJtYWMiOiIzNTRiNDNhNDcyMjdkMDQ3YzFhMGRiMTc4Y2M2ODY2OTE4MzNmMTQyMzNmYWEwY2U2ZTliNDFiNjkxODVlZDg5IiwidGFnIjoiIn0%3D; killavibes_session=eyJpdiI6IjQ3VFV4S09MK3VYVlhzNURLS0pHSUE9PSIsInZhbHVlIjoiMndubkRiTFdjUXhCYmY3WDAyZVBsZkNQM2JoUFNrcHlXeUdVOFdoYjJyZWtJaGFvQTBPbCtma1lsSzFQOEZ3a1U0aFRqQzFaVlMwdG5CQkRHSlJpN2gvVUlxTlo3ZEZPMHNhTkdTTFdGQjdEQjJvNDhFbDl0U2YwRWhWenFDWUsiLCJtYWMiOiI5N2Y1M2Y1NmE3MDI0Zjk2ZjY5MzBjMzc0MzY4NjhkN2M5YTM0MTc3MGYyZDQ4OGVhZTY1N2U4MmNhNDlhNTQ5IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-03 18:11:08', '2026-08-03 18:11:08'),
(16, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[\"es-co\",\"es\",\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.9,en-US;q=0.8,en;q=0.7\"],\"cookie\":[\"killavibes_session=eyJpdiI6Ilo2cEVTeG82SENRQmRsNnIwRmpYUlE9PSIsInZhbHVlIjoiZDJFTU1Lek1QcGpNU095VDg2Q0RuclB5ZVJaSmYzVEVtYjFCcGhZMWtaalBoTHowczJDT3hBYUpPRGlSSW5Xc3pOMmtzb2xPWEhVbHgvZWpnMXZWWEx1UUMyY2J0TmJvanczNFB0ZW1yM3dXa0x4Y1BDR2RMcXVvZVJ4SU51V28iLCJtYWMiOiJlZDA2YWUzZjMyZDAxNzkzMzlhOGI4ZWIwOGE5ZDQwMWQwNmJmNjliNTQ3ZDNiNTU0NTJlOTZmZWFiM2VlNGJmIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6Ijd0cWsraTQ4aEZ6SDdzMmdiVndQWlE9PSIsInZhbHVlIjoialcyZmwxNkZFbUJ5ek1pL3BRb1J3OGVZcXRKaWZPVnFIREovTTBwK2p2My8wU1VFdlB0NVdxTERqeDhsNVlJT0tpU0FSd0cxbzJ0RkVRWlZmc0oxQXltbms1MnhYS3JDb2dTNk56UVFHV1paWWRBVzFDeis3dkI4TUhxeUdTYnAiLCJtYWMiOiIyOTA1ZGNlOWQ3ZDA0NDhjNjQ2MzM5ZTdlZTFiMDY4YjMxMWVjMDM3YzgyZTk0YjIzZGEyNWU4YzFiNzY0ZjQ2IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjhobXNiN1FQdEVPNkZhYkxCMVBxNXc9PSIsInZhbHVlIjoiVkt4bGNlYUtWamRFeFB0RG0wMDd5Y29LN2NFd2RxTUkzKzdtZXIzMHBwTHhzQWVjVDZNU1JBazVxQnFiYXNEbGJxdkxrbFlBakYybDEySzVxN0FsYTZ6VGJHTFFlVDFkYjJoTk00bWU3VmFyZ0tzTkRrVXBleEV2dUoyc0NXZ0YiLCJtYWMiOiIxZWVkMDhlMjc5MTBjMDQ1NmUzYmE2NzNkYmExNGExNjI4NTlhZjllOTYwMTVjZmVjODNiM2IwNmM4MmUzMTAzIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-04 00:34:11', '2026-08-04 00:34:11'),
(17, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:22:54', '2026-08-10 15:22:54'),
(18, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/RCi5vjGt3VoVBMGcwi7iIegZIZuFvL40k99JqAqb.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Indqa3U4OTcvVW9WVk9xOEdRL0tkMkE9PSIsInZhbHVlIjoibTZIYitHMVlpaHNQdjY0dGZkeUpOdngzS0ZlN21LcWN3NktBay9mdGtBS0ExU3FjbUZ4NTZDSHBYZFFNdDJhbW02RUMxNU52MHl3QVVDdGRaVlJ1L1RVNnJucVJsaXM5TEF2bzFtSkRqUTdLUXFoOVdrR1N3ZVFLNlZLT1BSZnMiLCJtYWMiOiJkZmNjMWEyODVmMTUzNGZiMGE3ZTU2NzM3YzZkODM0N2FkNzU2MDA4YWE4YjUyODdiNjJiOTAxZjc2YTlmOGJlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjQvaTd6azBKWHg1S044Y0tybWFTRlE9PSIsInZhbHVlIjoiQXl1OC9PTWFKMVpYeHdmZXZPTnpGaUhsaXgyM2FXRmdwNjRUalk1SlphOUdPTlNYMGk5YUlReFdvSzZKUks0TlBqb3BNSXBqSm9SdVU3T2lZdkNVZW9na1dROUMzMlFucWRRcWJZTGRHT3RkaExOVkhZTGpsRWtmaVhMNUw2eTUiLCJtYWMiOiJkM2YxOTBjNmJkMGY0MmZjMDhjY2NkNGZkMDUxMWE0N2Y4MTc1MzBiZTk2MGU0NTViYTE2YjYzNjQzZDUzY2U0IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:08', '2026-08-10 15:23:08'),
(19, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/fqdOsfkNneZZy5mzIjIiXlPqeEgav2s9hFC88LkL.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Indqa3U4OTcvVW9WVk9xOEdRL0tkMkE9PSIsInZhbHVlIjoibTZIYitHMVlpaHNQdjY0dGZkeUpOdngzS0ZlN21LcWN3NktBay9mdGtBS0ExU3FjbUZ4NTZDSHBYZFFNdDJhbW02RUMxNU52MHl3QVVDdGRaVlJ1L1RVNnJucVJsaXM5TEF2bzFtSkRqUTdLUXFoOVdrR1N3ZVFLNlZLT1BSZnMiLCJtYWMiOiJkZmNjMWEyODVmMTUzNGZiMGE3ZTU2NzM3YzZkODM0N2FkNzU2MDA4YWE4YjUyODdiNjJiOTAxZjc2YTlmOGJlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjQvaTd6azBKWHg1S044Y0tybWFTRlE9PSIsInZhbHVlIjoiQXl1OC9PTWFKMVpYeHdmZXZPTnpGaUhsaXgyM2FXRmdwNjRUalk1SlphOUdPTlNYMGk5YUlReFdvSzZKUks0TlBqb3BNSXBqSm9SdVU3T2lZdkNVZW9na1dROUMzMlFucWRRcWJZTGRHT3RkaExOVkhZTGpsRWtmaVhMNUw2eTUiLCJtYWMiOiJkM2YxOTBjNmJkMGY0MmZjMDhjY2NkNGZkMDUxMWE0N2Y4MTc1MzBiZTk2MGU0NTViYTE2YjYzNjQzZDUzY2U0IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:10', '2026-08-10 15:23:10'),
(20, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/P5TKQEzIWmWioXyYWgvddqYYiIrDyKBmQI31v1AB.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Indqa3U4OTcvVW9WVk9xOEdRL0tkMkE9PSIsInZhbHVlIjoibTZIYitHMVlpaHNQdjY0dGZkeUpOdngzS0ZlN21LcWN3NktBay9mdGtBS0ExU3FjbUZ4NTZDSHBYZFFNdDJhbW02RUMxNU52MHl3QVVDdGRaVlJ1L1RVNnJucVJsaXM5TEF2bzFtSkRqUTdLUXFoOVdrR1N3ZVFLNlZLT1BSZnMiLCJtYWMiOiJkZmNjMWEyODVmMTUzNGZiMGE3ZTU2NzM3YzZkODM0N2FkNzU2MDA4YWE4YjUyODdiNjJiOTAxZjc2YTlmOGJlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjQvaTd6azBKWHg1S044Y0tybWFTRlE9PSIsInZhbHVlIjoiQXl1OC9PTWFKMVpYeHdmZXZPTnpGaUhsaXgyM2FXRmdwNjRUalk1SlphOUdPTlNYMGk5YUlReFdvSzZKUks0TlBqb3BNSXBqSm9SdVU3T2lZdkNVZW9na1dROUMzMlFucWRRcWJZTGRHT3RkaExOVkhZTGpsRWtmaVhMNUw2eTUiLCJtYWMiOiJkM2YxOTBjNmJkMGY0MmZjMDhjY2NkNGZkMDUxMWE0N2Y4MTc1MzBiZTk2MGU0NTViYTE2YjYzNjQzZDUzY2U0IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:11', '2026-08-10 15:23:11'),
(21, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/WhaXhtyj8HLxEr5CpUoYKYZXnh422pUdR7VO0JIJ.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Indqa3U4OTcvVW9WVk9xOEdRL0tkMkE9PSIsInZhbHVlIjoibTZIYitHMVlpaHNQdjY0dGZkeUpOdngzS0ZlN21LcWN3NktBay9mdGtBS0ExU3FjbUZ4NTZDSHBYZFFNdDJhbW02RUMxNU52MHl3QVVDdGRaVlJ1L1RVNnJucVJsaXM5TEF2bzFtSkRqUTdLUXFoOVdrR1N3ZVFLNlZLT1BSZnMiLCJtYWMiOiJkZmNjMWEyODVmMTUzNGZiMGE3ZTU2NzM3YzZkODM0N2FkNzU2MDA4YWE4YjUyODdiNjJiOTAxZjc2YTlmOGJlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjQvaTd6azBKWHg1S044Y0tybWFTRlE9PSIsInZhbHVlIjoiQXl1OC9PTWFKMVpYeHdmZXZPTnpGaUhsaXgyM2FXRmdwNjRUalk1SlphOUdPTlNYMGk5YUlReFdvSzZKUks0TlBqb3BNSXBqSm9SdVU3T2lZdkNVZW9na1dROUMzMlFucWRRcWJZTGRHT3RkaExOVkhZTGpsRWtmaVhMNUw2eTUiLCJtYWMiOiJkM2YxOTBjNmJkMGY0MmZjMDhjY2NkNGZkMDUxMWE0N2Y4MTc1MzBiZTk2MGU0NTViYTE2YjYzNjQzZDUzY2U0IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:12', '2026-08-10 15:23:12'),
(22, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/TenGIXMyP20peVEsca3Poh12R48rWouvpSJxWgpZ.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Indqa3U4OTcvVW9WVk9xOEdRL0tkMkE9PSIsInZhbHVlIjoibTZIYitHMVlpaHNQdjY0dGZkeUpOdngzS0ZlN21LcWN3NktBay9mdGtBS0ExU3FjbUZ4NTZDSHBYZFFNdDJhbW02RUMxNU52MHl3QVVDdGRaVlJ1L1RVNnJucVJsaXM5TEF2bzFtSkRqUTdLUXFoOVdrR1N3ZVFLNlZLT1BSZnMiLCJtYWMiOiJkZmNjMWEyODVmMTUzNGZiMGE3ZTU2NzM3YzZkODM0N2FkNzU2MDA4YWE4YjUyODdiNjJiOTAxZjc2YTlmOGJlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjQvaTd6azBKWHg1S044Y0tybWFTRlE9PSIsInZhbHVlIjoiQXl1OC9PTWFKMVpYeHdmZXZPTnpGaUhsaXgyM2FXRmdwNjRUalk1SlphOUdPTlNYMGk5YUlReFdvSzZKUks0TlBqb3BNSXBqSm9SdVU3T2lZdkNVZW9na1dROUMzMlFucWRRcWJZTGRHT3RkaExOVkhZTGpsRWtmaVhMNUw2eTUiLCJtYWMiOiJkM2YxOTBjNmJkMGY0MmZjMDhjY2NkNGZkMDUxMWE0N2Y4MTc1MzBiZTk2MGU0NTViYTE2YjYzNjQzZDUzY2U0IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:14', '2026-08-10 15:23:14'),
(23, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/5/rweTHOA3MvC9Q8HQowdGnxLCECiDSd6vJg24gVeg.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Indqa3U4OTcvVW9WVk9xOEdRL0tkMkE9PSIsInZhbHVlIjoibTZIYitHMVlpaHNQdjY0dGZkeUpOdngzS0ZlN21LcWN3NktBay9mdGtBS0ExU3FjbUZ4NTZDSHBYZFFNdDJhbW02RUMxNU52MHl3QVVDdGRaVlJ1L1RVNnJucVJsaXM5TEF2bzFtSkRqUTdLUXFoOVdrR1N3ZVFLNlZLT1BSZnMiLCJtYWMiOiJkZmNjMWEyODVmMTUzNGZiMGE3ZTU2NzM3YzZkODM0N2FkNzU2MDA4YWE4YjUyODdiNjJiOTAxZjc2YTlmOGJlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjQvaTd6azBKWHg1S044Y0tybWFTRlE9PSIsInZhbHVlIjoiQXl1OC9PTWFKMVpYeHdmZXZPTnpGaUhsaXgyM2FXRmdwNjRUalk1SlphOUdPTlNYMGk5YUlReFdvSzZKUks0TlBqb3BNSXBqSm9SdVU3T2lZdkNVZW9na1dROUMzMlFucWRRcWJZTGRHT3RkaExOVkhZTGpsRWtmaVhMNUw2eTUiLCJtYWMiOiJkM2YxOTBjNmJkMGY0MmZjMDhjY2NkNGZkMDUxMWE0N2Y4MTc1MzBiZTk2MGU0NTViYTE2YjYzNjQzZDUzY2U0IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:15', '2026-08-10 15:23:15'),
(24, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/6/SkThj1qEPHppm91ukMsTigEMOSJ8chKxAaZGxQJo.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Indqa3U4OTcvVW9WVk9xOEdRL0tkMkE9PSIsInZhbHVlIjoibTZIYitHMVlpaHNQdjY0dGZkeUpOdngzS0ZlN21LcWN3NktBay9mdGtBS0ExU3FjbUZ4NTZDSHBYZFFNdDJhbW02RUMxNU52MHl3QVVDdGRaVlJ1L1RVNnJucVJsaXM5TEF2bzFtSkRqUTdLUXFoOVdrR1N3ZVFLNlZLT1BSZnMiLCJtYWMiOiJkZmNjMWEyODVmMTUzNGZiMGE3ZTU2NzM3YzZkODM0N2FkNzU2MDA4YWE4YjUyODdiNjJiOTAxZjc2YTlmOGJlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjQvaTd6azBKWHg1S044Y0tybWFTRlE9PSIsInZhbHVlIjoiQXl1OC9PTWFKMVpYeHdmZXZPTnpGaUhsaXgyM2FXRmdwNjRUalk1SlphOUdPTlNYMGk5YUlReFdvSzZKUks0TlBqb3BNSXBqSm9SdVU3T2lZdkNVZW9na1dROUMzMlFucWRRcWJZTGRHT3RkaExOVkhZTGpsRWtmaVhMNUw2eTUiLCJtYWMiOiJkM2YxOTBjNmJkMGY0MmZjMDhjY2NkNGZkMDUxMWE0N2Y4MTc1MzBiZTk2MGU0NTViYTE2YjYzNjQzZDUzY2U0IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:16', '2026-08-10 15:23:16'),
(25, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/H9zlshxOrM7iyO3v8dNXs44mg5hSUwCkNpbjXKNm.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InhFSWkwQVIrcUtuQUJYNlVrS1R5bXc9PSIsInZhbHVlIjoiWXQwNFpPQzRyRUZLZHk1SjZPdk5vV2tBbkZHOS83QmhtMzcwWU9od1AzaWlRUFRoRzdJNnBCTlRPV2RvRDJLNWljeFpva1B3MGZNS0R0czY5RTAwNG41YURON1l4TVpzeU1paGdrNXBNOVdLbGFQV1BYVHBRMHNjQUcxWDhwS0YiLCJtYWMiOiJhMTIwYTUwYTAzYTYwODk2YWYyZDEyYzI5YmI5MWVjMjdlY2MxMzZkNTM1YmRmYmNkNDVmMjEwMDhhZjk3MjFlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6ImZQTEF5VkNCWU5maC9GQ2JNbGhBTUE9PSIsInZhbHVlIjoidkRKSFJ4NDZZMU1XdFRZcUN2YkxhaktYS3ZKYWEwdkoxY2dXTWRlUTVuRnl4WHVNRHh1bk8rUklTNzkyZ0o3bytPMXhFQ0o2THg4b2pUcGhjWndCeU1PNGx5ZmpGZFROUVFXOWJSUmxmb0RocVgzc2RpcXF0akdqTldjR0tkdW8iLCJtYWMiOiIyNGViNWMyOWEzMGNmYTdlZTc1ODRjNGNhYzE5ZDBlOWZiODhmYzI5ZDNjYzY0ODU0NmJmMzhhZTZlZjJhMTc1IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:19', '2026-08-10 15:23:19'),
(26, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/4Nqgkzx6qi4A9RYvA7OBGGKqKnP7tXmOXG92g2Mr.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InhFSWkwQVIrcUtuQUJYNlVrS1R5bXc9PSIsInZhbHVlIjoiWXQwNFpPQzRyRUZLZHk1SjZPdk5vV2tBbkZHOS83QmhtMzcwWU9od1AzaWlRUFRoRzdJNnBCTlRPV2RvRDJLNWljeFpva1B3MGZNS0R0czY5RTAwNG41YURON1l4TVpzeU1paGdrNXBNOVdLbGFQV1BYVHBRMHNjQUcxWDhwS0YiLCJtYWMiOiJhMTIwYTUwYTAzYTYwODk2YWYyZDEyYzI5YmI5MWVjMjdlY2MxMzZkNTM1YmRmYmNkNDVmMjEwMDhhZjk3MjFlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6ImZQTEF5VkNCWU5maC9GQ2JNbGhBTUE9PSIsInZhbHVlIjoidkRKSFJ4NDZZMU1XdFRZcUN2YkxhaktYS3ZKYWEwdkoxY2dXTWRlUTVuRnl4WHVNRHh1bk8rUklTNzkyZ0o3bytPMXhFQ0o2THg4b2pUcGhjWndCeU1PNGx5ZmpGZFROUVFXOWJSUmxmb0RocVgzc2RpcXF0akdqTldjR0tkdW8iLCJtYWMiOiIyNGViNWMyOWEzMGNmYTdlZTc1ODRjNGNhYzE5ZDBlOWZiODhmYzI5ZDNjYzY0ODU0NmJmMzhhZTZlZjJhMTc1IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:20', '2026-08-10 15:23:20');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(27, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/10/gUMgpoSXOwmc3ti6fusc6v1GiAcIQbaxyMST0TQa.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InhFSWkwQVIrcUtuQUJYNlVrS1R5bXc9PSIsInZhbHVlIjoiWXQwNFpPQzRyRUZLZHk1SjZPdk5vV2tBbkZHOS83QmhtMzcwWU9od1AzaWlRUFRoRzdJNnBCTlRPV2RvRDJLNWljeFpva1B3MGZNS0R0czY5RTAwNG41YURON1l4TVpzeU1paGdrNXBNOVdLbGFQV1BYVHBRMHNjQUcxWDhwS0YiLCJtYWMiOiJhMTIwYTUwYTAzYTYwODk2YWYyZDEyYzI5YmI5MWVjMjdlY2MxMzZkNTM1YmRmYmNkNDVmMjEwMDhhZjk3MjFlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6ImZQTEF5VkNCWU5maC9GQ2JNbGhBTUE9PSIsInZhbHVlIjoidkRKSFJ4NDZZMU1XdFRZcUN2YkxhaktYS3ZKYWEwdkoxY2dXTWRlUTVuRnl4WHVNRHh1bk8rUklTNzkyZ0o3bytPMXhFQ0o2THg4b2pUcGhjWndCeU1PNGx5ZmpGZFROUVFXOWJSUmxmb0RocVgzc2RpcXF0akdqTldjR0tkdW8iLCJtYWMiOiIyNGViNWMyOWEzMGNmYTdlZTc1ODRjNGNhYzE5ZDBlOWZiODhmYzI5ZDNjYzY0ODU0NmJmMzhhZTZlZjJhMTc1IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:21', '2026-08-10 15:23:21'),
(28, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/NMJCkHcfMyw6o9eJjskwNPHADMOGsETJJTCqvPEC.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlpHS3B0TWVDMVdHSFVHNkxud3JUUXc9PSIsInZhbHVlIjoiVGFZLzE2ZnV0dnpUajNSWXU2UGc3YUlXRVl0bkFpMHd5ZHpJeFgwdE1jKzBQMXZlWUVYclBQTU5GR0R1bjV1c29rR0c4enlOZC9Md0hZbHVXR1U3TU1KbzhuRlJ0QmprZVdHbWQrRlpGUzVvY2dTWWZLdDhUeU91aFZnODVBemEiLCJtYWMiOiI3NTEzMzUxZGJjMTE1NmE4ODE1MWJkYThiNmI3Yjg0YjVmNDM3ZDk1YjdiM2YxYzExNmY2N2RjMjE3OGFhMDFjIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IlhZK205NFBJZzhuNCt2dDNZdTVob3c9PSIsInZhbHVlIjoieEsxYisxbEF4TTdEVjd2MXhZa0RhMmpXR0hKUFp6MVN4aWxEb2thanZYVXY2dE5LVklpaUxZSEcwQzBxNm9ld3Y0WkRYMURSazhLNmJCazVPM1FCSnl1cFoxU0dXKzVPV2plYks0Q0RhZkhqRHJHUHFpdGlVOWl3UHZiRzVxOXUiLCJtYWMiOiJlMDY5YjFmNjYyYWZkYWRkZjU0M2IzNzFmNTY1MTg5ZmE0ZmJhZmVlM2ExYTI5MGE0N2ExMGEyY2Q2YjViNWFmIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:23', '2026-08-10 15:23:23'),
(29, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/upJZWs9BfIJkcYbWtWxr2gRnbo0tu9qJaLBpZEHg.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlpHS3B0TWVDMVdHSFVHNkxud3JUUXc9PSIsInZhbHVlIjoiVGFZLzE2ZnV0dnpUajNSWXU2UGc3YUlXRVl0bkFpMHd5ZHpJeFgwdE1jKzBQMXZlWUVYclBQTU5GR0R1bjV1c29rR0c4enlOZC9Md0hZbHVXR1U3TU1KbzhuRlJ0QmprZVdHbWQrRlpGUzVvY2dTWWZLdDhUeU91aFZnODVBemEiLCJtYWMiOiI3NTEzMzUxZGJjMTE1NmE4ODE1MWJkYThiNmI3Yjg0YjVmNDM3ZDk1YjdiM2YxYzExNmY2N2RjMjE3OGFhMDFjIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IlhZK205NFBJZzhuNCt2dDNZdTVob3c9PSIsInZhbHVlIjoieEsxYisxbEF4TTdEVjd2MXhZa0RhMmpXR0hKUFp6MVN4aWxEb2thanZYVXY2dE5LVklpaUxZSEcwQzBxNm9ld3Y0WkRYMURSazhLNmJCazVPM1FCSnl1cFoxU0dXKzVPV2plYks0Q0RhZkhqRHJHUHFpdGlVOWl3UHZiRzVxOXUiLCJtYWMiOiJlMDY5YjFmNjYyYWZkYWRkZjU0M2IzNzFmNTY1MTg5ZmE0ZmJhZmVlM2ExYTI5MGE0N2ExMGEyY2Q2YjViNWFmIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:24', '2026-08-10 15:23:24'),
(30, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/D5xWTcXv63qzJw72hA7oNU59vxyXkGxGuWFVvyHg.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlpHS3B0TWVDMVdHSFVHNkxud3JUUXc9PSIsInZhbHVlIjoiVGFZLzE2ZnV0dnpUajNSWXU2UGc3YUlXRVl0bkFpMHd5ZHpJeFgwdE1jKzBQMXZlWUVYclBQTU5GR0R1bjV1c29rR0c4enlOZC9Md0hZbHVXR1U3TU1KbzhuRlJ0QmprZVdHbWQrRlpGUzVvY2dTWWZLdDhUeU91aFZnODVBemEiLCJtYWMiOiI3NTEzMzUxZGJjMTE1NmE4ODE1MWJkYThiNmI3Yjg0YjVmNDM3ZDk1YjdiM2YxYzExNmY2N2RjMjE3OGFhMDFjIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IlhZK205NFBJZzhuNCt2dDNZdTVob3c9PSIsInZhbHVlIjoieEsxYisxbEF4TTdEVjd2MXhZa0RhMmpXR0hKUFp6MVN4aWxEb2thanZYVXY2dE5LVklpaUxZSEcwQzBxNm9ld3Y0WkRYMURSazhLNmJCazVPM1FCSnl1cFoxU0dXKzVPV2plYks0Q0RhZkhqRHJHUHFpdGlVOWl3UHZiRzVxOXUiLCJtYWMiOiJlMDY5YjFmNjYyYWZkYWRkZjU0M2IzNzFmNTY1MTg5ZmE0ZmJhZmVlM2ExYTI5MGE0N2ExMGEyY2Q2YjViNWFmIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:27', '2026-08-10 15:23:27'),
(31, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/is26MuOp6QqQ8bosdASkSihH22v9IQyLIYUrknHH.webp', 'http://127.0.0.1:8000/', '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not\\/A)Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"148\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlpHS3B0TWVDMVdHSFVHNkxud3JUUXc9PSIsInZhbHVlIjoiVGFZLzE2ZnV0dnpUajNSWXU2UGc3YUlXRVl0bkFpMHd5ZHpJeFgwdE1jKzBQMXZlWUVYclBQTU5GR0R1bjV1c29rR0c4enlOZC9Md0hZbHVXR1U3TU1KbzhuRlJ0QmprZVdHbWQrRlpGUzVvY2dTWWZLdDhUeU91aFZnODVBemEiLCJtYWMiOiI3NTEzMzUxZGJjMTE1NmE4ODE1MWJkYThiNmI3Yjg0YjVmNDM3ZDk1YjdiM2YxYzExNmY2N2RjMjE3OGFhMDFjIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IlhZK205NFBJZzhuNCt2dDNZdTVob3c9PSIsInZhbHVlIjoieEsxYisxbEF4TTdEVjd2MXhZa0RhMmpXR0hKUFp6MVN4aWxEb2thanZYVXY2dE5LVklpaUxZSEcwQzBxNm9ld3Y0WkRYMURSazhLNmJCazVPM1FCSnl1cFoxU0dXKzVPV2plYks0Q0RhZkhqRHJHUHFpdGlVOWl3UHZiRzVxOXUiLCJtYWMiOiJlMDY5YjFmNjYyYWZkYWRkZjU0M2IzNzFmNTY1MTg5ZmE0ZmJhZmVlM2ExYTI5MGE0N2ExMGEyY2Q2YjViNWFmIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 15:23:29', '2026-08-10 15:23:29'),
(32, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[\"es-co\",\"es\",\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.9,en-US;q=0.8,en;q=0.7\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjBQK2FDV2wzSnNteXRFa3A0SHl1U3c9PSIsInZhbHVlIjoiMTdvT2xHaCtzTjNkazhSc2V0QS82QmZ4SFBNdXRrRnZNTTlMUXFXSXB6NCtHU2c1czEwRUk3TGkzMCt4aDlyb2dEZ1Q1TjVNRUY3N056VjNWdWRvZWZFWTV0NDNDWkV1UkRPOTBzcGRqemN1K29yeFI1OGNGaGZTcmxOU2NRaksiLCJtYWMiOiJiYzJjOTIzMWYwNjU1M2Q3MDQzM2M4M2RiNWJiYTNlNmRhZjA1YWU4OGMwMzA2MjkxYmMzNGI3MmY5YzJmMWIwIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IkZ5NGRzSU1YeU5ZNjk4ak8vRVdEc2c9PSIsInZhbHVlIjoia1FlL3pVaUhxMWZVNHNnUE1QSVgxRzA2c0RsdFl3L05tckI0b2ZqQ1Z5dURjaE0vTmFmdXM4c201T0VrT1E5OUF3bWJFbTl0K2ZzcDM5RjB4ZnB3V0kyTjlBQVdhVXFZOVdqdU1ZUE9sSjMvejhWTklsTTdNT09MZjREbXJuQzciLCJtYWMiOiIwM2NlMDVjMWQ1NmQxOWNlNDAwZDk2MWQzNmUxZGQ1ZGI2ZDVkYWQ0OGM1MmVkY2NjYzE5MmUwOWQxMmFiYWJjIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 16:51:41', '2026-08-10 16:51:41'),
(33, 'GET', '[]', 'http://127.0.0.1:8000/storage/configuration/eDcwO57AkKwi42U7V560fWkbNaiidMqfdTUzjrVA.jpg', 'http://127.0.0.1:8000/admin/configuration/general/design', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/configuration\\/general\\/design\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlJZcFpUQSsyZGV1WEdNSVJZTTN0NWc9PSIsInZhbHVlIjoiaS9aTU1sZ1RtcmQ5Zit0aG9NUEEyZFFnenowMndQODVZeXVNaThBOXRKYndBaGVaV2w4eHkrcWVRNlI4VUZmOTZxUFhtNzdkUksxazNQV2RNNnJJWmlUVkw3SUpyZVA4bEhDNXAzdE1Edy8yaCszTXhVOUZ6dkhsNm5SOXo0T1MiLCJtYWMiOiIxYWNmOTA0NmUxNzQxM2M5NjQ2NjE2MTllZThiYjZkOGExOTlhMDMzNzk3ZjJlZDFmMDIxMzYzNjEyZjBhNzNhIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6ImdJeWFUVzhpWUR4ME42bUxvWXlhOHc9PSIsInZhbHVlIjoiaVBKYzRMZ1lvUmU1Tm9MOFoyV0lxdkh5bUtZNlY1dFdCc3ZJbWt1cjMra3JMdWY1MCt2dFFIcGVDaWU1S0grZk1PUW5kd1Y2b0R6dHpneUZlNTN3UVhuOG9JRjNpdXd4M3BHS29vWEpVV0pHSFcreTFuOU1xVnU1SGxnM21ET2siLCJtYWMiOiJiNzAwYjgxYmM2MDYwZjJmZmMxYzQ3ZDYxNWVjZTRmYTU3MDQ0MjkyNmVkNTg0ZGU5ZTk4MDRkMmRmYTEyYjJiIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 16:55:27', '2026-08-10 16:55:27'),
(34, 'GET', '[]', 'http://127.0.0.1:8000/favicon.ico', 'http://127.0.0.1:8000/admin/configuration/general/design', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/configuration\\/general\\/design\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImpPWnZxa1QyUUhtNUIwQk1rd2Q4Mnc9PSIsInZhbHVlIjoiMVV3d0wyY3VJZ0FmakgzeEM5bkNyeTljOE5TZitXYTNpM2ZqaHB0NjhGYUREQ1lWbVA0WTBwQjdpU3pwdElGcTl4aVM1UC9uN3NNakZwWHdoc2pTT2pJZHFBR2l4SDZBWW5IdGFGU2dUSnBwdGhlL1lKQ05qSXJZaDh0QUdWTUMiLCJtYWMiOiI2ODkzOGExNDQ1MTQxZGI5YTgxN2Y2OGRhOWI4OGYzMGVlNmY1YTNkYzBmZGRhOTdmYjVmODQzOTY4YmE0ODRhIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6ImJraUhXMnlCa0NtR3NiazgvN1R3U3c9PSIsInZhbHVlIjoiUThjUGlldjQzTnF5UkkwZGZHczFPV0E5bGF5SnJRd2pSQ1ByeXc1bHZJL1J1dUI2Yk5BaTNaWDlyemtGZFFoVW01V010SllrYWZjTEpJdU5vWkowUzhDQkhvTmVFa2hsajZIL1l5Mld3eHU5aDNUVHAxTnFqMEd5Y1RzclBxaVgiLCJtYWMiOiJlNWRlMWZmODliNWVhYTRiNzE2MjBiOTQ4MzVlN2FiMTE0NzAxZmQzNjU3NDBkMTJlNWQzOTc3YWY3ZjQxYzE5IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 16:55:51', '2026-08-10 16:55:51'),
(35, 'GET', '[]', 'http://127.0.0.1:8000/storage/configuration/GDzaoGaZY6zESQU1g46RHCdy75pAg6mgiuqFBAYT.jpg', 'http://127.0.0.1:8000/admin/configuration/general/design', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/configuration\\/general\\/design\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlpTRkVkMFdGWThTTmRaei9vTWtDanc9PSIsInZhbHVlIjoiVFI3NGx1MnBCQWdUSHZGWTdSTnQ4RUpPZVBxYjdkbnR6bDIwelhLbEJRaE5vTG5GbCtlTWtvcUVsVXR1aE9LSllLdUFtYmYyVkJ2eGlHQWVnQjFHUlFXNUR5dGRJbnQxV2JIZ0Y5RG10SVE3SHZodlc3UnFOemhyVUd0QTZrazUiLCJtYWMiOiI2Y2IzMzUzYWUzNzdkOTQxMzNlMzhlYmUwZTJkYTFlYjFiMmI4NTliZDA0YTRmMjQzNWI3YzkyY2I3N2ZkMTFiIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjJpVWxQREhNd2FnaW5XdHJwVHNWMlE9PSIsInZhbHVlIjoiK2c2cFpwMUJPMlM4SGZZeG00U3hTTGdNYVhkcGtOOFBuaks4ZWQ3OENrV1JCZjJEL0lRdTh1SU9va0xHcTBxeVhmZTFDa0xnTXM0ZUZTa3kwcEQ5ajI2aEQ3MTk2K2tyZVJpOGJMSkFtdzdHOUZMZUxsOHEyaGovaHQzSXh1S2MiLCJtYWMiOiJjMTYwYWEwYmU1ZGI5YzlkMzQ4NmJlNTViMzM1MjQ1N2YxNjhmOTZkY2Q0YzRlMGUxZmJjZjRjMWY2ZjQyOWNhIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 16:56:14', '2026-08-10 16:56:14'),
(36, 'GET', '[]', 'http://127.0.0.1:8000/storage/configuration/nopW6mpS5rSFzgKlKwYyYgroyF3tWFgNNDCRMUW9.jpg', 'http://127.0.0.1:8000/admin/configuration/general/design', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/configuration\\/general\\/design\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IitiUUVkMURVdG1zclpmVC9ZNUxIUkE9PSIsInZhbHVlIjoiV0JGUUpOa2J2Rm5iakhSUG15VXE5SDRzQXhKZi9VUUNmKy9CdHRPYjk4VXpJWU5aeFF5ZzV3RlhDVVE0MmhSTjdIM0ZDTERZN25CNFM4RWFQNXlidEVTQWE5S0RVZVlLcm52VW0yQlQvUmpETnJrUnFwcVhiQ0xZM0YvcitHSm0iLCJtYWMiOiI3MDNjNzZkYTM5ZDljMWY3YjQxYWI1MDMyZGU3YTY2MzVkNzYyMWEzMjE5ZTljOGNmMzUyMzJhZTk1YTIzOWU5IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6InhvT0x2aVYyVnZLRk1odk5qNnZlZ3c9PSIsInZhbHVlIjoiTk55RTR4REtqb2tmRTBGckZPaEZwNmtyd2gwOWV1V1VsZWV1RUFMWjFnSU9KbFJ3N2RGWjV5U0psNURBcHBkUDdvelNROW1xV0V3RVBrZEcvM0dJM3FKTFJpTzl1NGUxRFFKN3NMdldjMnNqZXptRk1lOHlIUDJ6cHp5Rm9nRUsiLCJtYWMiOiI5ZjMwNGVhNmQxNjAwNjNlNjM2OGVlZDU1YjE3YTliMGIxZjdjNzUzYzRiYmIxOGUyZWIxMTkwZWEyZTZmNTI2IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 16:56:17', '2026-08-10 16:56:17'),
(37, 'GET', '[]', 'http://127.0.0.1:8000/themes/shop/default/build/assets/logo.jpg', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImlHblcyZjB1Q1Zmd09NMWdYZm9tV1E9PSIsInZhbHVlIjoibHQxSXdBYjFMZVdLZkRGd1FDdUJFeS9IQjIzN05WOVNnTnJqaGV0bm8wc0JaaGtya0MxNk5xYXg0andBejRXQjJ3VUFYSlh1eFUwVjJOci9OMTdnT1RUUWRnbUVpOE4vMXV6bmhxc3REMWowWGhGSFVBSnZWNDU1NVVZSVFWVWwiLCJtYWMiOiI4ZDFjOTcwZDU3M2RiMzUwZmE1NjdjYzAxYjVjYWVmZjk5YjEyMWEwNWJlZTMzMzg0NzRhMGQ0M2YxYjNiMTAxIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6Ims0cGlHQ3Q2MFF2Q3E5V3pJUHY3NlE9PSIsInZhbHVlIjoiQTE3KzlZZklVQmFybXBJMTRhc1lGNXdCVS9uSERFTmM5RFVVeHlLU1p5REFHR1pjcURVQ2dQMHlIWWlvK2t2SVExenhMamNnbXU4dTNXazczVXQrWTlyODJIVFh5MzdUdFE0dXF2NmtWeDM4SUpEMjAvY3FKaEtPbjdrOFlIMTgiLCJtYWMiOiI0YTk4N2YxOWFhZmMxNDYzNmNmZjc0MTJjYWIwNTZjOGJmNDA1MmUzOWIyMDliMDIwY2MzMDFkYTczNDU3MzQyIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 18:09:37', '2026-08-10 18:09:37'),
(38, 'GET', '[]', 'http://127.0.0.1:8000/themes/shop/default/build/assets/logo.svg', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlBRVHhic244YmNSNGEyWU1CYjArWUE9PSIsInZhbHVlIjoiRk1VZGJlOXBMV0RRTHZFR1hZZHEzNlNGR25QcEd0aTA5KzBoT3RwMDlHbTZTY1MyWitFOEp1b0thY1M1TDRvMWQ2czBHYXNmVWZ0SWpUUDlibHFEcTM1U2NudFJnOFlxdW1mSjhaa1M0c29vY3FlVFg0UGRJMTNUR0VIWWhlVGsiLCJtYWMiOiJmZWI2NDY2OWM3ZGQyNjIzNTE3ZDcxZGE4YmRhMjkwMGFhNzU0ZTliM2ExZTBjZTlhYzM3ODc2MWE3NjA5ZTJjIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IkpUZCtqVU4vUHlkNFcwb2NXTWx3clE9PSIsInZhbHVlIjoic1ZNWlFoRmpZeWdPVStaKzQ5SHlyb3pVVEtwdFpIbmNRbENvUVVtNFhpZXI4RUVTVzdzNW9XQmtSUkZCNjVDTktLSUNTTzdYK0dENUJuaHlOMDVFdEdIdHZKR1NkaWtrMXd0RW5nR2ptaU0rSisxbUN1VlVFd0pqNzIxU3Y1cVkiLCJtYWMiOiI1ZDViN2MzZTFjMDc4NWI2MjQwMzFjZDU3Y2I5YWMxZTI0MWIyN2Y3M2IyN2ExZjA1ZDg0NGI2NDM5OWVjYzM1IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 18:11:45', '2026-08-10 18:11:45'),
(39, 'GET', '[]', 'http://127.0.0.1:8000/storage/configuration/cR6Xn4eCLwcJ46A2ETUlEx3yiBuXRIoQUrE9twh7.svg', 'http://127.0.0.1:8000/admin/configuration/general/design', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/configuration\\/general\\/design\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InpGWEhMcGNic01nYUFkMmpLMXR6U3c9PSIsInZhbHVlIjoiREpUNnFhZHUzY0hOYmlTN1JjVnBmMzV3dGhOZW5ZUzl5THNMaVBaYjBwMWxwRERiN2N5TGhReW5HVnlKYzNaZDczNTQrV21abDhtZW9ZbmRaRTZnM3VwWjQrUXRudW0yd3UvY1haelU0QzRERzF3UWs5RTN3OE1wRVNTeGljSTciLCJtYWMiOiJjZDc5OTQwM2FkMWFjMTNlYjRkMjJlZjM3OGZhZWI0NmI3NjcwNmFiMzdkOTJjM2YzNjFiZmFjMWRkMzM5MmFmIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6InJPRWlFdC9tTUgzTWhKRE0ydU5VN0E9PSIsInZhbHVlIjoid01ydWhsTk93R01OK0R3VUFrVVB6YkNyWkZiNzN5dWdTSFA1RFRZT1VGUVBjbFEreXVpQStkMmp5dGp4OWN3dDBncFExcWdxcksxL0J6ajFaaEk4V3FVaEY0QXAwUU1OYzl1R3BzeExzN3Y4RXdZUmVFM21IQXlZRjQwNys5bkkiLCJtYWMiOiJkMjYxZmM5YmQzNDEzNTU3ZDFkYTRkODc4YzVhMDQ4ODI1ZGJkMDBiN2M1OWY2OGRhNjY2YzNiZTgxYzk2OTI3IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 18:14:58', '2026-08-10 18:14:58'),
(40, 'GET', '[]', 'http://127.0.0.1:8000/storage/configuration/rmGpgD5d0eX7FNsIYEMATCUjTcYRdienQjfdprhY.svg', 'http://127.0.0.1:8000/admin/configuration/general/design', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/configuration\\/general\\/design\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjR6bHBRdXU2T3ZWaWRjSDBIbHVMQUE9PSIsInZhbHVlIjoiT0V3aHBpdGpIWjB1dFhLYnVWa2NTTGU5S3B4Z3lOMlkvVjhlTngxSHkwbVVITEkzMjgzbC96NWpaU1liZzJ0cDJabTM3a0Vpd0hiWUJnTEdYUlBIYjJDajBBUG5VUGtqZUNNeUtoNC94U056RHMrNUJZRnd1S2pBZlQzYzAvOXkiLCJtYWMiOiJlMjYzYjQwNTQyNzg2NGIxMWE3YzZmYTM2NjZiYjdiMjRmMzg1MjdiMjFkMTIwY2E1YTQ2MjkyNDY5NTY2ZGUzIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6ImtEYlp4d0hZMG1zMk14RG9VSmk5aUE9PSIsInZhbHVlIjoiMENhQjcrUGk2SFluZ3I2aytaMFY4Wm9saXh3Zll2NE55TzZBcHphU2xXTjIyR1VDQmZmYzE4SC9yK0QwZXZ5Z1dDSDJtUDd3MTA4VjEyeDUvOUNEY1lSNFJRUnA1SFpKNGJjZ2RnQ2RpSmROYi94SUs1VnhtRUkyR2d1dVkyUkUiLCJtYWMiOiIwNDViZjEwMDk3YmU0MWRjMGJkYjI1NjFiNzgxMzEwNTc3Zjk2M2U1ODVmYmQwN2Q5YTExNThjZDU0NTcyM2Y1IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 18:15:00', '2026-08-10 18:15:00'),
(41, 'GET', '[]', 'http://127.0.0.1:8000/storage/admins/1/k1tq7682Y25u3oLLHr3oKKfgxA4lNaRg3Avg2ZVT.jpg', 'http://127.0.0.1:8000/admin/account', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/account\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkdiTU1nWGJWK2R1TG5IN3dyMVNBOUE9PSIsInZhbHVlIjoiRWtWR0F0UlF3WERUV2d3ZjNHL0tZQmZJWWxqUStESEw5QmZiYVhyanBseGhZQ2Q3UTRxdFgwdjdnVkRRRXhSR3FPc0dCTGREaXhOUllJVTF5eGhrNXZrbjNFUjJGUUlmNVY2dmZlVjlTdG4wRWhJcDlTd0h1U3BST2lURWdDcEUiLCJtYWMiOiIyNzAzM2YzMTU3ZDAyMzRlMDc4NWI5MTJjMTNlNTdkMzUzYmVlNThlZWM2MWVhZjhmNDQyYjUyNWZmMzhjMTY0IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6InUzMlpJV0kyL3JWRTNwMlBxd2xTZlE9PSIsInZhbHVlIjoicXpiOEhzaHlSb3piZGR4SnNQZko3M1V3RnpwcHB6RkpoM29wUkkyclE1bjkvK0wzNi80bmdpSTJFR2xmTG9XbnIwUzUrbFh1Sk5QSk9lNjJGQzVGS2xhOVQ4N1IyNloxVy9jMDFUNmFRc09PYmd6YTJ2ZDcyM3FMRXdKTVlIOWkiLCJtYWMiOiI3OTQ2MTgzNzQ5ZWY2OTVjYjU0OWYyNGIzOWYzMDZhNjJjZmNhMjBlNTU2YTAxODI0NzQ4NGE5MjAxZDljZDk3IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 18:15:56', '2026-08-10 18:15:56'),
(42, 'GET', '[]', 'http://127.0.0.1:8000/public/storage/configuration/cR6Xn4eCLwcJ46A2ETUlEx3yiBuXRIoQUrE9twh7.svg', 'http://127.0.0.1:8000/admin/account', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/account\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InNCamxMRUFSdU5NSUY1YU5kSGYwSXc9PSIsInZhbHVlIjoidU1xSkM0QkJIWU15ZllRZGpoUjFGdStFeDV6WFdxRVV5M2ZxR2hpRzRQK1lnTzBnQzVOL3pneUtIZmFjZmZpNy9vRjN1RjJCZERzRDEyWHFzN1RxOG14ZVEvVTRVNlVYN1pkNGh2ZStDZzRUQjEybHFaeC9XZmwxV1lYaWV1djMiLCJtYWMiOiI0NTQ0Yjk1NGZkZTJiNjZlYzc5NjQ1NmE0NTliNDNjNzJkYWRiYWIxYmIwMWMyOGE2N2IyYWM2ZDZlY2E0MGJhIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjFIYUp0SDd0dnpXK3RvM3BPOUZ2RXc9PSIsInZhbHVlIjoiZWJuRldMMUhEWnFLZ1FKVUR4YzhkYXZYeFRQS0ErYXJ6YnJ2dTNuaGc1NmVSL1RDcys4ZVZtbjV6ajYxbnkwdDRGcFZjS3RuckJBdnNTQ3FCS3daSzFvc2l1OFdHa2p6VUgxMmNLN1dua1JCYW04T1YwMGJicTZqN3VxSlRQTzEiLCJtYWMiOiJmYjMyNmYzYzkwYmI4YzFmYjYzOWYxNmQ3OTU5MzY0ZmRhNjgzYTFjY2QwMTRkZmQ5M2NjZWY5YTJjYjk5OGRiIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 18:30:33', '2026-08-10 18:30:33'),
(43, 'GET', '[]', 'http://127.0.0.1:8000/public/storage/configuration/4ZvUtNEv6PYd0dmKhcUowvJAWKdkP3OnYgBeJPNn.png', 'http://127.0.0.1:8000/admin/account', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/account\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjZielhXSWdTYnhyVk9hVU5uUnZ5UEE9PSIsInZhbHVlIjoiRmNCa2VjQms4WFlFcHdRdFNxK2hSaDF5ekNkM0diVmY4OG1RamNhNDJTTWxVbkx4UFlHcmlldVduZTlxQXJYQWVSYXhCWnEvc3FjQng5Sm9HQlhMOGovQVZVZHRSOVV2QzB1eGI1OTNBN0xlYytDbFRneWNzeUdLUVB5Y2Y5aEwiLCJtYWMiOiJkYzcyYzhhZDdjZmViY2JkYWUzMDg3NmQ5MTE0ZDIzN2U3ZTJhYjAwZTM0N2I5ZTdhMzhjZGE4OWFlYThiMDJlIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IlUrNmtRQldDWWUzZXZLZWk3cnc5Vmc9PSIsInZhbHVlIjoieGdRSm9nbmhxTEluaGo0MmkwdjhFZm01MnoxVUlKbXgrVldQNkhzRFo2Y2xGb0dyV1JqZlJ2dmxVd2NBYWR2RmFKYlFsZlFDV0pvSEpVUUk0UG96TmxCWEZHTE5JbUFYWmtYZnoveGo2NnRBWm45aTRmbkxGQURiNVRnSVNiRDMiLCJtYWMiOiJkYTYyNDlmODYxYjJmMDRlMzYzY2FkMTlkNjZiMzY4ZGE3ZGJiNWY2MTg4NTMyNDE0MTdkMDAxMzJhMGQ3MjJlIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-10 18:31:32', '2026-08-10 18:31:32'),
(44, 'GET', '[]', 'http://127.0.0.1:8000/escultura', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkwyVEc1TVlSajlmNDNYUDJjQWRBc0E9PSIsInZhbHVlIjoiUDc4K1VIbG5NSHZwODBnUGRkVmM0TFhOM2JXakpzY3FObk1idHVDK1VZcEhjeHRMSlZLbFg4ZlpDaTU5SzhISUVYWnF3UmVKNDNIMmNUZ2hmMitabTQ2Q3pNWmE0eWl4YzcycGVkaHRjbzcrVG16THB2c3hONDlMMkE2ZGZEYWQiLCJtYWMiOiJhNjVkMzE4M2YwM2JmOTUyNDIwZjRhMGZlNDU0MjNkMTc3MDAyMTQ4ZDc1ODUzNWZhODM4NWFiZGQwNmEzZjNkIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6InFYZjE2ZWI4VHBtWUduRWd3LzR4ZEE9PSIsInZhbHVlIjoicFFaS2tIY0gyeDRQN1NxU1d1SU1LYUZaZHgyRkpSUjFTTi9KZU1mRFFIb290c1B0VU1wSHhyRjBjTXVXRFdLWTkrb2JQQXNJdUlDWHlyaE5lVXcwdDFHdlBkcytLMVZleW04Y2lVdWk3cXZUTmVNSlAwekdiYTJNdzdEVko5QUUiLCJtYWMiOiIxZjhlYzZmNDUwODliNmRjZDc1ZTZmNTkwZDAwN2FhOGIwZWExZGQ3MDBjZTFhZjA2OTcwOWU0YWYwNjhjNjVlIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, NULL, NULL, 1, '2026-08-10 19:13:08', '2026-08-10 19:13:08'),
(45, 'GET', '[]', 'http://127.0.0.1:8000/pintura', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlcvU1Z2ZXVTMU1vcWQ2ZzNkM2xldEE9PSIsInZhbHVlIjoiY1BtVEY3Tm9FMTFIalVFRHNPc2hDbk13Yi94ZzM0cllZOUkzT3pSY2d0UVBDZWtNczEvclY4aTRFVVlrQkZyVmRkVkJNOCtIcWNkTm01QmN5eE5nSW5NWnBRVWxtNFUxWmJsVWtRVjY0RFlXSVBOM3VRbG1IRjFZUklIRFVkWHIiLCJtYWMiOiJhNzZmNzE5MGFiOGIyNjZlYjMwMDIzY2VlNGFiYzExMjMzNGMxMjk0MTk2ZDNjMDI1YzIxZDQwMzc2MmZkZDc1IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IitwQnJ0c0JDOXRVenVPNkVUazB5ZVE9PSIsInZhbHVlIjoiRUwvdUtMdVZSRXBRYWpPeEpEM25Cemk2cVNOUnVjRUMveGtFcU5xVXVob0lOb1BBdlBVcFhhbDhKdU9zaXZwRFkyc3BpWkxGVWNUeFM2bEhOK2o3V0QreklTNk45OHN0WXVUb0xON0JrUjBySXhtVDVJa2t4Z0NOVHlqVFc2M3UiLCJtYWMiOiIzOGE2OGExOGZmNDEyMWM3ZjZjODVkYmIwYTYwNTE5ZDkyNTVhYjk1NGNlOTYyOTk1Mjg4OWZjZGFhOGYxZDJkIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 3, NULL, NULL, 1, '2026-08-10 19:19:54', '2026-08-10 19:19:54'),
(46, 'GET', '[]', 'http://127.0.0.1:8000/musica', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IllaaDNEb21LWkV1VXNHSzdCL2s2YWc9PSIsInZhbHVlIjoiL01EOWtCR2VSeWpxTUdlTWtESG83bUw5TXhRd3BLMmhCMGhaNmhHdmREQ0EyYVFzS1FmTkk5amdlWFFIRUVaTFhGR2FadXUySXFvMmQzYnA1eHNNUlNiWHZvQlR1YXQxakNTMjc0Zk9uQ2NOeWpxRm9hSFNOZkJBczQxT3BnN2oiLCJtYWMiOiIzYWNhMjZhNjA2ODgwZTUzOGVkNzY4NmJmZWJmMjczMjUxNzg2ZjdkYWQ0ODVjNGI1YjMwYzcwZDBjYzFiNmJmIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6Ii9nTjhYQjdEUjFUcDd1VS94Q0pRS0E9PSIsInZhbHVlIjoibUtXemRnOFBudHg1a1BlV0RKM0h3Z2g4cE5xV2NZWUw3NmY1SVowZ3NrTm5uQm9LNDBoRFY4L2taTUZLRUkvUjNqVU1ycDdOMm5XK1VLR2RwL2hnTGxOYU91NkFvRm5VNElOWGs2bDZ0eWowc3BiRHVOYWVYdXl6ZFU3NjJxTVgiLCJtYWMiOiI5NjM5ZWFiNWJlYjUxMjZlMWMzMzhmYjM1YzE4NzkzZmMwNjFlY2EzZmIyZmE5ZDIyYTI1ZDExZGQ1YTZlMjU1IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 4, NULL, NULL, 1, '2026-08-10 19:28:03', '2026-08-10 19:28:03'),
(47, 'GET', '[]', 'http://127.0.0.1:8000/mona-lisa-leonardo-da-vinci', 'http://127.0.0.1:8000/pintura', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/pintura\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImE4M2dBYUdEOTRKbFRraG0rUUkzVFE9PSIsInZhbHVlIjoic3ZaandwZGsyc1gvL01SVVYzNGtFMUZUT2tJd3VZNFd6WWo4YnJLYjhmUDJpSXYzZ2Z5ZS9iQ3lKN09Mei85akpTV2pCWVl4eUdxTDhXRDV4eE41bWd5UjdIdXFlVHc5SVRyWHJMZFA5LzRKWDR2dTVqZng5Y2gvNThqcEl5N1EiLCJtYWMiOiJkNGQzYzAwOWYwOGRhY2Y2NzBkODNiMmVlYWVkZmM5MTZhOTYzNTc2Nzk5NWFkYzgwMDc3NjIzYWJjZjE2ZjUxIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IkxxVnNCcW0xc28xeGN5VjJWSHprMGc9PSIsInZhbHVlIjoicFNteDZBdUowNnVIYjNka2JhVEhPRm04SmlzTElkZkRFZU9lRE1tazEwNDM4aFRsbXFpcTR1RGxYOFdXUVJHU0U1Mm5COUc3d3Y4OXNVMFlhZkVzdUt0OGFhZzFpUFNBWGl2RzBXZVQzR1VBeFFyNDlrTzEzRmwrUm9NdzFNZm8iLCJtYWMiOiI0YzNhYjFjZWNmMTEwZmE1MGRhYjRmNTllOWMzYTk2OTg5MmNhY2I3MDY2ZjFkM2M2ZmZhNGQxZjQ5MDFlOWE2IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, 1, '2026-08-10 22:46:41', '2026-08-10 22:46:41'),
(48, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/search?sort=created_at-desc&limit=12', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/search?sort=created_at-desc&limit=12\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-11 21:32:02', '2026-08-11 21:32:02'),
(49, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-24 22:08:13', '2026-08-24 22:08:13'),
(50, 'GET', '[]', 'http://127.0.0.1:8000/cine', 'http://127.0.0.1:8000/', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"indexarts_session=eyJpdiI6IkhheXFJTFFySHl2S0JEZ0lBaTF4MHc9PSIsInZhbHVlIjoiRVZMRjFQOXNhT0t5MzlNN002R2dIcnhQNGlESXZDTldSOHNxOGVQYjYyZUIrM3lOTHRxV1JQZk1MT1hwWVZEdnltdzJ2aE90c3pOazFRcVI3SWt2WTRHQnJEajlRWkJPWi9KM2F6WE5IRVMyMkxjdG0raEdVT05CWHJGMURGckEiLCJtYWMiOiI2NmUxNGJkYzdjYzUwYmRiNmZjZTllMGQwOGI4MDQ1ZWVlNzZlOTZjNmFkZWMzMzg4MzhiYjM3YTU4YTFmNjFjIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 6, NULL, NULL, 1, '2026-08-25 00:51:02', '2026-08-25 00:51:02'),
(51, 'GET', '[]', 'http://127.0.0.1:8000/literatura', 'http://127.0.0.1:8000/cine', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/cine\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Inp5WnpzSG83OGtnMjlZZU5pd21pVkE9PSIsInZhbHVlIjoidVFMZFJqUGFTVWMyVnFOdGdSWGNoM1RpbThsdG5Gam4zKzdTTWxqSjZZLzNLTHVaeDRUMkNzUzF4K3YvM3dvcU9qTHM0bGw4TXFUZDNtaWpVOHN5bFlOaHd0dEtaeU1BVlhhVzJLYlNmM1dMWWlPeXV1RHg0Y016Q0pCRzBDbWYiLCJtYWMiOiJmNGQ5OGYxMjM4MGE5ZjdmZmNkY2U1MGI4NmQ4YmVhY2Y3NmY1MTI4MzI2N2ZlNDYzNTM0OTVlYmQ0MTAyZTQ3IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjBuSTJWbS9pQXZ1ZFc1UnFRTFRWN2c9PSIsInZhbHVlIjoiUG5td21VZWV6SGtqbC9BTUM2OHR0RldZeHc3TnhQSlJvYWJDek5kOTVEVmtialBTMlAyQ2Jxd0c0NGFVejBoblNKNHVZRDFYTFh3ZTh1SXVnWmovNnZScW9mdHFrRWIyUldWUXFPakNNeW83ZjJBMzdmMmI5WEl3L2JOOTZ6VWYiLCJtYWMiOiI0ODM2Y2ZkZjA4YjNjYzUzMzk0ZTk3N2I3YWEwMTQ1MTU3ZTA5MDE4Yzg5N2ZkM2I3MWY5M2U2MWQ3NzBmYTNjIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 5, NULL, NULL, 1, '2026-08-25 00:51:12', '2026-08-25 00:51:12'),
(52, 'GET', '[]', 'http://127.0.0.1:8000/musica', 'http://127.0.0.1:8000/literatura', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/literatura\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InpCaE1QQ043dUhSWkdoYmd4QkhaNkE9PSIsInZhbHVlIjoiV2krOHBQYzgvdjNlYk5EZUo4QjljaU5MRXM1VXJOYWtaeC9CWkxaVEh1SmxIbzN0OGE1ZDUxbSttcUVGVk5BNmFpUlMzbmRiVWNuSkU3a0NYRGQ3NUFVMFgzUkUreXBMNVBUeUVoTFA0THB5K0V4aWs3ZktGcDZaTVBSSzNvSFgiLCJtYWMiOiJmY2U0ZTRlZDRjZDUwNTMwMTgwMzhjYjE3ZmZkZjJlZDRlYmQ5NDg4MTkwMzRmZDA1OTZhZmI3NDdjNDczOTU1IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IklIdC90eVl6S1E1OUl5Q1haRFlwNVE9PSIsInZhbHVlIjoiWG9jSUVmUUM5T3J1a2podnlEUWMzRFBWVUtuMDU3V3Y5TEM1QnRPd2Rqd0g0WGtaWkRUaUV3bEhDRUZJM1NGMUNydGZDYWUxcmtnWjVKeTFMSno0a2JWQW9kZEJBa2dLVkNXSUlhY3F0eDBSUm1OcmZXSDdwODB3dEIyOHJpb0UiLCJtYWMiOiJkNTY1ZjE2ZWFhMmQ1YWY5YjM4ZWMyZTIyMzg1NWFmNjg2NmFmNGNlNWJhMWRhMzFkMmFiMGM2M2NjZWU1ZDNlIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 4, NULL, NULL, 1, '2026-08-25 00:51:21', '2026-08-25 00:51:21');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(53, 'GET', '[]', 'http://127.0.0.1:8000/escultura', 'http://127.0.0.1:8000/musica', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/musica\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IldiNko2YjVncTFlVTZ0RTYwcEFYRmc9PSIsInZhbHVlIjoiVzFEanBFQzcrMEhJd3c1cTNId21zcUkzeCtHWFREWFNXelA5SU4wUTlLM1dLQUlHdFRwTWVNRlJuVmo4ODVMa3M2K2R2WHlRbk1Na1R1Nm5iSWc4WFl2TWNVSFpOWDNDdmxOVjhYRUxCVXBuRUJjdlJneEVkNkd1Q0xHajA3VzkiLCJtYWMiOiJmOTdjMzVkNmYwNGMwMjhlMGUxZmEwMmQ0MmJjNTI3YmVkZTliOTg3ZWQ5MjY2MmEwOTEwNjYxODhiNmU1MDI0IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IlJvbFhFSkxNQ2k3Y1UvWXFudGFZcnc9PSIsInZhbHVlIjoiNEVVSUxnTlRTQXdXbGJwVFlIRVcvWHFtUDQvb0oxN3RQejJjOFJVdzlEYUdRZ3c5T3E2QTRWaXE4OUtvZTBZZDdTSFlNcXVmR3gzeVVtQXRLTmpaQ2NpTnd5MlB0SzEvbVYvZkRXQmhNL3pvaGt5ZmwrTm04OTg3Z2RuWnJkMnoiLCJtYWMiOiIyNDRlZmZjODAxNzFhZWY2NWZiOGM1MTQ1NzA0YmU4M2NhMjg0ZjZjZTVjNjM2MmQ3MzYwYTM5N2M3NGVmZWE1IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, NULL, NULL, 1, '2026-08-25 00:51:29', '2026-08-25 00:51:29'),
(54, 'GET', '[]', 'http://127.0.0.1:8000/favicon.ico', 'http://127.0.0.1:8000/page/what\'s-new', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"dnt\":[\"1\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/page\\/what\'s-new\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Im9xenhuZTJhZTRBQ3F3UWtOWUJ0cmc9PSIsInZhbHVlIjoiTlpsYlhiVHdOb3Ruc1BaNi83eDdwQW5oZzluVlNsOVJ5ck1PYjQwUk93WHJ1UzNub0tsRCt0MmxCeHJSMFB3SXAwamc0dkEyQ1FuUGo2Zk03eDJGM25ZTzB3UkJBZW9PU05PM0IyakhCWEM0Z21CWW9qMUw0RzdWUVFaSXRwczUiLCJtYWMiOiI1N2RmNTEyMDFkOTkyNWQ5NWRiZjUzZmMyNTM3ODhmOWIwODM0NzZmNWI2ZDRhNDVkNjdhZThjM2VmZjllNzc4IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6Ii9FYXRjSDRuUnlBSTN2c3F4VGtZSVE9PSIsInZhbHVlIjoiWkpveHNxQk1XZ2YwQ2lpREJBZk0wbTBjVmJOV1R5Z2lINEh0RFRrMmJaa3dYV0RTbVJCVWZaQTd0M29EQXNvUmk3VFZhczJIQ05NSFFnSTNDUDVOQnhxRkdnVWY5dlJEMmtNYzNiTzZyT2xFbGZDS1V4Q29CTUMrVlFTS0gza1YiLCJtYWMiOiI3MzU2MzVjMjcxMDQ0OTczM2VkMzRjYjFkMmE3ZTI1N2I2NzVjNTQxMDI2Y2ZlZjcyZGM3N2ZjNjAyODQ5MmI5IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-26 05:33:23', '2026-08-26 05:33:23'),
(55, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/page/about-us', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not=A?Brand\\\";v=\\\"99\\\", \\\"Brave\\\";v=\\\"151\\\", \\\"Chromium\\\";v=\\\"151\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/page\\/about-us\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImR2Ym0rZnh3aHZ2WWJ0TDlUT1djemc9PSIsInZhbHVlIjoicWtkcVd3bnBYYk1USytXeXAyeXVQb0loVCtzNmU4ZWRFWklFSjVRSXpoMEYvQnQ4djlVNzlkb2Q1cGcxR1ExM3Y1dllIa0R3cmpZcVh0RmNVbzQwdzNKSXJNVlB0WHQ3ZlhFWWFpOEpsYzR0KzZZc0EvSElYN3hWeFo5QkVFYzIiLCJtYWMiOiI2NmQ0MDQxNWY4NDI0NTAwMDkwY2NlNGM3Zjk0ODJmNWNhNjJiMjZmYjQwMmI2MzBlZTYxNWNiNTM4ODI2MzkxIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IlE0Z1VlU1lVeGdvNjE1VEdSaW5WNUE9PSIsInZhbHVlIjoibTNXOHZxN3diQjZtR2k3MHpuRXFxTlpXNkVOeG4rRXNtbXhXU1RoZjFhdDdWckVFNlFsTDUxNjBzaFdvZldlUkMwRGR0cjcxOERSMHNWNEFCcHE2NU9PNWtodWZtdXZEV3k1ZnRkcW15K2FDMms0YVk4WURxVGFmZFJFY214ZjgiLCJtYWMiOiJhMWE4NTU2ODRiZjhkZGRmYTdlNDBjZThmMWVjMTA1MWYzOGE1ZTBhZTdhNmViMzMyZTBhNmMwZGI0MjQ4ZWI4IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-26 05:38:34', '2026-08-26 05:38:34'),
(56, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[\"es-co\",\"es\",\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.9,en-US;q=0.8,en;q=0.7\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkdaZmFkOHU4OVJUNWZRdnJPSERnWEE9PSIsInZhbHVlIjoiZllVWjJkTXZwbGVwK3M3V29PNFRxeEVlMTYxVFhxRU8xMDZmNFpIN1BKbzl5N1hWdnR3ZHcrdFBqMmtvalZ6TFVPWFdVRXh3RkVwSXRUNWlzK2RvTG9EY0tnZXorMXFtMGNwVTBWL095ZHNIODVGZXBUbEszZVNwVkEwdjhKUVgiLCJtYWMiOiI3OTJlN2YxNzk4N2U0MGRjYTJiOWNkM2UxMWZhNjc0NmIzMmQ2ZGRmZmY5NGU3OWMwMDZlNGNiNDY5ODFiMzkwIiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IkNpbzEvRjhFdGpUUnpsZXNRVnVNenc9PSIsInZhbHVlIjoiY0d6bGptMDdWTThEKzlaNDRUVHgvWkM4ajBydHozL3hWSUtad25zNS85VkZQeGcySFl6aFE5OWl2L21qWTZKK0QxblhsaHoxcTFzQmdML0t1cGJKSUJQWFlyZ1JaT1NFdDFZRXQ2ZzRFYmtMRittUXJGdnhwVWwxd3ZBcGRpQk8iLCJtYWMiOiJhYTQxYjE1MjQwNGZkYjIwMzY3YjcyOGE0YTYwMGZkMDY1MDBmZjhhOTRhOGY4MWZlZDMyMWE4ZDJjODMzY2VmIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-08-27 04:17:11', '2026-08-27 04:17:11'),
(57, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[\"en-us\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.131.0 Chrome/148.0.7778.280 Electron/42.7.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Code\\/1.131.0 Chrome\\/148.0.7778.280 Electron\\/42.7.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-09-01 18:44:26', '2026-09-01 18:44:26'),
(58, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[\"es-co\",\"es\",\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/152.0.0.0 Safari\\/537.36\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.9,en-US;q=0.8,en;q=0.7\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjExbTdTN3BQVm5jV21SdmNXRkp2L0E9PSIsInZhbHVlIjoiV29BQ3JXN2lXNDdRYmZuWWRYMnhEd21HK3pMYWF1QStaay9kQWlKNlZTQXZiTk9sQVlQOUtJQmxVdmVBbTc0dTJlSmNJZkpUM1NrYk5kcEM4M0lxUzBiVjhHQWlkOVEya3JoTVlLZnlIMTJnbVZ3Q3lWazhLcEVGUGF0YldMck8iLCJtYWMiOiI3MTYxZDFjYWQzY2EwOWE0Zjc0ZGMyOWExMGVkZDcwMWQyZGMzNmM2OTQxY2YxODkxODMyNDQ1YzYzNDcwZGE2IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IkdRMDE4UVVrTzFnS1pOYTY4RlJpYkE9PSIsInZhbHVlIjoiU3F3ejNrcnNCN2VuQ25jUmF3OGZaN2ZyVXJXYS9hYkdCR04xako5bm8zTVdBR0JRd29mYTJhNURzUms0a29xbnBxUXkraDBVZGpZK01YYytwV29SUS90VDRRbFpJMmk4Qi9WaldFYWxGZmVsMnJYWnlLNVBKZCtNMGF2UTZoM00iLCJtYWMiOiJkMDlhNzg0YmI3NjVmNDdjMTg3NzkwZDU4OWYzYjhjMjVkNDBhMDdlM2VlNDgzZGVjZDdhZDUxNGJkNzc3MDk0IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-09-01 18:44:41', '2026-09-01 18:44:41'),
(59, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/customer/login', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/152.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"152\\\", \\\"Not?A_Brand\\\";v=\\\"24\\\", \\\"Brave\\\";v=\\\"152\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/customer\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.6\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjZidTJNcU1hKzBLZExjMGRZdFNzb0E9PSIsInZhbHVlIjoiUVVBcCtQS25qZm9LeS9rTVEyRWMvU1VsaWptYnR3M2NOVGoyQktpcFdHemtCWkdsTWVTMnIzeW1nRm04WEpOVUdnVjFYcno0TlRvWkRQdmFwV2NtaExTanU4WUNsNTZsNWJucGFQMlBWTVhVZHlNMjEwZXFQMXQzaXhMYjZEanoiLCJtYWMiOiI3YTE2MjU2ZGQyZjg5YmZmZGIyZjY1ZWEyMGRiMTI3ZDY1NzEzYTBlNmIwM2ZkZDFkMTczODdiNThkZWUwMWU4IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IjBYdjRUaUkrUXdJNytKNWVDeE1xbHc9PSIsInZhbHVlIjoiaXNTS3ZFa21lcVhFZUxaNHYyYjlwZmpJSHl4NXMvTjI3eTdlc1dHSG5FNktsU0xEYmlaUFhmQ29BMkl6MXlNc0dzeHVqQ3hMZks4Z3NtS2VoLzVONkZQd0hqeGovUkEzM1c2TGIxT3pBVzd4SitnbS9LU2dZa2RTSTdiL05kSUMiLCJtYWMiOiJiNGRkN2Q2OThlZTgyYjFmN2M3ZjI1Y2JmOTllYzYwMmI4ZTQ3ZDlhMWQzOTY5YjdlMjIxYmU3MGZlOTRmMmM2IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2026-09-01 18:45:41', '2026-09-01 18:45:41'),
(60, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[\"es-co\",\"es\",\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/152.0.0.0 Safari\\/537.36\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.9,en-US;q=0.8,en;q=0.7\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImxPZUZnTXJUUGdQbjVWb2ErbTc2UWc9PSIsInZhbHVlIjoiOFA5Z2NRRWJPSnhadm1nKzBsZ1FENWxrTGttNFN4UldnSms1Q2VQaUpkMTF4Vkk1cnNjYW1rZjFSS3BQRmlMRmQwTFFFeGxMZXZCRHBmeTYzdWVSU3R3WVhyTjhVZUtwVkhMQUR1R2Y3ek9RWVBFUlFucUdNRUJNSTlmU0Q4eWEiLCJtYWMiOiJiYmEwNmMyZmI3NmJjNjVlZWQxODExYmMxNzk5YmJhMjk5YmM4ZGJjZWEzMmFiYTA4ZTQ1MjBlYWExYjBiMjk0IiwidGFnIjoiIn0%3D; indexarts_session=eyJpdiI6IlJiQytuWHlVK1hPQ0tGaDdrdGcvMGc9PSIsInZhbHVlIjoic1E4NDY4c2FLYzlRKzZMaUJyOWFBN1dwclk2M2tjTnBRamZmeDgvOVN3eXJWOUFTR0MwUHlXMFFTOFZoNFo3eFcwWGZ2cnNNQkVLQWJQR3VRVVYxUDYvM1p3UlgrOXJsdE9UNTZWTStwWmNaQVlGcDZZVlRmYkJoeGNlLzh0V1YiLCJtYWMiOiI4NGM4ZDljMzBiY2YxZThjYjIxMDM4Y2QyOTRlMWJiMTU2YTgzNDIxMjViODVkNmJjMzZjZjY3M2U1ZjVkNzhhIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2026-09-01 18:45:42', '2026-09-01 18:45:42'),
(61, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/customer/login', '[\"es-co\",\"es\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"152\\\", \\\"Not?A_Brand\\\";v=\\\"24\\\", \\\"Brave\\\";v=\\\"152\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/152.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/customer\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"es-CO,es;q=0.8\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2026-09-03 04:47:51', '2026-09-03 04:47:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `item_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_options`)),
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `time_of_moving` date DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `addresses_cart_id_foreign` (`cart_id`),
  ADD KEY `addresses_order_id_foreign` (`order_id`),
  ADD KEY `addresses_parent_address_id_foreign` (`parent_address_id`);

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_api_token_unique` (`api_token`);

--
-- Indices de la tabla `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indices de la tabla `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_code_unique` (`code`);

--
-- Indices de la tabla `attribute_families`
--
ALTER TABLE `attribute_families`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_groups_attribute_family_id_name_unique` (`attribute_family_id`,`name`);

--
-- Indices de la tabla `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD PRIMARY KEY (`attribute_id`,`attribute_group_id`),
  ADD KEY `attribute_group_mappings_attribute_group_id_foreign` (`attribute_group_id`);

--
-- Indices de la tabla `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Indices de la tabla `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_option_translations_attribute_option_id_locale_unique` (`attribute_option_id`,`locale`);

--
-- Indices de la tabla `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_customer_id_foreign` (`customer_id`),
  ADD KEY `cart_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_parent_id_foreign` (`parent_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indices de la tabla `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_payment_cart_id_foreign` (`cart_id`);

--
-- Indices de la tabla `cart_rules`
--
ALTER TABLE `cart_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD PRIMARY KEY (`cart_rule_id`,`channel_id`),
  ADD KEY `cart_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupons_cart_rule_id_foreign` (`cart_rule_id`);

--
-- Indices de la tabla `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` (`cart_rule_coupon_id`),
  ADD KEY `cart_rule_coupon_usage_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_customers_cart_rule_id_foreign` (`cart_rule_id`),
  ADD KEY `cart_rule_customers_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD PRIMARY KEY (`cart_rule_id`,`customer_group_id`),
  ADD KEY `cart_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indices de la tabla `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_rule_translations_cart_rule_id_locale_unique` (`cart_rule_id`,`locale`);

--
-- Indices de la tabla `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_shipping_rates_cart_id_foreign` (`cart_id`);

--
-- Indices de la tabla `catalog_rules`
--
ALTER TABLE `catalog_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD PRIMARY KEY (`catalog_rule_id`,`channel_id`),
  ADD KEY `catalog_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD PRIMARY KEY (`catalog_rule_id`,`customer_group_id`),
  ADD KEY `catalog_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indices de la tabla `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_products_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_products_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_products_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_products_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_product_prices_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_product_prices_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_product_prices_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_product_prices_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indices de la tabla `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD KEY `category_filterable_attributes_category_id_foreign` (`category_id`),
  ADD KEY `category_filterable_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indices de la tabla `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_slug_locale_unique` (`category_id`,`slug`,`locale`),
  ADD KEY `category_translations_locale_id_foreign` (`locale_id`);

--
-- Indices de la tabla `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channels_root_category_id_foreign` (`root_category_id`),
  ADD KEY `channels_default_locale_id_foreign` (`default_locale_id`),
  ADD KEY `channels_base_currency_id_foreign` (`base_currency_id`);

--
-- Indices de la tabla `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD PRIMARY KEY (`channel_id`,`currency_id`),
  ADD KEY `channel_currencies_currency_id_foreign` (`currency_id`);

--
-- Indices de la tabla `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD UNIQUE KEY `channel_inventory_sources_channel_id_inventory_source_id_unique` (`channel_id`,`inventory_source_id`),
  ADD KEY `channel_inventory_sources_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indices de la tabla `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD PRIMARY KEY (`channel_id`,`locale_id`),
  ADD KEY `channel_locales_locale_id_foreign` (`locale_id`);

--
-- Indices de la tabla `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_translations_channel_id_locale_unique` (`channel_id`,`locale`),
  ADD KEY `channel_translations_locale_index` (`locale`);

--
-- Indices de la tabla `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD UNIQUE KEY `cms_page_channels_cms_page_id_channel_id_unique` (`cms_page_id`,`channel_id`),
  ADD KEY `cms_page_channels_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_translations_cms_page_id_url_key_locale_unique` (`cms_page_id`,`url_key`,`locale`);

--
-- Indices de la tabla `compare_items`
--
ALTER TABLE `compare_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compare_items_product_id_foreign` (`product_id`),
  ADD KEY `compare_items_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `core_config`
--
ALTER TABLE `core_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_states_country_id_foreign` (`country_id`);

--
-- Indices de la tabla `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_state_translations_country_state_id_foreign` (`country_state_id`);

--
-- Indices de la tabla `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_translations_country_id_foreign` (`country_id`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_exchange_rates_target_currency_unique` (`target_currency`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`),
  ADD KEY `customers_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `customers_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_groups_code_unique` (`code`);

--
-- Indices de la tabla `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_notes_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `customer_password_resets`
--
ALTER TABLE `customer_password_resets`
  ADD KEY `customer_password_resets_email_index` (`email`);

--
-- Indices de la tabla `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_social_accounts_provider_id_unique` (`provider_id`),
  ADD KEY `customer_social_accounts_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datagrid_saved_filters_user_id_name_src_unique` (`user_id`,`name`,`src`);

--
-- Indices de la tabla `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloadable_link_purchased_customer_id_foreign` (`customer_id`),
  ADD KEY `downloadable_link_purchased_order_id_foreign` (`order_id`),
  ADD KEY `downloadable_link_purchased_order_item_id_foreign` (`order_item_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `import_batches`
--
ALTER TABLE `import_batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_batches_import_id_foreign` (`import_id`);

--
-- Indices de la tabla `inventory_sources`
--
ALTER TABLE `inventory_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventory_sources_code_unique` (`code`);

--
-- Indices de la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locales_code_unique` (`code`);

--
-- Indices de la tabla `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketing_campaigns_channel_id_foreign` (`channel_id`),
  ADD KEY `marketing_campaigns_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `marketing_campaigns_marketing_template_id_foreign` (`marketing_template_id`),
  ADD KEY `marketing_campaigns_marketing_event_id_foreign` (`marketing_event_id`);

--
-- Indices de la tabla `marketing_events`
--
ALTER TABLE `marketing_events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marketing_templates`
--
ALTER TABLE `marketing_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_increment_id_unique` (`increment_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `order_comments`
--
ALTER TABLE `order_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_comments_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_parent_id_foreign` (`parent_id`),
  ADD KEY `order_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indices de la tabla `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payment_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chanel_locale_attribute_value_index_unique` (`channel`,`locale`,`attribute_id`,`product_id`),
  ADD UNIQUE KEY `product_attribute_values_unique_id_unique` (`unique_id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indices de la tabla `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_bundle_options_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundle_option_products_product_id_bundle_option_id_unique` (`product_id`,`product_bundle_option_id`),
  ADD KEY `product_bundle_option_products_product_bundle_option_id_foreign` (`product_bundle_option_id`);

--
-- Indices de la tabla `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_bundle_option_translations_option_id_locale_unique` (`product_bundle_option_id`,`locale`),
  ADD UNIQUE KEY `bundle_option_translations_locale_label_bundle_option_id_unique` (`locale`,`label`,`product_bundle_option_id`);

--
-- Indices de la tabla `product_categories`
--
ALTER TABLE `product_categories`
  ADD UNIQUE KEY `product_categories_product_id_category_id_unique` (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `product_channels`
--
ALTER TABLE `product_channels`
  ADD UNIQUE KEY `product_channels_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_channels_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD UNIQUE KEY `product_cross_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_cross_sells_child_id_foreign` (`child_id`);

--
-- Indices de la tabla `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_customer_group_prices_unique_id_unique` (`unique_id`),
  ADD KEY `product_customer_group_prices_product_id_foreign` (`product_id`),
  ADD KEY `product_customer_group_prices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indices de la tabla `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_links_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_translations_link_id_foreign` (`product_downloadable_link_id`);

--
-- Indices de la tabla `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_samples_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sample_translations_sample_id_foreign` (`product_downloadable_sample_id`);

--
-- Indices de la tabla `product_flat`
--
ALTER TABLE `product_flat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_flat_unique_index` (`product_id`,`channel`,`locale`),
  ADD KEY `product_flat_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `product_flat_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_grouped_products_product_id_associated_product_id_unique` (`product_id`,`associated_product_id`),
  ADD KEY `product_grouped_products_associated_product_id_foreign` (`associated_product_id`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_source_vendor_index_unique` (`product_id`,`inventory_source_id`,`vendor_id`),
  ADD KEY `product_inventories_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indices de la tabla `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_inventory_indices_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_inventory_indices_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_ordered_inventories_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_ordered_inventories_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price_indices_product_id_customer_group_id_channel_id_unique` (`product_id`,`customer_group_id`,`channel_id`),
  ADD KEY `product_price_indices_channel_id_foreign` (`channel_id`),
  ADD KEY `product_price_indices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indices de la tabla `product_relations`
--
ALTER TABLE `product_relations`
  ADD UNIQUE KEY `product_relations_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_relations_child_id_foreign` (`child_id`);

--
-- Indices de la tabla `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_review_images_review_id_foreign` (`review_id`);

--
-- Indices de la tabla `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD UNIQUE KEY `product_super_attributes_product_id_attribute_id_unique` (`product_id`,`attribute_id`),
  ADD KEY `product_super_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indices de la tabla `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD UNIQUE KEY `product_up_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_up_sells_child_id_foreign` (`child_id`);

--
-- Indices de la tabla `product_videos`
--
ALTER TABLE `product_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_videos_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `refund_items`
--
ALTER TABLE `refund_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_items_parent_id_foreign` (`parent_id`),
  ADD KEY `refund_items_order_item_id_foreign` (`order_item_id`),
  ADD KEY `refund_items_refund_id_foreign` (`refund_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `search_synonyms`
--
ALTER TABLE `search_synonyms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_terms_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indices de la tabla `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_items_shipment_id_foreign` (`shipment_id`);

--
-- Indices de la tabla `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribers_list_customer_id_foreign` (`customer_id`),
  ADD KEY `subscribers_list_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `tax_categories`
--
ALTER TABLE `tax_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_categories_code_unique` (`code`);

--
-- Indices de la tabla `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_map_index_unique` (`tax_category_id`,`tax_rate_id`),
  ADD KEY `tax_categories_tax_rates_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indices de la tabla `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rates_identifier_unique` (`identifier`);

--
-- Indices de la tabla `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customizations_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customization_translations_theme_customization_id_foreign` (`theme_customization_id`);

--
-- Indices de la tabla `url_rewrites`
--
ALTER TABLE `url_rewrites`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  ADD KEY `visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`),
  ADD KEY `visits_channel_id_foreign` (`channel_id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_items_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_items_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_items_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `attribute_families`
--
ALTER TABLE `attribute_families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `attribute_groups`
--
ALTER TABLE `attribute_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_payment`
--
ALTER TABLE `cart_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `cart_rules`
--
ALTER TABLE `cart_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `catalog_rules`
--
ALTER TABLE `catalog_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `channel_translations`
--
ALTER TABLE `channel_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `compare_items`
--
ALTER TABLE `compare_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_config`
--
ALTER TABLE `core_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT de la tabla `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;

--
-- AUTO_INCREMENT de la tabla `country_state_translations`
--
ALTER TABLE `country_state_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `customer_notes`
--
ALTER TABLE `customer_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `import_batches`
--
ALTER TABLE `import_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventory_sources`
--
ALTER TABLE `inventory_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `locales`
--
ALTER TABLE `locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marketing_events`
--
ALTER TABLE `marketing_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marketing_templates`
--
ALTER TABLE `marketing_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `order_comments`
--
ALTER TABLE `order_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_flat`
--
ALTER TABLE `product_flat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `product_price_indices`
--
ALTER TABLE `product_price_indices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_videos`
--
ALTER TABLE `product_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `refund_items`
--
ALTER TABLE `refund_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `search_synonyms`
--
ALTER TABLE `search_synonyms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shipment_items`
--
ALTER TABLE `shipment_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscribers_list`
--
ALTER TABLE `subscribers_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tax_categories`
--
ALTER TABLE `tax_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `theme_customizations`
--
ALTER TABLE `theme_customizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `url_rewrites`
--
ALTER TABLE `url_rewrites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_parent_address_id_foreign` FOREIGN KEY (`parent_address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD CONSTRAINT `attribute_groups_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD CONSTRAINT `attribute_group_mappings_attribute_group_id_foreign` FOREIGN KEY (`attribute_group_id`) REFERENCES `attribute_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_group_mappings_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD CONSTRAINT `attribute_option_translations_attribute_option_id_foreign` FOREIGN KEY (`attribute_option_id`) REFERENCES `attribute_options` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Filtros para la tabla `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD CONSTRAINT `cart_payment_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD CONSTRAINT `cart_rule_channels_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD CONSTRAINT `cart_rule_coupons_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD CONSTRAINT `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` FOREIGN KEY (`cart_rule_coupon_id`) REFERENCES `cart_rule_coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_coupon_usage_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD CONSTRAINT `cart_rule_customers_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD CONSTRAINT `cart_rule_customer_groups_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD CONSTRAINT `cart_rule_translations_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD CONSTRAINT `cart_shipping_rates_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD CONSTRAINT `catalog_rule_channels_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD CONSTRAINT `catalog_rule_customer_groups_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD CONSTRAINT `catalog_rule_products_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD CONSTRAINT `catalog_rule_product_prices_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD CONSTRAINT `category_filterable_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_filterable_attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_translations_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `channels`
--
ALTER TABLE `channels`
  ADD CONSTRAINT `channels_base_currency_id_foreign` FOREIGN KEY (`base_currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `channels_default_locale_id_foreign` FOREIGN KEY (`default_locale_id`) REFERENCES `locales` (`id`),
  ADD CONSTRAINT `channels_root_category_id_foreign` FOREIGN KEY (`root_category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD CONSTRAINT `channel_currencies_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_currencies_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD CONSTRAINT `channel_inventory_sources_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_inventory_sources_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD CONSTRAINT `channel_locales_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_locales_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD CONSTRAINT `channel_translations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD CONSTRAINT `cms_page_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cms_page_channels_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD CONSTRAINT `cms_page_translations_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `compare_items`
--
ALTER TABLE `compare_items`
  ADD CONSTRAINT `compare_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compare_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `country_states`
--
ALTER TABLE `country_states`
  ADD CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD CONSTRAINT `country_state_translations_country_state_id_foreign` FOREIGN KEY (`country_state_id`) REFERENCES `country_states` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `country_translations`
--
ALTER TABLE `country_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD CONSTRAINT `currency_exchange_rates_target_currency_foreign` FOREIGN KEY (`target_currency`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `customers_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD CONSTRAINT `customer_notes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD CONSTRAINT `customer_social_accounts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `downloadable_link_purchased_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `import_batches`
--
ALTER TABLE `import_batches`
  ADD CONSTRAINT `import_batches_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD CONSTRAINT `marketing_campaigns_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_event_id_foreign` FOREIGN KEY (`marketing_event_id`) REFERENCES `marketing_events` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_template_id_foreign` FOREIGN KEY (`marketing_template_id`) REFERENCES `marketing_templates` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `order_comments`
--
ALTER TABLE `order_comments`
  ADD CONSTRAINT `order_comments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Filtros para la tabla `order_payment`
--
ALTER TABLE `order_payment`
  ADD CONSTRAINT `order_payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD CONSTRAINT `order_transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`),
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD CONSTRAINT `product_bundle_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD CONSTRAINT `product_bundle_option_products_product_bundle_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_bundle_option_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD CONSTRAINT `product_bundle_option_translations_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_channels`
--
ALTER TABLE `product_channels`
  ADD CONSTRAINT `product_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_channels_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD CONSTRAINT `product_cross_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_cross_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD CONSTRAINT `product_customer_group_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_customer_group_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD CONSTRAINT `product_downloadable_links_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD CONSTRAINT `link_translations_link_id_foreign` FOREIGN KEY (`product_downloadable_link_id`) REFERENCES `product_downloadable_links` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD CONSTRAINT `product_downloadable_samples_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD CONSTRAINT `sample_translations_sample_id_foreign` FOREIGN KEY (`product_downloadable_sample_id`) REFERENCES `product_downloadable_samples` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_flat`
--
ALTER TABLE `product_flat`
  ADD CONSTRAINT `product_flat_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`),
  ADD CONSTRAINT `product_flat_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_flat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_flat_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD CONSTRAINT `product_grouped_products_associated_product_id_foreign` FOREIGN KEY (`associated_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_grouped_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `product_inventories_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD CONSTRAINT `product_inventory_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventory_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD CONSTRAINT `product_ordered_inventories_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ordered_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD CONSTRAINT `product_price_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_relations`
--
ALTER TABLE `product_relations`
  ADD CONSTRAINT `product_relations_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_relations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD CONSTRAINT `product_review_images_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD CONSTRAINT `product_super_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_super_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD CONSTRAINT `product_up_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_up_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_videos`
--
ALTER TABLE `product_videos`
  ADD CONSTRAINT `product_videos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `refund_items`
--
ALTER TABLE `refund_items`
  ADD CONSTRAINT `refund_items_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `refund_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_refund_id_foreign` FOREIGN KEY (`refund_id`) REFERENCES `refunds` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `search_terms`
--
ALTER TABLE `search_terms`
  ADD CONSTRAINT `search_terms_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD CONSTRAINT `shipment_items_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD CONSTRAINT `subscribers_list_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribers_list_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD CONSTRAINT `tax_categories_tax_rates_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tax_categories_tax_rates_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD CONSTRAINT `theme_customizations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD CONSTRAINT `theme_customization_translations_theme_customization_id_foreign` FOREIGN KEY (`theme_customization_id`) REFERENCES `theme_customizations` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
