-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 02:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalogsore_intan`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(3, 3, 'Pensil', '2023-01-23 08:12:57', '2023-01-23 08:12:57'),
(4, 3, 'Pulpen', '2023-01-23 08:13:32', '2023-01-23 08:13:32'),
(5, 3, 'Penggaris', '2023-01-23 08:13:40', '2023-01-23 08:13:40'),
(6, 3, 'Penghapus', '2023-01-23 08:13:48', '2023-01-23 08:13:48'),
(7, 3, 'Notes', '2023-01-23 08:13:56', '2023-01-23 08:13:56'),
(8, 4, 'Stationary Pack', '2023-01-23 08:24:22', '2023-01-23 08:24:22'),
(9, 4, 'Coloring', '2023-01-23 08:24:50', '2023-01-23 08:24:50'),
(10, 4, 'Bookmark', '2023-01-23 08:27:32', '2023-01-23 08:27:32'),
(11, 4, 'Map', '2023-01-23 08:30:57', '2023-01-23 08:30:57'),
(12, 5, 'Pewarna', '2023-01-23 08:32:55', '2023-01-23 08:32:55'),
(13, 5, 'Bookmark', '2023-01-23 08:33:10', '2023-01-23 08:33:10'),
(14, 5, 'Set Tulis', '2023-01-23 08:33:47', '2023-01-23 08:33:47'),
(15, 5, 'Penggaris', '2023-01-23 08:39:04', '2023-01-23 08:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_02_063119_create_categories_table', 1),
(6, '2023_01_04_101413_create_products_table', 1),
(7, '2023_01_11_090743_update_table_category', 1),
(8, '2023_01_11_090836_update_table_product', 1),
(9, '2023_01_29_063717_create_shoppingintans_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `category_id`, `name`, `price`, `photo`, `created_at`, `updated_at`) VALUES
(4, 3, 4, 'Pulpen Bangau', '10000', '63cea4f33b483.JPG', '2023-01-23 08:17:07', '2023-01-23 08:23:11'),
(5, 3, 4, 'Pulpen Gel Pack', '3000', '63cea5880989f.JPG', '2023-01-23 08:19:36', '2023-01-23 08:19:36'),
(6, 3, 7, 'Buku Catatan Kecil', '5000', '63cea5c0a525a.JPG', '2023-01-23 08:20:32', '2023-01-23 08:20:32'),
(7, 3, 6, 'Penghapus Buahan', '2000', '63cea6051d94e.JPG', '2023-01-23 08:21:41', '2023-01-23 08:23:31'),
(8, 4, 8, 'Set Alat Tulis', '12000', '63cea71ebad39.JPG', '2023-01-23 08:26:22', '2023-01-23 08:26:22'),
(9, 4, 9, 'Highlighter', '15000', '63cea73e40a82.JPG', '2023-01-23 08:26:54', '2023-01-23 08:26:54'),
(10, 4, 10, 'Pembatas Buku', '4000', '63cea7e9ceadf.JPG', '2023-01-23 08:29:45', '2023-01-23 08:29:45'),
(11, 4, 11, 'Map Plastik', '3000', '63cea8598b8d1.JPG', '2023-01-23 08:31:37', '2023-01-23 08:31:37'),
(12, 5, 12, 'Pewarna Gambar', '20000', '63cea93018032.JPG', '2023-01-23 08:35:12', '2023-01-23 08:35:12'),
(13, 5, 13, 'Pembatas Buku', '2500', '63cea95245655.JPG', '2023-01-23 08:35:46', '2023-01-23 08:35:46'),
(14, 5, 14, 'Buku Tulis', '5000', '63cea9aa6a583.JPG', '2023-01-23 08:37:14', '2023-01-23 08:37:14'),
(15, 5, 15, 'Penggaris 15cm', '3000', '63ceaa4241b2c.JPG', '2023-01-23 08:39:46', '2023-01-23 08:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingintans`
--

CREATE TABLE `shoppingintans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingintans`
--

INSERT INTO `shoppingintans` (`id`, `buyer_name`, `buyer_whatsapp`, `buyer_address`, `product_id`, `qty`, `total`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Intan Pebiola', '082246722563', 'Palembang jalan may zen', 5, 10, 30000, 'Warna merah', '2023-01-29 00:39:58', '2023-01-29 00:39:58'),
(2, 'Intan Pebiola', '082246722563', 'Palembang jalan may zen', 5, 10, 30000, 'Warna merah', '2023-01-29 00:40:25', '2023-01-29 00:40:25'),
(3, 'Intan Shin', '087564456122', 'DEmang Lebar Daun', 11, 5, 15000, NULL, '2023-01-29 00:42:59', '2023-01-29 00:42:59'),
(4, 'Iqbaal Ramadhan', '089687192299', 'Jalan Krio Rozali Mata Merah', 8, 9, 108000, 'warna pink ya', '2023-01-29 06:13:00', '2023-01-29 06:13:00'),
(5, 'Kim Taehyung', '0823823797931', 'Seoul, South Korea', 6, 5, 25000, 'Orange Juseyo', '2023-01-29 06:14:34', '2023-01-29 06:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Intan Pebiola', 'intan@gmail.com', NULL, '$2y$10$yMKsDhTRgH5Jo3HcSzAXe.vFo8ppItxbhNE9ftPAYjnKjDsztwrWC', NULL, '2023-01-17 03:34:34', '2023-01-17 03:34:34'),
(2, 'Intan Pebiola', 'intanpebiola07@gmail.com', NULL, '$2y$10$tNJSGFtpZloxkrneVZjPSe/D6ur7foDUaPRuuGe2V/Vzq5aDwxMoS', NULL, '2023-01-17 03:38:16', '2023-01-17 03:38:16'),
(3, 'SukaSekolah', 'sukasekolah@gmail.com', NULL, '$2y$10$kIo2kBgu2CS1qDn0Ac.Gm.DxO2kxFIbzuGt35SXjL95WIcGL1BIIm', NULL, '2023-01-23 08:09:03', '2023-01-23 08:09:03'),
(4, 'Alat Tulis Sekolah', 'alattulissekolah@gmail.com', NULL, '$2y$10$7HSpVqgSDeMX1XUw421nSurEBxMPQjNx8lbsz39DjnFIW5f29jk9.', NULL, '2023-01-23 08:10:38', '2023-01-23 08:10:38'),
(5, 'Stationary Pack', 'stationarypack@gmail.com', NULL, '$2y$10$xA9QI3jYb0SGfBSYxN3HB.wzAYgfElmn1f6ma6/gQzC3BwVQZ/Bcq', NULL, '2023-01-23 08:11:49', '2023-01-23 08:11:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingintans`
--
ALTER TABLE `shoppingintans`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shoppingintans`
--
ALTER TABLE `shoppingintans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
