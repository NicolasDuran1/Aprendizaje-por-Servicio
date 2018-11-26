-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2018 a las 02:35:33
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aprendizaje_servicio_entrega`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'App\\Permission model has been created', 1, 'App\\Permission', 1, 'App\\User', '[]', '2018-09-21 03:44:28', '2018-09-21 03:44:28'),
(2, 'default', 'App\\Role model has been created', 1, 'App\\Role', 1, 'App\\User', '[]', '2018-09-21 03:44:46', '2018-09-21 03:44:46'),
(3, 'default', 'App\\Permission model has been created', 2, 'App\\Permission', 1, 'App\\User', '[]', '2018-09-21 03:45:08', '2018-09-21 03:45:08'),
(4, 'default', 'App\\Role model has been created', 2, 'App\\Role', 1, 'App\\User', '[]', '2018-09-21 03:45:35', '2018-09-21 03:45:35'),
(5, 'default', 'App\\Page model has been created', 1, 'App\\Page', 1, 'App\\User', '[]', '2018-09-24 17:56:33', '2018-09-24 17:56:33'),
(6, 'default', 'App\\Permission model has been created', 3, 'App\\Permission', 43, 'App\\User', '[]', '2018-11-01 20:30:58', '2018-11-01 20:30:58'),
(7, 'default', 'App\\Permission model has been created', 4, 'App\\Permission', 43, 'App\\User', '[]', '2018-11-01 20:31:08', '2018-11-01 20:31:08'),
(8, 'default', 'App\\Role model has been created', 3, 'App\\Role', 43, 'App\\User', '[]', '2018-11-01 20:31:24', '2018-11-01 20:31:24'),
(9, 'default', 'App\\Role model has been created', 4, 'App\\Role', 43, 'App\\User', '[]', '2018-11-01 20:31:36', '2018-11-01 20:31:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(10) UNSIGNED NOT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombre_archivo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `informacion_adicional` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `pdf`, `created_at`, `updated_at`, `nombre_archivo`, `informacion_adicional`) VALUES
(24, '1537404878Malla ICI.pdf', '2018-09-20 00:54:38', '2018-09-20 22:00:08', 'Pauta Evaluación 2018', 'lsalkas'),
(25, '1537406260Malla ICI.pdf', '2018-09-20 01:17:40', '2018-09-20 22:00:28', 'Pauta Proyecto Construcción', 'Pauta 2'),
(26, '1537474876Malla ICI.pdf', '2018-09-20 20:21:16', '2018-09-20 22:00:48', 'Pauta Proyecto Agropecuario', 'jkaskjas'),
(27, '1537474885Malla ICI.pdf', '2018-09-20 20:21:25', '2018-09-20 22:01:06', 'Pauta Estudiantes UCM', 'lksalklk'),
(28, '1537474895Malla ICI.pdf', '2018-09-20 20:21:35', '2018-09-20 22:01:22', 'Pauta 2017', 'klsaklskl'),
(29, '1537474904Malla ICI.pdf', '2018-09-20 20:21:44', '2018-09-20 22:01:40', 'Pauta 2019', 'klsaklaskl'),
(30, '1537474914Malla ICI.pdf', '2018-09-20 20:21:54', '2018-09-20 22:01:56', 'Pauta Proyectos Nuevos', 'salkjiqw'),
(31, '1537474928Malla ICI.pdf', '2018-09-20 20:22:08', '2018-09-20 20:22:08', 'qwihasjkmn', 'ksankjni'),
(32, '1537474938Malla ICI.pdf', '2018-09-20 20:22:18', '2018-09-20 20:22:18', 'akshsjknj', 'ksaiq'),
(33, '1541110748Informe.pdf', '2018-11-01 22:19:08', '2018-11-01 22:19:08', 'PruebaDescargar', 'No hay');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `nombre_carrera` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_universidad` int(11) NOT NULL,
  `id_facultad` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre_carrera`, `id_universidad`, `id_facultad`, `created_at`, `updated_at`) VALUES
(1, 'Ingeniería Civil', 2, 27, '2018-10-07 22:12:14', '2018-10-07 22:12:14'),
(2, 'Ingeniería Civil Informática', 2, 32, '2018-10-30 00:50:58', '2018-10-30 00:50:58'),
(3, 'Ingeniería Civil Industrial', 2, 27, '2018-10-08 01:16:38', '2018-10-08 01:16:38'),
(4, 'Ingeniería Civil Electrónica', 2, 32, '2018-10-30 00:50:58', '2018-10-30 00:50:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(10) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `id_facultad` int(10) UNSIGNED NOT NULL,
  `id_universidad` int(11) NOT NULL,
  `nombre_curso` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `id_carrera`, `id_facultad`, `id_universidad`, `nombre_curso`, `created_at`, `updated_at`) VALUES
(5, 1, 32, 2, 'Teoría de Autómatas', '2018-09-22 22:17:07', '2018-09-22 22:17:07'),
(7, 1, 27, 2, 'Cálculo Numérico', '2018-10-07 21:26:45', '2018-10-07 21:26:45'),
(8, 3, 27, 2, 'Sistema de Gestión', '2018-11-02 23:05:23', '2018-11-02 23:05:23'),
(9, 1, 27, 2, 'Cálculo de Materiales', '2018-11-02 23:25:19', '2018-11-02 23:25:19'),
(10, 2, 32, 3, 'Introducción a la programación', '2018-11-02 23:36:38', '2018-11-02 23:36:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultads`
--

