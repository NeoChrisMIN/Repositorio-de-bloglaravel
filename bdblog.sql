-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2024 a las 23:12:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdblog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('6bchristianmi@gmail.com|::1', 'i:1;', 1715555025),
('6bchristianmi@gmail.com|::1:timer', 'i:1715555025;', 1715555025),
('904eb55448fadb63a8cefa6c5cb58bfb', 'i:1;', 1715555024),
('904eb55448fadb63a8cefa6c5cb58bfb:timer', 'i:1715555024;', 1715555024),
('ffaaa0fa7d26e84f2bb114c045d93ab7', 'i:1;', 1715621822),
('ffaaa0fa7d26e84f2bb114c045d93ab7:timer', 'i:1715621822;', 1715621822);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'repellendus', '2024-05-12 20:12:31', '2024-05-12 20:12:31'),
(2, 'rerum', '2024-05-12 20:12:31', '2024-05-12 20:12:31'),
(3, 'dolorem', '2024-05-12 20:12:31', '2024-05-12 20:12:31'),
(4, 'culpa', '2024-05-12 20:12:31', '2024-05-12 20:12:31'),
(5, 'ipsum', '2024-05-12 20:12:31', '2024-05-12 20:12:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `titulo`, `imagen`, `descripcion`, `fecha`, `user_id`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Itaque sit corrupti accusamus sapiente quis voluptas.', 'entrada/b8cd80cab1eb5e906a5025edc1cef89e.png', 'Aut velit quod reiciendis dolor tenetur eligendi. Quo nobis enim est non sed distinctio voluptates earum.', '2024-05-09', 10, 3, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(2, 'Quisquam qui maxime nihil quo.', 'entrada/b44d0bab6f85c53ddf35c709ad3f8548.png', 'Adipisci vel earum temporibus voluptatem. Sed cupiditate temporibus aut velit. Esse et ut suscipit delectus nihil nostrum id.', '2023-10-29', 9, 1, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(3, 'Necessitatibus tenetur ut libero voluptatem.', 'entrada/b3ad84a6f86129e37a17578ee6160827.png', 'Quos quae numquam laborum asperiores ea voluptatem eum. Molestiae deserunt quis a adipisci enim. Inventore autem sit ducimus veritatis voluptates quam corporis.', '2024-05-06', 5, 2, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(4, 'Magnam dolores assumenda delectus voluptatum id esse tempora.', 'entrada/e7c6054722bf0cb597e17710185f975f.png', 'Ipsam deleniti iusto id assumenda in tempore iste. Molestias officiis culpa sunt est ratione enim incidunt. Totam nostrum nemo illum incidunt.', '2024-01-25', 2, 3, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(5, 'Repellat voluptates animi occaecati ex ut.', 'entrada/f297fa5099a0bda727c7380ef3c4d4d0.png', 'Et accusamus vero et maiores. Voluptates ea enim animi consectetur non voluptas ratione. Nihil accusamus ipsa enim architecto nostrum omnis hic. Sapiente id et ea incidunt reprehenderit id.', '2023-11-17', 5, 5, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(6, 'Qui eligendi distinctio possimus at sed mollitia dolores.', 'entrada/f2d11f72e2c6dc798e3da7bd5cd085c7.png', 'Quidem perspiciatis nemo ut consectetur voluptatem vel. Itaque id doloribus autem consectetur eum quidem.', '2023-10-29', 2, 4, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(7, 'Sint dolor quia molestiae inventore aut.', 'entrada/a0b4ac06106f030f30db73ee4ed5675f.png', 'Consequatur distinctio nobis reiciendis illo quisquam. Ipsam dolorum consectetur ut animi.', '2024-03-24', 4, 3, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(8, 'Doloribus quis quia excepturi.', 'entrada/dfd2061a9af2ae361d5067481621e0f5.png', 'Blanditiis ut laborum aut hic. Harum quod velit enim culpa vitae. Officia eligendi fugit magnam esse repudiandae. Repellendus quia sed velit aut omnis dolorum sapiente.', '2024-01-22', 8, 5, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(9, 'Et illum perspiciatis asperiores quibusdam.', 'entrada/e399664d8516ddd44707c9c250b3a8c6.png', 'Exercitationem commodi ex rem exercitationem praesentium quia et vero. Labore debitis nostrum vero aut placeat. Ipsum quos sed molestiae est hic.', '2023-08-08', 1, 1, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(10, 'Dolorem facilis fugit rerum aspernatur.', 'entrada/cc78fed6678ebca4b7308e8d4c6c4954.png', 'Vel consequatur est aliquam. Distinctio enim accusantium odit quia sed sed. Qui perferendis modi repellendus quisquam est. Qui voluptas praesentium enim eum cumque dolores.', '2023-06-18', 5, 3, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(11, 'Neque omnis hic quisquam ratione.', 'entrada/84a9ac1d577447dd52e87e62b144d4e1.png', 'A libero ipsa id sunt dolore debitis maxime praesentium. Magnam ut omnis fugiat delectus et. Facere quo ut illum doloremque porro. Illum ipsa id ea distinctio ut.', '2024-04-17', 6, 1, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(12, 'Odit qui porro facere.', 'entrada/892f041a8348ed7264cc1e499d22f1bd.png', 'Voluptas odio ullam aliquid. Aut consequuntur dolor dolores aut. Quos veritatis at eligendi dicta.', '2024-01-26', 6, 3, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(13, 'Quibusdam architecto dolorem aliquid.', 'entrada/855f9b72d87994a139c3ba4d70669e0b.png', 'Voluptatem est repellendus ut. Et rerum error sequi. Aspernatur doloribus odit praesentium qui id praesentium aut. Placeat nobis sint ratione numquam magni quo.', '2024-03-18', 6, 2, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(14, 'Unde et corrupti et non enim.', 'entrada/f96b527222922071514e5255ef4d2884.png', 'Harum corporis quas suscipit maxime dolor sit blanditiis. Id quam et in. Fugiat rerum recusandae impedit occaecati. Adipisci occaecati dolore aspernatur nemo.', '2023-12-12', 8, 3, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(15, 'Dolorem iusto qui qui sunt nihil.', 'entrada/e8e262c06226910b7922a7b7b99282ab.png', 'Autem officiis et velit. Recusandae error veniam magni quod necessitatibus. Sapiente odit et ducimus et fugit corporis. Libero vitae molestiae delectus consectetur aliquid tempora corrupti.', '2023-05-22', 4, 2, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(16, 'Veritatis aspernatur omnis et nobis soluta.', 'entrada/2397f8fb162ea8df5286fb4075300c1a.png', 'Illo ipsa architecto qui. Repellat rem dignissimos dolore tempore doloribus aliquam velit quibusdam. Nulla cupiditate autem minima aut molestiae explicabo.', '2024-01-04', 5, 1, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(17, 'Blanditiis rem facere rerum nostrum.', 'entrada/9ae5ef721d45544b17956f5041c29341.png', 'Debitis quos repellat ad est quas est. Voluptatem ab recusandae adipisci atque cum aut sed. Alias sit est eum odit sit et occaecati.', '2024-03-17', 1, 2, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(18, 'Necessitatibus molestiae amet quia voluptas corrupti.', 'entrada/b8bce9c48cb3f744cfb4e952653fda97.png', 'Voluptas molestiae aliquam incidunt assumenda. Et et est ab ab et. Ea culpa sint et natus non. Aut nostrum incidunt rem recusandae voluptas voluptatem.', '2024-02-02', 9, 3, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(19, 'Consequatur asperiores est fuga et sit ullam.', 'entrada/8e94046c88c6dd0b86ea0508242c3beb.png', 'Aut vero perferendis at nam optio. Voluptatem amet facilis dolores sit distinctio voluptatum. Voluptas culpa maxime odit aut corrupti.', '2024-04-09', 6, 4, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(20, 'Quia iusto ut explicabo accusamus.', 'entrada/a529bbc2df6df0f0ed46cfae23e8f843.png', 'Non delectus ut non est. Commodi voluptatem provident consequatur nam sint ea.', '2023-09-17', 9, 2, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(21, 'Occaecati qui odit sed minima.', 'entrada/fd46892c92fa4ca4150ac7505736014e.png', 'Non perspiciatis sit est sed qui praesentium. Tempore et qui porro dolores cupiditate voluptatem inventore. Ad eos adipisci quis cum sed. Mollitia quae incidunt ipsum laborum dolores fugit sit.', '2023-07-08', 1, 4, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(22, 'Accusamus sit maxime soluta aspernatur.', 'entrada/90fad34da52d87129b127d817cdaf3a2.png', 'Est ratione aliquid sed tempore. Earum enim sunt est quasi iste. Sunt odio reiciendis libero eius.', '2024-03-03', 8, 5, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(23, 'Totam sed harum adipisci recusandae.', 'entrada/603cdfb24529b7c25020454fcfe83972.png', 'Sed ad adipisci et et et ut iure natus. Blanditiis quo qui qui omnis aut vel cum. Hic vero sint minima voluptates laboriosam aut. Magnam sapiente est perspiciatis et.', '2023-11-03', 7, 2, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(24, 'Esse soluta blanditiis recusandae quam.', 'entrada/41b58aea689a8182b40e0e77a72d4d50.png', 'In molestias magnam sed sunt eaque consequatur. Facilis aut magnam incidunt qui architecto est ratione. Non sapiente voluptas quia et dolor.', '2023-09-03', 3, 1, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(25, 'Fuga voluptatibus laudantium perspiciatis nihil.', 'entrada/d69adf56be0726121244d55286e2d672.png', 'Voluptates sed voluptatibus esse. Dolor aliquid ipsum corporis placeat quia aspernatur placeat. Ut adipisci dolores ea et voluptatum.', '2024-03-28', 4, 5, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(26, 'Eligendi est voluptatum quia velit blanditiis natus officiis.', 'entrada/a85e0545c1f213ca484cccf92e41f4f2.png', 'Tempora non nobis optio libero. Dolorem sunt sunt animi odit dolorem eius odio cum.', '2024-04-20', 2, 5, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(27, 'Qui porro nam vitae quis et.', 'entrada/93074dbb8070ba3fcd5d6be25ccdb922.png', 'Non eaque omnis et eos deserunt tempora accusamus. Animi aut voluptas voluptas. Labore laborum in accusamus hic sed fugiat et.', '2023-05-28', 1, 2, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(28, 'Illum nobis omnis aperiam dolor nemo itaque.', 'entrada/91d859583598e2b17555dad082187b3c.png', 'Culpa cum est eveniet voluptatem beatae. Et officiis praesentium et consequuntur officia odit. Maxime debitis atque velit cupiditate temporibus.', '2024-02-07', 6, 2, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(29, 'Eveniet neque labore veritatis corrupti voluptatem est et.', 'entrada/daa3726ff78ddf2c3fbafdbc846b9ad4.png', 'Rem minima quo ex. Placeat quidem autem et. Aliquam explicabo maiores cum assumenda officiis. Nesciunt laboriosam deleniti et cum veniam dolores consectetur.', '2023-08-27', 4, 3, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(30, 'Aut qui non maxime vitae debitis quasi esse.', 'entrada/f3f58b7cf646abe69fdee3b4fa678c11.png', 'Est magni molestiae ut. Consequatur velit reiciendis facere natus incidunt quisquam libero. Voluptas at quaerat sapiente aut. Quidem id error eos corrupti ad rerum numquam dolorum.', '2023-09-21', 4, 2, '2024-05-12 20:12:54', '2024-05-12 20:12:54'),
(31, 'que tal estas?', 'entrada/xKEuJz2LeVETWzLdJ2RQc5bJ2ZrXqJDwryuU2a9t.png', 'ola ke ase cuentame lo que hace', '2024-05-17', 11, 1, '2024-05-13 15:37:26', '2024-05-13 15:37:26'),
(32, 'la loca carrera de patos', 'entrada/ZSFdsw5mw3aJVhMrVsXCl5ZzHxC0r6IhDTuxxW7q.png', 'los patos corren mucho y estan locos', '2024-05-07', 11, 3, '2024-05-13 15:38:11', '2024-05-13 15:38:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_06_162909_add_two_factor_columns_to_users_table', 1),
(5, '2024_05_06_162936_create_personal_access_tokens_table', 1),
(6, '2024_05_06_164525_create_categorias_table', 1),
(7, '2024_05_06_164659_create_entradas_table', 1),
(8, '2024_05_06_201755_create_images_table', 1),
(9, '2024_05_12_220011_add_rol_to_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('yVtIb9W0BLhivAiLMD08GCU35sVGglJUs0R0Wj2u', 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNTFvdTJVWFFNU2dQSVZTYXBQZFVnZnlWWWNUSFgxMjZCQWg5NVkySyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvYmxvZ2xhcmF2ZWwvcHVibGljL2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjExO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEyJDlZREd3S05nYzdCYjVHWC45UUZBcHVWSGEyYjRwUVlJaVVoeG5MbFN5TS5BOVNPU2xOWGFpIjt9', 1715634558);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rol` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `rol`) VALUES
(1, 'Mr. Dwight O\'Conner II', 'corene.morar@example.org', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, 'QrufzNsRvC', NULL, NULL, '2024-05-12 20:12:30', '2024-05-12 20:12:30', 'user'),
(2, 'Peggie Funk', 'darwin.jacobson@example.com', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, 'BYQP9N8xgK', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'user'),
(3, 'Nickolas Osinski', 'christiansen.hershel@example.net', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, 'IPcc91sKqs', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'user'),
(4, 'Dr. Ali Renner', 'gleason.marianna@example.org', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, 'ypZwYIzNHt', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'user'),
(5, 'Colten Bergstrom', 'khickle@example.net', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, 'X3kNxeffbN', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'admin'),
(6, 'Gussie Thompson I', 'qbogan@example.net', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, 'pokR7zp8qY', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'user'),
(7, 'Seamus Blanda', 'arobel@example.com', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, '0DBAQPcu3I', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'admin'),
(8, 'Ms. Harmony Padberg', 'lchamplin@example.org', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, 'PJTzH7bb38', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'admin'),
(9, 'Morton Rutherford', 'toby22@example.org', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, 'bE3dihHEn9', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'admin'),
(10, 'Murray Kautzer', 'pwilkinson@example.org', '2024-05-12 20:12:30', '$2y$12$j6zsF8u9b/Ey/yyVlG6m9Oodu7eYFJcyJECsmnsP/dmQ7Wm7WAQqq', NULL, NULL, NULL, 'TkWpTi22m6', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'user'),
(11, 'Test User', 'test@gmail.com', '2024-05-12 20:12:31', '$2y$12$9YDGwKNgc7Bb5GX.9QFApuVHa2b4pQYIiUhxnLlSyM.A9SOSlNXai', NULL, NULL, NULL, 'hWVFRUYC437KAHYYuKmRgEnkv7sfaN4Yj7xs1KB4OHlGgN6WvhYzXpPfPgbH', NULL, NULL, '2024-05-12 20:12:31', '2024-05-12 20:12:31', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entradas_user_id_foreign` (`user_id`),
  ADD KEY `entradas_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `entradas_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entradas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
