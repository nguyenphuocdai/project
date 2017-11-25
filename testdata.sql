-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2017 lúc 10:43 AM
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
(3, 'Giường ngủ', 'Giuong-Ngu', NULL, 'giuongngu', '2017-11-25 09:14:16', '2017-11-25 09:14:16'),
(4, 'Tủ quần áo', 'Tu-Quan-Ao', NULL, 'tuquanao', '2017-11-25 09:14:32', '2017-11-25 09:14:32'),
(5, 'Nội thất phòng khách', 'Noi-That-Phong-Khach', NULL, 'noithatphongkhach', '2017-11-25 09:14:45', '2017-11-25 09:14:45'),
(6, 'Tủ bếp', 'Tu-Bep', NULL, 'tubep', '2017-11-25 09:15:09', '2017-11-25 09:15:09'),
(7, 'Ghế Sofa', 'Ghe-Sofa', NULL, 'ghesofa', '2017-11-25 09:15:19', '2017-11-25 09:15:19'),
(8, 'Nội thất phòng ngủ', 'Noi-That-Phong-Ngu', NULL, 'noithatphongngu', '2017-11-25 09:15:36', '2017-11-25 09:15:36'),
(9, 'Nội thất văn phòng', 'Noi-That-Van-Phong', NULL, 'noithatvanphong', '2017-11-25 09:15:59', '2017-11-25 09:15:59');

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
(14, '20', '8000000', '160000000', 9, 11, '2017-11-25 09:22:42', '2017-11-25 09:22:42'),
(15, '5', '9000000', '45000000', 8, 12, '2017-11-25 09:38:19', '2017-11-25 09:38:19'),
(17, '5', '5000000', '25000000', 11, 12, '2017-11-25 09:38:19', '2017-11-25 09:38:19'),
(18, '5', '10000000', '50000000', 12, 12, '2017-11-25 09:38:19', '2017-11-25 09:38:19'),
(19, '5', '8500000', '42500000', 13, 12, '2017-11-25 09:38:19', '2017-11-25 09:38:19');

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
(11, 'PN01', '2017-11-25', 6, 1, '2017-11-25 09:22:42', '2017-11-25 09:22:42'),
(12, 'PN002', '2017-11-26', 6, 6, '2017-11-25 09:38:19', '2017-11-25 09:38:19');

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
(7, '17-giuong-ngu-go-xoan-dao-thiet-ke-duoi-cong-doc-dao-1m6.jpg', 8, '2017-11-25 09:19:28', '2017-11-25 09:19:28'),
(8, '760-giuong-ngu-hien-dai-mau-trang-go-xoan-dao-1.jpg', 9, '2017-11-25 09:21:16', '2017-11-25 09:21:16'),
(10, '169-giuong-ngu-co-hoc-keo-go-soi-my-cao-cap-1m6.jpg', 11, '2017-11-25 09:33:08', '2017-11-25 09:33:08'),
(11, '583-tu-bep-go-xoan-dao-tb2020-1.jpg', 12, '2017-11-25 09:35:53', '2017-11-25 09:35:53'),
(12, '579-tu-bep-go-xoan-dao-tb2019-1.jpg', 13, '2017-11-25 09:36:52', '2017-11-25 09:36:52');

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
(23, 1, '2017-11-25', '', NULL, NULL, 6, 2, '2017-11-25 09:41:14', '2017-11-25 09:41:14');

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
(13, 23, 4, 10200000, 0, '2017-11-25 16:41:49', 40800000, '2017-11-25 09:41:14', '2017-11-25 09:41:14'),
(12, 23, 3, 12000000, 0, '2017-11-25 16:41:49', 36000000, '2017-11-25 09:41:19', '2017-11-25 09:41:19');

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
  `highlight` longtext COLLATE utf8_unicode_ci,
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
(8, 'Giường Ngủ Gỗ Xoan Đào', 'Giuong-Ngu-Go-Xoan-Dao', '10800000', NULL, '5', 'Việt Nam', NULL, NULL, '<p>Chất liệu: Gỗ xoan đ&agrave;o</p>\r\n\r\n<div class=\"csschitiet\" style=\"position: relative; max-width: 100%; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Đường n&eacute;t thẳng kết hợp với dạng khối hộp cong tạo n&ecirc;n sự kh&aacute;c biệt cho sản phẩm Giường Ngủ GN216, M&agrave;u sắc trầm, đậm, tạo kh&ocirc;ng gian ấm c&uacute;ng cho căn ph&ograve;ng của bạn.</div>\r\n', '17-giuong-ngu-go-xoan-dao-thiet-ke-duoi-cong-doc-dao-1m6.jpg', 'giuongngu,goxoandao', NULL, '<div class=\"csschitiet\" style=\"position: relative; max-width: 100%; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">C&ocirc;ng ty Minh Kh&ocirc;i chuy&ecirc;n sản xuất c&aacute;c sản phẩm&nbsp;nội thất, nội thất ph&ograve;ng kh&aacute;ch,&nbsp;<strong><a href=\"http://noithatminhkhoi.com/noi-that-phong-ngu\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"nội thất phòng ngủ\">nội thất ph&ograve;ng ngủ</a></strong>, đặc biệt chuy&ecirc;n cung cấp sản phẩm&nbsp;nội thất&nbsp;cho kh&aacute;ch sạn.&nbsp;<span style=\"color:rgb(255, 0, 0)\"><strong>Sản phẩm&nbsp;giường ngủ gi&aacute; rẻ&nbsp;đến 30% so với thị trường.</strong></span><br />\r\n&nbsp;\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(204, 204, 204); margin:15px auto; max-width:100%; width:600px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"height:30px; text-align:center; width:600px\"><strong>Bảng Gi&aacute;&nbsp;Giường Ngủ Gỗ&nbsp;GN216</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30px; text-align:center; width:200px\">K&iacute;ch Thước (cm)</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">Đơn Gi&aacute; (vnđ)</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">Ghi Ch&uacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30px; text-align:center; width:200px\">160 x 200</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">8.500.000</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\"><span style=\"font-size:11.8182px\">gi&aacute; chưa bao gồm tủ đầu giường</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30px; text-align:center; width:200px\">180 x 200</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">8.900.000</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\"><span style=\"font-size:11.8182px\">gi&aacute; chưa bao gồm tủ đầu giường</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><span style=\"font-size:12px\"><strong>Đặc đi&ecirc;̉m chung của giường ngủ GN216</strong></span></h2>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"Giường Ngủ Gỗ Xoan Đào Thiết Kế Đuôi Cong Độc Đáo 1m6\" src=\"https://noithatminhkhoi.com/upload/asset/giuong-ngu-go-xoan-dao-thiet-ke-duoi-cong-doc-dao-1m6-5532.jpg\" style=\"border:0px; height:auto !important; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:auto\" /></div>\r\n\r\n<div style=\"text-align: center;\">Giường ngủ xoan đ&agrave;o đu&ocirc;i cong</div>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li><strong>Giường ngủ gỗ</strong>&nbsp;GN216 l&agrave;&nbsp;giường ngủ bằng gỗ xoan đ&agrave;o tự nhi&ecirc;n&nbsp;100% đ&atilde; được xử l&yacute; qua quy tr&igrave;nh tẩm sấy chuy&ecirc;n nghiệp, đảm bảo kh&ocirc;ng cong v&ecirc;nh v&agrave; mối mọt trong suốt qu&aacute; tr&igrave;nh sử dụng.</li>\r\n	<li>Độ bền vĩnh viễn.</li>\r\n	<li>Bảo h&agrave;nh 05 năm.</li>\r\n	<li><strong>Giường ngủ gỗ</strong>&nbsp;GN216 c&oacute; thiết kế rất độc đ&aacute;o, ấn tượng từ c&aacute;i nh&igrave;n ban đầu bởi đu&ocirc;i giường kh&aacute;c biệt. gi&uacute;p bạn thoải m&atilde;i khi ngồi ph&iacute;a sau đu&ocirc;i giường.</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:12px\"><strong>Thi&ecirc;́t k&ecirc;́ chung</strong></span></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>L&agrave; giường c&oacute; thiết kế hiện đại nhưng vẫn c&oacute; đ&acirc;u đ&oacute; một ch&uacute;t cổ điển. Đầu&nbsp;<strong>giường</strong>&nbsp;vu&ocirc;ng được bo tr&ograve;n ở phần tr&ecirc;n v&agrave; chạy chỉ đen đơn giản tr&ecirc;n nền n&acirc;u c&aacute;nh gi&aacute;n. M&agrave;u sắc n&acirc;u c&aacute;nh gi&aacute;n vốn đ&atilde; đem lại cảm gi&aacute;c ấm &aacute;p v&agrave; chắc chắn v&agrave; khi sử dụng chất liệu xoan đ&agrave;o th&igrave; độ chắc chắn tăng th&ocirc;i bội phần.</li>\r\n	<li>Tuy nhi&ecirc;n bạn c&oacute; thể thay đổi m&agrave;u sắc, sắc độ theo y&ecirc;u cầu, sở th&iacute;ch của m&igrave;nh.</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:12px\"><strong>Thi&ecirc;́t k&ecirc;́ của vai giường</strong></span></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Về phần vai giường được thiết kế nhẵn nhụi rất sang trọng, được thiết kế d&agrave;i, cong đến hết phần đu&ocirc;i tạo thiết kế nguy&ecirc;n khối rất ấn tượng.</li>\r\n	<li>Giường c&oacute; khoản c&aacute;c vạc giường l&ecirc;n đến bề mặt vai, bề mặt đu&ocirc;i cao khoản 3cm để c&oacute; thể cố định nệm, tr&aacute;nh trường hợp x&ecirc; dịch nệm trong l&uacute;c sử dụng.</li>\r\n	<li>Một lưu &yacute; nhỏ l&agrave; khi chọn nệm bạn cần phải chọn đ&uacute;ng, ch&iacute;nh x&aacute;c k&iacute;ch thước để nệm được cố định tr&ecirc;n giường.</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:12px\"><strong>Thi&ecirc;́t k&ecirc;́ của đu&ocirc;i giường</strong></span></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Phần đu&ocirc;i giường l&agrave; phần độc đ&aacute;o v&agrave; ấn tượng nhất, l&agrave; sự kết hợp giữa đường cong, khối vu&ocirc;ng v&agrave; đường chạy chỉ.&nbsp;</li>\r\n	<li>Tuy đu&ocirc;i giường thiết kế cong nhưng giường được sử dụng với v&aacute;n gỗ xoan đ&agrave;o rất d&agrave;y khiến giường kh&ocirc;ng mất đi sự chắc chắn.</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:12px\"><strong>Phụ ki&ecirc;̣n, v&acirc;̣t dụng ti&ecirc;̣n ích cho phòng ngủ</strong></span></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Tủ đầu giường c&ugrave;ng thiết kế sẽ gi&uacute;p bạn c&oacute; th&ecirc;m kh&ocirc;ng gian cất giữ v&agrave; tăng th&ecirc;m phần quyến rũ cho căn ph&ograve;ng của bạn. Nhưng nếu ph&ograve;ng ngủ của bạn qu&aacute; chật th&igrave; chiếc giường cũng kh&ocirc;ng mất đi vẻ đẹp của m&igrave;nh nếu kh&ocirc;ng c&oacute;<strong><a href=\"http://noithatminhkhoi.com/c28/tu-dau-giuong\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" target=\"_blank\"><span style=\"color:rgb(0, 0, 255)\">&nbsp;tủ đầu giường</span></a></strong>.</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:12px\"><strong>Tư v&acirc;́n v&ecirc;̀ màu sắc cho giường ngủ GN216</strong></span></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li><a href=\"http://noithatminhkhoi.com/c13/giuong-ngu-go-tu-nhien-dep\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\"><strong>Giường ngủ</strong></a>&nbsp;GN216 c&oacute; m&agrave;u n&acirc;u c&aacute;nh gi&aacute;n, l&agrave; t&ocirc;ng m&agrave;u đậm rất dễ phối m&agrave;u với c&aacute;c vật dụng kh&aacute;c. Ở đ&acirc;y bạn c&oacute; thể sử dụng giường ngủ GN216 cho ph&ograve;ng ngủ c&oacute; t&ocirc;ng m&agrave;u s&aacute;ng như v&agrave;ng nhạt. R&egrave;m cửa m&agrave;u kem, Th&ecirc;m một bức tranh ở tr&ecirc;n đầu giường m&agrave;u sắc đơn giản. Nền nh&agrave; m&agrave;u trắng hoặc m&agrave;u s&aacute;ng. Về phần Drap giường th&igrave; n&ecirc;n chọn m&agrave;u xanh da trời với hoạ tiết caro.</li>\r\n</ul>\r\n\r\n<div style=\"text-align: center;\"><em>Hy vọng bạn sẽ sớm t&igrave;m được mẫu giường ưng &yacute; tại Noithatminhkhoi.com, h&atilde;y xem x&eacute;t c&aacute;c yếu tố ph&ograve;ng ngủ của bạn trước khi lựa mẫu!</em></div>\r\n</div>\r\n\r\n<div class=\"clr10\" style=\"clear: both; height: 10px; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;</div>\r\n\r\n<div class=\"csschitiet\" style=\"position: relative; max-width: 100%; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;\r\n<h3 style=\"text-align:justify\"><strong>Lưu &yacute;</strong>: Gi&aacute; sản phẩm chưa bao gồm VAT (thuế gi&aacute; trị gia tăng)</h3>\r\n</div>\r\n', 6, 3, '2017-11-25 09:19:28', '2017-11-25 09:38:19'),
(9, 'Giường Ngủ Đuôi Cong', 'Giuong-Ngu-Duoi-Cong', '9600000', NULL, '20', 'Việt Nam', 4, NULL, '<p>Chất liệu: Gỗ xoan đ&agrave;o tự nhi&ecirc;n</p>\r\n\r\n<div class=\"csschitiet\" style=\"position: relative; max-width: 100%; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Giường ngủ gi&aacute; rẻ GN420 sản xuất với gỗ tự nhi&ecirc;n xoan đ&agrave;o 100%, đ&atilde; qua quy tr&igrave;nh xử l&yacute; chuy&ecirc;n nghiệp đảm bảo kh&ocirc;ng cong v&ecirc;nh mối mọt. Giường c&oacute; thiết kế đu&ocirc;i cong hiện đại cực kỳ ấn tượng, th&iacute;ch hợp hầu hết với c&aacute;c kh&ocirc;ng gian nội thất ph&ograve;ng ngủ hiện đại của chung cư hay nh&agrave; phố ng&agrave;y nay.&nbsp;</div>\r\n', '760-giuong-ngu-hien-dai-mau-trang-go-xoan-dao-1.jpg', 'giuongngu,goxoandao', NULL, '<div style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">C&ocirc;ng ty trang tr&iacute; nội thất Minh Kh&ocirc;i chuy&ecirc;n thiết kế v&agrave; thi c&ocirc;ng nội thất ph&ograve;ng ngủ, với showroom rộng tới 2000m<span style=\"color:rgb(153, 153, 153); font-size:10px\">2</span>&nbsp;trưng b&agrave;y sản phẩm đa dạng về mẫu m&atilde;, thiết kế. Ch&uacute;ng t&ocirc;i&nbsp;trực tiếp chọn lựa nguy&ecirc;n li&ecirc;u đến sản xuất từng sản phẩm do vậy&nbsp;<a href=\"http://noithatminhkhoi.com/giuong-ngu\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"giường ngủ\">giường ngủ</a>,<a href=\"http://noithatminhkhoi.com/tu-quan-ao\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"tủ quần áo\">&nbsp;tủ quần &aacute;o</a>&nbsp;Minh Kh&ocirc;i gi&aacute; lu&ocirc;n rẻ hơn thị trường từ 30-35%, chất lượng lu&ocirc;n đảm bảo h&agrave;ng đầu.</div>\r\n\r\n<div style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(204, 204, 204); margin:15px auto; max-width:100%; width:600px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"height:30px; text-align:center; width:600px\"><strong>Bảng Gi&aacute;&nbsp;Giường Ngủ Gỗ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30px; text-align:center; width:200px\">K&iacute;ch Thước (cm)</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">Đơn Gi&aacute; (vnđ)</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">Ghi Ch&uacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30px; text-align:center; width:200px\">160 x 200</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">8.800.000</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">gi&aacute; chưa bao gồm tủ đầu giường</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30px; text-align:center; width:200px\">180 x 200</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">9.100.000</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">gi&aacute; chưa bao gồm tủ đầu giường<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\nTrong thời gian hiện nay giường ngủ kh&ocirc;ng chỉ đơn gian l&agrave; vật dụng để ngủ, m&agrave; nhiều người c&ograve;n sử dụng n&oacute; l&agrave;m cho ph&ograve;ng ngủ của họ trở l&ecirc;n đẹp hơn, v&agrave; n&oacute; ch&iacute;nh l&agrave; điểm dựa tinh thần, nơi bạn lấy lại hưng phấn, sức khỏe cho ng&agrave;y l&agrave;m việc mới.\r\n<h2><span style=\"font-size:16px\"><strong><a href=\"https://noithatminhkhoi.com/giuong-ngu-go-tu-nhien-dep\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"Giường ngủ gỗ\"><span style=\"color:rgb(0, 0, 255)\">Giường ngủ gỗ</span></a>&nbsp;của nội thất Minh Kh&ocirc;i :</strong></span></h2>\r\nGiường ngủ tại nội thất minh Kh&ocirc;i c&oacute; rất nhiều sản phẩm như những sản phẩm c&oacute; sẵn thiết kế được sản xuất h&agrave;ng loạt.<br />\r\nNhững sản phẩm giường ngủ c&oacute; thiết kế v&agrave; sản xuất với số lượng lớn như giường GN216, GN434 l&agrave; những sản phẩm giường ngủ gỗ tự nhi&ecirc;n được nhiều kh&aacute;ch h&agrave;ng lựa chọn với kiểu d&aacute;ng độc đ&aacute;o.</div>\r\n\r\n<div style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">\r\n<div style=\"text-align: center;\"><img alt=\"Giường Ngủ Gỗ Xoan Đào Hiện Đại Màu Trắng GN420\" src=\"https://noithatminhkhoi.com/upload/sanpham/large/176-giuong-ngu-1m6-go-tu-nhien-xoan-dao--1.jpg\" style=\"border:0px; height:auto !important; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:auto\" /></div>\r\n<br />\r\nXem th&ecirc;m sản phẩm giường ngủ GN434 ;&nbsp;<a href=\"https://noithatminhkhoi.com/giuong-ngu-1m6-go-tu-nhien-xoan-dao-176.html\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\"><span style=\"color:rgb(0, 0, 255)\">https://noithatminhkhoi.com/giuong-ngu-1m6-go-tu-nhien-xoan-dao-176.html</span></a></div>\r\n\r\n<div style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">B&ecirc;n cạnh đ&oacute; sản phẩm giường ngủ c&oacute; sẵn tại nội thất Minh Kh&ocirc;i c&ograve;n th&ecirc;m lựa chọn đ&oacute; l&agrave; sản phẩm giường ngủ gỗ c&ocirc;ng nghiệp MFC, MDF với gi&aacute; th&agrave;nh rẻ hơn kh&aacute; nhiều so với giường gỗ tự nhi&ecirc;n.</div>\r\n\r\n<div style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Khi mua sản phẩm c&oacute; sẵn tại nội thất Minh Kh&ocirc;i, ch&uacute;ng t&ocirc;i sẽ giao trong ng&agrave;y những sản phẩm m&agrave; bạn chọn. ưu đ&atilde;i hơn với những đơn h&agrave;ng quận 1, quận 2, T&acirc;n Ph&uacute;, T&acirc;n B&igrave;nh...to&agrave;n bộ chi ph&iacute; vận chuyển lắp đặt bạn sẽ được hỗ trợ miễn.<br />\r\nC&ograve;n khi bạn khu vực tỉnh th&agrave;nh l&acirc;n cận, bạn sẽ được hỗ trợ một phần chi ph&iacute; vận chuyển, gi&uacute;p bạn giảm thiểu chi ph&iacute; khi mua sản phẩm của minh kh&ocirc;i.<br />\r\nNếu những sản phẩm giường ngủ của ch&uacute;ng t&ocirc;i c&oacute; sẵn bạn vẫn kh&ocirc;ng ưng &yacute; h&atilde;y y&ecirc;n t&acirc;m, bởi ch&uacute;ng t&ocirc;i sẽ đ&oacute;ng sản phẩm theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.<br />\r\nNhững sản phẩm đ&oacute;ng theo y&ecirc;u cầu gi&aacute; thường cao hơn so với những sản phẩm c&oacute; sẵn, v&agrave; thời gian giao h&agrave;ng cũng l&acirc;u hơn. Nhưng để đưa những n&eacute;t ri&ecirc;ng của m&igrave;nh v&agrave;o sản phẩm th&igrave; nhi&ecirc;u đ&oacute; cũng đ&aacute;ng để thử chứ. v&agrave; thời gian cũng kh&ocirc;ng qu&aacute; l&acirc;u.<br />\r\nMột số mẫu giường kh&aacute;ch h&agrave;ng đ&atilde; lựa chọn theo k&iacute;ch thước của kh&aacute;c v&agrave; những n&eacute;t ri&ecirc;ng của kh&aacute;ch khiến ai nh&igrave;n v&agrave;o cũng thấy đẹp v&agrave; biết được chủ sở hữu của n&oacute; đ&atilde; c&oacute; lựa chọn s&aacute;ng suốt thế n&agrave;o.</div>\r\n', 6, 3, '2017-11-25 09:21:16', '2017-11-25 09:38:26'),
(11, 'Giường ngủ có hộc kéo', 'Giuong-Ngu-Co-Hoc-Keo', '6000000', NULL, '5', 'Việt nam', 3, NULL, '<p>Chất liệu: Gỗ sồi</p>\r\n\r\n<div class=\"csschitiet\" style=\"position: relative; max-width: 100%; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Giường ngủ GN277 được l&agrave;m bằng gỗ sồi tự nhi&ecirc;n cao cấp, với tiện &iacute;ch 2 hộc k&eacute;o b&ecirc;n h&ocirc;ng gi&uacute;p tăng th&ecirc;m kh&ocirc;ng gian lưu trữ cho ph&ograve;ng ngủ chật hẹp.</div>\r\n', '169-giuong-ngu-co-hoc-keo-go-soi-my-cao-cap-1m6.jpg', 'giuongngu,hockeo', NULL, '<p><span style=\"font-family:verdana,arial,helvetica,sans-serif; font-size:12px\">Giường ngủ l&agrave; sản phẩm&nbsp;</span><strong><a href=\"http://noithatminhkhoi.com/\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">đồ nội thất</a></strong><span style=\"font-family:verdana,arial,helvetica,sans-serif; font-size:12px\">&nbsp;cần thiết v&agrave; quan trọng với giấc ngủ, sức khỏe của bạn. Để chọn được chiếc giường ngủ ưng &yacute; th&igrave; c&oacute; nhiều yếu tố như chất liệu, thiết kế, kiểu d&aacute;ng, m&agrave;u sắc v&agrave; quan trọng nhất l&agrave; gi&aacute; cả phải hợp l&yacute;. C&ocirc;ng ty Minh Kh&ocirc;i l&agrave; nh&agrave; sản xuất đồ gỗ nội thất, chuy&ecirc;n sản xuất giường ngủ theo quy tr&igrave;nh c&ocirc;ng nghiệp v&agrave; sản xuất giường ngủ theo y&ecirc;u cầu ri&ecirc;ng.</span><br />\r\n<span style=\"color:rgb(102, 102, 102); font-family:verdana,arial,helvetica,sans-serif; font-size:12px\">&nbsp;</span></p>\r\n\r\n<h3><span style=\"color:rgb(51, 51, 51)\">C&ocirc;ng ty Minh Kh&ocirc;i xin giới thiệu đến qu&yacute; kh&aacute;ch mẫu giường ngủ đẹp gỗ Sỗi Mỹ GN277</span></h3>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li><span style=\"color:rgb(51, 51, 51)\">Giường ngủ GN277 l&agrave;&nbsp;</span><strong><a href=\"http://noithatminhkhoi.com/c13/giuong-ngu-go-tu-nhien-dep\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">mẫu giường gỗ tự nhi&ecirc;n</a></strong><span style=\"color:rgb(51, 51, 51)\">&nbsp;được sản xuất theo quy tr&igrave;nh c&ocirc;ng nghiệp.</span></li>\r\n	<li><span style=\"color:rgb(51, 51, 51)\">Thời gian giao h&agrave;ng: Trong v&ograve;ng 24h kể từ khi đặt h&agrave;ng.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:rgb(102, 102, 102); font-family:verdana,arial,helvetica,sans-serif; font-size:12px\">&nbsp;</span></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(204, 204, 204); font-family:verdana,arial,helvetica,sans-serif; margin:15px auto; max-width:100%; width:600px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"height:30px; text-align:center; width:600px\"><strong>Bảng Gi&aacute;&nbsp;Giường Ngủ C&oacute; Hộc K&eacute;o Gỗ Sồi GN277</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30px; text-align:center; width:200px\">K&iacute;ch Thước (cm)</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">Đơn Gi&aacute; (vnđ)</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">Ghi Ch&uacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30px; text-align:center; width:200px\">160 x 200</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">7.500.000</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\"><span style=\"font-size:11.8182px\">gi&aacute; chưa bao gồm tủ đầu giường</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30px; text-align:center; width:200px\">180 x 200</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\">7.800.000</td>\r\n			<td style=\"height:30px; text-align:center; width:200px\"><span style=\"font-size:11.8182px\">gi&aacute; chưa bao gồm tủ đầu giường</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><span style=\"font-family:verdana,arial,helvetica,sans-serif; font-size:12px\"><strong>&nbsp;</strong></span></p>\r\n\r\n<h2><strong><a href=\"http://noithatminhkhoi.com/c123/giuong-ngu\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">Giường ngủ</a></strong>&nbsp;GN277 được l&agrave;m bằng gỗ sồi Mỹ cao cấp</h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Với nguy&ecirc;n liệu gỗ sồi Mỹ cao cấp đ&atilde; qua quy tr&igrave;nh xử l&yacute; chuy&ecirc;n nghiệp, đảm bảo kh&ocirc;ng cong v&ecirc;nh v&agrave; mối mọt trong suốt qu&aacute; tr&igrave;nh sử dụng.</li>\r\n	<li>Chất liệu gỗ cao cấp v&agrave; kết cấu chắc chắn đảm bảo giường sẽ kh&ocirc;ng ph&aacute;t ra tiếng động kh&oacute; chịu trong khi sử dụng.</li>\r\n	<li>Giường được bảo h&agrave;nh 05 năm lỗi kỹ thuật.</li>\r\n</ul>\r\n\r\n<h2><br />\r\nGiường ngủ gỗ sồi thiết kế hiện đại với hộc k&eacute;o tiện &iacute;ch</h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Giường ngủ GN277 c&oacute; thiết kế mang phong c&aacute;ch hiện đại, đơn giản ph&ugrave; hợp với c&aacute;c kh&ocirc;ng gian nội thất hiện đại ng&agrave;y nay.</li>\r\n	<li>Kiểu d&aacute;ng v&agrave; kết cấu dạng hộp c&ugrave;ng c&aacute;c chi tiết của giường như vai, đu&ocirc;i, đầu giường đều rất d&agrave;y gi&uacute;p giường chắc chắn v&agrave; vững ch&atilde;i.</li>\r\n	<li>Đầu giường được thiết kế cong nhẹ về ph&iacute;a sau gi&uacute;p giường tr&ocirc;ng gần gũi, ngo&agrave;i ra giường c&ograve;n c&oacute; 2 hộc k&eacute;o b&ecirc;n h&ocirc;ng c&oacute; thể t&ugrave;y &yacute; lắp r&aacute;p b&ecirc;n tr&aacute;i hay b&ecirc;n phải.</li>\r\n	<li>Giường c&oacute; m&agrave;u gỗ v&agrave; v&acirc;n sồi tự nhi&ecirc;n, l&agrave;m tăng th&ecirc;m gi&aacute; trị của d&ograve;ng sản phẩm gỗ tự nhi&ecirc;n n&agrave;y.</li>\r\n	<li>N&ecirc;n sử dụng nệm c&oacute; độ d&agrave;y từ 5cm trở l&ecirc;n cho mẫu giường n&agrave;y. Chăn drap n&ecirc;n chọn m&agrave;u sắc c&ugrave;ng t&ocirc;ng hoặc c&oacute; m&agrave;u s&aacute;ng sủa c&ugrave;ng họa tiết tươi trẻ.</li>\r\n</ul>\r\n', 6, 3, '2017-11-25 09:33:08', '2017-11-25 09:40:03'),
(12, 'Tủ Bếp Có Quầy Bar', 'Tu-Bep-Co-Quay-Bar', '12000000', NULL, '2', 'Việt nam', NULL, NULL, '<p><strong>Chất liệu: Gỗ xoan đ&agrave;o</strong></p>\r\n', '583-tu-bep-go-xoan-dao-tb2020-1.jpg', 'tubep,goxoandao', NULL, '<h2>Tủ Bếp Gỗ Xoan Đ&agrave;o C&oacute; Quầy Bar</h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li><a href=\"http://noithatminhkhoi.com/tu-bep-go-xoan-dao\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"tu bep go xoan dao\">Tủ bếp gỗ xoan đ&agrave;o</a>&nbsp;TB2020 với kiểu d&aacute;ng thiết kế sang trọng mang đến cho kh&ocirc;ng gian ph&ograve;ng bếp của c&aacute;c gia đ&igrave;nh sự thanh lịch, gi&uacute;p c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh c&oacute; thể qu&acirc;y quần b&ecirc;n nhau trong căn bếp. Tủ bếp l&agrave; vật dụng kh&ocirc;ng thể n&agrave;o thiếu trong một kh&ocirc;ng gian bếp, tủ bếp l&agrave; sự kết hợp h&agrave;i h&ograve;a giữa t&iacute;nh thẩm mỹ v&agrave; sự tiện nghi m&agrave; n&oacute; đem lại.\r\n\r\n	<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n		<li><a href=\"http://noithatminhkhoi.com/tu-bep-go-xoan-dao-tb2019-579.html\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"Tủ Bếp Gỗ Xoan Đào TB2019 Màu Nâu Cánh Gián\">Tủ Bếp Gỗ Xoan Đ&agrave;o TB2019 M&agrave;u N&acirc;u C&aacute;nh Gi&aacute;</a></li>\r\n		<li><a href=\"http://noithatminhkhoi.com/tu-bep-go-xoan-dao-tb2018-575.html\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"Tủ Bếp Gỗ Xoan Đào TB2018 Màu Vàng Đẹp Tuyệt Vời\">Tủ Bếp Gỗ Xoan Đ&agrave;o TB2018 M&agrave;u V&agrave;ng Đẹp Tuyệt Vời</a></li>\r\n	</ul>\r\n	</li>\r\n	<li>Sản phẩm&nbsp;<a href=\"http://noithatminhkhoi.com/tu-bep-go-tu-nhien\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"tu bep go\">tủ bếp gỗ</a>&nbsp;xoan đ&agrave;o TB2020 đang được nhiều kh&aacute;ch h&agrave;ng lựa chọn v&igrave; chất lượng tốt cũng như kiểu d&aacute;ng sang trọng ph&ugrave; hợp với mọi kh&ocirc;ng gian ph&ograve;ng bếp. Với chất liệu l&agrave;m bằng gỗ xoan đ&agrave;o n&ecirc;n tủ cứng, c&oacute; độ bền cao v&agrave; c&oacute; nhiều họa tiết hoa văn tinh tế.</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng tin tủ bếp gỗ xoan đ&agrave;o TB2020:</h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Tủ bếp TB2020 được c&ocirc;ng ty Minh Kh&ocirc;i sản xuất với c&ocirc;ng nghệ hiện đại v&agrave; ti&ecirc;n tiến nhất hiện n&agrave;y.</li>\r\n	<li>Thời gian sản xuất l&agrave; lắp đặt nhanh với đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp.</li>\r\n	<li>Sản phẩm được bảo h&agrave;ng 5 năm.</li>\r\n	<li>Miễn ph&iacute; vận chuyển cho kh&aacute;ch h&agrave;ng ở khu vực nội th&agrave;nh Hồ Ch&iacute; Minh.</li>\r\n</ul>\r\n\r\n<h2>Ưu điểm tủ bếp gỗ xoan đ&agrave;o TB2020:</h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Tủ bếp gỗ xoan đ&agrave;o TB2020 được l&agrave;m ho&agrave;n to&agrave;n bằng gỗ tự nhi&ecirc;n n&ecirc;n kh&aacute; chắc chắn v&agrave; c&oacute; độ bền cao, kh&ocirc;ng bị ẩm mốc hay thấm nước.</li>\r\n	<li>Với thiết kế chữ L sẽ tiết kiệm tối đa cho kh&ocirc;ng gian ph&ograve;ng bếp những vẫn đ&aacute;p ứng đầy đủ nhu cầu sử dụng của kh&aacute;ch h&agrave;ng.</li>\r\n	<li>Tủ gỗ TB2020 với nhiều ngăn n&ecirc;n sắp xếp c&aacute;c vật dụng hay c&aacute;c thiết bị bếp dễ d&agrave;ng.</li>\r\n	<li>Tủ c&oacute; sẵn c&aacute;c ngăn cho c&aacute;c thiết bị như l&ograve; nướng, m&aacute;y h&uacute;t m&ugrave;i, bếp &acirc;m tủ,....</li>\r\n	<li>B&ecirc;n cạnh đ&oacute; tủ c&ograve;n c&oacute; th&ecirc;m quầy bar tạo phong c&aacute;ch độc đ&aacute;o, tạo sự mới mẻ cho kh&ocirc;ng gian ph&ograve;ng bếp. Đ&acirc;y l&agrave; nơi thưởng thức những đồ uống thơm ngon v&agrave; cũng l&agrave; nơi thư gi&atilde;n v&agrave; giải tr&iacute; của cả gia đ&igrave;nh.</li>\r\n	<li>Tủ bếp gỗ xoan đ&agrave;o TB2020 với gam m&agrave;u n&acirc;u s&aacute;ng tạo cho kh&ocirc;ng gian ph&ograve;ng bếp rộng v&agrave; tho&aacute;ng m&aacute;t hơn cho căn bếp.</li>\r\n	<li>Với kiểu d&aacute;ng thiết kế hiện đại v&agrave; sang trọng&nbsp;<a href=\"http://noithatminhkhoi.com/tu-bep-go-tu-nhien\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"tu bep go tu nhien\">tủ bếp gỗ</a>&nbsp;xoan đ&agrave;o TB2020 l&agrave; sản phẩm đ&aacute;ng để chọn lựa cho căn ph&ograve;ng bếp của gia đ&igrave;nh bạn. Với chất liệu tốt v&agrave; gi&aacute; th&agrave;nh hợp l&yacute; ph&ugrave; hợp cho mọi gia đ&igrave;nh.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<span style=\"color:rgb(102, 102, 102); font-family:verdana,arial,helvetica,sans-serif; font-size:12px\">&gt;&gt; Hiện nay c&ocirc;ng ty trang tr&iacute; thiết kế nội thất Minh Kh&ocirc;i l&agrave; cơ sở chuy&ecirc;n thiết kế cũng như sản xuất c&aacute;c loại tủ bếp bằng gỗ tự nhi&ecirc;n tốt nhất hiện nay. Với d&acirc;y chuyền sản xuất hiện đại c&ugrave;ng với đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm sản xuất c&aacute;c loại tủ bếp với nhiều mẫu m&atilde; v&agrave; kiểu d&aacute;ng kh&aacute;c nhau. Nếu bạn c&oacute; nhu cầu thiết kế hay mua sắm c&aacute;c loại tủ bếp h&atilde;y li&ecirc;n hệ với 0933337788 hoặc 0984477177 để được tư vấn cũng như hỗ trợ tốt nhất.</span></p>\r\n', 6, 6, '2017-11-25 09:35:53', '2017-11-25 09:38:19'),
(13, 'Tủ bếp gỗ xoan đào', 'Tu-Bep-Go-Xoan-Dao', '10200000', NULL, '1', 'Việt nam', NULL, NULL, '<p><strong>Chất liệu: Gỗ xoan đ&agrave;o</strong></p>\r\n', '579-tu-bep-go-xoan-dao-tb2019-1.jpg', 'tubep,goxoandao', NULL, '<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Một ng&ocirc;i nh&agrave; sẽ trở n&ecirc;n sang trọng v&agrave; đẹp hơn nếu gia chủ birts lựa chọn những thiết bị nội thất ph&ugrave; hợp v&agrave; khu vực bếp cũng v&acirc;y. L&agrave; nơi nấu nướng của những người nội trợ trong gia đ&igrave;nh, l&agrave; nơi cả nh&agrave; quay quần b&ecirc;n nhau để c&ugrave;ng thưởng thức những bữa cơm ngon v&agrave; t&igrave;nh cảm nhất. Bởi vậy việc lựa chọn thiết bị nội thất như&nbsp;<strong><a href=\"http://noithatminhkhoi.com/tu-bep\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"tủ bếp\">tủ bếp</a></strong>&nbsp;l&agrave; điều lu&ocirc;n được c&aacute;c kh&aacute;ch h&agrave;ng quan t&acirc;m, việc lựa chọn&nbsp;<a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">tủ bếp</a>&nbsp;đấy l&agrave;m sao phải ph&ugrave; hợp được với phong c&aacute;ch của ng&ocirc;i nh&agrave; l&agrave; hiện đại hay cổ điển, m&agrave;u sơn ng&ocirc;i nh&agrave; v&agrave; đặc biệt l&agrave; diện t&iacute;ch của căn ph&ograve;ng.\r\n	<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n		<li><a href=\"http://noithatminhkhoi.com/tu-bep-go-xoan-dao-tb2017-570.html\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"Tủ Bếp Gỗ Xoan Đào TB2017 Góc L Màu Đen\">Tủ Bếp Gỗ Xoan Đ&agrave;o TB2017 G&oacute;c L M&agrave;u Đen</a></li>\r\n		<li><a href=\"http://noithatminhkhoi.com/tu-bep-go-xoan-dao-tb2016-565.html\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"Tủ Bếp Gỗ Xoan Đào TB2016 Góc Chử L\">Tủ Bếp Gỗ Xoan Đ&agrave;o TB2016 G&oacute;c Chử L</a></li>\r\n	</ul>\r\n	</li>\r\n	<li>Hiểu được những mong muốn của kh&aacute;ch h&agrave;ng c&ocirc;ng ty thiết kế nội thất Minh Kh&ocirc;i đ&atilde; v&agrave; đang cho ra đời những sản phẩm&nbsp;<a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">tủ bếp gỗ tự nhi&ecirc;n</a>&nbsp;ph&ugrave; hợp với nhu cầu của nhiều gia đ&igrave;nh. Với kinh nghiệm thiết kế v&agrave; thi c&ocirc;ng nhiều những c&ocirc;ng tr&igrave;nh tr&ecirc;n to&agrave;n quốc, lu&ocirc;n mang đến cho qu&yacute; kh&aacute;ch sự h&agrave;i l&ograve;ng v&agrave; kh&aacute;c biệt nhất về khu vực bếp. Sau đ&acirc;y ch&uacute;ng t&ocirc;i sẽ giới thiệu đến qu&yacute; kh&aacute;ch một d&ograve;ng sản phẩm&nbsp;<a href=\"http://noithatminhkhoi.com/tu-bep-go-tu-nhien\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"tu bep go\"><strong>tủ bếp gỗ</strong></a>&nbsp;tự nhi&ecirc;n ti&ecirc;u biếu m&agrave; ch&uacute;ng t&ocirc;i đ&atilde; thiết kế v&agrave; thi c&ocirc;ng đấy ch&iacute;nh l&agrave;&nbsp;<a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">tủ bếp</a>&nbsp;Gỗ Xoan Đ&agrave;o TB2019:&nbsp;</li>\r\n</ul>\r\n\r\n<h2><strong>Kiểu d&aacute;ng thiết kế v&agrave; bố cục tổng quan sản phẩm:</strong></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>D&ograve;ng sản phẩm&nbsp;<a href=\"http://noithatminhkhoi.com/tu-bep-go-tu-nhien\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"tu bep go\"><strong>tủ bếp gỗ</strong></a>&nbsp;Xoan Đ&agrave;o TB2019 rất ph&ugrave; hợp với kh&ocirc;ng gian bếp rộng v&agrave; phong c&aacute;ch cầu kỳ của gia chủ.</li>\r\n	<li>Sản phẩm c&oacute; m&agrave;u sắc tương phản với m&agrave;u gạch trắng của bức tường. Nổi bật với t&ocirc;ng m&agrave;u n&acirc;u sẫm sang trọng, với những đường n&eacute;t tinh tế l&agrave;m nổi bật to&agrave;n bộ khu vực bếp.</li>\r\n	<li><a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">Tủ bếp</a>&nbsp;được thiết kế với bố cục kh&aacute; độc đ&aacute;o được chia l&agrave;m 2 phần ri&ecirc;ng biệt v&agrave; c&oacute; thiết kế b&agrave;n đảo đi k&egrave;m. Mồi một b&ecirc;n l&agrave; những khu vực chuy&ecirc;n dụng ri&ecirc;ng biệt nhưng lại tạo n&ecirc;n một bố cục tổng thể kh&ocirc;ng thể t&aacute;ch rời.</li>\r\n	<li>B&ecirc;n tr&aacute;i bếp được thiết kế theo kiểu chữ L, với c&aacute;c kệ bếp tr&ecirc;n dưới được thiết kế kh&aacute; đơn giản, kh&ocirc;ng c&oacute; hoa văn đi&ecirc;u khắc những vẫn tạo cho kh&aacute;ch h&agrave;ng một cảm gi&aacute;c rất sang trọng v&agrave; tinh tế.</li>\r\n	<li><a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">Tủ bếp</a>&nbsp;ph&iacute;a tay phải c&oacute; thiết kế theo kiểu chữ I, c&oacute; tủ đứng lớn c&oacute; đi kệ để l&ograve; vi s&oacute;ng v&agrave; bếp nướng lớn.&nbsp;<a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">Tủ bếp</a>&nbsp;tr&ecirc;n c&oacute; th&ecirc;m thiết kế gi&aacute; để đựng s&aacute;ch nấu ăn hay những kinh nghiệm nấu nướng. Giữa bề mặt&nbsp;<a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">tủ bếp</a>&nbsp;dưới c&oacute; thiết kế khuyết tạo một điểm nhấn kh&aacute; lạ mặt.</li>\r\n	<li>Cả&nbsp;<a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">tủ bếp</a>&nbsp;ph&iacute;a b&ecirc;n tay tr&aacute;i v&agrave; tay phải đều c&oacute; bề mặt l&agrave;m bằng đ&aacute; b&oacute;ng sẫm m&agrave;u v&agrave; kh&ocirc;ng c&oacute; nơi n&agrave;o l&agrave; nơi đặt bếp nấu.</li>\r\n	<li>Kh&ocirc;ng giống như những sản phẩm&nbsp;<a href=\"http://noithatminhkhoi.com/tu-bep\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" title=\"tu bep\"><strong>tủ bếp</strong></a>&nbsp;c&oacute; thiết kế th&ocirc;ng thường, b&agrave;n đảo của&nbsp;<a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">tủ bếp</a>&nbsp;n&agrave;y lại kh&ocirc;ng d&ugrave;ng l&agrave; nơi để đặt c&aacute;c m&oacute;n ăn m&agrave; lại l&agrave; nơi đặt c&aacute;c bếp nấu. Việc đặt bếp nấu ở đảo vừ l&agrave; mắt vừa gi&uacute;p những người nội trợ dễ d&agrave;ng di chuyển đến c&aacute;c khu vực kh&aacute;c nhau trong khu vực bếp được chia l&agrave;m 2 b&ecirc;n như thế n&agrave;y.<strong>&nbsp;</strong></li>\r\n</ul>\r\n\r\n<p><strong>Th&ocirc;ng tin sản phẩm v&agrave; bảo h&agrave;nh:</strong><strong>&nbsp;</strong></p>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Chất liệu: Gỗ Xoan Đ&agrave;o tự nhi&ecirc;n cao cấp</li>\r\n	<li>M&agrave;u sắc: M&agrave;u n&acirc;u sẫm tinh tế</li>\r\n	<li>Thiết kế với c&aacute;c khu vực bếp bao trọn to&agrave;n bộ căn ph&ograve;ng v&agrave; c&oacute; b&agrave;n đảo.</li>\r\n	<li>Gi&aacute;&nbsp;<a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">tủ bếp</a>&nbsp;tr&ecirc;n: 3.200.000/m (d&agrave;i).</li>\r\n	<li>Gi&aacute;&nbsp;<a href=\"https://noithatminhkhoi.com/#\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\">tủ bếp</a>&nbsp;dưới: 3.600.000/m (d&agrave;i)</li>\r\n	<li>Thời hạn bảo h&agrave;nh: 5 năm kể từ ng&agrave;y b&agrave;n giao sản phẩm</li>\r\n	<li>Tuổi thọ trung b&igrave;nh: &gt;20 năm.</li>\r\n</ul>\r\n', 6, 6, '2017-11-25 09:36:52', '2017-11-25 09:38:19');

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
(1, 'Nội Thất Đà Lạt', '0933588295', 'Số 271 Nguyễn Thị Minh Khai, Đà Lạt', '2017-11-19 10:32:47', '2017-11-25 09:05:10'),
(2, 'Nội thất 7A', '0126365478', 'Quận 7 TPHCM', '2017-11-19 10:36:12', '2017-11-25 09:04:46'),
(4, 'Kim Thành', '0935698745', 'Công Ty TNHH Minh Khai S.G (Nhà sách Minh Khai) 249 Nguyễn Thị Minh Khai, F. Nguyễn Cư Trinh, Q.1, Tp. Hồ Chí Minh.', '2017-11-19 14:00:01', '2017-11-19 14:00:01'),
(5, 'Cần Thơ 1A', '0122587458', '222A Đường 3/2 Quận Ninh Kiều - TP Cần Thơ', '2017-11-25 08:57:42', '2017-11-25 08:57:42'),
(6, 'Nội thất Hà Nội', '0922685985', '22A Hai Bà Trưng, Hà Nội', '2017-11-25 09:04:33', '2017-11-25 09:04:33');

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
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `coupondetails`
--
ALTER TABLE `coupondetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
