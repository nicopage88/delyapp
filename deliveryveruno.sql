-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2020 a las 05:27:50
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
-- Base de datos: `deliveryveruno`
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
(1000006, '5ec53c578d572.png', 'Pollo asado', 'A las brasas', '$6.000', 'Pollos', 0, '', 'Disponible'),
(1000007, '5ec53c7341728.png', 'Hawaiian', 'Cheddar cheese / Lettuce / Roast beef / Sesame bread', '$15.90', 'Pollos', 0, '', 'Agotado'),
(1000016, '5f582594153dc.jpeg', 'Pollo asado', 'Pollo', '6000', 'Pizzas', 0, NULL, 'Disponible'),
(1000017, '5f58326ec9d69.png', 'Completo italiano', 'Tocomple', '1000', 'Completos', 0, NULL, 'Disponible'),
(1000018, '5f592a14486c0.jpeg', 'queso', '90 grs', '135', 'no-vendible', 0, NULL, 'Disponible');

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
(1, 'DelyApp', '5ec436a0df303.svg', 'DelyApp  © 2020 CIISA S.A', 'Serrano 1340, Pudahuel', 'delyapp@gmail.com', '+56 9 9127 3497', '222222222', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', '9:00am-7:00pm', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3329.5875190862034!2d-70.76903518448339!3d-33.433996680778506!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662c232f10aeddd%3A0xddf7b76fe6dc6799!2sSerrano%201340%2C%20Pudahuel%2C%20Regi%C3%B3n%20Metropolitana!5e0!3m2!1ses!2scl!4v1599612512148!5m2!1ses!2scl\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'Pizzas, Hamburguesas, Bebidas, Tostadas, Ensaladas', 'black', '#ffe599', '<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fenespanol&tabs=timeline&width=340&height=350&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=775587709299584\" width=\"340\" height=\"350\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>', 'pk_test_9204944525b58275', 'sk_test_bce400facb406e4b', 0);

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
(1, '¿Puedo rastrear mi pedido?', '¡Sí tu puedes! Después de realizar su pedido, recibirá una confirmación de pedido por correo electrónico. Cada pedido comienza a producirse 24 horas después de realizado el pedido. Dentro de las 72 horas posteriores a la realización de su pedido, recibirá una fecha de entrega prevista. Cuando se envíe el pedido, recibirá otro correo electrónico con el número de seguimiento y un enlace para rastrear el pedido en línea con el transportista.'),
(2, '¿Cómo puedo cambiar algo en mi pedido?', 'Si necesita cambiar algo en su pedido, contáctenos de inmediato. Por lo general, procesamos los pedidos en un plazo de 2 a 4 horas y, una vez que hayamos procesado su pedido, no podremos realizar ningún cambio.'),
(3, '¿Cómo puedo pagar mi pedido?', 'Aceptamos efectivo, tarjetas de crédito y débito Visa, MasterCard y American Express para su conveniencia.'),
(4, '¿Puedo devolver un artículo?', 'Comuníquese con nuestros administradores para obtener más información.'),
(5, '¿Cuánto tiempo tardará en entregarse mi pedido?', 'Los tiempos de entrega dependerán de su ubicación. Una vez que se confirme el pago, se empaquetará su pedido. La entrega se puede esperar dentro de los 10 días hábiles.'),
(6, '¿Cuánto tiempo tardará en entregarse mi pedido? mi', 'Los tiempos de entrega dependerán de su ubicación. Una vez que se confirme el pago, se empaquetará su pedido. La entrega se puede esperar dentro de los 10 días hábiles.'),
(7, '¿Cuánto tiempo tardará en entregarse mi pedido?', 'Los tiempos de entrega dependerán de su ubicación. Una vez que se confirme el pago, se empaquetará su pedido. La entrega se puede esperar dentro de los 10 días hábiles.');

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
(1, 'DelyApp', 'DIA DEL COMPLETAZO', '$1.000', 'COMPLETO ITALIANO', '5f5edb7ea5158.jpeg', '5ec15aa3ea063.jpeg', '5ec15aa3ea7e3.jpeg', '5ec15aa3ead45.jpeg');

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
(2, 'Pollos', '5ec6ee1e0059d.png', 'http://127.0.0.1/menu/pollos', '5ec6ee1e00c91.jpeg'),
(3, 'Hamburguesas', '5ec83835e4b86.png', 'http://127.0.0.1/menu/hamburguesas', '5ec83835e59b8.jpeg'),
(4, 'Bebidas', '5ec8386490d96.png', 'http://127.0.0.1/menu/bebidas', '5ec8386491268.jpeg'),
(5, 'Completos', '5ec8387616a89.png', 'http://127.0.0.1/menu/tostadas', '5ec8387616fa8.jpeg'),
(6, 'Papas fritas', '5ec83894e13fe.png', 'http://127.0.0.1/menu/ensaladas', '5ec83894e191e.jpeg'),
(7, 'Combos', '5ec83a56f0a9c.png', 'http://127.0.0.1/menu/postres', '5ec83a56f1122.jpeg'),
(12, 'no-vendible', '5f58f9f30a6dd.png', 'http://localhost:8000/menu/no_vendible', '5f58f9f30ba5f.jpeg');

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
(3, 'Contacto', 'thin-icon-phone-support', 'http://localhost:8000/contacto'),
(5, 'Online', 'thin-icon-cup', 'http://localhost:8000/ordenar-online');

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
(9, 2, '2020-24-6', '958785412', '53.00', 'Enviado', '6', '2020', 'Calculando');

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
(17, 9, 'California Burger', '25.90');

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
(1, 'thin-icon-time', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sem odio, varius a ligula sit amet', 1),
(2, 'thin-icon-book', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sem odio, varius a ligula sit amet', 1),
(3, 'thin-icon-checklist', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sem odio, varius a ligula sit amet', 1),
(4, 'thin-icon-cd', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sem odio, varius a ligula sit amet', 1);

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
(1, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'index-01-566x401.jpg', 1),
(2, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'index-02-566x401.jpg', 1),
(3, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'index-03-566x401.jpg', 1);

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
(4, '5f5c4fe61147a.png', 'Prueba', 'Slider', 'Mantenedor');

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
(10, 'dely app', 'delyapp@gmail.com', NULL, '$2y$10$oE4cOyogfEQqq8kFMU7jReF2I.I4AxRcv0NgtiqFw83UMkXS/ie5u', 'ADMIN', 'perfil.png', NULL, NULL, NULL),
(11, 'Dely App Admin', 'delyapp2020@gmail.com', NULL, '$2y$10$c5VPjE1c7RN2UTkRtYl/Gelb4kenOSb5iyBF/rjf9IRjszGG8YKv2', 'ADMIN', 'perfil.png', NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000019;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
