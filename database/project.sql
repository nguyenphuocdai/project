-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2017 at 09:28 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `describe` longtext COLLATE utf8_unicode_ci,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `alias`, `describe`, `keywords`, `created_at`, `updated_at`) VALUES
(4, 'Bó Lavender', 'Bo-Lavender', 'Bó Lavender', 'Bó Lavender', '2017-03-21 08:03:07', '2017-03-21 08:03:07'),
(5, 'Túi Thơm Lavender', 'Tui-Thom-Lavender', 'Túi Thơm Lavender', 'Túi Thơm Lavender', '2017-03-21 08:04:17', '2017-03-21 08:04:17'),
(6, 'Lọ Hoa Lavender', 'Lo-Hoa-Lavender', 'Lọ Hoa Lavender', 'Lọ Hoa Lavender', '2017-03-21 08:04:27', '2017-03-21 08:04:27'),
(7, 'Tinh Dầu', 'Tinh-Dau', 'Tinh Dầu', 'Tinh Dầu', '2017-03-21 08:27:16', '2017-03-21 08:27:16'),
(8, 'Hoa Cưới Lavender', 'Hoa-Cuoi-Lavender', 'Hoa Cưới Lavender', 'Hoa Cưới Lavender', '2017-03-21 08:28:57', '2017-03-21 08:28:57'),
(9, 'Hộp Quà Lavender', 'Hop-Qua-Lavender', 'Hộp Quà Lavender', 'Hộp Quà Lavender', '2017-03-22 04:33:03', '2017-03-22 04:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_comment` datetime NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `username`, `email`, `password`, `address`, `phone_number`, `thumbnail`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đại', 'dai', 'khaquy0911@gmail.com', '$2y$10$M0adL0Oh0Qo6rnlM4y6O1OLCZ9uG2pnY.Qt/ZmwnD82IO6UHbcer2', 'Long Xuyến', '933588295', NULL, 'SGNgVyoJPDnCBcTmsfGx2Z9yVNJib5o6ZPafAy29x2J7rOI7BIMluLNR9dVz', '2017-03-21 09:31:29', '2017-03-26 07:29:56'),
(2, 'Nguyễn Linh', 'linh', 'linh@gmail.com', '$2y$10$2USvymKIisuGiYJyjocX8.M0fXa5zudip5LHVh2e7SU6QfjSWs3Ym', 'An Giang', '933588295', NULL, 'kfcRKxirsqdX5MXfi6lDfoxPwCRKV30K0fNTc3CC', '2017-03-21 09:33:30', '2017-03-21 09:33:30'),
(3, 'Nguyễn Đại', 'daingu', 'khaquy09113@gmail.com', '$2y$10$kQjDMaD5nazStf0EKu9w3evGMcbT0.93KPxCXCG.ene6aLV3/lxGq', 'Sóc Trăng', '0933588295', NULL, 'h2KwrJwMVPe2sJXdAS9iahzS45Bh0w0eY8Q4iBKV', '2017-03-24 05:50:49', '2017-03-24 05:50:49'),
(4, 'Khách Hàng', 'username', 'khaquy09115@gmail.com', '$2y$10$9o50mRRX/Ejv9PK04aEM8uSY8tmARX5ngJixtX3/nck/6D30d4vDW', 'Cần Thơ', '0933588295', NULL, 'exIMQOUMMnNSBRQBUjhVTXLBtkLtYqqGl2fKlknTsphBkrAM7jhjffMXmxuh', '2017-03-26 06:35:14', '2017-03-26 07:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2016_12_08_131259_categories', 1),
(34, '2016_12_30_144939_customers', 1),
(35, '2016_12_30_150109_products', 1),
(36, '2016_12_30_152710_promotions', 2),
(37, '2016_12_30_153152_promotions_detail', 2),
(39, '2016_12_30_153646_news', 3),
(41, '2016_12_30_153656_images', 4),
(42, '2016_12_30_155233_comments', 4),
(43, '2016_12_30_160208_orders', 5),
(45, '2016_12_30_160215_orders_detail', 6);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `datesigned` datetime DEFAULT NULL,
  `address_receive` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `status`, `datesigned`, `address_receive`, `customer_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2017-03-21 16:39:39', '0', 2, '2017-03-21 09:37:33', '2017-03-21 09:37:33'),
(3, 1, 1, '2017-03-21 16:41:34', '0', 1, '2017-03-21 09:41:17', '2017-03-21 09:41:17'),
(4, 1, 1, '2017-03-23 12:50:58', '0', 1, '2017-03-23 05:50:07', '2017-03-23 05:50:07'),
(5, 1, 1, '2017-03-24 09:19:56', '0', 1, '2017-03-23 06:10:23', '2017-03-23 06:10:23'),
(8, 1, 1, '2017-03-24 09:24:42', '0', 1, '2017-03-24 02:24:10', '2017-03-24 02:24:10'),
(20, 1, 1, '2017-03-24 16:18:28', '0', 1, '2017-03-24 08:25:32', '2017-03-24 08:25:32'),
(21, 1, 1, '2017-03-24 16:18:25', '0', 1, '2017-03-24 09:12:49', '2017-03-24 09:12:49'),
(22, 1, 1, '2017-03-24 16:18:22', '0', 1, '2017-03-24 09:17:00', '2017-03-24 09:17:00'),
(94, NULL, 0, NULL, '144 Long Xuyên, An Giang', 4, '2017-03-26 06:35:59', '2017-03-26 06:35:59'),
(102, NULL, 0, NULL, 'Sóc Trăng', 4, '2017-03-26 07:01:47', '2017-03-26 07:01:47'),
(104, NULL, 0, NULL, '145 Long Xuyên, An Giang', 4, '2017-03-26 07:12:03', '2017-03-26 07:12:03'),
(105, NULL, 0, NULL, 'Cần Thơ', 1, '2017-03-26 07:14:28', '2017-03-26 07:14:28'),
(107, NULL, 0, NULL, '30/4 Quận Ninh Kiều, TP CT', 1, '2017-03-26 07:22:07', '2017-03-26 07:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `note` int(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`product_id`, `order_id`, `quantity`, `price`, `total`, `note`, `created_at`, `updated_at`) VALUES
(6, 2, 1, 150000, 150000, 0, '2017-03-21 09:37:33', '2017-03-21 09:37:33'),
(11, 3, 1, 250000, 250000, 0, '2017-03-21 09:41:18', '2017-03-21 09:41:18'),
(27, 4, 2, 320000, 640000, 0, '2017-03-23 05:50:07', '2017-03-23 05:50:07'),
(24, 4, 2, 300000, 600000, 0, '2017-03-23 05:50:07', '2017-03-23 05:50:07'),
(27, 5, 3, 320000, 960000, 0, '2017-03-23 06:10:23', '2017-03-23 06:10:23'),
(25, 8, 1, 250000, 250000, 0, '2017-03-24 02:24:10', '2017-03-24 02:24:10'),
(10, 20, 1, 300000, 300000, 0, '2017-03-24 08:25:32', '2017-03-24 08:25:32'),
(27, 21, 3, 320000, 960000, 0, '2017-03-24 09:12:50', '2017-03-24 09:12:50'),
(9, 22, 1, 110000, 110000, 0, '2017-03-24 09:17:00', '2017-03-24 09:17:00'),
(4, 94, 21, 100000, 2100000, -11, '2017-03-26 06:35:59', '2017-03-26 06:35:59'),
(4, 102, 4, 100000, 400000, -4, '2017-03-26 07:01:48', '2017-03-26 07:01:48'),
(4, 104, 5, 100000, 500000, -5, '2017-03-26 07:12:03', '2017-03-26 07:12:03'),
(4, 105, 4, 100000, 400000, -4, '2017-03-26 07:14:28', '2017-03-26 07:14:28'),
(27, 107, 1, 320000, 320000, 0, '2017-03-26 07:22:08', '2017-03-26 07:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `discount` int(11) DEFAULT '0',
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT '1',
  `rate` int(11) DEFAULT NULL,
  `highlight` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` longtext COLLATE utf8_unicode_ci,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `alias`, `price`, `quantity`, `discount`, `origin`, `view`, `rate`, `highlight`, `image`, `keywords`, `size`, `describe`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 'Bó Lavender Nhỏ', 'Bo-Lavender-Nho', 100000, 0, NULL, 'Pháp', 31, NULL, NULL, 'z614208267973_d77a3efc6735116700d21944a0fa42c7.jpg', 'Bó Lavender Nhỏ', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm gồm 80 c&agrave;nh lavender kết hợp với snowy v&agrave;ng g&oacute;i phong c&aacute;ch Vintage tạo n&ecirc;n b&oacute; hoa thật dễ thương.</span></span></p>\r\n', 1, 4, '2017-03-21 08:39:21', '2017-03-26 09:27:32'),
