-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-07-2021 a las 19:56:45
-- Versión del servidor: 8.0.26
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sangrego_delyappv5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_historicas`
--

CREATE TABLE `compras_historicas` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `unidad_medida` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `inventario_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras_historicas`
--

INSERT INTO `compras_historicas` (`id`, `nombre`, `cantidad`, `unidad_medida`, `valor`, `created_at`, `updated_at`, `inventario_id`) VALUES
(12, 'Ketchup', 2.00, 'Kilogramo', 5200.00, '2021-01-31 04:46:46', '2021-01-31 04:46:46', 11),
(13, 'Papa', 1000.00, 'Gramo', 2000.00, '2021-02-01 01:47:05', '2021-02-01 01:47:05', 12),
(15, 'Pan', 40.00, 'Unidad', 8000.00, '2021-02-01 01:53:41', '2021-02-01 01:53:41', 14),
(16, 'Pan de completo', 40.00, 'Unidad', 10000.00, '2021-02-01 01:55:21', '2021-02-01 01:55:21', 15),
(17, 'Mayonesa', 3.00, 'Kilogramo', 8400.00, '2021-02-01 02:02:19', '2021-02-01 02:02:19', 16),
(19, 'Zapallo', 6.00, 'Kilogramo', 12000.00, '2021-02-01 02:03:41', '2021-02-01 02:03:41', 18),
(20, 'Cebolla', 5.00, 'Kilogramo', 5500.00, '2021-02-01 02:04:24', '2021-02-01 02:04:24', 19),
(21, 'Lechuga', 5.00, 'Unidad', 2500.00, '2021-02-01 02:05:09', '2021-02-01 02:05:09', 20),
(22, 'Limón', 10.00, 'Kilogramo', 8000.00, '2021-02-01 02:05:56', '2021-02-01 02:05:56', 21),
(23, 'Palta', 7.00, 'Kilogramo', 42000.00, '2021-02-01 02:06:51', '2021-02-01 02:06:51', 22),
(24, 'Vienesa', 200.00, 'Unidad', 25000.00, '2021-02-01 02:08:13', '2021-02-01 02:08:13', 23),
(25, 'Repollo', 7.00, 'Kilogramo', 7000.00, '2021-02-01 02:49:08', '2021-02-01 02:49:08', 24),
(26, 'Pollo', 10.00, 'Kilogramo', 40000.00, '2021-02-01 05:22:27', '2021-02-01 05:22:27', 25),
(27, 'Pan', 100.00, 'Unidad', 30000.00, '2021-02-01 05:24:28', '2021-02-01 05:24:28', 26),
(28, 'Papa', 10.00, 'Kilogramo', 10000.00, '2021-02-01 05:24:58', '2021-02-01 05:24:58', 27),
(29, 'Vacuno (lomo)', 5.00, 'Kilogramo', 25000.00, '2021-02-01 05:26:17', '2021-02-01 05:26:17', 28),
(30, 'Vienesa', 200.00, 'Unidad', 36000.00, '2021-02-01 05:27:00', '2021-02-01 05:27:00', 29),
(31, 'Bebida', 50.00, 'Unidad', 50000.00, '2021-02-02 05:25:11', '2021-02-02 05:25:11', 30),
(33, 'Vacuno (lomo)', 10.00, 'Kilogramo', 90000.00, '2021-02-02 16:23:06', '2021-02-02 16:23:06', 31),
(35, 'Cebolla', 17.00, 'Kilogramo', 17000.00, '2021-02-03 06:20:30', '2021-02-03 06:20:30', 33),
(36, 'Vacuno (lomo)', 5.00, 'Kilogramo', 8100.00, '2021-02-04 03:13:29', '2021-02-04 03:13:29', 31),
(37, 'Vacuno (lomo)', 390.00, 'Kilogramo', 9000.00, '2021-02-04 03:15:19', '2021-02-04 03:15:19', 31),
(38, 'Tomate', 10.00, 'Kilogramo', 14000.00, '2021-02-07 02:37:45', '2021-02-07 02:37:45', 34),
(40, 'Pan de completo', 100.00, 'Unidad', 15000.00, '2021-02-15 21:40:56', '2021-02-15 21:40:56', 36),
(41, 'Vienesa', 100.00, 'Unidad', 30000.00, '2021-02-15 21:41:46', '2021-02-15 21:41:46', 37),
(42, 'Palta', 3.00, 'Kilogramo', 12000.00, '2021-02-15 21:43:06', '2021-02-15 21:43:06', 38),
(43, 'Tomate', 3.00, 'Kilogramo', 3000.00, '2021-02-15 21:43:52', '2021-02-15 21:43:52', 39),
(44, 'Papa', 10.00, 'Kilogramo', 5000.00, '2021-02-15 21:49:58', '2021-02-15 21:49:58', 40),
(45, 'Bebida', 100.00, 'Unidad', 20000.00, '2021-02-15 22:32:38', '2021-02-15 22:32:38', 41),
(46, 'Choclo', 1.00, 'Kilogramo', 2000.00, '2021-02-15 22:50:47', '2021-02-15 22:50:47', 42),
(48, 'Pollo', 3.00, 'Kilogramo', 4500.00, '2021-02-15 22:53:10', '2021-02-15 22:53:10', 44),
(49, 'Acelga', 1.00, 'Kilogramo', 3000.00, '2021-02-15 22:53:47', '2021-02-15 22:53:47', 45),
(50, 'Tortilla', 20.00, 'Unidad', 4000.00, '2021-02-15 22:53:56', '2021-02-15 22:53:56', 46),
(51, 'Lechuga', 500.00, 'Gramo', 500.00, '2021-02-15 22:56:22', '2021-02-15 22:56:22', 47),
(52, 'Tomate', 500.00, 'Kilogramo', 1400.00, '2021-02-16 17:12:03', '2021-02-16 17:12:03', 34),
(53, 'Papa', 12.00, 'Gramo', 2000.00, '2021-02-16 23:49:58', '2021-02-16 23:49:58', 12),
(54, 'Papa', 10000.00, 'Gramo', 2.00, '2021-02-16 23:51:36', '2021-02-16 23:51:36', 12),
(56, 'Acelga', 300.00, 'Gramo', 4500.00, '2021-02-17 00:05:43', '2021-02-17 00:05:43', 49),
(57, 'Pan de completo', 4.00, 'Unidad', 1000.00, '2021-02-17 00:20:17', '2021-02-17 00:20:17', 36),
(58, 'Pollo', 2.00, 'Kilogramo', 7200.00, '2021-03-22 21:59:52', '2021-03-22 21:59:52', 50),
(70, 'Pan de completo', 200.00, 'Unidad', 40000.00, '2021-05-06 02:57:35', '2021-05-06 02:57:35', 62),
(71, 'Palta', 20.00, 'Kilogramo', 120000.00, '2021-05-06 02:58:01', '2021-05-06 02:58:01', 63),
(72, 'Tomate', 20.00, 'Kilogramo', 12000.00, '2021-05-06 02:58:26', '2021-05-06 02:58:26', 64),
(74, 'Repollo', 20.00, 'Kilogramo', 32000.00, '2021-05-06 03:00:16', '2021-05-06 03:00:16', 66),
(75, 'Bebida', 200.00, 'Unidad', 140000.00, '2021-05-06 03:02:01', '2021-05-06 03:02:01', 67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desperdicios`
--

CREATE TABLE `desperdicios` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `local_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `desperdicios`
--

INSERT INTO `desperdicios` (`id`, `created_at`, `updated_at`, `local_id`) VALUES
(1, '2021-01-30 21:55:28', '2021-01-30 21:55:28', 2),
(2, '2021-01-30 21:56:13', '2021-01-30 21:56:13', 2),
(3, '2021-02-17 00:15:41', '2021-02-17 00:15:41', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_desperdicios`
--

CREATE TABLE `detalle_desperdicios` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `desperdicio` decimal(8,2) NOT NULL,
  `unidad_medida` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_desperdiciado` decimal(10,2) NOT NULL,
  `desperdicio_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_desperdicios`
--

INSERT INTO `detalle_desperdicios` (`id`, `nombre`, `cantidad`, `desperdicio`, `unidad_medida`, `valor_desperdiciado`, `desperdicio_id`, `created_at`, `updated_at`) VALUES
(1, 'Pan de completo', 96.00, 2.00, 'Unidad', 300.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(2, 'Vienesa', 80.00, 6.00, 'Unidad', 1800.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(3, 'Palta', 2.00, 0.40, 'Kilogramo', 1600.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(4, 'Tomate', 2.00, 0.40, 'Kilogramo', 400.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(5, 'Papa', 6.00, 0.40, 'Kilogramo', 200.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(6, 'Bebida', 85.00, 3.00, 'Unidad', 600.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(7, 'Choclo', 1.00, 0.00, 'Kilogramo', 0.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(8, 'Pollo', 3.00, 0.00, 'Kilogramo', 0.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(9, 'Tortilla', 18.00, 2.00, 'Unidad', 400.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(10, 'Lechuga', 400.00, 100.00, 'Gramo', 100.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41'),
(11, 'Acelga', 300.00, 0.00, 'Gramo', 0.00, 3, '2021-02-17 00:15:41', '2021-02-17 00:15:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_fijos`
--

CREATE TABLE `gastos_fijos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `local_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gastos_fijos`
--

INSERT INTO `gastos_fijos` (`id`, `nombre`, `monto`, `created_at`, `updated_at`, `local_id`) VALUES
(2, 'Aceite', 35000.00, '2021-01-30 22:56:37', '2021-01-30 22:56:37', 4),
(3, 'Gas', 45000.00, '2021-01-30 22:56:56', '2021-03-22 21:48:27', 4),
(5, 'Arriendo', 200000.00, '2021-02-01 05:23:18', '2021-02-01 05:23:18', 1),
(6, 'Gas', 60000.00, '2021-02-01 05:23:35', '2021-02-01 05:23:35', 1),
(7, 'Aceite', 35000.00, '2021-02-01 05:25:26', '2021-02-01 05:25:26', 1),
(9, 'agua', 30000.00, '2021-02-15 21:45:03', '2021-02-15 21:45:03', 2),
(10, 'luz', 50000.00, '2021-02-15 21:45:14', '2021-02-15 21:45:14', 2),
(12, 'cremas', 20000.00, '2021-02-15 21:46:27', '2021-02-15 22:00:19', 2),
(15, 'Aceite', 40000.00, '2021-05-03 20:57:28', '2021-05-03 20:58:35', 5),
(16, 'Gas', 40000.00, '2021-05-03 20:58:59', '2021-05-03 20:58:59', 5),
(17, 'Sueldo', 100000.00, '2021-05-03 20:59:32', '2021-05-03 20:59:32', 5),
(18, 'Bencina', 25000.00, '2021-05-03 21:10:51', '2021-05-03 21:11:11', 5),
(19, 'Luz', 40000.00, '2021-05-03 21:39:42', '2021-05-03 21:39:42', 5),
(20, 'Agua', 35000.00, '2021-05-03 21:40:08', '2021-05-03 21:40:08', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `unidad_medida` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `merma` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `producto_id` bigint UNSIGNED NOT NULL,
  `inventario_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `nombre`, `cantidad`, `unidad_medida`, `valor`, `merma`, `created_at`, `updated_at`, `producto_id`, `inventario_id`) VALUES
