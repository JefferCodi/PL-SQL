-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: fdb19.runhosting.com
-- Tiempo de generación: 22-08-2018 a las 16:41:40
-- Versión del servidor: 5.7.20-log
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `2667244_bdbodega`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Navegar usuarios', 'usuario.index', 'Lista y navega todo los usuarios del sistema', '2018-03-08 12:55:16', '2018-03-08 12:55:16'),
(2, 'Creación de usuario', 'usuario.create', 'Podría crear nuevos usuario del sistema', '2018-03-08 20:56:36', '2018-03-08 20:56:36'),
(3, 'Edición de usuario', 'usuario.edit', 'Podría editar cualquier dato de un usuario del sistema', '2018-03-08 20:57:40', '2018-03-08 20:57:40'),
(4, 'Eliminar usuario', 'usuario.delete', 'Podría eliminar cualquier usuario del sistema', '2018-03-08 20:58:34', '2018-03-08 20:58:34'),
(5, 'Navegar roles', 'rol.index', 'Lista y navega todo los roles del sistema', '2018-03-08 21:02:01', '2018-03-08 21:02:01'),
(6, 'Creación de rol', 'rol.create', 'Podría crear nuevos rol del sistema', '2018-03-08 21:02:39', '2018-03-08 21:02:39'),
(7, 'Edición de rol', 'rol.edit', 'Podría editar cualquier dato de un rol del sistema', '2018-03-08 21:05:58', '2018-03-08 21:05:58'),
(8, 'Eliminar rol', 'rol.delete', 'Podría eliminar cualquier rol del sistema', '2018-03-08 21:06:36', '2018-03-08 21:06:36'),
(9, 'Navegar articulos', 'articulo.index', 'Lista y navega todo los articulos del sistema', '2018-03-08 21:13:03', '2018-03-08 21:13:03'),
(10, 'Creación de articulo', 'articulo.create', 'Podría crear nuevos articulo del sistema', '2018-03-08 21:14:03', '2018-03-08 21:14:03'),
(11, 'Edición de articulo', 'articulo.edit', 'Podría editar cualquier dato de un articulo del sistema', '2018-03-08 21:14:59', '2018-03-08 21:14:59'),
(12, 'Eliminar articulo', 'articulo.delete', 'Podría eliminar cualquier articulo del sistema', '2018-03-08 21:16:20', '2018-03-08 21:16:20'),
(13, 'Navegar categorías', 'categoria.index', 'Lista y navega toda las categorías del sistema', '2018-03-08 21:17:41', '2018-03-08 21:17:41'),
(14, 'Creación dela categoría', 'categoria.create', 'Podría crear nuevas categoría del sistema', '2018-03-08 21:18:40', '2018-03-08 21:18:40'),
(15, 'Edición de categoría', 'categoria.edit', 'Podría editar cualquier dato de una categoría del sistema', '2018-03-08 21:19:31', '2018-03-08 21:19:31'),
(16, 'Eliminar categoría', 'categoria.delete', 'Podría eliminar cualquier categoría del sistema', '2018-03-08 21:21:04', '2018-03-08 21:21:04'),
(17, 'Navegar ingresos', 'ingreso.index', 'Lista y navega todo los ingresos del sistema', '2018-03-08 21:22:11', '2018-03-08 21:22:11'),
(18, 'Creación de ingreso', 'ingreso.create', 'Podría crear nuevos ingreso del sistema', '2018-03-08 21:23:03', '2018-03-08 21:23:03'),
(19, 'Ver detalle del ingreso', 'ingreso.show', 'Ve en detalle cada ingreso del sistema', '2018-03-08 21:23:39', '2018-03-08 21:23:39'),
(20, 'Anular ingreso', 'ingreso.anular', 'Podría anular cualquier ingreso del sistema', '2018-03-08 21:24:10', '2018-03-08 21:24:10'),
(21, 'Navegar proveedores', 'proveedor.index', 'Lista y navega todo los proveedores del sistema', '2018-03-08 21:25:23', '2018-03-08 21:25:23'),
(22, 'Creación de proveedor', 'proveedor.create', 'Podría crear nuevos proveedor del sistema', '2018-03-08 21:26:23', '2018-03-08 21:26:23'),
(23, 'Edición de proveedor', 'proveedor.edit', 'Podría editar cualquier dato de un proveedor del sistema', '2018-03-08 21:27:02', '2018-03-08 21:27:02'),
(24, 'Eliminar proveedor', 'proveedor.delete', 'Podría eliminar cualquier proveedor del sistema', '2018-03-08 21:28:12', '2018-03-08 21:28:12'),
(25, 'Navegar ventas', 'venta.index', 'Lista y navega toda las ventas del sistema', '2018-03-08 21:29:26', '2018-03-08 21:29:26'),
(26, 'Creación de venta', 'venta.create', 'Podría crear nuevas venta del sistema', '2018-03-08 21:30:13', '2018-03-08 21:30:13'),
(27, 'Ver detalle de la venta', 'venta.show', 'Ve en detalle cada venta del sistema', '2018-03-08 21:31:05', '2018-03-08 21:31:05'),
(28, 'Anular venta', 'venta.anular', 'Podría anular cualquier venta del sistema', '2018-03-08 21:31:50', '2018-03-08 21:31:50'),
(29, 'Navegar clientes', 'cliente.index', 'Lista y navega todo los clientes del sistema', '2018-03-08 21:32:43', '2018-03-08 21:32:43'),
(30, 'Creación de cliente', 'cliente.create', 'Podría crear nuevos cliente del sistema', '2018-03-08 21:33:27', '2018-03-08 21:33:27'),
(31, 'Edición de cliente', 'cliente.edit', 'Podría editar cualquier dato de un cliente del sistema', '2018-03-08 21:34:00', '2018-03-08 21:34:00'),
(32, 'Eliminar cliente', 'cliente.delete', 'Podría eliminar cualquier cliente del sistema', '2018-03-08 21:34:48', '2018-03-08 21:34:48'),
(33, 'Reporte venta', 'reporte.venta', 'Acceso a los reportes de ventas', '2018-03-09 12:40:26', '2018-03-09 12:40:26'),
(34, 'Reporte compra', 'reporte.compra', 'Acceso a los reportes de compras', '2018-03-09 12:43:03', '2018-03-09 12:43:03'),
(35, 'Reporte cliente', 'reporte.cliente', 'Acceso a los reportes de los clientes', '2018-03-09 12:45:00', '2018-03-09 12:45:00'),
(36, 'Reporte proveedor', 'reporte.proveedor', 'Acceso a los reportes de los proveedores', '2018-03-09 12:46:01', '2018-03-09 12:46:01'),
(37, 'Reporte usuario', 'reporte.usuario', 'Acceso a los reportes de los usuarios', '2018-03-09 12:46:57', '2018-03-09 12:46:57'),
(38, 'Reporte articulo', 'reporte.articulo', 'Acceso a los reportes de los articulos', '2018-03-09 13:10:46', '2018-03-09 13:10:46'),
(39, 'Reporte categoria', 'reporte.categoria', 'Acceso a los reportes de las categorias', '2018-03-09 13:22:39', '2018-03-09 13:22:39'),
(40, 'Factura', 'factura', 'Lista todo los reporte de las facturas', '2018-04-04 22:41:36', '2018-04-04 22:41:36'),
(41, 'Pedidos', 'pedidos', 'Lista todos los reporte de los pedidos', '2018-04-04 22:42:31', '2018-04-04 22:42:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-03-08 16:35:06', '2018-03-08 16:35:06'),
(2, 2, 1, '2018-03-08 16:35:21', '2018-03-08 16:35:21'),
(3, 3, 1, '2018-03-08 16:35:35', '2018-03-08 16:35:35'),
(4, 4, 1, '2018-03-08 16:35:58', '2018-03-08 16:35:58'),
(5, 5, 1, '2018-03-08 16:36:38', '2018-03-08 16:36:38'),
(6, 6, 1, '2018-03-08 16:36:53', '2018-03-08 16:36:53'),
(7, 7, 1, '2018-03-08 16:37:18', '2018-03-08 16:37:18'),
(8, 8, 1, '2018-03-08 16:37:42', '2018-03-08 16:37:42'),
(9, 9, 1, '2018-03-08 16:38:03', '2018-03-08 16:38:03'),
(10, 10, 1, '2018-03-08 16:38:21', '2018-03-08 16:38:21'),
(11, 11, 1, '2018-03-08 16:39:52', '2018-03-08 16:39:52'),
(12, 12, 1, '2018-03-08 16:40:21', '2018-03-08 16:40:21'),
(13, 13, 1, '2018-03-08 16:40:55', '2018-03-08 16:40:55'),
(14, 14, 1, '2018-03-08 16:41:10', '2018-03-08 16:41:10'),
(15, 15, 1, '2018-03-08 16:41:33', '2018-03-08 16:41:33'),
(16, 16, 1, '2018-03-08 16:41:51', '2018-03-08 16:41:51'),
(17, 17, 1, '2018-03-08 16:42:28', '2018-03-08 16:42:28'),
(18, 18, 1, '2018-03-08 16:42:56', '2018-03-08 16:42:56'),
(19, 19, 1, '2018-03-08 16:43:19', '2018-03-08 16:43:19'),
(20, 20, 1, '2018-03-08 16:43:30', '2018-03-08 16:43:30'),
(21, 21, 1, '2018-03-08 16:44:03', '2018-03-08 16:44:03'),
(22, 22, 1, '2018-03-08 16:45:27', '2018-03-08 16:45:27'),
(23, 23, 1, '2018-03-08 16:45:44', '2018-03-08 16:45:44'),
(24, 24, 1, '2018-03-08 16:46:01', '2018-03-08 16:46:01'),
(25, 25, 1, '2018-03-08 16:46:25', '2018-03-08 16:46:25'),
(26, 26, 1, '2018-03-08 16:48:26', '2018-03-08 16:48:26'),
(27, 27, 1, '2018-03-08 16:49:13', '2018-03-08 16:49:13'),
(28, 28, 1, '2018-03-08 16:50:04', '2018-03-08 16:50:04'),
(29, 29, 1, '2018-03-08 16:50:21', '2018-03-08 16:50:21'),
(30, 30, 1, '2018-03-08 16:50:49', '2018-03-08 16:50:49'),
(31, 31, 1, '2018-03-08 16:51:01', '2018-03-08 16:51:01'),
(32, 32, 1, '2018-03-08 16:52:35', '2018-03-08 16:52:35'),
(33, 1, 2, '2018-03-08 18:13:28', '2018-03-08 18:13:28'),
(34, 5, 2, '2018-03-08 18:14:46', '2018-03-08 18:14:46'),
(35, 9, 2, '2018-03-08 18:15:27', '2018-03-08 18:15:27'),
(36, 13, 2, '2018-03-08 18:15:55', '2018-03-08 18:15:55'),
(37, 17, 2, '2018-03-08 18:16:31', '2018-03-08 18:16:31'),
(38, 21, 2, '2018-03-08 18:16:53', '2018-03-08 18:16:53'),
(39, 25, 2, '2018-03-08 18:18:20', '2018-03-08 18:18:20'),
(40, 29, 2, '2018-03-08 18:19:24', '2018-03-08 18:19:24'),
(41, 33, 1, '2018-03-09 07:47:24', '2018-03-09 07:47:24'),
(42, 34, 1, '2018-03-09 07:47:39', '2018-03-09 07:47:39'),
(43, 35, 1, '2018-03-09 07:47:56', '2018-03-09 07:47:56'),
(44, 36, 1, '2018-03-09 07:48:21', '2018-03-09 07:48:21'),
(45, 37, 1, '2018-03-09 07:48:40', '2018-03-09 07:48:40'),
(46, 38, 1, '2018-03-09 08:11:07', '2018-03-09 08:11:07'),
(47, 39, 1, '2018-03-09 08:23:12', '2018-03-09 08:23:12'),
(48, 25, 3, '2018-04-04 21:40:21', '2018-04-04 21:40:21'),
(49, 26, 3, '2018-04-04 21:42:38', '2018-04-04 21:42:38'),
(50, 27, 3, '2018-04-04 21:42:56', '2018-04-04 21:42:56'),
(51, 28, 3, '2018-04-04 21:43:59', '2018-04-04 21:43:59'),
(52, 29, 3, '2018-04-04 21:45:50', '2018-04-04 21:45:50'),
(53, 30, 3, '2018-04-04 21:46:10', '2018-04-04 21:46:10'),
(54, 31, 3, '2018-04-04 21:47:06', '2018-04-04 21:47:06'),
(55, 32, 3, '2018-04-04 21:47:24', '2018-04-04 21:47:24'),
(56, 35, 3, '2018-04-04 21:49:10', '2018-04-04 21:49:10'),
(57, 33, 3, '2018-04-04 21:49:40', '2018-04-04 21:49:40'),
(58, 25, 4, '2018-04-04 22:39:34', '2018-04-04 22:39:34'),
(59, 27, 4, '2018-04-04 22:43:10', '2018-04-04 22:43:10'),
(60, 40, 1, '2018-04-04 22:43:28', '2018-04-04 22:43:28'),
(61, 40, 4, '2018-04-04 22:53:48', '2018-04-04 22:53:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Administrador', 'administrador', 'Control de todo el sistema de inventario', '2018-03-08 20:46:49', '2018-03-08 20:46:49', NULL),
(2, 'Invitado', 'invitado', 'Sera un usuario que estará limitado a solo observar el sistema', '2018-03-08 23:12:52', '2018-03-08 23:12:52', NULL),
(3, 'Administrador Ventas', 'adm_ventas', 'Administrador de los módulos  de clientes y ventas', '2018-04-04 21:38:59', '2018-04-04 21:38:59', NULL),
(4, 'Vendedor', 'vendedor', 'Encargado del modulo de venta', '2018-04-04 22:38:50', '2018-04-04 22:38:50', NULL),
(5, 'Administrador Pedidos', 'adm_pedidos', 'Administrador de los módulos  de proveedores y ingresos', '2018-04-06 00:28:05', '2018-04-06 00:28:05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-03-08 20:51:26', '2018-03-08 20:51:26'),
(2, 2, 3, '2018-04-04 21:53:13', '2018-04-04 21:53:13'),
(3, 3, 4, '2018-04-04 22:48:47', '2018-04-04 22:48:47'),
(4, 4, 5, '2018-04-05 17:12:25', '2018-04-05 17:12:25'),
(5, 1, 2, '2018-04-14 01:08:51', '2018-04-14 01:08:51'),
(6, 1, 6, '2018-06-05 14:33:41', '2018-06-05 14:33:41'),
(7, 1, 7, '2018-06-15 04:01:23', '2018-06-15 04:01:23'),
(8, 2, 1, '2018-07-04 09:43:21', '2018-07-04 09:43:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_articu`
--

CREATE TABLE `tb_articu` (
  `Arti_codi` int(11) NOT NULL,
  `Arti_seri` varchar(50) NOT NULL,
  `Arti_nomb` varchar(100) NOT NULL,
  `Arti_stoc` int(11) NOT NULL,
  `Arti_fech` date NOT NULL,
  `Arti_desc` text,
  `Arti_imag` varchar(50) DEFAULT NULL,
  `Arti_tota` decimal(11,2) NOT NULL,
  `Arti_esta` varchar(20) DEFAULT NULL,
  `Cate_codi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_articu`
--

INSERT INTO `tb_articu` (`Arti_codi`, `Arti_seri`, `Arti_nomb`, `Arti_stoc`, `Arti_fech`, `Arti_desc`, `Arti_imag`, `Arti_tota`, `Arti_esta`, `Cate_codi`) VALUES
(1, 'bwj63656', 'Zapato 1', 18, '2021-11-18', 'Zapato hombre talla 41', 'Zapato.jpg', 6043.00, 'Activo', 2),
(4, 'as01', 'qq', 0, '2018-06-01', 'qq', NULL, 0.00, 'Inactivo', 1),
(5, '848928348', 'zapatillas', 10, '2022-06-15', 'Zapatillas de mujer talla 39', 'Zapatillas.jpeg', 500.00, 'Activo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_catego`
--

CREATE TABLE `tb_catego` (
  `Cate_codi` int(11) NOT NULL,
  `Cate_nomb` varchar(45) NOT NULL,
  `Cate_desc` varchar(200) DEFAULT NULL,
  `Cate_cond` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_catego`
--

INSERT INTO `tb_catego` (`Cate_codi`, `Cate_nomb`, `Cate_desc`, `Cate_cond`) VALUES
(1, 'Tecnología', 'Artículos tecnológicos', 1),
(2, 'Producto Terminado', 'Artículo listo para la venta', 1),
(3, 'asdasd', 'asdasdasd', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_deting`
--

CREATE TABLE `tb_deting` (
  `Deti_codi` int(11) NOT NULL,
  `Deti_cant` int(11) NOT NULL,
  `Deti_prec` decimal(11,2) NOT NULL,
  `Deti_prev` decimal(11,2) NOT NULL,
  `Deti_movi` text NOT NULL,
  `Arti_codi` int(11) NOT NULL,
  `Ingr_codi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_deting`
--

INSERT INTO `tb_deting` (`Deti_codi`, `Deti_cant`, `Deti_prec`, `Deti_prev`, `Deti_movi`, `Arti_codi`, `Ingr_codi`) VALUES
(1, 10, 30.00, 40.00, 'Entran', 1, 1),
(2, 20, 15.00, 20.00, 'Entran', 2, 1),
(3, 1, 11.00, 11.00, 'Entran', 1, 2),
(4, 10, 40.00, 50.00, 'Entran', 5, 3),
(5, 10, 100.00, 300.00, 'Entran', 1, 4);

--
-- Disparadores `tb_deting`
--
DELIMITER $$
CREATE TRIGGER `tr_inkardexIngreso` AFTER INSERT ON `tb_deting` FOR EACH ROW begin
insert tb_kardex set 
Kard_movi = new.Deti_movi,
Kard_cant = new.Deti_cant,
Kard_prev = new.Deti_prev,
Kard_prec = new.Deti_prec,
Kard_fech = (select CURRENT_TIMESTAMP()),
Kard_stoc = (select Arti_stoc from tb_articu where Arti_codi = new.Arti_codi),
Kard_sast = ((select Arti_stoc from tb_articu where Arti_codi = new.Arti_codi)+new.Deti_cant),
Kard_sato = ((select Arti_tota from tb_articu where Arti_codi = new.Arti_codi)+(new.Deti_cant*new.Deti_prev)),
Arti_codi = new.Arti_codi;

update tb_articu set Arti_stoc = Arti_stoc + new.Deti_cant
where tb_articu.Arti_codi = new.Arti_codi;

update  tb_articu set Arti_tota = Arti_tota + (new.Deti_cant*new.Deti_prev)
where tb_articu.Arti_codi = new.Arti_codi;

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detven`
--

CREATE TABLE `tb_detven` (
  `Detv_codi` int(11) NOT NULL,
  `Detv_cant` int(11) NOT NULL,
  `Detv_prev` decimal(11,2) NOT NULL,
  `Detv_decu` decimal(11,2) NOT NULL,
  `Detv_movi` text NOT NULL,
  `Vent_codi` int(11) NOT NULL,
  `Arti_codi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_detven`
--

INSERT INTO `tb_detven` (`Detv_codi`, `Detv_cant`, `Detv_prev`, `Detv_decu`, `Detv_movi`, `Vent_codi`, `Arti_codi`) VALUES
(1, 3, 20.00, 0.00, 'Salen', 1, 2),
(2, 1, 40.00, 0.00, 'Salen', 1, 1),
(3, 2, 40.00, 12.00, 'Salen', 2, 1);

--
-- Disparadores `tb_detven`
--
DELIMITER $$
CREATE TRIGGER `tr_inkardexVenta` AFTER INSERT ON `tb_detven` FOR EACH ROW begin
insert tb_kardex set 
Kard_movi = new.Detv_movi,
Kard_cant = new.Detv_cant,
Kard_prev = new.Detv_prev,
Kard_fech = (select CURRENT_TIMESTAMP()),
Kard_stoc = (select Arti_stoc from tb_articu where Arti_codi = new.Arti_codi),
Kard_sast = ((select Arti_stoc from tb_articu where Arti_codi = new.Arti_codi)-new.Detv_cant),
Kard_sato = ((select Arti_tota from tb_articu where Arti_codi = new.Arti_codi)-(new.Detv_cant*new.Detv_prev)),
Arti_codi = new.Arti_codi;

update tb_articu set Arti_stoc = Arti_stoc - new.Detv_cant
where tb_articu.Arti_codi = new.Arti_codi;

update tb_articu set Arti_tota = Arti_tota - (select Vent_tove from tb_venta where Vent_codi= new.Vent_codi)
where tb_articu.Arti_codi = new.Arti_codi;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ingres`
--

CREATE TABLE `tb_ingres` (
  `Ingr_codi` int(11) NOT NULL,
  `Ingr_tico` varchar(20) NOT NULL,
  `Ingr_seco` varchar(7) DEFAULT NULL,
  `Ingr_nuco` varchar(10) NOT NULL,
  `Ingr_fech` datetime NOT NULL,
  `Ingr_tota` decimal(11,2) DEFAULT NULL,
  `Ingr_impu` decimal(4,2) DEFAULT NULL,
  `Ingr_esta` varchar(20) DEFAULT NULL,
  `Prov_codi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_ingres`
--

INSERT INTO `tb_ingres` (`Ingr_codi`, `Ingr_tico`, `Ingr_seco`, `Ingr_nuco`, `Ingr_fech`, `Ingr_tota`, `Ingr_impu`, `Ingr_esta`, `Prov_codi`) VALUES
(1, 'Factura', '002-001', '0001', '2018-04-15 19:00:58', 600.00, 14.00, 'A', 3),
(2, 'Factura', '002-001', 'sssss', '2018-06-15 03:56:00', 11.00, 14.00, 'A', 1),
(3, 'Factura', '002-001', '0958', '2018-07-14 15:36:58', 400.00, 14.00, 'A', 1),
(4, 'Factura', '002-001', '2323', '2018-08-20 14:57:39', 1000.00, 14.00, 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_kardex`
--

CREATE TABLE `tb_kardex` (
  `Kard_codi` int(11) NOT NULL,
  `Kard_movi` varchar(50) NOT NULL,
  `Kard_cant` int(11) NOT NULL,
  `Kard_prev` decimal(11,2) NOT NULL,
  `Kard_prec` decimal(11,2) NOT NULL,
  `Kard_fech` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Kard_stoc` int(11) NOT NULL,
  `Kard_sast` int(11) NOT NULL,
  `Kard_sato` decimal(11,2) NOT NULL,
  `Arti_codi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_kardex`
--

INSERT INTO `tb_kardex` (`Kard_codi`, `Kard_movi`, `Kard_cant`, `Kard_prev`, `Kard_prec`, `Kard_fech`, `Kard_stoc`, `Kard_sast`, `Kard_sato`, `Arti_codi`) VALUES
(1, 'Entran', 10, 40.00, 30.00, '2018-04-16 00:00:58', 0, 10, 3200.00, 1),
(2, 'Entran', 20, 20.00, 15.00, '2018-04-16 00:00:58', 0, 20, 700.00, 2),
(3, 'Salen', 3, 20.00, 0.00, '2018-04-16 00:05:10', 20, 17, 640.00, 2),
(4, 'Salen', 1, 40.00, 0.00, '2018-04-16 00:05:10', 10, 9, 3160.00, 1),
(5, 'Entran', 1, 11.00, 11.00, '2018-06-15 08:56:00', 9, 10, 3111.00, 1),
(6, 'Salen', 2, 40.00, 0.00, '2018-06-15 09:07:14', 10, 8, 3031.00, 1),
(7, 'Entran', 10, 50.00, 40.00, '2018-07-14 20:36:58', 0, 10, 500.00, 5),
(8, 'Entran', 10, 300.00, 100.00, '2018-08-20 19:57:39', 8, 18, 6043.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_person`
--

CREATE TABLE `tb_person` (
  `Pers_codi` int(11) NOT NULL,
  `Pers_tipe` varchar(20) NOT NULL,
  `Pers_nomb` varchar(100) NOT NULL,
  `Pers_tido` varchar(20) NOT NULL,
  `Pers_nudo` varchar(15) NOT NULL,
  `Pers_dire` varchar(50) NOT NULL,
  `Pers_tele` varchar(15) NOT NULL,
  `Pers_emai` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_person`
--

INSERT INTO `tb_person` (`Pers_codi`, `Pers_tipe`, `Pers_nomb`, `Pers_tido`, `Pers_nudo`, `Pers_dire`, `Pers_tele`, `Pers_emai`) VALUES
(1, 'Proveedor', 'tecnoSolution S.A.', 'RUC', '0987564783001', 'portete y tungurahua', '0948573717', 'tecnosolution@gmail.com'),
(2, 'Cliente', 'jose tucta', 'DNI', '0958695458', 'rubichaca y luque', '0968275783', 'josetucta@hotmail.net'),
(3, 'Proveedor', 'Calzado Amy Shoes', 'RUC', '0948537589001', 'Bastion Popular Bloque 2 Solar 4 Manzana 779', '0983610154', 'amyshoes-2016@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_venta`
--

CREATE TABLE `tb_venta` (
  `Vent_codi` int(11) NOT NULL,
  `Vent_tico` varchar(20) NOT NULL,
  `Vent_seco` varchar(7) DEFAULT NULL,
  `Vent_nuco` varchar(20) NOT NULL,
  `Vent_fech` datetime NOT NULL,
  `Vent_impu` decimal(4,2) DEFAULT NULL,
  `Vent_tove` decimal(11,2) NOT NULL,
  `Vent_esta` varchar(20) DEFAULT NULL,
  `Clie_codi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_venta`
--

INSERT INTO `tb_venta` (`Vent_codi`, `Vent_tico`, `Vent_seco`, `Vent_nuco`, `Vent_fech`, `Vent_impu`, `Vent_tove`, `Vent_esta`, `Clie_codi`) VALUES
(1, 'Factura', '001-002', '0002', '2018-04-15 19:05:10', 14.00, 100.00, 'A', 2),
(2, 'Factura', '001-002', 'ssss', '2018-06-15 04:07:14', 14.00, 68.00, 'C', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jefferson Lindao Alejandro', 'jefferlindao@gmail.com', '$2y$10$QXOJsQbejpvC9Ttufv6qouscPzUE46RioAUEBVvHpEzuLfleG3McO', 'MKU3K5s4KO747l1wPuRUrJlt4AoaHGBYwykvOWyIAOtlY2JDKTyQkqI5ZrLt', '2018-02-24 15:19:33', '2018-02-24 15:19:33'),
(2, 'CRISTHIAN YS ', 'yagual12@gmail.com', '$2y$10$kRAQ8.i30cpARQud0Ng5.ufBNRw7M2k3zHI7Vz1oRIZNQTSo/Bv5.', NULL, '2018-04-14 01:07:41', '2018-04-14 01:08:53'),
(3, 'JOSE MENDIETA GOMEZ ', 'josems@gmail.com', '$2y$10$77KYXIU7yWHhYjjaCZZjE./RA480wiXI3L9QWuV1VD7YatZQCi4jG', 'zAbrHBf6B1RtBwuxdLepa2o590s53VEGeqZ0TtwAU2W9yc8jAS7qqPAdoW1r', '2018-04-04 21:52:31', '2018-04-04 21:52:31'),
(4, 'LUCAS MARTINEZ GONZABAY ', 'lucasmg@hotmail.com', '$2y$10$76P1FBGs.n./Xq08MeNQSOjRDGISTTIWYEztgqOqCCYYWRDS92CLq', 'sHmQayTukxypGtYJ3d3XoRJYv0aj2zruYNXNtZf3rp0hCWWqOhCCXFLzqziH', '2018-04-04 22:37:31', '2018-04-04 22:37:31'),
(5, 'LUIS APOLINARIO CRESPIN ', 'luisac@yahoo.com', '$2y$10$oXzbMbwFUK1bXpWX9oqB7.ZEpdF5vnWUUDiggiIeuuIT09pnnUcbK', NULL, '2018-04-05 17:09:50', '2018-04-05 17:09:50'),
(6, 'ADMINISTRADOR ', 'admin@gmail.com', '$2y$10$tnHALaczBeaBCc6F.HPDv.4w6Nlg8LF1NoHB1GLvpd8AGKagMX/jK', 'dThoCmfjjmrXLEmBk45yqGCNGWhEGmuTjdisFVGLlnfLhy0uutNCReciKBs6', '2018-06-05 14:32:39', '2018-06-05 14:32:39'),
(7, 'CARLOS ', 'carlos@gmail.com', '$2y$10$H231VhoNMoTRBpT/vQvBYuu0W6eBEpPrvoRzrsBrso/8uobup6nuS', '74khTRKnkEtQkocSQ0zt94UcrhwlSjXPeVOWedu4KW3c64ZtggLUzkohvmZx', '2018-06-15 04:00:56', '2018-06-15 04:00:56'),
(8, 'EDISON VILLALAZ ', 'villla10amordedios@gmail.com', '$2y$10$Ms6WpHel/kctD93twXuRqezh2RNlthsLZvtcpDOrfikLorHDE9Qpu', NULL, '2018-08-11 19:01:30', '2018-08-11 19:01:30');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `tb_articu`
--
ALTER TABLE `tb_articu`
  ADD PRIMARY KEY (`Arti_codi`),
  ADD KEY `Cate_codi` (`Cate_codi`);

--
-- Indices de la tabla `tb_catego`
--
ALTER TABLE `tb_catego`
  ADD PRIMARY KEY (`Cate_codi`);

--
-- Indices de la tabla `tb_deting`
--
ALTER TABLE `tb_deting`
  ADD PRIMARY KEY (`Deti_codi`),
  ADD KEY `Arti_codi` (`Arti_codi`),
  ADD KEY `Ingr_codi` (`Ingr_codi`);

--
-- Indices de la tabla `tb_detven`
--
ALTER TABLE `tb_detven`
  ADD PRIMARY KEY (`Detv_codi`),
  ADD KEY `Vent_codi` (`Vent_codi`),
  ADD KEY `Arti_codi` (`Arti_codi`);

--
-- Indices de la tabla `tb_ingres`
--
ALTER TABLE `tb_ingres`
  ADD PRIMARY KEY (`Ingr_codi`),
  ADD KEY `Prov_codi` (`Prov_codi`);

--
-- Indices de la tabla `tb_kardex`
--
ALTER TABLE `tb_kardex`
  ADD PRIMARY KEY (`Kard_codi`),
  ADD KEY `Arti_codi` (`Arti_codi`);

--
-- Indices de la tabla `tb_person`
--
ALTER TABLE `tb_person`
  ADD PRIMARY KEY (`Pers_codi`);

--
-- Indices de la tabla `tb_venta`
--
ALTER TABLE `tb_venta`
  ADD PRIMARY KEY (`Vent_codi`),
  ADD KEY `Clie_codi` (`Clie_codi`);

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
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tb_articu`
--
ALTER TABLE `tb_articu`
  MODIFY `Arti_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tb_catego`
--
ALTER TABLE `tb_catego`
  MODIFY `Cate_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tb_deting`
--
ALTER TABLE `tb_deting`
  MODIFY `Deti_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tb_detven`
--
ALTER TABLE `tb_detven`
  MODIFY `Detv_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tb_ingres`
--
ALTER TABLE `tb_ingres`
  MODIFY `Ingr_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tb_kardex`
--
ALTER TABLE `tb_kardex`
  MODIFY `Kard_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tb_person`
--
ALTER TABLE `tb_person`
  MODIFY `Pers_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tb_venta`
--
ALTER TABLE `tb_venta`
  MODIFY `Vent_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
