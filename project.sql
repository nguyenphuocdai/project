-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2017 lúc 11:42 AM
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
-- Cơ sở dữ liệu: `project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
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
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `alias`, `describe`, `keywords`, `created_at`, `updated_at`) VALUES
(4, 'Bó Lavender', 'Bo-Lavender', 'Bó Lavender', 'Bó Lavender', '2017-03-21 08:03:07', '2017-03-21 08:03:07'),
(5, 'Túi Thơm Lavender', 'Tui-Thom-Lavender', 'Túi Thơm Lavender', 'Túi Thơm Lavender', '2017-03-21 08:04:17', '2017-03-21 08:04:17'),
(6, 'Lọ Hoa Lavender', 'Lo-Hoa-Lavender', 'Lọ Hoa Lavender', 'Lọ Hoa Lavender', '2017-03-21 08:04:27', '2017-03-21 08:04:27'),
(7, 'Tinh Dầu', 'Tinh-Dau', 'Tinh Dầu', 'Tinh Dầu', '2017-03-21 08:27:16', '2017-03-21 08:27:16'),
(8, 'Hoa Cưới Lavender', 'Hoa-Cuoi-Lavender', 'Hoa Cưới Lavender', 'Hoa Cưới Lavender', '2017-03-21 08:28:57', '2017-03-21 08:28:57'),
(9, 'Hộp Quà Lavender', 'Hop-Qua-Lavender', 'Hộp Quà Lavender', 'Hộp Quà Lavender', '2017-03-22 04:33:03', '2017-03-22 04:33:03'),
(10, 'adasd', 'Adasd', 'dasdas', 'asdas', '2017-10-10 08:24:33', '2017-10-10 08:24:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `comment`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm này thật đẹp', 1, 26, '2017-04-04 06:27:26', '2017-04-04 06:27:26'),
(2, 'sản phẩm này đẹp quá', 1, 26, '2017-04-04 06:52:49', '2017-04-04 06:52:49'),
(3, 'Bó hoa nhỏ nhưng đẹp lắm !', 1, 5, '2017-04-04 07:12:43', '2017-04-04 07:12:43'),
(4, 'Hoa rất đẹp nhất định mình sẽ ủng hộ tiếp !', 5, 26, '2017-04-04 07:16:09', '2017-04-04 07:16:09'),
(5, 'Bó hoa cưới thật tuyệt vời !', 5, 27, '2017-04-04 07:18:46', '2017-04-04 07:18:46'),
(6, 'Sản phẩm đẹp tuyệt !', 5, 26, '2017-04-04 09:33:12', '2017-04-04 09:33:12');

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
  `phone_number` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `username`, `email`, `password`, `address`, `phone_number`, `thumbnail`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đại', 'dai', 'khaquy0911@gmail.com', '$2y$10$M0adL0Oh0Qo6rnlM4y6O1OLCZ9uG2pnY.Qt/ZmwnD82IO6UHbcer2', 'Long Xuyến', '933588295', NULL, 'U4jIfWMqqV01sE12oGPVaKWWHnqDxeIiAigDlfyxcFDyDCWol5T0Pg6gheL8', '2017-03-21 09:31:29', '2017-04-05 07:59:23'),
(2, 'Nguyễn Linh', 'linh', 'linh@gmail.com', '$2y$10$2USvymKIisuGiYJyjocX8.M0fXa5zudip5LHVh2e7SU6QfjSWs3Ym', 'An Giang', '933588295', NULL, 'kfcRKxirsqdX5MXfi6lDfoxPwCRKV30K0fNTc3CC', '2017-03-21 09:33:30', '2017-03-21 09:33:30'),
(3, 'Nguyễn Đại', 'daingu', 'khaquy09113@gmail.com', '$2y$10$kQjDMaD5nazStf0EKu9w3evGMcbT0.93KPxCXCG.ene6aLV3/lxGq', 'Sóc Trăng', '0933588295', NULL, 'h2KwrJwMVPe2sJXdAS9iahzS45Bh0w0eY8Q4iBKV', '2017-03-24 05:50:49', '2017-03-24 05:50:49'),
(4, 'Khách Hàng', 'username', 'khaquy09115@gmail.com', '$2y$10$9o50mRRX/Ejv9PK04aEM8uSY8tmARX5ngJixtX3/nck/6D30d4vDW', 'Cần Thơ', '0933588295', NULL, 'exIMQOUMMnNSBRQBUjhVTXLBtkLtYqqGl2fKlknTsphBkrAM7jhjffMXmxuh', '2017-03-26 06:35:14', '2017-03-26 07:14:07'),
(5, 'Nguyễn Thị Mộng Kha', 'mongkha', 'khaquy09116@gmail.com', '$2y$10$TfFZBTKWv9V7q/S/PazbuOXfdMwrwtjr7DXkrdRZiD4uFXqmjAHR.', 'Sóc Trăng', '01693494848', NULL, 'iCqoUuy3HdLOv9mEtBKEGrDaHK1mAnmTndYHn6cb1g7BczlgcGEo4SeUuoK8', '2017-04-04 07:14:34', '2017-04-04 07:19:09'),
(6, 'Đại', 'customer', 'hoanghoang360@gmail.com', '$2y$10$6Sr2keHL1qSUax40j9daPOPsALoPh8K3Ng16s2M2Ekxbv3W.sO8iq', '1072 C12', '0933588295', NULL, 'fwVNmi9KVTN2xcZiGGLFUs2VTGoubv0aMFRQryBCEgJt1JKimS5vRnF7eS98', '2017-10-10 08:38:10', '2017-10-10 09:00:47');

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
(1, 'kieu-toc-nam-tuoi-18.jpg', 27, '2017-10-10 08:26:20', '2017-10-10 08:26:20'),
(2, 'HC03-Lavender.jpg', 27, '2017-10-10 08:26:20', '2017-10-10 08:26:20'),
(3, 'HC03-Lavender.jpg', 27, '2017-10-10 08:26:20', '2017-10-10 08:26:20'),
(4, 'HC03-Lavender.jpg', 27, '2017-10-10 08:26:20', '2017-10-10 08:26:20');

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
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `tittle`, `intro`, `content`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Công dụng không ngờ của hoa Lavender ', 'Cây Lavender (oải hương) được biết đến như một loài hoa có nhiều tác dụng, thường được chiết xuất lấy tinh dầu để sử dụng làm kem dưỡng, xà phòng và nước hoa.', '<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\"><strong>C&acirc;y Lavender (oải hương)&nbsp;được biết đến như một lo&agrave;i hoa c&oacute; nhiều t&aacute;c dụng, thường được chiết xuất lấy tinh dầu để sử dụng l&agrave;m kem dưỡng, x&agrave; ph&ograve;ng v&agrave; nước hoa. Nhưng tr&ecirc;n thực tế, oải hương c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m giảm đau v&agrave; được l&agrave;m thuốc chống đau, tẩy tr&ugrave;ng. Theo phương ph&aacute;p truyền thống th&igrave; oải hương sử dụng để chăm s&oacute;c da khi bị vi&ecirc;m, chữa mụn trứng c&aacute;, c&ocirc;n tr&uacute;ng cắn, vết bỏng, r&aacute;m nắng hoặc vết ch&agrave;m.</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\"><a href=\"http://shoplavender.net/%20http://shoplavender.net\" style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(119, 119, 119); text-decoration-line: none; cursor: pointer;\"><strong>Hoa oải hương</strong></a>&nbsp;c&oacute; nguồn gốc từ Ph&aacute;p, tinh dầu được chiết xuất từ nhiều loại&nbsp;c&acirc;y oải hương&nbsp;kh&aacute;c nhau v&agrave; đều được ti&ecirc;u chuẩn ho&aacute;. Đa phần&nbsp;<a href=\"http://shoplavender.net/lam-dep-cung-tinh-dau-hoa-oai-huong\" style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(119, 119, 119); text-decoration-line: none; cursor: pointer;\" title=\"LÀM ĐẸP CÙNG TINH DẦU HOA OẢI HƯƠNG\"><strong>tinh dầu hoa oải hương d&ugrave;ng để l&agrave;m đẹp</strong></a>, nước hoa v&igrave; ch&uacute;ng c&oacute; m&ugrave;i thơm rất dễ chịu v&agrave; n&oacute; được pha chế c&ugrave;ng với nhiều loại tinh dầu kh&aacute;c như tinh dầu bạc h&agrave;, tinh dầu hương thảo, tinh dầu chanh hoặc c&aacute;c loại tinh dầu thuộc họ cam qu&yacute;t v&agrave; l&agrave;m kem Massage. N&oacute; cũng được kết hợp với c&acirc;y đinh hương, gỗ c&acirc;y tuyết t&ugrave;ng, c&acirc;y x&ocirc; thơm, c&acirc;y phong lữ, c&acirc;y hoắc hương&hellip;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\"><img alt=\"\" src=\"http://localhost/Project/resources/upload/images/mg-6600-1461294918636.JPG\" style=\"height:434px; width:650px\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,helvetica,sans-serif\">Hoa oải hương c&oacute; cuống hoa d&agrave;i, m&agrave;u x&aacute;m v&agrave; c&oacute; g&oacute;c cạnh, vỏ c&acirc;y dẹt. L&aacute; mọc đối nhau, kh&ocirc;ng c&oacute; cuống v&agrave; được phủ một lớp l&ocirc;ng tơ mịn. Hoa c&oacute; m&agrave;u t&iacute;m hoa c&agrave;, ống hoa được sắp xếp li&ecirc;n tục v&ograve;ng quanh cuống hoa. Tinh dầu được chiết xuất từ hoa c&oacute; m&ugrave;i rất thơm v&agrave; quyến rũ được d&ugrave;ng l&agrave;m nước hoa v&agrave; cũng d&ugrave;ng để l&agrave;m thuốc n&ecirc;n rất c&oacute; gi&aacute; trị về thương mại. N&oacute;i chung cả c&acirc;y oải hương đều c&oacute; hương thơm, nhưng tinh dầu oải hương th&igrave; chỉ được chiết xuất từ hoa v&agrave; cuống hoa. Kh&ocirc;ng chỉ lấy tinh dầu, oải hương c&ograve;n được sử dụng l&agrave;m t&uacute;i bột thơm, hoa ướp kh&ocirc;&hellip;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Kh&ocirc;ng dừng lại tr&ecirc;n thị trường mỹ phẩm, oải hương c&ograve;n &ldquo;lấn s&acirc;n&rdquo; sang thị trường dược phẩm l&agrave;m thuốc. Trong&nbsp;<a href=\"http://shoplavender.net/san-pham/tinh-dau-oai-huong\" style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(119, 119, 119); text-decoration-line: none; cursor: pointer;\" title=\"Tinh dầu Oải hương\"><strong>tinh dầu oải hương</strong></a>&nbsp;c&oacute; chứa c&aacute;c th&agrave;nh phần l&agrave;m giảm đau, chống lại chứng co giật, chữa bệnh thấp khớp, khử tr&ugrave;ng, khử m&ugrave;i h&ocirc;i, chống co thắt, ti&ecirc;u độc, gi&uacute;p đ&oacute;ng sẹo v&agrave; l&ecirc;n da non. N&oacute; c&ograve;n c&oacute; t&aacute;c dụng k&iacute;ch th&iacute;ch tim, lợi tiểu, sử dụng l&agrave;m thuốc điều kinh, giảm huyết &aacute;p, thuốc bổ thần kinh, l&agrave;m tho&aacute;t mồ h&ocirc;i, tăng sức khoẻ, l&agrave;m thuốc tẩy giun v&agrave; chữa c&aacute;c vết thương&hellip;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Từ xa xưa&nbsp;<a href=\"http://shoplavender.net/san-pham/nu-hoa-oai-huong-kho\" style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(119, 119, 119); text-decoration-line: none; cursor: pointer;\" title=\"Nụ hoa Oải hương khô\"><strong>nụ hoa oải hương</strong></a>&nbsp;c&ograve;n được d&ugrave;ng l&agrave;m gia vị v&agrave; c&oacute; t&aacute;c dụng tốt cho dạ d&agrave;y, l&agrave;m giảm chứng đầy hơi. Nhưng oải hương được d&ugrave;ng nhiều nhất để l&agrave;m nước hoa, tạo m&ugrave;i thơm, d&ugrave;ng để tẩy m&ugrave;i kh&oacute; chịu trong thuốc mỡ v&agrave; c&aacute;c hợp chất kh&aacute;c.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Oải hương l&agrave;m thuốc bổ rất tốt, tăng sức khoẻ khi bị suy nhược, ch&oacute;ng mặt, tim đập nhanh, l&agrave;m giảm c&aacute;c cơn co thắt v&agrave; đau bụng, k&iacute;ch th&iacute;ch sự th&egrave;m ăn. Tuy nhi&ecirc;n, tr&aacute;nh d&ugrave;ng oải hương với liều lượng cao đối với phụ nữ mang thai, v&igrave; ch&uacute;ng c&oacute; t&iacute;nh chất k&iacute;ch th&iacute;ch dạ con, dễ g&acirc;y sinh non cho sản phụ.</span></span></p>\r\n', 'lavender_800x535.jpg', 1, '2017-04-04 09:25:35', '2017-04-05 05:56:54'),
(3, 'Làm đẹp cùng tinh dầu oải hương', 'Hoa oải hương có rất nhiều công dụng cho sức khỏe, làm đẹp và là phù hợp với mọi loại da. Vậy nên khi được kết hợp với các thành phần thích hợp, có thể chế tạo thành kem dưỡng da, dưỡng môi, tẩy tế bào chết hay muối tắm tuyệt vời.', '<p><strong>Hoa oải hương&nbsp;c&oacute; rất nhiều c&ocirc;ng dụng&nbsp;cho sức khỏe, l&agrave;m đẹp&nbsp;v&agrave; l&agrave; ph&ugrave; hợp với mọi loại da. Vậy n&ecirc;n khi được kết hợp với c&aacute;c th&agrave;nh phần th&iacute;ch hợp, c&oacute; thể chế tạo&nbsp;th&agrave;nh kem dưỡng da, dưỡng m&ocirc;i, tẩy tế b&agrave;o chết hay muối tắm tuyệt vời. Tinh dầu oải hương c&oacute; c&ocirc;ng dụng l&agrave;m đẹp cho nhiều loại da v&agrave; c&oacute; nhiều c&aacute;ch chế biến kh&aacute;c nhau.</strong></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\">Chị em phụ nữ m&igrave;nh sẽ c&oacute; những kinh nghiệm l&agrave;m đẹp qu&yacute; b&aacute;u từ thi&ecirc;n nhi&ecirc;n, c&ograve;n đấng m&agrave;y r&acirc;u, h&atilde;y tham khảo để tặng cho chị em những m&oacute;n qu&agrave; &yacute; nghĩ m&agrave; thiết thực nh&eacute;. Sau đ&acirc;y, c&ugrave;ng t&igrave;m hiểu một số c&aacute;ch để sử dụng tinh dầu oải hương hiệu quả nhất:</span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\">1.&nbsp;Tẩy tế b&agrave;o chết cho da</span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\">Tẩy tế b&agrave;o chết l&agrave; c&ocirc;ng đoạn rất quan trọng trong việc nu&ocirc;i dưỡng v&agrave; chăm s&oacute;c l&agrave;n da. Qu&aacute; tr&igrave;nh n&agrave;y sẽ loại bỏ tế b&agrave;o chết, bụi bẩn t&iacute;ch tụ ở lỗ ch&acirc;n l&ocirc;ng. Chỉ với v&agrave;i bước đơn giản c&ugrave;ng nguy&ecirc;n liệu trong bếp l&agrave; bạn đ&atilde; c&oacute; thể tự l&agrave;m cho m&igrave;nh loại mỹ phẩm xanh hiệu quả v&agrave; kh&ocirc;ng độc hại để tẩy tế b&agrave;o chết.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\"><strong>Chuẩn bị:</strong></span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 3 -5 giọt tinh dầu oải hương</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 1/4 cup đường trắng</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 1-2 th&igrave;a s&uacute;p dầu jojoba hoặc dầu olive</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ Lọ đựng thủy tinh</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\"><strong>Thực hiện:</strong></span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">Cho đường v&agrave; hoa oải hương kh&ocirc; v&agrave;o cối, d&ugrave;ng ch&agrave;y nghiền n&aacute;t ch&uacute;ng. Nghiền cho đến khi hoa oải hương nhỏ ra v&agrave; tỏa m&ugrave;i hương. Cho th&ecirc;m dầu jojoba hoặc dầu olive v&agrave; khuấy đều cho đến khi c&aacute;c th&agrave;nh phần trộn đều v&agrave;o nhau. Sau đ&oacute;, bỏ v&agrave;o lọ thủy tinh để bảo quản.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\"><img alt=\"\" src=\"http://localhost/Project/resources/upload/images/tinh-dau-oai-huong1.jpg\" style=\"height:407px; width:624px\" /></span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\">2. L&agrave;m mặt nạ đắp mặt từ tinh dầu oải hương</span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\">Nếu gương mặt của bạn cần được &ldquo;t&aacute;i sinh&rdquo;, h&atilde;y sử dụng&nbsp;<strong>mặt nạ từ hoa oải hương</strong>. Loại mặt nạ n&agrave;y sẽ cung cấp c&aacute;c th&agrave;nh phần cần thiết mang lại độ ẩm, l&agrave;m dịu, loại bỏ vi khuẩn v&agrave; nu&ocirc;i dưỡng l&agrave;n da.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\"><strong>Chuẩn bị:</strong></span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 3 -5 giọt tinh dầu hoa oải hương</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 2 th&igrave;a s&uacute;p sữa chua</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 1 th&igrave;a s&uacute;p mật ong</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\"><strong>Thực hiện:</strong></span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">Để c&oacute; mặt nạ dưỡng da từ hoa oải hương, bạn chỉ cần kết hợp 2 th&igrave;a s&uacute;p sữa chua, 1 th&igrave;a s&uacute;p mật ong v&agrave; v&agrave;i giọt tinh dầu hoa oải hương hay 1/3 th&igrave;a s&uacute;p hoa oải hương kh&ocirc;. Trộn đều hỗn hợp v&agrave; &aacute;p ch&uacute;ng l&ecirc;n mặt, cổ, ngực trong 10 ph&uacute;t. Sau đ&oacute;, rửa sạch bằng nước ấm v&agrave; b&ocirc;i kem dưỡng. Bạn n&ecirc;n sử dụng loại mặt nạ n&agrave;y từ 1 &ndash; 2 lần/tuần.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\">3. L&agrave;m đẹp da v&agrave; giảm đau</span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\">Ng&acirc;m m&igrave;nh trong hỗn hợp hoa oải hương, thuốc tẩy magie c&ugrave;ng c&aacute;c loại dầu cần thiết kh&aacute;c sẽ gi&uacute;p bạn nu&ocirc;i dưỡng l&agrave;n da v&agrave; thư gi&atilde;n cơ bắp. Loại mỹ phẩm xanh n&agrave;y kh&ocirc;ng chỉ gi&uacute;p l&agrave;n da trở n&ecirc;n l&aacute;ng mịn, tươi trẻ m&agrave; c&ograve;n gi&uacute;p bạn tr&aacute;nh được những cơn đau, cảm gi&aacute;c mệt mỏi do l&agrave;m việc căng thẳng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\"><strong>Chuẩn bị:</strong></span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 2 cup thuốc tẩy magie (epsom salts)</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 1 cup baking soda</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 10 giọt tinh dầu bạc h&agrave;</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 5 giọt tinh dầu hương thảo</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 5 giọt tinh dầu hoa oải hương</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 5 giọt tinh dầu quế</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 2 th&igrave;a s&uacute;p hoa oải hương kh&ocirc;</span><br />\r\n<span style=\"color:rgb(0, 0, 0)\">+ 1 th&igrave;a s&uacute;p nh&aacute;nh hoa hương thảo tươi</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\"><strong>Thực hiện:</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0)\">Trộn đều hỗn hợp gồm thuốc tẩy magie trong một chiếc b&aacute;t lớn. Th&ecirc;m v&agrave;o c&aacute;c tinh dầu đ&atilde; chuẩn bị v&agrave; khuấy đều hỗn hợp. Sau đ&oacute;, th&ecirc;m hoa oải hương, nh&aacute;nh hương thảo v&agrave; khuấy từ từ. Sau khi đ&atilde; c&oacute; hỗn hợp, h&atilde;y cho v&agrave;o lọ thủy tinh c&oacute; nắp đậy để bảo quản. Mỗi lần tắm, cho v&agrave;o nước 1 ch&eacute;n loại dầu n&agrave;y v&agrave; ng&acirc;m m&igrave;nh &iacute;t nhất 15 ph&uacute;t.</span></p>\r\n', 'mg-6590-1461294906038.JPG', 1, '2017-04-04 09:27:43', '2017-04-05 05:57:32'),
(4, 'Nguồn gốc và công dụng của Lavender', 'HOA OẢI HƯƠNG HAY HOA LAVENDER ĐƯỢC BIẾT ĐẾN NHƯ LÀ MỘT LOÀI HOA THẢO MỘC ĐẸP TỰ NHIÊN, MÙI THƠM DỊU NHẸ, CÓ TÁC DỤNG THƯ GIÃN VÀ TRANG TRÍ RẤT TỐT.', '<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">HOA OẢI HƯƠNG HAY HOA LAVENDER ĐƯỢC BIẾT ĐẾN NHƯ L&Agrave; MỘT LO&Agrave;I HOA THẢO MỘC ĐẸP TỰ NHI&Ecirc;N, M&Ugrave;I THƠM DỊU NHẸ, C&Oacute; T&Aacute;C DỤNG THƯ GI&Atilde;N V&Agrave; TRANG TR&Iacute; RẤT TỐT.</span></span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">NHƯNG NGUỒN GỐC V&Agrave; C&Ocirc;NG DỤNG CH&Iacute;NH CỦA N&Oacute; TH&Igrave; CHƯA CHẮC AI CŨNG BIẾT, C&Ugrave;NG SHOPLAVENDER T&Igrave;M HIỂU ĐIỀU N&Agrave;Y NH&Eacute;</span></span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\"><strong>Nguồn gốc của hoa</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">C&acirc;y&nbsp;<a href=\"http://shoplavender.net/\" style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(119, 119, 119); text-decoration-line: none; cursor: pointer;\" target=\"_blank\"><strong>hoa oải hương</strong></a>&nbsp;l&agrave; loại c&acirc;y bụi thường ni&ecirc;n c&oacute; m&ugrave;i thơm nồng, xuất xứ từ v&ugrave;ng Địa Trung Hải. C&acirc;y hoa oải hương đ&atilde; từng được biết đến c&aacute;ch đ&acirc;y h&agrave;ng ng&agrave;n năm, từ thời Hy Lạp cổ đại. Người La M&atilde; đ&atilde; mang hoa oải hương phổ biến ra khắp ch&acirc;u &Acirc;u, tất cả những nơi n&agrave;o m&agrave; họ đặt ch&acirc;n đến, nhằm tạo n&ecirc;n nguồn cung cấp tinh dầu oải hương tại địa phương. Đ&acirc;y ch&iacute;nh l&agrave; một loại dược liệu thi&ecirc;n nhi&ecirc;n được ưa chuộng thời cổ đại. M&ugrave;i&nbsp;hoa oải hương tạo cảm gi&aacute;c l&acirc;ng l&acirc;ng xoa dịu nỗi đau. Người Hy Lạp v&agrave; La M&atilde; sử dụng n&oacute; pha v&agrave;o nước tắm v&igrave; hương thơm v&agrave; khả năng chữa bệnh của oải hương. Do đ&oacute; hoa oải hương c&oacute; t&ecirc;n khoa học l&agrave; Lavendula. Lavendula từ tiếng Latin lavare c&oacute; nghĩa l&agrave; rửa (to wash).</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\"><img alt=\"\" src=\"http://localhost/Project/resources/upload/images/mg-6910-1461294913824.JPG\" style=\"height:434px; width:650px\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\"><strong>C&ocirc;ng dụng của hoa oải hương</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Suốt thời Trung Cổ, hoa oải hương được xem như l&agrave; thứ thảo dược của t&igrave;nh y&ecirc;u (herb of love). Do m&ugrave;i hương thơm sạch v&agrave; t&iacute;nh chất đuổi c&ocirc;n tr&ugrave;ng, n&oacute; l&agrave; loại thảo mộc được ứng dụng rộng r&atilde;i. N&oacute; từng được d&ugrave;ng để s&aacute;t tr&ugrave;ng vết thương trong thời chiến.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Oải hương thường được chiết xuất lấy tinh dầu để sử dụng l&agrave;m nước hoa, x&agrave; ph&ograve;ng v&agrave; kem dưỡng da.&nbsp;<a href=\"http://shoplavender.net/muc-san-pham/hoa-lavender-kho\" style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(119, 119, 119); text-decoration-line: none; cursor: pointer;\" target=\"_blank\"><strong>Hoa Oải hương kh&ocirc;</strong></a>&nbsp;c&ograve;n được d&ugrave;ng&nbsp; l&agrave;m t&uacute;i bột thơm, hoa ướp kh&ocirc;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Oải hương cũng c&oacute; t&aacute;c dụng l&agrave;m giảm đau v&agrave; được l&agrave;m thuốc chống đau, tẩy tr&ugrave;ng. Theo phương ph&aacute;p truyền thống th&igrave; oải hương được&nbsp;d&ugrave;ng để thoa tr&ecirc;n da khi bị vi&ecirc;m, chữa mụn trứng c&aacute;, c&ocirc;n tr&ugrave;ng cắn, vết bỏng, r&aacute;m nắng hoặc vết ch&agrave;m. Ngo&agrave;i ra, oải hương l&agrave;m thuốc bổ rất tốt, tăng sức khoẻ khi bị suy nhược, l&agrave;m giảm c&aacute;c cơn co thắt v&agrave; đau bụng, k&iacute;ch th&iacute;ch sự th&egrave;m ăn.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Với gi&aacute; trị kinh tế v&agrave; thế mạnh của hoa, oải hương được trồng ở khắp nơi tại Ch&acirc;u &Acirc;u v&agrave; tinh dầu được chiết xuất từ lo&agrave;i hoa n&agrave;y đ&atilde; đem hương thơm đến to&agrave;n thế giới.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">M&ugrave;a h&egrave; l&agrave; m&ugrave;a thu hoạch của hoa oải hương, lo&agrave;i hoa l&agrave;m say đắm l&ograve;ng người bởi sắc m&agrave;u t&iacute;m ngắt v&agrave; hương thơm quyến rũ.</span></span></p>\r\n', 'IMG_5118.jpg', 1, '2017-04-04 09:31:33', '2017-04-05 05:58:02'),
(5, 'Công dụng đặc biệt của Lavender', 'HOA LAVENDER (OẢI HƯƠNG) TỪ XƯA ĐÃ LÀ MỘT LOÀI THẢO MỘC ĐƯỢC ƯA CHUỘNG NHẤT TRÊN THẾ GIỚI. LAVENDER KHÔNG CHỈ ĐẸP, MÀ CÒN CÓ ĐẾN HÀNG TRĂM LỢI ÍCH KHÁC NHAU', '<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\"><strong>HOA LAVENDER</strong>&nbsp;(OẢI HƯƠNG) TỪ XƯA Đ&Atilde; L&Agrave; MỘT LO&Agrave;I THẢO MỘC ĐƯỢC ƯA CHUỘNG NHẤT TR&Ecirc;N THẾ GIỚI. LAVENDER KH&Ocirc;NG CHỈ ĐẸP, M&Agrave; C&Ograve;N C&Oacute; ĐẾN H&Agrave;NG TRĂM LỢI &Iacute;CH KH&Aacute;C NHAU. BẠN C&Oacute; THỂ D&Ugrave;NG LAVENDER NHƯ MỘT LOẠI&nbsp;<strong>THẢO DƯỢC THƯ GI&Atilde;N</strong>, HAY SỬ DỤNG TRONG NẤU NƯỚNG, L&Agrave;M KEM DƯỠNG DA, PHA TR&Agrave; &hellip; HAY CHỈ ĐƠN GIẢN L&Agrave; GIỮ MỘT &Iacute;T B&Ecirc;N M&Igrave;NH.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Tại c&aacute;c nước ch&acirc;u &Acirc;u,&nbsp;<strong>lavender</strong>&nbsp;được nhắc đến như 1&nbsp;<strong>b&agrave;i thuốc</strong>&nbsp;quan trọng trong việc điều trị chứng mất ngủ, lo &acirc;u v&agrave; trầm cảm. Ngo&agrave;i ra, lavender thường xuy&ecirc;n được khuyến c&aacute;o sử dụng để giảm c&aacute;c t&aacute;c động của chứng đầy hơi, đau bụng, co thắt dạ d&agrave;y hay chứng đau đầu trong thời kỳ m&atilde;n kinh. Tại T&acirc;y Ban Nha,&nbsp;<strong>hoa oải hương</strong>&nbsp;được th&ecirc;m v&agrave;o tr&agrave; để điều trị bệnh tiểu đường v&agrave; kh&aacute;ng insulin.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\"><img alt=\"\" src=\"http://localhost/Project/resources/upload/images/mg-6753-1461294907339.JPG\" style=\"height:434px; width:650px\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Lavender được biết đến với c&aacute;c c&ocirc;ng dụng đặc biệt sau:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Chống trầm cảm</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Thuốc giảm đau</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Khử tr&ugrave;ng</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Ti&ecirc;u đ&agrave;m</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">Hưng phấn thần kinh</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">L&agrave;m mờ sẹo, nhanh l&agrave;nh vết thương.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0)\">V&agrave; rất nhiều c&ocirc;ng dụng kh&aacute;c cho sức khỏe</span></span></li>\r\n</ul>\r\n', 'trong-hoa-oai-huong1.jpg', 1, '2017-04-04 09:34:54', '2017-04-05 05:59:03'),
(6, 'Lần đầu tiên, có cả một vườn hoa oải hương đẹp mê mải ở Đà Lạt!', 'Vậy là cuối cùng, chúng ta cũng đã được tận mắt nhìn ngắm và mang về những bông oải hương đầu tiên được trồng ở Việt Nam rồi.', '<h2><span style=\"color:#000000\">Vậy l&agrave; cuối c&ugrave;ng, ch&uacute;ng ta cũng đ&atilde; được tận mắt nh&igrave;n ngắm v&agrave; mang về những b&ocirc;ng oải hương đầu ti&ecirc;n được trồng ở Việt Nam rồi.</span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-family:times new roman,georgia,serif; font-size:17px\">Với những ai y&ecirc;u lo&agrave;i hoa Lavender (Oải hương) nổi tiếng trong truyền thuyết, th&igrave; ngay l&uacute;c n&agrave;y đ&acirc;y, bạn n&ecirc;n x&aacute;ch vali l&ecirc;n Đ&agrave; Lạt ngay, bởi nơi duy nhất nh&acirc;n giống v&agrave; trồng th&agrave;nh c&ocirc;ng lo&agrave;i hoa Lavender đ&atilde; ch&iacute;nh thức trổ b&ocirc;ng, t&iacute;m khắp 1 v&ugrave;ng rồi đấy.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-family:times new roman,georgia,serif; font-size:17px\"><img alt=\"\" src=\"http://localhost/Project/resources/upload/images/mg-6818-1461294912783.JPG\" style=\"height:434px; width:650px\" /></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-family:times new roman,georgia,serif; font-size:17px\">Vườn hoa của anh L&ecirc; Tiến Th&agrave;nh - người đầu ti&ecirc;n nhập v&agrave; trồng th&agrave;nh c&ocirc;ng hoa Lavender ở Đ&agrave; Lạt những ng&agrave;y n&agrave;y đang h&uacute;t kh&aacute;ch hơn cả. Nhiều người đổ x&ocirc; l&ecirc;n đ&acirc;y để được tận mắt chứng kiến sự bung nở của lo&agrave;i hoa ngỡ chỉ được thấy tr&ecirc;n truyền h&igrave;nh, tạp ch&iacute;. V&agrave; đ&uacute;ng như mong đợi, Lavender nở từng cụm thẳng đứng, với sắc t&iacute;m vươn thẳng l&ecirc;n bầu trời xanh, tạo n&ecirc;n một khung cảnh ho&agrave;n hảo cho bất kỳ tấm ảnh n&agrave;o.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-family:times new roman,georgia,serif; font-size:17px\">Rất may l&agrave; m&ugrave;a h&egrave; năm nay, Đ&agrave; Lạt kh&ocirc;ng qu&aacute; nhiều mưa, trời cũng kh&ocirc;ng &acirc;m u. V&igrave; vậy, thời tiết dường như v&ocirc; c&ugrave;ng ho&agrave;n hảo để Lavender nở bung, thu h&uacute;t nhiều kh&aacute;ch tham quan. Lavender ở đ&acirc;y c&oacute; 2 loại: loại ngắn c&oacute; cả l&aacute; n&ecirc;n thơm hơn, b&ocirc;ng cũng rực hơn trong nắng. Loại c&agrave;nh d&agrave;i th&igrave; thơm dịu hơn, chuy&ecirc;n để g&oacute;i qu&agrave; hoặc cắm b&igrave;nh ngắn. Hoa tươi về trưng trong nh&agrave; được khoảng 1 tuần, sau đ&oacute; dốc ngược hoa xuống l&agrave;m hoa kh&ocirc; sẽ để được khoảng th&ecirc;m 6 th&aacute;ng nữa. Ch&iacute;nh điều n&agrave;y đ&atilde; khiến Lavender trở th&agrave;nh cơn sốt thật sự ở Đ&agrave; Lạt.</span></span></p>\r\n', 'mg-6818-1461294912783.JPG', 4, '2017-04-05 05:03:40', '2017-04-05 05:40:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
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
-- Đang đổ dữ liệu cho bảng `orders`
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
(102, 1, 1, '2017-03-28 15:04:36', 'Sóc Trăng', 4, '2017-03-26 07:01:47', '2017-03-26 07:01:47'),
(104, 1, 0, '2017-03-28 14:15:46', '145 Long Xuyên, An Giang', 4, '2017-03-26 07:12:03', '2017-03-26 07:12:03'),
(105, 1, 1, '2017-10-10 15:27:30', 'Cần Thơ', 1, '2017-03-26 07:14:28', '2017-03-26 07:14:28'),
(107, 1, 1, '2017-10-10 15:27:29', '30/4 Quận Ninh Kiều, TP CT', 1, '2017-03-26 07:22:07', '2017-03-26 07:22:07'),
(108, 1, 1, '2017-03-28 15:05:59', 'Long Xuyên', 1, '2017-03-28 08:05:27', '2017-03-28 08:05:27'),
(109, 1, 1, '2017-03-28 15:09:45', 'Sóc Trăng', 1, '2017-03-28 08:09:27', '2017-03-28 08:09:27'),
(110, 1, 1, '2017-04-05 23:32:28', '72 Lê Lai, Ninh Kiều, TPCT', 4, '2017-04-05 16:30:12', '2017-04-05 16:30:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `note` int(255) DEFAULT '0',
  `date_signed` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`product_id`, `order_id`, `quantity`, `price`, `total`, `note`, `date_signed`, `created_at`, `updated_at`) VALUES
(6, 2, 1, 150000, 150000, 0, NULL, '2017-03-21 09:37:33', '2017-03-21 09:37:33'),
(11, 3, 1, 250000, 250000, 0, NULL, '2017-03-21 09:41:18', '2017-03-21 09:41:18'),
(27, 4, 2, 320000, 640000, 0, NULL, '2017-03-23 05:50:07', '2017-03-23 05:50:07'),
(24, 4, 2, 300000, 600000, 0, NULL, '2017-03-23 05:50:07', '2017-03-23 05:50:07'),
(27, 5, 3, 320000, 960000, 0, NULL, '2017-03-23 06:10:23', '2017-03-23 06:10:23'),
(25, 8, 1, 250000, 250000, 0, NULL, '2017-03-24 02:24:10', '2017-03-24 02:24:10'),
(10, 20, 1, 300000, 300000, 0, NULL, '2017-03-24 08:25:32', '2017-03-24 08:25:32'),
(27, 21, 3, 320000, 960000, 0, NULL, '2017-03-24 09:12:50', '2017-03-24 09:12:50'),
(9, 22, 1, 110000, 110000, 0, NULL, '2017-03-24 09:17:00', '2017-03-24 09:17:00'),
(4, 94, 21, 100000, 2100000, -11, NULL, '2017-03-26 06:35:59', '2017-03-26 06:35:59'),
(4, 102, 4, 100000, 400000, -4, '2017-03-28 15:04:36', '2017-03-26 07:01:48', '2017-03-26 07:01:48'),
(4, 104, 5, 100000, 500000, -5, '2017-03-28 14:15:46', '2017-03-26 07:12:03', '2017-03-26 07:12:03'),
(4, 105, 4, 100000, 400000, 0, '2017-10-10 15:27:30', '2017-03-26 07:14:28', '2017-03-26 07:14:28'),
(27, 107, 1, 320000, 320000, 0, '2017-10-10 15:27:29', '2017-03-26 07:22:08', '2017-03-26 07:22:08'),
(4, 108, 1, 100000, 100000, 0, '2017-03-28 15:05:59', '2017-03-28 08:05:27', '2017-03-28 08:05:27'),
(5, 109, 3, 120000, 360000, 0, '2017-03-28 15:09:45', '2017-03-28 08:09:27', '2017-03-28 08:09:27'),
(25, 110, 1, 250000, 250000, 0, '2017-04-05 23:32:28', '2017-04-05 16:30:12', '2017-04-05 16:30:12'),
(11, 110, 1, 250000, 250000, 0, '2017-04-05 23:32:28', '2017-04-05 16:30:21', '2017-04-05 16:30:21'),
(26, 110, 1, 400000, 400000, 0, '2017-04-05 23:32:28', '2017-04-05 16:30:26', '2017-04-05 16:30:26'),
(17, 110, 1, 550000, 550000, 0, '2017-04-05 23:32:28', '2017-04-05 16:30:29', '2017-04-05 16:30:29');

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
('khaquy09113@gmail.com', 'cc71e7aece8e58ae8392d17c4413900fb8c14f1192cf9ad0c61026fd34bf6ad2', '2017-03-28 16:38:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `name`, `alias`, `price`, `quantity`, `discount`, `origin`, `view`, `rate`, `highlight`, `image`, `keywords`, `size`, `describe`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 'Bó Lavender Nhỏ', 'Bo-Lavender-Nho', 100000, 99, NULL, 'Pháp', 32, NULL, NULL, 'z614208267973_d77a3efc6735116700d21944a0fa42c7.jpg', 'Bó Lavender Nhỏ', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm gồm 80 c&agrave;nh lavender kết hợp với snowy v&agrave;ng g&oacute;i phong c&aacute;ch Vintage tạo n&ecirc;n b&oacute; hoa thật dễ thương.</span></span></p>\r\n', 1, 4, '2017-03-21 08:39:21', '2017-03-28 06:58:27'),
(5, 'Bó Lavender 1', 'Bo-Lavender-1', 120000, 96, NULL, 'Pháp', 10, NULL, NULL, 'z614208300653_f7057d04aa80c72b1335091be2216c2e.jpg', 'Bó Lavender 1', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm gồm 100 c&agrave;nh lavender g&oacute;i với phong c&aacute;ch Vintage tạo n&ecirc;n b&oacute; hoa mini dễ thương.</span></span></p>\r\n', 1, 4, '2017-03-21 08:39:53', '2017-03-26 09:25:56'),
(6, 'Bó Lavender Mix Hồng', 'Bo-Lavender-Mix-Hong', 150000, 98, NULL, 'Pháp', 45, NULL, NULL, 'z614208309452_0ee27f7a3cfacc18bd8f825396980e57.jpg', 'Bó Lavender Mix Hồng', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 100c&agrave;nh lavender kết hợp với &iacute;t babygrom trắng&nbsp;v&agrave; hoa hồng đỏ vĩnh cửu tạo n&ecirc;n b&oacute; hoa&nbsp;với phong c&aacute;ch&nbsp;cổ điển.</span></span></p>\r\n', 1, 4, '2017-03-21 08:40:44', '2017-03-26 09:24:55'),
(7, 'Lavender Mix Hồng Vàng', 'Lavender-Mix-Hong-Vang', 150000, 100, NULL, 'Pháp', 2, NULL, NULL, 'z614208317029_280d04f4e8aca9adeaea8c5ef0874291.jpg', 'Lavender Mix Hồng Vàng', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 200 c&agrave;nh lavender kết hợp với &iacute;t babygrom n&acirc;u v&agrave; hoa hồng v&agrave;ng vĩnh cửu tạo n&ecirc;n b&oacute; hoa&nbsp;cổ điển.</span></span></p>\r\n', 1, 4, '2017-03-21 08:41:36', '2017-03-26 09:24:00'),
(8, 'Lavender Mix Babygrom', 'Lavender-Mix-Babygrom', 220000, 100, NULL, 'Pháp', 1, NULL, NULL, 'z614208319945_e9a9cb1e36dada20a0c0e51f91e16b2c.jpg', 'Lavender Mix Babygrom', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 300 c&agrave;nh lavender kết hợp với &iacute;t babygrom n&acirc;u g&oacute;i với phong c&aacute;ch Vintage&nbsp;cổ điển.</span></span></p>\r\n', 1, 4, '2017-03-21 08:42:31', '2017-03-26 09:18:39'),
(9, 'Lavender Mix Mini', 'Lavender-Mix-Mini', 110000, 99, NULL, 'Pháp', 6, NULL, NULL, 'z614208323685_b982ef25742a55c3782742077806ee6e.jpg', 'Lavender Mix Mini', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm: 80 c&agrave;nh lavender kết hợp với c&uacute;c v&agrave;ng nhỏ v&agrave; babygrom n&acirc;u tạo n&ecirc;n m&oacute;n qu&agrave; nhỏ dễ thương.</span></span></p>\r\n', 1, 4, '2017-03-21 08:43:05', '2017-03-26 09:17:51'),
(10, 'Bó Lavender Giấy Tím', 'Bo-Lavender-Giay-Tim', 300000, 98, NULL, 'Pháp', 19, NULL, NULL, 'z614208442739_70e70d7d176eb2c3c702ad9b6897194a.jpg', 'Bó Lavender Giấy Tím', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">B&oacute; Lavender giấy t&iacute;m sự kết hợp giấy vải m&agrave;u t&iacute;m v&agrave; 350 c&agrave;nh lavender cho một m&agrave;u t&iacute;m l&atilde;ng mạn.</span></span></p>\r\n', 1, 4, '2017-03-21 08:44:39', '2017-03-26 09:16:32'),
(11, 'Lavender Mix Hồng Phấn', 'Lavender-Mix-Hong-Phan', 250000, 98, NULL, 'Pháp', 7, NULL, NULL, 'z614208443617_7274b9e4157f0080498cd0248d695bcb.jpg', 'Lavender Mix Hồng Phấn', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 200 c&agrave;nh lavender kết hợp với &iacute;t babygrom v&agrave; hoa hồng vĩnh cửu t&iacute;m tạo n&ecirc;n b&oacute; hoa với phong c&aacute;ch&nbsp;cổ điển.</span></span></p>\r\n', 1, 4, '2017-03-21 08:45:45', '2017-03-26 09:13:54'),
(12, 'Bó Lavender Vintage', 'Bo-Lavender-Vintage', 400000, 100, NULL, 'Pháp', 2, NULL, NULL, 'z614208444694_9e70019c3f025dfc37883c92b82cab7b.jpg', 'Bó Lavender Vintage', NULL, '<p>B&oacute; Lavender Vintage với 400 c&agrave;nh lavender g&oacute;i với phong c&aacute;ch cổ điển tạo n&ecirc;n b&oacute; hoa to v&agrave; m&agrave;u t&iacute;m cổ điển.</p>\r\n', 1, 4, '2017-03-21 08:46:14', '2017-03-26 09:12:59'),
(13, 'Lọ Lavender Mini', 'Lo-Lavender-Mini', 100000, 100, 0, 'Pháp', 1, NULL, NULL, 'z614208472584_9711d3c73092bf70d3ab9314a10ee1d8.jpg', 'Lọ Lavender Mini', NULL, 'Lọ Lavender Mini', 1, 6, '2017-03-21 08:47:20', '2017-03-21 08:47:20'),
(14, 'Bó Lavender Mix Snowy', 'Bo-Lavender-Mix-Snowy', 150000, 100, NULL, 'Pháp', 2, NULL, NULL, '534118_1771601769728323_3237173349324386820_n.jpg', 'Bó Lavender Mix Snowy', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 100 c&agrave;nh lavender kết hợp với &iacute;t snowy đủ m&agrave;u + hoa tuyết tạo n&ecirc;n sự h&agrave;i h&ograve;a m&agrave;u sắc cho b&oacute; hoa th&ecirc;m sinh động.</span></span></p>\r\n', 1, 4, '2017-03-22 04:34:38', '2017-03-26 09:11:26'),
(15, 'Hộp Quà Lavender 1', 'Hop-Qua-Lavender-1', 320000, 100, NULL, 'Pháp', 2, NULL, NULL, '535336_1753363744885459_7187678327855069652_n.jpg', 'Hộp Quà Lavender 1', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm bao gồm 200 c&agrave;nh lavender kết hợp với &iacute;t babygrom n&acirc;u đựng trong hộp handmade tạo n&ecirc;n hộp qu&agrave; thật cổ điển.</span></span></p>\r\n', 1, 9, '2017-03-22 04:35:22', '2017-03-26 09:10:00'),
(16, 'Lavender Mix Snowy ', 'Lavender-Mix-Snowy', 400000, 100, NULL, 'Pháp', 3, NULL, NULL, '1916732_1773298766225290_8687786195091098204_n.jpg', 'Lavender Mix Snowy ', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm 350 c&agrave;nh lavender kết hợp với snowy v&agrave;ng tạo n&ecirc;n sự h&agrave;i h&ograve;a về m&agrave;u sắc của b&oacute; hoa.</span></span></p>\r\n', 1, 4, '2017-03-22 04:35:56', '2017-03-26 09:08:32'),
(17, 'Lavender Mix Blue Rose', 'Lavender-Mix-Blue-Rose', 550000, 99, NULL, 'Pháp', 33, NULL, NULL, '1931283_1765653826989784_4312672697736837730_n.jpg', 'Lavender Mix Blue Rose', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm bao gồm: 300 c&agrave;nh lavender v&agrave; 3 hoa hồng xanh vĩnh cửu kết hợp với giấy b&aacute;o cổ điển tạo n&ecirc;n phong c&aacute;ch vintage thật tuyệt vời.</span></span></p>\r\n', 1, 4, '2017-03-22 04:36:24', '2017-03-26 09:05:11'),
(18, 'Lavender Mix 1 Blue Rose', 'Lavender-Mix-1-Blue-Rose', 200000, 100, NULL, 'Pháp', 3, NULL, NULL, '10389338_1770282893193544_640311356055518650_n.jpg', 'Lavender Mix 1 Blue Rose', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm gồm: 200 c&agrave;nh lavender + hoa hồng xanh vĩnh cửu với sự kết hợp với giấy t&iacute;m tạo n&ecirc;n một b&oacute; hoa thật tuyệt vời cho người y&ecirc;u m&agrave;u t&iacute;m.</span></span></p>\r\n', 2, 4, '2017-03-22 04:37:37', '2017-03-26 09:03:26'),
(19, 'Lọ Lavender Mini 2', 'Lo-Lavender-Mini-2', 100000, 100, NULL, 'Pháp', 1, NULL, NULL, '11205037_1762835213938312_7572129618388325356_n.jpg', 'Lọ Lavender Mini 2', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Lọ Lavender Mini với 50 c&agrave;nh lavender v&agrave; lọ thủy tinh nhỏ. D&ugrave;ng để trưng trong ph&ograve;ng kh&aacute;ch b&agrave;n học.</span></span></p>\r\n', 2, 6, '2017-03-22 04:38:53', '2017-03-26 09:02:03'),
(20, 'Túi Thơm & Hộp', 'Tui-Thom-&-Hop', 150000, 100, NULL, 'Pháp', 4, NULL, NULL, '12376853_1777237425831424_1967331709182184817_n.jpg', 'Túi Thơm & Hộp', NULL, '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Sản phẩm gồm: t&uacute;i thơm &amp; hộp. M&oacute;n qu&agrave; mini cho cuộc sống th&ecirc;m tươi đẹp.</span></span></p>\r\n', 2, 5, '2017-03-22 04:39:28', '2017-03-26 09:01:25'),
(24, 'Hộp Quà Lavender 3', 'Hop-Qua-Lavender-3', 300000, 99, NULL, 'Pháp', 56, NULL, NULL, '12790910_1765963293625504_4171092201010567396_n.jpg', 'Hộp Quà Lavender 3', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm bao gồm: Hộp handmade + t&uacute;i thơm + 250 c&agrave;nh lavender kết hợp với hoa hồng xanh vĩnh cửu v&agrave; hoa tuyết. M&oacute;n qu&agrave; tuyệt vời cho tất cả c&aacute;c dịp.</span></span></p>\r\n', 2, 9, '2017-03-22 04:41:47', '2017-03-26 09:00:30'),
(25, 'Lọ Lavender Lớn', 'Lo-Lavender-Lon', 250000, 98, NULL, 'Pháp', 8, NULL, NULL, '12790956_1767311350157365_7974970266926563894_n.jpg', 'Lọ Lavender Lớn', NULL, '<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Sản phẩm lọ lavender lớn bao gồm 250 c&agrave;nh lavender, hoa tuyết, hoa hồng ở t&acirc;m v&agrave; lo thủy tinh.</span></span></p>\r\n', 2, 6, '2017-03-22 04:42:47', '2017-03-26 08:59:13'),
(26, 'Lavender & 3 Red Rose', 'Lavender-&-3-Red-Rose', 400000, 97, NULL, 'Pháp', 77, NULL, NULL, '12794450_1767410800147420_5926584710392613445_n.jpg', 'Lavender & 3 Red Rose', NULL, '<p style=\"text-align: justify;\"><span style=\"color:#000000\"><span style=\"font-size:16px\">B&oacute; Lavender với phong c&aacute;ch cổ điển được g&oacute;i giấy b&aacute;o kiểu Vintage kết hợp 3 b&ocirc;ng hồng vĩnh cửu m&agrave;u đỏ v&agrave; nền hoa tuyết m&agrave;u trắng t&ocirc;n l&ecirc;n vẻ đẹp cổ điển của b&oacute; hoa.</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000\"><span style=\"font-size:16px\">Với những người th&iacute;ch phong c&aacute;ch Vintage đ&acirc;y chắc hẳn l&agrave; một b&oacute; hoa tuyệt vời !&nbsp;</span></span></p>\r\n', 2, 4, '2017-03-22 04:43:31', '2017-03-26 08:52:13'),
(27, 'Hoa Cưới 2', 'Hoa-Cuoi-2', 320000, 94, NULL, 'Pháp', 42, NULL, NULL, '12804768_1766611866893980_4787498596380245672_n.jpg', 'Hoa Cưới 2', NULL, '<p><span style=\"font-size:16px\"><strong>B&oacute; hoa cưới</strong> với trung t&acirc;m được b&oacute; từ Lavender, xung quanh kết hợp với c&aacute;c loại đu&ocirc;i thỏ v&agrave; l&uacute;a mạch trắng g&oacute;i k&egrave;m với giấy g&oacute;i m&agrave;u t&iacute;m trong v&agrave; trắng b&ecirc;n ngo&agrave;i t&ocirc;n l&ecirc;n vẻ đẹp sang trọng của b&oacute; hoa, l&agrave;m nổi bật l&ecirc;n vẻ đẹp v&agrave; sang trọng của người cầm n&oacute;.&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, 8, '2017-03-22 04:44:32', '2017-03-26 08:43:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `phone_number`, `thumbnail`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'quy', 'khaquy09112@gmail.com', '$2y$10$rjENC1qAGNeAt8g6Eb6eeuy.Wm8zAdhbyFMgTkvLBdfeSY.uUt2L2', '01647494969', NULL, 1, 'yhBGzktXTF383aUtpPE8rxu9bs1sx0xZaCAYjWR07cd2frnkjD6YSP7sDAbW', NULL, '2017-10-10 08:35:03'),
(2, 'kha', 'khaquy0911@gmail.com', '$2y$10$twJD91ESPPm8iMGRiNvoPuE77Rj5Gqo9qAbO1.GJVw4OuLvmMnvSq', '0918494848', NULL, 1, 'mviBITQb540ld0X0mPSPNkFHPQy87Uvdq3G6FFWJ1wEQfUpG8P8hwQqNywWN', '2017-03-21 08:25:40', '2017-04-05 16:58:15'),
(3, 'tkthuong', 'tkthuong@gmail.com', '$2y$10$X9qVpz0pFlTHll2x8TD.VeUtnmXJ.CbH7YDxpOaiU4czidStiZgmq', '0933588295', NULL, 0, 'kfcRKxirsqdX5MXfi6lDfoxPwCRKV30K0fNTc3CC', '2017-03-21 08:26:12', '2017-03-27 08:20:06'),
(4, 'tkthuong1', 'tkthuong1@gmail.com', '$2y$10$aW2Ygi/JlciJgU2bk1oLd.j86I1vK7rsn5f8a7aGQmf30PsQSDdF6', '933588295', NULL, 0, 'makvuUszxe79oU3kRb8AAy1IncXTXTxT7ICVxFHiDNRhVxWitI3BoVmSoJ0P', '2017-03-27 08:13:26', '2017-04-05 16:54:57'),
(5, 'dai', 'khaquy09113@gmail.com', '$2y$10$CF2FGvc6lTsvuY/Lt1M0hOP0a4F7pIbrdEky6LLuANxnRT9n7v8um', '0933588298', NULL, 1, '7J9H62ZeC9iBWAJeTzVpZY0aUpNHR3SHqmIHg6qEfnNJz9XcDUMw0pc0uPbe', '2017-03-28 16:35:22', '2017-04-05 16:54:14'),
(6, 'admin', 'admin@gmail.com', '$2y$10$lMy48ZptRmP.U2kdbpH3POL2WRohrs6uWWJA60XTMrJTRNtPUfjW6', '0933588295', NULL, 1, '0IHCj5UnpUADX2lsYhxFNWuy2tQ0Siv22YbiibhHDrH71R3w5QUzkAXTPNIe', '2017-10-10 08:25:32', '2017-10-10 08:41:08'),
(7, 'user', 'user@gmail.com', '$2y$10$AK6yKX/fK/4EIzb.NQbVo.jHwUKSxju6fkhs3Nwzp5U2Tr.z7UvoS', '0933588295', NULL, 0, 'wKQwLFfQXk2s4RWVsYxRxDUl2N33QrstG6cvNP74', '2017-10-10 08:41:06', '2017-10-10 08:41:06');

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
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