(26, 'Papa', 250.00, 'Gramo', 97.50, 15.00, '2021-02-01 02:36:49', '2021-02-16 23:51:36', 12, 12),
(37, 'Pan de completo', 1.00, 'Unidad', 250.00, 0.00, '2021-02-01 02:54:33', '2021-02-01 02:54:33', 15, 15),
(38, 'Vienesa', 1.00, 'Unidad', 125.00, 0.00, '2021-02-01 02:54:33', '2021-02-01 02:54:33', 15, 23),
(39, 'Mayonesa', 40.00, 'Gramo', 112.00, 0.00, '2021-02-01 02:54:33', '2021-02-01 02:54:33', 15, 16),
(40, 'Papa', 250.00, 'Gramo', 97.50, 15.00, '2021-02-01 03:07:39', '2021-02-16 23:51:36', 16, 12),
(41, 'Vienesa', 2.00, 'Unidad', 250.00, 0.00, '2021-02-01 03:07:39', '2021-02-01 03:07:39', 16, 23),
(43, 'Bebida', 1.00, 'Unidad', 1000.00, 0.00, '2021-02-02 05:26:42', '2021-02-02 05:26:42', 18, 30),
(68, 'Papa', 250.00, 'Gramo', 97.50, 15.00, '2021-02-03 06:23:01', '2021-02-16 23:51:36', 24, 12),
(69, 'Cebolla', 50.00, 'Gramo', 50.00, 15.00, '2021-02-03 06:23:01', '2021-02-03 06:23:01', 24, 33),
(70, 'Vacuno (lomo)', 80.00, 'Gramo', 1713.60, 41.00, '2021-02-03 06:23:01', '2021-02-04 03:15:19', 24, 31),
(76, 'Papa', 400.00, 'Gramo', 155.99, 15.00, '2021-02-03 06:28:54', '2021-02-16 23:51:36', 26, 12),
(77, 'Papa', 350.00, 'Gramo', 136.49, 15.00, '2021-02-07 01:55:54', '2021-02-16 23:51:36', 27, 12),
(82, 'Tomate', 50.00, 'Gramo', 77.00, 5.00, '2021-02-07 02:42:20', '2021-02-16 17:12:03', 29, 34),
(90, 'Pan de completo', 1.00, 'Unidad', 160.00, 0.00, '2021-02-15 22:02:33', '2021-02-17 00:20:17', 34, 36),
(91, 'Vienesa', 1.00, 'Unidad', 300.00, 0.00, '2021-02-15 22:02:33', '2021-02-15 22:02:33', 34, 37),
(92, 'Palta', 200.00, 'Gramo', 800.00, 37.00, '2021-02-15 22:02:33', '2021-02-15 22:02:33', 34, 38),
(93, 'Tomate', 200.00, 'Gramo', 200.00, 5.00, '2021-02-15 22:02:33', '2021-02-15 22:02:33', 34, 39),
(94, 'Pan de completo', 1.00, 'Unidad', 160.00, 0.00, '2021-02-15 22:05:52', '2021-02-17 00:20:17', 35, 36),
(95, 'Vienesa', 1.00, 'Unidad', 300.00, 0.00, '2021-02-15 22:05:52', '2021-02-15 22:05:52', 35, 37),
(96, 'Palta', 400.00, 'Gramo', 1600.00, 37.00, '2021-02-15 22:05:52', '2021-02-15 22:05:52', 35, 38),
(97, 'Tomate', 400.00, 'Gramo', 400.00, 5.00, '2021-02-15 22:05:52', '2021-02-15 22:05:52', 35, 39),
(98, 'Pan de completo', 1.00, 'Unidad', 160.00, 0.00, '2021-02-15 22:08:30', '2021-02-17 00:20:17', 36, 36),
(99, 'Vienesa', 2.00, 'Unidad', 600.00, 0.00, '2021-02-15 22:08:30', '2021-02-15 22:08:30', 36, 37),
(100, 'Palta', 300.00, 'Gramo', 1200.00, 37.00, '2021-02-15 22:08:30', '2021-02-15 22:08:30', 36, 38),
(101, 'Tomate', 300.00, 'Gramo', 300.00, 5.00, '2021-02-15 22:08:30', '2021-02-15 22:08:30', 36, 39),
(102, 'Papa', 300.00, 'Gramo', 150.00, 15.00, '2021-02-15 22:23:07', '2021-02-15 22:23:07', 37, 40),
(103, 'Vienesa', 1.00, 'Unidad', 300.00, 0.00, '2021-02-15 22:23:07', '2021-02-15 22:23:07', 37, 37),
(108, 'Papa', 400.00, 'Gramo', 200.00, 15.00, '2021-02-15 22:27:13', '2021-02-15 22:27:13', 40, 40),
(109, 'Vienesa', 2.00, 'Unidad', 600.00, 0.00, '2021-02-15 22:27:13', '2021-02-15 22:27:13', 40, 37),
(110, 'Papa', 500.00, 'Gramo', 250.00, 15.00, '2021-02-15 22:30:42', '2021-02-15 22:30:42', 41, 40),
(111, 'Vienesa', 3.00, 'Unidad', 900.00, 0.00, '2021-02-15 22:30:42', '2021-02-15 22:30:42', 41, 37),
(112, 'Papa', 300.00, 'Gramo', 150.00, 15.00, '2021-02-15 22:33:42', '2021-02-15 22:33:42', 42, 40),
(113, 'Vienesa', 1.00, 'Unidad', 300.00, 0.00, '2021-02-15 22:33:42', '2021-02-15 22:33:42', 42, 37),
(114, 'Bebida', 1.00, 'Unidad', 200.00, 0.00, '2021-02-15 22:33:42', '2021-02-15 22:33:42', 42, 41),
(115, 'Pan de completo', 1.00, 'Unidad', 160.00, 0.00, '2021-02-15 22:37:07', '2021-02-17 00:20:17', 43, 36),
(116, 'Vienesa', 1.00, 'Unidad', 300.00, 0.00, '2021-02-15 22:37:07', '2021-02-15 22:37:07', 43, 37),
(117, 'Palta', 100.00, 'Gramo', 400.00, 37.00, '2021-02-15 22:37:07', '2021-02-15 22:37:07', 43, 38),
(118, 'Tomate', 150.00, 'Gramo', 150.00, 5.00, '2021-02-15 22:37:07', '2021-02-15 22:37:07', 43, 39),
(119, 'Bebida', 1.00, 'Unidad', 200.00, 0.00, '2021-02-15 22:37:07', '2021-02-15 22:37:07', 43, 41),
(120, 'Pan de completo', 1.00, 'Unidad', 160.00, 0.00, '2021-02-15 22:44:57', '2021-02-17 00:20:17', 44, 36),
(121, 'Vienesa', 2.00, 'Unidad', 600.00, 0.00, '2021-02-15 22:44:57', '2021-02-15 22:44:57', 44, 37),
(122, 'Palta', 150.00, 'Gramo', 600.00, 37.00, '2021-02-15 22:44:57', '2021-02-15 22:44:57', 44, 38),
(123, 'Tomate', 150.00, 'Gramo', 150.00, 5.00, '2021-02-15 22:44:57', '2021-02-15 22:44:57', 44, 39),
(124, 'Papa', 400.00, 'Gramo', 200.00, 15.00, '2021-02-15 22:44:57', '2021-02-15 22:44:57', 44, 40),
(125, 'Bebida', 2.00, 'Unidad', 400.00, 0.00, '2021-02-15 22:44:57', '2021-02-15 22:44:57', 44, 41),
(126, 'Acelga', 20.00, 'Gramo', 60.00, 40.00, '2021-02-15 22:55:12', '2021-02-15 22:55:12', 45, 45),
(132, 'Tortilla', 1.00, 'Unidad', 200.00, 0.00, '2021-02-15 22:57:36', '2021-02-15 22:57:36', 47, 46),
(133, 'Pollo', 150.00, 'Gramo', 225.00, 47.00, '2021-02-15 22:57:36', '2021-02-15 22:57:36', 47, 44),
(134, 'Choclo', 150.00, 'Gramo', 300.00, 50.00, '2021-02-15 22:57:36', '2021-02-15 22:57:36', 47, 42),
(135, 'Lechuga', 100.00, 'Gramo', 100.00, 25.00, '2021-02-15 22:57:36', '2021-02-15 22:57:36', 47, 47),
(136, 'Bebida', 1.00, 'Unidad', 200.00, 0.00, '2021-02-15 22:57:36', '2021-02-15 22:57:36', 47, 41),
(141, 'Pollo', 1.00, 'Kilogramo', 3600.00, 47.00, '2021-03-22 22:04:52', '2021-03-22 22:04:52', 50, 50),
(142, 'Papa', 500.00, 'Gramo', 195.00, 15.00, '2021-03-22 22:04:52', '2021-03-22 22:04:52', 50, 12),
(147, 'Pollo', 600.00, 'Gramo', 2400.00, 47.00, '2021-05-05 23:49:27', '2021-05-05 23:49:27', 54, 25),
(172, 'Pollo', 300.00, 'Gramo', 1200.00, 47.00, '2021-05-06 03:09:00', '2021-05-06 03:09:00', 67, 25),
(173, 'Papa', 400.00, 'Gramo', 400.00, 15.00, '2021-05-06 03:09:00', '2021-05-06 03:09:00', 67, 27),
(174, 'Bebida', 1.00, 'Unidad', 700.00, 0.00, '2021-05-06 03:09:00', '2021-05-06 03:09:00', 67, 67),
(175, 'Pollo', 250.00, 'Gramo', 1000.00, 47.00, '2021-05-06 03:10:45', '2021-05-06 03:10:45', 68, 25),
(176, 'Pollo', 500.00, 'Gramo', 2000.00, 47.00, '2021-05-06 03:13:19', '2021-05-06 03:13:19', 69, 25),
(177, 'Pollo', 400.00, 'Gramo', 1600.00, 47.00, '2021-05-06 03:14:56', '2021-05-06 03:14:56', 70, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `unidad_medida` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `pmp` decimal(10,2) NOT NULL,
  `ultimo_precio` decimal(10,2) NOT NULL,
  `merma` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `local_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`id`, `nombre`, `cantidad`, `unidad_medida`, `valor`, `pmp`, `ultimo_precio`, `merma`, `created_at`, `updated_at`, `local_id`) VALUES
(11, 'Ketchup', 2.00, 'Kilogramo', 5200.00, 2600.00, 2600.00, 0.00, '2021-01-31 04:46:46', '2021-02-01 17:29:19', 4),
(12, 'Papa', 9262.00, 'Gramo', 4002.00, 0.39, 0.00, 15.00, '2021-02-01 01:47:04', '2021-03-22 22:11:20', 4),
(14, 'Pan', 40.00, 'Unidad', 8000.00, 200.00, 200.00, 0.00, '2021-02-01 01:53:41', '2021-02-04 03:01:25', 4),
(15, 'Pan de completo', 38.00, 'Unidad', 10000.00, 250.00, 250.00, 0.00, '2021-02-01 01:55:21', '2021-02-07 02:34:56', 4),
(16, 'Mayonesa', 3.00, 'Kilogramo', 8400.00, 2800.00, 2800.00, 0.00, '2021-02-01 02:02:19', '2021-02-07 02:34:56', 4),
(18, 'Zapallo', 6.00, 'Kilogramo', 12000.00, 2000.00, 2000.00, 31.00, '2021-02-01 02:03:41', '2021-02-01 02:03:41', 4),
(19, 'Cebolla', 5.00, 'Kilogramo', 5500.00, 1100.00, 1100.00, 15.00, '2021-02-01 02:04:24', '2021-02-01 02:04:24', 4),
(20, 'Lechuga', 5.00, 'Unidad', 2500.00, 500.00, 500.00, 25.00, '2021-02-01 02:05:09', '2021-02-01 02:05:09', 4),
(21, 'Limón', 10.00, 'Kilogramo', 8000.00, 800.00, 800.00, 36.00, '2021-02-01 02:05:56', '2021-02-01 02:05:56', 4),
(22, 'Palta', 7.00, 'Kilogramo', 42000.00, 6000.00, 6000.00, 37.00, '2021-02-01 02:06:51', '2021-02-04 03:01:25', 4),
(23, 'Vienesa', 185.00, 'Unidad', 25000.00, 125.00, 125.00, 0.00, '2021-02-01 02:08:13', '2021-03-22 21:58:17', 4),
(24, 'Repollo', 7.00, 'Kilogramo', 7000.00, 1000.00, 1000.00, 35.00, '2021-02-01 02:49:08', '2021-02-01 02:49:08', 4),
(25, 'Pollo', 10.00, 'Kilogramo', 40000.00, 4000.00, 4000.00, 47.00, '2021-02-01 05:22:27', '2021-02-01 05:22:27', 1),
(26, 'Pan', 100.00, 'Unidad', 30000.00, 300.00, 300.00, 0.00, '2021-02-01 05:24:28', '2021-02-01 05:24:28', 1),
(27, 'Papa', 10.00, 'Kilogramo', 10000.00, 1000.00, 1000.00, 15.00, '2021-02-01 05:24:58', '2021-02-01 05:24:58', 1),
(28, 'Vacuno (lomo)', 5.00, 'Kilogramo', 25000.00, 5000.00, 5000.00, 41.00, '2021-02-01 05:26:17', '2021-02-01 05:26:17', 1),
(29, 'Vienesa', 200.00, 'Unidad', 36000.00, 180.00, 180.00, 0.00, '2021-02-01 05:27:00', '2021-02-01 05:27:00', 1),
(30, 'Bebida', 45.00, 'Unidad', 50000.00, 1000.00, 1000.00, 0.00, '2021-02-02 05:25:11', '2021-02-07 02:34:56', 4),
(31, 'Vacuno (lomo)', 5.00, 'Kilogramo', 107100.00, 21420.00, 23.08, 41.00, '2021-02-02 16:23:06', '2021-02-04 03:15:19', 4),
(33, 'Cebolla', 17.00, 'Kilogramo', 17000.00, 1000.00, 1000.00, 15.00, '2021-02-03 06:20:30', '2021-02-03 06:20:30', 4),
(34, 'Tomate', 10.00, 'Kilogramo', 15400.00, 1540.00, 2.80, 5.00, '2021-02-07 02:37:45', '2021-02-16 17:12:03', 4),
(36, 'Pan de completo', 93.00, 'Unidad', 16000.00, 160.00, 250.00, 0.00, '2021-02-15 21:40:56', '2021-05-02 06:29:42', 2),
(37, 'Vienesa', 69.00, 'Unidad', 24000.00, 300.00, 300.00, 0.00, '2021-02-15 21:41:46', '2021-05-06 02:11:31', 2),
(38, 'Palta', -998.30, 'Kilogramo', 8000.00, 4000.00, 4000.00, 37.00, '2021-02-15 21:43:06', '2021-05-02 06:29:42', 2),
(39, 'Tomate', -998.15, 'Kilogramo', 2000.00, 1000.00, 1000.00, 5.00, '2021-02-15 21:43:51', '2021-02-17 00:39:16', 2),
(40, 'Papa', -1194.70, 'Kilogramo', 3000.00, 500.00, 500.00, 15.00, '2021-02-15 21:49:58', '2021-05-06 02:11:31', 2),
(41, 'Bebida', 79.00, 'Unidad', 17000.00, 200.00, 200.00, 0.00, '2021-02-15 22:32:38', '2021-05-06 01:38:07', 2),
(42, 'Choclo', 0.85, 'Kilogramo', 2000.00, 2000.00, 2000.00, 50.00, '2021-02-15 22:50:47', '2021-05-06 01:17:05', 2),
(44, 'Pollo', 2.85, 'Kilogramo', 4500.00, 1500.00, 1500.00, 47.00, '2021-02-15 22:53:10', '2021-05-06 01:17:05', 2),
(45, 'Acelga', 0.62, 'Kilogramo', 3000.00, 3000.00, 3000.00, 40.00, '2021-02-15 22:53:47', '2021-02-15 23:00:06', 4),
(46, 'Tortilla', 17.00, 'Unidad', 3600.00, 200.00, 200.00, 0.00, '2021-02-15 22:53:56', '2021-05-06 01:17:05', 2),
(47, 'Lechuga', 300.00, 'Gramo', 400.00, 1.00, 1.00, 25.00, '2021-02-15 22:56:22', '2021-05-06 01:17:05', 2),
(49, 'Acelga', 300.00, 'Gramo', 4500.00, 15.00, 15.00, 40.00, '2021-02-17 00:05:43', '2021-02-17 00:15:41', 2),
(50, 'Pollo', 1.00, 'Kilogramo', 7200.00, 3600.00, 3600.00, 47.00, '2021-03-22 21:59:52', '2021-03-22 22:11:20', 4),
(62, 'Pan de completo', 200.00, 'Unidad', 40000.00, 200.00, 200.00, 0.00, '2021-05-06 02:57:35', '2021-05-06 02:57:35', 1),
(63, 'Palta', 20.00, 'Kilogramo', 120000.00, 6000.00, 6000.00, 37.00, '2021-05-06 02:58:01', '2021-05-06 02:58:01', 1),
(64, 'Tomate', 20.00, 'Kilogramo', 12000.00, 600.00, 600.00, 5.00, '2021-05-06 02:58:26', '2021-05-06 02:58:26', 1),
(66, 'Repollo', 20.00, 'Kilogramo', 32000.00, 1600.00, 1600.00, 35.00, '2021-05-06 03:00:16', '2021-05-06 03:00:16', 1),
(67, 'Bebida', 200.00, 'Unidad', 140000.00, 700.00, 700.00, 0.00, '2021-05-06 03:02:01', '2021-05-06 03:02:01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitud` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitud` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`id`, `nombre`, `email`, `direccion`, `latitud`, `longitud`, `telefono`, `created_at`, `updated_at`) VALUES
(1690351692869528, 'asdsa', 'asdaskj@gmail.com', 'Los Batallones 1602, Maipú, Santiago Metropolitan 9250000, Chile', '-33.511342', '-70.743356', '972619115', '2021-01-30 22:17:01', '2021-01-30 22:17:01'),
(1690359175348543, 'adsas', 'gabriel.aravena.rivero@ciisa.cl', 'Argentina 465, Maipú, Santiago Metropolitan 9250000, Chile', '-33.498727', '-70.765998', '972619115', '2021-01-31 00:15:57', '2021-01-31 00:15:57'),
(1690359579165360, 'sadasd', 'gabriel.aravena.rivero@ciisa.cl', 'Argentina 465, Maipú, Santiago Metropolitan 9250000, Chile', '-33.498727', '-70.765998', '972619115', '2021-01-31 00:22:18', '2021-01-31 00:22:18'),
(1690470827867034, 'Leonardo Ovalle', 'zepol_40@hotmail.com', 'Siemprevivas, Arica, Arica y Parinacota 1000000, Chile', '-18.477349', '-70.288751', '986280145', '2021-02-01 05:53:08', '2021-02-01 05:53:08'),
(1690514556239243, 'Nico Page', 'nicolas.gonzalez@lasalle.cl', 'Raúl Silva Castro, San Pedro de la Paz, Bío Bío 4130000, Chile', '-36.891838', '-73.139053', '986280148', '2021-02-01 17:26:04', '2021-02-01 17:26:04'),
(1690514759435645, 'Nicolas Gonzalez', 'nicolas.gonzalez@lasalle.cl', 'Siempre Viva, Concón, Valparaíso 2510000, Chile', '-32.930752', '-71.541534', '986280148', '2021-02-01 17:28:51', '2021-02-01 17:28:51'),
(1690558132856087, 'Nicolas Gonzalez', 'nicoimpresos@gmail.com', 'Bravo Luco, Pudahuel, Santiago Metropolitan 9020000, Chile', '-33.432629', '-70.767967', '986280148', '2021-02-02 04:58:32', '2021-02-02 04:58:32'),
(1690724126621874, 'Caro', 'ovalle.c@hotmail.com', 'Las Petunias 97, Los Vilos, Coquimbo 1940000, Chile', '-31.902838', '-71.494186', '985685778', '2021-02-04 00:57:35', '2021-02-04 00:57:35'),
(1690724978542349, 'Nico Page', 'nicoimpresos@gmail.com', 'República 20, Santiago, Santiago Metropolitan 8320000, Chile', '-33.448681', '-70.668022', '986280148', '2021-02-04 01:10:29', '2021-02-04 01:10:29'),
(1690967234719465, 'Agueda Díaz', 'correo@gmail.com', 'República 20, Santiago, Santiago Metropolitan 8320000, Chile', '-33.448681', '-70.668022', '225355467', '2021-02-06 17:20:57', '2021-02-06 17:20:57'),
(1691002040717096, 'Nico Page', 'nicoimpresos@gmail.com', 'Avenida Rodrigo De Araya 3701, Ñuñoa, Santiago Metropolitan 7750000, Chile', '-33.473843', '-70.593239', '986280148', '2021-02-07 02:34:15', '2021-02-07 02:34:15'),
(1691002664590028, 'Nicolas Gonzalez', 'nicoimpresos@gmail.com', 'Bravo Luco, Pudahuel, Santiago Metropolitan 9020000, Chile', '-33.432629', '-70.767967', '986280148', '2021-02-07 02:43:42', '2021-02-07 02:43:42'),
(1691795194594410, 'Angel', 'prueba@gmail.com', 'Nueva Valdes 930, Santiago, Santiago Metropolitan 8320000, Chile', '-33.456463', '-70.64473', '987654312', '2021-02-15 20:42:04', '2021-02-15 20:42:04'),
(1691803926650749, 'Nico Page', 'nicoimpresos@gmail.com', 'Siemprevivas, Arica, Arica y Parinacota 1000000, Chile', '-18.477349', '-70.288751', '986280148', '2021-02-15 22:59:44', '2021-02-15 22:59:44'),
(1691819554828549, 'Cablrsbvga', 'contacto@nicolabs.cl', 'Coloso, Antofagasta, Antagasta, Chile', '-23.7616', '-70.4615', '986535855', '2021-02-16 03:12:29', '2021-02-16 03:12:29'),
(1691894636528851, 'Gabriel', 'gabriel.aravena.rivero@ciisa.cl', 'Los Batallones 1602, Maipú, Santiago Metropolitan 9250000, Chile', '-33.511342', '-70.743356', '972619115', '2021-02-16 23:48:28', '2021-02-16 23:48:28'),
(1691897801735019, 'Gabriel', 'gabriel.aravena.rivero@ciisa.cl', 'Los Batallones 1602, Maipú, Santiago Metropolitan 9250000, Chile', '-33.511342', '-70.743356', '972619115', '2021-02-16 23:52:00', '2021-02-16 23:52:00'),
(1691898302097771, 'Gabriel', 'gabriel.aravena.rivero@ciisa.cl', 'Carlos Cariola, Macul, Santiago Metropolitan 7810000, Chile', '-33.493156', '-70.593491', '972619115', '2021-02-17 00:00:37', '2021-02-17 00:00:37'),
(1694970623768883, 'Nicolas Gonzalez', 'nicoimpresos@gmail.com', 'Bravo Luco, Pudahuel, Santiago Metropolitan 9020000, Chile', '-33.432629', '-70.767967', '986280148', '2021-03-22 21:52:57', '2021-03-22 21:52:57'),
(1695362987097101, 'DANIEL', 'DANIEL@DANIEL.CL', '3110000, Nancagua, Nancagua, Libertador General Bernardo O\'Higgins, Chile', '-34.65', '-71.2', '123456789', '2021-03-27 05:51:30', '2021-03-27 05:51:30'),
(1698625568511191, 'Gabriel Aravena', 'gabriel@gmail.com', 'Los Batallones 1602, Maipú, Santiago Metropolitan 9250000, Chile', '-33.511342', '-70.743356', '972619115', '2021-05-02 06:08:49', '2021-05-02 06:08:49'),
(1698626982440565, 'Gabriel Aravena', 'gabriel.aravena.rivero@ciisa.cl', 'Los Batallones 1602, Maipú, Santiago Metropolitan 9250000, Chile', '-33.511342', '-70.743356', '972619115', '2021-05-02 06:29:14', '2021-05-02 06:29:14'),
(1698966966802674, 'juan', 'juan.compra@delyapp.cl', 'Las Torres 5150, Peñalolén, Santiago Metropolitan 7910000, Chile', '-33.499931', '-70.579193', '988774456', '2021-05-06 00:35:12', '2021-05-06 00:35:12'),
(1698978747112736, 'Nico Page', 'nicoimpresos@gmail.com', 'Bravo Luco 1386, Pudahuel, Santiago Metropolitan 9020000, Chile', '-33.433167', '-70.768364', '986280148', '2021-05-06 03:40:53', '2021-05-06 03:40:53'),
(1699030587798935, 'Nicolas Gonzalez', 'nicoimpresos@gmail.com', 'Bravo Luco 1386, Pudahuel, Santiago Metropolitan 9020000, Chile', '-33.433167', '-70.768364', '986280148', '2021-05-06 17:24:34', '2021-05-06 17:24:34'),
(1699031006673742, 'Cliente Nicolás', 'nicoimpresos@gmail.com', 'Bravo Luco 1386, Pudahuel, Santiago Metropolitan 9020000, Chile', '-33.433167', '-70.768364', '986280148', '2021-05-06 17:31:23', '2021-05-06 17:31:23'),
(1699031331443448, 'Nicolas Gonzalez', 'nicoimpresos@gmail.com', 'Bravo Luco 1386, Pudahuel, Santiago Metropolitan 9020000, Chile', '-33.433167', '-70.768364', '986280148', '2021-05-06 17:39:10', '2021-05-06 17:39:10'),
(1699218940649374, 'Nico Page', 'nicoimpresos@gmail.com', 'Las Siemprevivas, Coquimbo, Coquimbo 1780000, Chile', '-29.987492', '-71.351578', '986280148', '2021-05-08 19:17:49', '2021-05-08 19:17:49'),
(1704316417534297, 'Michael Silva', 'msilva@informatik.cl', 'Vivar 777, Diego de Almagro, Atacama 1500000, Chile', '-26.38982', '-70.046177', '999610457', '2021-07-04 01:40:52', '2021-07-04 01:40:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `local`
--

CREATE TABLE `local` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valor_delivery` decimal(8,2) DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitud` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitud` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingreso_mensual` decimal(10,2) NOT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `distancia_delivery` decimal(8,2) DEFAULT NULL,
  `ganancia` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `local`
--

INSERT INTO `local` (`id`, `nombre`, `direccion`, `telefono`, `imagen`, `logo`, `valor_delivery`, `estado`, `latitud`, `longitud`, `ingreso_mensual`, `delivery`, `distancia_delivery`, `ganancia`, `created_at`, `updated_at`) VALUES
(1, 'Los lunáticos por el bajón', 'Serrano, Pudahuel, Santiago Metropolitan 9020000, Chile', '+56972619115', '/storage/imagenes/locales/6G7MFr4Lmu2qPjI1FRNd.jpg', '/storage/imagenes/locales/tuiC7DMzdWBH3kAGvRgd.jpg', 1000.00, 'activado', '-33.452732', '-70.766045', 400000.00, 1, 20.00, 30.00, '2021-01-30 18:15:38', '2021-07-20 17:05:39'),
(2, 'SON DELICIAS', 'Las Torres 5150, Peñalolén, Santiago Metropolitan 7910000, Chile', '912345678', '/storage/imagenes/locales/7JuoiaJ2yZfBzhAmT18g.jpg', '/storage/imagenes/locales/yUgXfl3DIRExotiy5KpL.jpg', 3000.00, 'activado', '-33.499931', '-70.579193', 1000000.00, 1, 10.00, 25.00, '2021-01-30 21:48:10', '2021-05-21 20:29:16'),
(4, 'La Chabelita Prueba', 'Bravo Luco 1386, Pudahuel, Santiago Metropolitan 9020000, Chile', '+56986542136', '/storage/imagenes/locales/Bnt26CegxlzBBLitJxEU.jpg', '/storage/imagenes/locales/LHB4IvtSycpZ25KI7717.jpg', NULL, 'activado', '-33.433167', '-70.768364', 350000.00, 0, NULL, 20.00, '2021-01-30 22:54:13', '2021-07-20 17:05:42'),
(5, 'La Chabelita', 'Santa Blanca 9490, Pudahuel, Santiago Metropolitan 9020000, Chile', '+56954152997', '/storage/imagenes/locales/rhMdXN0YRVVdR4sEe8lM.jpg', '/storage/imagenes/locales/Gk5pCGB5a591JrBBWHAb.jpg', 1000.00, 'activado', '-33.432514', '-70.768995', 350000.00, 1, 1.00, 55.00, '2021-05-03 20:49:07', '2021-05-21 17:14:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mermas`
--

CREATE TABLE `mermas` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mermas`
--

INSERT INTO `mermas` (`id`, `nombre`, `porcentaje`) VALUES
(1, 'Acelga', 40.00),
(2, 'Achicoria', 11.00),
(3, 'Ajo', 23.00),
(4, 'Alcaucil', 52.00),
(5, 'Apio', 37.00),
(6, 'Arvejas', 55.00),
(7, 'Batatas', 25.00),
(8, 'Berenjenas', 13.00),
(9, 'Berro', 49.00),
(10, 'Brócoli', 50.00),
(11, 'Cebolla', 15.00),
(12, 'Coliflor', 55.00),
(13, 'Lechuga', 25.00),
(14, 'Papa', 15.00),
(15, 'Pepino', 30.00),
(16, 'Pimiento', 26.00),
(17, 'Haba', 40.00),
(18, 'Repollo', 35.00),
(19, 'Tomate', 5.00),
(20, 'Zanahoria', 37.00),
(21, 'Zapallo', 31.00),
(22, 'Banana', 35.00),
(23, 'Cereza', 8.00),
(24, 'Ciruela', 5.00),
(25, 'Chirimoya', 29.00),
(26, 'Damasco', 14.00),
(27, 'Durazno', 19.00),
(28, 'Frutilla', 4.00),
(29, 'Kiwi', 20.00),
(30, 'Limón', 36.00),
(31, 'Mandarina', 37.00),
(32, 'Manzana', 14.00),
(33, 'Melón', 33.00),
(34, 'Naranja', 35.00),
(35, 'Palta', 37.00),
(36, 'Pera', 26.00),
(37, 'Sandía', 30.00),
(38, 'Uva', 6.00),
(39, 'Cerdo (costillas)', 33.00),
(40, 'Cerdo (carne magra)', 18.00),
(41, 'Ganso', 41.00),
(42, 'Cordero (paleta)', 20.00),
(43, 'Cordero (costillas)', 24.00),
(44, 'Pato', 16.00),
(45, 'Pavo', 39.00),
(46, 'Pollo', 47.00),
(47, 'Vacuno (puchero)', 27.00),
(48, 'Vacuno (tira de asado)', 21.00),
(49, 'Vacuno (lomo)', 41.00),
(50, 'Vacuno (nalga)', 16.00),
(51, 'Lengua', 23.00),
(52, 'Salmón (entero)', 35.00),
(53, 'Vienesa', 0.00),
(54, 'Pan de completo', 0.00),
(55, 'Pan', 0.00),
(56, 'Mayonesa', 0.00),
(57, 'Ketchup', 0.00),
(58, 'Mostaza', 0.00),
(59, 'Azucar', 0.00),
(60, 'Bebida', 0.00),
(61, 'Jugo', 0.00),
(62, 'Gallina', 42.00),
(63, 'Liebre', 38.00),
(64, 'Bacalo', 52.00),
(65, 'Carpa', 50.00),
(66, 'Almeja', 40.00),
(67, 'Arenque de lago', 44.00),
(68, 'Arenque de mar', 44.00),
(69, 'Caballo', 52.00),
(70, 'Camarón', 40.00),
(71, 'Pejerrey', 45.00),
(72, 'Pescada', 42.00),
(73, 'Perca', 52.00),
(74, 'Sábana', 35.00),
(75, 'Salmón (entero)', 42.00),
(76, 'Sardina', 18.00),
(77, 'Sardina (envasada)', 35.00),
(78, 'Salmón (envasado)', 42.00),
(79, 'Mantequilla', 0.00),
(80, 'Margarina', 0.00),
(81, 'Harina de trigo', 5.00),
(82, 'Champiñones', 5.00),
(83, 'Huevo', 0.00),
(84, 'Jamón', 5.00),
(85, 'Leche', 5.00),
(86, 'Leche de coco', 5.00),
(87, 'Levadura', 5.00),
(88, 'Limón', 36.00),
(89, 'Menta', 5.00),
(90, 'Miel', 1.00),
(91, 'Morrón', 26.00),
(92, 'Mozarella', 5.00),
(93, 'Orégano', 5.00),
(94, 'Pan rayado', 5.00),
(95, 'Perejil', 40.00),
(96, 'Queso crema', 5.00),
(97, 'Queso parmesano', 10.00),
(98, 'Queso rallado', 10.00),
(99, 'Sal', 5.00),
(100, 'Yogur', 5.00),
(101, 'Tortilla', 0.00),
(102, 'Arroz', 5.00),
(103, 'Choclo', 50.00),
(104, 'Poroto', 50.00),
(105, 'Poroto negro', 50.00),
(106, 'Pepinillo', 10.00),
(107, 'Palmitos', 10.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_resets_table', 1),
(39, '2019_08_19_000000_create_failed_jobs_table', 1),
(40, '2020_10_10_013952_create_local_table', 1),
(41, '2020_10_10_023019_create_productos_table', 1),
(42, '2020_10_10_024239_create_inventarios_table', 1),
(43, '2020_10_10_024615_create_compras_historicas_table', 1),
(44, '2020_10_10_031504_create_ingredientes_table', 1),
(45, '2020_10_10_032946_create_ventas_table', 1),
(46, '2020_10_10_033255_create_productos_users_table', 1),
(47, '2020_10_18_081628_create_mermas_table', 1),
(48, '2020_12_03_005022_create_roles_table', 1),
(49, '2020_12_03_005241_create_role_user_table', 1),
(50, '2020_12_07_050631_create_invitados_table', 1),
(51, '2020_12_17_220708_create_gastos_fijos_table', 1),
(52, '2020_12_18_222053_create_registro_ventas_table', 1),
(53, '2021_01_17_014423_create_desperdicios_table', 1),
(54, '2021_01_17_015703_create_detalle_desperdicios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `precio_sugerido` decimal(10,2) DEFAULT NULL,
  `tiempo_preparacion` decimal(8,2) DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `local_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `precio_sugerido`, `tiempo_preparacion`, `descripcion`, `estado`, `imagen`, `categoria`, `created_at`, `updated_at`, `local_id`) VALUES
