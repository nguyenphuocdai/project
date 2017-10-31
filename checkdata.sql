-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2017 lúc 05:34 AM
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
-- Cơ sở dữ liệu: `checkdata`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `describe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `alias`, `describe`, `keywords`, `created_at`, `updated_at`) VALUES
(11, 'Phòng Khách', 'Phong-Khach', 'Phòng khách là một không gian xây dựng được bố trí trong ngôi nhà (có thể là một phòng, một gian hoặc vách....) nhằm mục đích làm không gian để chủ nhân ngội nhà tiếp đãi khách hoặc sử dụng làm không gian sinh hoạt chung cho cả nhà.', 'phongkhach', '2017-10-16 02:59:23', '2017-10-16 02:59:23'),
(12, 'Phòng Ăn', 'Phong-An', 'Chiếc bàn ăn là một trong những nội thất không thể thiếu được khi thiết kế nội thất trong phòng bếp. Tuy nhiên, dù được thiết kế như thế nào thì cũng phải phù ...', 'phongan', '2017-10-16 03:00:01', '2017-10-16 03:00:01'),
(13, 'Nhà Bếp', 'Nha-Bep', 'ếp đôi khi còn được hiểu là vật dùng để nấu thức ăn, thường là bếp lò, bếp than hay củi. Thông thường trong bếp ở nông thôn Việt Nam gồm có bếp đun (bằng gas hay than, củi...), dụng cụ nhà bếp như nồi, xoong, chảo, dao, thớt, rổ rá', 'nhabep', '2017-10-16 03:00:29', '2017-10-16 03:00:29'),
(14, 'Phòng Ngủ', 'Phong-Ngu', 'Phòng ngủ là một căn phòng riêng được thiết kế, bố trí để làm nơi mọi người đi ngủ vào ban đêm hoặc nghỉ ngơi, thư giãn trong ngày.', 'phongngu', '2017-10-16 03:00:56', '2017-10-16 03:00:56'),
(15, 'Phòng Trẻ Em', 'Phong-Tre-Em', 'Trẻ em không phải là người lớn thu nhỏ. Theo đó, khi thiết kế phòng cho bé, cha mẹ cần lưu ý đến yếu tố màu sắc, lối decor phù hợp với tâm lý và như cầu sử ...', 'phongtreem', '2017-10-16 03:01:30', '2017-10-16 03:01:30'),
(16, 'Văn Phòng', 'Van-Phong', 'Văn phòng hay công sở là tên gọi chỉ chung về một phòng hoặc khu vực làm việc khác trong đó mọi người làm việc hay là những tòa nhà được thiết kế, bố trí để sử dụng hoặc cho thuê đối với những cá nhân, tổ chức thực hiện các hoạt động văn phòng (liên quan đến giấy tờ, sổ sách, máy vi tính....), Văn phòng cũng có thể ...', 'vanphong', '2017-10-16 03:02:01', '2017-10-16 03:02:01'),
(19, 'Đồ Trang Trí', 'Do-Trang-Tri', 'Trang trí nội thất bằng đồ vật', 'dotrangtri', '2017-10-21 14:40:36', '2017-10-21 14:40:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `username`, `email`, `password`, `address`, `phone_number`, `google_id`, `facebook_id`, `github_id`, `phone_social`, `thumbnail`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đại', 'dai', 'khaquy0911@gmail.com', '$2y$10$M0adL0Oh0Qo6rnlM4y6O1OLCZ9uG2pnY.Qt/ZmwnD82IO6UHbcer2', 'Long Xuyến', 933588295, NULL, NULL, NULL, NULL, NULL, 'U4jIfWMqqV01sE12oGPVaKWWHnqDxeIiAigDlfyxcFDyDCWol5T0Pg6gheL8', '2017-03-21 09:31:29', '2017-04-05 07:59:23'),
(2, 'Nguyễn Linh', 'linh', 'linh@gmail.com', '$2y$10$2USvymKIisuGiYJyjocX8.M0fXa5zudip5LHVh2e7SU6QfjSWs3Ym', 'An Giang', 933588295, NULL, NULL, NULL, NULL, NULL, 'kfcRKxirsqdX5MXfi6lDfoxPwCRKV30K0fNTc3CC', '2017-03-21 09:33:30', '2017-03-21 09:33:30'),
(3, 'Nguyễn Đại', 'daingu', 'khaquy09113@gmail.com', '$2y$10$kQjDMaD5nazStf0EKu9w3evGMcbT0.93KPxCXCG.ene6aLV3/lxGq', 'Sóc Trăng', 933588295, NULL, NULL, NULL, NULL, NULL, 'h2KwrJwMVPe2sJXdAS9iahzS45Bh0w0eY8Q4iBKV', '2017-03-24 05:50:49', '2017-03-24 05:50:49'),
(4, 'Khách Hàng', 'username', 'khaquy09115@gmail.com', '$2y$10$9o50mRRX/Ejv9PK04aEM8uSY8tmARX5ngJixtX3/nck/6D30d4vDW', 'Cần Thơ', 933588295, NULL, NULL, NULL, NULL, NULL, 'exIMQOUMMnNSBRQBUjhVTXLBtkLtYqqGl2fKlknTsphBkrAM7jhjffMXmxuh', '2017-03-26 06:35:14', '2017-03-26 07:14:07'),
(5, 'Nguyễn Thị Mộng Kha', 'mongkha', 'khaquy09116@gmail.com', '$2y$10$TfFZBTKWv9V7q/S/PazbuOXfdMwrwtjr7DXkrdRZiD4uFXqmjAHR.', 'Sóc Trăng', 1693494848, NULL, NULL, NULL, NULL, NULL, 'iCqoUuy3HdLOv9mEtBKEGrDaHK1mAnmTndYHn6cb1g7BczlgcGEo4SeUuoK8', '2017-04-04 07:14:34', '2017-04-04 07:19:09'),
(9, 'Nguyễn Phước Đại', 'customerdai', 'hoanghoang361110@gmail.com', '$2y$10$zwagGXL5hqiNfxFYrSVb.ecmY.eD/JI4gLbGzsuy1XOVGXNH8koEK', 'asdada', 0, NULL, NULL, NULL, NULL, NULL, 'dR3ibiowMkps8HH2bOiii85LfMVQdC3URL0lO57Y', '2017-10-16 07:47:22', '2017-10-16 07:47:22'),
(10, 'Nguyễn Phước Đại', 'customerdai11', 'hoanghoang3360@gmail.com', '$2y$10$faTi3VJDq1fENvDpgbeeu.Z6ugdWMF6WKdtP5IU.YlROHCfVFT86O', 'asdada', 933588295, NULL, NULL, NULL, NULL, NULL, 'dR3ibiowMkps8HH2bOiii85LfMVQdC3URL0lO57Y', '2017-10-16 07:54:21', '2017-10-16 07:54:21'),
(11, 'Nguyễn Phước Đại', 'usernamecustomer1', 'nguyenphuocdai19953@gmail.com', '$2y$10$JpN4ywfkFDHzNZyYJvFdWucP2tQbSJ89OHCQi3oTitCLU4U0rXyTm', '1232131', 933588295, NULL, NULL, NULL, NULL, NULL, 'O7femYGb4ue7WydcoBEwkSdWR9cUyFQn0m7c5xgs', '2017-10-16 07:59:58', '2017-10-16 07:59:58'),
(25, 'Nguyễn Phước Đại', 'vicente003', 'nguyenphuocdai1995@gmail.com', '$2y$10$XxstrBlCa320SGG9sJy6huXgIKUxRnrbtKjB8Pf.j.Kb05n/rv2tK', '1071 Thốt Nốt - Cần Thơ', 933588295, NULL, NULL, NULL, NULL, NULL, 'T9ug6BJXrpaOz4K42m2GBcYDUNqZCfZE3yESIYGP8YE1KAoAvYTk7DTfyOXe', '2017-10-16 10:47:27', '2017-10-26 06:33:48'),
(26, 'Nguyễn Phước Đại', 'vicente000', 'tiodev2609@gmail.com', '$2y$10$m3NLleSJvYezPXnH6taqV.MY6tDYTedYEWJFer40akr5I.mrjNjnO', '1071 Cần thơ', 933588295, NULL, NULL, NULL, NULL, NULL, 'Hdm8h7gimGBNsG23om8mIg26VdAxwb9gqSYwEEnt8cmrzwGq3Q3daLnwFUpq', '2017-10-24 16:02:41', '2017-10-26 06:10:23');

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
(18, '20994388_858881284276127_4204133170625638794_n.jpg', 34, '2017-10-31 01:52:21', '2017-10-31 01:52:21'),
(19, '3029953423_194853924.jpg', 35, '2017-10-31 03:16:16', '2017-10-31 03:16:16');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_12_08_131259_categories', 1),
(4, '2016_12_30_144939_customers', 1),
(5, '2016_12_30_150109_products', 1),
(6, '2016_12_30_152710_promotions', 1),
(7, '2016_12_30_153152_promotions_detail', 1),
(8, '2016_12_30_153646_news', 1),
(9, '2016_12_30_153656_images', 1),
(10, '2016_12_30_155233_comments', 1),
(11, '2016_12_30_160208_orders', 1),
(12, '2016_12_30_160215_orders_detail', 1),
(13, '2017_03_10_125505_create_shoppingcart_table', 1),
(14, '2017_10_31_084248_create_notifications_table', 1),
(15, '2017_10_31_084612_emails', 2),
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
(43, '2016_12_30_160208_orders', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
  `phone_social` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_receive` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datesigned` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `status`, `phone_social`, `address_receive`, `datesigned`, `user_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(127, NULL, '933588295', '1071 Cần thơ', '2017-10-24 23:02:41', NULL, 26, '2017-10-31 03:46:14', '2017-10-31 03:46:14'),
