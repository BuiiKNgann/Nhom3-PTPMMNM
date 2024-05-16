-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2024 at 11:39 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_vlxd`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Nippon', 'nippon', 1, '2024-05-02 08:07:34', '2024-05-02 08:07:34'),
(8, 'Đồng Tâm', 'dong-tam', 1, '2024-05-02 08:08:15', '2024-05-02 08:08:15'),
(9, 'Việt Nhật', 'viet-nhat', 1, '2024-05-02 08:11:51', '2024-05-02 08:11:51'),
(10, 'Nakamura', 'nakamura', 1, '2024-05-04 23:33:40', '2024-05-04 23:33:40'),
(11, 'PORCELAIN', 'porcelain', 1, '2024-05-04 23:44:37', '2024-05-04 23:44:37'),
(12, 'JOTUN', 'jotun', 1, '2024-05-09 10:49:48', '2024-05-09 10:49:48'),
(13, 'Hà Tiên', 'ha-tien', 1, '2024-05-15 20:21:06', '2024-05-15 20:21:06'),
(14, 'Insee', 'insee', 1, '2024-05-15 20:52:32', '2024-05-15 20:52:32'),
(15, 'WallArt', 'wallart', 1, '2024-05-15 21:00:22', '2024-05-15 21:00:22'),
(16, 'Thăng Long', 'thang-long', 1, '2024-05-15 21:08:32', '2024-05-15 21:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `showHome` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `showHome`, `created_at`, `updated_at`) VALUES
(1, 'Ngói lợp', 'ngoi-lop', '1-1715445941.jpg', 1, 'Yes', '2024-04-25 17:05:41', '2024-05-11 09:45:41'),
(2, 'Sơn và hoá chất xây dựng', 'son-va-hoa-chat-xay-dung', '2-1715444904.jpg', 1, 'Yes', '2024-04-25 17:06:04', '2024-05-11 09:28:24'),
(4, 'Gạch xây dựng', 'gach-xay-dung', NULL, 1, 'Yes', '2024-04-25 17:08:18', '2024-05-15 21:06:17'),
(5, 'Xi măng', 'xi-mang', NULL, 1, 'No', '2024-04-25 17:08:34', '2024-05-15 20:55:43'),
(6, 'Thép', 'thep', '6-1715444986.jpg', 1, 'Yes', '2024-04-25 17:09:14', '2024-05-11 09:29:46'),
(9, 'Đá xây dựng', 'da-xay-dung', NULL, 0, 'No', '2024-04-29 23:56:53', '2024-05-09 10:35:54'),
(11, 'Gạch', 'gach', '11-1715445416.jpg', 1, 'Yes', '2024-05-02 19:40:41', '2024-05-15 20:54:49'),
(42, 'Cát xây dựng', 'cat-xay-dung', NULL, 1, 'Yes', '2024-05-15 21:22:51', '2024-05-15 21:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'An Giang', 'AG', NULL, NULL),
(2, 'Bà Rịa-Vũng Tàu', 'VT', NULL, NULL),
(3, 'Bạc Liêu', 'BL', NULL, NULL),
(4, 'Bắc Kạn', 'BC', NULL, NULL),
(5, 'Bắc Giang', 'BG', NULL, NULL),
(6, 'Bắc Ninh', 'BN', NULL, NULL),
(7, 'Bến Tre', 'BT', NULL, NULL),
(8, 'Bình Dương', 'BD', NULL, NULL),
(9, 'Bình Định', 'BDinh', NULL, NULL),
(10, 'Bình Phước', 'BP', NULL, NULL),
(11, 'Bình Thuận', 'BThuan', NULL, NULL),
(12, 'Cà Mau', 'CM', NULL, NULL),
(13, 'Cao Bằng', 'CB', NULL, NULL),
(14, 'Cần Thơ', 'CT', NULL, NULL),
(15, 'Đà Nẵng', 'DN', NULL, NULL),
(16, 'Đắk Lắk', 'DL', NULL, NULL),
(17, 'Đắk Nông', 'DaKNong', NULL, NULL),
(18, 'Đồng Nai', 'ĐN', NULL, NULL),
(19, 'Đồng Tháp', 'DT', NULL, NULL),
(20, 'Điện Biên', 'DBien', NULL, NULL),
(21, 'Gia Lai', 'GL', NULL, NULL),
(22, 'Hà Giang', 'HG', NULL, NULL),
(23, 'Hà Nam', 'HNam', NULL, NULL),
(24, 'Hà Nội', 'HaNoi', NULL, NULL),
(25, 'Hà Tỉnh', 'HaTinh', NULL, NULL),
(26, 'Hải Dương', 'HaiDuong', NULL, NULL),
(27, 'Hải Phòng', 'HaiPhong', NULL, NULL),
(28, 'Hoà Bình', 'HoaBinh', NULL, NULL),
(29, 'Hậu Giang', 'HauGiang', NULL, NULL),
(30, 'Hưng Yên', 'HungYen', NULL, NULL),
(31, 'Thành Phố Hồ Chí Minh', 'TPHCM', NULL, NULL),
(32, 'Khánh Hoà', 'KhanhHoa', NULL, NULL),
(33, 'Kiên Giang', 'KienGiang', NULL, NULL),
(34, 'Kon Tum', 'KonTum', NULL, NULL),
(35, 'Lai Châu', 'LaiChau', NULL, NULL),
(36, 'Lào Cai', 'LaoCai', NULL, NULL),
(37, 'Lạng Sơn', 'LangSon', NULL, NULL),
(38, 'Lâm Đồng', 'LamDong', NULL, NULL),
(39, 'Long An', 'LongAn', NULL, NULL),
(40, 'Nam Định', 'NamDinh', NULL, NULL),
(41, 'Nghệ An', 'NgheAn', NULL, NULL),
(42, 'Ninh Bình', 'NinhBinh', NULL, NULL),
(43, 'Ninh Thuận', 'NinhThuan', NULL, NULL),
(44, 'Phú Thọ', 'PhuTho', NULL, NULL),
(45, 'Phú Yên', 'PhuYen', NULL, NULL),
(46, 'Quảng Bình', 'QuangBinh', NULL, NULL),
(47, 'Quảng Nam', 'QuangNam', NULL, NULL),
(48, 'Quãng Ngãi', 'QuangNgai', NULL, NULL),
(49, 'Quãng Ninh', 'QuangNinh', NULL, NULL),
(50, 'Quảng Trị', 'QuangTri', NULL, NULL),
(51, 'Sóc Trăng', 'SocTrang', NULL, NULL),
(52, 'Sơn La', 'SonLa', NULL, NULL),
(53, 'tây Ninh', 'TayNinh', NULL, NULL),
(54, 'thái Bình', 'ThaiBinh', NULL, NULL),
(55, 'Thái Nguyên', 'ThaiNguyen', NULL, NULL),
(56, 'Thanh Hoá', 'ThanhHoa', NULL, NULL),
(57, 'Thừa Thiên Huế', 'ThuaThienHue', NULL, NULL),
(58, 'Tiền Giang', 'TienGiang', NULL, NULL),
(59, 'Trà Vinh', 'TraVinh', NULL, NULL),
(60, 'Tuyên Quang', 'TuyenQuang', NULL, NULL),
(61, 'Vĩnh Long', 'VinhLong', NULL, NULL),
(62, 'Vĩnh Phúc', 'VinhPhuc', NULL, NULL),
(63, 'Yên Bái', 'YenBai', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `user_id`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(4, 2, 'Ngan Kim', 'Bui', 'nganbui@example.com', '0374822130', 31, '266/9/23A Tôn Đản, Phường 4 ,Quận 4', 'Nhà riêng', 'Quận 4', 'Phường 4', '762000', '2024-05-08 08:29:17', '2024-05-11 08:21:35'),
(5, 6, 'My Le', 'Nguyen', 'lenguyen@example.com', '124343535', 31, 'Hóc môn eeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'hhhhhhhhhhhh', 'adfd', 'dfsf', 'sfdf', '2024-05-09 07:22:03', '2024-05-09 07:22:03'),
(6, 7, 'kim anh', 'nguyen', 'anhnguyen@gmail.com', '124343535', 46, 'đà nẵng đà nẵngđà nẵngđà nẵngđà nẵngđà nẵngđà nẵngđà nẵng', '11111111', 'adfd', 'dfsf', 'sfdf', '2024-05-09 07:56:12', '2024-05-09 07:56:12'),
(7, 3, 'bao ngoc', 'pham nguyen', 'baongoc@example.com', '124343535', 5, '266/9/23A Tôn Đản Phường 4 quận 4', '11111111', 'adfd', 'dfsf', 'sfdf', '2024-05-09 11:26:59', '2024-05-09 11:26:59'),
(8, 8, 'phuonganh', 'Bui', 'phuonganh@example.com', '124343535', 17, '266/9/23A Tôn Đản Phường 4 quận 4', '11111111', 'adfd', 'dfsf', 'sfdf', '2024-05-09 11:35:35', '2024-05-09 11:35:35');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_17_134742_alter_users_table', 2),
(6, '2024_03_29_012601_create_categories_table', 3),
(7, '2024_03_29_014128_create_categories_table', 4),
(8, '2024_03_29_020026_create_categories_table', 5),
(9, '2024_04_24_100111_create_temp_images_table', 6),
(10, '2024_04_27_131035_create_sub_categories_table', 7),
(11, '2024_04_27_131757_create_sub_categories_table', 8),
(12, '2024_04_28_084011_create_brands_table', 9),
(13, '2024_04_29_063706_create_products_table', 10),
(14, '2024_04_29_063815_create_product_images_table', 10),
(15, '2024_05_03_022824_alter_categories_table', 11),
(16, '2024_05_03_024744_alter_products_table', 12),
(17, '2024_05_03_030054_alter_sub_categories_table', 13),
(18, '2024_05_05_081524_alter_products_table', 14),
(19, '2024_05_07_123024_alter_users_table', 15),
(20, '2024_05_08_023531_create_countries_table', 16),
(21, '2024_05_08_041605_create_orders_table', 17),
(22, '2024_05_08_061001_create_order_items_table', 18),
(23, '2024_05_08_061042_create_customer_addresses_table', 18),
(24, '2024_05_08_154716_create_shipping_charges_table', 19),
(25, '2024_05_10_005017_alter_orders_table', 20),
(26, '2024_05_11_061518_alter_orders_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `subtotal` double(10,2) NOT NULL,
  `shipping` double(10,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `grand_total` double(10,2) NOT NULL,
  `payment_status` enum('paid','not paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not paid',
  `status` enum('pending','shipped','delivered','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `shipped_date` timestamp NULL DEFAULT NULL,
  `firtst_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `shipping`, `coupon_code`, `discount`, `grand_total`, `payment_status`, `status`, `shipped_date`, `firtst_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `notes`, `created_at`, `updated_at`) VALUES
(34, 2, 340.00, 80.00, NULL, NULL, 420.00, 'not paid', 'cancelled', '2024-05-04 08:14:25', 'Ngan Kim', 'Bui', 'nganbui@example.com', '0374822130', 31, '266/9/23A Tôn Đản, Phường 4 ,Quận 4', 'Nhà riêng', 'Phường 4', 'Quận 4', '24656531', NULL, '2024-05-11 08:04:26', '2024-05-11 08:14:49'),
(35, 2, 290.00, 40.00, NULL, NULL, 330.00, 'not paid', 'delivered', '2024-05-15 08:23:43', 'Ngan Kim', 'Bui', 'nganbui@example.com', '0374822130', 31, '266/9/23A Tôn Đản, Phường 4 ,Quận 4', 'Nhà riêng', 'Phường 4', 'Quận 4', '24656531', NULL, '2024-05-11 08:12:01', '2024-05-11 08:14:34'),
(36, 2, 100.00, 40.00, NULL, NULL, 140.00, 'not paid', 'shipped', '2024-05-04 08:14:25', 'Ngan Kim', 'Bui', 'nganbui@example.com', '0374822130', 31, '266/9/23A Tôn Đản, Phường 4 ,Quận 4', 'Nhà riêng', 'Phường 4', 'Quận 4', '24656531', NULL, '2024-05-11 08:12:57', '2024-05-11 08:14:17'),
(37, 2, 120.00, 40.00, NULL, NULL, 160.00, 'not paid', 'pending', NULL, 'Ngan Kim', 'Bui', 'nganbui@example.com', '0374822130', 31, '266/9/23A Tôn Đản, Phường 4 ,Quận 4', 'Nhà riêng', 'Phường 4', 'Quận 4', '24656531', NULL, '2024-05-11 08:13:48', '2024-05-11 08:13:48'),
(38, 2, 100.00, 40.00, NULL, NULL, 140.00, 'not paid', 'pending', NULL, 'Ngan Kim', 'Bui', 'nganbui@example.com', '0374822130', 31, '266/9/23A Tôn Đản, Phường 4 ,Quận 4', 'Nhà riêng', 'Phường 4', 'Quận 4', '762000', NULL, '2024-05-11 08:17:14', '2024-05-11 08:17:14'),
(39, 2, 100.00, 40.00, NULL, NULL, 140.00, 'not paid', 'shipped', '2024-05-04 08:14:25', 'Ngan Kim', 'Bui', 'nganbui@example.com', '0374822130', 31, '266/9/23A Tôn Đản, Phường 4 ,Quận 4', 'Nhà riêng', 'Quận 4', 'Phường 4', '762000', NULL, '2024-05-11 08:21:35', '2024-05-11 08:25:03'),
(40, 2, 132.00, 80.00, NULL, NULL, 212.00, 'not paid', 'pending', NULL, 'Ngan Kim', 'Bui', 'nganbui@example.com', '0374822130', 31, '266/9/23A Tôn Đản, Phường 4 ,Quận 4', 'Nhà riêng', 'Quận 4', 'Phường 4', '762000', NULL, '2024-05-11 10:07:53', '2024-05-11 10:07:53'),
(41, 2, 100.00, 40.00, NULL, NULL, 140.00, 'not paid', 'pending', NULL, 'Ngan Kim', 'Bui', 'nganbui@example.com', '0374822130', 31, '266/9/23A Tôn Đản, Phường 4 ,Quận 4', 'Nhà riêng', 'Quận 4', 'Phường 4', '762000', 'gọi trước khi giao', '2024-05-15 20:03:47', '2024-05-15 20:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 34, 25, 'Gạch PORCELAIN 1530STONE012', 1, 50.00, 50.00, '2024-05-11 08:04:26', '2024-05-11 08:04:26'),
(2, 34, 20, 'Thép hình I', 1, 290.00, 290.00, '2024-05-11 08:04:26', '2024-05-11 08:04:26'),
(3, 35, 20, 'Thép hình I', 1, 290.00, 290.00, '2024-05-11 08:12:01', '2024-05-11 08:12:01'),
(4, 36, 23, 'Ngói màu Nakamura', 1, 100.00, 100.00, '2024-05-11 08:12:57', '2024-05-11 08:12:57'),
(5, 37, 29, 'Majestic Sang Trọng', 1, 120.00, 120.00, '2024-05-11 08:13:48', '2024-05-11 08:13:48'),
(6, 38, 22, 'Ngói màu Đồng Tâm', 1, 100.00, 100.00, '2024-05-11 08:17:14', '2024-05-11 08:17:14'),
(7, 39, 23, 'Ngói màu Nakamura', 1, 100.00, 100.00, '2024-05-11 08:21:35', '2024-05-11 08:21:35'),
(8, 40, 29, 'Majestic Sang Trọng', 1, 120.00, 120.00, '2024-05-11 10:07:53', '2024-05-11 10:07:53'),
(9, 40, 21, 'Thép CB300V', 1, 12.00, 12.00, '2024-05-11 10:07:53', '2024-05-11 10:07:53'),
(10, 41, 23, 'Ngói màu Nakamura', 1, 100.00, 100.00, '2024-05-15 20:03:47', '2024-05-15 20:03:47');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `shipping_returns` text COLLATE utf8mb4_unicode_ci,
  `related_products` text COLLATE utf8mb4_unicode_ci,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track_qty` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `qty` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(18, 'Sơn chống thấm Nippon WP 100', 'son-chong-tham-nippon-wp-100', NULL, NULL, NULL, '', 250.00, NULL, 2, 8, 7, 'Yes', 'SKU-001', 'Barcode-001', 'No', 1000, 1, '2024-05-02 08:21:06', '2024-05-11 09:56:23'),
