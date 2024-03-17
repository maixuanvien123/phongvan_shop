-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 06:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phongvanshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Pin dự phòng', '2023-07-07 10:28:33', '2023-07-07 10:28:33'),
(2, 'sạc', '2023-07-07 10:37:13', '2023-07-07 10:37:13'),
(3, 'sạc', '2023-07-15 04:19:37', '2023-07-15 04:19:37'),
(4, 'sạc', '2023-07-15 04:20:55', '2023-07-15 04:20:55'),
(5, 'Pin dự phòng', '2023-07-15 04:27:28', '2023-07-15 04:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Cate 1', NULL, 'cate-1', '2023-05-13 22:33:36', '2023-05-27 20:30:49'),
(2, 'Cate 2', NULL, 'cate-2', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(3, 'Cate 3', NULL, 'cate-3', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(4, 'Cate 4', NULL, 'cate-4', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(5, 'Cate 5', NULL, 'cate-5', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(6, 'Cate 6', NULL, 'cate-6', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(7, 'Cate 7', NULL, 'cate-7', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(8, 'Cate 8', NULL, 'cate-8', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(9, 'Cate 9', NULL, 'cate-9', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(10, 'Cate 10', NULL, 'cate-10', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(11, 'Cate 11', NULL, 'cate-11', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(12, 'Cate 12', NULL, 'cate-12', '2023-05-13 22:33:36', '2023-05-13 22:33:36'),
(13, 'Cate 1.1', 1, 'cate-1-1', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(14, 'Cate 1.2', 2, 'cate-1-2', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(15, 'Cate 1.3', 1, 'cate-1-3', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(16, 'Cate 1.4', 1, 'cate-1-4', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(17, 'Cate 1.1.1', 13, 'cate-1-5', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(18, 'Cate 1.1.2', 13, 'cate-1-6', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(19, 'Cate 1.2.1', 14, 'cate-1-1-1', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(20, 'Cate 1.2.2', 14, 'cate-1-1-2', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(21, 'Cate 1.3.1', 15, 'cate-1-1-3', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(22, 'Cate 1.3.2', 15, 'cate-1-1-4', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(23, 'Cate 1.4.1', 16, 'cate-1-1-5', '2023-05-13 22:34:02', '2023-05-13 22:34:02'),
(24, 'Cate 1.4.2', 16, 'cate-1-1-6', '2023-05-13 22:34:02', '2023-05-13 22:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Du Lịch', 0, '2023-11-16 04:39:26', '2023-11-16 09:12:39'),
(2, 'Công Nghệ', 0, '2023-11-16 09:10:25', '2023-11-16 09:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `used` varchar(255) DEFAULT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `code`, `price`, `used`, `start`, `end`, `status`, `created_at`, `updated_at`) VALUES
(1, 'giam20k', 20000, ',1', '2023-11-15', '2023-11-26', 0, '2023-03-27 09:21:50', '2023-11-26 03:44:09'),
(2, 'giam10k', 10000, '', '2023-11-09', '2023-12-02', 1, '2023-03-27 03:34:10', '2023-11-26 03:20:16'),
(3, 'giam30k', 30000, ',5', '2023-10-30', '2023-11-30', 0, '2023-03-30 01:13:19', '2023-11-26 03:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imageDefault` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `imageDefault`, `image`, `created_at`, `updated_at`) VALUES
(1, '64a7dfc2badce_1688723394.jpg', '64b23f7d5b20c_1689403261.jpg|64b23f7d9b55c_1689403261.jpg|64b23f7dcc2bc_1689403261.jpg', '2023-07-07 09:49:57', '2023-07-15 06:41:02'),
(2, '64a7e0b61c8b9_1688723638.jpg', '64b23f9988532_1689403289.jpg|64b23f99c8e8f_1689403289.jpg|64b23f9a007f3_1689403290.jpg', '2023-07-07 09:53:58', '2023-07-15 06:41:30'),
(3, '64a7e8d026d33_1688725712.jpeg', '64b23fc23a542_1689403330.jpeg|64b23fc26ed24_1689403330.jpeg|64b23fc29d368_1689403330.jpeg', '2023-07-07 10:28:33', '2023-07-15 06:42:10'),
(4, '64a7ead84a883_1688726232.jpg', '64b23fd78dd00_1689403351.jpg|64b23fd7c79ab_1689403351.jpg|64b23fd808745_1689403352.jpg', '2023-07-07 10:37:13', '2023-07-15 06:42:32'),
(5, '64b21cc409b93_1689394372.jpg', NULL, '2023-07-15 04:12:53', '2023-07-15 04:12:53'),
(6, '64b21d33f28dc_1689394483.jpg', NULL, '2023-07-15 04:14:44', '2023-07-15 04:14:44'),
(7, '64b21e5853780_1689394776.jpg', '64b23ff1c7e8a_1689403377.jpg|64b23ff20db8b_1689403378.jpg', '2023-07-15 04:19:37', '2023-07-15 06:42:58'),
(8, '64b21ea67c7d7_1689394854.jpg', '64b23ffe28223_1689403390.jpg|64b23ffe5bb57_1689403390.jpg', '2023-07-15 04:20:55', '2023-07-15 06:43:10'),
(9, '64b220300dc51_1689395248.jpeg', '64b2400f472fc_1689403407.jpg|64b2400f7830b_1689403407.jpg', '2023-07-15 04:27:28', '2023-07-15 06:43:27'),
(10, '64b220e3b8d49_1689395427.jpg', '64b24041b96aa_1689403457.jpg|64b24041ec3ff_1689403457.jpg', '2023-07-15 04:30:28', '2023-07-15 06:44:18'),
(11, '64b222baaab98_1689395898.jpg', '64b2403288b76_1689403442.jpg|64b24032c7194_1689403442.jpg|64b2403305231_1689403443.jpg', '2023-07-15 04:38:19', '2023-07-15 06:44:03'),
(12, '64b22348da37e_1689396040.jpg', '64b2404de5c24_1689403469.jpg|64b2404e31752_1689403470.jpg|64b2404e5a142_1689403470.jpg', '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(13, 'mbp16-spacegray-select-2023012.jpg',NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(14, 'may-choi-game-Sony-Playstation-PS4-Pro-1TB-CUH-7106B-B01-hinh-1.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(15, 'Dell_UltraSharp_40_Curved_Monitor_with_speakers-800x633-1.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(16, 'gopro-hero-12-black-17-510x368.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(17, 's-l1200.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(18, '6209-2570.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(19, '633ae05bcbb7c316023b17d6-samsung-49-inch-odyssey-g9-gaming.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(20, 'may-anh-canon-eos-r5-body-only-02-500x500.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(21, '76326_chuot_gaming_khong_day_logitech_pro_x_superlight_2_lightspeed_white_7.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(22, '22.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(23, '23.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(24, '24.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(25, '25.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(26, '26.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(27, '27.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(28, '28.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(29, '29.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(30, '30.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(31, '31.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(32, '32.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(33, '33.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(34, '34.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(35, '35.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(36, '36.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(37, '37.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(38, '38.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(39, '39.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(40, '40.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(41, '41.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(42, '42.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(43, '43.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(44, '44.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(45, '45.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(46, '46.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(47, '47.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(48, '48.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(49, '49.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30'),
(50, '50.jpg', NULL, '2023-07-15 04:40:41', '2023-07-15 06:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double NOT NULL,
  `debt` double NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`id`, `user_id`, `total_price`, `debt`, `note`, `created_at`, `updated_at`) VALUES
(1, 4, 19075000000, 0, 'lan 1', '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(2, 1, 2000000000, 2000000000, 'lan 2', '2023-11-15 04:11:09', '2023-11-15 04:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `import_details`
--

CREATE TABLE `import_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `import_details`
--

INSERT INTO `import_details` (`id`, `import_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 20000000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(2, 1, 2, 100, 30000000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(3, 1, 3, 100, 100000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(4, 1, 4, 100, 200000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(5, 1, 5, 100, 50000000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(6, 1, 6, 100, 25000000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(7, 1, 7, 100, 100000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(8, 1, 8, 100, 50000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(9, 1, 9, 100, 300000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(10, 1, 10, 100, 25000000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(11, 1, 11, 100, 30000000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(12, 1, 12, 100, 10000000, '2023-11-15 04:07:28', '2023-11-15 04:07:28'),
(13, 2, 1, 100, 20000000, '2023-11-15 04:11:09', '2023-11-15 04:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cusId` bigint(20) UNSIGNED NOT NULL,
  `discountId` bigint(20) UNSIGNED DEFAULT NULL,
  `totalPrice` double NOT NULL,
  `debt` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `payment` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cusId`, `discountId`, `totalPrice`, `debt`, `status`, `payment`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 35350000, 35350000, 2, 0, '2023-11-15 05:10:06', '2023-11-18 06:05:54'),
(2, 2, 1, 280000, 0, 4, 0, '2023-11-26 03:44:09', '2023-11-26 04:05:17'),
(3, 3, 2, 240000, 240000, 2, 0, '2023-11-26 04:17:44', '2023-11-26 04:21:58'),
(4, 4, NULL, 60000000, 60000000, 1, 0, '2023-12-10 04:40:11', '2023-12-10 04:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_customers`
--

CREATE TABLE `order_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_customers`
--

INSERT INTO `order_customers` (`id`, `userId`, `name`, `phone`, `address`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nguyễn Văn A', '01234567878', '123, abc', 'bỏ góc cây, cách 2m về phía bên phải tiền nằm dưới cục đá', '2023-11-15 05:10:06', '2023-11-18 06:05:54'),
(2, 1, 'Admin', '01234567878', '123, abc', 'Chỉ giao buổi sáng nha', '2023-11-26 03:44:09', '2023-11-26 04:05:17'),
(3, 1, 'Admin', '01234567878', '123,abc', NULL, '2023-11-26 04:17:44', '2023-11-26 04:21:58'),
(4, 1, 'Admin', '01234567878', '123 abc', NULL, '2023-12-10 04:40:11', '2023-12-10 04:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderId` bigint(20) UNSIGNED NOT NULL,
  `proId` bigint(20) UNSIGNED NOT NULL,
  `qtyBuy` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `proId`, `qtyBuy`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 1, 35000000, '2023-11-15 05:10:06', '2023-11-15 05:10:06'),
(2, 1, 9, 1, 350000, '2023-11-15 05:10:06', '2023-11-15 05:10:06'),
(3, 2, 7, 2, 150000, '2023-11-26 03:44:09', '2023-11-26 03:44:09'),
(4, 3, 4, 1, 250000, '2023-11-26 04:17:44', '2023-11-26 04:17:44'),
(5, 4, 10, 2, 30000000, '2023-12-10 04:40:11', '2023-12-10 04:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `key_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `parent_id`, `key_code`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'Tổng quan', NULL, NULL, '2023-11-16 10:17:52', '2023-11-16 10:17:52'),
(2, 'list', 'list', 1, 'list_dashboard', '2023-11-16 10:17:52', '2023-11-16 10:17:52'),
(3, 'add', 'add', 1, 'add_dashboard', '2023-11-16 10:17:52', '2023-11-16 10:17:52'),
(4, 'edit', 'edit', 1, 'edit_dashboard', '2023-11-16 10:17:52', '2023-11-16 10:17:52'),
(5, 'delete', 'delete', 1, 'delete_dashboard', '2023-11-16 10:17:52', '2023-11-16 10:17:52'),
(6, 'category', 'Thể loại', NULL, NULL, '2023-11-16 10:17:57', '2023-11-16 10:17:57'),
(7, 'list', 'list', 6, 'list_category', '2023-11-16 10:17:57', '2023-11-16 10:17:57'),
(8, 'add', 'add', 6, 'add_category', '2023-11-16 10:17:57', '2023-11-16 10:17:57'),
(9, 'edit', 'edit', 6, 'edit_category', '2023-11-16 10:17:57', '2023-11-16 10:17:57'),
(10, 'delete', 'delete', 6, 'delete_category', '2023-11-16 10:17:57', '2023-11-16 10:17:57'),
(11, 'product', 'Sản phẩm', NULL, NULL, '2023-11-16 10:18:00', '2023-11-16 10:18:00'),
(12, 'list', 'list', 11, 'list_product', '2023-11-16 10:18:00', '2023-11-16 10:18:00'),
(13, 'add', 'add', 11, 'add_product', '2023-11-16 10:18:00', '2023-11-16 10:18:00'),
(14, 'edit', 'edit', 11, 'edit_product', '2023-11-16 10:18:00', '2023-11-16 10:18:00'),
(15, 'delete', 'delete', 11, 'delete_product', '2023-11-16 10:18:00', '2023-11-16 10:18:00'),
(16, 'discount', 'Mã giảm giá', NULL, NULL, '2023-11-16 10:18:13', '2023-11-16 10:18:13'),
(17, 'list', 'list', 16, 'list_discount', '2023-11-16 10:18:13', '2023-11-16 10:18:13'),
(18, 'add', 'add', 16, 'add_discount', '2023-11-16 10:18:13', '2023-11-16 10:18:13'),
(19, 'edit', 'edit', 16, 'edit_discount', '2023-11-16 10:18:13', '2023-11-16 10:18:13'),
(20, 'delete', 'delete', 16, 'delete_discount', '2023-11-16 10:18:13', '2023-11-16 10:18:13'),
(21, 'slider', 'Slider', NULL, NULL, '2023-11-16 10:18:17', '2023-11-16 10:18:17'),
(22, 'list', 'list', 21, 'list_slider', '2023-11-16 10:18:18', '2023-11-16 10:18:18'),
(23, 'add', 'add', 21, 'add_slider', '2023-11-16 10:18:18', '2023-11-16 10:18:18'),
(24, 'edit', 'edit', 21, 'edit_slider', '2023-11-16 10:18:18', '2023-11-16 10:18:18'),
(25, 'delete', 'delete', 21, 'delete_slider', '2023-11-16 10:18:18', '2023-11-16 10:18:18'),
(26, 'user', 'Tài khoản', NULL, NULL, '2023-11-16 10:18:22', '2023-11-16 10:18:22'),
(27, 'list', 'list', 26, 'list_user', '2023-11-16 10:18:22', '2023-11-16 10:18:22'),
(28, 'add', 'add', 26, 'add_user', '2023-11-16 10:18:22', '2023-11-16 10:18:22'),
(29, 'edit', 'edit', 26, 'edit_user', '2023-11-16 10:18:22', '2023-11-16 10:18:22'),
(30, 'delete', 'delete', 26, 'delete_user', '2023-11-16 10:18:22', '2023-11-16 10:18:22'),
(31, 'role', 'Tài khoản (Phân Quyền)', NULL, NULL, '2023-11-16 10:18:38', '2023-11-16 10:18:38'),
(32, 'list', 'list', 31, 'list_role', '2023-11-16 10:18:38', '2023-11-16 10:18:38'),
(33, 'add', 'add', 31, 'add_role', '2023-11-16 10:18:38', '2023-11-16 10:18:38'),
(34, 'edit', 'edit', 31, 'edit_role', '2023-11-16 10:18:38', '2023-11-16 10:18:38'),
(35, 'delete', 'delete', 31, 'delete_role', '2023-11-16 10:18:38', '2023-11-16 10:18:38'),
(36, 'post', 'Bài Viết', NULL, NULL, '2023-11-16 10:18:43', '2023-11-16 10:18:43'),
(37, 'list', 'list', 36, 'list_post', '2023-11-16 10:18:43', '2023-11-16 10:18:43'),
(38, 'add', 'add', 36, 'add_post', '2023-11-16 10:18:43', '2023-11-16 10:18:43'),
(39, 'edit', 'edit', 36, 'edit_post', '2023-11-16 10:18:43', '2023-11-16 10:18:43'),
(40, 'delete', 'delete', 36, 'delete_post', '2023-11-16 10:18:43', '2023-11-16 10:18:43'),
(41, 'type', 'Thể Loại Bài Viết', NULL, NULL, '2023-11-16 10:18:46', '2023-11-16 10:18:46'),
(42, 'list', 'list', 41, 'list_type', '2023-11-16 10:18:46', '2023-11-16 10:18:46'),
(43, 'add', 'add', 41, 'add_type', '2023-11-16 10:18:46', '2023-11-16 10:18:46'),
(44, 'edit', 'edit', 41, 'edit_type', '2023-11-16 10:18:46', '2023-11-16 10:18:46'),
(45, 'delete', 'delete', 41, 'delete_type', '2023-11-16 10:18:46', '2023-11-16 10:18:46'),
(46, 'order', 'Đơn hàng', NULL, NULL, '2023-11-16 10:20:41', '2023-11-16 10:20:41'),
(47, 'list', 'list', 46, 'list_order', '2023-11-16 10:20:41', '2023-11-16 10:20:41'),
(48, 'add', 'add', 46, 'add_order', '2023-11-16 10:20:41', '2023-11-16 10:20:41'),
(49, 'edit', 'edit', 46, 'edit_order', '2023-11-16 10:20:41', '2023-11-16 10:20:41'),
(50, 'delete', 'delete', 46, 'delete_order', '2023-11-16 10:20:41', '2023-11-16 10:20:41'),
(51, 'pdf', 'pdf', 46, 'pdf_order', '2023-11-16 10:20:41', '2023-11-16 10:20:41'),
(52, 'import', 'Phiếu Nhập', NULL, NULL, '2023-11-16 10:20:45', '2023-11-16 10:20:45'),
(53, 'list', 'list', 52, 'list_import', '2023-11-16 10:20:45', '2023-11-16 10:20:45'),
(54, 'add', 'add', 52, 'add_import', '2023-11-16 10:20:45', '2023-11-16 10:20:45'),
(55, 'edit', 'edit', 52, 'edit_import', '2023-11-16 10:20:45', '2023-11-16 10:20:45'),
(56, 'delete', 'delete', 52, 'delete_import', '2023-11-16 10:20:45', '2023-11-16 10:20:45'),
(57, 'pdf', 'pdf', 52, 'pdf_import', '2023-11-16 10:20:45', '2023-11-16 10:20:45'),
(58, 'tag', 'Tags', NULL, NULL, '2023-11-26 03:05:02', '2023-11-26 03:05:02'),
(59, 'list', 'list', 58, 'list_tag', '2023-11-26 03:05:02', '2023-11-26 03:05:02'),
(60, 'add', 'add', 58, 'add_tag', '2023-11-26 03:05:02', '2023-11-26 03:05:02'),
(61, 'edit', 'edit', 58, 'edit_tag', '2023-11-26 03:05:02', '2023-11-26 03:05:02'),
(62, 'delete', 'delete', 58, 'delete_tag', '2023-11-26 03:05:02', '2023-11-26 03:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(2, 1, 3, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(3, 1, 4, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(4, 1, 5, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(5, 1, 7, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(6, 1, 8, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(7, 1, 9, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(8, 1, 10, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(9, 1, 12, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(10, 1, 13, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(11, 1, 14, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(12, 1, 15, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(13, 1, 17, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(14, 1, 18, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(15, 1, 19, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(16, 1, 20, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(17, 1, 22, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(18, 1, 23, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(19, 1, 24, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(20, 1, 25, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(21, 1, 27, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(22, 1, 28, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(23, 1, 29, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(24, 1, 30, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(25, 1, 32, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(26, 1, 33, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(27, 1, 34, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(28, 1, 35, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(29, 1, 37, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(30, 1, 38, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(31, 1, 39, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(32, 1, 40, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(33, 1, 42, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(34, 1, 43, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(35, 1, 44, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(36, 1, 45, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(37, 1, 47, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(38, 1, 48, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(39, 1, 49, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(40, 1, 50, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(41, 1, 51, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(42, 1, 53, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(43, 1, 54, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(44, 1, 55, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(45, 1, 56, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(46, 1, 57, '2023-11-16 10:22:43', '2023-11-16 10:22:43'),
(47, 3, 2, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(48, 3, 4, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(49, 3, 5, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(50, 3, 7, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(51, 3, 8, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(52, 3, 9, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(53, 3, 10, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(54, 3, 12, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(55, 3, 13, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(56, 3, 14, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(57, 3, 15, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(58, 3, 17, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(59, 3, 18, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(60, 3, 19, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(61, 3, 20, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(62, 3, 22, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(63, 3, 23, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(64, 3, 24, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(65, 3, 25, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(66, 3, 27, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(67, 3, 28, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(68, 3, 29, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(69, 3, 30, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(70, 3, 32, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(71, 3, 33, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(72, 3, 34, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(73, 3, 35, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(74, 3, 37, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(75, 3, 38, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(76, 3, 39, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(77, 3, 40, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(78, 3, 42, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(79, 3, 43, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(80, 3, 44, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(81, 3, 45, '2023-11-16 10:24:32', '2023-11-16 10:24:32'),
(82, 4, 12, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(83, 4, 13, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(84, 4, 14, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(85, 4, 15, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(86, 4, 17, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(87, 4, 18, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(88, 4, 19, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(89, 4, 20, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(90, 4, 22, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(91, 4, 23, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(92, 4, 24, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(93, 4, 25, '2023-11-16 10:24:57', '2023-11-16 10:24:57'),
(94, 1, 59, '2023-11-26 03:05:24', '2023-11-26 03:05:24'),
(96, 1, 61, '2023-11-26 03:05:24', '2023-11-26 03:05:24'),
(97, 1, 62, '2023-11-26 03:05:24', '2023-11-26 03:05:24'),
(98, 1, 60, '2023-11-26 03:10:10', '2023-11-26 03:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `screen` float NOT NULL,
  `system` varchar(255) NOT NULL,
  `rear_camera` varchar(255) NOT NULL,
  `front_camera` varchar(255) NOT NULL,
  `chip` varchar(255) NOT NULL,
  `ram` int(11) NOT NULL,
  `rom` int(11) NOT NULL,
  `sim` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `screen`, `system`, `rear_camera`, `front_camera`, `chip`, `ram`, `rom`, `sim`, `pin`, `created_at`, `updated_at`) VALUES
(1, 6.7, 'Android 12', 'Chính 108 MP & Phụ 12 MP, 5 MP, 5 MP', '32 MP', 'Snapdragon 778G 5G', 8, 128, '2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 5G', '5000 mAh,25 W', '2023-07-07 09:49:57', '2023-07-07 10:38:00'),
(2, 6.4, 'Android 13', 'Chính 50 MP & Phụ 12 MP, 5 MP', '32 MP', 'Exynos 1380 8 nhân', 8, 256, '2 Nano SIMHỗ trợ 5G', '5000 mAh,25 W', '2023-07-07 09:53:58', '2023-07-07 09:53:58'),
(3, 6.7, 'Android 12', 'Chính 108 MP & Phụ 12 MP, 5 MP, 5 MP', '32 MP', 'Snapdragon 778G 5G', 8, 256, '2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 5G', '5000 mAh,25 W', '2023-07-15 04:12:53', '2023-07-15 04:12:53'),
(4, 6.4, 'Android 13', 'Chính 50 MP & Phụ 12 MP, 5 MP', '32 MP', 'Exynos 1380 8 nhân', 8, 128, '2 Nano SIMHỗ trợ 5G', '5000 mAh,25 W', '2023-07-15 04:14:44', '2023-07-15 04:14:44'),
(5, 7.6, 'Android 12', 'Chính 50 MP & Phụ 12 MP, 10 MP', '10 MP & 4 MP', 'Snapdragon 8+ Gen 1', 32, 256, '1 Nano SIM & 1 eSIMHỗ trợ 5G', '4400 mAh,25 W', '2023-07-15 04:30:28', '2023-07-15 04:30:28'),
(6, 6.8, 'Android 13', 'Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP', '12 MP', 'Snapdragon 8 Gen 2 8 nhân', 16, 1, '2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G', '5000 mAh,45 W', '2023-07-15 04:38:19', '2023-07-15 04:38:19'),
(7, 6.7, 'Android 12', 'Chính 50 MP & Phụ 50 MP, 13 MP', '32 MP', 'Snapdragon 8 Gen 1', 8, 256, '2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G', '5000 mAh, \n 80 W', '2023-07-15 04:40:41', '2023-07-15 04:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `public_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `public_id`, `user_id`, `type_id`, `name`, `slug`, `short_desc`, `desc`, `image`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HOnWeCRIiyXcQu9W', 1, 2, 'Trào lưu \'tự chụp ảnh bằng AI\'', 'trao-luu-tu-chup-anh-bang-ai', 'Thay vì bỏ tiền thuê hoặc nhờ ai đó chụp ảnh, nhiều người tìm đến ứng dụng AI cho phép họ \"tự chụp\" từ ảnh chân dung đến du lịch.', '<div class=\"sidebar-1\">\r\n<div class=\"header-content width_common\">\r\n<p>Thay v&igrave; bỏ tiền thu&ecirc; hoặc nhờ ai đ&oacute; chụp ảnh, nhiều người t&igrave;m đến ứng dụng AI cho ph&eacute;p họ &quot;tự chụp&quot; từ ảnh ch&acirc;n dung đến du lịch.</p>\r\n</div>\r\n\r\n<p>Theo <em>Petapixel</em>, giới trẻ đang d&ugrave;ng Remini - ứng dụng chỉnh sửa AI để biến ảnh selfie sẵn c&oacute; của m&igrave;nh th&agrave;nh những tấm h&igrave;nh ch&acirc;n dung chuy&ecirc;n nghiệp. Một số thậm ch&iacute; đặt c&acirc;u hỏi tại sao họ phải trả tiền cho nhiếp ảnh gia khi đ&atilde; c&oacute; một &quot;thợ chụp ảnh trong t&uacute;i&quot;.</p>\r\n\r\n<p><span style=\"color:#000000\">Ảnh chụp từ smartphone được AI biến th&agrave;nh ảnh chuy&ecirc;n nghiệp đang lan truyền khắp mạng x&atilde; hội. </span>Hashtag #Remini hiện c&oacute; hơn 1,4 tỷ lượt xem tr&ecirc;n TikTok với h&agrave;ng ngh&igrave;n người d&ugrave;ng.</p>\r\n\r\n<div class=\"action_thumb flexbox\" style=\"display:flex; opacity:1; transform-origin:0px 0px; transform:scale(1, 1); z-index:9\">&nbsp;</div>\r\n\r\n<div class=\"fig-picture\" style=\"padding-bottom:66.666666666667%; position:relative\"><!--[if IE 9]><video style=\"display: none;\"><![endif]--><!--[if IE 9]></video><![endif]--><img alt=\"Ứng dụng Remini cho phép người dùng tạo ảnh chụp chuyên nghiệp bằng AI hoặc khôi phục ảnh cũ, ảnh bị mờ trở nên sắc nét. Ảnh: Khương Nha\" class=\"lazied lazy\" src=\"https://i1-sohoa.vnecdn.net/2023/07/22/Remini3-7141-1690001353.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_vKD0vbveKgk0W_LATf0Ew\" style=\"left:0; position:absolute; width:100%\" /></div>\r\n\r\n<p>Ứng dụng Remini cho ph&eacute;p tạo ảnh chuy&ecirc;n nghiệp bằng AI hoặc kh&ocirc;i phục ảnh cũ mờ trở n&ecirc;n sắc n&eacute;t. Ảnh: <em>Khương Nha</em></p>\r\n\r\n<p>Remini hoạt động tương tự <a href=\"https://vnexpress.net/so-hoa/lensa-ai-trieu-usd-dang-day-song-cong-dong-4546557.html\" rel=\"dofollow\">Lensa AI</a> từng l&agrave;m mưa l&agrave;m gi&oacute; năm 2022. Ứng dụng bắt đầu thu h&uacute;t sự ch&uacute; &yacute; sau khi t&agrave;i khoản TikTok Graces Place chia sẻ c&aacute;ch tạo ra loạt ảnh ch&acirc;n dung cho hồ sơ Linkedin chỉ với v&agrave;i thao t&aacute;c tr&ecirc;n điện thoại. Video thu h&uacute;t 42,2 triệu lượt xem sau 6 ng&agrave;y đăng.</p>\r\n\r\n<p>Những ng&agrave;y qua, Remini trở n&ecirc;n phổ biến khắp mạng x&atilde; hội. Tại Mỹ, ứng dụng vượt qua sức h&uacute;t của mạng x&atilde; hội <a href=\"https://vnexpress.net/chu-de/threads-6591\" rel=\"dofollow\">Threads</a> để vươn l&ecirc;n vị tr&iacute; số một tr&ecirc;n bảng xếp hạng App Store. Tại Việt Nam, Remini cũng leo l&ecirc;n top 6 ứng dụng chỉnh sửa ảnh được tải nhiều nhất.</p>\r\n\r\n<p>So với Lensa AI, Remni y&ecirc;u cầu &iacute;t th&ocirc;ng tin ri&ecirc;ng tư của người d&ugrave;ng hơn. Trong phần c&agrave;i đặt, ứng dụng cam kết x&oacute;a vĩnh viễn ảnh của người d&ugrave;ng khỏi m&aacute;y chủ trong v&ograve;ng 24 giờ v&agrave; kh&ocirc;ng sử dụng cho mục đ&iacute;ch kh&aacute;c. Nh&agrave; ph&aacute;t triển cho ph&eacute;p t&ugrave;y chọn nhiều mức độ chia sẻ quyền ri&ecirc;ng tư.</p>\r\n\r\n<div class=\"action_thumb flexbox\" style=\"display:none; opacity:1; transform-origin:0px 0px; transform:scale(1, 1); z-index:9\">&nbsp;</div>\r\n\r\n<div class=\"fig-picture\" style=\"padding-bottom:52.5%; position:relative\"><!--[if IE 9]><video style=\"display: none;\"><![endif]--><!--[if IE 9]></video><![endif]--><img alt=\"Từ ảnh selfie (giữa), Remini có thể tạo ảnh chân dung chuyên nghiệp. Nguồn: Graces Place\" class=\"lazied lazy\" src=\"https://i1-sohoa.vnecdn.net/2023/07/22/AI-8918-1690004002.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Z2wTopduIdNexqKuZ-8Rog\" style=\"left:0; position:absolute; width:100%\" /></div>\r\n\r\n<p>Từ ảnh selfie (giữa), Remini c&oacute; thể tạo ảnh ch&acirc;n dung chuy&ecirc;n nghiệp. Nguồn:<em> Graces Place</em></p>\r\n\r\n<div style=\"text-align:center\">\r\n<p style=\"text-align:left\">Giao diện của Remini đơn giản, dễ d&ugrave;ng với ba t&iacute;nh năng: Tạo ảnh AI, Tạo ảnh đại diện AI v&agrave; N&acirc;ng cao. Trong phần Tạo ảnh AI, người d&ugrave;ng cần tải l&ecirc;n 7 ảnh ch&acirc;n dung, kh&ocirc;ng cần r&otilde; mặt, chất lượng ảnh c&oacute; thể mờ hoặc thiếu s&aacute;ng. Sau đ&oacute; t&ugrave;y v&agrave;o lựa chọn giới t&iacute;nh, ứng dụng sẽ gợi &yacute; h&agrave;ng trăm khung h&igrave;nh mẫu với đủ kiểu d&aacute;ng từ trẻ đến gi&agrave;, đa dạng ng&agrave;nh nghề, quốc gia, m&agrave;u da... v&agrave; trả về 6 kết quả. Đ&acirc;y l&agrave; điểm nổi bật của Remini so với c&aacute;c ứng dụng ảnh AI kh&aacute;c. Người d&ugrave;ng c&oacute; thể chọn bản ưng &yacute; nhất với thay đổi về kiểu d&aacute;ng, quần &aacute;o, phong c&aacute;ch...</p>\r\n</div>\r\n\r\n<p>Tương tự với mục Tạo ảnh đại diện, người d&ugrave;ng c&oacute; thể tải l&ecirc;n ảnh tự chụp với nhiều g&oacute;c mặt, biểu cảm, khung nền. Ứng dụng cũng nhận ảnh nh&oacute;m, ảnh đeo k&iacute;nh r&acirc;m, kh&ocirc;ng r&otilde; mặt, thậm ch&iacute; ảnh động vật. Sau v&agrave;i chục gi&acirc;y xử l&yacute;, Remini cho ra bộ ảnh ch&acirc;n dung chuy&ecirc;n nghiệp giống như trong studio.</p>\r\n\r\n<p>Phần t&ugrave;y chọn n&acirc;ng cao hỗ trợ tạo ảnh hoặc video AI theo t&ugrave;y chọn ri&ecirc;ng, kh&oacute; ph&acirc;n biệt được thật giả. Một số TikToker cho biết họ d&ugrave;ng AI để cải thiện chất lượng video của m&igrave;nh, như chỉnh sửa bố cục, &aacute;nh s&aacute;ng, l&agrave;m đẹp, thay đổi ph&ocirc;ng nền.</p>\r\n\r\n<div class=\"action_thumb flexbox\" style=\"display:none; opacity:1; transform-origin:0px 0px; transform:scale(1, 1); z-index:9\">&nbsp;</div>\r\n\r\n<div class=\"fig-picture\" style=\"padding-bottom:69.375619425173%; position:relative\"><!--[if IE 9]><video style=\"display: none;\"><![endif]--><!--[if IE 9]></video><![endif]--><img alt=\"Remini cho phép dùng thử trong ba ngày, sau đó tính phí 239 nghìn đồng mỗi tuần. Ảnh: Khương Nha\" class=\"lazied lazy\" src=\"https://i1-sohoa.vnecdn.net/2023/07/22/remini2-1690000421-7659-1690001354.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=xTvbGCRLntfH0qG9EIWVCw\" style=\"left:0; position:absolute; width:100%\" /></div>\r\n\r\n<p>Remini cho ph&eacute;p d&ugrave;ng thử trong ba ng&agrave;y, sau đ&oacute; t&iacute;nh ph&iacute; 239 ngh&igrave;n đồng mỗi tuần. Ảnh: <em>Khương Nha</em></p>\r\n\r\n<p>Nhiều người cho rằng m&aacute;y m&oacute;c kh&ocirc;ng thể thay thế được những gi&aacute; trị ri&ecirc;ng của nhiếp ảnh gia, tuy nhi&ecirc;n sự xuất hiện của AI cũng sẽ khiến c&aacute;c thợ ảnh phải xem x&eacute;t lại mức gi&aacute; qu&aacute; cao cho những bộ ch&acirc;n dung của họ.</p>\r\n\r\n<p>Mollie Danielle, t&agrave;i khoản c&oacute; 9,7 triệu lượt xem tr&ecirc;n TikTok, n&oacute;i với<em> Insider</em>: &quot;AI thực sự khiến một người bất kỳ tr&ocirc;ng như người T&acirc;y Ban Nha. T&ocirc;i đ&atilde; ph&aacute;t cuồng về ứng dụng nhưng thi thoảng, ảnh tạo ra kh&ocirc;ng thật, nhiều chi tiết bị b&oacute;p m&eacute;o. Sau &iacute;t ng&agrave;y d&ugrave;ng thử, t&ocirc;i đ&atilde; x&oacute;a ứng dụng&quot;.</p>\r\n\r\n<p>Một trong những phản hồi nhiều nhất của người d&ugrave;ng về Remini l&agrave; AI c&oacute; xu hướng khiến họ tr&ocirc;ng gầy hơn. Một số cho rằng c&aacute;c t&aacute;c phẩm n&agrave;y kh&ocirc;ng thật, nịnh mắt trong khi số kh&aacute;c n&oacute;i họ c&oacute; th&ecirc;m động lực giảm c&acirc;n v&igrave; thấy m&igrave;nh trở n&ecirc;n xinh đẹp khi thon gọn.</p>\r\n\r\n<p>Remini được c&ocirc;ng ty c&ocirc;ng nghệ Bending Spoons c&oacute; trụ sở tại Milan ra mắt năm 2019. Ban đầu, c&ocirc;ng ty cung cấp dịch vụ l&agrave;m r&otilde; n&eacute;t ảnh độ ph&acirc;n giải thấp, phục hồi ảnh cũ. Đến 2022, họ t&iacute;ch hợp th&ecirc;m <a href=\"https://vnexpress.net/chu-de/tri-tue-nhan-tao-ai-1980\" rel=\"dofollow\">AI</a> v&agrave;o ứng dụng. C&ocirc;ng ty thu h&uacute;t ch&uacute; &yacute; với ứng dụng tạo ảnh thời thơ ấu. Ứng dụng cho d&ugrave;ng thử miễn ph&iacute;, sau đ&oacute; thu ph&iacute; theo tuần hoặc theo năm. Tại Việt Nam, người d&ugrave;ng c&oacute; thể trả 249 ngh&igrave;n đồng để d&ugrave;ng trong một tuần hoặc 1,9 triệu đồng cho một năm.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n</div>', '64bfaa2bb7d39_1690282539.png', 22, 0, '2023-06-19 09:09:22', '2023-11-25 06:32:13'),
(2, 'mm1tt0XCZRnus0v0', 1, 2, 'iPhone 15 Pro gặp vấn đề về màn hình', 'iphone-15-pro-gap-van-de-ve-man-hinh', 'Apple được cho là đang gặp khó khăn trong sản xuất màn hình iPhone 15 Pro, có thể khiến sản lượng bị hạn chế hoặc ảnh hưởng đến thời gian ra mắt.', 'iPhone 15 Pro gặp vấn đề về m&agrave;n h&igrave;nh', '64bfaa36d3898_1690282550.jpg', 109, 0, '2023-07-25 02:38:28', '2023-12-09 06:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-11-25 04:08:30', '2023-11-25 04:08:30'),
(2, 1, 2, '2023-11-25 04:08:49', '2023-11-25 04:08:49'),
(3, 2, 2, '2023-11-25 04:08:49', '2023-11-25 04:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cateId` bigint(20) UNSIGNED NOT NULL,
  `phone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `accessories_id` bigint(20) UNSIGNED DEFAULT NULL,
  `galleryId` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `priceOld` double NOT NULL DEFAULT 0,
  `price_import` double NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `cateId`, `phone_id`, `accessories_id`, `galleryId`, `price`, `priceOld`, `price_import`, `description`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy A73 128GB', 'samsung-galaxy-a73-128gb', 1, 1, NULL, 1, 25000000, 0, 20000000, 'Samsung Galaxy A73 5G 128GB được xem là sản phẩm nổi bật nhất dòng Galaxy A 2022 mới ra mắt, máy trang bị bộ thông số kỹ thuật ấn tượng về phần hiệu năng, chất lượng màn hình và nổi bật nhất trong số đó là camera khi nó đem lại bức ảnh có độ phân giải lên đến 108 MP.', 200, 0, '2023-07-07 09:49:57', '2023-11-15 04:37:31'),
(2, 'Samsung Galaxy A54 256GB', 'samsung-galaxy-a54-256gb', 2, 2, NULL, 2, 35000000, 0, 30000000, 'Samsung Galaxy A54 5G là mẫu điện thoại thông minh trong phân khúc tầm trung vừa được hãng cho ra mắt vào tháng 03/2023, máy trang bị màn hình Super AMOLED cùng con chip Exynos 1380 tiên tiến do chính Samsung sản xuất.', 100, 0, '2023-07-07 09:53:58', '2023-11-15 04:37:53'),
(3, 'Pin Sạc Dự Phòng Polymer', 'pin-sac-du-phong-polymer', 13, NULL, 1, 3, 150000, 0, 100000, 'AVA+ JP208 sạc lại nhiều lần cho các thiết bị di động với dung lượng 10.000 mAh, hiệu suất sạc 64%', 100, 0, '2023-07-07 10:28:33', '2023-11-15 04:07:28'),
(4, 'Adapter Samsung EP-TA800N', 'adapter-samsung-ep-ta800n', 13, NULL, 2, 4, 250000, 0, 200000, 'Nhỏ gọn, tiện mang theo đến bất kỳ nơi nào \r\nĐường nét adapter mềm mại, màu trắng sạch đẹp, màu đen sang trọng, duy trì độ mới lâu, cầm trên tay cực thoải mái, giúp bạn thao tác khi sạc cũng như khi cất giữ, dịch chuyển sản phẩm linh hoạt, nhanh nhẹn.', 99, 0, '2023-07-07 10:37:13', '2023-11-26 04:17:44'),
(5, 'Samsung Galaxy A73 256GB', 'samsung-galaxy-a73-256gb', 1, 3, NULL, 5, 52000000, 0, 50000000, 'Samsung Galaxy A73 5G 128GB được xem là sản phẩm nổi bật nhất dòng Galaxy A 2022 mới ra mắt, máy trang bị bộ thông số kỹ thuật ấn tượng về phần hiệu năng, chất lượng màn hình và nổi bật nhất trong số đó là camera khi nó đem lại bức ảnh có độ phân giải lên đến 108 MP.', 100, 0, '2023-07-15 04:12:53', '2023-11-15 04:39:52'),
(6, 'Samsung Galaxy A54 128GB', 'samsung-galaxy-a54-128gb', 13, 4, NULL, 6, 28000000, 0, 25000000, 'Samsung Galaxy A54 5G là mẫu điện thoại thông minh trong phân khúc tầm trung vừa được hãng cho ra mắt vào tháng 03/2023, máy trang bị màn hình Super AMOLED cùng con chip Exynos 1380 tiên tiến do chính Samsung sản xuất.', 100, 0, '2023-07-15 04:14:44', '2023-11-15 04:40:05'),
(7, 'Cáp Type C 0.2m Xmobile TC200B', 'cap-type-c-02m-xmobile-tc200b', 16, NULL, 3, 7, 150000, 0, 100000, 'Kiểu dáng đơn giản, dây dài 0.2 m\r\nKết cấu gọn gàng, chất liệu dây mềm mại, kháng vỡ, uốn cong dễ dàng, có thể cuộn lại và cho vào túi xách, balo để mang đi làm, đi học, du lịch mà không lo chiếm nhiều diện tích.', 98, 0, '2023-07-15 04:19:37', '2023-11-26 03:44:09'),
(8, 'Gậy Chụp Ảnh Mini Cosano CW1', 'gay-chup-anh-mini-cosano-cw1', 16, NULL, 4, 8, 60000, 0, 50000, 'Gậy chụp ảnh Mini Cosano CW1 thiết kế nhỏ gọn cùng màu sắc trẻ trung, dễ dàng kéo dài đến 60 cm thoải mái chụp hình, lấy được nhiều góc, nhiều cảnh đẹp hoặc thu gọn lại chỉ với độ dài 16 cm cho người dùng dễ dàng bỏ vào túi xách, balo mang theo khi đi chơi, đi du lịch.', 100, 0, '2023-07-15 04:20:55', '2023-11-15 04:40:54'),
(9, 'Pin Sạc Dự Phòng Polymer', 'pin-sac-du-phong-polymer', 16, NULL, 5, 9, 350000, 0, 300000, 'Nguồn tích trữ năng lượng dồi dào cho bạn hoàn toàn yên tâm khi khám phá các vùng đất mới hoặc công tác ở những nơi thiếu nguồn điện, sạc dự phòng sẽ luôn đảm bảo điện thoại có đủ năng lượng để bạn xử lý công việc, chụp ảnh, quay video khi cần.', 99, 0, '2023-07-15 04:27:28', '2023-11-15 05:10:06'),
(10, 'Samsung Galaxy Z Fold4 256GB', 'samsung-galaxy-z-fold4-256gb', 1, 5, NULL, 10, 30000000, 0, 25000000, 'Galaxy Z Fold4 (2022) ra mắt với ngoại hình gần như là không đổi khi so với Galaxy Z Fold3, nếu bạn chỉ nhìn bề ngoài thì bạn sẽ khó lòng phân biệt được 2 sản phẩm này. Máy vẫn sử dụng khung viền Armor Aluminum bền bỉ, mặt kính màn hình phụ là Corning Gorilla Glass Victus+, mặt kính màn hình chính là Ultra Thin Glass.', 98, 0, '2023-07-15 04:30:28', '2023-12-10 04:40:11'),
(11, 'Samsung Galaxy S23 Ultra 1TB', 'samsung-galaxy-s23-ultra-1tb', 1, 6, NULL, 11, 34000000, 35000000, 30000000, 'Mặt trước Galaxy S23 Ultra có thiết kế Infinity-O đặc trưng của điện thoại Galaxy dòng S từ trước cho đến nay, màn hình cũng được làm cong về hai cạnh bên mang đến cho người dùng trải nghiệm tốt hơn với không gian màn ảnh rộng trong tầm tay.', 99, 0, '2023-07-15 04:38:19', '2023-11-15 05:10:06'),
(12, 'OPPO Find X5 Pro 5G  256GB', 'oppo-find-x5-pro-5g-256gb', 1, 7, NULL, 12, 18000000, 0, 10000000, 'OPPO Find X5 Pro 5G có lẽ là cái tên sáng giá được xướng tên trong danh sách điện thoại có thiết kế ấn tượng trong năm 2022. Máy được hãng cho ra mắt với một diện mạo độc lạ chưa từng có, cùng với đó là những nâng cấp về chất lượng ở camera nhờ sự hợp tác với nhà sản xuất máy ảnh Hasselblad.', 100, 0, '2023-07-15 04:40:41', '2023-11-15 04:52:48'),
(13, 'Apple MacBook Pro 2023 512GB', 'apple-macbook-pro-2023-512gb', 15, NULL, NULL, 13, 25000000, 0, 22000000, 'The Apple MacBook Pro 2023 comes with the latest M2 chip, stunning Retina display, and up to 32GB of RAM, providing unparalleled performance for professionals and creatives.', 50, 0, '2023-07-15 05:00:00', '2023-11-15 05:00:00'),
(14, 'Sony PlayStation 6 Pro 1TB', 'sony-playstation-6-pro-1tb', 17, NULL, NULL, 14, 25000000, 0, 5500000, 'The Sony PlayStation 6 Pro offers cutting-edge gaming performance with 4K resolution, ray tracing, and ultra-fast SSD storage, delivering immersive gaming experiences like never before.', 100, 0, '2023-07-15 05:05:00', '2023-11-15 05:05:00'),
(15, 'Dell UltraSharp U4021QW 40-inch Monitor', 'dell-ultrasharp-u4021qw-40-inch-monitor', 18, NULL, NULL, 15, 8000000, 0, 7500000, 'The Dell UltraSharp U4021QW is a 40-inch curved monitor with 5K resolution, USB-C connectivity, and built-in KVM switch, providing an immersive and productive workspace for professionals.', 30, 0, '2023-07-15 05:10:00', '2023-11-15 05:10:00'),
(16, 'GoPro HERO 12 Black', 'gopro-hero-12-black', 19, NULL, NULL, 16, 4000000, 0, 3500000, 'The GoPro HERO 12 Black is a versatile action camera with 5K video recording, advanced stabilization, and a rugged waterproof design, perfect for capturing your adventures in stunning detail.', 80, 0, '2023-07-15 05:15:00', '2023-11-15 05:15:00'),
(17, 'LG OLED C3 65-inch 4K TV', 'lg-oled-c3-65-inch-4k-tv', 20, NULL, NULL, 17, 20000000, 0, 18000000, 'The LG OLED C3 is a premium 65-inch 4K TV with OLED technology, Dolby Vision IQ, and HDMI 2.1 connectivity, delivering breathtaking picture quality and immersive sound for a cinematic viewing experience.', 40, 0, '2023-07-15 05:20:00', '2023-11-15 05:20:00'),
(18, 'Razer BlackWidow V5 Mechanical Keyboard', 'razer-blackwidow-v5-mechanical-keyboard', 21, NULL, NULL, 18, 1500000, 0, 1200000, 'The Razer BlackWidow V5 is a premium mechanical keyboard with Razer Green switches, customizable RGB lighting, and durable construction, offering precision and comfort for gaming and typing.', 120, 0, '2023-07-15 05:25:00', '2023-11-15 05:25:00'),
(19, 'Samsung Odyssey G9 Ultrawide Gaming Monitor', 'samsung-odyssey-g9-ultrawide-gaming-monitor', 18, NULL, NULL, 19, 18000000, 0, 16000000, 'The Samsung Odyssey G9 is a 49-inch ultrawide gaming monitor with 240Hz refresh rate, QLED technology, and 1000R curvature, providing an immersive gaming experience with stunning visuals.', 60, 0, '2023-07-15 05:30:00', '2023-11-15 05:30:00'),
(20, 'Canon EOS R5 Mirrorless Camera', 'canon-eos-r5-mirrorless-camera', 22, NULL, NULL, 20, 12000000, 0, 10000000, 'The Canon EOS R5 is a high-performance mirrorless camera with 45MP full-frame sensor, 8K video recording, and advanced autofocus system, offering professional-grade imaging capabilities for photographers and videographers.', 70, 0, '2023-07-15 05:35:00', '2023-11-15 05:35:00'),
(21, 'Logitech G Pro X Superlight Wireless Gaming Mouse', 'logitech-g-pro-x-superlight-wireless-gaming-mouse', 23, NULL, NULL, 21, 2500000, 0, 2000000, 'The Logitech G Pro X Superlight is an ultra-lightweight wireless gaming mouse with HERO sensor, customizable RGB lighting, and long battery life, delivering precision and speed for competitive gaming.', 150, 0, '2023-07-15 05:40:00', '2023-11-15 05:40:00'),
(22, 'Microsoft Surface Pro 9 256GB', 'microsoft-surface-pro-9-256gb', 24, NULL, NULL, 22, 18000000, 0, 15000000, 'The Microsoft Surface Pro 9 is a versatile 2-in-1 laptop with Intel Core i7 processor, PixelSense display, and Surface Pen support, offering productivity and creativity in a sleek and portable design.', 90, 0, '2023-07-15 05:45:00', '2023-11-15 05:45:00'),
(23, 'Nvidia GeForce RTX 4090 Graphics Card', 'nvidia-geforce-rtx-4090-graphics-card', 24, NULL, NULL, 23, 10000000, 0, 8000000, 'The Nvidia GeForce RTX 4090 is a high-end graphics card with next-generation Ampere architecture, ray tracing, and DLSS technology, delivering unparalleled gaming performance and visual fidelity.', 50, 0, '2023-07-15 05:50:00', '2023-11-15 05:50:00'),
(24, 'Bose QuietComfort 45 Wireless Headphones', 'bose-quietcomfort-45-wireless-headphones', 14, NULL, NULL, 24, 2500000, 0, 2000000, 'The Bose QuietComfort 45 headphones offer industry-leading noise cancellation, balanced sound, and comfortable design, providing a peaceful listening experience in any environment.', 200, 0, '2023-07-15 05:55:00', '2023-11-15 05:55:00'),
(25, 'Asus ROG Strix Scar 17 Gaming Laptop', 'asus-rog-strix-scar-17-gaming-laptop', 15, NULL, NULL, 25, 35000000, 0, 30000000, 'The Asus ROG Strix Scar 17 is a powerful gaming laptop with AMD Ryzen 9 processor, Nvidia GeForce RTX 3080 graphics, and 360Hz display, offering competitive gaming performance in a portable package.', 80, 0, '2023-07-15 06:00:00', '2023-11-15 06:00:00'),
(26, 'Sony Alpha A7 IV Mirrorless Camera', 'sony-alpha-a7-iv-mirrorless-camera', 22, NULL, NULL, 26, 14000000, 0, 12000000, 'The Sony Alpha A7 IV is a versatile mirrorless camera with 33MP full-frame sensor, 4K video recording, and fast autofocus system, ideal for both photography and videography enthusiasts.', 100, 0, '2023-07-15 06:05:00', '2023-11-15 06:05:00'),
(27, 'Samsung CRG9 49-inch Ultrawide Gaming Monitor', 'samsung-crg9-49-inch-ultrawide-gaming-monitor', 18, NULL, NULL, 27, 22000000, 0, 20000000, 'The Samsung CRG9 is a 49-inch ultrawide gaming monitor with 120Hz refresh rate, HDR support, and QLED technology, providing an immersive gaming experience with stunning visuals and smooth gameplay.', 40, 0, '2023-07-15 06:10:00', '2023-11-15 06:10:00'),
(28, 'Apple AirPods Pro 2', 'apple-airpods-pro-2', 14, NULL, NULL, 28, 3000000, 0, 2500000, 'The Apple AirPods Pro 2 feature active noise cancellation, transparency mode, and customizable fit, offering immersive sound and all-day comfort for music and calls.', 150, 0, '2023-07-15 06:15:00', '2023-11-15 06:15:00'),
(29, 'Alienware Aurora R13 Gaming Desktop', 'alienware-aurora-r13-gaming-desktop', 20, NULL, NULL, 29, 40000000, 0, 35000000, 'The Alienware Aurora R13 is a high-performance gaming desktop with Intel Core i9 processor, Nvidia GeForce RTX 3090 graphics, and customizable RGB lighting, offering exceptional gaming experiences with uncompromising power.', 60, 0, '2023-07-15 06:20:00', '2023-11-15 06:20:00'),
(30, 'Fujifilm X-T4 Mirrorless Camera', 'fujifilm-x-t4-mirrorless-camera', 22, NULL, NULL, 30, 8000000, 0, 7000000, 'The Fujifilm X-T4 is a versatile mirrorless camera with 26MP APS-C sensor, 4K video recording, and in-body image stabilization, providing professional-level imaging performance for photographers and videographers.', 100, 0, '2023-07-15 06:25:00', '2023-11-15 06:25:00'),
(31, 'Corsair K70 RGB MK.2 Mechanical Gaming Keyboard', 'corsair-k70-rgb-mk2-mechanical-gaming-keyboard', 21, NULL, NULL, 31, 2000000, 0, 1700000, 'The Corsair K70 RGB MK.2 is a premium mechanical gaming keyboard with Cherry MX switches, customizable RGB lighting, and durable aluminum frame, offering responsive and accurate keystrokes for gaming and typing.', 120, 0, '2023-07-15 06:30:00', '2023-11-15 06:30:00'),
(32, 'HP Spectre x360 15-inch Laptop', 'hp-spectre-x360-15-inch-laptop', 15, NULL, NULL, 32, 28000000, 0, 25000000, 'The HP Spectre x360 is a premium convertible laptop with Intel Core i7 processor, 4K OLED display, and long battery life, providing versatility and performance for professionals on the go.', 70, 0, '2023-07-15 06:35:00', '2023-11-15 06:35:00'),
(33, 'Logitech G Pro X Gaming Headset', 'logitech-g-pro-x-gaming-headset', 14, NULL, NULL, 33, 1800000, 0, 1500000, 'The Logitech G Pro X gaming headset features Blue Voice microphone technology, premium leatherette earpads, and lightweight design, delivering clear communication and comfort for long gaming sessions.', 200, 0, '2023-07-15 06:40:00', '2023-11-15 06:40:00'),
(34, 'Acer Predator XB273K 27-inch 4K Gaming Monitor', 'acer-predator-xb273k-27-inch-4k-gaming-monitor', 18, NULL, NULL, 34, 10000000, 0, 9000000, 'The Acer Predator XB273K is a 27-inch 4K gaming monitor with 144Hz refresh rate, G-Sync support, and HDR400 certification, providing smooth gameplay and stunning visuals for immersive gaming experiences.', 80, 0, '2023-07-15 06:45:00', '2023-11-15 06:45:00'),
(35, 'Nintendo Switch Pro', 'nintendo-switch-pro', 17, NULL, NULL, 35, 5000000, 0, 4500000, 'The Nintendo Switch Pro offers enhanced performance, OLED display, and improved battery life, delivering a premium gaming experience for Nintendo enthusiasts both at home and on the go.', 100, 0, '2023-07-15 06:50:00', '2023-11-15 06:50:00'),
(36, 'DJI Mavic 3 Pro Drone', 'dji-mavic-3-pro-drone', 22, NULL, NULL, 36, 25000000, 0, 22000000, 'The DJI Mavic 3 Pro is a professional-grade drone with Hasselblad camera, 4/3-inch sensor, and up to 46 minutes of flight time, offering cinematic aerial photography and videography capabilities.', 50, 0, '2023-07-15 06:55:00', '2023-11-15 06:55:00'),
(37, 'Samsung QN900A Neo QLED 8K TV', 'samsung-qn900a-neo-qled-8k-tv', 20, NULL, NULL, 37, 40000000, 0, 35000000, 'The Samsung QN900A is a flagship 8K TV with Neo QLED technology, Object Tracking Sound Pro, and Infinity Screen, delivering stunning visuals and immersive sound for a cinematic viewing experience.', 30, 0, '2023-07-15 07:00:00', '2023-11-15 07:00:00'),
(38, 'SteelSeries Arctis Pro Wireless Headset', 'steelseries-arctis-pro-wireless-headset', 14, NULL, NULL, 38, 3500000, 0, 3000000, 'The SteelSeries Arctis Pro Wireless headset features dual-wireless technology, hi-res audio certification, and swappable batteries, providing premium sound and comfort for gaming and entertainment.', 120, 0, '2023-07-15 07:05:00', '2023-11-15 07:05:00'),
(39, 'Lenovo Legion 7i Gaming Laptop', 'lenovo-legion-7i-gaming-laptop', 15, NULL, NULL, 39, 32000000, 0, 28000000, 'The Lenovo Legion 7i is a high-performance gaming laptop with Intel Core i9 processor, Nvidia GeForce RTX 3070 graphics, and 240Hz display, offering desktop-class gaming performance in a portable form factor.', 80, 0, '2023-07-15 07:10:00', '2023-11-15 07:10:00'),
(40, 'Canon EOS-1D X Mark III DSLR Camera', 'canon-eos-1d-x-mark-iii-dslr-camera', 22, NULL, NULL, 40, 30000000, 0, 26000000, 'The Canon EOS-1D X Mark III is a flagship DSLR camera with 20.1MP full-frame sensor, 5.5K RAW video recording, and advanced autofocus system, offering unparalleled performance for professional photographers and videographers.', 50, 0, '2023-07-15 07:15:00', '2023-11-15 07:15:00'),
(41, 'Roku Ultra 2023 Streaming Media Player', 'roku-ultra-2023-streaming-media-player', 21, NULL, NULL, 41, 1000000, 0, 800000, 'The Roku Ultra 2023 is a high-performance streaming media player with 4K HDR support, Dolby Atmos compatibility, and voice remote, offering a seamless streaming experience for entertainment enthusiasts.', 200, 0, '2023-07-15 07:20:00', '2023-11-15 07:20:00'),
(42, 'Sennheiser HD 660 S Open-Back Headphones', 'sennheiser-hd-660-s-open-back-headphones', 14, NULL, NULL, 42, 4000000, 0, 3500000, 'The Sennheiser HD 660 S headphones feature open-back design, hand-selected drivers, and detachable cable, providing natural sound reproduction and comfortable listening for audiophiles.', 100, 0, '2023-07-15 07:25:00', '2023-11-15 07:25:00'),
(43, 'Alienware AW2521H Gaming Monitor', 'alienware-aw2521h-gaming-monitor', 18, NULL, NULL, 43, 6000000, 0, 5500000, 'The Alienware AW2521H is a 24.5-inch gaming monitor with 360Hz refresh rate, 1ms response time, and Nvidia G-Sync compatibility, offering ultra-smooth gameplay and responsive performance for competitive gamers.', 80, 0, '2023-07-15 07:30:00', '2023-11-15 07:30:00'),
(44, 'Sony WH-1000XM5 Wireless Noise-Canceling Headphones', 'sony-wh-1000xm5-wireless-noise-canceling-headphones', 14, NULL, NULL, 44, 3500000, 0, 3000000, 'The Sony WH-1000XM5 headphones feature industry-leading noise cancellation, LDAC audio coding, and up to 30 hours of battery life, offering immersive sound and all-day comfort for music lovers.', 150, 0, '2023-07-15 07:35:00', '2023-11-15 07:35:00'),
(45, 'LG 34WK95U-W 34-inch Ultrawide Monitor', 'lg-34wk95u-w-34-inch-ultrawide-monitor', 18, NULL, NULL, 45, 12000000, 0, 10000000, 'The LG 34WK95U-W is a 34-inch ultrawide monitor with 5K resolution, Thunderbolt 3 connectivity, and HDR600 support, providing a wide and immersive workspace for creative professionals.', 60, 0, '2023-07-15 07:40:00', '2023-11-15 07:40:00'),
(46, 'Garmin Fenix 7 Multisport GPS Watch', 'garmin-fenix-7-multisport-gps-watch', 20, NULL, NULL, 46, 6000000, 0, 5000000, 'The Garmin Fenix 7 is a multisport GPS watch with advanced performance metrics, built-in maps, and rugged design, providing comprehensive activity tracking and navigation for outdoor enthusiasts.', 100, 0, '2023-07-15 07:45:00', '2023-11-15 07:45:00'),
(47, 'HP Envy 32-inch 4K Monitor', 'hp-envy-32-inch-4k-monitor', 18, NULL, NULL, 47, 8000000, 0, 7000000, 'The HP Envy is a 32-inch 4K monitor with HDR support, built-in speakers, and AMD FreeSync technology, providing immersive visuals and rich audio for entertainment and productivity.', 70, 0, '2023-07-15 07:50:00', '2023-11-15 07:50:00'),
(48, 'Bose SoundLink Revolve+ Bluetooth Speaker', 'bose-soundlink-revolve-plus-bluetooth-speaker', 14, NULL, NULL, 48, 2500000, 0, 2000000, 'The Bose SoundLink Revolve+ is a portable Bluetooth speaker with 360-degree sound, water-resistant design, and long battery life, offering immersive audio wherever you go.', 150, 0, '2023-07-15 07:55:00', '2023-11-15 07:55:00'),
(49, 'Apple Watch Series 8', 'apple-watch-series-8', 19, NULL, NULL, 49, 6000000, 0, 5500000, 'The Apple Watch Series 8 features a larger always-on Retina display, advanced health monitoring, and faster performance, providing users with enhanced fitness tracking and connectivity on the go.', 100, 0, '2023-07-15 08:00:00', '2023-11-15 08:00:00'),
(50, 'Sony X900H 75-inch 4K TV', 'sony-x900h-75-inch-4k-tv', 20, NULL, NULL, 50, 30000000, 0, 26000000, 'The Sony X900H is a 75-inch 4K TV with full-array LED backlighting, Dolby Vision support, and Android TV platform, delivering stunning visuals and smart entertainment options for the whole family.', 30, 0, '2023-07-15 08:05:00', '2023-11-15 08:05:00');
-- (51, 'Google Pixel 7 Pro', 'google-pixel-7-pro', 31, NULL, NULL, 51, 28000000, 0, 25000000, 'The Google Pixel 7 Pro features a high-refresh-rate display, advanced camera system, and fast performance powered by the latest Snapdragon processor, offering a premium Android experience for users.', 80, 0, '2023-07-15 08:10:00', '2023-11-15 08:10:00'),
-- (52, 'Corsair Virtuoso RGB Wireless SE Gaming Headset', 'corsair-virtuoso-rgb-wireless-se-gaming-headset', 14, NULL, NULL, 52, 3500000, 0, 3000000, 'The Corsair Virtuoso RGB Wireless SE headset features high-fidelity audio, broadcast-grade microphone, and premium build quality, delivering immersive sound and comfort for gaming and entertainment.', 120, 0, '2023-07-15 08:15:00', '2023-11-15 08:15:00'),
-- (53, 'Microsoft Surface Laptop Studio', 'microsoft-surface-laptop-studio', 15, NULL, NULL, 53, 32000000, 0, 28000000, 'The Microsoft Surface Laptop Studio features a unique hinged design, high-resolution PixelSense display, and powerful performance, providing versatility and productivity for creative professionals.', 70, 0, '2023-07-15 08:20:00', '2023-11-15 08:20:00'),
-- (54, 'Asus ROG Swift PG32UQX 32-inch 4K Gaming Monitor', 'asus-rog-swift-pg32uqx-32-inch-4k-gaming-monitor', 18, NULL, NULL, 54, 20000000, 0, 18000000, 'The Asus ROG Swift PG32UQX is a 32-inch 4K gaming monitor with Mini LED backlighting, 144Hz refresh rate, and Nvidia G-Sync Ultimate certification, providing stunning visuals and smooth gameplay for gamers.', 60, 0, '2023-07-15 08:25:00', '2023-11-15 08:25:00'),
-- (55, 'GoPro MAX 2 360-Degree Action Camera', 'gopro-max-2-360-degree-action-camera', 19, NULL, NULL, 55, 4500000, 0, 4000000, 'The GoPro MAX 2 is a 360-degree action camera with 5.6K video recording, Max HyperSmooth stabilization, and touch display, offering immersive and creative capture of adventures in every direction.', 100, 0, '2023-07-15 08:30:00', '2023-11-15 08:30:00'),
-- (56, 'Dell XPS 17 9710 Laptop', 'dell-xps-17-9710-laptop', 15, NULL, NULL, 56, 35000000, 0, 30000000, 'The Dell XPS 17 9710 is a premium laptop with Intel Core i9 processor, NVIDIA GeForce RTX 3060 graphics, and 4K UHD+ display, providing powerful performance and stunning visuals for professionals and creators.', 80, 0, '2023-07-15 08:35:00', '2023-11-15 08:35:00'),
-- (57, 'Nvidia GeForce RTX 4080 Ti Graphics Card', 'nvidia-geforce-rtx-4080-ti-graphics-card', 25, NULL, NULL, 57, 15000000, 0, 13000000, 'The Nvidia GeForce RTX 4080 Ti is a flagship graphics card with Ampere architecture, ray tracing, and DLSS technology, offering unparalleled gaming performance and realism for enthusiast gamers.', 50, 0, '2023-07-15 08:40:00', '2023-11-15 08:40:00'),
-- (58, 'LG CX 48-inch OLED TV', 'lg-cx-48-inch-oled-tv', 20, NULL, NULL, 58, 18000000, 0, 15000000, 'The LG CX is a 48-inch OLED TV with self-lit pixels, Dolby Vision IQ, and AI ThinQ technology, delivering superior picture quality and smart features for an immersive home entertainment experience.', 40, 0, '2023-07-15 08:45:00', '2023-11-15 08:45:00'),
-- (59, 'Razer Huntsman Elite Gaming Keyboard', 'razer-huntsman-elite-gaming-keyboard', 21, NULL, NULL, 59, 2500000, 0, 2000000, 'The Razer Huntsman Elite is a premium gaming keyboard with Razer Opto-Mechanical switches, customizable Chroma RGB lighting, and plush wrist rest, offering speed, durability, and comfort for competitive gamers.', 120, 0, '2023-07-15 08:50:00', '2023-11-15 08:50:00'),
-- (60, 'Sony X750H 65-inch 4K TV', 'sony-x750h-65-inch-4k-tv', 20, NULL, NULL, 60, 12000000, 0, 10000000, 'The Sony X750H is a 65-inch 4K TV with HDR support, Motionflow XR technology, and Android TV platform, delivering vivid visuals and smart entertainment options for living room enjoyment.', 50, 0, '2023-07-15 08:55:00', '2023-11-15 08:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị viên', '2023-03-26 01:02:51', '2023-03-26 01:02:51'),
(2, 'guset', 'Khách hàng', '2023-03-26 01:02:51', '2023-03-26 01:02:51'),
(3, 'developer', 'Phát triển hệ thống', '2023-03-26 01:02:51', '2023-03-26 01:02:51'),
(4, 'content', 'Chỉnh sửa nội dung', '2023-03-26 01:02:51', '2023-03-26 01:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `desc`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giảm Giá', 'Giữa năm', '64968dd08f4b5_1687588304.png', NULL, 0, '2023-06-23 22:44:12', '2023-06-23 23:31:45'),
(2, 'Giảm Giá', 'Mùa hè', '64968d54a4f7a_1687588180.png', NULL, 0, '2023-06-23 23:29:41', '2023-06-23 23:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `public_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `public_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PtB20VkxRc0ASUxS', 'AI', '2023-11-25 04:09:15', '2023-11-25 04:09:15'),
(2, 'pz7ZHBf0Wuf2ccO6', 'phần mềm', '2023-11-25 04:09:15', '2023-11-25 04:09:15'),
(3, 'hz7ZHBf5Wuf2ccO7', 'teen', '2023-11-25 04:09:15', '2023-11-25 04:09:15'),
(4, '80N5mQ2SH7NlSN0B', 'du lịch', '2023-11-26 02:53:20', '2023-11-26 02:53:20'),
(5, '0sH2P8cCgRouzCgr', 'máy tính bảng', '2023-11-26 02:54:20', '2023-11-26 02:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `forget_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `remember_token`, `forget_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '01234567878', 'ABC, 123', '$2y$10$f9T36WpzK80pllMnookQ0eGbOpy5/ri6Dmgsx2PN2z80FJC2JZ68q', NULL, NULL, '2023-03-26 01:02:51', '2023-03-26 01:02:51'),
(2, ' Content', 'user@gmail.com', '01234567878', 'ABC, 123', '$2y$10$f9T36WpzK80pllMnookQ0eGbOpy5/ri6Dmgsx2PN2z80FJC2JZ68q', NULL, NULL, '2023-03-26 01:02:51', '2023-03-26 01:02:51'),
(3, 'Developer', 'user1@gmail.com', '01234567878', 'ABC, 123', '$2y$10$f9T36WpzK80pllMnookQ0eGbOpy5/ri6Dmgsx2PN2z80FJC2JZ68q', NULL, NULL, '2023-03-26 01:02:51', '2023-03-26 01:02:51'),
(4, 'User2', 'user2@gmail.com', '01234567878', 'ABC, 123', '$2y$10$f9T36WpzK80pllMnookQ0eGbOpy5/ri6Dmgsx2PN2z80FJC2JZ68q', NULL, NULL, '2023-03-26 01:02:51', '2023-03-26 01:02:51'),
(5, 'User3', 'user3@gmail.com', '01234567878', 'ABC, 123', '$2y$10$U9dirDfsJcK0RG/6Xph5vuM2WHB4o16ByAEVJ//HRqBjDW0sfWN.y', NULL, NULL, '2023-03-26 01:02:51', '2023-03-26 01:02:51'),
(6, 'User4', '2nmusic02@gmail.com', '01234567878', 'ABC, 123', '$2y$10$fSw6X118D8NJlCqM3jWaYeoxew7sQV9AEUoXVV30zxeS2KFM1N5Ju', NULL, NULL, '2023-12-01 03:09:09', '2023-12-10 04:42:51'),
(7, 'PJ PI', 'pipj.contact@gmail.com', '', NULL, NULL, NULL, NULL, '2023-12-01 03:20:12', '2023-12-01 03:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2023-05-27 20:25:23', '2023-05-27 20:25:23'),
(6, 3, 3, '2023-05-28 23:52:51', '2023-05-28 23:52:51'),
(7, 4, 2, '2023-05-28 23:54:02', '2023-05-28 23:54:02'),
(9, 5, 2, '2023-05-31 00:49:39', '2023-05-31 00:49:39'),
(10, 2, 4, '2023-06-16 22:48:13', '2023-06-16 22:48:13'),
(11, 6, 2, '2023-12-01 03:13:37', '2023-12-01 03:13:37'),
(12, 7, 2, '2023-12-01 03:20:12', '2023-12-01 03:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `pro_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 12, 5, '2023-12-02 05:08:30', '2023-12-02 05:08:30'),
(2, 10, 1, '2023-12-10 04:39:35', '2023-12-10 04:39:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `import_details`
--
ALTER TABLE `import_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_id` (`import_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cusId` (`cusId`),
  ADD UNIQUE KEY `discountId` (`discountId`);

--
-- Indexes for table `order_customers`
--
ALTER TABLE `order_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`,`proId`),
  ADD KEY `proId` (`proId`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_id` (`role_id`,`permission_id`),
  ADD KEY `permission_role_ibfk_1` (`permission_id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cateId` (`cateId`,`phone_id`,`galleryId`),
  ADD KEY `galleryId` (`galleryId`),
  ADD KEY `phone_id` (`phone_id`,`accessories_id`),
  ADD KEY `accessories_id` (`accessories_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pro_id` (`pro_id`),
  ADD UNIQUE KEY `pro_id_2` (`pro_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `import_details`
--
ALTER TABLE `import_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_customers`
--
ALTER TABLE `order_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `import_details`
--
ALTER TABLE `import_details`
  ADD CONSTRAINT `import_details_ibfk_1` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `import_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cusId`) REFERENCES `order_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`discountId`) REFERENCES `discounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`proId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `category_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`galleryId`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_5` FOREIGN KEY (`accessories_id`) REFERENCES `accessories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_6` FOREIGN KEY (`cateId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