(5, 'Bó Lavender 1', 'Bo-Lavender-1', 120000, 99, NULL, 'Pháp', 6, NULL, NULL, 'z614208300653_f7057d04aa80c72b1335091be2216c2e.jpg', 'Bó Lavender 1', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm gồm 100 c&agrave;nh lavender g&oacute;i với phong c&aacute;ch Vintage tạo n&ecirc;n b&oacute; hoa mini dễ thương.</span></span></p>\r\n', 1, 4, '2017-03-21 08:39:53', '2017-03-26 09:25:56'),
(6, 'Bó Lavender Mix Hồng', 'Bo-Lavender-Mix-Hong', 150000, 98, NULL, 'Pháp', 32, NULL, NULL, 'z614208309452_0ee27f7a3cfacc18bd8f825396980e57.jpg', 'Bó Lavender Mix Hồng', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 100c&agrave;nh lavender kết hợp với &iacute;t babygrom trắng&nbsp;v&agrave; hoa hồng đỏ vĩnh cửu tạo n&ecirc;n b&oacute; hoa&nbsp;với phong c&aacute;ch&nbsp;cổ điển.</span></span></p>\r\n', 1, 4, '2017-03-21 08:40:44', '2017-03-26 09:24:55'),
(7, 'Lavender Mix Hồng Vàng', 'Lavender-Mix-Hong-Vang', 150000, 100, NULL, 'Pháp', 2, NULL, NULL, 'z614208317029_280d04f4e8aca9adeaea8c5ef0874291.jpg', 'Lavender Mix Hồng Vàng', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 200 c&agrave;nh lavender kết hợp với &iacute;t babygrom n&acirc;u v&agrave; hoa hồng v&agrave;ng vĩnh cửu tạo n&ecirc;n b&oacute; hoa&nbsp;cổ điển.</span></span></p>\r\n', 1, 4, '2017-03-21 08:41:36', '2017-03-26 09:24:00'),
(8, 'Lavender Mix Babygrom', 'Lavender-Mix-Babygrom', 220000, 100, NULL, 'Pháp', 1, NULL, NULL, 'z614208319945_e9a9cb1e36dada20a0c0e51f91e16b2c.jpg', 'Lavender Mix Babygrom', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 300 c&agrave;nh lavender kết hợp với &iacute;t babygrom n&acirc;u g&oacute;i với phong c&aacute;ch Vintage&nbsp;cổ điển.</span></span></p>\r\n', 1, 4, '2017-03-21 08:42:31', '2017-03-26 09:18:39'),
(9, 'Lavender Mix Mini', 'Lavender-Mix-Mini', 110000, 99, NULL, 'Pháp', 6, NULL, NULL, 'z614208323685_b982ef25742a55c3782742077806ee6e.jpg', 'Lavender Mix Mini', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm: 80 c&agrave;nh lavender kết hợp với c&uacute;c v&agrave;ng nhỏ v&agrave; babygrom n&acirc;u tạo n&ecirc;n m&oacute;n qu&agrave; nhỏ dễ thương.</span></span></p>\r\n', 1, 4, '2017-03-21 08:43:05', '2017-03-26 09:17:51'),
(10, 'Bó Lavender Giấy Tím', 'Bo-Lavender-Giay-Tim', 300000, 98, NULL, 'Pháp', 7, NULL, NULL, 'z614208442739_70e70d7d176eb2c3c702ad9b6897194a.jpg', 'Bó Lavender Giấy Tím', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">B&oacute; Lavender giấy t&iacute;m sự kết hợp giấy vải m&agrave;u t&iacute;m v&agrave; 350 c&agrave;nh lavender cho một m&agrave;u t&iacute;m l&atilde;ng mạn.</span></span></p>\r\n', 1, 4, '2017-03-21 08:44:39', '2017-03-26 09:16:32'),
(11, 'Lavender Mix Hồng Phấn', 'Lavender-Mix-Hong-Phan', 250000, 99, NULL, 'Pháp', 4, NULL, NULL, 'z614208443617_7274b9e4157f0080498cd0248d695bcb.jpg', 'Lavender Mix Hồng Phấn', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 200 c&agrave;nh lavender kết hợp với &iacute;t babygrom v&agrave; hoa hồng vĩnh cửu t&iacute;m tạo n&ecirc;n b&oacute; hoa với phong c&aacute;ch&nbsp;cổ điển.</span></span></p>\r\n', 1, 4, '2017-03-21 08:45:45', '2017-03-26 09:13:54'),
(12, 'Bó Lavender Vintage', 'Bo-Lavender-Vintage', 400000, 100, NULL, 'Pháp', 2, NULL, NULL, 'z614208444694_9e70019c3f025dfc37883c92b82cab7b.jpg', 'Bó Lavender Vintage', NULL, '<p>B&oacute; Lavender Vintage với 400 c&agrave;nh lavender g&oacute;i với phong c&aacute;ch cổ điển tạo n&ecirc;n b&oacute; hoa to v&agrave; m&agrave;u t&iacute;m cổ điển.</p>\r\n', 1, 4, '2017-03-21 08:46:14', '2017-03-26 09:12:59'),
(13, 'Lọ Lavender Mini', 'Lo-Lavender-Mini', 100000, 100, 0, 'Pháp', 1, NULL, NULL, 'z614208472584_9711d3c73092bf70d3ab9314a10ee1d8.jpg', 'Lọ Lavender Mini', NULL, 'Lọ Lavender Mini', 1, 6, '2017-03-21 08:47:20', '2017-03-21 08:47:20'),
(14, 'Bó Lavender Mix Snowy', 'Bo-Lavender-Mix-Snowy', 150000, 100, NULL, 'Pháp', 2, NULL, NULL, '534118_1771601769728323_3237173349324386820_n.jpg', 'Bó Lavender Mix Snowy', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 100 c&agrave;nh lavender kết hợp với &iacute;t snowy đủ m&agrave;u + hoa tuyết tạo n&ecirc;n sự h&agrave;i h&ograve;a m&agrave;u sắc cho b&oacute; hoa th&ecirc;m sinh động.</span></span></p>\r\n', 1, 4, '2017-03-22 04:34:38', '2017-03-26 09:11:26'),
(15, 'Hộp Quà Lavender 1', 'Hop-Qua-Lavender-1', 320000, 100, NULL, 'Pháp', 2, NULL, NULL, '535336_1753363744885459_7187678327855069652_n.jpg', 'Hộp Quà Lavender 1', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm bao gồm 200 c&agrave;nh lavender kết hợp với &iacute;t babygrom n&acirc;u đựng trong hộp handmade tạo n&ecirc;n hộp qu&agrave; thật cổ điển.</span></span></p>\r\n', 1, 9, '2017-03-22 04:35:22', '2017-03-26 09:10:00'),
(16, 'Lavender Mix Snowy ', 'Lavender-Mix-Snowy', 400000, 100, NULL, 'Pháp', 3, NULL, NULL, '1916732_1773298766225290_8687786195091098204_n.jpg', 'Lavender Mix Snowy ', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 350 c&agrave;nh lavender kết hợp với snowy v&agrave;ng tạo n&ecirc;n sự h&agrave;i h&ograve;a về m&agrave;u sắc của b&oacute; hoa.</span></span></p>\r\n', 1, 4, '2017-03-22 04:35:56', '2017-03-26 09:08:32'),
(17, 'Lavender Mix Blue Rose', 'Lavender-Mix-Blue-Rose', 550000, 100, NULL, 'Pháp', 30, NULL, NULL, '1931283_1765653826989784_4312672697736837730_n.jpg', 'Lavender Mix Blue Rose', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm bao gồm: 300 c&agrave;nh lavender v&agrave; 3 hoa hồng xanh vĩnh cửu kết hợp với giấy b&aacute;o cổ điển tạo n&ecirc;n phong c&aacute;ch vintage thật tuyệt vời.</span></span></p>\r\n', 1, 4, '2017-03-22 04:36:24', '2017-03-26 09:05:11'),
(18, 'Lavender Mix 1 Blue Rose', 'Lavender-Mix-1-Blue-Rose', 200000, 100, NULL, 'Pháp', 3, NULL, NULL, '10389338_1770282893193544_640311356055518650_n.jpg', 'Lavender Mix 1 Blue Rose', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm gồm: 200 c&agrave;nh lavender + hoa hồng xanh vĩnh cửu với sự kết hợp với giấy t&iacute;m tạo n&ecirc;n một b&oacute; hoa thật tuyệt vời cho người y&ecirc;u m&agrave;u t&iacute;m.</span></span></p>\r\n', 2, 4, '2017-03-22 04:37:37', '2017-03-26 09:03:26'),
(19, 'Lọ Lavender Mini 2', 'Lo-Lavender-Mini-2', 100000, 100, NULL, 'Pháp', 1, NULL, NULL, '11205037_1762835213938312_7572129618388325356_n.jpg', 'Lọ Lavender Mini 2', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Lọ Lavender Mini với 50 c&agrave;nh lavender v&agrave; lọ thủy tinh nhỏ. D&ugrave;ng để trưng trong ph&ograve;ng kh&aacute;ch b&agrave;n học.</span></span></p>\r\n', 2, 6, '2017-03-22 04:38:53', '2017-03-26 09:02:03'),
(20, 'Túi Thơm & Hộp', 'Tui-Thom-&-Hop', 150000, 100, NULL, 'Pháp', 4, NULL, NULL, '12376853_1777237425831424_1967331709182184817_n.jpg', 'Túi Thơm & Hộp', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm gồm: t&uacute;i thơm &amp; hộp. M&oacute;n qu&agrave; mini cho cuộc sống th&ecirc;m tươi đẹp.</span></span></p>\r\n', 2, 5, '2017-03-22 04:39:28', '2017-03-26 09:01:25'),
(24, 'Hộp Quà Lavender 3', 'Hop-Qua-Lavender-3', 300000, 99, NULL, 'Pháp', 3, NULL, NULL, '12790910_1765963293625504_4171092201010567396_n.jpg', 'Hộp Quà Lavender 3', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm: Hộp handmade + t&uacute;i thơm + 250 c&agrave;nh lavender kết hợp với hoa hồng xanh vĩnh cửu v&agrave; hoa tuyết. M&oacute;n qu&agrave; tuyệt vời cho tất cả c&aacute;c dịp.</span></span></p>\r\n', 2, 9, '2017-03-22 04:41:47', '2017-03-26 09:00:30'),
(25, 'Lọ Lavender Lớn', 'Lo-Lavender-Lon', 250000, 99, NULL, 'Pháp', 2, NULL, NULL, '12790956_1767311350157365_7974970266926563894_n.jpg', 'Lọ Lavender Lớn', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm lọ lavender lớn bao gồm 250 c&agrave;nh lavender, hoa tuyết, hoa hồng ở t&acirc;m v&agrave; lo thủy tinh.</span></span></p>\r\n', 2, 6, '2017-03-22 04:42:47', '2017-03-26 08:59:13'),
(26, 'Lavender & 3 Red Rose', 'Lavender-&-3-Red-Rose', 400000, 99, NULL, 'Pháp', 12, NULL, NULL, '12794450_1767410800147420_5926584710392613445_n.jpg', 'Lavender & 3 Red Rose', NULL, '<p style=\"text-align: justify;\"><span style=\"color:#000000\"><span style=\"font-size:16px\">B&oacute; Lavender với phong c&aacute;ch cổ điển được g&oacute;i giấy b&aacute;o kiểu Vintage kết hợp 3 b&ocirc;ng hồng vĩnh cửu m&agrave;u đỏ v&agrave; nền hoa tuyết m&agrave;u trắng t&ocirc;n l&ecirc;n vẻ đẹp cổ điển của b&oacute; hoa.</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000\"><span style=\"font-size:16px\">Với những người th&iacute;ch phong c&aacute;ch Vintage đ&acirc;y chắc hẳn l&agrave; một b&oacute; hoa tuyệt vời !&nbsp;</span></span></p>\r\n', 2, 4, '2017-03-22 04:43:31', '2017-03-26 08:52:13'),
(27, 'Hoa Cưới 2', 'Hoa-Cuoi-2', 320000, 94, NULL, 'Pháp', 16, NULL, NULL, '12804768_1766611866893980_4787498596380245672_n.jpg', 'Hoa Cưới 2', NULL, '<p><span style=\"font-size:16px\"><strong>B&oacute; hoa cưới</strong> với trung t&acirc;m được b&oacute; từ Lavender, xung quanh kết hợp với c&aacute;c loại đu&ocirc;i thỏ v&agrave; l&uacute;a mạch trắng g&oacute;i k&egrave;m với giấy g&oacute;i m&agrave;u t&iacute;m trong v&agrave; trắng b&ecirc;n ngo&agrave;i t&ocirc;n l&ecirc;n vẻ đẹp sang trọng của b&oacute; hoa, l&agrave;m nổi bật l&ecirc;n vẻ đẹp v&agrave; sang trọng của người cầm n&oacute;.&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, 8, '2017-03-22 04:44:32', '2017-03-26 08:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `phone_number`, `thumbnail`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'quy', 'khaquy09112@gmail.com', '$2y$10$jIVaLNPpmZBMiedC6umH/uRzT.M/msG2nN1PRPjhgE61UA/xu79VS', 0, NULL, 1, '67TvV915mRGzB5XjNok2c4b7viYht2rKnDnnElUAjh9F6mkGBan4wLevgrze', NULL, '2017-03-23 05:48:18'),
(2, 'kha', 'kha@gmail.com', '$2y$10$Kefud/kNN9Mgvutw8urMeeuiCMdILW5iSyxqx4AJ3o6dqpXWpaWBK', NULL, NULL, 1, 'kfcRKxirsqdX5MXfi6lDfoxPwCRKV30K0fNTc3CC', '2017-03-21 08:25:40', '2017-03-21 08:25:40'),
(3, 'tkthuong', 'tkthuong@gmail.com', '$2y$10$gS4GiFrtt0Lvy/bPe5QxbecmQxEb.rk7HQIPgSeT0OWpuZqmH4Zg2', NULL, NULL, 0, 'kfcRKxirsqdX5MXfi6lDfoxPwCRKV30K0fNTc3CC', '2017-03-21 08:26:12', '2017-03-21 08:26:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_customer_id_foreign` (`customer_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD KEY `orders_detail_product_id_foreign` (`product_id`),
  ADD KEY `orders_detail_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