CREATE TABLE `facultads` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_universidad` int(11) NOT NULL,
  `nombre_facultad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_facultad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facultads`
--

INSERT INTO `facultads` (`id`, `id_universidad`, `nombre_facultad`, `area_facultad`, `created_at`, `updated_at`) VALUES
(24, 2, 'Facultad de Medicina', 'Salud', '2018-09-22 18:32:28', '2018-09-22 18:32:28'),
(25, 2, 'Facultad de Ciencias de la Educación', 'Educacion', '2018-09-22 18:34:15', '2018-09-22 18:34:15'),
(26, 2, 'Facultad de Ciencias de la Salud', 'Salud', '2018-09-22 18:34:37', '2018-09-22 18:34:37'),
(27, 2, 'Facultad de Ciencias de la Ingeniería', 'Ingenieria', '2018-09-22 18:35:20', '2018-09-22 18:35:20'),
(28, 2, 'Facultad de Ciencias Sociales y Económicas', 'Economia y Negocios', '2018-09-22 18:35:40', '2018-09-22 18:35:40'),
(29, 2, 'Facultad de Ciencias Agrarias y Forestales', 'Educacion', '2018-09-22 18:36:28', '2018-09-22 18:36:28'),
(30, 2, 'Facultad de Ciencias Básicas', 'Educacion', '2018-09-22 18:36:49', '2018-09-22 18:36:49'),
(31, 2, 'Facultad de Ciencias Religiosas y Filosóficas', 'Educacion', '2018-09-22 18:37:16', '2018-09-22 18:37:16'),
(32, 3, 'Facultad de Ciencias de la Ingeniería', 'Ingenieria', '2018-09-22 18:48:27', '2018-09-22 18:48:27'),
(33, 4, 'Administración y Negocios', 'Economia y Negocios', '2018-11-03 00:22:48', '2018-11-03 00:22:48'),
(34, 4, 'Arquitectura y Construcción', 'Ingenieria', '2018-11-03 00:23:21', '2018-11-03 00:23:21'),
(35, 4, 'Derecho', 'Economia y Negocios', '2018-11-03 00:23:40', '2018-11-03 00:23:40'),
(36, 4, 'Ciencias de la Salud', 'Salud', '2018-11-03 00:24:08', '2018-11-03 00:24:08'),
(37, 4, 'Ciencias Sociales y Humanidades', 'Educacion', '2018-11-03 00:24:27', '2018-11-03 00:24:27'),
(38, 4, 'Ingeniería', 'Ingenieria', '2018-11-03 00:24:44', '2018-11-03 00:24:44'),
(39, 7, 'Facultad de Economía y Negocios', 'Economia y Negocios', '2018-11-03 00:26:56', '2018-11-03 00:26:56'),
(40, 7, 'Facultad de Ciencias', 'Educacion', '2018-11-03 00:27:15', '2018-11-03 00:27:15'),
(41, 7, 'Facultad de Ciencias Sociales y Comunicaciones', 'Educacion', '2018-11-03 00:27:30', '2018-11-03 00:27:30'),
(42, 7, 'Facultad de Derecho', 'Educacion', '2018-11-03 00:28:06', '2018-11-03 00:28:06'),
(43, 7, 'Facultad de Educación', 'Educacion', '2018-11-03 00:28:22', '2018-11-03 00:28:22'),
(44, 7, 'Facultad de Ingeniería', 'Ingenieria', '2018-11-03 00:28:35', '2018-11-03 00:28:35'),
(45, 7, 'Facultad de Recursos Naturales y Medicina Veterinaria', 'Educacion', '2018-11-03 00:28:50', '2018-11-03 00:28:50'),
(46, 7, 'Facultad de Salud', 'Salud', '2018-11-03 00:29:03', '2018-11-03 00:29:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_17_030254_create_users_table', 2),
(4, '2018_09_17_033041_create_users_table', 3),
(5, '2018_09_18_174333_create_facultads_table', 4),
(6, '2018_09_18_181611_create_facultads_table', 5),
(7, '2018_09_18_232018_subir_archivos', 6),
(8, '2018_09_18_233226_agregarnombre', 7),
(9, '2018_09_19_143912_agregarinformacion', 8),
(10, '2016_01_01_193651_create_roles_permissions_tables', 9),
(11, '2018_08_01_183154_create_pages_table', 9),
(12, '2018_08_04_122319_create_settings_table', 9),
(13, '2018_09_21_001518_create_activity_log_table', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `content`) VALUES
(1, '2018-09-24 17:56:32', '2018-09-24 17:56:32', NULL, 'Inicio', 'asskj');

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
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'Admin', '2018-09-21 03:44:27', '2018-09-21 03:44:27'),
(2, 'Coordinador', 'Coordinador', '2018-09-21 03:45:08', '2018-09-21 03:45:08'),
(3, 'Profesor', 'Profesor', '2018-11-01 20:30:58', '2018-11-01 20:30:58'),
(4, 'Alumno', 'Alumno', '2018-11-01 20:31:08', '2018-11-01 20:31:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `nombre_proyecto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_profesor` int(10) UNSIGNED NOT NULL,
  `id_universidad` int(11) NOT NULL,
  `anio` int(11) DEFAULT NULL,
  `ramo` int(10) NOT NULL,
  `complejidad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duracion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sectorsocio` int(10) DEFAULT NULL,
  `facultad` int(10) UNSIGNED DEFAULT NULL,
  `cantidad_alumnos` int(11) DEFAULT NULL,
  `visible` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evaluaciones` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otras_evaluaciones` text COLLATE utf8_unicode_ci,
  `porcentaje` int(11) DEFAULT NULL,
  `objalcanzados` int(11) DEFAULT NULL,
  `resumen` text COLLATE utf8_unicode_ci,
  `objetivos` text COLLATE utf8_unicode_ci,
  `resultados` text COLLATE utf8_unicode_ci,
  `conclusion` text COLLATE utf8_unicode_ci,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre_archivo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre_extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encuesta_archivo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encuesta_extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_course` int(10) UNSIGNED DEFAULT NULL,
  `alumnos_table` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `nombre_proyecto`, `id_profesor`, `id_universidad`, `anio`, `ramo`, `complejidad`, `duracion`, `sectorsocio`, `facultad`, `cantidad_alumnos`, `visible`, `evaluaciones`, `otras_evaluaciones`, `porcentaje`, `objalcanzados`, `resumen`, `objetivos`, `resultados`, `conclusion`, `estado`, `nombre_archivo`, `nombre_extension`, `encuesta_archivo`, `encuesta_extension`, `id_course`, `alumnos_table`, `created_at`, `updated_at`) VALUES
