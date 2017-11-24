-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2017 lúc 06:40 AM
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
(1, 'THIẾT BỊ VỆ SINH', 'Thiet-Bi-Ve-Sinh', 'Thiết bị vệ sinh gia dụng', 'thietbivesinh', '2017-11-19 10:37:43', '2017-11-19 14:02:06'),
(2, 'Thiết bị văn phòng', 'Thiet-Bi-Van-Phong', 'Thiết bị văn phòng', 'thietbivanphong', '2017-11-20 03:42:37', '2017-11-20 03:42:37');

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
(3, '5', '50000', '250000', 1, 5, '2017-11-20 03:19:39', '2017-11-20 03:19:39'),
(4, '5', '60000', '300000', 2, 5, '2017-11-20 03:19:39', '2017-11-20 03:19:39'),
(5, '5', '70000', '350000', 3, 5, '2017-11-20 03:19:39', '2017-11-20 03:19:39'),
(6, '5', '80000', '400000', 4, 5, '2017-11-20 03:19:39', '2017-11-20 03:19:39'),
(7, '4', '500000', '2000000', 3, 6, '2017-11-20 03:41:44', '2017-11-20 03:41:44'),
(8, '5', '200000', '1000000', 1, 6, '2017-11-20 03:41:44', '2017-11-20 03:41:44'),
(9, '10', '200000', '2000000', 1, 7, '2017-11-20 04:41:46', '2017-11-20 04:41:46'),
(10, '20', '50000', '1000000', 3, 8, '2017-11-21 08:53:23', '2017-11-21 08:53:23'),
(11, '20', '500000', '10000000', 1, 8, '2017-11-21 08:53:23', '2017-11-21 08:53:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `date`, `user_id`, `supplier_id`, `created_at`, `updated_at`) VALUES
(5, 'PN001', '2017-11-20', 6, 1, '2017-11-20 03:19:39', '2017-11-20 03:19:39'),
(6, 'Phiếu nội thất', '2017-11-20', 6, 2, '2017-11-20 03:41:44', '2017-11-20 03:41:44'),
(7, 'PN002', '2017-11-20', 6, 4, '2017-11-20 04:41:46', '2017-11-20 04:41:46'),
(8, 'P009', '2017-11-22', 6, 4, '2017-11-21 08:53:23', '2017-11-21 08:53:23');

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
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `username`, `email`, `password`, `address`, `phone_number`, `google_id`, `facebook_id`, `github_id`, `phone_social`, `thumbnail`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hoang Hoang', 'Hoang Hoang', 'hoanghoang360@gmail.com', '$2y$10$2OL0GRBXg9Iqvvo92V3D0eNJ9R06ZuH/HJajjc/XS176HgRSLp3ne', 'Nguyễn Thị minh khai', '09333588295', '113298330569852106717', NULL, NULL, NULL, NULL, '2JPEqqKfgowmuOlz9MNXFAg5oNfErDnU9OnL4DEBO3IOiXIN5Qwj9wbvHqYX', '2017-11-20 03:48:01', '2017-11-20 04:35:16'),
(2, 'Nguyễn Phước Đại', 'vicente001', 'tidodev2609@gmail.com', '$2y$10$qDmPReTpHU3NFOfuOTRnvufj2jEA1QtqPewxe9hRk6KUZngnIZkCG', 'Nguyễn Thị Minh Khai 271A', '0936965874', NULL, NULL, NULL, NULL, NULL, 'pCXQfwLnTlzlhSetuAizhjXEtH8Q3nyTrLJWhkch', '2017-11-20 04:43:40', '2017-11-20 04:43:40');

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

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`image_id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '1465887460419_4911053.jpg', 1, '2017-11-19 10:39:30', '2017-11-19 10:39:30');

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2016_12_08_131259_categories', 1),
(19, '2016_12_30_144939_customers', 1),
(20, '2016_12_30_150109_products', 1),
(21, '2016_12_30_153646_news', 1),
(22, '2016_12_30_153656_images', 1),
(23, '2016_12_30_155233_comments', 1),
(24, '2016_12_30_160208_orders', 1),
(25, '2016_12_30_160215_orders_detail', 1),
(26, '2017_10_31_084248_create_notifications_table', 1),
(27, '2017_10_31_084612_emails', 1),
(28, '2017_11_17_164410_supplier', 1),
(29, '2017_11_18_104740_coupon', 1),
(30, '2017_11_18_105104_coupondetail', 1);

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
  `datesigned` date DEFAULT NULL,
  `address_receive` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `status`, `datesigned`, `address_receive`, `payment`, `phone_social`, `user_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(16, 1, '2017-11-20', '', NULL, NULL, 6, 1, '2017-11-20 04:36:23', '2017-11-20 04:36:23'),
(19, NULL, '2017-11-20', 'Nguyễn Thị Minh Khai 271A', '1', '0936965874', NULL, 2, '2017-11-20 04:44:53', '2017-11-20 04:44:53'),
(21, 1, '2017-11-20', '', NULL, NULL, 6, 2, '2017-11-20 04:47:56', '2017-11-20 04:47:56'),
(22, 0, NULL, '', NULL, NULL, NULL, 2, '2017-11-20 04:48:32', '2017-11-20 04:48:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `note` int(11) DEFAULT NULL,
  `date_signed` datetime DEFAULT NULL,
  `total` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`product_id`, `order_id`, `quantity`, `price`, `note`, `date_signed`, `total`, `created_at`, `updated_at`) VALUES
(1, 16, 10, 200000, 0, '2017-11-20 11:41:57', 2000000, '2017-11-20 04:36:23', '2017-11-20 04:36:23'),
(3, 19, 1, 500000, -1, NULL, 500000, '2017-11-20 04:44:53', '2017-11-20 04:44:53'),
(2, 21, 4, 60000, 0, '2017-11-20 11:48:08', 240000, '2017-11-20 04:47:56', '2017-11-20 04:47:56'),
(3, 22, 3, 500000, -3, NULL, 1500000, '2017-11-20 04:48:32', '2017-11-20 04:48:32');

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
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `highlight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` longtext COLLATE utf8_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `name`, `alias`, `price`, `discount`, `quantity`, `origin`, `view`, `rate`, `highlight`, `image`, `keywords`, `size`, `describe`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Máy nước nóng', 'May-Nuoc-Nong', '500000', NULL, '20', 'Việt Nam', NULL, NULL, '<p>hihihi</p>\r\n', '1465887460419_4911053.jpg', 'maynuocnong', NULL, '<p>hihihi</p>\r\n', 6, 1, '2017-11-19 10:39:30', '2017-11-21 08:53:23'),
(2, 'Sofa giường N Juno Sofa', 'Sofa-Giuong-N-Juno-Sofa', '60000', NULL, '1', 'Việt Nam', NULL, NULL, '', '76448_fhm008_2.jpg', '', NULL, '', 6, 1, '2017-11-19 15:19:10', '2017-11-20 04:49:44'),
(3, 'Sofa giường N Juno Sofa 200cm', 'Sofa-Giuong-N-Juno-Sofa-200Cm', '50000', NULL, '20', 'Việt Nam', NULL, NULL, '', '74445_hkacc0210_4_chon.jpg', '', NULL, '', 6, 1, '2017-11-19 16:55:59', '2017-11-21 08:53:23'),
(4, 'Bộ 3 tranh Phúc Lộc Thọ', 'Bo-3-Tranh-Phuc-Loc-Tho', '80000', NULL, '0', 'Việt Nam', NULL, NULL, '', '38369_fpdlctn_2.jpg', '', NULL, '', 6, 1, '2017-11-19 16:56:12', '2017-11-20 03:19:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Đà Lạt Tam Quan', '0933588295', 'Số 271 Nguyễn Thị Minh Khai, Quận 7', '2017-11-19 10:32:47', '2017-11-19 13:57:50'),
(2, 'Thành Phố HCM', '0126365478', 'Quận 7', '2017-11-19 10:36:12', '2017-11-19 10:36:12'),
(4, 'Kim Thành', '0935698745', 'Công Ty TNHH Minh Khai S.G (Nhà sách Minh Khai) 249 Nguyễn Thị Minh Khai, F. Nguyễn Cư Trinh, Q.1, Tp. Hồ Chí Minh.', '2017-11-19 14:00:01', '2017-11-19 14:00:01');

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
  ADD KEY `coupons_user_id_foreign` (`user_id`),
  ADD KEY `coupons_supplier_id_foreign` (`supplier_id`);

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
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `coupondetails`
--
ALTER TABLE `coupondetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  ADD CONSTRAINT `coupons_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE,
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
