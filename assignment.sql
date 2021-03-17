-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2021 at 03:52 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_name`, `mobile`, `landmark`, `city`, `address_type`, `created_at`, `updated_at`) VALUES
(1, 'user', '9532559909', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:24:37', '2021-03-17 06:24:37'),
(2, 'user', '9532559909', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:29:21', '2021-03-17 06:29:21'),
(3, 'yogeshwar', '+6392221079', 'ak collection', 'Bhadohi', 'Home', '2021-03-17 06:29:38', '2021-03-17 06:29:38'),
(4, 'yogeshwar', '+6392221079', 'ak collection', 'Bhadohi', 'Home', '2021-03-17 06:29:58', '2021-03-17 06:29:58'),
(5, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:30:55', '2021-03-17 06:30:55'),
(6, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:32:03', '2021-03-17 06:32:03'),
(7, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:32:16', '2021-03-17 06:32:16'),
(8, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:33:31', '2021-03-17 06:33:31'),
(9, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:36:24', '2021-03-17 06:36:24'),
(10, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:39:04', '2021-03-17 06:39:04'),
(11, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:40:00', '2021-03-17 06:40:00'),
(12, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:48:54', '2021-03-17 06:48:54'),
(13, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Office', '2021-03-17 06:51:00', '2021-03-17 06:51:00'),
(14, 'raj singh', '+6392221079', 'ak collection', 'Bhadohi', 'Home', '2021-03-17 06:51:46', '2021-03-17 06:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Nuts', 'nuts', NULL, NULL),
(6, 'Oils', 'oils', NULL, NULL),
(7, 'Noodles', 'noodles', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_03_16_193502_create_products_table', 2),
(4, '2021_03_16_195911_create_categories_table', 3),
(5, '2021_03_17_113325_create_address_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_quantity`, `product_price`, `product_pic`, `created_at`, `updated_at`) VALUES
(3, '1', 'Almonds', '100gm', '149.00', 'm1.jpg', '2021-03-17 04:32:52', '2021-03-17 04:32:52'),
(4, '1', 'Cashew Nuts', '100g', '200.00', 'm2.jpg', '2021-03-17 04:33:56', '2021-03-17 04:33:56'),
(5, '1', 'Pista', '250g', '520.99', 'm3.jpg', '2021-03-17 04:35:10', '2021-03-17 04:35:10');

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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$WJno22iA0ojxH9NG89w0UOue2bKgNgDXP04i.FlZJyzPGOe706uyu', NULL, '2021-03-15 10:18:11', '2021-03-15 10:18:11'),
(2, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$O5gT/XyZaE//xNENQzk1geFXNhWwLLD/tkd6RlW5zXulQgOWkmY2C', NULL, '2021-03-15 11:33:56', '2021-03-15 11:33:56'),
(3, 'admin1', 'admin2@gmail.com', NULL, '$2y$10$uvKG.k4KTbITvumeWCIbkOlFpEz1znbtV1.CMolRoKhOQ3zF/E6Te', NULL, '2021-03-15 11:38:36', '2021-03-15 11:38:36'),
(4, 'admin', 'admin3@gmail.com', NULL, '$2y$10$jLNceMyJcHVPVmb2fs9K9eVdM8OfGXYP7YkBlP21KqHwNgAg.rGmi', NULL, '2021-03-17 03:29:32', '2021-03-17 03:29:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
