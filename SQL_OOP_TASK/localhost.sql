-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2024 at 08:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--
CREATE DATABASE IF NOT EXISTS `blog_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `blog_db`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postid` int NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` varchar(30) NOT NULL,
  `author`  varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);
--
-- Database: `laragigs`
--
CREATE DATABASE IF NOT EXISTS `laragigs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laragigs`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Quidem quia minus velit illum.', 'Laravel,Api,Backend', 'Lind-Kulas', 'New Ruthie', 'king97@rau.com', 'http://www.gusikowski.info/nemo-blanditiis-vel-id-sequi-reprehenderit.html', 'Assumenda est corporis reprehenderit dolorum dicta. Ipsa et magnam omnis. Perspiciatis aut consequatur sunt et voluptate voluptatem. Consequatur quis provident sed inventore et iusto. Nobis aliquam dignissimos pariatur enim aliquam culpa. Eius dolorum qui quis.', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(2, 'In similique nihil aliquid.', 'Laravel,Api', 'Volkman-Lakin', 'Mitchellview', 'schimmel.geovanny@rowe.net', 'http://www.barrows.com/', 'Dolorem dolores aut tenetur doloremque voluptates error corporis provident. Laborum repudiandae odio quaerat voluptate blanditiis sed. Quis ut distinctio harum omnis quae. Rerum consectetur quasi veritatis aut ab.', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(3, 'Occaecati porro eos architecto atque dicta perspiciatis quas.', 'Laravel,Backend', 'Gislason, Grady and Baumbach', 'East Wilhelminemouth', 'blanda.laron@price.com', 'http://hilpert.com/sit-illo-vero-est-accusantium-et-in-quos.html', 'Dolores et odio alias eligendi et. Quaerat fugit est dolores iusto dolorem odit ipsa. Cupiditate qui eos assumenda error nemo. Officiis quaerat eaque aut ducimus. Fuga sint accusamus omnis excepturi quae.', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(4, 'Natus autem voluptas iure.', 'Api,Backend', 'Grimes, Keeling and Ortiz', 'Lake Ashlyfurt', 'alexie24@steuber.com', 'http://jakubowski.biz/magni-similique-aliquam-assumenda-suscipit-velit-ut-nobis', 'Nisi doloribus ratione similique et. Temporibus ut nulla a et. Rem repellat veniam facilis. Repudiandae nemo perspiciatis voluptas.', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(5, 'Cupiditate aut et culpa et rerum natus quisquam.', 'Laravel,Vue,Backend', 'Kshlerin-Quigley', 'Kalihaven', 'reese.damore@oconner.info', 'http://www.wolff.com/nemo-beatae-eos-laborum', 'Voluptatem aliquam tempora est quis. Voluptatum aspernatur dignissimos voluptatem non tempore ut. Explicabo cum voluptate quis nam dolorum neque possimus. Expedita sit ut impedit beatae quia. Minima nulla impedit tempora aut incidunt ut deserunt. Ratione rerum sed id tempora consequuntur et. Eius animi molestiae aut commodi asperiores dolorem harum.', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(6, 'Ea dicta libero aliquid quia laudantium consequatur eos.', 'Laravel,Backend', 'Ortiz, Orn and Sipes', 'North Janelleside', 'gwendolyn.hermann@schmeler.com', 'http://koelpin.biz/', 'Consequatur eveniet eos ipsum eum et. Nobis aut voluptatem commodi asperiores eos aliquam. Dolore in quasi quia rerum et eos odio. Consequuntur impedit quis fugit nihil ullam totam facere. Omnis possimus ratione nemo aut culpa nam qui.', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(7, 'Ratione autem repellat et excepturi repellat similique expedita laboriosam.', 'Laravel,Api,Backend', 'Heidenreich, Wehner and Kemmer', 'New Shannonmouth', 'schulist.naomie@white.biz', 'http://www.weimann.com/in-quo-qui-saepe-necessitatibus-qui-debitis.html', 'Neque ut vel veritatis in odit aliquid sed. Voluptatem nam quia veritatis voluptatum dolorem dignissimos quae. Provident vel et qui expedita reprehenderit perspiciatis et et. Praesentium mollitia aspernatur nemo iure.', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(8, 'Aut magnam dolor rerum beatae.', 'Laravel,Api', 'Hammes Group', 'Harrischester', 'rice.santiago@dickinson.net', 'http://www.turcotte.com/modi-porro-dolor-doloremque-nulla-et-rerum', 'Ratione perspiciatis eum dignissimos ducimus sit. Voluptas vero ut eum autem id. Voluptate est tempore facilis eveniet ut facilis et. Quis dignissimos blanditiis velit.', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(13, 'jj', 'laravel , vue', 'batool', 'hh', 'bbaty.193@gmail.com', 'dfgh', 'gfdssxcvb', '2024-05-09 05:23:17', '2024-05-09 05:23:17'),
(14, 'hhff', 'nn', 'batool22', 'sdfg', 'bbaty.193@gmail.com', 'nn', 'fghjk', '2024-05-09 05:38:31', '2024-05-09 05:38:31'),
(15, 'hhhh', 'gnnn', 'batool111111111111', 'fgh', 'bbaty.193@gmail.com', 'dfgh', 'xdfgh', '2024-05-09 05:40:39', '2024-05-09 05:40:39'),
(16, 'hjjjj', 'gnnn', 'batool1rrr', 'vvvv', 'bbaty.193@gmail.com', 'dfgh', 'kjsbxgvaghs', '2024-05-09 05:47:45', '2024-05-09 05:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(51, '2024_05_05_201913_create__my_jobs_table', 1),
(65, '0001_01_01_000000_create_users_table', 2),
(66, '0001_01_01_000001_create_cache_table', 2),
(67, '0001_01_01_000002_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1GZTSYGo133PipmmQDLsiXqazZlkFEigzRye10CW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTJJcGFBWm5JRUphdG5EMUF3Wk05UXI4UHRBQUNoMXYxSTBvT0FIayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9saXN0aW5ncy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715244868),
('eJqp9aCZi6G7jAAE2liW92HNnG1hW5yLvLnV3VsT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblprQTRMMVJWZXVwZ3FvOHV1eWtOSTZYZXhJWHlIcks2ZjluRE56ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8/c2VhcmNoPXNpZ24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715168208);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jabari Schimmel', 'gheaney@example.net', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', 'cN0XOevDcE', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(2, 'Joshuah Johnston', 'malachi.hudson@example.com', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', 'G4j1Z1FbND', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(3, 'Cary Bogisich', 'erobel@example.com', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', 'DH4hmAdSmH', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(4, 'Prof. Albert Kertzmann', 'adams.guido@example.net', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', 'F9mgMgAznk', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(5, 'Mr. Charlie Mosciski Jr.', 'ruecker.loma@example.net', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', 'U22NrkZ3Ly', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(6, 'Tyra Jacobi', 'dorothy.mayer@example.net', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', 'G6oQPeqqEH', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(7, 'Annabell Spinka', 'reta.bogisich@example.com', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', 'qIw398QXQF', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(8, 'Fabian Lang III', 'lemuel.zulauf@example.net', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', 'nHE4aaO4fZ', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(9, 'Titus Fahey', 'rocky51@example.net', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', '37enWnKNz4', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(10, 'Darren Kassulke', 'kihn.oscar@example.net', '2024-05-07 06:22:42', '$2y$12$JIU6n0s96i1UYwnYUC/nt.OUfEzM5B8PvDfzDwbVQLT8oDZqtPtH2', '1GBLRlFEhO', '2024-05-07 06:22:42', '2024-05-07 06:22:42'),
(11, 'Sidney Bergnaum', 'fredy.kerluke@example.net', '2024-05-07 16:46:57', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', 'IRWYKwYbQW', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(12, 'Hosea Ratke', 'kailey33@example.com', '2024-05-07 16:46:58', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', 'woi3hSUQo4', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(13, 'Mr. Amari Hand', 'sterling26@example.net', '2024-05-07 16:46:58', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', 'xIiv2ZedRj', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(14, 'Rodrigo Hoppe', 'jayce.wolf@example.com', '2024-05-07 16:46:58', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', 'abPaUytBBP', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(15, 'Zaria O\'Reilly', 'ibreitenberg@example.net', '2024-05-07 16:46:58', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', 'ulp2xf1gvW', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(16, 'Shemar Keeling', 'jennifer72@example.com', '2024-05-07 16:46:58', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', '0cxgyxCLhT', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(17, 'Dr. Nya Feest', 'russel.finn@example.net', '2024-05-07 16:46:58', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', 'bOLgk7E6xG', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(18, 'Tess Murazik', 'tremayne.friesen@example.net', '2024-05-07 16:46:58', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', 'npOydgJNsB', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(19, 'Otto Williamson', 'mtorp@example.net', '2024-05-07 16:46:58', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', 'jZsajQh2nC', '2024-05-07 16:46:58', '2024-05-07 16:46:58'),
(20, 'Ollie Hyatt', 'ratke.melisa@example.org', '2024-05-07 16:46:58', '$2y$12$ol5qNsglS8yC0hy5xdcSq.vPz.yrX5ye9wKUbkA0vNJQy1bvtMZLG', 'SFUzEArIy6', '2024-05-07 16:46:58', '2024-05-07 16:46:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `project1`
--
CREATE DATABASE IF NOT EXISTS `project1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `project1`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VV2RC1zWJDWMSQN1eo6qm5ssqQqoHZkM9Nzn7sKI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1NYbkN3VXVNeFhDUWo1T1oxSTY3T2RxblFHQmlYNEUwVW9OaWxxUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714831507);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