(7, 'Politica en los barrios', 40, 2, 2018, 5, 'Media', '2', 12, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-07 17:31:07', '2018-10-07 17:31:07'),
(8, 'Software Aprendiendo con Servicio', 40, 2, 2018, 7, 'Baja', '1', 2, 25, 35, 'no', NULL, NULL, 76, 65, 'Esto es un resumen', 'Estos son los objetivos', 'Estos son los resultados', 'Estas son las conclusiones', 'Cancelado', '01Introduccion.pdf', NULL, '02EspecificacionAlgebraica.pdf', NULL, 5, NULL, '2018-10-07 17:34:06', '2018-10-30 01:35:37'),
(10, 'Para empezar a terminar una nueva parte', 40, 2, 2015, 5, 'Alta', '2', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-30 01:40:04', '2018-10-30 01:40:04'),
(11, 'Para empezar a terminar una nueva parte, segunda parte', 40, 2, 2018, 7, 'Media', '2', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-30 01:40:46', '2018-10-30 01:40:46'),
(12, 'Hola', 40, 2, 2017, 5, 'Media', '2', 12, NULL, 10, 'si', NULL, NULL, 50, 50, 'askjksa', 'jasjkask', 'jasjksa', 'sjkasj', 'Terminado', NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-01 20:21:15', '2018-11-01 21:29:00'),
(13, 'Modernización de Plazas', 43, 4, 2018, 5, 'Baja', '1', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-03 01:32:57', '2018-11-03 01:32:57'),
(14, 'Software Aprende', 43, 3, 2018, 5, 'Baja', '1', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-03 01:33:55', '2018-11-03 01:33:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'Admin', '2018-09-21 03:44:46', '2018-09-21 03:44:46'),
(2, 'Coordinador', 'Coordinador', '2018-09-21 03:45:35', '2018-09-21 03:45:35'),
(3, 'Profesor', 'Profesor', '2018-11-01 20:31:24', '2018-11-01 20:31:24'),
(4, 'Alumno', 'Alumno', '2018-11-01 20:31:36', '2018-11-01 20:31:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 37),
(1, 40),
(1, 42),
(1, 43),
(2, 1),
(2, 39),
(2, 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sociocomunitario`
--

CREATE TABLE `sociocomunitario` (
  `id` int(11) NOT NULL,
  `nombre_socio` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sociocomunitario`
--

INSERT INTO `sociocomunitario` (`id`, `nombre_socio`, `created_at`, `updated_at`) VALUES
(2, 'Construcción', '2018-09-21 01:24:39', '2018-09-21 01:24:39'),
(3, 'Agricultura, ganadería, caza y silvicultura', '2018-10-29 22:33:22', '2018-10-29 22:33:22'),
(4, 'Pesca', '2018-10-29 22:35:45', '2018-10-29 22:35:45'),
(5, 'Minas', '2018-10-29 22:35:52', '2018-10-29 22:35:52'),
(6, 'Industria Manufacturera', '2018-10-29 22:36:05', '2018-10-29 22:36:05'),
(7, 'Electricidad, gas y agua', '2018-10-29 22:36:19', '2018-10-29 22:36:19'),
(8, 'Comercio', '2018-10-29 22:36:28', '2018-10-29 22:36:28'),
(9, 'Hoteles y Restaurantes', '2018-10-29 22:36:38', '2018-10-29 22:36:38'),
(10, 'Transporte, almacenamiento y comunicaciones', '2018-10-29 22:36:47', '2018-10-29 22:36:47'),
(11, 'Financieras', '2018-10-29 22:36:55', '2018-10-29 22:36:55'),
(12, 'Inmobiliarias', '2018-10-29 22:37:03', '2018-10-29 22:37:03'),
(13, 'Administración Pública', '2018-10-29 22:37:22', '2018-10-29 22:37:22'),
(14, 'Enseñanza', '2018-10-29 22:37:36', '2018-10-29 22:37:36'),
(15, 'Actividades de servicios sociales y salud', '2018-10-29 22:37:46', '2018-10-29 22:37:46'),
(16, 'Otras actividades comunitarias', '2018-10-29 22:37:56', '2018-10-29 22:37:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidades`
--

CREATE TABLE `universidades` (
  `id` int(11) NOT NULL,
  `nombre_universidad` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `informacion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `universidades`
--

INSERT INTO `universidades` (`id`, `nombre_universidad`, `informacion`, `created_at`, `updated_at`) VALUES
(2, 'Universidad Católica del Maule', 'Ubicada en Avenida San Miguel, Talca', '2018-09-20 21:20:53', '2018-09-20 21:20:53'),
(3, 'Universidad de Talca', 'Ubicada en Avenida Lircay', '2018-09-21 15:49:57', '2018-09-21 15:49:57'),
(4, 'Universidad Autónoma de Chile', 'Información Adicional', '2018-09-21 19:30:42', '2018-09-21 19:30:42'),
(7, 'Universidad Santo Tomás', 'Sede Talca', '2018-11-03 00:25:58', '2018-11-03 00:25:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `rut` int(11) NOT NULL,
  `rol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Administrador',
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `universidad` int(11) NOT NULL,
  `carrera` int(11) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `rut`, `rol`, `nombre`, `email`, `universidad`, `carrera`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 18656310, 'Administrador', 'Nicolas duran', 'nico@asd.cl', 3, 0, '$2y$10$d6LKqIDlNEH0WJ6cei3oPOiiNB0XEJHleA1B3/M2FB7hog1oTsyvK', 'cKJZbmEosu1KbrXSdSl7cKW4QVZfKjes0RkGvEbOUEMLwLTXVRhFxMuUlFEp', '2018-09-17 06:54:23', '2018-09-21 15:55:43'),
(3, 18656310, 'Administrador', 'Evo Morales', 'evo@asd.cl', 4, 0, '$2y$10$E4ArhHT1A9M6M5SONnAfyO7UrkXfEKZrSFerH/avppwO.XsAmj6TC', '06Jzi6vS66tqSNj6W10N8zT243M5XgfYCVX4odSsEbd7w6evC0OCl2jQ8vvx', '2018-09-21 04:07:52', '2018-09-21 04:07:52'),
(37, 188887774, 'Administrador', 'Nicolas Duran', 'nicolasduranen@hotmail.com', 2, 0, '$2y$10$bNlPuxZogBjCzasGfkLeNO3Jk/i/RftgSIcSkUiBNaOVVEre3/Rz2', NULL, '2018-09-25 06:19:13', '2018-09-25 06:19:13'),
(39, 187645673, 'Administrador', 'Ricardo Riffo', 'rr.ricardo.riffo@gmail.com', 4, 0, '$2y$10$ccvDsbEQ1x2yCg3DAePakelB2qtr2Rb2FcT7Vsf81tfproOXr5.Km', NULL, '2018-09-25 16:52:21', '2018-09-25 16:52:21'),
(40, 185759024, 'Administrador', 'Carlos Carrera', 'carlosacz1994@gmail.com', 2, 0, '$2y$10$vGzAOQzMMDQ0aflmgbHIpuAtSdBqufZbQF5qlxfxXF7O2Q6i4WQHi', 'QF2V7RMsNadEOELiCTnPnt5urxZ0RYERtInWsjPPFVaoc13SDtv5AelDQhDe', '2018-09-28 09:32:03', '2018-09-28 09:32:03'),
(41, 185726664, 'Administrador', 'Carlos Carrera Zúñiga', 'carrera_1994@outlook.com', 2, 0, '$2y$10$2e8A1GCIi4TobsUAea3pHugYlAx0tGx2yac14fM11MfmkFEIrC1sC', NULL, '2018-10-07 03:52:43', '2018-10-07 04:24:33'),
(42, 185726664, 'Administrador', 'Valentina Moya', 'valentinca.moya.e@gmail.com', 2, 3, '$2y$10$kg4nPEw1AI3I7em.Btxs/.WSKGh3zcGsbpXv7hMDHXhrHNQWnbY5G', NULL, '2018-10-12 15:03:13', '2018-11-01 23:49:49'),
(43, 100000, 'Administrador', 'Administrador', 'administrador@asd.cl', 3, 2, '$2y$10$Kpfcd5jm3QEuQPL7006oQOZPMT69Xuw1siuFsiBZ5Z2/Pd4.G7bei', NULL, '2018-11-01 20:30:17', '2018-11-03 01:33:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carreras_fk_id_facultad` (`id_facultad`),
  ADD KEY `carreras_fk_id_universidad` (`id_universidad`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cursos_fk_id_universidad` (`id_universidad`),
  ADD KEY `cursos_fk_id_facultad` (`id_facultad`) USING BTREE,
  ADD KEY `cursos_fk_id_carrera` (`id_carrera`);

--
-- Indices de la tabla `facultads`
--
ALTER TABLE `facultads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facultad_fk_id_universidad` (`id_universidad`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_profesor` (`id_profesor`),
  ADD KEY `id_universidad` (`id_universidad`),
  ADD KEY `ramo` (`ramo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `sociocomunitario`
--
ALTER TABLE `sociocomunitario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `universidades`
--
ALTER TABLE `universidades`
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
-- AUTO_INCREMENT de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `facultads`
--
ALTER TABLE `facultads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sociocomunitario`
--
ALTER TABLE `sociocomunitario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `universidades`
--
ALTER TABLE `universidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_fk_id_facultad` FOREIGN KEY (`id_facultad`) REFERENCES `facultads` (`id`),
  ADD CONSTRAINT `carreras_fk_id_universidad` FOREIGN KEY (`id_universidad`) REFERENCES `universidades` (`id`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_fk_id_carrera` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_fk_id_facultad` FOREIGN KEY (`id_facultad`) REFERENCES `facultads` (`id`),
  ADD CONSTRAINT `cursos_fk_id_universidad` FOREIGN KEY (`id_universidad`) REFERENCES `universidades` (`id`),
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`id_facultad`) REFERENCES `facultads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_3` FOREIGN KEY (`id_universidad`) REFERENCES `universidades` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `facultads`
--
ALTER TABLE `facultads`
  ADD CONSTRAINT `facultad_fk_id_universidad` FOREIGN KEY (`id_universidad`) REFERENCES `universidades` (`id`);

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `proyectos_ibfk_2` FOREIGN KEY (`id_universidad`) REFERENCES `universidades` (`id`),
  ADD CONSTRAINT `proyectos_ibfk_3` FOREIGN KEY (`ramo`) REFERENCES `cursos` (`id`);

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
