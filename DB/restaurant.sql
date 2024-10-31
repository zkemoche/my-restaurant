-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2024 at 08:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sandwiches', NULL, NULL),
(2, 'Main Meals', NULL, NULL),
(3, 'Smoothies and Shakes', NULL, NULL),
(4, 'Juices and Soda', NULL, NULL),
(5, 'Hot Drinks', NULL, NULL),
(6, 'Sandwiches', NULL, NULL),
(7, 'Main Meals', NULL, NULL),
(8, 'Smoothies and Shakes', NULL, NULL),
(9, 'Juices and Soda', NULL, NULL),
(10, 'Hot Drinks', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `offers` varchar(255) NOT NULL,
  `allergens` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `price`, `description`, `category_id`, `offers`, `allergens`, `created_at`, `updated_at`) VALUES
(1, 'Burger', 200, 'Sample Description', 1, '20', 'Yeast', '2024-10-30 13:51:51', '2024-10-30 13:51:51'),
(2, 'Pizaa', 1000, 'Sample Description', 1, '200', 'Yeast, Dairy, Eggs', '2024-10-30 13:53:02', '2024-10-30 13:53:02'),
(3, 'Sandwich', 600, 'Sample Description', 1, '150', 'Yeast, Dairy, Eggs', '2024-10-30 13:53:41', '2024-10-30 13:53:41'),
(4, 'Potatoes', 300, 'Sample Description', 1, '50', 'Oil, starch', '2024-10-30 13:54:21', '2024-10-30 13:54:21'),
(5, 'Biryani', 800, 'Sample Description', 1, '0', 'Cashew Nut Oil, Spices', '2024-10-30 13:55:10', '2024-10-30 13:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(75, '0001_01_01_000000_create_users_table', 1),
(76, '0001_01_01_000001_create_cache_table', 1),
(77, '0001_01_01_000002_create_jobs_table', 1),
(78, '2024_10_13_085227_create_categories_table', 1),
(79, '2024_10_14_080237_create_menus_table', 1),
(80, '2024_10_14_084713_create_orders_table', 1),
(81, '2024_10_14_085001_create_payments_table', 1),
(82, '2024_10_14_085255_create_reviews_table', 1),
(83, '2024_10_14_085346_create_orderdetails_table', 1),
(84, '2024_10_16_084726_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_type` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_type`, `order_status`, `order_total`, `created_at`, `updated_at`) VALUES
(1, 1, 'Delivery', 'Preparing', 500, '2024-10-30 14:11:43', '2024-10-30 14:16:05'),
(2, 1, 'Delivery', 'Preparing', 500, '2024-10-30 14:12:11', '2024-10-30 14:18:20'),
(3, 1, 'Take Away', 'Preparing', 1600, '2024-10-30 14:19:09', '2024-10-30 14:20:29'),
(4, 1, 'Take Away', 'Preparing', 1000, '2024-10-30 14:23:12', '2024-10-30 14:24:14'),
(5, 1, 'Take Away', 'Preparing', 3500, '2024-10-30 14:28:50', '2024-10-30 14:31:39'),
(6, 1, 'Take Away', 'Preparing', 3500, '2024-10-30 14:30:39', '2024-10-30 14:31:53'),
(7, 1, 'Take Away', 'Preparing', 6400, '2024-10-30 14:31:25', '2024-10-30 14:32:03'),
(8, 1, 'Take Away', 'Preparing', 2000, '2024-10-30 14:34:35', '2024-10-30 14:38:41'),
(9, 1, 'Take Away', 'Preparing', 4000, '2024-10-30 14:49:38', '2024-10-30 14:50:07'),
(10, 1, 'Dine in', 'Preparing', 4000, '2024-10-30 14:49:46', '2024-10-30 14:50:27'),
(11, 1, 'Take Away', 'Preparing', 4000, '2024-10-30 14:50:18', '2024-10-30 14:51:07'),
(12, 1, 'Take Away', 'Preparing', 1000, '2024-10-30 14:52:05', '2024-10-30 14:52:22'),
(13, 1, 'Take Away', 'Preparing', 200, '2024-10-31 04:20:23', '2024-10-31 04:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_type`, `amount`, `user_id`, `payment_status`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 500, 1, 'Paid', 1, '2024-10-30 14:16:05', '2024-10-30 14:16:05'),
(2, 'Mpesa', 500, 1, 'Paid', 2, '2024-10-30 14:18:20', '2024-10-30 14:18:20'),
(3, 'Mpesa', 1600, 1, 'Paid', 3, '2024-10-30 14:20:29', '2024-10-30 14:20:29'),
(4, 'Mpesa', 1000, 1, 'Paid', 4, '2024-10-30 14:24:14', '2024-10-30 14:24:14'),
(5, 'Mpesa', 3500, 1, 'Paid', 5, '2024-10-30 14:31:39', '2024-10-30 14:31:39'),
(6, 'Mpesa', 3500, 1, 'Paid', 6, '2024-10-30 14:31:53', '2024-10-30 14:31:53'),
(7, 'Mpesa', 6400, 1, 'Paid', 7, '2024-10-30 14:32:03', '2024-10-30 14:32:03'),
(8, 'Cash', 2000, 1, 'Paid', 8, '2024-10-30 14:38:41', '2024-10-30 14:38:41'),
(9, 'Cash', 4000, 1, 'Paid', 9, '2024-10-30 14:50:07', '2024-10-30 14:50:07'),
(10, 'Card', 4000, 1, 'Paid', 10, '2024-10-30 14:50:27', '2024-10-30 14:50:27'),
(11, 'Cash', 4000, 1, 'Paid', 11, '2024-10-30 14:51:07', '2024-10-30 14:51:07'),
(12, 'Cash', 1000, 1, 'Paid', 12, '2024-10-30 14:52:22', '2024-10-30 14:52:22'),
(13, 'Cash', 200, 1, 'Paid', 13, '2024-10-31 04:20:42', '2024-10-31 04:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token-name', '875d5431ad3cd47373819ab23292f6bb63cf22b094d8892a9e6a76ec56a75601', '[\"*\"]', NULL, NULL, '2024-10-30 13:57:56', '2024-10-30 13:57:56'),
(2, 'App\\Models\\User', 1, 'token-name', '82217d6425fea4854bc0769e98680de3dca0e7fa5dfe2576d141d4143d886189', '[\"*\"]', NULL, NULL, '2024-10-30 14:18:09', '2024-10-30 14:18:09'),
(3, 'App\\Models\\User', 1, 'token-name', '963171ac056e04134307f1bb3d1b32ac16dbad50495a11d06ca1c5e5cb27e72b', '[\"*\"]', NULL, NULL, '2024-10-30 14:20:13', '2024-10-30 14:20:13'),
(4, 'App\\Models\\User', 1, 'token-name', 'f927ebdd52bdf3a5622db21391742976ae61b03d1c5c818b511c1ba611261eb3', '[\"*\"]', NULL, NULL, '2024-10-30 14:28:31', '2024-10-30 14:28:31'),
(5, 'App\\Models\\User', 1, 'token-name', 'ff90d858fd12037aceac94271e8e55c1d62eae57a747b28329b4191878eb5e74', '[\"*\"]', NULL, NULL, '2024-10-30 14:44:50', '2024-10-30 14:44:50'),
(6, 'App\\Models\\User', 1, 'token-name', '4644e8b107c568fbd141a38cbb350898bd663f95b992563a20fa8c362b8854e0', '[\"*\"]', NULL, NULL, '2024-10-31 04:20:07', '2024-10-31 04:20:07'),
(7, 'App\\Models\\User', 1, 'token-name', 'd3eecc6c5d1933b151ad76ac4eff20c00540fedeb4cf9b1c7a64a6940c5dbaad', '[\"*\"]', NULL, NULL, '2024-10-31 04:20:10', '2024-10-31 04:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reviews` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `phone`, `location`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'System Admin', 'kemochezane@gmail.com', NULL, '$2y$12$2CF23a3H9Pqt/ggeVjFwleWFxhFEB2/WkETGJ6zNZzW5nZJl726qK', 'Admin', '0712345677', 'NBO', NULL, NULL, NULL),
(2, 'John Doe', 'johndoe@my-restaurant.com', NULL, '$2y$12$6Fsu5FFkHFbDW.nI1PrNBOBuHYH36Wa2sRc/DffLngPs4HfCql.Y6', 'Employee', '0712345678', 'NBO', NULL, NULL, NULL),
(3, 'Jane Doe', 'janedoe@my-restaurant.com', NULL, '$2y$12$CyIf5c2rDPyOLOEBV8vriucD1YiwPN.JCSMHcq.APl8KS8m/RvXnu', 'Employee', '0712345679', 'NBO', NULL, NULL, NULL);

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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetails_order_id_foreign` (`order_id`),
  ADD KEY `orderdetails_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `orderdetails_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