(12, 'Papas fritas', 1190.00, 200.00, 20.00, 'Papitas Fritas <3', 'activado', '/storage/imagenes/productos/E3LOEgboEMaJWkwOhqgX.jpg', 'papas frita', '2021-02-01 02:36:49', '2021-03-22 21:48:27', 4),
(15, 'Hot Dog', 950.00, 900.00, 5.00, 'Vienesa mayo', 'activado', '/storage/imagenes/productos/qA3harkCmQbL2jA398p0.jpg', 'completos', '2021-02-01 02:54:33', '2021-03-22 21:48:28', 4),
(16, 'SalchiPapa', 1500.00, 700.00, 20.00, 'Vienesa conn Papas fritas', 'activado', '/storage/imagenes/productos/f0qYIqfrppf2GuRvRC1T.jpg', 'papas frita', '2021-02-01 03:07:39', '2021-03-22 21:52:13', 4),
(18, 'Bebida de medio litro', 2000.00, 1800.00, 1.00, 'Coca-Cola', 'activado', '/storage/imagenes/productos/o4ARGrvW4LKq4e2fDCuW.jpg', 'bebidas', '2021-02-02 05:26:42', '2021-03-22 21:48:28', 4),
(24, 'Chorrillana', 3800.00, 5600.00, 30.00, 'Sin huevo', 'activado', '/storage/imagenes/productos/aXO3U2eSg09T8eRDCkCS.jpg', 'chorrillanas', '2021-02-03 06:23:01', '2021-03-22 21:48:28', 4),
(26, 'Papas fritas Grande', 1900.00, 300.00, 30.00, 'Papas Grande', 'desactivado', '/storage/imagenes/productos/joNJLZv2TTQECPyzgZP7.jpg', 'papas frita', '2021-02-03 06:28:54', '2021-03-22 21:48:28', 4),
(27, 'Papas medianas', 1600.00, 300.00, 25.00, 'Papas fritas medianas', 'activado', '/storage/imagenes/productos/m7EAl2I0bOdzLX9EbX3f.jpg', 'papas frita', '2021-02-07 01:55:54', '2021-03-22 21:48:28', 4),
(29, 'tomate prueba', 120.00, 100.00, 8.00, 'cghjdghj', 'desactivado', '/storage/imagenes/productos/BkBlVSeWzV6FuNDkDthz.jpg', 'otro', '2021-02-07 02:42:20', '2021-03-22 21:48:28', 4),
(34, 'COMPLETO ITALIANO XS', 3400.00, 3400.00, 10.00, 'Delicioso italiano, de los buenos para los mejores clientes.', 'desactivado', '/storage/imagenes/productos/3ludSqWE2Z43orMvKapo.jpg', 'promoción', '2021-02-15 22:02:33', '2021-05-02 06:29:42', 2),
(35, 'COMPLETO ITALIANO L', 2800.00, 6000.00, 10.00, 'Delicioso y rico completo italiano, tamaño L.', 'activado', '/storage/imagenes/productos/WmAPpTCo6pzUAPwjJEp7.jpg', 'completos', '2021-02-15 22:05:52', '2021-02-17 00:33:17', 2),
(36, 'COPLET ITALIANO XL', 3500.00, 5200.00, 15.00, 'Rico y delicioso completo italiano XL.\r\nDe los buenos para los mejores clientes.', 'activado', '/storage/imagenes/productos/U1DlgboAbWJQubWJ5n9B.jpg', 'completos', '2021-02-15 22:08:30', '2021-02-17 00:33:17', 2),
(37, 'SALCHIPAPA S', 1200.00, 800.00, 15.00, 'Rica y deliciosa salchipapa S', 'activado', '/storage/imagenes/productos/eVQbOBThPmbrw2udUAzp.jpg', 'papas fritas', '2021-02-15 22:23:07', '2021-02-17 00:33:17', 2),
(40, 'SALCHIPAPA L', 1800.00, 1500.00, 15.00, 'Ricas y deliciosas salchipapa L', 'desactivado', '/storage/imagenes/productos/8l5t9dFIlgEjT5yf8Qpb.jpg', 'papas fritas', '2021-02-15 22:27:13', '2021-05-06 02:11:31', 2),
(41, 'SALCHIPAPA XL', 3000.00, 2100.00, 20.00, 'Ricas  deliciosas salchipapas XL', 'activado', '/storage/imagenes/productos/DVsua1urxZOkzTKeKH8I.jpg', 'papas fritas', '2021-02-15 22:30:42', '2021-02-17 00:33:17', 2),
(42, 'SALCHIPAPA S + BEBIDA', 1500.00, 1200.00, 10.00, 'Rica y deliciosa salchipapas S + una bebidas de 500ml a eleccion.', 'desactivado', '/storage/imagenes/productos/e930nqKYnQkmTli13ayR.jpg', 'promoción', '2021-02-15 22:33:42', '2021-05-06 01:38:07', 2),
(43, 'COMPLETO ITALIANO S + BEBIDA', 1500.00, 2500.00, 15.00, 'Completo italiano S + bebida a eleccion de 500ml.', 'activado', '/storage/imagenes/productos/nPe3pC5sX6X5fdzzuy9h.jpg', 'promoción', '2021-02-15 22:37:07', '2021-02-17 00:33:17', 2),
(44, 'COMPLETO ITALIANO L + SALCHIPAPAS L + 2 BEBIDAD DE 500ML', 4990.00, 4400.00, 20.00, 'Rico y Delicioso completo italiano L + salchipapa L + 2 bebidas de 500ml c/u', 'activado', '/storage/imagenes/productos/KIUULD0QofddRZFihw5W.jpg', 'combo', '2021-02-15 22:44:57', '2021-02-17 00:33:17', 2),
(45, 'Acelga', 200.00, 200.00, 1.00, 'ssasad', 'activado', '/storage/imagenes/productos/z135JzJVOlEUaPePhAum.jpg', 'bebidas', '2021-02-15 22:55:12', '2021-03-22 21:48:28', 4),
(47, 'FAJITA S + BEBIDA DE 500ML', 2990.00, 2700.00, 10.00, 'Rico y delicioso combo de fajita S + bebida de 500ml', 'activado', '/storage/imagenes/productos/JlUjMJzwD1JqRd9wQm7y.jpg', 'combo', '2021-02-15 22:57:36', '2021-02-17 00:33:17', 2),
(50, 'Pollo coñac', 17000.00, 14700.00, 1.00, 'Pollo al coñac con papas fritas', 'activado', NULL, 'promoción', '2021-03-22 22:04:52', '2021-03-22 22:06:05', 4),
(54, 'Pollo entero', 13400.00, 13400.00, 45.00, 'Pollo a las brasas entero', 'activado', '/storage/imagenes/productos/2bywfTYrAsEop0Zr1PY3.jpg', 'pollo', '2021-05-05 23:49:27', '2021-05-05 23:50:53', 1),
(67, 'Pollo con papas fritas individual', 7000.00, 10100.00, 20.00, '1/4 de pollo con papas más bebida', 'activado', '/storage/imagenes/productos/oWHrFcp8GyKqKcBzqpJ6.jpg', 'promoción', '2021-05-06 03:09:00', '2021-05-06 03:12:10', 1),
(68, '1/4 de pollo', 5600.00, 5600.00, 30.00, '1/4 de Pollo solo', 'activado', '/storage/imagenes/productos/Gy936WwhmLgGxaSgdk2F.jpg', 'pollo', '2021-05-06 03:10:45', '2021-05-06 03:11:36', 1),
(69, '1/2 de Pollo solo', 11100.00, 11100.00, 30.00, '1/2 de Pollo solo', 'activado', '/storage/imagenes/productos/6VRdOd5FI8HrwAcEDgQW.jpg', 'pollo', '2021-05-06 03:13:19', '2021-05-06 03:13:47', 1),
(70, 'Alistas de pollo crujientes', 8900.00, 8900.00, 40.00, 'Alistas de pollo crujientes 2 personas', 'activado', '/storage/imagenes/productos/P3L25tV4riVT03rMkqXQ.jpg', 'pollo', '2021-05-06 03:14:56', '2021-05-06 03:15:34', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_users`
--

CREATE TABLE `productos_users` (
  `id` bigint UNSIGNED NOT NULL,
  `producto_id` bigint UNSIGNED NOT NULL,
  `cantidad` int NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `ventas_id` bigint UNSIGNED NOT NULL,
  `invitado` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos_users`
--

INSERT INTO `productos_users` (`id`, `producto_id`, `cantidad`, `users_id`, `ventas_id`, `invitado`, `created_at`, `updated_at`) VALUES
(11, 12, 1, 3, 11, NULL, '2021-02-01 03:14:23', '2021-02-01 03:14:23'),
(12, 12, 1, 1, 12, 1690470827867034, '2021-02-01 05:50:11', '2021-02-01 05:50:11'),
(17, 15, 1, 1, 17, 1690650804631432, '2021-02-03 05:30:50', '2021-02-03 05:30:50'),
(20, 16, 1, 1, 19, 1690724126621874, '2021-02-04 00:56:15', '2021-02-04 00:56:15'),
(21, 18, 5, 1, 20, 1690724978542349, '2021-02-04 01:09:48', '2021-02-04 01:09:48'),
(23, 16, 1, 1, 21, 1690967234719465, '2021-02-06 17:20:21', '2021-02-06 17:20:21'),
(25, 29, 10, 1, 23, 1691002664590028, '2021-02-07 02:43:30', '2021-02-07 02:43:30'),
(27, 16, 1, 1, 24, 1691795194594410, '2021-02-15 20:40:25', '2021-02-15 20:40:25'),
(28, 45, 1, 8, 25, NULL, '2021-02-15 22:56:26', '2021-02-15 22:56:26'),
(29, 45, 18, 1, 26, 1691803926650749, '2021-02-15 22:59:13', '2021-02-15 22:59:13'),
(30, 16, 1, 3, 27, NULL, '2021-02-16 00:47:38', '2021-02-16 00:47:38'),
(31, 37, 1, 1, 28, 1691810775558485, '2021-02-16 00:48:04', '2021-02-16 00:48:04'),
(32, 42, 12, 1, 29, 1691819554828549, '2021-02-16 03:07:37', '2021-02-16 03:07:37'),
(36, 12, 4, 1, 31, 1691894938770569, '2021-02-16 23:05:49', '2021-02-16 23:05:49'),
(37, 16, 1, 1, 31, 1691894938770569, '2021-02-16 23:06:38', '2021-02-16 23:06:38'),
(38, 47, 2, 1, 32, 1691895248825509, '2021-02-16 23:10:44', '2021-02-16 23:10:44'),
(41, 37, 1, 2, 33, 1691894636528851, '2021-02-16 23:45:05', '2021-02-16 23:51:12'),
(42, 34, 1, 2, 33, 1691894636528851, '2021-02-16 23:50:50', '2021-02-16 23:51:12'),
(43, 34, 1, 1, 34, 1691897801735019, '2021-02-16 23:51:37', '2021-02-16 23:51:37'),
(45, 35, 1, 1, 36, 1691898302097771, '2021-02-16 23:59:16', '2021-02-16 23:59:16'),
(46, 43, 1, 6, 37, NULL, '2021-02-17 00:22:26', '2021-02-17 00:22:26'),
(47, 34, 1, 3, 38, NULL, '2021-02-17 00:37:22', '2021-02-17 00:37:22'),
(48, 42, 2, 3, 38, NULL, '2021-02-17 00:37:22', '2021-02-17 00:37:22'),
(49, 35, 2, 3, 39, NULL, '2021-02-17 00:39:08', '2021-02-17 00:39:08'),
(50, 34, 3, 3, 39, NULL, '2021-02-17 00:39:08', '2021-02-17 00:39:08'),
(51, 34, 3, 3, 40, NULL, '2021-02-17 00:39:15', '2021-02-17 00:39:15'),
(52, 12, 1, 1, 41, 1692493194728273, '2021-02-23 13:34:50', '2021-02-23 13:34:50'),
(53, 24, 1, 1, 42, 1693272742326935, '2021-03-04 04:05:25', '2021-03-04 04:05:25'),
(54, 16, 1, 1, 43, 1694970623768883, '2021-03-22 21:52:31', '2021-03-22 21:52:31'),
(55, 16, 2, 3, 44, NULL, '2021-03-22 21:57:41', '2021-03-22 21:57:41'),
(56, 50, 1, 9, 45, 1694971551486610, '2021-03-22 22:07:15', '2021-03-22 22:07:33'),
(57, 34, 1, 1, 46, 1695362987097101, '2021-03-27 05:48:57', '2021-03-27 05:48:57'),
(58, 27, 1, 8, 47, NULL, '2021-04-14 17:33:48', '2021-04-14 17:33:48'),
(59, 16, 1, 1, 48, 1698525943229503, '2021-05-01 03:42:47', '2021-05-01 03:42:47'),
(62, 42, 1, 1, 50, 1698625568511191, '2021-05-02 06:27:01', '2021-05-02 06:27:01'),
(63, 34, 1, 1, 51, 1698626982440565, '2021-05-02 06:28:52', '2021-05-02 06:28:52'),
(65, 43, 1, 1, 53, 1698895554287126, '2021-05-05 05:37:36', '2021-05-05 05:37:36'),
(66, 35, 1, 1, 53, 1698895554287126, '2021-05-05 05:37:50', '2021-05-05 05:37:50'),
(72, 47, 1, 13, 56, 1698969555248599, '2021-05-06 01:15:39', '2021-05-06 01:16:21'),
(73, 42, 1, 13, 57, 1698970961863908, '2021-05-06 01:36:33', '2021-05-06 01:37:05'),
(74, 36, 3, 1, 58, 1698972214985197, '2021-05-06 01:56:05', '2021-05-06 01:56:05'),
(75, 36, 3, 1, 58, 1698972214985197, '2021-05-06 01:57:09', '2021-05-06 01:57:09'),
(76, 40, 1, 13, 59, 1698972615979437, '2021-05-06 02:09:44', '2021-05-06 02:10:29'),
(80, 67, 1, 9, 62, NULL, '2021-05-06 03:48:04', '2021-05-06 03:48:04'),
(95, 54, 1, 1, 71, 1699417227673264, '2021-05-10 23:49:22', '2021-05-10 23:49:22'),
(96, 67, 1, 1, 72, 1699432164521503, '2021-05-11 03:46:47', '2021-05-11 03:46:47'),
(99, 35, 1, 1, 74, 1704031283491948, '2021-06-30 22:07:49', '2021-06-30 22:07:49'),
(100, 35, 1, 1, 75, 1704316417534297, '2021-07-04 01:39:54', '2021-07-04 01:39:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_ventas`
--

CREATE TABLE `registro_ventas` (
  `id` bigint UNSIGNED NOT NULL,
  `local_id` int NOT NULL,
  `users_id` int DEFAULT NULL,
  `invitado` bigint DEFAULT NULL,
  `venta_id` int NOT NULL,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `entregado` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registro_ventas`
--

INSERT INTO `registro_ventas` (`id`, `local_id`, `users_id`, `invitado`, `venta_id`, `tipo`, `valor`, `delivery`, `entregado`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 1690351692869528, 3, 'online', 3000.00, 0, 1, '2021-01-30 22:17:51', '2021-01-30 22:26:17'),
(2, 1, NULL, 1690359175348543, 4, 'online', 2000.00, 1, 1, '2021-01-31 00:16:23', '2021-01-31 00:19:21'),
(3, 1, NULL, 1690359579165360, 5, 'online', 3000.00, 1, 1, '2021-01-31 00:22:38', '2021-01-31 00:24:51'),
(4, 4, 9, NULL, 8, 'online', 1200.00, 0, 0, '2021-01-31 02:59:33', '2021-01-31 02:59:33'),
(5, 4, NULL, 1690470827867034, 12, 'online', 1190.00, 0, 1, '2021-02-01 05:53:52', '2021-02-01 18:46:52'),
(6, 4, NULL, 1690514759435645, 14, 'online', 2800.00, 0, 1, '2021-02-01 17:29:19', '2021-02-01 18:46:48'),
(7, 4, NULL, 1690558132856087, 15, 'online', 6000.00, 0, 1, '2021-02-02 05:01:38', '2021-02-02 16:19:24'),
(8, 4, NULL, 1690724126621874, 19, 'online', 1500.00, 0, 1, '2021-02-04 01:02:14', '2021-02-04 01:05:10'),
(9, 4, NULL, 1690724978542349, 20, 'online', 10000.00, 0, 1, '2021-02-04 01:10:59', '2021-02-04 03:38:00'),
(10, 4, 9, NULL, 18, 'online', 13571.00, 0, 1, '2021-02-04 03:01:25', '2021-02-04 03:38:04'),
(11, 4, NULL, 1690967234719465, 21, 'online', 1500.00, 0, 1, '2021-02-06 17:21:30', '2021-02-07 02:35:42'),
(12, 4, NULL, 1691002040717096, 22, 'online', 2000.00, 0, 1, '2021-02-07 02:34:56', '2021-02-07 02:35:45'),
(13, 4, NULL, 1691002664590028, 23, 'online', 1190.00, 0, 1, '2021-02-07 02:44:19', '2021-02-16 00:50:25'),
(14, 4, 8, NULL, 25, 'online', 200.00, 0, 1, '2021-02-15 22:57:34', '2021-02-16 00:50:22'),
(15, 4, NULL, 1691803926650749, 26, 'online', 3600.00, 0, 1, '2021-02-15 23:00:06', '2021-02-16 00:50:20'),
(16, 2, NULL, 1691819554828549, 29, 'online', 18000.00, 0, 1, '2021-02-16 03:15:04', '2021-05-06 02:03:44'),
(17, 2, NULL, 1691897801735019, 34, 'online', 2100.00, 0, 1, '2021-02-16 23:52:38', '2021-02-16 23:58:14'),
(18, 2, NULL, 1691898302097771, 36, 'online', 5800.00, 1, 1, '2021-02-17 00:01:03', '2021-02-17 00:02:02'),
(19, 2, 6, NULL, 37, 'online', 1500.00, 0, 1, '2021-02-17 00:24:47', '2021-05-06 02:03:41'),
(20, 4, 9, NULL, 45, 'online', 17000.00, 0, 1, '2021-03-22 22:11:20', '2021-03-22 22:11:57'),
(21, 2, NULL, 1698626982440565, 51, 'online', 3400.00, 0, 1, '2021-05-02 06:29:42', '2021-05-06 02:03:38'),
(22, 5, 11, NULL, 52, 'online', 1500.00, 0, 1, '2021-05-03 21:47:28', '2021-05-05 03:54:51'),
(23, 5, 13, NULL, 55, 'online', 1000.00, 0, 1, '2021-05-06 01:04:35', '2021-05-06 17:41:14'),
(24, 2, 13, NULL, 56, 'online', 5990.00, 1, 1, '2021-05-06 01:17:05', '2021-05-06 01:17:49'),
(25, 2, 13, NULL, 57, 'online', 4500.00, 1, 1, '2021-05-06 01:38:07', '2021-05-06 01:39:01'),
(26, 2, 13, NULL, 59, 'online', 4800.00, 1, 1, '2021-05-06 02:11:31', '2021-05-06 02:13:21'),
(27, 5, NULL, 1698978747112736, 60, 'online', 29100.00, 0, 1, '2021-05-06 03:41:31', '2021-05-06 17:41:16'),
(28, 5, NULL, NULL, 64, 'presencial', 4000.00, NULL, 1, '2021-05-06 17:19:32', '2021-05-06 17:19:32'),
(29, 5, NULL, 1699030587798935, 66, 'online', 2400.00, 0, 1, '2021-05-06 17:25:34', '2021-05-06 17:41:18'),
(30, 5, NULL, 1699031331443448, 69, 'online', 2400.00, 0, 1, '2021-05-06 17:39:36', '2021-05-06 17:43:22'),
(31, 5, NULL, 1699218940649374, 70, 'online', 4000.00, 0, 1, '2021-05-08 19:18:34', '2021-05-08 19:18:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'root', 'Root', '2021-01-30 18:15:38', '2021-01-30 18:15:38'),
(2, 'admin', 'Administrador', '2021-01-30 18:15:38', '2021-01-30 18:15:38'),
(3, 'user', 'User', '2021-01-30 18:15:38', '2021-01-30 18:15:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2021-01-30 18:15:38', '2021-01-30 18:15:38'),
(2, 2, 2, '2021-01-30 18:15:38', '2021-01-30 18:15:38'),
(3, 3, 4, '2021-01-30 18:15:38', '2021-01-30 18:15:38'),
(4, 3, 5, '2021-01-30 20:47:44', '2021-01-30 20:47:44'),
(5, 2, 6, '2021-01-30 21:48:10', '2021-01-30 21:48:10'),
(6, 2, 7, '2021-01-30 22:50:08', '2021-01-30 22:50:08'),
(7, 2, 8, '2021-01-30 22:54:13', '2021-01-30 22:54:13'),
(8, 3, 9, '2021-01-31 02:47:31', '2021-01-31 02:47:31'),
(9, 3, 10, '2021-02-27 01:02:48', '2021-02-27 01:02:48'),
(10, 2, 11, '2021-05-03 20:49:07', '2021-05-03 20:49:07'),
(11, 3, 12, '2021-05-05 23:50:00', '2021-05-05 23:50:00'),
(12, 3, 13, '2021-05-05 23:50:49', '2021-05-05 23:50:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_id` bigint DEFAULT NULL,
  `latitud` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitud` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `direccion`, `local_id`, `latitud`, `longitud`, `telefono`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Invitado', 'Invitado', NULL, 'Invitado', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-30 18:15:39', '2021-01-30 18:15:39'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$aEh7oQm9jAT67DPilZYM7uE1pSW0EywGe1vOEIRPKKmWLb5vDE3fO', NULL, 1, NULL, NULL, NULL, NULL, '2021-01-30 18:15:39', '2021-01-30 18:15:39'),
(3, 'Root', 'root@gmail.com', NULL, '$2y$10$Oxg7EI6YdtKbbiqZt9GW.u4Afm7UEtqyUXvk5Esng4Q6zp/6/Lm7S', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-30 18:15:39', '2021-01-30 18:15:39'),
(4, 'Usuario', 'usuario@gmail.com', NULL, '$2y$10$a25gsqs7bUpjyyH2h/pd.evwB.w1qU9DL4RBRIK24kIaqzNJpgwIi', 'Los Batallones 1602, Maipú, Santiago Metropolitan 9250000, Chile', NULL, '-33.511342', '-70.743356', '972619115', NULL, '2021-01-30 18:15:39', '2021-01-30 18:15:39'),
(5, 'Angel', 'test@gmail.com', NULL, '$2y$10$MRxpE9EvDlHYFwbh9lbGaenU/XT.enERlFQl.ByjtdoTW8nlI9s2q', 'Avenida Las Torres 5150, Peñalolén, Santiago Metropolitan 7910000, Chile', NULL, '-33.500926', '-70.583161', '987654320', NULL, '2021-01-30 20:47:44', '2021-01-30 20:47:44'),
(6, 'Admin', 'angel.bravo.enrique@ciisa.cl', NULL, '$2y$10$3mThZ6qUoOh29dMvRZq7Rejc3gmDhPpVmMLNw4Po1XlQpPrfYhI8i', 'Los Batallones 1602, Maipú, Santiago Metropolitan 9250000, Chile', 2, '-33.511342', '-70.743356', '912345678', '0YNXXas8PjVjRuUZWPG3m91PSCL1TV2Gj3MH31OxlzlnKD4lpZkZPsn9QXJm', '2021-01-30 21:48:10', '2021-05-05 23:43:53'),
(7, 'Admin', 'chabela@gmail.com', NULL, '$2y$10$t87CMBiFkt2EICOl5C4xleLufAjUC.n.vKFs96u3RaOgG07pxRrUC', 'Bravo Luco 1386, Pudahuel, Santiago Metropolitan 9020000, Chile', 3, '-33.433167', '-70.768364', '+56986589742', NULL, '2021-01-30 22:50:08', '2021-01-30 22:50:08'),
(8, 'Admin', 'nicolas.gonzalez.araneda@ciisa.cl', NULL, '$2y$10$m1cGy8cI5r42FeAjWeBzB.c9MVcgD7vf9dECjILQZDw0JRGdpGK0i', 'Bravo Luco 1386, Pudahuel, Santiago Metropolitan 9020000, Chile', 4, '-33.433167', '-70.768364', '+56986542136', 'Z6q1WYY45Lu4bEghm6UbeSIyegY0FHLRxMLazshSf4NQ6ESJSmVKr2CkY2jj', '2021-01-30 22:54:13', '2021-01-30 22:54:13'),
(9, 'Nico Page', 'nicoimpresos@gmail.com', NULL, '$2y$10$ylHZ6xfXO3M6NyqYYbWGQealG/OyPk/ACqGejydyi57QHoAdMXUO.', 'Chile 216, Maipú, Santiago Metropolitan 9250000, Chile', NULL, '-33.503902', '-70.760818', '986280148', 'HSNhnQcJLWDm5NWI2pvgxpHeHaW2aeA53evA3jjmv7ZREtyzlEQ2pfqZrlmK', '2021-01-31 02:47:31', '2021-02-06 17:09:36'),
(10, 'Combet Combet', 'mr.combetohct@gmail.com', NULL, '$2y$10$jCICCrT5xGjzmGmw53k9FenpY47JURdBcXcn/WLf5.h5n/Gs7UPaW', 'Jakarta, Quilicura, Santiago Metropolitan 8700000, Chile', NULL, '-33.3536', '-70.751358', '081366763', NULL, '2021-02-27 01:02:48', '2021-02-27 01:02:48'),
(11, 'Isabel', 'isabelpintorivera@gmail.com', NULL, '$2y$10$6XCeiUrBr1cjd/MERkCIOeAL02Vy6/REijmYPRk6mxDzDUopQqBNK', 'Santa Blanca 9490, Pudahuel, Santiago Metropolitan 9020000, Chile', 5, '-33.432514', '-70.768995', '+56954152997', 'NM2werxjoxkbZz1wf7bQCk0vQkWCliLBPTbmTzEqp63iJF5pDhB0gDqzLJaE', '2021-05-03 20:49:07', '2021-05-06 03:43:07'),
(12, 'Gabriel', 'gabobudo@gmail.com', NULL, '$2y$10$jDmttMNGsxTCnqZmzBy.Eel8LUQWBtm832sxBildgcOJwQ8b8gwOe', 'Los Batallones 1602, Maipú, Santiago Metropolitan 9250000, Chile', NULL, '-33.511342', '-70.743356', '972619115', NULL, '2021-05-05 23:50:00', '2021-05-05 23:50:00'),
(13, 'Angel2', 'angel.bravo.56@hotmail.com', NULL, '$2y$10$yGd7QsY/Rx7P03oSqlpXGulgyhaK3hL3AtWQFFxHcXp3ctzL39S5q', 'Metro Matta, Santiago, Santiago Metropolitan 8320000, Chile', NULL, '-33.458081', '-70.64308', '987564231', NULL, '2021-05-05 23:50:49', '2021-05-05 23:50:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint UNSIGNED NOT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` decimal(12,2) DEFAULT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `estado`, `tipo`, `precio`, `delivery`, `created_at`, `updated_at`) VALUES
(1, 'carrito', 'online', 1500.00, 0, '2021-01-30 22:11:34', '2021-01-30 22:11:34'),
(2, 'carrito', 'online', 0.00, 0, '2021-01-30 22:15:07', '2021-02-08 20:18:31'),
(3, 'finalizado', 'online', 3000.00, 0, '2021-01-30 22:16:35', '2021-01-30 22:17:51'),
(4, 'finalizado', 'online', 2000.00, 1, '2021-01-31 00:15:31', '2021-01-31 00:16:23'),
(5, 'finalizado', 'online', 3000.00, 1, '2021-01-31 00:21:56', '2021-01-31 00:22:38'),
(6, 'carrito', 'online', 1200.00, 0, '2021-01-31 02:45:11', '2021-01-31 02:45:11'),
(7, 'carrito', 'online', 1200.00, 0, '2021-01-31 02:46:49', '2021-01-31 02:46:49'),
(8, 'finalizado', 'online', 1200.00, 0, '2021-01-31 02:53:30', '2021-01-31 02:59:33'),
(9, 'carrito', 'online', 8000.00, 0, '2021-01-31 04:05:50', '2021-01-31 04:05:50'),
(10, 'carrito', 'online', 3689.00, 0, '2021-02-01 02:29:29', '2021-02-01 02:29:29'),
(11, 'iniciado', NULL, NULL, NULL, '2021-02-01 03:14:23', '2021-02-01 03:14:23'),
(12, 'finalizado', 'online', 1190.00, 0, '2021-02-01 05:50:11', '2021-02-01 05:53:52'),
(13, 'carrito', 'online', 2800.00, 0, '2021-02-01 17:25:13', '2021-02-01 17:25:13'),
(14, 'finalizado', 'online', 2800.00, 0, '2021-02-01 17:28:27', '2021-02-01 17:29:19'),
(15, 'finalizado', 'online', 6000.00, 0, '2021-02-02 04:57:51', '2021-02-02 05:01:38'),
(16, 'carrito', 'online', 3800.00, 0, '2021-02-02 22:24:30', '2021-02-02 22:24:30'),
(17, 'carrito', 'online', 3452.00, 0, '2021-02-03 05:30:50', '2021-02-03 05:31:19'),
(18, 'finalizado', 'online', 13571.00, 0, '2021-02-03 17:08:57', '2021-02-04 03:01:25'),
(19, 'finalizado', 'online', 1500.00, 0, '2021-02-04 00:56:15', '2021-02-04 01:02:14'),
(20, 'finalizado', 'online', 10000.00, 0, '2021-02-04 01:09:48', '2021-02-04 01:10:59'),
(21, 'finalizado', 'online', 1500.00, 0, '2021-02-06 17:20:21', '2021-02-06 17:21:30'),
(22, 'finalizado', 'online', 2000.00, 0, '2021-02-07 02:33:35', '2021-02-07 02:34:56'),
(23, 'finalizado', 'online', 1190.00, 0, '2021-02-07 02:43:30', '2021-02-07 02:44:19'),
(24, 'carrito', 'online', 1500.00, 0, '2021-02-15 20:40:25', '2021-02-15 20:40:25'),
(25, 'finalizado', 'online', 200.00, 0, '2021-02-15 22:56:26', '2021-02-15 22:57:34'),
(26, 'finalizado', 'online', 3600.00, 0, '2021-02-15 22:59:13', '2021-02-15 23:00:06'),
(27, 'iniciado', NULL, NULL, NULL, '2021-02-16 00:47:38', '2021-02-16 00:47:38'),
(28, 'carrito', 'online', 1200.00, 0, '2021-02-16 00:48:04', '2021-02-16 00:48:04'),
(29, 'finalizado', 'online', 18000.00, 0, '2021-02-16 03:07:37', '2021-02-16 03:15:04'),
(30, 'carrito', 'online', 0.00, 0, '2021-02-16 23:01:10', '2021-02-16 23:44:47'),
(31, 'carrito', 'online', 6260.00, 0, '2021-02-16 23:05:49', '2021-02-16 23:06:38'),
(32, 'carrito', 'online', 5980.00, 0, '2021-02-16 23:10:44', '2021-02-16 23:12:08'),
(33, 'carrito', 'online', 3300.00, 0, '2021-02-16 23:45:05', '2021-02-16 23:50:50'),
(34, 'finalizado', 'online', 2100.00, 0, '2021-02-16 23:51:37', '2021-02-16 23:52:38'),
(35, 'carrito', 'online', 3000.00, 1, '2021-02-16 23:58:39', '2021-02-17 00:00:54'),
(36, 'finalizado', 'online', 5800.00, 1, '2021-02-16 23:59:16', '2021-02-17 00:01:03'),
(37, 'finalizado', 'online', 1500.00, 0, '2021-02-17 00:22:26', '2021-02-17 00:24:47'),
(38, 'iniciado', NULL, NULL, NULL, '2021-02-17 00:37:22', '2021-02-17 00:37:22'),
(39, 'iniciado', NULL, NULL, NULL, '2021-02-17 00:39:08', '2021-02-17 00:39:08'),
(40, 'iniciado', NULL, NULL, NULL, '2021-02-17 00:39:15', '2021-02-17 00:39:15'),
(41, 'carrito', 'online', 1190.00, 0, '2021-02-23 13:34:50', '2021-02-23 13:34:50'),
(42, 'carrito', 'online', 3800.00, 0, '2021-03-04 04:05:25', '2021-03-04 04:05:25'),
(43, 'carrito', 'online', 1500.00, 0, '2021-03-22 21:52:31', '2021-03-22 21:52:31'),
(44, 'iniciado', NULL, NULL, NULL, '2021-03-22 21:57:41', '2021-03-22 21:57:41'),
(45, 'finalizado', 'online', 17000.00, 0, '2021-03-22 22:07:15', '2021-03-22 22:11:20'),
(46, 'carrito', 'online', 3400.00, 0, '2021-03-27 05:48:57', '2021-03-27 05:48:57'),
(47, 'carrito', 'online', 1600.00, 0, '2021-04-14 17:33:48', '2021-04-14 17:33:48'),
(48, 'carrito', 'online', 1500.00, 0, '2021-05-01 03:42:47', '2021-05-01 03:42:47'),
(49, 'carrito', 'online', 3000.00, 1, '2021-05-02 06:07:30', '2021-05-02 06:08:02'),
(50, 'carrito', 'online', 1500.00, 0, '2021-05-02 06:08:16', '2021-05-02 06:27:43'),
(51, 'finalizado', 'online', 3400.00, 0, '2021-05-02 06:28:52', '2021-05-02 06:29:42'),
(52, 'finalizado', 'online', 1500.00, 0, '2021-05-03 21:46:22', '2021-05-03 21:47:28'),
(53, 'carrito', 'online', 4300.00, 0, '2021-05-05 05:37:36', '2021-05-05 05:37:50'),
(54, 'carrito', 'online', 4000.00, 0, '2021-05-06 00:32:40', '2021-05-06 00:33:07'),
(55, 'finalizado', 'online', 1000.00, 0, '2021-05-06 00:45:27', '2021-05-06 01:04:35'),
(56, 'finalizado', 'online', 5990.00, 1, '2021-05-06 01:15:39', '2021-05-06 01:17:05'),
(57, 'finalizado', 'online', 4500.00, 1, '2021-05-06 01:36:33', '2021-05-06 01:38:07'),
(58, 'carrito', 'online', 21000.00, 0, '2021-05-06 01:56:05', '2021-05-06 01:57:09'),
(59, 'finalizado', 'online', 4800.00, 1, '2021-05-06 02:09:44', '2021-05-06 02:11:31'),
(60, 'finalizado', 'online', 29100.00, 0, '2021-05-06 03:39:55', '2021-05-06 03:41:31'),
(61, 'carrito', 'online', 0.00, 0, '2021-05-06 03:45:30', '2021-05-06 03:47:50'),
(62, 'carrito', 'online', 8000.00, 1, '2021-05-06 03:48:04', '2021-05-06 03:48:09'),
(63, 'carrito', 'online', 9800.00, 0, '2021-05-06 04:35:42', '2021-05-06 04:35:42'),
(64, 'finalizado', 'presencial', 4000.00, NULL, '2021-05-06 17:19:20', '2021-05-06 17:19:32'),
(65, 'carrito', 'online', 2900.00, 0, '2021-05-06 17:20:13', '2021-05-06 17:20:42'),
(66, 'finalizado', 'online', 2400.00, 0, '2021-05-06 17:23:54', '2021-05-06 17:25:34'),
(67, 'carrito', 'online', 5200.00, 0, '2021-05-06 17:30:33', '2021-05-06 17:30:49'),
(68, 'carrito', 'online', 0.00, 0, '2021-05-06 17:35:43', '2021-05-06 17:37:12'),
(69, 'finalizado', 'online', 2400.00, 0, '2021-05-06 17:38:22', '2021-05-06 17:39:36'),
(70, 'finalizado', 'online', 4000.00, 0, '2021-05-08 19:17:41', '2021-05-08 19:18:34'),
(71, 'carrito', 'online', 13400.00, 0, '2021-05-10 23:49:22', '2021-05-10 23:49:22'),
(72, 'carrito', 'online', 8000.00, 1, '2021-05-11 03:46:47', '2021-05-11 03:46:50'),
(73, 'carrito', 'online', 25900.00, 1, '2021-05-21 17:11:47', '2021-05-21 17:30:40'),
(74, 'carrito', 'online', 2800.00, 0, '2021-06-30 22:07:49', '2021-06-30 22:07:49'),
(75, 'carrito', 'online', 5800.00, 1, '2021-07-04 01:39:54', '2021-07-04 01:40:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras_historicas`
--
ALTER TABLE `compras_historicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_historicas_inventario_id_foreign` (`inventario_id`);

--
-- Indices de la tabla `desperdicios`
--
ALTER TABLE `desperdicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `desperdicios_local_id_foreign` (`local_id`);

--
-- Indices de la tabla `detalle_desperdicios`
--
ALTER TABLE `detalle_desperdicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_desperdicios_desperdicio_id_foreign` (`desperdicio_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos_fijos`
--
ALTER TABLE `gastos_fijos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gastos_fijos_local_id_foreign` (`local_id`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredientes_producto_id_foreign` (`producto_id`),
  ADD KEY `ingredientes_inventario_id_foreign` (`inventario_id`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventarios_local_id_foreign` (`local_id`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_local_id_foreign` (`local_id`);

--
-- Indices de la tabla `productos_users`
--
ALTER TABLE `productos_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_users_producto_id_foreign` (`producto_id`),
  ADD KEY `productos_users_users_id_foreign` (`users_id`),
  ADD KEY `productos_users_ventas_id_foreign` (`ventas_id`);

--
-- Indices de la tabla `registro_ventas`
--
ALTER TABLE `registro_ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras_historicas`
--
ALTER TABLE `compras_historicas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `desperdicios`
--
ALTER TABLE `desperdicios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalle_desperdicios`
--
ALTER TABLE `detalle_desperdicios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gastos_fijos`
--
ALTER TABLE `gastos_fijos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1704316417534298;

--
-- AUTO_INCREMENT de la tabla `local`
--
ALTER TABLE `local`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `productos_users`
--
ALTER TABLE `productos_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `registro_ventas`
--
ALTER TABLE `registro_ventas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras_historicas`
--
ALTER TABLE `compras_historicas`
  ADD CONSTRAINT `compras_historicas_inventario_id_foreign` FOREIGN KEY (`inventario_id`) REFERENCES `inventarios` (`id`);

--
-- Filtros para la tabla `desperdicios`
--
ALTER TABLE `desperdicios`
  ADD CONSTRAINT `desperdicios_local_id_foreign` FOREIGN KEY (`local_id`) REFERENCES `local` (`id`);

--
-- Filtros para la tabla `detalle_desperdicios`
--
ALTER TABLE `detalle_desperdicios`
  ADD CONSTRAINT `detalle_desperdicios_desperdicio_id_foreign` FOREIGN KEY (`desperdicio_id`) REFERENCES `desperdicios` (`id`);

--
-- Filtros para la tabla `gastos_fijos`
--
ALTER TABLE `gastos_fijos`
  ADD CONSTRAINT `gastos_fijos_local_id_foreign` FOREIGN KEY (`local_id`) REFERENCES `local` (`id`);

--
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `ingredientes_inventario_id_foreign` FOREIGN KEY (`inventario_id`) REFERENCES `inventarios` (`id`),
  ADD CONSTRAINT `ingredientes_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD CONSTRAINT `inventarios_local_id_foreign` FOREIGN KEY (`local_id`) REFERENCES `local` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_local_id_foreign` FOREIGN KEY (`local_id`) REFERENCES `local` (`id`);

--
-- Filtros para la tabla `productos_users`
--
ALTER TABLE `productos_users`
  ADD CONSTRAINT `productos_users_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `productos_users_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `productos_users_ventas_id_foreign` FOREIGN KEY (`ventas_id`) REFERENCES `ventas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
