-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2020 a las 21:05:18
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `delivery`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimento`
--

CREATE TABLE `alimento` (
  `id` int(11) NOT NULL,
  `portada` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `oferta` tinyint(1) NOT NULL,
  `portada_oferta` varchar(150) DEFAULT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alimento`
--

INSERT INTO `alimento` (`id`, `portada`, `titulo`, `descripcion`, `precio`, `categoria`, `oferta`, `portada_oferta`, `estado`) VALUES
(1, '5ec41dee388c0.png', 'California Burger', 'Turkey / Alfalfa / Lettuce / Chicken Beef / Tomatoes', '$25.90', 'Hamburguesas', 1, '', 'Disponible'),
(2, '5ec44fe0abbb0.png', 'Mexican Burger', 'All-natural chicken / Tomatoes / Arugula / Baguette', '$21.90', 'Hamburguesas', 0, '', 'Disponible'),
(3, '5ec44ffb53fe9.png', 'Mini Burger', 'Smoked turkey breast / Bacon / Lettuce / Toast', '$10.90', 'Hamburguesas', 0, '', 'Disponible'),
(4, '5ec45b26ece68.png', 'Chicken Burger', 'Roasted red peppers / Arugula / Basil / Baguette', '$15.90', 'Hamburguesas', 0, '', 'Disponible'),
(5, '5ec45b5c51572.png', 'Double Burger', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$35.90', 'Hamburguesas', 0, '', 'Disponible'),
(1000001, '5ec53b46d522e.png', 'Tomato Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$10.90', 'Tostadas', 0, '', 'Disponible'),
(1000002, '5ec53b6c56168.png', 'Chicken Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Tostadas', 0, '', 'Disponible'),
(1000003, '5ec53b9570abe.png', 'Cheese Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$10.90', 'Tostadas', 0, '', 'Disponible'),
(1000004, '5ec53baf27b1e.png', 'Beef Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$10.90', 'Tostadas', 0, '', 'Disponible'),
(1000005, '5ec53bc8129f3.png', 'Mediterreant Toast', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Tostadas', 1, '', 'Disponible'),
(1000006, '5ec53c578d572.png', 'Pepperoni', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Pizzas', 0, '', 'Disponible'),
(1000007, '5ec53c7341728.png', 'Hawaiian', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Pizzas', 0, '', 'Disponible'),
(1000008, '5ec53c8658e90.png', 'Sicilian', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Pizzas', 0, '', 'Disponible'),
(1000009, '5ec53ca642592.png', 'Classic Cheddar', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Pizzas', 1, '', 'Disponible'),
(1000010, '5ec53ce229d49.png', 'Buffalo Bleu', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Ensaladas', 0, '', 'Disponible'),
(1000011, '5ec53d1bb745f.png', 'Chicken Caprese', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Ensaladas', 0, '', 'Agotado'),
(1000012, '5ec53d2f0f35e.png', 'Greek Salad', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Ensaladas', 1, '5ecbf695f3ab6.jpeg', 'Disponible'),
(1000013, '5ec53d47c7acf.png', 'Turkey Salad', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Ensaladas', 1, '', 'Disponible'),
(1000015, '5ef365d398cf2.png', 'Donas', 'Fresa / Chocolate / Chispas', '$5.5', 'Postres', 1, '5ef3660aad2ee.jpeg', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `idalimento` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `producto` varchar(250) NOT NULL,
  `createAt` datetime NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `idalimento`, `iduser`, `producto`, `createAt`, `estado`, `cantidad`, `precio`) VALUES
(30, 1000006, 1, 'Pepperoni', '2020-07-13 00:00:00', 'En el carrito', 1, '15.90');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_general`
--

CREATE TABLE `config_general` (
  `id` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `cr` varchar(150) NOT NULL,
  `ubicacion` longtext NOT NULL,
  `correo` varchar(150) NOT NULL,
  `telefono1` varchar(30) NOT NULL,
  `telefono2` varchar(30) NOT NULL,
  `facebook` varchar(300) NOT NULL,
  `twitter` varchar(300) NOT NULL,
  `instagram` varchar(300) NOT NULL,
  `horarios` varchar(300) NOT NULL,
  `iframe` longtext NOT NULL,
  `categorias_menu` longtext NOT NULL,
  `color_texto_menu` varchar(20) NOT NULL,
  `color_fondo_menu` varchar(10) NOT NULL,
  `facebook_iframe` longtext NOT NULL,
  `culqi_public` varchar(50) NOT NULL,
  `culqi_private` varchar(50) NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `config_general`
--

INSERT INTO `config_general` (`id`, `nombre_empresa`, `logo`, `cr`, `ubicacion`, `correo`, `telefono1`, `telefono2`, `facebook`, `twitter`, `instagram`, `horarios`, `iframe`, `categorias_menu`, `color_texto_menu`, `color_fondo_menu`, `facebook_iframe`, `culqi_public`, `culqi_private`, `counter`) VALUES
(1, 'Quick Food', '5ec436a0df303.svg', 'El bajón  © 2020', 'Serrano 1340, local 2, Pudahuel', 'juan@gmail.com', '+5691273497', '(+18) 001-2345', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', '9:00am-7:00pm', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2493.346998274002!2d-77.03931130287246!3d-12.09864768277226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2spe!4v1589811010099!5m2!1ses-419!2spe\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'Pizzas, Hamburguesas, Bebidas, Tostadas, Ensaladas', 'white', '#791313', '<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fenespanol&tabs=timeline&width=340&height=350&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=775587709299584\" width=\"340\" height=\"350\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>', 'pk_test_9204944525b58275', 'sk_test_bce400facb406e4b', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `telefono` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombres`, `apellidos`, `mensaje`, `correo`, `createAt`, `telefono`) VALUES
(1, 'Diego', 'Arroyo', 'Hola k hace', 'diegoarca02@gmail.com', '2020-06-16', 998106245),
(2, 'Vincent', 'Murray', 'LKJDSGFPOÑAE G', 'vincentmurray01@gmail.com', '2020-06-16', 998106245),
(4, 'Eduardo', 'Campos', 'Hola como estas quiero info por favor', 'eduar.arca001@gmail.com', '2020-06-17', 960845614);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(150) NOT NULL,
  `respuesta` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `faq`
--

INSERT INTO `faq` (`id`, `pregunta`, `respuesta`) VALUES
(1, 'Can I track my order?', 'Yes, you can! After placing your order you will receive an order confirmation via email. Each order starts production 24 hours after your order is placed. Within 72 hours of you placing your order, you will receive an expected delivery date. When the order ships, you will receive another email with the tracking number and a link to trace the order online with the carrier.'),
(2, 'How can I change something in my order?', 'If you need to change something in your order, please contact us immediately. We usually process orders within 2-4 hours, and once we have processed your order, we will be unable to make any changes.'),
(3, 'How can I pay for my order?', 'We accept Visa, MasterCard, and American Express credit and debit cards for your convenience.'),
(4, 'Can I return an item?', 'Please contact our administrators for more information.'),
(5, 'How long will my order take to be delivered?', 'Delivery times will depend on your location. Once payment is confirmed your order will be packaged. Delivery can be expected within 10 business days.'),
(6, 'How long will my order take to be delivered? e', 'Delivery times will depend on your location. Once payment is confirmed your order will be packaged. Delivery can be expected within 10 business days.'),
(7, 'How long will my order take to be delivered?', 'Delivery times will depend on your location. Once payment is confirmed your order will be packaged. Delivery can be expected within 10 business days.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `resena` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `foto`, `titulo`, `resena`) VALUES
(1, '5eca91a71d780.jpeg', 'Salads', 'We offer a vast variety of salads, both classic and modern, including world favorites.'),
(2, '5eca94497ac3d.jpeg', 'Snacks', 'Looking for a tasty snack? Fast Food menu has something to offer!'),
(6, '5eca9741a97ed.jpeg', 'Sandwiches', 'Our sandwiches are perfect if you want to have a quick bite at affordable price.'),
(7, '5eca976d92a83.jpeg', 'Mini Hamburgers', 'Finish the design for blog listings and articles, including mixed meda'),
(8, '5eca979010907.jpeg', 'Pizzas', 'Various types of our pizza always taste awesome, even if ordered online.'),
(9, '5eca97afb3bed.jpeg', 'Desserts', 'From tiramisu to cheesecakes, in Fast Food menu you will find a lot of tasty desserts.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `id` int(11) NOT NULL,
  `titulo_cabecera` varchar(50) NOT NULL,
  `titulo_principal` varchar(100) NOT NULL,
  `precio` varchar(10) NOT NULL,
  `titulo_producto` varchar(50) NOT NULL,
  `foot_img_uno` varchar(250) NOT NULL,
  `foot_img_dos` varchar(250) NOT NULL,
  `foot_img_tres` varchar(250) NOT NULL,
  `foot_img_cuatro` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`id`, `titulo_cabecera`, `titulo_principal`, `precio`, `titulo_producto`, `foot_img_uno`, `foot_img_dos`, `foot_img_tres`, `foot_img_cuatro`) VALUES
(1, 'Carga del delivery el 10%', 'Día del completo', '1000', 'Italiano', '5ec15aa3e95d3.jpeg', '5ec15aa3ea063.jpeg', '5ec15aa3ea7e3.jpeg', '5ec15aa3ead45.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locales`
--

CREATE TABLE `locales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `direccion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_comida`
--

CREATE TABLE `menu_comida` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `preview` varchar(250) DEFAULT NULL,
  `enlace` varchar(300) DEFAULT NULL,
  `fondo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu_comida`
--

INSERT INTO `menu_comida` (`id`, `titulo`, `preview`, `enlace`, `fondo`) VALUES
(2, 'Pizzas', '5ec6ee1e0059d.png', 'http://127.0.0.1:8000/menu/pizzas', '5ec6ee1e00c91.jpeg'),
(3, 'Hamburguesas', '5ec83835e4b86.png', 'http://127.0.0.1:8000/menu/hamburguesas', '5ec83835e59b8.jpeg'),
(4, 'Bebidas', '5ec8386490d96.png', 'http://127.0.0.1:8000/menu/bebidas', '5ec8386491268.jpeg'),
(5, 'Tostadas', '5ec8387616a89.png', 'http://127.0.0.1:8000/menu/tostadas', '5ec8387616fa8.jpeg'),
(6, 'Ensaladas', '5ec83894e13fe.png', 'http://127.0.0.1:8000/menu/ensaladas', '5ec83894e191e.jpeg'),
(7, 'Postres', '5ec83a56f0a9c.png', 'http://127.0.0.1:8000/menu/postres', '5ec83a56f1122.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_single`
--

CREATE TABLE `menu_single` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `titulo_comida` varchar(250) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `ingredientes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `navegacion`
--

CREATE TABLE `navegacion` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `icono` varchar(50) NOT NULL,
  `enlace` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `navegacion`
--

INSERT INTO `navegacion` (`id`, `titulo`, `icono`, `enlace`) VALUES
(3, 'Contacto', 'thin-icon-phone-support', 'http://127.0.0.1:8000/contacto'),
(5, 'Online', 'thin-icon-cup', 'http://127.0.0.1:8000/ordenar-online');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE `ofertas` (
  `id` int(11) NOT NULL,
  `portada` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` varchar(300) NOT NULL,
  `precio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `fecha` varchar(250) NOT NULL,
  `direccion` longtext NOT NULL,
  `total_pagado` decimal(7,2) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `mes` varchar(20) NOT NULL,
  `year` varchar(5) NOT NULL,
  `tiempo_estimado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `iduser`, `fecha`, `direccion`, `total_pagado`, `estado`, `mes`, `year`, `tiempo_estimado`) VALUES
(3, 1, '2020-21-06', 'Miraflores Alto MZ G2 LT 30-A', '42.70', 'En espera', '5', '2020', 'Calculando'),
(4, 1, '2020-21-6', 'Miraflores 789', '15.90', 'Entregado', '6', '2020', 'Calculando'),
(5, 1, '2020-23-6', 'Miraflores Alto', '15.90', 'En espera', '6', '2020', 'Calculando'),
(9, 2, '2020-24-6', '958785412', '53.00', 'Enviado', '6', '2020', 'Calculando'),
(10, 2, '2020-4-7', '986280148', '16.00', 'En espera', '7', '2020', 'Calculando'),
(11, 2, '2020-4-7', '654654654', '16.00', 'Enviado', '7', '2020', 'Calculando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `id` int(11) NOT NULL,
  `idpedido` int(11) NOT NULL,
  `producto` varchar(250) NOT NULL,
  `precio` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido_detalle`
--

INSERT INTO `pedido_detalle` (`id`, `idpedido`, `producto`, `precio`) VALUES
(4, 3, 'Buffalo Bleu', '15.90'),
(5, 3, 'Mini Burger', '10.90'),
(6, 3, 'Sicilian', '15.90'),
(7, 4, 'Classic Cheddar', '15.90'),
(8, 5, 'Pepperoni', '15.90'),
(9, 7, 'Mexican Burger', '21.90'),
(10, 7, 'Pepperoni', '15.90'),
(11, 8, 'Buffalo Bleu', '15.90'),
(12, 8, 'Mini Burger', '10.90'),
(13, 8, 'California Burger', '25.90'),
(14, 8, 'Pepperoni', '15.90'),
(15, 9, 'Tomato Toast', '10.90'),
(16, 9, 'Greek Salad', '15.90'),
(17, 9, 'California Burger', '25.90'),
(18, 10, 'Hawaiian', '15.90'),
(19, 11, 'Classic Cheddar', '15.90');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_tres`
--

CREATE TABLE `seccion_tres` (
  `id` int(11) NOT NULL,
  `icono` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seccion_tres`
--

INSERT INTO `seccion_tres` (`id`, `icono`, `titulo`, `descripcion`, `estado`) VALUES
(1, 'thin-icon-time', 'FAST DELIVERY EDIT', 'Everything you order at QuickFood will be quickly delivered to your door.', 1),
(2, 'thin-icon-book', 'FRESH FOOD EDIT', 'We use only the best ingredients to cook the tasty fresh food for you.', 1),
(3, 'thin-icon-checklist', 'EXPERIENCED CHEFS', 'Our staff consists of chefs and cooks with years of experience.', 1),
(4, 'thin-icon-cd', 'A VARIETY OF DISHES', 'In our menu you’ll find a wide variety of dishes, desserts, and drinks.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_uno`
--

CREATE TABLE `seccion_uno` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(50) NOT NULL,
  `portada` varchar(250) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seccion_uno`
--

INSERT INTO `seccion_uno` (`id`, `titulo`, `subtitulo`, `portada`, `estado`) VALUES
(1, 'For Vegans edit', 'Burger + French Fries + Drink', 'index-01-566x401.jpg', 1),
(2, 'Order Online', 'Available Every Day 9 AM - 11 PM', 'index-02-566x401.jpg', 1),
(3, 'Cake Specials edit', 'Every Friday Only $0.99', 'index-03-566x401.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `portada` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `subtitulo` varchar(150) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `slider`
--

INSERT INTO `slider` (`id`, `portada`, `titulo`, `subtitulo`, `estado`) VALUES
(1, '5ecdbe18892d1.jpeg', 'HOT STUFF', 'MEXICAN', 'BURGER'),
(2, '5ecdbf4b1c9f2.jpeg', 'From Our Chef', 'MEET THE LEGEND', 'CALIFORNIA BURGER'),
(3, '5ecdbfa781232.jpeg', 'NEW MENU', 'PIZZA', 'WITH SEAFOOD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perfil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `perfil`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nicolas González Araneda', 'diegoarca02@gmail.com', NULL, '$2y$10$uosfKP50/6XxzubVWTzsWOU4Ng3ttZNaCdk2OlQLA3UHRAzlp.RWa', 'ADMIN', 'perfil.png', NULL, '2020-06-11 21:02:55', '2020-06-11 21:02:55'),
(2, 'Vincent Murray', 'vincentmurray01@gmail.com', NULL, '$2y$10$3RiCbgWy1zYhniFEelYq1epVuLGlPx28q/8KGLRH27uUtwTcFHqmq', 'USER', 'perfil.png', NULL, NULL, NULL),
(4, 'Francisco Bulnes', 'dialarroyo02@hotmail.com', NULL, '$2y$10$ig.ccg2ZAlEc1SNyWV6MmetvEC1V.P8NvKQvSJ8eDN37QgVkXM71O', 'USER', 'perfil.png', NULL, NULL, NULL),
(9, 'Sheldon Cooper', 'sheldon@gmail.com', NULL, '$2y$10$VsVq/DUlk7Gr0/90Xa3WFOFYP8end49uagDKPkVpVi5/w8sbtLhi.', 'USER', 'perfil.png', NULL, NULL, NULL),
(10, 'Nico Page', 'nicoimpresos@gmail.com', NULL, '$2y$10$hSwPS3oey6wPs4.ngDOPB.412i8fwh9jerCM72yCeMGJFoIQUfVm6', 'ADMIN', 'perfil.png', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimento`
--
ALTER TABLE `alimento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config_general`
--
ALTER TABLE `config_general`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_comida`
--
ALTER TABLE `menu_comida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_single`
--
ALTER TABLE `menu_single`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `navegacion`
--
ALTER TABLE `navegacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion_tres`
--
ALTER TABLE `seccion_tres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion_uno`
--
ALTER TABLE `seccion_uno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alimento`
--
ALTER TABLE `alimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000016;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `config_general`
--
ALTER TABLE `config_general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `locales`
--
ALTER TABLE `locales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menu_comida`
--
ALTER TABLE `menu_comida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `menu_single`
--
ALTER TABLE `menu_single`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `navegacion`
--
ALTER TABLE `navegacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `seccion_tres`
--
ALTER TABLE `seccion_tres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `seccion_uno`
--
ALTER TABLE `seccion_uno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
