-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2017 lúc 07:32 PM
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
(11, 'Phòng Khách', 'Phong-Khach', 'Phòng khách là một không gian xây dựng được bố trí trong ngôi nhà (có thể là một phòng, một gian hoặc vách....) nhằm mục đích làm không gian để chủ nhân ngội nhà tiếp đãi khách hoặc sử dụng làm không gian sinh hoạt chung cho cả nhà.', 'phongkhach', '2017-10-16 02:59:23', '2017-10-16 02:59:23'),
(12, 'Phòng Ăn', 'Phong-An', 'Chiếc bàn ăn là một trong những nội thất không thể thiếu được khi thiết kế nội thất trong phòng bếp. Tuy nhiên, dù được thiết kế như thế nào thì cũng phải phù ...', 'phongan', '2017-10-16 03:00:01', '2017-10-16 03:00:01'),
(13, 'Nhà Bếp', 'Nha-Bep', 'ếp đôi khi còn được hiểu là vật dùng để nấu thức ăn, thường là bếp lò, bếp than hay củi. Thông thường trong bếp ở nông thôn Việt Nam gồm có bếp đun (bằng gas hay than, củi...), dụng cụ nhà bếp như nồi, xoong, chảo, dao, thớt, rổ rá', 'nhabep', '2017-10-16 03:00:29', '2017-10-16 03:00:29'),
(14, 'Phòng Ngủ', 'Phong-Ngu', 'Phòng ngủ là một căn phòng riêng được thiết kế, bố trí để làm nơi mọi người đi ngủ vào ban đêm hoặc nghỉ ngơi, thư giãn trong ngày.', 'phongngu', '2017-10-16 03:00:56', '2017-10-16 03:00:56'),
(15, 'Phòng Trẻ Em', 'Phong-Tre-Em', 'Trẻ em không phải là người lớn thu nhỏ. Theo đó, khi thiết kế phòng cho bé, cha mẹ cần lưu ý đến yếu tố màu sắc, lối decor phù hợp với tâm lý và như cầu sử ...', 'phongtreem', '2017-10-16 03:01:30', '2017-10-16 03:01:30'),
(16, 'Văn Phòng', 'Van-Phong', 'Văn phòng hay công sở là tên gọi chỉ chung về một phòng hoặc khu vực làm việc khác trong đó mọi người làm việc hay là những tòa nhà được thiết kế, bố trí để sử dụng hoặc cho thuê đối với những cá nhân, tổ chức thực hiện các hoạt động văn phòng (liên quan đến giấy tờ, sổ sách, máy vi tính....), Văn phòng cũng có thể ...', 'vanphong', '2017-10-16 03:02:01', '2017-10-16 03:02:01'),
(17, 'Cửa', 'Cua', 'Kết quả hình ảnh cho cửa là gì\r\nCửa là một cấu trúc di chuyển được sử dụng để mở hay đóng một lối vào. Cửa thường di chuyển xoay quanh một trục (trụ hay cột) và có một bản lề để thay đổi vị trí của các cánh cửa hoặc có thể trượt hoặc xoay bên trong của một không gian nhất định.', 'cua', '2017-10-16 03:02:24', '2017-10-16 03:02:24'),
(18, 'Cắm Trại', 'Cam-Trai', 'Loại hình ngoài trời', 'camtrai', '2017-10-16 08:15:48', '2017-10-16 08:15:48'),
(19, 'Đồ Trang Trí', 'Do-Trang-Tri', 'Trang trí nội thất bằng đồ vật', 'dotrangtri', '2017-10-21 14:40:36', '2017-10-21 14:40:36');

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
(1, '', 26, 32, '2017-10-25 07:35:16', '2017-10-25 07:35:16'),
(2, '12312', 26, 31, '2017-10-25 07:40:50', '2017-10-25 07:40:50'),
(3, '12312312', 26, 31, '2017-10-25 07:41:42', '2017-10-25 07:41:42'),
(4, 'sản phẩm này đẹp quá', 26, 31, '2017-10-25 07:43:20', '2017-10-25 07:43:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
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
(9, 'Nguyễn Phước Đại', 'customerdai', 'hoanghoang361110@gmail.com', '$2y$10$zwagGXL5hqiNfxFYrSVb.ecmY.eD/JI4gLbGzsuy1XOVGXNH8koEK', 'asdada', NULL, NULL, 'dR3ibiowMkps8HH2bOiii85LfMVQdC3URL0lO57Y', '2017-10-16 07:47:22', '2017-10-16 07:47:22'),
(10, 'Nguyễn Phước Đại', 'customerdai11', 'hoanghoang3360@gmail.com', '$2y$10$faTi3VJDq1fENvDpgbeeu.Z6ugdWMF6WKdtP5IU.YlROHCfVFT86O', 'asdada', '0933588295', NULL, 'dR3ibiowMkps8HH2bOiii85LfMVQdC3URL0lO57Y', '2017-10-16 07:54:21', '2017-10-16 07:54:21'),
(11, 'Nguyễn Phước Đại', 'usernamecustomer1', 'nguyenphuocdai19953@gmail.com', '$2y$10$JpN4ywfkFDHzNZyYJvFdWucP2tQbSJ89OHCQi3oTitCLU4U0rXyTm', '1232131', '0933588295', NULL, 'O7femYGb4ue7WydcoBEwkSdWR9cUyFQn0m7c5xgs', '2017-10-16 07:59:58', '2017-10-16 07:59:58'),
(25, 'Nguyễn Phước Đại', 'vicente003', 'nguyenphuocdai1995@gmail.com', '$2y$10$XxstrBlCa320SGG9sJy6huXgIKUxRnrbtKjB8Pf.j.Kb05n/rv2tK', '1071 Thốt Nốt - Cần Thơ', '0933588295', NULL, 'T9ug6BJXrpaOz4K42m2GBcYDUNqZCfZE3yESIYGP8YE1KAoAvYTk7DTfyOXe', '2017-10-16 10:47:27', '2017-10-26 06:33:48'),
(26, 'Nguyễn Phước Đại', 'vicente000', 'tiodev2609@gmail.com', '$2y$10$m3NLleSJvYezPXnH6taqV.MY6tDYTedYEWJFer40akr5I.mrjNjnO', '1071 Cần thơ', '0933588295', NULL, 'Hdm8h7gimGBNsG23om8mIg26VdAxwb9gqSYwEEnt8cmrzwGq3Q3daLnwFUpq', '2017-10-24 16:02:41', '2017-10-26 06:10:23');

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
(5, 'ghe-fabio.jpg', 28, '2017-10-16 03:06:08', '2017-10-16 03:06:08'),
(6, 'product_item_04a.jpg', 28, '2017-10-16 03:43:38', '2017-10-16 03:43:38'),
(7, 'tu-tai-lieu-go-2-canh.jpg', 29, '2017-10-16 07:07:17', '2017-10-16 07:07:17'),
(8, 'giuong-ngu-dep.jpg', 30, '2017-10-21 14:35:59', '2017-10-21 14:35:59'),
(9, 'giuong-ngu.png', 30, '2017-10-21 14:35:59', '2017-10-21 14:35:59'),
(10, '20994388_858881284276127_4204133170625638794_n.jpg', 31, '2017-10-21 14:42:12', '2017-10-21 14:42:12'),
(11, '21034450_858881287609460_999147832790552494_n.jpg', 31, '2017-10-21 14:42:12', '2017-10-21 14:42:12'),
(12, 'cay dua gia_1.jpg', 31, '2017-10-21 14:42:12', '2017-10-21 14:42:12'),
(13, '3029953423_194853924_1.jpg', 32, '2017-10-21 14:43:28', '2017-10-21 14:43:28'),
(14, '3029959954_194853924.jpg', 32, '2017-10-21 14:43:28', '2017-10-21 14:43:28'),
(15, '3030374321_194853924.gif', 32, '2017-10-21 14:43:28', '2017-10-21 14:43:28'),
(16, '3029953423_194853924.jpg', 32, '2017-10-21 14:43:28', '2017-10-21 14:43:28'),
(17, 'mau-cua-nhom-nha-tam.jpg', 33, '2017-10-28 16:33:23', '2017-10-28 16:33:23');

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
(43, '2016_12_30_160208_orders', 5);

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
(6, 'Lần đầu tiên, có cả một vườn hoa oải hương đẹp mê mải ở Đà Lạt!', 'Vậy là cuối cùng, chúng ta cũng đã được tận mắt nhìn ngắm và mang về những bông oải hương đầu tiên được trồng ở Việt Nam rồi.', '<p><span style=\"font-size:16px\"><span style=\"color:#000000\">Vậy l&agrave; cuối c&ugrave;ng, ch&uacute;ng ta cũng đ&atilde; được tận mắt nh&igrave;n ngắm v&agrave; mang về những b&ocirc;ng oải hương đầu ti&ecirc;n được trồng ở Việt Nam rồi.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-family:times new roman,georgia,serif; font-size:17px\">Với những ai y&ecirc;u lo&agrave;i hoa Lavender (Oải hương) nổi tiếng trong truyền thuyết, th&igrave; ngay l&uacute;c n&agrave;y đ&acirc;y, bạn n&ecirc;n x&aacute;ch vali l&ecirc;n Đ&agrave; Lạt ngay, bởi nơi duy nhất nh&acirc;n giống v&agrave; trồng th&agrave;nh c&ocirc;ng lo&agrave;i hoa Lavender đ&atilde; ch&iacute;nh thức trổ b&ocirc;ng, t&iacute;m khắp 1 v&ugrave;ng rồi đấy.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-family:times new roman,georgia,serif; font-size:17px\"><img alt=\"\" src=\"http://localhost/Project/resources/upload/images/mg-6818-1461294912783.JPG\" style=\"height:434px; width:650px\" /></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote><span style=\"color:#000000\"><span style=\"font-family:times new roman,georgia,serif; font-size:17px\">Vườn hoa của anh L&ecirc; Tiến Th&agrave;nh - người đầu ti&ecirc;n nhập v&agrave; trồng th&agrave;nh c&ocirc;ng hoa Lavender ở Đ&agrave; Lạt những ng&agrave;y n&agrave;y đang h&uacute;t kh&aacute;ch hơn cả. Nhiều người đổ x&ocirc; l&ecirc;n đ&acirc;y để được tận mắt chứng kiến sự bung nở của lo&agrave;i hoa ngỡ chỉ được thấy tr&ecirc;n truyền h&igrave;nh, tạp ch&iacute;. V&agrave; đ&uacute;ng như mong đợi, Lavender nở từng cụm thẳng đứng, với sắc t&iacute;m vươn thẳng l&ecirc;n bầu trời xanh, tạo n&ecirc;n một khung cảnh ho&agrave;n hảo cho bất kỳ tấm ảnh n&agrave;o.</span></span></blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-family:times new roman,georgia,serif; font-size:17px\">Rất may l&agrave; m&ugrave;a h&egrave; năm nay, Đ&agrave; Lạt kh&ocirc;ng qu&aacute; nhiều mưa, trời cũng kh&ocirc;ng &acirc;m u. V&igrave; vậy, thời tiết dường như v&ocirc; c&ugrave;ng ho&agrave;n hảo để Lavender nở bung, thu h&uacute;t nhiều kh&aacute;ch tham quan. Lavender ở đ&acirc;y c&oacute; 2 loại: loại ngắn c&oacute; cả l&aacute; n&ecirc;n thơm hơn, b&ocirc;ng cũng rực hơn trong nắng. Loại c&agrave;nh d&agrave;i th&igrave; thơm dịu hơn, chuy&ecirc;n để g&oacute;i qu&agrave; hoặc cắm b&igrave;nh ngắn. Hoa tươi về trưng trong nh&agrave; được khoảng 1 tuần, sau đ&oacute; dốc ngược hoa xuống l&agrave;m hoa kh&ocirc; sẽ để được khoảng th&ecirc;m 6 th&aacute;ng nữa. Ch&iacute;nh điều n&agrave;y đ&atilde; khiến Lavender trở th&agrave;nh cơn sốt thật sự ở Đ&agrave; Lạt.</span></span></p>\r\n', 'mg-6818-1461294912783.JPG', 4, '2017-04-05 05:03:40', '2017-10-26 02:44:31');

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
(110, 1, 1, '2017-04-05 23:32:28', '72 Lê Lai, Ninh Kiều, TPCT', 4, '2017-04-05 16:30:12', '2017-04-05 16:30:12'),
(111, NULL, 0, NULL, 'C12', 25, '2017-10-24 15:08:52', '2017-10-24 15:08:52'),
(112, 6, 1, '2017-10-25 14:01:46', '', 25, '2017-10-24 15:42:25', '2017-10-24 15:42:25'),
(113, 6, 1, '2017-10-25 14:01:44', '', 25, '2017-10-24 15:51:19', '2017-10-24 15:51:19'),
(114, NULL, 0, NULL, '', 26, '2017-10-25 07:13:15', '2017-10-25 07:13:15'),
(115, NULL, 0, NULL, '', 26, '2017-10-25 07:18:21', '2017-10-25 07:18:21'),
(116, NULL, 0, NULL, '', 26, '2017-10-25 07:20:34', '2017-10-25 07:20:34'),
(117, NULL, 0, NULL, '', 26, '2017-10-25 07:24:35', '2017-10-25 07:24:35'),
(118, NULL, 0, NULL, '', 26, '2017-10-25 07:25:50', '2017-10-25 07:25:50'),
(119, NULL, 0, NULL, '', 26, '2017-10-25 07:27:51', '2017-10-25 07:27:51'),
(120, NULL, 0, NULL, '', 26, '2017-10-25 07:28:53', '2017-10-25 07:28:53'),
(121, NULL, 0, NULL, '', 26, '2017-10-25 07:29:28', '2017-10-25 07:29:28'),
(122, NULL, 0, NULL, '', 26, '2017-10-25 07:30:01', '2017-10-25 07:30:01'),
(123, 6, 1, '2017-10-28 12:48:47', '', 26, '2017-10-26 05:57:58', '2017-10-26 05:57:58'),
(124, 6, 1, '2017-10-28 12:48:45', '', 26, '2017-10-27 06:42:16', '2017-10-27 06:42:16'),
(125, 6, 1, '2017-10-28 12:48:42', '', 26, '2017-10-27 06:43:37', '2017-10-27 06:43:37'),
(126, NULL, 0, NULL, '', 26, '2017-10-28 16:27:50', '2017-10-28 16:27:50');

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
(32, 111, 1, 1000000, 1000000, 0, NULL, '2017-10-24 15:08:52', '2017-10-24 15:08:52'),
(29, 112, 12, 2750000, 33000000, 0, '2017-10-25 14:01:46', '2017-10-24 15:42:25', '2017-10-24 15:42:25'),
(28, 112, 1, 1590000, 1590000, 0, '2017-10-25 14:01:46', '2017-10-24 15:42:34', '2017-10-24 15:42:34'),
(31, 113, 3, 1900000, 5700000, 0, '2017-10-25 14:01:44', '2017-10-24 15:51:19', '2017-10-24 15:51:19'),
(28, 113, 2, 1590000, 3180000, 0, '2017-10-25 14:01:44', '2017-10-24 15:51:26', '2017-10-24 15:51:26'),
(31, 114, 8, 1900000, 15200000, -1, NULL, '2017-10-25 07:13:15', '2017-10-25 07:13:15'),
(29, 114, 26, 2750000, 71500000, -26, NULL, '2017-10-25 07:13:21', '2017-10-25 07:13:21'),
(32, 114, 26, 1000000, 26000000, -15, NULL, '2017-10-25 07:13:25', '2017-10-25 07:13:25'),
(30, 115, 5, 30000000, 150000000, 0, NULL, '2017-10-25 07:18:21', '2017-10-25 07:18:21'),
(31, 116, 9, 1900000, 17100000, -9, NULL, '2017-10-25 07:20:34', '2017-10-25 07:20:34'),
(28, 117, 14, 1590000, 22260000, -14, NULL, '2017-10-25 07:24:35', '2017-10-25 07:24:35'),
(29, 118, 11, 2750000, 30250000, -11, NULL, '2017-10-25 07:25:50', '2017-10-25 07:25:50'),
(32, 118, 11, 1000000, 11000000, -11, NULL, '2017-10-25 07:25:54', '2017-10-25 07:25:54'),
(29, 119, 12, 2750000, 33000000, -12, NULL, '2017-10-25 07:27:51', '2017-10-25 07:27:51'),
(31, 120, 11, 1900000, 20900000, -11, NULL, '2017-10-25 07:28:53', '2017-10-25 07:28:53'),
(30, 121, 14, 30000000, 420000000, -14, NULL, '2017-10-25 07:29:28', '2017-10-25 07:29:28'),
(28, 122, 8, 1590000, 12720000, -8, NULL, '2017-10-25 07:30:01', '2017-10-25 07:30:01'),
(31, 122, 14, 1900000, 26600000, -14, NULL, '2017-10-25 07:30:07', '2017-10-25 07:30:07'),
(32, 122, 9, 1000000, 9000000, -9, NULL, '2017-10-25 07:30:16', '2017-10-25 07:30:16'),
(32, 123, 5, 1000000, 5000000, 0, '2017-10-28 12:48:47', '2017-10-26 05:57:58', '2017-10-26 05:57:58'),
(30, 123, 1, 30000000, 30000000, 0, '2017-10-28 12:48:47', '2017-10-26 05:58:04', '2017-10-26 05:58:04'),
(29, 123, 2, 2750000, 5500000, 0, '2017-10-28 12:48:47', '2017-10-26 05:58:08', '2017-10-26 05:58:08'),
(29, 124, 4, 2750000, 11000000, 0, '2017-10-28 12:48:45', '2017-10-27 06:42:16', '2017-10-27 06:42:16'),
(32, 125, 1, 1000000, 1000000, 0, '2017-10-28 12:48:42', '2017-10-27 06:43:37', '2017-10-27 06:43:37'),
(29, 126, 1, 2750000, 2750000, -1, NULL, '2017-10-28 16:27:50', '2017-10-28 16:27:50');

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
(28, 'Ghế Fabio', 'Ghe-Fabio', 1590000, 0, NULL, 'Pháp', 153, NULL, NULL, 'ghe-fabio.jpg', 'ghevanphong,fabio', NULL, '<p>Ghế nh&acirc;n vi&ecirc;n Fabio mang thương hiệu AO+ được thiết kế v&agrave; sản xuất tại PH&aacute;p do The City Ph&acirc;n phối. Lưng ghế bọc lưới, nệm ngồi bọc vải, ch&acirc;n nhựa.</p>\r\n', 6, 16, '2017-10-16 03:06:08', '2017-10-16 03:43:38'),
(29, 'Tủ hồ sơ di động KLIMPEN', 'Tu-Ho-So-Di-Dong-Klimpen', 2750000, 0, 0, 'Việt Nam', 51, NULL, NULL, 'tu-tai-lieu-go-2-canh.jpg', 'tuhoso,klimpen', NULL, '<p>- Tủ ngăn k&eacute;o KLIMPEN c&oacute; thể đặt ở giữa ph&ograve;ng v&igrave; mặt sau tủ được ho&agrave;n chỉnh. Ngăn k&eacute;o được thiết kế với ngăn dừng để ngăn chặn k&eacute;o bị k&eacute;o ra qu&aacute; xa.</p>\r\n\r\n<p>- Tủ c&oacute; khe cắm cho nh&atilde;n tr&ecirc;n mỗi ngăn k&eacute;o để bạn c&oacute; thể dễ d&agrave;ng giữ cho vật dụng của bạn c&oacute; tổ chức v&agrave; t&igrave;m thấy ch&uacute;ng nhanh ch&oacute;ng</p>\r\n\r\n<p>- Chất liệu :&nbsp;</p>\r\n\r\n<p>+ Đầu tủ/ h&ocirc;ng tủ : v&aacute;n okal, sơn acrylic, nhựa&nbsp;ABS.</p>\r\n\r\n<p>+ Trước thanh trượt/ bệ ch&acirc;n/ mặt trước ngăn k&eacute;o : v&aacute;n sợi&nbsp;, sơn arcylic.</p>\r\n\r\n<p>+ Lưng tủ : v&aacute;n okal, sơn acrylic</p>\r\n', 6, 16, '2017-10-16 07:07:17', '2017-10-16 07:07:17'),
(30, 'Giường Ngủ KLED', 'Giuong-Ngu-Kled', 30000000, 0, 0, 'Việt Nam', 31, NULL, NULL, 'giuong-ngu-dep-go-tu-nhien.jpg', 'giuongngu', NULL, '<p>Chất liệu: MDF cao cấp</p>\r\n\r\n<div class=\"csschitiet\" style=\"position: relative; max-width: 100%; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Giường ngủ sử dụng nguy&ecirc;n liệu nhập khẩu, thiết kế sang trọng, chắc chắn, c&oacute; nhiều v&acirc;n kh&aacute;c nhau để lựa chọn. Chất liệu bền, đẹp, gi&aacute; cả hợp l&yacute;, Giường Ngủ GN002 l&agrave; sự lựa chọn tuyệt vời cho kh&aacute;ch h&agrave;ng kinh doanh dịch vụ kh&aacute;c sạn, nh&agrave; nghỉ.</div>\r\n\r\n<div class=\"csschitiet\" style=\"position: relative; max-width: 100%; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">\r\n<div style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Mẫu&nbsp;<strong>giường ngủ đẹp</strong>&nbsp;GN002 c&oacute; nhiều kiểu chạy chỉ kh&aacute;c nhau.<br />\r\n<br />\r\n<strong><a href=\"http://noithatminhkhoi.com/giuong-ngu\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" target=\"_blank\" title=\"Giường ngủ\">Giường ngủ</a></strong>&nbsp;sử dụng nguy&ecirc;n liệu nhập khẩu, thiết kế sang trọng, chắc chắn, c&oacute; nhiều v&acirc;n kh&aacute;c nhau để lựa chọn. Chất liệu bền, đẹp, gi&aacute; cả hợp l&yacute;, Giường Ngủ GN002 l&agrave; sự lựa chọn tuyệt vời cho kh&aacute;ch h&agrave;ng kinh doanh dịch vụ kh&aacute;ch sạn, nh&agrave; nghỉ.&nbsp;<br />\r\n&nbsp;</div>\r\n\r\n<div style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Một số tư vấn khi&nbsp;chọn giường ngủ cho kh&aacute;ch sạn<strong>:</strong><br />\r\n&nbsp;\r\n<h2 style=\"text-align:justify\"><strong>1. Đầu ti&ecirc;n, bất cứ vật dụng trang tr&iacute; nội thất n&agrave;o th&igrave; k&iacute;ch cỡ cũng l&agrave; yếu tố quan trọng.</strong></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Nếu bạn c&oacute; một ph&ograve;ng ngủ của kh&aacute;ch sạn tương đối nhỏ, bạn kh&ocirc;ng thể chọn những kiểu giường ngoại cỡ như d&agrave;nh cho vua ch&uacute;a, v&igrave; vậy n&oacute; sẽ l&agrave;m mất đi t&iacute;nh h&agrave;i ho&agrave; trong việc b&agrave;i tr&iacute; th&ecirc;m nhiều đồ d&ugrave;ng kh&aacute;c trong ph&ograve;ng.</li>\r\n	<li>V&agrave; quan trọng một điều nữa l&agrave; bạn cần phải lưu &yacute; l&agrave; khi mua giường để ngủ một m&igrave;nh th&igrave; mua k&iacute;ch cỡ n&agrave;o l&agrave; hợp l&yacute; nhất, c&ograve;n trong trường hợp kh&aacute;ch sạn th&igrave; thường c&oacute; nhiều người ngủ th&igrave; phải chọn chiếc giường c&oacute; bề ngang cần lớn hơn v&iacute; dụ như 160cm hay 180cm d&agrave;nh cho 2 người.</li>\r\n	<li>Trừ khi bạn l&agrave; người th&iacute;ch tạo ra sự thoải m&aacute;i tối đa chiếc giường ngoại cỡ với bề ngang 200cm l&agrave; sự lựa chọn kh&ocirc;ng tồi.</li>\r\n</ul>\r\n\r\n<h2><strong>2. Đệm - th&ecirc;m một yếu tố quan trọng.</strong></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Tất nhi&ecirc;n mọi người đếu muốn thật thoải m&aacute;i v&agrave; &ecirc;m &aacute;i khi nằm tr&ecirc;n giường, hiện nay hầu hết mọi gia đ&igrave;nh đều sử dụng nệm cho chiếc giường của m&igrave;nh.</li>\r\n	<li>C&oacute; nhiều loại nệm nhưng nệm cao su cao cấp vẫn l&agrave; lựa chọn tuyệt vời nhất mặt d&ugrave; gi&aacute; th&agrave;nh kh&ocirc;ng hề rẻ.</li>\r\n	<li>V&agrave; đa số những nh&agrave; sản xuất nệm đều cho th&ecirc;m v&agrave;o lớp b&ocirc;ng v&agrave; lớp l&oacute;t ở tr&ecirc;n mặt nệm hay c&ograve;n gọi l&agrave; chần g&ograve;n để tăng tối đa sự thoải m&aacute;i khi sử dụng. Khi bạn mua tấm trải giường, bạn phải chắc chắn 100% đ&atilde; đo đ&uacute;ng k&iacute;ch thước của nệm v&agrave; m&agrave;u sắc của kh&ocirc;ng gian ph&ograve;ng ngủ, m&agrave;u sắc đồ d&ugrave;ng nội thất kh&aacute;c để lựa được một bộ drap đẹp, ph&ugrave; hợp nhất.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h2>3. Gi&aacute; th&agrave;nh, tất nhi&ecirc;n ai cũng quan t&acirc;m&nbsp;đến gi&aacute; th&agrave;nh nhất, bạn cần d&agrave;nh số ti&ecirc;n th&iacute;ch hợp.</h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Tr&ecirc;n thị trường hiện nay c&oacute; v&ocirc; v&agrave;n mẫu m&atilde;, kiểu giường kh&aacute;c nhau, thiết kế rất đẹp mắt v&agrave; độc đ&aacute;o, ấn tượng gi&aacute; từ 2.500.000 vnđ đến tr&ecirc;n 20.000.000 vnđ.</li>\r\n	<li>Với nhu cầu sử dụng trong v&ograve;ng 20 năm v&agrave; đổi mẫu kh&aacute;c th&igrave; những mẫu giường l&agrave;m từ gỗ mdf cao cấp gi&aacute; khoảng hơn 3.000.000 vnđ (loại chuy&ecirc;n sử dụng trong kh&aacute;ch sạn) đ&atilde; đ&aacute;p ứng được.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h2><strong>4. Khung giường phải thật chắc chắn, đ&oacute; l&agrave; điều then chốt.</strong></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Bạn h&atilde;y tưởng tượng một chiếc giường cứ ph&aacute;t ra tiếng động khi trở m&igrave;nh hay c&oacute; &quot;hoạt động mạnh&quot;, đ&oacute; l&agrave; một điều kinh khủng, n&oacute; ph&aacute; hoại giấc ngủ hay ph&aacute; hoại cuộc y&ecirc;u.</li>\r\n	<li>H&atilde;y xem chất liệu của giường chắc chắn đ&oacute; l&agrave; loại tốt v&agrave; lắp r&aacute;p phải thật chuẩn.<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h2>5. Quan trọng l&agrave; bạn phải th&iacute;ch.</h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>C&aacute;c yếu tố về gi&aacute; cả, kỹ thuật khi đ&atilde; được đ&aacute;p ứng th&igrave; bạn phải lựa chọn chiếc giường l&agrave;m sao vừa h&agrave;i ho&agrave; với ph&ograve;ng ngủ nhưng phải đ&aacute;p ứng được sở th&iacute;ch của chủ nh&acirc;n, đừng vội v&agrave;ng quyết định cứ chậm r&atilde;i c&acirc;n nhắc khi lựa chọn.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h2><strong>6. Đệm - chọn chất liệu.</strong></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Đệm - nệm hiện nay c&oacute; &nbsp;rất nhiều loại nhưng đối với kh&aacute;ch sạn th&igrave; n&ecirc;n sử dụng nệm l&ograve; xo.</li>\r\n	<li>Thứ nhất l&agrave; về gi&aacute; cả của nệm l&ograve; xo cũng mềm hơn nệm cao su rất nhiều.</li>\r\n	<li>Thứ hai l&agrave; độ d&agrave;y của nệm thấp nhất l&agrave; 20cm nh&igrave;n rất sang trọng v&agrave; cao cấp. Thứ ba l&agrave; về độ đ&agrave;n hồi, l&ograve; xo hiện đại hiện nay được xử l&yacute; rất tốt n&ecirc;n độ đ&agrave;n hồi rất cao, rất ph&ugrave; hợp cho kh&aacute;ch sạn.</li>\r\n	<li>Khuyết điểm lớn nhất của nệm l&ograve; xo l&agrave; độ bền, cho n&ecirc;n bạn cần phải chọn thật kỹ h&atilde;ng sản xuất v&agrave; nhờ người c&oacute; kinh nghiệm tư vấn để chọn được chiếc nệm vừa đẹp vừa bền.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n', 6, 14, '2017-10-21 14:35:59', '2017-10-21 14:35:59'),
(31, 'Chậu cây cau giả', 'Chau-Cay-Cau-Gia', 1900000, 0, NULL, 'Việt Nam', 64, NULL, NULL, 'cay dua gia_1.jpg', 'caycanh', NULL, '<p style=\"text-align:justify\">Một chậu c&acirc;y cau giả bao gồm 3 c&acirc;y, trong đ&oacute; 1 c&acirc;y cao v&agrave; 2 c&acirc;y thấp.</p>\r\n\r\n<p style=\"text-align:justify\">Chậu c&acirc;y cau giả th&iacute;ch hợp trang tr&iacute; ban c&ocirc;ng, s&acirc;n thượng, hoặc những nơi trong nh&agrave; cần kh&ocirc;ng gian xanh m&aacute;t.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">C&acirc;y xanh giả với m&agrave;u sắc như c&acirc;y thật, bạn kh&ocirc;ng phải tốn thời gian v&agrave; c&ocirc;ng sức chăm s&oacute;c, c&acirc;y nh&igrave;n vẫn rất đẹp theo thời gian. Nếu c&acirc;y d&iacute;nh bụi, bạn chỉ cần xịt rửa lại bằng nước l&agrave; c&acirc;y trở n&ecirc;n như mới.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;Qu&yacute; kh&aacute;ch c&oacute; thể mua c&acirc;y kh&ocirc;ng cần chậu, khi đặt h&agrave;ng, qu&yacute; kh&aacute;ch n&oacute;i r&otilde; y&ecirc;u cầu, ch&uacute;ng t&ocirc;i sẽ trừ tiền chậu ra cho qu&yacute; kh&aacute;ch</p>\r\n\r\n<p style=\"text-align:justify\">- Vận chuyển miễn ph&iacute; trong nội th&agrave;nh TPHCM, nếu vận chuyển đi tỉnh ngo&agrave;i TPHCM, ch&uacute;ng t&ocirc;i sẽ đ&oacute;ng chậu v&agrave; c&acirc;y ri&ecirc;ng, sau đ&oacute; ch&uacute;ng t&ocirc;i sẽ hướng dẫn qu&yacute; kh&aacute;ch c&aacute;ch trồng c&acirc;y v&ocirc; chậu.</p>\r\n\r\n<p style=\"text-align:justify\">Trồng c&acirc;y trong nh&agrave; kh&ocirc;ng những mang lại kh&ocirc;ng gian xanh m&aacute;t, c&ograve;n mang phong thủy tốt , tăng cường sinh kh&iacute;, th&ecirc;m thịnh vượng v&agrave; may mắn.</p>\r\n', 6, 19, '2017-10-21 14:42:12', '2017-10-25 08:08:37'),
(32, 'Cây treo đồ cổ điển', 'Cay-Treo-Do-Co-Dien', 1000000, 0, 0, 'Việt Nam', 67, NULL, NULL, '3029953423_194853924.jpg', 'dotrangtri', NULL, '<p style=\"text-align:justify\">Th&ocirc;ng tin sản phẩm :</p>\r\n\r\n<p style=\"text-align:justify\">- Chất liệu : sắt sơn tĩnh điện chống rỉ s&eacute;t</p>\r\n\r\n<p style=\"text-align:justify\">- M&agrave;u sắc : sản phẩm c&oacute; 2 m&agrave;u : đen v&agrave; trắng kem. Bạn chọn m&agrave;u sắc vui l&ograve;ng để lại lời nhắn khi đặt h&agrave;ng</p>\r\n\r\n<p style=\"text-align:justify\">- K&iacute;ch thước : Cao 1m85, đường k&iacute;nh đế m&oacute;c 40cm</p>\r\n\r\n<p style=\"text-align:justify\">- Trọng lượng : 13kg</p>\r\n\r\n<p style=\"text-align:justify\">- C&oacute; thể th&aacute;o rời, rất thuận tiện để&nbsp;vận chuyển.</p>\r\n', 6, 19, '2017-10-21 14:43:28', '2017-10-21 14:43:28'),
(33, 'Cửa nhà', 'Cua-Nha', 1000000, 60, NULL, 'Việt Nam', 10, NULL, NULL, 'mau-cua-nhom-nha-tam.jpg', 'cua', NULL, '<p>12312</p>\r\n', 6, 17, '2017-10-28 16:32:21', '2017-10-28 16:32:48');

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
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `phone_number`, `thumbnail`, `facebook_id`, `google_id`, `github_id`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'quy', 'khaquy09112@gmail.com', '$2y$10$rjENC1qAGNeAt8g6Eb6eeuy.Wm8zAdhbyFMgTkvLBdfeSY.uUt2L2', '01647494969', NULL, NULL, NULL, NULL, 1, 'yhBGzktXTF383aUtpPE8rxu9bs1sx0xZaCAYjWR07cd2frnkjD6YSP7sDAbW', NULL, '2017-10-10 08:35:03'),
(2, 'kha', 'khaquy0911@gmail.com', '$2y$10$twJD91ESPPm8iMGRiNvoPuE77Rj5Gqo9qAbO1.GJVw4OuLvmMnvSq', '0918494848', NULL, NULL, NULL, NULL, 1, 'mviBITQb540ld0X0mPSPNkFHPQy87Uvdq3G6FFWJ1wEQfUpG8P8hwQqNywWN', '2017-03-21 08:25:40', '2017-04-05 16:58:15'),
(3, 'tkthuong', 'tkthuong@gmail.com', '$2y$10$X9qVpz0pFlTHll2x8TD.VeUtnmXJ.CbH7YDxpOaiU4czidStiZgmq', '0933588295', NULL, NULL, NULL, NULL, 0, 'kfcRKxirsqdX5MXfi6lDfoxPwCRKV30K0fNTc3CC', '2017-03-21 08:26:12', '2017-03-27 08:20:06'),
(4, 'tkthuong1', 'tkthuong1@gmail.com', '$2y$10$aW2Ygi/JlciJgU2bk1oLd.j86I1vK7rsn5f8a7aGQmf30PsQSDdF6', '933588295', NULL, NULL, NULL, NULL, 0, 'makvuUszxe79oU3kRb8AAy1IncXTXTxT7ICVxFHiDNRhVxWitI3BoVmSoJ0P', '2017-03-27 08:13:26', '2017-04-05 16:54:57'),
(5, 'dai', 'khaquy09113@gmail.com', '$2y$10$CF2FGvc6lTsvuY/Lt1M0hOP0a4F7pIbrdEky6LLuANxnRT9n7v8um', '0933588298', NULL, NULL, NULL, NULL, 1, '7J9H62ZeC9iBWAJeTzVpZY0aUpNHR3SHqmIHg6qEfnNJz9XcDUMw0pc0uPbe', '2017-03-28 16:35:22', '2017-04-05 16:54:14'),
(6, 'admin', 'admin@gmail.com', '$2y$10$f8LvTDXcwRKfUQXmoPspbua/BxTOsopzFBkUxh8BJZi.p2.mWzKci', '0933588295', NULL, NULL, NULL, NULL, 1, 'SRVjMrm09vIL266WNbGPF2RAIGyjkypTgagXzPPhPSGaNSWB4ySa4YvTiPn8', '2017-10-10 08:25:32', '2017-10-27 04:28:35'),
(7, 'user', 'user@gmail.com', '$2y$10$AK6yKX/fK/4EIzb.NQbVo.jHwUKSxju6fkhs3Nwzp5U2Tr.z7UvoS', '0933588295', NULL, NULL, NULL, NULL, 0, 'wKQwLFfQXk2s4RWVsYxRxDUl2N33QrstG6cvNP74', '2017-10-10 08:41:06', '2017-10-10 08:41:06'),
(13, 'nguyenphuocdai', 'hoanghoang360@gmail.com', '$2y$10$L7/BEOqsX1BnQMLMgmh2LOdueTm/3.suSKHlgxN0ULUf3By.ubfO6', NULL, NULL, NULL, NULL, '24251869', 0, 'e92b9f3f404af9ca19718e01cc37c574c17f86b2', '2017-10-27 09:44:25', '2017-10-27 09:44:25');

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
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
