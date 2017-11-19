-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2017 lúc 09:11 AM
-- Phiên bản máy phục vụ: 10.1.22-MariaDB
-- Phiên bản PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `testdata`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` longtext COLLATE utf8_unicode_ci,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `alias`, `describe`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'THIẾT BỊ VỆ SINH', 'Thiet-Bi-Ve-Sinh', '2w12', 'trangtri,vattrangtri', '2017-11-19 03:37:48', '2017-11-19 03:37:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupondetails`
--

CREATE TABLE `coupondetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupondetails`
--

INSERT INTO `coupondetails` (`id`, `quantity`, `price`, `total`, `product_id`, `coupon_id`, `created_at`, `updated_at`) VALUES
(13, '10', '500000', '5000000', 1, 23, '2017-11-19 07:40:47', '2017-11-19 07:40:47'),
(14, '50', '500000', '25000000', 1, 24, '2017-11-19 07:56:35', '2017-11-19 07:56:35'),
(15, '50', '500000', '25000000', 2, 24, '2017-11-19 07:56:35', '2017-11-19 07:56:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `date`, `user_id`, `created_at`, `updated_at`) VALUES
(23, 'Phiếu KAT', '2017-11-19', 6, '2017-11-19 07:40:47', '2017-11-19 07:40:47'),
(24, 'Phiếu test', '2017-11-20', 6, '2017-11-19 07:56:35', '2017-11-19 07:56:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(68, '2014_10_12_000000_create_users_table', 1),
(69, '2014_10_12_100000_create_password_resets_table', 1),
(70, '2016_12_08_131259_categories', 1),
(71, '2016_12_30_144939_customers', 1),
(72, '2016_12_30_150109_products', 1),
(73, '2016_12_30_153646_news', 1),
(74, '2016_12_30_153656_images', 1),
(75, '2016_12_30_155233_comments', 1),
(76, '2016_12_30_160208_orders', 1),
(77, '2016_12_30_160215_orders_detail', 1),
(78, '2017_10_31_084248_create_notifications_table', 1),
(79, '2017_10_31_084612_emails', 1),
(80, '2017_11_18_104740_coupon', 1),
(81, '2017_11_18_105104_coupondetail', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) DEFAULT NULL,
  `phone_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `date_signed` datetime NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `highlight` longtext COLLATE utf8_unicode_ci,
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `name`, `alias`, `price`, `discount`, `quantity`, `origin`, `view`, `rate`, `highlight`, `image`, `keywords`, `size`, `describe`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Tranh thư pháp vẽ tay Ơn Thầy', 'Tranh-Thu-Phap-Ve-Tay-On-Thay', '500000', NULL, 87, 'Việt Nam', NULL, NULL, '<p>12312</p>\r\n', 'tranh.jpg', 'trangtri,vattrangtri', NULL, '<p>12312</p>\r\n', 6, 1, '2017-11-19 03:38:37', '2017-11-19 07:56:35'),
(2, 'Tranh trang trí tường', 'Tranh-Trang-Tri-Tuong', '500000', NULL, 306, 'Việt Nam', NULL, NULL, '<p>123123</p>\r\n', '1477630282691_4544185.jpg', '12312', NULL, '<p>12321</p>\r\n', 6, 1, '2017-11-19 05:26:40', '2017-11-19 07:56:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `github_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `phone_number`, `thumbnail`, `google_id`, `facebook_id`, `github_id`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'admin', 'hoanghoang360@gmail.com', '$2y$10$6Q8Z9r3m6uYl9j68l8ZtZOgidXeSAvODD3Y/j65nE7UL7H8.ThjRq', 933588295, '', '', '', '', 1, '1T3VyNUN1JcxEDrydH263NvufpypYuyhoWhfUzRiwJBaBSknCRm2rRxXTPlH', '2017-10-10 01:25:32', '2017-11-01 19:45:03'),
(9, 'user', 'tiodev2609@gmail.com', '$2y$10$of670tCkSoB1SAF3ZZEFruwKEJBJvJnxkFNS20hgPWWWcD/MI8RRq', 933588295, '', '', '', '', 0, 'L4iFB0Z13vi2tegkLk4ghk6uXCOoI8EYZNo22DTn0kgOfLJp7xB7UFGk6Tev', '2017-11-01 00:16:20', '2017-11-01 00:16:20'),
(25, 'gussie.walker', 'dheller@gmail.com', '$2y$10$F8YR1xOgZf3i7eZu7IF8fu7pSViESAjlxgm8Nmg9QDdKZ./dL4t/K', 274247, '', '', '', '', 1, NULL, '2017-11-01 07:54:18', '2017-11-01 07:54:18'),
(26, 'imills', 'otho.hirthe@yahoo.com', '$2y$10$HZWv4Qx/jH09CJrO/xhnr.yEPd5OrGyWZkZb.66p3iyqOxXCAHIW6', 557294, '', '', '', '', 1, NULL, '2017-11-01 07:54:18', '2017-11-01 07:54:18'),
(27, 'devonte.funk', 'ledner.toni@gmail.com', '$2y$10$/5gXqKTnDvgfLQgBZKJOae.aHfgOrckfau.Ji7eUKhP9MEfMhJegW', 912, '', '', '', '', 1, NULL, '2017-11-01 07:54:18', '2017-11-01 07:54:18'),
(28, 'hayes.lyda', 'gheidenreich@hammes.com', '$2y$10$k6spSJRoQYVpBRLu3c1SruwlbstRFK8V8J.YnckMMperlDnp8c7KS', 964, '', '', '', '', 1, NULL, '2017-11-01 07:54:18', '2017-11-01 07:54:18'),
(29, 'fay66', 'mcdermott.emelia@hotmail.com', '$2y$10$SxLRtHPjpUDq3QnIuDZNW.Ep1kq2NU/PwESyCCbZrVIW5Y9dCjbA6', 0, '', '', '', '', 1, NULL, '2017-11-01 07:54:18', '2017-11-01 07:54:18'),
(30, 'ebony.langworth', 'hschultz@wyman.info', '$2y$10$XDjYF.XepYsBR33IO4cfBeKTGE7ddLBiimmgqRhil2irdNFlD/sqa', 1227, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(31, 'david61', 'padberg.vicente@sporer.com', '$2y$10$aoODc4DUEzK.YEWSREKOoOHr39lasfjfQDDp7vFh.5YA49AVPXj1e', 521909, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(32, 'humberto.abbott', 'harvey.lori@roberts.com', '$2y$10$COWT1dvLMQ/oSI6Ndlc4FOMd5drcEj9NgXHI0J90ddfq3xFXyqrsC', 804, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(33, 'daugherty.colin', 'simonis.evie@goldner.com', '$2y$10$pF6h4q0hQVkUitUgSChZ9eeXuOJp3gKhmarlWa4qSyoubWIEyx8wy', 272, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(34, 'mathew47', 'jennifer.hudson@hotmail.com', '$2y$10$zqZvX3W8pshlg4sc1rzPs.mCvjCZrxgGYgHq6EDb.u.ALYxz.dfly', 1, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(35, 'probel', 'betsy23@trantow.net', '$2y$10$7KtfjnGERmMmhICFZghUsuJPz6/GeOgL0iY7qhXVXAM07wmmgL.BW', 678732, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(36, 'bernhard.olson', 'cbeatty@hotmail.com', '$2y$10$arI53XMdoGNAa4V3tF0EQ.h92q4USpSEDugP34FjLgWj1F5i8v8bi', 1, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(37, 'viola.ohara', 'anthony.cronin@roberts.com', '$2y$10$M3qfMN3N5k6sbLVdKxcri.OvMN6v49IhndGdkKzMwV.T.0U0jv7sq', 1, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(38, 'doyle.dubuque', 'klein.edna@hotmail.com', '$2y$10$NdVKHaY9n.P36v.ERiRTeO4Vh.qsaaCSMSzJD.LfgWHYL8CjwLkcy', 229686, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(39, 'misael97', 'jenifer83@oberbrunner.com', '$2y$10$TDURY8CDH/YyIIrm9ra74.7hy4b31wfNprcboq4MTaTmq/TppeZ2e', 913, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(40, 'morissette.avery', 'ucartwright@donnelly.com', '$2y$10$BX2lOWgrqEOSXYCGYexTGucQlgCU7CgA64Q8ka5LOqeVPFI6S7njW', 352, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(41, 'stamm.dell', 'sstreich@feeney.info', '$2y$10$X46.C5J0Ce/mABbiDFv3GeInhxRskhw6Kv0sOaJOiLIQHc4QQ8ctW', 0, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(42, 'kennedy12', 'maribel89@hotmail.com', '$2y$10$Eptt86LctDN0GzqD20zYRe3sIszgDskEoVcXpKOuLiL6SsPZC9S5.', 342, '', '', '', '', 0, NULL, '2017-11-01 07:55:26', '2017-11-01 07:55:26'),
(43, 'aschinner', 'gislason.barbara@gmail.com', '$2y$10$SKP2HL8.U4G0FzZaCb6kl.KvBKco9OT1TNyprMi7k0elQH.9pJD5a', 0, '', '', '', '', 0, NULL, '2017-11-01 07:55:27', '2017-11-01 07:55:27'),
(44, 'rodrick.walker', 'jimmie51@gmail.com', '$2y$10$mgMREORXOXvD3z77UgAA4.VYKVg8pg.aVmIaPTL4uKuxPj8etl2WG', 330931, '', '', '', '', 0, NULL, '2017-11-01 07:55:27', '2017-11-01 07:55:27'),
(45, 'josiane.schultz', 'yheaney@gmail.com', '$2y$10$/rnRoX.sJXE8VStmdpGUzOZbehGl94o7RVakLmc1zy8uh9C8U.4ia', 1, '', '', '', '', 0, NULL, '2017-11-01 07:55:27', '2017-11-01 07:55:27'),
(46, 'dietrich.noemy', 'gulgowski.pinkie@hotmail.com', '$2y$10$iCpZIhzFBqwzL86gv1yNO.IfuRHjDJGRTsNPAf9CeMZPyu2ZOl50u', 745894, '', '', '', '', 0, NULL, '2017-11-01 07:55:27', '2017-11-01 07:55:27'),
(47, 'oshields', 'hnicolas@kassulke.com', '$2y$10$YwOD1PGAaIzu0D4xF6A8E.WLCbMKbnuJURzVLLV/GtG9acGywE2WC', 0, '', '', '', '', 0, NULL, '2017-11-01 07:55:27', '2017-11-01 07:55:27'),
(48, 'nicolette53', 'mariela76@lesch.com', '$2y$10$j/387bkLhxQUPY4CyxAvHO86UdHzaybVv2bW5yo0cdkuCPQTpYDiq', 1, '', '', '', '', 0, NULL, '2017-11-01 07:55:27', '2017-11-01 07:55:27'),
(49, 'leuschke.tyson', 'heaney.jacky@stoltenberg.com', '$2y$10$CqCABGafeWTNnf2k1kwAVOTTk4dvl66WQ8BNaJ5W3GRHmmYxiIiUm', 1, '', '', '', '', 0, NULL, '2017-11-01 07:55:27', '2017-11-01 07:55:27');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_customer_id_foreign` (`customer_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `coupondetails`
--
ALTER TABLE `coupondetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupondetails_product_id_foreign` (`product_id`),
  ADD KEY `coupondetails_coupon_id_foreign` (`coupon_id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Chỉ mục cho bảng `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD KEY `orders_detail_product_id_foreign` (`product_id`),
  ADD KEY `orders_detail_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `coupondetails`
--
ALTER TABLE `coupondetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `coupondetails`
--
ALTER TABLE `coupondetails`
  ADD CONSTRAINT `coupondetails_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupondetails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