(19, 'Thép hình H', 'thep-hinh-h', '<h2 style=\"font-family: Roboto-Regular, sans-serif; line-height: 1.5; color: rgb(35, 31, 32); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding: 0px;\"><span style=\"font-weight: 700; font-family: &quot;Times New Roman&quot;;\">Mác thép</span><span style=\"font-family: &quot;Times New Roman&quot;;\">: Q195 - Q235B - Q345B - SS400 - A36 - S235JR - St37-2 - SM400A - SM400B - SM490A - SM490B</span></h2><p><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><span style=\"font-weight: 700; color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">Tiêu chuẩn:&nbsp;</span><span style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">GB/T700 - GB/T1591 - JIS G3101 - JIS G3106 - ASTM - EN 10025 - DIN 17100 - KS D3503 - KS D3515 - KS D3502...</span><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><span style=\"font-weight: 700; color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">Xuất xứ:</span><span style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">&nbsp;Nhật Bản, Hàn Quốc, Trung Quốc, Việt Nam….</span><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><span style=\"font-weight: 700; color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">Ứng dụng:</span><span style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">&nbsp;Nhà xưởng, kết cấu, xây dựng nhà xưởng, kết cấu nhà tiền chế, nâng và vận chuyển máy, làm cọc cho nền nóng nhà xưởng&nbsp;</span><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><span style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">&nbsp;</span><br></p>', '<h2 style=\"font-family: Roboto-Regular, sans-serif; line-height: 1.5; color: rgb(35, 31, 32); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding: 0px;\"><span style=\"font-weight: bolder; font-size: 14px;\">Đơn vị tính:</span><span style=\"font-size: 14px;\">&nbsp;kg</span><br></h2><h2 style=\"font-family: Roboto-Regular, sans-serif; line-height: 1.5; color: rgb(35, 31, 32); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding: 0px;\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Thép hình chữ H được sử dụng trong xây dựng nhà xưởng, kết cấu khung xe, cầu đường, xe nâng, máy móc công nghiệp, nền móng công trình, tàu thuyền, vận tải...</span></h2>', NULL, '', 14.00, NULL, 6, 11, 9, 'Yes', 'SKU-002', 'Barcode-002', 'No', 5000, 1, '2024-05-02 08:22:20', '2024-05-11 10:01:18'),
(20, 'Thép hình I', 'thep-hinh-i', '<h2 style=\"font-family: Roboto-Regular, sans-serif; line-height: 1.5; color: rgb(35, 31, 32); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding: 0px;\"><span style=\"font-weight: 700;\">Mác thép</span>: Q195 - Q235B - Q345B - SS400 - A36 - S235JR - St37-2 - SM400A - SM400B - SM490A - SM490B</h2><p><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><span style=\"font-weight: 700; color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">Tiêu chuẩn:&nbsp;</span><span style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">GB/T700 - GB/T1591 - JIS G3101 - JIS G3106 - ASTM - EN 10025 - DIN 17100 - KS D3503 - KS D3515 - KS D3502...</span><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><span style=\"font-weight: 700; color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">Xuất xứ:</span><span style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">&nbsp;Nhật Bản, Hàn Quốc, Trung Quốc, Việt Nam….</span><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><br style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><span style=\"font-weight: 700; color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">Ứng dụng:</span><span style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\">&nbsp;Nhà xưởng, kết cấu, xây dựng nhà xưởng, kết cấu nhà tiền chế, nâng và vận chuyển máy, làm cọc cho nền nóng nhà xưởng&nbsp;</span><br></p>', '<p><font color=\"#231f20\" face=\"Roboto-Regular, sans-serif\"><span style=\"font-size: 14px;\"><b>Đơn vị tính:</b> kg</span></font></p><p><span style=\"color: rgb(35, 31, 32); font-family: Roboto-Regular, sans-serif; font-size: 14px;\"><b>Ứng dụng:</b> Nhà xưởng, kết cấu, xây dựng nhà xưởng, kết cấu nhà tiền chế, nâng và vận chuyển máy, làm cọc cho nền nóng nhà xưởng&nbsp;</span></p>', NULL, '', 15.00, 15.50, 6, 11, 9, 'Yes', 'SKU-005', 'Barcode-005', 'No', 400, 1, '2024-05-04 08:17:21', '2024-05-11 10:01:00'),
(21, 'Thép CB300V', 'thep-cb300v', '<p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Thép CB300 </span>được nhiều người sử dụng và ứng dụng trong lĩnh vực xây dựng và công nghiệp như:</p><ul style=\"margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 2.14286em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: square; color: rgb(51, 51, 51);\"><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Xây dựng cầu và cơ sở hạ tầng</span>: CB300 được sử dụng để xây dựng cầu, bến cảng, đập, và các công trình cơ sở hạ tầng quan trọng.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Xây dựng tòa nhà cao tầng</span>: tạo cấu trúc khung cho tòa nhà và nhà ở cao tầng.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Xây dựng nhà máy và xưởng sản xuất</span>: Các nhà máy và xưởng sản xuất sử dụng thép CB300 để xây dựng kết cấu chịu lực.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Xây dựng hệ thống xử lý nước</span>: sử dụng làm hệ thống xử lý nước, ống dẫn nước và các công trình thủy lợi.</li></ul>', '<ul style=\"margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 2.14286em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: square; color: rgb(51, 51, 51);\"><li style=\"font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; margin: 0px 0px 0.5em; padding: 0px; border: 0px; vertical-align: baseline;\"><font face=\"Times New Roman\"><b>Đơn vị tính: kg</b></font></li><li style=\"font: inherit; margin: 0px 0px 0.5em; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: &quot;Times New Roman&quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Khả năng chịu tải tốt</span><span style=\"font-family: &quot;Times New Roman&quot;;\">: CB300 thích hợp cho các công trình đòi hỏi tính bền và độ an toàn cao.</span></li><li style=\"font: inherit; margin: 0px 0px 0.5em; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: &quot;Times New Roman&quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Dễ sử dụng</span><span style=\"font-family: &quot;Times New Roman&quot;;\">: Thép CB300 có khả năng uốn dẻo tốt, giúp trong việc cắt, uốn và lắp đặt dễ dàng.</span></li><li style=\"font: inherit; margin: 0px 0px 0.5em; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: &quot;Times New Roman&quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Tính bền vững</span><span style=\"font-family: &quot;Times New Roman&quot;;\">: CB300 Hòa Phát có khả năng chống ăn mòn và độ bền theo thời gian, giúp kéo dài tuổi thọ của công trình xây dựng.</span></li><li style=\"font: inherit; margin: 0px 0px 0.5em; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: &quot;Times New Roman&quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Tính đàn hồi và chống nứt</span><span style=\"font-family: &quot;Times New Roman&quot;;\">: Thép CB300 Hoà Phát có khả năng đàn hồi tốt và chống nứt, giảm nguy cơ hỏng hóc trong quá trình sử dụng.</span></li></ul>', NULL, '', 12.00, NULL, 6, 13, 9, 'Yes', 'SKU-006', 'Barcode-006', 'No', 460, 1, '2024-05-04 22:44:44', '2024-05-11 10:00:20'),
(22, 'Ngói màu Đồng Tâm', 'ngoi-mau-dong-tam', NULL, NULL, NULL, NULL, 100.00, NULL, 1, 10, 8, 'Yes', 'SKU-004', 'Barcode-004', 'No', 2000, 1, '2024-05-04 23:33:10', '2024-05-04 23:39:10'),
(23, 'Ngói màu Nakamura', 'ngoi-mau-nakamura', NULL, NULL, NULL, NULL, 100.00, NULL, 1, 10, 10, 'Yes', 'SKU-007', 'Barcode-007', 'Yes', 2000, 1, '2024-05-04 23:36:33', '2024-05-04 23:36:33'),
(24, 'Gạch PORCELAIN 1530STONE015', 'gach-porcelain-1530stone015', NULL, NULL, NULL, NULL, 50.00, NULL, 11, 12, 11, 'Yes', 'SKU-008', 'Barcode-008', 'Yes', 4000, 1, '2024-05-04 23:58:19', '2024-05-04 23:58:19'),
(25, 'Gạch PORCELAIN 1530STONE012', 'gach-porcelain-1530stone012', NULL, NULL, NULL, '', 50.00, NULL, 11, 12, 11, 'No', 'SKU-009', 'Barcode-009', 'Yes', 3, 1, '2024-05-04 23:59:36', '2024-05-06 09:46:45'),
(26, 'Gạch PORCELAIN 1530STONE014', 'gach-porcelain-1530stone014', NULL, '<ul class=\"list_thuoctinh\"><li>Kích thước:15 x 30 cm</li><li>Màu sắc:Xám</li><li>Loại gạch:Gạch Porcelain</li><li>Công năng:Gạch ốp lát</li><li>Bề mặt:Mờ</li><li>Hoa văn:Vân đá</li><li>Men:Men mờ</li><li>Không gian:Công trình công cộng Ngoài trời</li><li>Bộ sưu tập:MARBLE STONE</li></ul>', NULL, '18', 50.00, NULL, 11, 12, 11, 'Yes', 'SKU-010', 'Barcode-010', 'No', NULL, 0, '2024-05-05 00:00:14', '2024-05-11 09:46:14'),
(28, 'Essence Sơn Trần Chuyên Dụng', 'essence-son-tran-chuyen-dung', '<div class=\"Field__Div-sc-121bw76-1 gDoySq ProductDetailsstyles__Copy-sc-q5pj19-17 dSBvCy\" style=\"-webkit-font-smoothing: antialiased; width: 498px; margin-bottom: 20px; color: rgb(85, 85, 85); font-family: &quot;Noto Sans&quot;;\">Được phát triển dành riêng cho trần nhà, Essence Sơn Trần Chuyên Dụng nổi bật với khả năng chống văng bắn, ngăn hiện tượng nhỏ giọt sơn, giúp việc thi công trở nên dễ dàng hơn. Đồng thời sản phẩm còn đem đến độ che phủ tốt cùng độ trắng cao cho bề mặt trần mờ siêu trắng lý tưởng.</div><ul class=\"ProductDetailsstyles__ProductUsps-sc-q5pj19-23 kROgqZ\" style=\"-webkit-font-smoothing: antialiased; padding: 0px 20px; color: rgb(85, 85, 85); font-family: &quot;Noto Sans&quot;;\"><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Chống văng bắn</li><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Che phủ tốt</li><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Siêu trắng</li><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Nhẹ mùi và hàm lượng VOC thấp</li><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Chống nấm mốc</li></ul>', '<p>Essence Sơn Trần Chuyên Dụng nổi bật với khả năng chống văng bắn, độ che phủ tốt, dễ thi công và mang đến bề mặt mờ siêu trắng lý tưởng.<br></p>', NULL, '', 320.00, 350.00, 2, 7, 12, 'No', 'SKU-012', 'Barcode-012', 'No', 250, 1, '2024-05-09 10:54:22', '2024-05-11 09:25:01'),
(29, 'Majestic Sang Trọng', 'majestic-sang-trong', '<div class=\"Field__Div-sc-121bw76-1 gDoySq ProductDetailsstyles__Copy-sc-q5pj19-17 dSBvCy\" style=\"-webkit-font-smoothing: antialiased; width: 498px; margin-bottom: 20px; color: rgb(85, 85, 85); font-family: &quot;Noto Sans&quot;;\">Sơn nội thất siêu cao cấp Majestic Sang Trọng giúp mang đến ngôi nhà vẻ đẹp sang trọng cùng không gian sống đầy trong lành. Ứng dụng công nghệ \"Làm Sạch Không Khí\" đột phá, giúp thanh lọc và gia tăng chất lượng không khí trong nhà, mang đến bạn sự thoải mái và dễ chịu. Sản phẩm Majestic Sang Trọng còn sỡ hữu bề mặt bóng, siêu láng mịn và bền màu cùng khả năng che phủ các vết nứt nhỏ, giúp cho ngôi nhà luôn giữ mãi vẻ đẹp sang trọng theo thời gian.</div><ul class=\"ProductDetailsstyles__ProductUsps-sc-q5pj19-23 kROgqZ\" style=\"-webkit-font-smoothing: antialiased; padding: 0px 20px; color: rgb(85, 85, 85); font-family: &quot;Noto Sans&quot;;\"><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Làm sạch không khí</li><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Siêu nhẹ mùi</li><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Siêu láng mịn</li><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Che phủ vết nứt</li><li class=\"ProductDetailsstyles__ProductUsp-sc-q5pj19-24 kKdMmV\" style=\"-webkit-font-smoothing: antialiased; padding: 4px 0px;\">Dễ lau chùi</li></ul>', '<p>Sơn nội thất siêu cao cấp Majestic Sang Trọng giúp mang đến vẻ đẹp sang trọng, bền lâu cùng không gian sống trong lành, an toàn cho sức khỏe<br></p>', NULL, '', 350.00, 350.00, 2, 7, 12, 'Yes', 'SKU-013', 'Barcode-013', 'No', 500, 1, '2024-05-09 10:59:42', '2024-05-11 09:46:25'),
(31, 'Xi măng Vicem Hà Tiên Đa Dụng: 50KG', 'xi-mang-vicem-ha-tien-da-dung-50kg', NULL, '<p>Đơn vị tính: bao</p><div class=\"toggleHeightContent   active  left\" style=\"margin: 0px 0px 30px; padding: 0px; position: relative; color: rgb(85, 85, 85); font-family: Montserrat, sans-serif; font-size: 14px; outline: none !important;\"><div id=\"tghsort\" class=\"tgh-content\" style=\"margin: 0px; padding: 0px; transition: all 0.3s ease 0s; position: relative; overflow: hidden; outline: none !important; max-height: 3000vh !important;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none !important;\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Xi măng VICEM HÀ TIÊN ĐA DỤNG là hỗn hợp nghiền mịn của clinker, thạch cao và các phụ gia khoáng hoạt tính khác như Puzzolan, đá vôi,… giúp cải thiện các tính chất vật lý của xi măng và bê tông như: rút ngắn thời gian đông kết, tạo cường độ cao, vữa dẻo.”</span></p><div><br></div></div></div>', NULL, '', 280.00, NULL, 5, 15, 13, 'No', 'SKU-014', 'Barcode-014', 'No', NULL, 1, '2024-05-15 20:28:00', '2024-05-15 20:28:00'),
(32, 'Xi Măng Vicem Hà Tiên Xây Tô', 'xi-mang-vicem-ha-tien-xay-to', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(59, 67, 87); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Hơn 50 năm kinh nghiệm sản xuất Xi măng với vị thế hàng đầu tại Việt Nam, Vicem Hà Tiên đã nghiên cứu và cung cấp ra thị trường sản phẩm Xi măng&nbsp;<span style=\"font-weight: 700;\">PCB40 Premium</span>&nbsp;mang tính đột phá về chất lượng.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(59, 67, 87); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\"><span style=\"font-weight: 700;\">PCB40 Premium tăng cường chất lượng bê tông:&nbsp;</span>Đông kết nhanh, Mác vượt cao hơn so với tiêu chuẩn thiết kế, giúp bê tông bền vững trong môi trường đặc thù của Việt Nam.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(59, 67, 87); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\"><span style=\"font-weight: 700;\">PCB40 Premium nâng cao chất lượng vữa xây/tô:&nbsp;</span>Vữa dẻo, bám dính tốt, bề mặt tường láng mịn, không răn nứt.</p>', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; position: relative; padding-left: 21px; overflow: hidden; color: rgb(59, 67, 87); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Đơn vị tính: bao</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; position: relative; padding-left: 21px; overflow: hidden; color: rgb(59, 67, 87); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">-Độ dẻo cao: Các hạt xi măng được nghiền mịn hơn tạo ra sự linh động vượt trội so với xi măng thông thường, làm cho vữa dẻo hơn, bám dính tốt hơn, hạn chế rơi vãi khi thi công.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; position: relative; padding-left: 21px; overflow: hidden; color: rgb(59, 67, 87); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">-Chống rạn nứt, chống thấm tốt: với cỡ hạt siêu mịn, phân bố đồng đều nên vữa có khả năng chống thấm tốt . Thời gian ninh kết hợp lý, thuận lợi cho việc thi công.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; position: relative; padding-left: 21px; overflow: hidden; color: rgb(59, 67, 87); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">-Tiết kiệm chi phí: Với xi măng chuyên dụng xây tô cao cấp chỉ cần 312kg xi măng cho 1m3 vữa.Xi măng chuyên dụng xây tô cao cấp: Sử dụng thi công với thẩm mỹ cao, thích hợp cho mọi công trình.</p>', NULL, '31', 78.00, NULL, 5, 16, 13, 'No', 'SKU-015', 'Barcode-015', 'No', NULL, 1, '2024-05-15 20:44:43', '2024-05-15 20:44:43'),
(33, 'Xi Măng Đa Dụng Insee Power S (50Kg)', 'xi-mang-da-dung-insee-power-s-50kg', NULL, '<p><span style=\"color: rgb(70, 70, 70); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Khi trộn với nước và cốt liệu, hoạt chất Power S sẽ lấp đầy các lỗ rổng trong vữa và thay đổi cấu trúc vi mô của vữa làm nên đặc tính kép Bền Móng Mịn Tường</span><br></p>', NULL, '', 69.00, NULL, 5, 15, 14, 'No', 'SKU-016', 'Barcode-016', 'No', NULL, 1, '2024-05-15 20:53:37', '2024-05-15 20:53:37'),
(34, 'Gạch Trang Trí WallArt 2362 (300×600)', 'gach-trang-tri-wallart-2362-300600', NULL, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(30, 30, 30); font-family: Roboto, sans-serif; font-size: 15.84px;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Đơn vị tính: viên</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Mã sản phẩm: 2362</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Kích thước: 300 X 600mm</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Thương hiệu: WallArt</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bề mặt: Bóng – Mạ vàng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Chất liệu: Ceramic</li></ul>', NULL, '', 60.00, NULL, 11, 17, 15, 'No', 'SKU-016', 'Barcode-016', 'No', NULL, 1, '2024-05-15 21:02:42', '2024-05-15 21:02:42'),
(35, 'Gạch Trang Trí WallArt 2365 (300×600)', 'gach-trang-tri-wallart-2365-300600', NULL, '<h2 style=\"color: rgb(10, 10, 10); width: 1140px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.6em; line-height: 1.3; font-family: Roboto, sans-serif; font-weight: 700;\"><br></h2><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(30, 30, 30); font-family: Roboto, sans-serif; font-size: 15.84px;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Đơn vị tính: viên</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Mã sản phẩm: 2365</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Kích thước: 300 X 600mm</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Thương hiệu: WallArt</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bề mặt: Bóng – Mạ vàng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Chất liệu: Ceramic</li><li></li></ul>', NULL, '', 60.00, NULL, 11, 17, 15, 'No', 'SKU-017', 'Barcode-017', 'No', NULL, 1, '2024-05-15 21:05:09', '2024-05-15 21:05:09'),
(36, 'Gạch Ống 2 Lỗ 4x8x18', 'gach-ong-2-lo-4x8x18', NULL, '<p>Đơn vị tính: Viên</p>', NULL, '', 1.30, 1.50, 4, 18, 16, 'No', 'SKU-018', 'Barcode-018', 'No', NULL, 1, '2024-05-15 21:14:47', '2024-05-15 21:14:47'),
(37, 'Gạch Ống 4 Lỗ 8x18x18', 'gach-ong-4-lo-8x18x18', NULL, NULL, NULL, '', 1.50, 1.60, 4, 18, 16, 'No', 'SKU-019', 'Barcode-019', 'No', NULL, 1, '2024-05-15 21:19:57', '2024-05-15 21:19:57'),
(38, 'Cát Vàng Xây Tô', 'cat-vang-xay-to', NULL, '<p>Đơn vị tính:&nbsp;m3</p><p>Giá sẽ được cập nhập liên tục theo thị trường</p><p><span style=\"background-color: rgba(0, 0, 0, 0.05); color: rgb(51, 51, 51); font-family: system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 1rem;\"><br></span></p>', NULL, '', 150.00, 1.60, 42, 19, 16, 'No', 'SKU-020', 'Barcode-020', 'No', NULL, 1, '2024-05-15 21:25:26', '2024-05-15 21:25:26'),
(39, 'Cát Nền', 'cat-nen', NULL, '<p>Đơn vị tính:&nbsp;m3</p><p>Giá sẽ được cập nhập liên tục theo thị trường</p><div><br></div>', NULL, '', 210.00, 1.60, 42, 19, 16, 'No', 'SKU-021', 'Barcode-021', 'No', NULL, 1, '2024-05-15 21:29:17', '2024-05-15 21:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(20, 21, '21-20-1714887884.jpg', NULL, '2024-05-04 22:44:44', '2024-05-04 22:44:44'),
(21, 20, '20-21-1714887911.png', NULL, '2024-05-04 22:45:11', '2024-05-04 22:45:11'),
(23, 18, '18-23-1714887955.jpg', NULL, '2024-05-04 22:45:55', '2024-05-04 22:45:55'),
(25, 22, '22-25-1714890790.png', NULL, '2024-05-04 23:33:10', '2024-05-04 23:33:10'),
(26, 23, '23-26-1714890993.png', NULL, '2024-05-04 23:36:33', '2024-05-04 23:36:33'),
(27, 24, '24-27-1714892299.jpg', NULL, '2024-05-04 23:58:19', '2024-05-04 23:58:19'),
(28, 25, '25-28-1714892376.jpg', NULL, '2024-05-04 23:59:36', '2024-05-04 23:59:36'),
(29, 26, '26-29-1714892414.jpg', NULL, '2024-05-05 00:00:14', '2024-05-05 00:00:14'),
(34, 19, '19-34-1715443490.jpg', NULL, '2024-05-11 09:04:50', '2024-05-11 09:04:50'),
(35, 29, '29-35-1715444141.png', NULL, '2024-05-11 09:15:41', '2024-05-11 09:15:41'),
(36, 28, '28-36-1715444654.jpg', NULL, '2024-05-11 09:24:14', '2024-05-11 09:24:14'),
(37, 31, '31-37-1715830080.jpg', NULL, '2024-05-15 20:28:00', '2024-05-15 20:28:00'),
(38, 32, '32-38-1715831083.jpg', NULL, '2024-05-15 20:44:43', '2024-05-15 20:44:43'),
(39, 33, '33-39-1715831617.jpg', NULL, '2024-05-15 20:53:37', '2024-05-15 20:53:37'),
(40, 34, '34-40-1715832162.jpg', NULL, '2024-05-15 21:02:42', '2024-05-15 21:02:42'),
(41, 35, '35-41-1715832309.jpg', NULL, '2024-05-15 21:05:09', '2024-05-15 21:05:09'),
(42, 36, '36-42-1715832903.jpg', NULL, '2024-05-15 21:15:03', '2024-05-15 21:15:03'),
(43, 37, '37-43-1715833197.jpg', NULL, '2024-05-15 21:19:57', '2024-05-15 21:19:57'),
(44, 38, '38-44-1715833526.jpg', NULL, '2024-05-15 21:25:26', '2024-05-15 21:25:26'),
(45, 39, '39-45-1715833757.jpg', NULL, '2024-05-15 21:29:17', '2024-05-15 21:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country_id`, `amount`, `created_at`, `updated_at`) VALUES
(11, '31', 40.00, '2024-05-11 07:55:42', '2024-05-11 08:11:33'),
(12, 'rest_of_world', 60.00, '2024-05-11 07:55:54', '2024-05-11 07:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `showHome` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(7, 'Sơn phủ', 'son-phu', 1, 'No', 2, '2024-05-02 07:48:20', '2024-05-09 10:39:33'),
(8, 'Sơn chống thấm', 'son-chong-tham', 1, 'No', 2, '2024-05-02 07:48:34', '2024-05-02 07:48:34'),
(10, 'Ngói màu', 'ngoi-mau', 1, 'No', 1, '2024-05-02 07:57:52', '2024-05-02 07:57:52'),
(11, 'Thép hình', 'thep-hinh', 1, 'No', 6, '2024-05-02 08:06:40', '2024-05-02 08:06:40'),
(12, 'Gạch ốp lát', 'gach-op-lat', 1, 'Yes', 11, '2024-05-02 20:19:18', '2024-05-04 23:46:10'),
(13, 'Thép carbon', 'thep-carbon', 1, 'Yes', 6, '2024-05-04 22:42:13', '2024-05-04 22:42:13'),
(14, 'Tôn lấy sáng', 'ton-lay-sang', 0, 'Yes', 1, '2024-05-15 20:00:02', '2024-05-15 20:12:03'),
(15, 'Xi măng đa dụng', 'xi-mang-da-dung', 1, 'Yes', 5, '2024-05-15 20:20:50', '2024-05-15 20:20:50'),
(16, 'Xi măng xây tô', 'xi-mang-xay-to', 1, 'Yes', 5, '2024-05-15 20:42:42', '2024-05-15 20:42:42'),
(17, 'Gạch trang trí', 'gach-trang-tri', 1, 'Yes', 11, '2024-05-15 20:55:11', '2024-05-15 20:55:11'),
(18, 'Gạch ống', 'gach-ong', 1, 'No', 4, '2024-05-15 21:08:02', '2024-05-15 21:08:02'),
(19, 'Cát xây dựng', 'cat-xay-dung', 1, 'No', 42, '2024-05-15 21:23:07', '2024-05-15 21:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(62, '1714485914.png', '2024-04-30 07:05:14', '2024-04-30 07:05:14'),
(63, '1714486022.png', '2024-04-30 07:07:02', '2024-04-30 07:07:02'),
(64, '1714486154.png', '2024-04-30 07:09:14', '2024-04-30 07:09:14'),
(65, '1714486571.png', '2024-04-30 07:16:11', '2024-04-30 07:16:11'),
(66, '1714486927.png', '2024-04-30 07:22:07', '2024-04-30 07:22:07'),
(87, '1714835817.png', '2024-05-04 08:16:57', '2024-05-04 08:16:57'),
(88, '1714887836.jpg', '2024-05-04 22:43:56', '2024-05-04 22:43:56'),
(89, '1714890769.png', '2024-05-04 23:32:49', '2024-05-04 23:32:49'),
(90, '1714890985.png', '2024-05-04 23:36:25', '2024-05-04 23:36:25'),
(91, '1714892268.jpg', '2024-05-04 23:57:48', '2024-05-04 23:57:48'),
(92, '1714892361.jpg', '2024-05-04 23:59:21', '2024-05-04 23:59:21'),
(93, '1714892406.jpg', '2024-05-05 00:00:06', '2024-05-05 00:00:06'),
(94, '1715266805.jpg', '2024-05-09 08:00:05', '2024-05-09 08:00:05'),
(95, '1715266937.jpg', '2024-05-09 08:02:17', '2024-05-09 08:02:17'),
(96, '1715277180.jpg', '2024-05-09 10:53:00', '2024-05-09 10:53:00'),
(97, '1715277548.jpg', '2024-05-09 10:59:08', '2024-05-09 10:59:08'),
(98, '1715278076.jpg', '2024-05-09 11:07:56', '2024-05-09 11:07:56'),
(99, '1715278101.jpg', '2024-05-09 11:08:21', '2024-05-09 11:08:21'),
(100, '1715278159.png', '2024-05-09 11:09:19', '2024-05-09 11:09:19'),
(101, '1715278184.jpg', '2024-05-09 11:09:44', '2024-05-09 11:09:44'),
(102, '1715444837.png', '2024-05-11 09:27:17', '2024-05-11 09:27:17'),
(103, '1715444902.jpg', '2024-05-11 09:28:22', '2024-05-11 09:28:22'),
(104, '1715444985.jpg', '2024-05-11 09:29:45', '2024-05-11 09:29:45'),
(105, '1715445414.jpg', '2024-05-11 09:36:54', '2024-05-11 09:36:54'),
(106, '1715445940.jpg', '2024-05-11 09:45:40', '2024-05-11 09:45:40'),
(107, '1715829978.jpg', '2024-05-15 20:26:18', '2024-05-15 20:26:18'),
(108, '1715830892.jpg', '2024-05-15 20:41:32', '2024-05-15 20:41:32'),
(109, '1715831080.jpg', '2024-05-15 20:44:40', '2024-05-15 20:44:40'),
(110, '1715831583.jpg', '2024-05-15 20:53:03', '2024-05-15 20:53:03'),
(111, '1715832137.jpg', '2024-05-15 21:02:17', '2024-05-15 21:02:17'),
(112, '1715832287.jpg', '2024-05-15 21:04:47', '2024-05-15 21:04:47'),
(113, '1715833175.jpg', '2024-05-15 21:19:35', '2024-05-15 21:19:35'),
(114, '1715833497.jpg', '2024-05-15 21:24:57', '2024-05-15 21:24:57'),
(115, '1715833732.jpg', '2024-05-15 21:28:52', '2024-05-15 21:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', NULL, 2, NULL, '$2y$10$epb78Qj/jykljlTMdnP3z.u7TXhi8AkRrrtm8EHrkhTScUHTqeMWG', NULL, '2024-03-17 06:56:47', '2024-03-17 06:56:47'),
(2, 'Ngan Bui', 'nganbui@example.com', NULL, 1, NULL, '$2y$10$jKlSjgorkfJwuKng22zG9O65QGbkEhM0oaqAXZC3Mg9Aux2ZhoEU.', NULL, '2024-03-17 07:03:14', '2024-03-17 07:03:14'),
(3, 'Bao Ngoc', 'baongoc@example.com', '0374822130', 1, NULL, '$2y$10$7qBGNVBGsoO1XuOpO3uml.Vo78rxIMXpfvWX8UMAxzTalfQ7tVWFu', NULL, '2024-05-07 06:04:43', '2024-05-07 06:04:43'),
(4, 'Tuan Kiet', 'TuanKiet@gmail.com', '0374824526', 1, NULL, '$2y$10$RFznMw250kRT5sJEB.Fon.YW0lpjdzwurVgz8MozKsPvekIfNE1nS', NULL, '2024-05-07 06:45:57', '2024-05-07 06:45:57'),
(5, 'An Nguyen', 'annguyen@gmail.com', '0397849322', 1, NULL, '$2y$10$F.D80xNxe7Gcq2koUzADgesmckm3eSGgB3G4YLPdouO1Ze.kZ/8UO', NULL, '2024-05-09 04:10:33', '2024-05-09 04:10:33'),
(6, 'Le Nguyen', 'lenguyen@example.com', '0928358632', 1, NULL, '$2y$10$YPLiJfk/EbFk5YCY0gBvcObZgsZSbq79Df6SV4LeCLDkhfpIv327u', NULL, '2024-05-09 07:15:29', '2024-05-09 07:15:29'),
(7, 'anhnguyen', 'anhnguyen@gmail.com', '0397849322', 1, NULL, '$2y$10$H5b4AL7kbFhN9NhL9K9Y3OU/cX9gwFvXWoRq113ofxMsGDcvw5/jO', NULL, '2024-05-09 07:53:13', '2024-05-09 07:53:13'),
(8, 'Phương Anh', 'phuonganh@gmail.com', '035475353', 1, NULL, '$2y$10$a7cKiXNFBLitAB/D7H/J7uDusu/50jInorkC.7fhd9qPBqnTqGD.K', NULL, '2024-05-09 11:34:43', '2024-05-09 11:34:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_user_id_foreign` (`user_id`),
  ADD KEY `customer_addresses_country_id_foreign` (`country_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_country_id_foreign` (`country_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
