-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2020 a las 21:38:07
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_copia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2020_05_19_155904_create_posts_table', 1),
(17, '2020_05_19_160119_create_comments_table', 1),
(18, '2020_05_19_162529_add_user_id_to_post_table', 2),
(19, '2020_05_19_162617_add_user_id_and_post_id_to_comments_table', 2);

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
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'NewTitle', 'NewContenA', '2020-05-21 18:39:25', '2020-05-21 21:33:35', 50),
(2, 'Carson Dach', 'Quia dolores voluptas vitae.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 48),
(3, 'Weldon Kuhic', 'Quam et voluptatem sed.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 47),
(5, 'Kali McGlynn', 'Odit nihil alias deleniti ex.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 6),
(6, 'Barbara Green', 'Dolor et incidunt mollitia.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 32),
(7, 'Celine McKenzie', 'A sapiente odio eos expedita.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 27),
(8, 'Yasmeen Parker', 'Quae itaque sapiente et.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 18),
(9, 'Rozella Schiller', 'Nisi id iusto ex dicta sit.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 7),
(10, 'Prof. Chadrick Barrows', 'Et aut quia mollitia quia.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 30),
(11, 'Ali Rodriguez', 'Sunt quam aut illum dolor ut.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 19),
(12, 'Jaydon Pacocha', 'Officiis iste quia qui.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 38),
(13, 'Leone Johnson', 'Libero sed omnis non officia.', '2020-05-21 18:39:25', '2020-05-21 18:39:25', 25),
(14, 'Velda Runolfsson', 'Sint at sunt rerum vel.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 45),
(15, 'Prof. Giovanny Eichmann', 'Rerum non unde a.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 6),
(16, 'Prof. Jamir Herman', 'Optio sit nihil et omnis.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 11),
(17, 'Dr. Leone Yost', 'Ut nisi dolorem quo id quo.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 39),
(18, 'Elody Rutherford', 'Quia saepe ut officia eaque.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 5),
(19, 'Isobel Wilderman', 'Voluptas eos animi veritatis.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 50),
(20, 'Mr. Scottie Stark MD', 'Quod est assumenda earum ea.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 43),
(21, 'Jude Herzog', 'Illum alias consequatur vel.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 24),
(22, 'Malinda Rath', 'Quia harum officiis quo.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 34),
(23, 'Nat Gislason', 'Sapiente repellat soluta sed.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 13),
(24, 'Miss Meggie Brown', 'Aperiam sed optio quis.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 13),
(25, 'Danny Miller', 'Laborum officiis quia et.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 36),
(26, 'Dr. Mateo Ullrich', 'Dolore quia ratione quia.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 33),
(27, 'Belle Schroeder', 'Molestiae eum iste sit.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 34),
(28, 'Glenna Schaefer', 'Est et non enim doloremque.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 29),
(29, 'Ida Jacobs IV', 'Corrupti ea et eveniet.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 18),
(30, 'Crystel Klein', 'Et distinctio odio aut animi.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 50),
(31, 'Prof. Kenton Hickle Jr.', 'Et qui nobis quo ex.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 44),
(32, 'Amos Sporer', 'Repudiandae aut similique ut.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 7),
(33, 'Ms. Josephine Kris', 'In in fuga deleniti quis.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 48),
(34, 'Lyric West', 'Aperiam autem maiores nihil.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 18),
(35, 'Aileen Steuber', 'Consectetur quia odit magni.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 46),
(36, 'Raquel Hermann', 'Ut quaerat qui provident.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 1),
(37, 'Sheldon Lesch', 'Cum labore et quis ipsa.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 37),
(38, 'Ford Johnson MD', 'Voluptate repellat quos enim.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 46),
(39, 'Mrs. Janiya Moen IV', 'Qui est veritatis id.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 27),
(40, 'Dr. Louvenia Kihn', 'Sint nemo cupiditate ad.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 39),
(41, 'Miss Keara Jacobi I', 'Qui eos nisi sequi enim.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 2),
(42, 'Wava Kassulke PhD', 'Id quos aliquid tenetur est.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 26),
(43, 'Clint Weissnat DVM', 'Illum ab quo et quae.', '2020-05-21 18:39:26', '2020-05-21 18:39:26', 41),
(44, 'Prof. Russ Walter', 'Cum ducimus nobis fuga quia.', '2020-05-21 18:39:27', '2020-05-21 18:39:27', 36),
(45, 'Matteo White', 'Eum voluptates odit quos.', '2020-05-21 18:39:27', '2020-05-21 18:39:27', 14),
(46, 'Isai Kuvalis', 'Eius vitae sed odit.', '2020-05-21 18:39:27', '2020-05-21 18:39:27', 42),
(47, 'Edythe Corwin', 'Ipsum voluptas labore nihil.', '2020-05-21 18:39:27', '2020-05-21 18:39:27', 32),
(48, 'Quinton Monahan', 'Aliquid quis quo omnis iusto.', '2020-05-21 18:39:27', '2020-05-21 18:39:27', 16),
(49, 'Dr. Herminia Ryan', 'At nam ut eos nihil.', '2020-05-21 18:39:27', '2020-05-21 18:39:27', 10),
(50, 'Dr. Candida Stroman', 'Et iste earum dolor odio.', '2020-05-21 18:39:27', '2020-05-21 18:39:27', 25),
(51, 'Nuevopost', 'asdasdasda', '2020-05-21 22:34:51', '2020-05-21 22:34:51', 51),
(52, 'aaaas', 'Haass', '2020-05-21 22:43:35', '2020-05-21 22:43:35', 51),
(53, 'asdasd', 'asdasdqasd', '2020-05-21 22:43:46', '2020-05-21 22:43:46', 51),
(54, 'asdasdqasd', 'asdasdqasd', '2020-05-21 22:43:51', '2020-05-21 22:43:51', 51),
(55, 'asdasdqasd', 'asdasdqasd', '2020-05-21 22:44:00', '2020-05-21 22:44:00', 51),
(56, 'asdasdqasd', 'asdasdqasd', '2020-05-21 22:44:04', '2020-05-21 22:44:04', 51),
(57, 'asdasdqasd', 'asdasdqasd', '2020-05-21 22:44:11', '2020-05-21 22:44:11', 51),
(58, 'asdasdqasd', 'asdasdqasd', '2020-05-21 22:44:15', '2020-05-21 22:44:15', 51),
(59, 'asdasdqasd', 'asdasdqasd', '2020-05-21 22:44:18', '2020-05-21 22:44:18', 51),
(60, 'asdasdqasd', 'asdasdqasd', '2020-05-21 22:44:21', '2020-05-21 22:44:21', 51),
(61, 'asdasdqasd', 'asdasdqasd', '2020-05-21 22:44:25', '2020-05-21 22:44:25', 51),
(62, 'asdasdqasd', 'asdasdqasd', '2020-05-21 22:44:30', '2020-05-21 22:44:30', 51);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Annabelle Okuneva', 'kenton.jaskolski@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F9SqoDRujC', '2020-05-21 18:39:23', '2020-05-21 18:39:23'),
(2, 'Schuyler Blanda', 'kailey.romaguera@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vYpsYJj2iM', '2020-05-21 18:39:23', '2020-05-21 18:39:23'),
(3, 'Miss Avis Heidenreich', 'zack63@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ds4WltHAvr', '2020-05-21 18:39:23', '2020-05-21 18:39:23'),
(4, 'Roman Wisoky', 'josefina.king@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qwjlal3Y1X', '2020-05-21 18:39:23', '2020-05-21 18:39:23'),
(5, 'Lucie Deckow', 'edurgan@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kkhnRh21Gh', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(6, 'Mr. Miles Cronin I', 'gusikowski.nolan@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1OZJr8cIHXQkOcWaashIF9iRx9lRI1rX23Hdz0TpxxJfAdIxtiNSMPOvftAD', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(7, 'Rhiannon Goldner', 'smitham.kavon@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HKn6TbAHRM', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(8, 'Lisette Runolfsdottir', 'broderick25@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wQvK6Wut64', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(9, 'Ms. Hertha Daniel IV', 'delmer20@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X2ulqOAw7j', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(10, 'Mrs. Caterina Oberbrunner Jr.', 'norberto73@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lQQrKNWnrl', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(11, 'Dwight Maggio', 'ikuhn@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vu4TLSTNoP', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(12, 'Neha Murazik', 'vprohaska@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wnAkBm1Y41', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(13, 'Reuben Bernhard', 'mmuller@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5YSSCVH70d', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(14, 'Britney Lang', 'nader.malcolm@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wl9A8dWK2a', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(15, 'Ms. Leola Trantow MD', 'klowe@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j4uRTSNyDO', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(16, 'Cierra Sporer', 'hackett.yolanda@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iv6jT5gQor', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(17, 'Prof. Carolanne Hessel MD', 'jefferey47@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7sUsjv2xSD', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(18, 'Curt Wisoky', 'xullrich@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iJsZLq34vS', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(19, 'Mr. Neil D\'Amore', 'tyshawn91@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x5pyn80lUv', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(20, 'Margret Hyatt', 'amari.maggio@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oulYdjonws', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(21, 'Franz Vandervort', 'wiegand.rod@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WFfoKUBrSK', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(22, 'Prof. Lonzo McGlynn Jr.', 'iohara@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SsWn3nJAhD', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(23, 'Donny Kilback', 'deonte55@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6hqO0xrxYP', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(24, 'Warren Smitham', 'moore.gaylord@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VofjKgif4U', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(25, 'Sally Torphy', 'abbigail58@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iA4ISCsAh2', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(26, 'Triston Cruickshank', 'hermiston.ashtyn@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VDv8bZtLWW', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(27, 'Samir Hill', 'fritsch.raquel@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '22KsyYHNlM', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(28, 'Camilla Koepp III', 'arden.kshlerin@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LOMeEwvjdr', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(29, 'Mr. Ladarius Fay', 'gloria.schulist@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm6VdcG8j7N', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(30, 'Prof. Oral Jaskolski', 'jlarson@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vnuPO9OCL7', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(31, 'Prof. Diana Willms', 'zackery.bergstrom@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2So2CfKFfG', '2020-05-21 18:39:24', '2020-05-21 18:39:24'),
(32, 'Demario Hill', 'yasmine28@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RaAsk6JkvU', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(33, 'Mrs. Kasandra Boehm V', 'dritchie@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kVX0Icy2F1', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(34, 'Mr. Talon Wehner PhD', 'ricardo.romaguera@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JzGSn6tqEZ', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(35, 'Keshaun Schaefer', 'lew66@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bQixFWgC82', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(36, 'Godfrey Boehm', 'kovacek.maddison@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HAvCL84ybJ', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(37, 'Bertrand Hoeger', 'nprosacco@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PI8YL2pONB', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(38, 'Ms. Zula Wiegand', 'stevie.wisozk@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NQFLZ9CxHm', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(39, 'Everette Hegmann', 'cmertz@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3qHZ0t7DzO', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(40, 'Merlin Jenkins', 'bernhard.concepcion@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EqWmsj53Zx', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(41, 'Calista Hilpert', 'cblock@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IH2gNOBZHT', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(42, 'Irwin O\'Reilly', 'salvatore.towne@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yaURQsThad', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(43, 'Mrs. Emilie Turner IV', 'zmuller@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ABIFJ1xOyf', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(44, 'Rhiannon Maggio', 'electa14@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pz4zmfGYfz', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(45, 'Prof. Kaela Lang Sr.', 'rbernier@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jl5uYLQcF9', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(46, 'Danyka Frami', 'beatty.tyra@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RSZ3qMDHnU', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(47, 'Harmony Pacocha', 'khettinger@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ba61XIV8j9', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(48, 'Hosea Leffler', 'cschroeder@example.net', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NxzPgFuQBH', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(49, 'Dr. Ressie Kertzmann', 'graham91@example.com', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EMMQB511ut', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(50, 'Prof. Giuseppe Breitenberg MD', 'laron.mcclure@example.org', '2020-05-21 18:39:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2Ahobf6AiI', '2020-05-21 18:39:25', '2020-05-21 18:39:25'),
(51, 'Jose Armando', 'admin@admin.com', '2020-05-21 13:49:21', '$2y$10$nZweZkSO2ZXuhSCyXeiX0u3C7qsbxEyTculmVHHNRQvNpVP7SJrDq', NULL, '2020-05-21 18:49:03', '2020-05-21 18:49:03'),
(52, 'alfredo', 'alfredo@alfredo.com', NULL, '$2y$10$Y3p0te1KSJZP0ePfotx/cejKaf3BxXEit5ochdXP1VlJJFuvt9HoG', NULL, '2020-05-22 03:20:12', '2020-05-22 03:20:12'),
(53, 'juanchito', 'juanchito@asd.com', NULL, '$2y$10$pK9yk5aoEcSWJ3EhivS6euaCbEE9ViQoivaXaI9FdKMl4DhoajfxS', NULL, '2020-05-22 04:06:44', '2020-05-22 04:06:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