(128, NULL, '933588295', '1071 Cần thơ', '2017-10-24 23:02:41', NULL, 26, '2017-10-31 03:47:57', '2017-10-31 03:47:57');

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
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`product_id`, `order_id`, `quantity`, `price`, `note`, `date_signed`, `total`, `created_at`, `updated_at`) VALUES
(36, 128, 2, 300000, NULL, NULL, 600000.00, '2017-10-31 03:47:57', '2017-10-31 03:47:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('khaquy09113@gmail.com', 'cc71e7aece8e58ae8392d17c4413900fb8c14f1192cf9ad0c61026fd34bf6ad2', '2017-03-28 16:38:53'),
('hoanghoang360@gmail.com', '$2y$10$G9.V/e2d/HVGODS/rsifa.CnIashfLUMFnwefZxtoUonnSLqYqCg6', '2017-10-27 07:30:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `name`, `alias`, `price`, `discount`, `quantity`, `origin`, `view`, `rate`, `highlight`, `image`, `keywords`, `size`, `describe`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(34, 'Đồ Trang Trí', 'Do-Trang-Tri', 20000, NULL, 100, 'Việt Nam', NULL, NULL, NULL, '21034450_858881287609460_999147832790552494_n.jpg', 'dotrangtri', NULL, '<p>hihi</p>\r\n', 6, 19, '2017-10-31 01:52:21', '2017-10-31 01:52:21'),
(35, 'Hàng', 'Hang', 11111, NULL, 10, 'Việt Nam', NULL, NULL, NULL, '3029953423_194853924.jpg', 'dotrangtri', NULL, '<p>asdas</p>\r\n', 6, 19, '2017-10-31 03:16:16', '2017-10-31 03:16:16'),
(36, 'Giường Ngủ KLED', 'Giuong-Ngu-Kled', 300000, NULL, 57, 'Việt Nam', NULL, NULL, NULL, 'bohoa-300k.jpg', 'dotrangtri', NULL, '', 6, 19, '2017-10-31 03:16:37', '2017-10-31 03:16:37'),
(37, 'Giường Ngủ KL', 'Giuong-Ngu-Kl', 3000, NULL, 60, 'Việt Nam', NULL, NULL, NULL, '3029953423_194853924.jpg', 'dotrangtri', NULL, '<p>as</p>\r\n', 6, 19, '2017-10-31 03:17:07', '2017-10-31 03:17:07'),
(38, 'Giường Ngủ KLEDas', 'Giuong-Ngu-Kledas', 190, NULL, 10, 'Việt Nam', NULL, NULL, NULL, 'cay dua gia_1.jpg', 'giuongngu', NULL, '', 6, 19, '2017-10-31 03:17:25', '2017-10-31 03:17:25'),
(39, 'Chậu cây cau giả', 'Chau-Cay-Cau-Gia', 22222, NULL, 10, 'Việt Nam', NULL, NULL, NULL, '3030374321_194853924.gif', 'giuongngu', NULL, '<p>asd</p>\r\n', 6, 19, '2017-10-31 03:17:45', '2017-10-31 03:17:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `promotion_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `describe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions_detail`
--

CREATE TABLE `promotions_detail` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `promotion_id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'quy', 'khaquy09112@gmail.com', '$2y$10$rjENC1qAGNeAt8g6Eb6eeuy.Wm8zAdhbyFMgTkvLBdfeSY.uUt2L2', 1647494969, '', '', '', '', 1, 'yhBGzktXTF383aUtpPE8rxu9bs1sx0xZaCAYjWR07cd2frnkjD6YSP7sDAbW', NULL, '2017-10-10 08:35:03'),
(2, 'kha', 'khaquy0911@gmail.com', '$2y$10$twJD91ESPPm8iMGRiNvoPuE77Rj5Gqo9qAbO1.GJVw4OuLvmMnvSq', 918494848, '', '', '', '', 1, 'mviBITQb540ld0X0mPSPNkFHPQy87Uvdq3G6FFWJ1wEQfUpG8P8hwQqNywWN', '2017-03-21 08:25:40', '2017-04-05 16:58:15'),
(3, 'tkthuong', 'tkthuong@gmail.com', '$2y$10$X9qVpz0pFlTHll2x8TD.VeUtnmXJ.CbH7YDxpOaiU4czidStiZgmq', 933588295, '', '', '', '', 0, 'kfcRKxirsqdX5MXfi6lDfoxPwCRKV30K0fNTc3CC', '2017-03-21 08:26:12', '2017-03-27 08:20:06'),
(4, 'tkthuong1', 'tkthuong1@gmail.com', '$2y$10$aW2Ygi/JlciJgU2bk1oLd.j86I1vK7rsn5f8a7aGQmf30PsQSDdF6', 933588295, '', '', '', '', 0, 'makvuUszxe79oU3kRb8AAy1IncXTXTxT7ICVxFHiDNRhVxWitI3BoVmSoJ0P', '2017-03-27 08:13:26', '2017-04-05 16:54:57'),
(5, 'dai', 'khaquy09113@gmail.com', '$2y$10$CF2FGvc6lTsvuY/Lt1M0hOP0a4F7pIbrdEky6LLuANxnRT9n7v8um', 933588298, '', '', '', '', 1, '7J9H62ZeC9iBWAJeTzVpZY0aUpNHR3SHqmIHg6qEfnNJz9XcDUMw0pc0uPbe', '2017-03-28 16:35:22', '2017-04-05 16:54:14'),
(6, 'admin', 'admin@gmail.com', '$2y$10$f8LvTDXcwRKfUQXmoPspbua/BxTOsopzFBkUxh8BJZi.p2.mWzKci', 933588295, '', '', '', '', 1, 'AyzwTnBmFpRwsYX9Al5otrEzJZVLwXhhE9QJzS1QBjpKLDWVEAyXyBDPwufq', '2017-10-10 08:25:32', '2017-10-27 04:28:35'),
(7, 'user', 'user@gmail.com', '$2y$10$AK6yKX/fK/4EIzb.NQbVo.jHwUKSxju6fkhs3Nwzp5U2Tr.z7UvoS', 933588295, '', '', '', '', 0, 'wKQwLFfQXk2s4RWVsYxRxDUl2N33QrstG6cvNP74', '2017-10-10 08:41:06', '2017-10-10 08:41:06'),
(13, 'nguyenphuocdai', 'hoanghoang360@gmail.com', '$2y$10$L7/BEOqsX1BnQMLMgmh2LOdueTm/3.suSKHlgxN0ULUf3By.ubfO6', 0, '', '', '', '24251869', 0, 'e92b9f3f404af9ca19718e01cc37c574c17f86b2', '2017-10-27 09:44:25', '2017-10-27 09:44:25');

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
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promotion_id`);

--
-- Chỉ mục cho bảng `promotions_detail`
--
ALTER TABLE `promotions_detail`
  ADD KEY `promotions_detail_user_id_foreign` (`user_id`),
  ADD KEY `promotions_detail_promotion_id_foreign` (`promotion_id`);

--
-- Chỉ mục cho bảng `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

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
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT cho bảng `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `promotion_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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

--
-- Các ràng buộc cho bảng `promotions_detail`
--
ALTER TABLE `promotions_detail`
  ADD CONSTRAINT `promotions_detail_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`promotion_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_detail_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
