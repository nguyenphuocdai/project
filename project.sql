-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2017 lúc 09:53 AM
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
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'PHÒNG KHÁCH', 'Phong-Khach', 'Phòng khách', 'phongkhach,phong,khach', '2017-11-01 14:58:56', '2017-11-01 14:58:56'),
(2, 'NHÀ BẾP', 'Nha-Bep', 'Nhà bếp', 'nhabep,nha,bep', '2017-11-01 14:59:44', '2017-11-01 14:59:44'),
(3, 'PHÒNG TẮM', 'Phong-Tam', 'Phòng tắm', 'phong,tam,phongtam', '2017-11-01 15:00:13', '2017-11-01 15:00:13'),
(4, 'PHÒNG NGỦ', 'Phong-Ngu', 'phòng ngủ', 'ngu,phong,phongngu', '2017-11-01 15:00:49', '2017-11-01 15:00:49'),
(5, 'VĂN PHÒNG', 'Van-Phong', 'VĂN PHÒNG', 'vanphong', '2017-11-01 15:01:17', '2017-11-01 15:01:17'),
(6, 'VẬT TRANG TRÍ', 'Vat-Trang-Tri', 'VẬT TRANG TRÍ', 'vattrangtri', '2017-11-01 15:01:48', '2017-11-01 15:01:48'),
(7, 'CỬA', 'Cua', 'CỬA', 'cua', '2017-11-01 15:02:07', '2017-11-01 15:02:07');

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
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `username`, `email`, `password`, `address`, `phone_number`, `google_id`, `phone_social`, `github_id`, `thumbnail`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đại', 'vicente001', 'nguyenphuocdai1995@gmail.com', '$2y$10$UHVxaHJUCgZAsRGkGGujgeHms7Hixc94IatomRjdunAlgt69M1vqK', 'C12 HCM', '0933588295', NULL, NULL, NULL, NULL, 'kacxE9wayD0lJbsXBcwtii6K51Vko5sMjR4tnjpxMBTxgWNaD710Kak244Gw', '2017-11-02 03:52:36', '2017-11-02 03:52:36');

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

--
-- Đang đổ dữ liệu cho bảng `emails`
--

INSERT INTO `emails` (`id`, `email`, `created_at`, `updated_at`) VALUES
(3, 'nguyenphuocdai1@gmail.com', '2017-11-01 02:31:59', '2017-11-01 02:31:59'),
(4, 'nguyenphuocdai2@gmail.com', '2017-11-01 04:05:01', '2017-11-01 04:05:01');

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
(2, '52834Loi-ich-cua-cua-luoi-chong-muoi-dang-lua.jpg', 1, '2017-11-01 15:28:26', '2017-11-01 15:28:26'),
(3, '95264DSCF4628 (1).JPG', 1, '2017-11-01 15:28:26', '2017-11-01 15:28:26'),
(4, '8632030732cua_luoi_co-ray1.jpg', 2, '2017-11-01 15:30:06', '2017-11-01 15:30:06'),
(5, 'cua.jpg', 2, '2017-11-01 15:30:06', '2017-11-01 15:30:06'),
(6, 'cua1.jpg', 2, '2017-11-01 15:30:06', '2017-11-01 15:30:06'),
(7, '95312cua-luoi-chong-muoi-cuon.jpg', 3, '2017-11-01 15:32:11', '2017-11-01 15:32:11'),
(8, '43199cl1.jpg', 3, '2017-11-01 15:32:11', '2017-11-01 15:32:11'),
(9, '17320cua-luoi-chong-muoi-tu-cuon-003.jpg', 3, '2017-11-01 15:32:11', '2017-11-01 15:32:11'),
(10, '1565491739cl2.jpg', 3, '2017-11-01 15:32:11', '2017-11-01 15:32:11'),
(11, '85688Untitled-2.jpg', 4, '2017-11-01 15:34:05', '2017-11-01 15:34:05'),
(12, '51453Cua-luoi-1333016830.jpg', 4, '2017-11-01 15:34:05', '2017-11-01 15:34:05'),
(13, '85688Untitled-2.jpg', 5, '2017-11-01 15:35:47', '2017-11-01 15:35:47'),
(14, '95312cua-luoi-chong-muoi-cuon.jpg', 5, '2017-11-01 15:35:47', '2017-11-01 15:35:47'),
(15, '51453Cua-luoi-1333016830.jpg', 5, '2017-11-01 15:35:47', '2017-11-01 15:35:47'),
(16, '52176cửa sổ xếp 1 cánh.jpg', 5, '2017-11-01 15:35:47', '2017-11-01 15:35:47'),
(17, '52176cửa sổ xếp 1 cánh.jpg', 6, '2017-11-01 15:42:33', '2017-11-01 15:42:33'),
(18, '51453Cua-luoi-1333016830.jpg', 6, '2017-11-01 15:42:33', '2017-11-01 15:42:33'),
(19, 'phu-kien-bep- Thung gao 20Lit  (46).jpg', 7, '2017-11-01 15:44:48', '2017-11-01 15:44:48'),
(20, 'ph--ki-n-thùng-g-o-MX-18(2).jpg', 7, '2017-11-01 15:44:48', '2017-11-01 15:44:48'),
(21, '51453Cua-luoi-1333016830.jpg', 8, '2017-11-01 15:47:24', '2017-11-01 15:47:24'),
(22, '52176cửa sổ xếp 1 cánh.jpg', 8, '2017-11-01 15:47:24', '2017-11-01 15:47:24'),
(23, '85688Untitled-2.jpg', 8, '2017-11-01 15:47:24', '2017-11-01 15:47:24'),
(24, '95312cua-luoi-chong-muoi-cuon.jpg', 8, '2017-11-01 15:47:24', '2017-11-01 15:47:24'),
(25, 'B-p-t--malloca-MH02I.jpg', 9, '2017-11-01 15:48:40', '2017-11-01 15:48:40'),
(26, '51453Cua-luoi-1333016830.jpg', 10, '2017-11-01 15:50:38', '2017-11-01 15:50:38'),
(27, '52176cửa sổ xếp 1 cánh.jpg', 10, '2017-11-01 15:50:38', '2017-11-01 15:50:38'),
(28, '85688Untitled-2.jpg', 10, '2017-11-01 15:50:38', '2017-11-01 15:50:38'),
(29, '95312cua-luoi-chong-muoi-cuon.jpg', 10, '2017-11-01 15:50:38', '2017-11-01 15:50:38'),
(30, '51453Cua-luoi-1333016830.jpg', 11, '2017-11-01 15:51:59', '2017-11-01 15:51:59'),
(31, 'khung-anh-ltrai-tim-6.jpg', 12, '2017-11-01 15:53:41', '2017-11-01 15:53:41'),
(32, 'khung-anh-ltrai-tim-5.jpg', 12, '2017-11-01 15:53:41', '2017-11-01 15:53:41'),
(33, 'khung-anh-ltrai-tim-3.jpg', 12, '2017-11-01 15:53:41', '2017-11-01 15:53:41'),
(34, 'khung-anh-ltrai-tim-2.jpg', 12, '2017-11-01 15:53:41', '2017-11-01 15:53:41'),
(35, 'YANKEE_YANKEE_0000001060683_HOME_OFFICE_and_STUDY_-_Office_Chairs_and_Benches_10767_20161012061522502611.jpg', 13, '2017-11-01 15:55:54', '2017-11-01 15:55:54'),
(36, 'tin.jpg', 14, '2017-11-01 15:57:15', '2017-11-01 15:57:15'),
(38, 'MISSION_MISSION_0000001026702_LIVING_ROOM_-_Coffee_Tables_and_Side_Tables_7369_20160826034248494392.jpg', 16, '2017-11-01 16:00:52', '2017-11-01 16:00:52'),
(40, 'MISSION_MISSION_0000001026702_LIVING_ROOM_-_Coffee_Tables_and_Side_Tables_7369_20160829094517559248.jpg', 16, '2017-11-01 16:00:52', '2017-11-01 16:00:52'),
(41, 'DELPHI_DELPHI_0000000102996_BATHROOM_and_LAUNDRY_-_Bathroom_Furniture_4453_20160830022942589321 (1).jpg', 17, '2017-11-01 16:05:09', '2017-11-01 16:05:09'),
(42, 'DELPHI_DELPHI_0000000102996_BATHROOM_and_LAUNDRY_-_Bathroom_Furniture_4453_20160830022942589321.jpg', 17, '2017-11-01 16:05:09', '2017-11-01 16:05:09'),
(43, 'DELPHI_DELPHI_0000000102996_BATHROOM_and_LAUNDRY_-_Bathroom_Furniture_4453_20160830024042644423.jpg', 17, '2017-11-01 16:05:09', '2017-11-01 16:05:09'),
(44, 'DELPHI_DELPHI_0000000102996_BATHROOM_and_LAUNDRY_-_Bathroom_Furniture_4453_20160830024942440940.jpg', 17, '2017-11-01 16:05:09', '2017-11-01 16:05:09'),
(45, '1.jpg', 16, '2017-11-01 16:18:15', '2017-11-01 16:18:15'),
(46, '12.jpg', 15, '2017-11-01 16:18:41', '2017-11-01 16:18:41'),
(47, 'thun.jpg', 7, '2017-11-01 16:20:43', '2017-11-01 16:20:43');

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
(48, '2016_12_30_160215_order_details', 6),
(49, '2016_12_30_160215_orders_detail', 7),
(50, '2017_03_10_125505_create_shoppingcart_table', 7),
(51, '2017_10_31_084248_create_notifications_table', 7),
(52, '2017_10_31_084612_emails', 7),
(53, '2017_10_31_234455_arcticle', 7);

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
(71, 'Beatae quisquam aut dolorum rerum ut.', 'Incidunt inventore est consequuntur illum.', '<p>Praesentium dignissimos consequatur sit totam. Velit et temporibus qui. Beatae quis esse harum aut dolor assumenda vitae sunt. Perspiciatis eius saepe quia sed. Culpa dolorem fuga illum beatae vero. Facilis voluptate quasi sunt magni. Et id est voluptatem quam nesciunt ut assumenda dolorem. Maiores corporis odio eos nemo nemo dolorem.</p>\r\n\r\n<p>Praesentium dignissimos consequatur sit totam. Velit et temporibus qui. Beatae quis esse harum aut dolor assumenda vitae sunt. Perspiciatis eius saepe quia sed. Culpa dolorem fuga illum beatae vero. Facilis voluptate quasi sunt magni. Et id est voluptatem quam nesciunt ut assumenda dolorem. Maiores corporis odio eos nemo nemo dolorem.</p>\r\n\r\n<p>Praesentium dignissimos consequatur sit totam. Velit et temporibus qui. Beatae quis esse harum aut dolor assumenda vitae sunt. Perspiciatis eius saepe quia sed. Culpa dolorem fuga illum beatae vero. Facilis voluptate quasi sunt magni. Et id est voluptatem quam nesciunt ut assumenda dolorem. Maiores corporis odio eos nemo nemo dolorem.Praesentium dignissimos consequatur sit totam. Velit et temporibus qui. Beatae quis esse harum aut dolor assumenda vitae sunt. Perspiciatis eius saepe quia sed. Culpa dolorem fuga illum beatae vero. Facilis voluptate quasi sunt magni. Et id est voluptatem quam nesciunt ut assumenda dolorem. Maiores corporis odio eos nemo nemo dolorem.</p>\r\n\r\n<p>Praesentium dignissimos consequatur sit totam. Velit et temporibus qui. Beatae quis esse harum aut dolor assumenda vitae sunt. Perspiciatis eius saepe quia sed. Culpa dolorem fuga illum beatae vero. Facilis voluptate quasi sunt magni. Et id est voluptatem quam nesciunt ut assumenda dolorem. Maiores corporis odio eos nemo nemo dolorem.Praesentium dignissimos consequatur sit totam. Velit et temporibus qui. Beatae quis esse harum aut dolor assumenda vitae sunt. Perspiciatis eius saepe quia sed. Culpa dolorem fuga illum beatae vero. Facilis voluptate quasi sunt magni. Et id est voluptatem quam nesciunt ut assumenda dolorem. Maiores corporis odio eos nemo nemo dolorem.Praesentium dignissimos consequatur sit totam. Velit et temporibus qui. Beatae quis esse harum aut dolor assumenda vitae sunt. Perspiciatis eius saepe quia sed. Culpa dolorem fuga illum beatae vero. Facilis voluptate quasi sunt magni. Et id est voluptatem quam nesciunt ut assumenda dolorem. Maiores corporis odio eos nemo nemo dolorem.Praesentium dignissimos consequatur sit totam. Velit et temporibus qui. Beatae quis esse harum aut dolor assumenda vitae sunt. Perspiciatis eius saepe quia sed. Culpa dolorem fuga illum beatae vero. Facilis voluptate quasi sunt magni. Et id est voluptatem quam nesciunt ut assumenda dolorem. Maiores corporis odio eos nemo nemo dolorem.</p>\r\n', 'parallax.jpg', 6, '2017-11-01 15:10:32', '2017-11-01 15:14:51'),
(72, 'Impedit maxime aut quaerat perferendis.', 'Aspernatur modi omnis et magni.', '<p>Quis ut laudantium quibusdam magnam tempora est veritatis. Quasi perferendis quibusdam veniam. Minus vero aspernatur aperiam repellendus rerum quis aut. Recusandae iusto ut officiis impedit mollitia tempore. Aliquam quae voluptate recusandae doloribus aspernatur eum reprehenderit. Libero ut hic esse similique id eaque omnis.</p>\r\n', 'phongngu.jpg', 6, '2017-11-01 15:10:32', '2017-11-01 15:14:33'),
(73, 'Et itaque omnis cum laborum a.', 'Eos in quae et quia omnis. Hic eos incidunt autem dolore.', '<p>Nam aut et quo quia asperiores ad consequuntur. Et autem soluta reprehenderit qui. Debitis in voluptate reiciendis fugit adipisci consequatur at. Nihil ab deleniti nobis non quis aperiam vitae. Corrupti nulla quis veniam esse. Rerum veritatis nesciunt nam laboriosam error aut. Soluta quis facere molestiae et repellendus placeat eum blanditiis.</p>\r\n', 'titlebar_bg_01.jpg', 6, '2017-11-01 15:10:32', '2017-11-01 15:14:25'),
(74, 'Quis praesentium enim est omnis quasi.', 'Ipsam et ea quisquam porro odio consequatur.', '<p>Illo adipisci dignissimos esse eum accusamus. Quibusdam quia delectus accusantium officiis. Soluta ullam ex aut saepe. Occaecati et sunt voluptatibus molestias modi dolor. Ea sequi odit voluptatibus sit praesentium enim ullam saepe. Sint rerum quidem rerum aut recusandae inventore. Ad corporis accusamus nostrum repellat vitae quidem tempora.</p>\r\n', 'service.jpg', 6, '2017-11-01 15:10:32', '2017-11-01 15:14:16'),
(75, 'Ut ut ut voluptatem nihil aut aut.', 'Ad veniam necessitatibus hic et consequatur id.', '<p>Amet dolore pariatur assumenda et. Ut soluta fuga fugit qui porro officiis. Nesciunt aperiam perferendis aut molestiae autem dicta. Et et quia sint repellat. Aliquid aut sapiente iusto illo quos impedit numquam. Porro facilis in quidem qui ducimus voluptatem vero. A sed qui necessitatibus minima est voluptas sit.</p>\r\n', 'phongngu.jpg', 6, '2017-11-01 15:10:32', '2017-11-01 15:14:03'),
(76, 'Consectetur voluptatum odio iste.', 'Velit odio neque aut ipsam rerum magni delectus.', '<p>Est necessitatibus qui aut odio at. Quo accusantium distinctio et omnis at minima. Totam eius molestiae hic omnis fugit rerum at neque. Deserunt impedit odit repellat dolorem vitae sit itaque. Nihil sequi tempore dolorem saepe facilis rerum eum rerum. Et quibusdam impedit maiores non.</p>\r\n', 'phongngu.jpg', 6, '2017-11-01 15:10:32', '2017-11-01 15:13:56'),
(77, 'Inventore omnis et natus labore.', 'Consequatur quia eius ipsam. Aut sit omnis quos voluptas.', '<p>Quo quisquam illum nulla sint aut magni non. Molestias aut laborum odit quasi ut sit non. Deleniti ut aut consequatur. Et provident nobis ipsa voluptates voluptas dicta. Sint maxime ratione ipsa ipsam qui enim cumque. Occaecati id earum distinctio explicabo aut in eum sed. Ut est reprehenderit magni blanditiis. Beatae id esse asperiores autem. Est ex ipsam ullam alias ut natus sequi consequatur.</p>\r\n', 'stardust.png', 6, '2017-11-01 15:10:32', '2017-11-01 15:13:42'),
(78, 'Dolores sint maxime rerum.', 'Blanditiis culpa alias eligendi sint qui eum.', '<p>Pariatur libero sed voluptatem unde ducimus eos. Alias magnam rem cumque ut. Delectus libero dolor odit adipisci quia velit. Doloribus fugit at consequatur soluta. Dignissimos recusandae occaecati quo impedit rerum sed ut laborum. Qui odio quos qui veniam. Dolorem corporis totam et non rerum.</p>\r\n', 'banner3.jpg', 6, '2017-11-01 15:10:32', '2017-11-01 15:13:25'),
(79, 'Ut tempore odio eaque nobis.', 'Enim qui rerum qui aut mollitia et quam consectetur.', '<p>Repellat deserunt repellat earum minus. Molestias earum est delectus. Nisi quisquam dolores aut voluptatem maxime cum corporis. Eaque totam cum ipsum aut voluptas quo impedit. Harum explicabo autem sed magni est explicabo. Eum sit laborum nam voluptatem. Est sint ipsum aperiam ipsa fugit vel sit. Molestiae esse natus ut velit non suscipit in.</p>\r\n', 'banner2.jpg', 6, '2017-11-01 15:10:32', '2017-11-01 15:13:19'),
(80, 'Et sint nulla dolores quae.', 'Numquam asperiores consectetur natus dolores.', '<p>Maiores voluptatum quas ut voluptatum. Dignissimos deleniti rerum aliquam eum ipsam. Eius recusandae quia nesciunt mollitia ipsum. Consequuntur sed quis quo odit expedita. In doloremque quia quasi porro debitis. Iure officia enim aut nemo at repellendus perferendis. Corrupti voluptates aut vel ipsa. Accusamus velit deserunt vero expedita et. Aliquam ut ab excepturi ad id vitae iste.</p>\r\n', 'banner1.jpg', 6, '2017-11-01 15:10:32', '2017-11-01 15:13:11');

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
  `phone_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `status`, `datesigned`, `address_receive`, `phone_social`, `payment`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 6, 0, '2017-11-02 11:14:19', '', NULL, NULL, 1, '2017-11-02 04:11:58', '2017-11-02 04:11:58'),
(2, NULL, 0, '2017-11-02 10:52:36', 'C12 HCM', '0933588295', NULL, 1, '2017-11-02 07:01:00', '2017-11-02 07:01:00'),
(3, NULL, 0, '2017-11-02 10:52:36', 'C12 HCM', '0933588295', '1', 1, '2017-11-02 07:14:08', '2017-11-02 07:14:08'),
(4, NULL, 0, '2017-11-02 10:52:36', 'C12 HCM', '0933588295', '1', 1, '2017-11-02 08:48:35', '2017-11-02 08:48:35');

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
(5, 1, 4, 3500000, 14000000, 0, '2017-11-02 11:14:19', '2017-11-02 04:11:58', '2017-11-02 04:11:58'),
(4, 1, 1, 2500000, 2500000, 0, '2017-11-02 11:14:19', '2017-11-02 04:12:02', '2017-11-02 04:12:02'),
(1, 2, 1, 500000, 500000, 0, NULL, '2017-11-02 07:01:00', '2017-11-02 07:01:00'),
(10, 3, 2, 500000, 1000000, 0, NULL, '2017-11-02 07:14:08', '2017-11-02 07:14:08'),
(4, 4, 1, 2500000, 2500000, 0, NULL, '2017-11-02 08:48:35', '2017-11-02 08:48:35');

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

INSERT INTO `products` (`product_id`, `name`, `alias`, `price`, `quantity`, `discount`, `origin`, `view`, `rate`, `highlight`, `image`, `keywords`, `size`, `describe`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'CỬA LƯỚI LÙA CHỐNG MUỖI', 'Cua-Luoi-Lua-Chong-Muoi', 500000, 99, NULL, 'Việt Nam', 2, NULL, '<h2 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Cửa lưới l&ugrave;a chống muỗi&nbsp;l&agrave; d&ograve;ng sản phẩm cao cấp của cửa lưới chống muỗi - cửa lưới s&agrave;i g&ograve;n - thi c&ocirc;ng lắp đặt cửa lưới chống muỗi.</span></span></h2>\r\n', 'cua.jpg', '', NULL, '<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Nh&ocirc;m XingFa l&agrave; thương hiệu h&agrave;ng đầu về c&aacute;c cấu kiện nh&ocirc;m lắp gh&eacute;p trong lĩnh vực x&acirc;y dựng. Hiện nay nh&ocirc;m xingfa đ&atilde; được đưa v&agrave;o để sản xuất&nbsp;</span><strong>cửa lưới chống muỗi</strong><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">.&nbsp;</span><strong><a href=\"http://www.saigonwindow.com/cua-luoi-chong-muoi-117.html\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\" target=\"_blank\">Cửa lưới chống muỗi</a></strong><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">,&nbsp;</span><a href=\"http://cualuoisaigon.vn/#\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51); text-align: justify;\">chống trộm nh&ocirc;m xingfa</a><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">&nbsp;c&oacute; nhiều t&iacute;nh năng vượt trội so với c&aacute;c loại cửa lưới chống muỗi th&ocirc;ng thường.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>+ Bền chắc, k&iacute;ch thước v&agrave; mẫu m&atilde; đa dạng...đặt biệt ở khả năng chống trộm hiệu quả ( dao, k&eacute;o, b&uacute;a...) rất kh&oacute; x&acirc;m nhập đối với d&ograve;ng sản phẩm n&agrave;y.</p>\r\n\r\n<p>+ &middot;Chống x&acirc;m nhập từ ngo&agrave;i v&agrave;o&middot;thay cho hoa sắt...đảm bảo thẩm mỹ.</p>\r\n\r\n<p>+ Đặc biệt an to&agrave;n cho gia đ&igrave;nh c&oacute; trẻ nhỏ hay chơi đ&ugrave;a nghịch ngợm.</p>\r\n\r\n<p>+ Ưu điểm: Lưới bảo vệ cửa sổ rất tho&aacute;ng m&aacute;t, t&iacute;nh thẩm mỹ cao, an to&agrave;n, gi&aacute; th&agrave;nh rẻ, dễ lắp đặt thay thế, kh&ocirc;ng bị gỉ s&eacute;t, kh&ocirc;ng cản trở tầm nh&igrave;n, c&oacute; hệ thống b&aacute;o động khi lưới bị cắt đứt.</p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Hiện nay sản phẩm đ&atilde; được nhiều người tin d&ugrave;ng. Qu&yacute; kh&aacute;ch c&oacute; nhu cầu hoặc quan t&acirc;m đến sản phảm xin vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để được tư vấn chi tiết hơn.</span></p>\r\n', 6, 7, '2017-11-01 15:28:26', '2017-11-01 16:19:19'),
(2, 'CỬA LƯỚI CHỐNG MUỖI LÙA', 'Cua-Luoi-Chong-Muoi-Lua', 1000000, 200, NULL, 'Việt Nam', 16, NULL, '<h2 style=\"text-align:justify\"><span style=\"font-size:14px\">S&agrave;i g&ograve;n ng&agrave;y nay c&oacute; nhiều người th&iacute;ch sử dụng&nbsp;<a href=\"http://cualuoisaigon.vn/#\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-decoration-line: none; cursor: pointer; color: rgb(0, 0, 0);\">cửa lưới chống muỗi</a>&nbsp;l&ugrave;a bởi cửa n&agrave;y được sử dụng cho tất cả c&aacute;c loại cửa c&oacute; k&iacute;ch thước lớn v&agrave; nhỏ.</span></h2>\r\n', 'cua.jpg', 'cualuoi', NULL, '<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">M&agrave;n lưới c&oacute; nhiều c&ocirc;ng dụng trong việc ngăn ruồi, muỗi v&agrave; c&ocirc;n tr&ugrave;ng g&acirc;y hại trong gia đ&igrave;nh, nhất l&agrave; cho c&aacute;c trẻ nhỏ. Hiện tr&ecirc;n thị trường c&oacute; hai dạng cửa lưới l&ugrave;a 1 c&aacute;nh v&agrave; cửa lưới l&ugrave;a 2 c&aacute;nh, t&ugrave;y kh&ocirc;ng gian diện t&iacute;ch ng&ocirc;i nh&agrave; m&agrave; bạn n&ecirc;n chọn một trong hai loại tr&ecirc;n cho ph&ugrave; hợp.&nbsp;</span></p>\r\n\r\n<p><strong>Lưới chống muỗi</strong><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">&nbsp;l&ugrave;a được cấu tạo rất đơn giản c&oacute; những lỗ nhỏ li ti tạo th&agrave;nh một m&agrave;n lưới gi&uacute;p lưu th&ocirc;ng kh&ocirc;ng kh&iacute; v&agrave; &aacute;nh s&aacute;ng lọt v&agrave;o nh&agrave; rất tốt, lưới v&agrave; khung cửa được l&agrave;m từ chất liệu tốt rất bền v&agrave; dễ d&agrave;ng l&agrave;m vệ sinh chỉ với một chiếc chổi l&ocirc;ng g&agrave; hay khăn ẩm l&agrave; c&oacute; thể l&agrave;m sạch nhanh ch&oacute;ng. Ngo&agrave;i ra&nbsp;</span><a href=\"http://www.saigonwindow.com/cua-luoi-chong-muoi-117.html\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51); text-align: justify;\" target=\"_blank\"><strong>cửa lưới chống muỗi&nbsp;</strong></a><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">đảm bảo kh&ocirc;ng kh&ocirc;ng g&acirc;y độc hại v&igrave; kh&ocirc;ng c&oacute; h&oacute;a chất, kh&ocirc;ng l&agrave;m ảnh hưởng đến c&aacute;c th&agrave;nh vi&ecirc;n sống trong gia đ&igrave;nh.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Cấu tạo của tấm cửa l&ugrave;a rất đơn giản được lưới l&agrave;m từ inox c&oacute; những lỗ nhỏ li ti được l&agrave;m bằng chất liệu inox n&ecirc;n m&agrave;n lưới muỗi hầu hết chịu được thời tiết khắc nghiệt của mưa, nắng kể cả những nơi gần c&ugrave;ng biển m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng đến độ bền của lưới.&nbsp;<strong>Cửa chống muỗi</strong>&nbsp;ngo&agrave;i ra c&ograve;n c&oacute; nhiều đặc điểm vượt trội sau:</p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"http://www.saigonwindow.com/cua-luoi-lua-142.html\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\" target=\"_blank\"><strong>Cửa lưới l&ugrave;a</strong></a>&nbsp;được lắp đặt t&ugrave;y biến theo kh&ocirc;ng gian, diện t&iacute;ch của vị tr&iacute; cửa.</p>\r\n\r\n<p style=\"text-align:justify\">Tiết kiệm diện t&iacute;ch mở cửa, rất ph&ugrave; hợp cho cửa đi ch&iacute;nh, ban c&ocirc;ng...</p>\r\n\r\n<p style=\"text-align:justify\">Cửa lưới muỗi l&ugrave;a được sử dụng hầu hết cho tất cả c&aacute;c cửa c&oacute; k&iacute;ch thước lớn, nhỏ.</p>\r\n\r\n<p style=\"text-align:justify\">Ray dưới của khung cửa nhỏ khoảng 1cm thuận tiện cho việc di chuyển đi lại.</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Bạn c&oacute; nhu cầu lắp đặt hệ thống&nbsp;</span><strong><a href=\"http://cualuoisaigon.vn/#\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\">cửa lưới chống muỗi</a></strong><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">&nbsp;l&ugrave;a d&ugrave;ng cho cửa đi ch&iacute;nh hay c&aacute;c ban c&ocirc;ng cho ng&ocirc;i nh&agrave; th&igrave; h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i để được tư vấn b&aacute;o gi&aacute; cũng như c&aacute;ch thiết kế cho ph&ugrave; hợp với y&ecirc;u cầu bạn đề ra.</span></p>\r\n', 6, 7, '2017-11-01 15:30:06', '2017-11-01 16:05:35'),
(3, 'CỬA LƯỚI CUỐN LÒ XO', 'Cua-Luoi-Cuon-Lo-Xo', 1500000, 80, 0, 'Việt Nam', 1, NULL, '<h2 style=\"text-align:justify\">Cửa lưới chống muỗi tự cuốn - Cửa lưới S&agrave;i G&ograve;n tư vấn, thiết kế, thi c&ocirc;ng, lắp đặt c&aacute;c loại cửa lưới tự cuốn tr&ecirc;n to&agrave;n quốc.</h2>\r\n', '1565491739cl2.jpg', 'cualuoi', NULL, '<p style=\"text-align:justify\"><strong>I. GIỚI THIỆU</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Cửa lưới chống muỗi tự cuốn</strong>&nbsp;(<a href=\"http://www.cualuoisaigon.vn/cua-luoi-cuon-134.html\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\" title=\"cửa lưới cuốn\">cửa lưới cuốn</a>&nbsp;l&ograve; xo) l&agrave; Series sản phẩm&nbsp;<a href=\"http://www.cualuoisaigon.vn/\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\" title=\"cửa lưới chống muỗi\">cửa lưới chống muỗi</a>&nbsp;c&oacute; nhiều t&iacute;nh năng mới, lưới tự cuốn v&agrave;o trong l&ocirc; cuốn, tiết kiệm diện t&iacute;ch tối đa. Lưới được l&agrave;m từ sợi thủy tinh mềm dẻo, dễ cuốn. Khung được l&agrave;m bằng nh&ocirc;m sơn tĩnh điện. C&aacute;c phụ kiện được sản xuất từ th&eacute;p mạ kẽm v&agrave; nhựa HDPE chịu được mọi loại thời tiết. Với mức gi&aacute; trung b&igrave;nh 520.000/m&sup2;.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Một số t&iacute;nh năng của&nbsp;<a href=\"http://www.saigonwindow.com/cua-luoi-cuon-lo-xo-140.html\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\" title=\"cửa lưới cuốn lò xo\">cửa lưới cuốn l&ograve; xo</a></strong></p>\r\n\r\n<p style=\"text-align:justify\">+ Bảo đảm kh&ocirc;ng cho c&aacute;c loại c&ocirc;n tr&ugrave;ng x&acirc;m nhập v&agrave;o nh&agrave; như muỗi, ruồi, gi&aacute;n&hellip;.tạo sự kh&oacute; chịu.</p>\r\n\r\n<p style=\"text-align:justify\">+ Tiết kiệm điện năng do kh&ocirc;ng phải sử dụng điều h&ograve;a, quạt m&aacute;y.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;+ Lưu th&ocirc;ng kh&ocirc;ng kh&iacute; v&agrave; &aacute;nh s&aacute;ng cực tốt, gi&uacute;p cho kh&aacute;ch h&agrave;ng hưởng thụ kh&iacute; thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;+ Kh&ocirc;ng độc hại v&igrave; kh&ocirc;ng c&oacute; &nbsp;h&oacute;a chất, kh&ocirc;ng cảm thấy kh&oacute; chịu v&igrave; kh&ocirc;ng phải sử dụng m&agrave;n.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp;II. TH&Ocirc;NG SỐ KỸ THUẬT</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp; &nbsp; 1.Khung nh&ocirc;m:</strong></p>\r\n\r\n<p style=\"text-align:justify\">Đươc l&agrave;m từ nh&ocirc;m định h&igrave;nh theo ti&ecirc;u chuẩn&nbsp;<strong>SaiGonWindow</strong>.</p>\r\n\r\n<p style=\"text-align:justify\">Hộp l&ocirc; cuốn &ndash; Roller k&iacute;ch thước 40mm x 45 mm, c&aacute;c thanh ray dẫn lưới k&iacute;ch thước 12mm x 38mm, l&agrave; thanh dẫn lưới cuốn l&ecirc;n, k&eacute;o xuống.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp; &nbsp; 2.Lưới:</strong></p>\r\n\r\n<p style=\"text-align:justify\">Được dệt bằng sợi thủy tinh ch&eacute;o nhau, c&oacute; đường k&iacute;nh lỗ th&ocirc;ng gi&oacute; 0.8mm, được nhập khẩu từ Ytalia, khi về Việt Nam được &nbsp;tr&aacute;ng th&ecirc;m một lớp nhựa PVC phủ ngo&agrave;i để chống sự b&agrave;o m&ograve;n của thời tiết</p>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp; 3.Phụ kiện:</strong></p>\r\n\r\n<p style=\"text-align:justify\">C&aacute;c phụ kiện được sản xuất từ th&eacute;p mạ kẽm v&agrave; nhựa HDPE chịu được mọi loại thời tiết, c&aacute;c lẫy c&agrave;i cửa, tay nắm cửa, l&ograve; xo&hellip;.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Lưu &Yacute;:</strong></p>\r\n\r\n<p style=\"text-align:justify\">V&igrave; hệ cửa n&agrave;y vận h&agrave;nh &nbsp;từ lo xo, 2 m&eacute;p lưới chạy l&ecirc;n xuống qua 2 thanh dẫn lưới m&agrave; kh&ocirc;ng thể định vị n&ecirc;n đối với d&ograve;ng sản phẩm n&agrave;y bạn n&ecirc;n dung với những cửa sổ c&oacute; k&iacute;ch thước chiều ngang kh&ocirc;ng qu&aacute; 1.2m v&agrave; chiều cao kh&ocirc;ng qu&aacute; 1.6m</p>\r\n\r\n<p style=\"text-align:justify\">Sản phẩm n&agrave;y vận h&agrave;nh bằng l&ograve; xo n&ecirc;n tuổi thọ kh&ocirc;ng cao như cửa xếp, v&igrave; khi sử dụng một thời gian l&ograve; xo c&oacute; thể biến dạng v&agrave; khả năng năng đ&agrave;n hồi k&eacute;m n&ecirc;n kh&ocirc;ng thể tự cuốn lưới l&ecirc;n được xem như cửa đ&atilde; hỏng.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>III. HƯỚNG DẪN SỬ DỤNG</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp; &nbsp; 1.Mở cửa:</strong></p>\r\n\r\n<p style=\"text-align:justify\">D&ugrave;ng tay đặt v&agrave;o 2 điểm mở.</p>\r\n\r\n<p style=\"text-align:justify\">Nhẹ nh&agrave;ng k&eacute;o thanh chặn đ&aacute;y xuống sau đ&oacute; k&eacute;o nhẹ v&agrave;o l&ograve;ng để mở &nbsp;lẫy cửa</p>\r\n\r\n<p style=\"text-align:justify\">Từ từ thả tay để lưới tự cuốn l&ecirc;n.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp; &nbsp; 2.Đ&oacute;ng cửa:</strong></p>\r\n\r\n<p style=\"text-align:justify\">Lấy tay nắm &nbsp;v&agrave; k&eacute;o sợi d&acirc;y đưa cửa từ tr&ecirc;n cao dần hạ xuống.</p>\r\n\r\n<p style=\"text-align:justify\">D&ugrave;ng 2 tay k&eacute;o thanh đ&aacute;y xuống vị tr&iacute; kh&oacute;a.</p>\r\n\r\n<p style=\"text-align:justify\">Nhẹ nh&agrave;ng ấn để cho cửa v&agrave;o lẫy.</p>\r\n', 6, 7, '2017-11-01 15:32:11', '2017-11-01 15:32:11'),
(4, 'CỬA LƯỚI CUỐN TỰ ĐỘNG', 'Cua-Luoi-Cuon-Tu-Dong', 2500000, 248, 0, 'Việt Nam', 3, NULL, '<h2 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><a href=\"http://cualuoisaigon.vn/#\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-decoration-line: none; cursor: pointer; color: rgb(0, 0, 0);\">Cửa lưới chống muỗi</a>&nbsp;tự cuốn - Cửa lưới S&agrave;i G&ograve;n tư vấn, thiết kế, thi c&ocirc;ng, lắp đặt c&aacute;c loại cửa lưới tự cuốn tr&ecirc;n to&agrave;n quốc.</span></span></h2>\r\n', '95312cua-luoi-chong-muoi-cuon.jpg', 'cua', NULL, '<p style=\"text-align:justify\"><strong>I. GIỚI THIỆU &nbsp; &nbsp;</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>&nbsp;<a href=\"http://www.saigonwindow.com/cua-luoi-cuon-tu-dong-141.html\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\" target=\"_blank\">Cửa lưới cuốn tự động</a></strong></em>&nbsp;l&agrave; Series sản phẩm c&oacute; nhiều t&iacute;nh năng mới, n&oacute; c&oacute; 1 t&iacute;nh năng nổi bật so với cửa lưới cuốn l&ograve; xo đ&oacute; l&agrave; sử dụng motơ v&agrave; remot điều khiển từ xa thuận tiện cho việc đ&oacute;ng mở của m&agrave; kh&ocirc;ng cần tốn thời gian v&agrave; c&ocirc;ng sức. Lưới tự cuốn v&agrave;o trong l&ocirc; cuốn, tiết kiệm diện t&iacute;ch tối đa. Lưới được l&agrave;m từ sợi thủy tinh mềm dẻo, dễ cuốn. Khung được l&agrave;m bằng nh&ocirc;m sơn tĩnh điện. C&aacute;c phụ kiện được sản xuất từ th&eacute;p mạ kẽm v&agrave; nhựa HDPE chịu được mọi loại thời tiết. Với mức gi&aacute; trung b&igrave;nh 520.000/m&sup2; + motơ 3.500.000.</p>\r\n\r\n<p style=\"text-align:justify\">Bảo đảm kh&ocirc;ng cho c&aacute;c loại c&ocirc;n tr&ugrave;ng x&acirc;m nhập v&agrave;o nh&agrave; như muỗi, ruồi, gi&aacute;n&hellip;.tạo sự kh&oacute; chịu.</p>\r\n\r\n<p style=\"text-align:justify\">Tiết kiệm điện năng do kh&ocirc;ng phải sử dụng điều h&ograve;a, quạt m&aacute;y.</p>\r\n\r\n<p style=\"text-align:justify\">Lưu th&ocirc;ng kh&ocirc;ng kh&iacute; v&agrave; &aacute;nh s&aacute;ng cực tốt, gi&uacute;p cho kh&aacute;ch h&agrave;ng hưởng thụ kh&iacute; thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p style=\"text-align:justify\">Kh&ocirc;ng độc hại v&igrave; kh&ocirc;ng c&oacute; &nbsp;h&oacute;a chất, kh&ocirc;ng cảm thấy kh&oacute; chịu v&igrave; kh&ocirc;ng phải sử dụng m&agrave;n.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>II. TH&Ocirc;NG SỐ KỸ THUẬT</strong></p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>&nbsp; &nbsp; 1.Khung nh&ocirc;m:</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">Đươc l&agrave;m từ nh&ocirc;m định h&igrave;nh theo ti&ecirc;u chuẩn&nbsp;<strong>SaiGonWindow</strong>.</p>\r\n\r\n<p style=\"text-align:justify\">Hộp l&ocirc; cuốn &ndash; Roller k&iacute;ch thước 40mm x 45 mm, c&aacute;c thanh ray dẫn lưới k&iacute;ch thước 12mm x 38mm, l&agrave; thanh dẫn lưới cuốn l&ecirc;n, k&eacute;o xuống.</p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>&nbsp; &nbsp; 2.Lưới:</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">Được dệt bằng sợi thủy tinh ch&eacute;o nhau, c&oacute; đường k&iacute;nh lỗ th&ocirc;ng gi&oacute; 0.8mm, được nhập khẩu từ Ytalia, khi về Việt Nam được &nbsp;tr&aacute;ng th&ecirc;m một lớp nhựa PVC phủ ngo&agrave;i để chống sự b&agrave;o m&ograve;n của thời tiết.</p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>&nbsp; &nbsp; 3.Phụ kiện:</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">C&aacute;c phụ kiện được sản xuất từ th&eacute;p mạ kẽm v&agrave; nhựa HDPE chịu được mọi loại thời tiết, c&aacute;c lẫy c&agrave;i cửa, tay nắm cửa, l&ograve; xo&hellip;.</p>\r\n\r\n<p style=\"text-align:justify\">.</p>\r\n\r\n<div class=\"cont\" style=\"font-family: Arial, Helvetica, sans-serif; margin-top: 12px; margin-bottom: 12px; color: rgb(0, 0, 0); font-size: 16px;\">\r\n<p style=\"text-align:justify\"><strong>III. HƯỚNG DẪN SỬ DỤNG</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;D&ugrave;ng remot điều khiển từ ra để điều chỉnh cửa đ&oacute;ng mở t&ugrave;y th&iacute;ch.</p>\r\n</div>\r\n\r\n<div class=\"contact\" style=\"font-family: UVN_baisau; height: 40px; line-height: 40px; font-size: 16px; color: rgb(83, 83, 83); padding-left: 28px; margin-bottom: 12px;\">Nếu Q&uacute;y kh&aacute;ch quan t&acirc;m đến d&ograve;ng sản phẩm n&agrave;y, vui l&ograve;ng li&ecirc;n hệ theo th&ocirc;ng tin dưới đ&acirc;y:</div>\r\n', 6, 7, '2017-11-01 15:34:05', '2017-11-01 15:34:05'),
(5, 'CỬA LƯỚI CHỐNG MUỖI XẾP', 'Cua-Luoi-Chong-Muoi-Xep', 3500000, 46, NULL, 'Việt Nam', 2, NULL, '<h2 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Cửa lưới chống muỗi xếp kh&ocirc;ng ray - Cửa lưới S&agrave;i G&ograve;n sản xuất, ph&acirc;n phối, lắp đặt c&aacute;c loại cửa lưới chống muỗi, cửa lưới xếp kh&ocirc;ng ray</span></span></h2>\r\n', '52176cửa sổ xếp 1 cánh.jpg', 'cua', NULL, '<p style=\"text-align:justify\"><strong>I. GIỚI THIỆU:</strong></p>\r\n\r\n<p style=\"text-align:justify\">Đ&acirc;y l&agrave; Series sản phẩm&nbsp;<a href=\"http://www.cualuoisaigon.vn/\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\" title=\"cửa lưới chống muỗi\">cửa lưới chống muỗi</a>&nbsp;cao cấp chuy&ecirc;n d&ugrave;ng cho cửa đi, cửa th&ocirc;ng ph&ograve;ng v&igrave; kh&aacute;c với c&aacute;c hệ kh&aacute;c ,Series n&agrave;y c&oacute; m&aacute;ng dưới l&agrave; 1 thanh nhựa dẻo, cao 5mm định vị cho lưới chạy, l&agrave; ray nhựa dẻo n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể dẫn xe c&aacute;n l&ecirc;n đối với cửa đi ch&iacute;nh, &ocirc;ng b&agrave; v&agrave; c&aacute;c b&eacute; sẽ đi lại tự nhi&ecirc;n hơn m&agrave; kh&ocirc;ng sợ bị vấp t&eacute;, khi vệ sinh nền nh&agrave; th&igrave; rất dễ d&agrave;ng..</p>\r\n\r\n<p style=\"text-align:justify\">Hệ thống phụ kiện v&agrave; c&aacute;c thanh nh&ocirc;m sản xuất tr&ecirc;n hệ khu&ocirc;n mới do&nbsp;<strong>SaiGon Window</strong>&nbsp;thiết kế.&nbsp;<a href=\"http://www.saigonwindow.com/cua-luoi-xep-134.html\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\" target=\"_blank\"><strong>Cửa lưới xếp</strong></a>với&nbsp; t&iacute;nh năng độc đ&aacute;o xếp th&agrave;nh c&aacute;c nếp ( giống quạt giấy ), gọn g&agrave;ng v&agrave; chắc chắn. Series sản phẩm n&agrave;y ph&ugrave; hợp lắp cho cửa đi hoặc cửa sổ c&oacute; Size lớn. Lưới được l&agrave;m từ nhựa PP m&agrave;u trắng x&aacute;m, khung được l&agrave;m từ nh&ocirc;m cao cấp sơn tĩnh điện d&agrave;y 1.2mm được cuốn m&eacute;p tạo sự chắc chắn v&agrave; thẩm mỹ với 2 m&agrave;u chủ đạo l&agrave; trắng sữa v&agrave; sơn giả gỗ, hệ thống phụ kiện được sản xuất từ th&eacute;p mạ kẽm v&agrave; nhựa HDPE chịu được mọi loại thời tiết, c&aacute;c phụ kiện nhựa m&agrave;u trắng tạo sự đồng bộ cho sản phẩm v&agrave; ph&ugrave; hợp với c&aacute;c d&ograve;ng&nbsp;<strong>cửa nhựa v&agrave; cửa nh&ocirc;m</strong>&hellip;.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Một số điểm nổi bật của d&ograve;ng&nbsp;<a href=\"http://www.saigonwindow.com/cua-luoi-xep-khong-ray-138.html\" style=\"text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51);\" title=\"cửa lưới chống muỗi xếp không ray\">cửa lưới chống muỗi xếp kh&ocirc;ng ray</a></strong></p>\r\n\r\n<p style=\"text-align:justify\">+ Với nguy&ecirc;n tắc hoạt động khi d&ugrave;ng th&igrave; m&igrave;nh k&eacute;o ra. Khi kh&ocirc;ng d&ugrave;ng nữa th&igrave; m&igrave;nh đ&oacute;ng gọn về một hoặc 2 b&ecirc;n, lưới được xếp gọn g&agrave;ng v&agrave; chứa ho&agrave;n to&agrave;n trong khung nh&ocirc;m, tạo độ bền cho lưới, độ thẩm mỹ cao.</p>\r\n\r\n<p style=\"text-align:justify\">+ Bảo đảm kh&ocirc;ng cho c&aacute;c loại c&ocirc;n tr&ugrave;ng x&acirc;m nhập v&agrave;o nh&agrave; như muỗi, ruồi, gi&aacute;n&hellip;.tạo sự kh&oacute; chịu.</p>\r\n\r\n<p style=\"text-align:justify\">+ Tiết kiệm điện năng do kh&ocirc;ng phải sử dụng điều h&ograve;a, quạt m&aacute;y.</p>\r\n\r\n<p style=\"text-align:justify\">+ Lưu th&ocirc;ng kh&ocirc;ng kh&iacute; v&agrave; &aacute;nh s&aacute;ng cực tốt, gi&uacute;p cho kh&aacute;ch h&agrave;ng hưởng thụ kh&iacute; thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p style=\"text-align:justify\">+ Kh&ocirc;ng độc hại v&igrave; kh&ocirc;ng c&oacute;&nbsp; h&oacute;a chất, kh&ocirc;ng cảm thấy kh&oacute; chịu v&igrave; kh&ocirc;ng phải sử d&ugrave;ng m&agrave;n.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>II.TH&Ocirc;NG SỐ KỸ THUẬT<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;<em>&nbsp;1.Khung nh&ocirc;m:</em></strong></p>\r\n\r\n<ul>\r\n	<li>Đươc l&agrave;m từ nh&ocirc;m định h&igrave;nh d&agrave;y 1.2mm theo hệ khu&ocirc;n mới do&nbsp;<strong>SaiGonWindow</strong>&nbsp;thiết kế.</li>\r\n	<li>Ray tr&ecirc;n với k&iacute;ch thước 28.5mm x 32.2mm, m&eacute;p ray được cuốn m&eacute;p tạo sự chắc chắn.</li>\r\n	<li>Ray dưới với k&iacute;ch thước 12.5mm x 32.2mm, m&eacute;p ray được cuốn m&eacute;p tạo sự chắc chắn.</li>\r\n	<li>Thanh đứng cố định với k&iacute;ch thước 23mm x 26mm được cấu tạo bởi c&aacute;c chi tiết kh&aacute;c tạo sự vững chắc.</li>\r\n	<li>Thanh đứng chạy với k&iacute;ch thước 29.4mm x 43.5mm được cấu tạo bởi c&aacute;c chi tiết kh&aacute;c tạo sự vững chắc.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;&nbsp;&nbsp;<em>&nbsp;<strong>2.Lưới:</strong></em><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Được dệt bằng sợi nhựa PP, c&oacute; đường k&iacute;nh lỗ th&ocirc;ng gi&oacute; 0.8mm, c&oacute;&nbsp; độ d&agrave;y nếp 20mm tạo cho lưới đứng chắc chắn m&agrave; kh&ocirc;ng bị d&ugrave;ng lưới, t&iacute;nh thẩm mỹ cao.<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;<em><strong>&nbsp;3.Phụ kiện:</strong></em></p>\r\n\r\n<ul>\r\n	<li>C&aacute;c phụ kiện được sản xuất từ th&eacute;p mạ kẽm v&agrave; nhựa HDPE chịu được mọi loại thời tiết.</li>\r\n	<li>c&aacute;c phụ kiện nhựa được thiết kế m&agrave;u trắng kh&aacute;c biệt với sản phẩm truyền thống l&agrave; m&agrave;u đen, tạo sự đồng bộ cho sản phẩm v&agrave; ph&ugrave; hợp với c&aacute;c d&ograve;ng cửa nhựa v&agrave; cửa nh&ocirc;m</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>III.&nbsp; HƯỚNG DẪN SỬ DỤNG</strong><br />\r\n<br />\r\n<em><strong>1.Mở cửa:</strong></em><br />\r\n<br />\r\nD&ugrave;ng tay nhẹ nh&agrave;ng đẩy thanh nh&ocirc;m chạy về s&aacute;t cạnh tường cửa sổ, trong qu&aacute; tr&igrave;nh đẩy lưới tự động xếp v&agrave;o v&agrave; nằm gọn trong thanh nh&ocirc;m. Khi đẩy về s&aacute;t b&ecirc;n kia th&igrave; lưới tự động gấp th&agrave;nh c&aacute;c nếp linh hoạt t&ugrave;y theo độ rộng hẹp của cửa mở. Lưới được xếp gọn v&agrave; giấu ho&agrave;n to&agrave;n trong nh&ocirc;m n&ecirc;n lưới lu&ocirc;n được bảo vệ, tuổi thọ của lưới cao.<br />\r\n<br />\r\n&nbsp;<em><strong>2.Đ&oacute;ng cửa:</strong></em></p>\r\n\r\n<ul>\r\n	<li>D&ugrave;ng tay k&eacute;o nhẹ thanh nh&ocirc;m chạy về ph&iacute;a b&ecirc;n kia.</li>\r\n	<li>Lưới tự động mở c&aacute;c nếp gấp, ngăn cản c&ocirc;n tr&ugrave;ng bay v&agrave;o nh&agrave;.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>IV.T&Iacute;NH NĂNG</strong></p>\r\n\r\n<ul>\r\n	<li>Đ&acirc;y l&agrave; Model&nbsp; d&ugrave;ng chung cho cửa sổ v&agrave; cửa đi, lắp trong khung hoạc ngo&agrave;i khung.</li>\r\n	<li>Model n&agrave;y ph&ugrave; hợp với c&aacute;c d&ograve;ng cửa c&oacute; k&iacute;ch thước lớn. Sử dụng đơn giản, c&oacute; thể dừng tại mọi điểm bất kỳ,&nbsp; l&agrave; ray nhựa n&ecirc;n ph&ugrave; hợp với c&aacute;c d&ograve;ng cửa đi nơi c&oacute; mật độ đi lại nhiều.</li>\r\n	<li>Ph&ugrave; hợp với c&aacute;c chung cư v&agrave; biệt thự cao cấp, độ thẩm mỹ cao, sang trọng</li>\r\n</ul>\r\n', 6, 7, '2017-11-01 15:35:47', '2017-11-01 15:58:09'),
(6, 'KỆ ÚP CHÉN DĨA INOX ', 'Ke-Up-Chen-Dia-Inox', 2500000, 60, 0, 'Việt Nam', 1, NULL, '<h2><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\"><strong>Phụ kiện tủ bếp&nbsp; &ndash; Kệ &uacute;p ch&eacute;n 2 tầng c&oacute; khay hứng cho tủ bếp tr&ecirc;n</strong></span></span></h2>\r\n\r\n<h1><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\"><a href=\"http://phukientubepinox.net/san-pham/Phu-kien-tu-bep-tren.htm\" style=\"text-decoration-line: none; transition: all 0.3s ease 0s;\"><em>Kệ ch&eacute;n dĩa 2 tầng inox</em></a>&nbsp;l&agrave; một trong những vật dụng quen thuộc v&agrave; kh&ocirc;ng thể thiếu đối với bất kỳ căn bếp n&agrave;o.</span></span></h1>\r\n', '85688Untitled-2.jpg', 'nhabep', NULL, '<p><span style=\"color:rgb(90, 28, 0); font-family:times new roman,times,serif; font-size:16px\">Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều&nbsp;</span><strong>kệ ch&eacute;n dĩa</strong><span style=\"color:rgb(90, 28, 0); font-family:times new roman,times,serif; font-size:16px\">&nbsp;với chất liệu kh&aacute;c nhau như: nhựa, sắt, gỗ,&hellip;nhưng được sử dụng phổ biến&nbsp; v&agrave; th&ocirc;ng dụng nhất đ&oacute; l&agrave; kệ ch&eacute;n dĩa inox v&agrave; inox cũng được chia ra l&agrave;m nhiều chất lượng kh&aacute;c nhau v&agrave; gi&aacute; cả cũng c&oacute; sự ch&ecirc;nh lệch.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\">Ch&uacute;ng t&ocirc;i&nbsp;<span style=\"color:rgb(0, 0, 205)\"><strong><em>phukientubepinox.net</em></strong></span>&nbsp;chuy&ecirc;n cung cấp kệ ch&eacute;n dĩa inox cao cấp ch&iacute;nh hang Wellmax được chế tạo từ inox cao cấp n&ecirc;n độ bền rất l&acirc;u v&agrave; độ sang của sản phẩm nổi bật hơn nhũng loại inox b&igrave;nh thường.</span></span></p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\">Sản phẩm được thiết kế 2 tầng, c&oacute; khay hứng nước v&ocirc; c&ugrave;ng tiện lợi. Kệ ch&eacute;n được lắp &acirc;m v&agrave;o tủ bếp tr&ecirc;n. Gi&uacute;p cho kệ bếp của bạn rất gọn g&agrave;n v&agrave; thẩm mỹ.</span></span></p>\r\n\r\n<p><span style=\"color:rgb(90, 28, 0); font-family:times new roman,times,serif; font-size:16px\">Với chất liệu inox cao cấp ch&iacute;nh h&atilde;ng của Wellmax ,bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ bền s&aacute;ng b&oacute;ng, cũng như thời gian sử dụng l&acirc;u bền m&agrave; kh&ocirc;ng bị hoen gỉ.</span></p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\">Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n cung cấp nhiều kệ ch&eacute;n dĩa với kiểu d&aacute;ng v&agrave; mẫu m&atilde; kh&aacute;c nhau như: kệ ch&eacute;n dĩa &acirc;m tủ tr&ecirc;n, kệ dĩa &acirc;m tủ dưới, kệ ch&eacute;n treo,&hellip;ph&ugrave; hợp cho mọi căn bếp v&agrave; sở th&iacute;ch của mỗi người</span></span></p>\r\n', 6, 2, '2017-11-01 15:42:33', '2017-11-01 15:42:33'),
(7, 'KỆ GIA VỊ DẠNG BẢN CHO TỦ 400', 'Ke-Gia-Vi-Dang-Ban-Cho-Tu-400', 3000000, 123, NULL, 'Việt Nam', 1, NULL, '<p><strong><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><a href=\"http://phukientubepinox.net/san-pham/Phu-kien-tu-bep.htm\" style=\"text-decoration-line: none; transition: all 0.3s ease 0s;\"><span style=\"color:rgb(255, 0, 0)\">Phụ kiện tủ bếp&nbsp;</span></a></span></span></strong><span style=\"color:rgb(255, 0, 0)\"><strong><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;- Th&ugrave;ng gạo&nbsp; MX-18&nbsp; c&oacute; ray k&eacute;o inox cao cấp</span></span></strong></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Th&ugrave;ng gạo &acirc;m tủ 2 n&uacute;t x&atilde;, dung t&iacute;ch 20L, 2 n&uacute;t x&atilde; tiện lợi, c&oacute; ray k&eacute;o inox cao cấp, giảm chấn gi&uacute;p sử dụng nhẹ nh&agrave;ng hơn, kiểu d&aacute;ng hiện đại, sang trọng để trong ph&ograve;ng bếp, tủ&nbsp;</span></span><span style=\"font-family:times new roman,times,serif; font-size:16px\">bếp. Kh&ocirc;ng chỉ đơn giản l&agrave; th&ugrave;ng đựng gạo, đ&acirc;y l&agrave; vật dụng gi&uacute;p bạn bổ sung th&ecirc;m tiện nghi cuộc sống cho gia đ&igrave;nh .</span></span></p>\r\n', '32.jpg', 'nhabep', NULL, '<h2><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Th&ugrave;ng gạo&nbsp;<strong>phụ kiện tủ bếp Wellma</strong>x &nbsp;cung cấp c&oacute; t&iacute;nh năng th&ocirc;ng minh cho gạo ra đ&uacute;ng định mức theo y&ecirc;u cầu của người sử dụng.</span></span></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">C&oacute; thể lấy gạo ở hai b&ecirc;n của th&ugrave;ng gạo bằng n&uacute;t ấn gạo. Gạo sẽ tự động chảy v&agrave;o khay. Sức chứa của th&ugrave;ng gạo n&agrave;y l&agrave; 20kg ph&ugrave; hợp với những gia đ&igrave;nh c&oacute; nhu cầu vừa phải.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><span style=\"color:rgb(255, 0, 0)\">Tự lắp phụ kiện tủ bếp c&oacute; kh&oacute; kh&ocirc;ng?</span></span></span></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;Phụ kiện tủ bếpt lắp đặt đơn giản, c&oacute; hướng dẫn lắp đặt trong từng sản phẩm gi&uacute;p bạn c&oacute; thể tự lắp đặt tại nh&agrave; m&agrave; kh&ocirc;ng phải mất một khoản chi ph&iacute; để thu&ecirc; lắp đặt. Khi bạn sở hữu một bộ th&ugrave;ng gạo l&agrave; bạn đang tiết kiệm cho kh&ocirc;ng gian bếp một diện t&iacute;ch đ&aacute;ng kể, Ngo&agrave;i c&ocirc;ng dụng để đựng đồ bạn c&ograve;n c&oacute; thể d&ugrave;ng để trang tr&iacute; cho căn bếp th&ecirc;m sang trọng.</span></span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Bạn c&ograve;n chần chờ g&igrave; nữa h&atilde;y mau li&ecirc;n lạc với ch&uacute;ng t&ocirc;i để được tư vấn những sản phẩm tốt nhất cho ng&ocirc;i nh&agrave; bạn. H&atilde;y l&agrave; người ti&ecirc;u d&ugrave;ng th&ocirc;ng th&aacute;i ngay h&ocirc;m nay !!!</span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><span style=\"color:rgb(0, 0, 0)\">Xem th&ecirc;m sản phẩm :&nbsp;&nbsp;</span><em><span style=\"font-size:18px\"><a href=\"http://phukientubepinox.net/san-pham/Thung-rac-am-tu-bep.htm\" style=\"text-decoration-line: none; transition: all 0.3s ease 0s;\"><span style=\"color:rgb(0, 0, 205)\">Th&ugrave;ng r&aacute;c inox &acirc;m tủ bếp</span></a></span></em></span></span></p>\r\n', 6, 2, '2017-11-01 15:44:48', '2017-11-01 16:20:43'),
(8, 'TỦ BẾP ACRYLIC', 'Tu-Bep-Acrylic', 50000000, 123, 0, 'Việt Nam', 1, NULL, '<h1><span style=\"font-size:20px\"><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-family:times new roman,times,serif\">Cung cấp phụ kiện tủ bếp Wellmax, Higold, Blum, Hafele, Hettich</span></span></span></h1>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Tủ bếp xinh l&agrave; c&ocirc;ng ty&nbsp; thiết kế v&agrave; đ&oacute;ng tủ bếp đẹp chuy&ecirc;n nghiệp g&iacute;a rẻ chất lượng tốt, một địa chỉ uy t&iacute;n tại Tp. Hồ Ch&iacute; Minh. Tại đ&acirc;y, ch&uacute;ng t&ocirc;i tư vấn miễn ph&iacute; v&agrave; thiết kế c&aacute;c mẫu tủ bếp đẹp, hiện đại theo xu hướng mới nhất.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(255, 0, 0)\"><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\"><strong>Tủ bếp xinh l&agrave; nơi cung cấp cho bạn một kh&ocirc;ng gian bếp ho&agrave;n mỹ nhất.</strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\"><strong><em>Bạn c&oacute; thể gọi điện trực tiếp tới c&ocirc;ng ty để được tư vấn v&agrave; giải đ&aacute;p một c&aacute;ch nhanh nhất !</em></strong></span></span></span></p>\r\n', 'T--b-p-Acrylic-nhà-ch--Nhi.jpg', 'nhabep', NULL, '<h2><span style=\"color:rgb(255, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">GI&Aacute; TỦ BẾP ARYLIC KIỂU CHỮ L - PHONG C&Aacute;CH THIẾT KẾ TRANG NH&Atilde;</span></span></span></h2>\r\n\r\n<h2><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-family:times new roman,times,serif\">C&ocirc;ng tr&igrave;nh thi c&ocirc;ng tủ bếp nh&agrave; chị Nhi _ T&acirc;n Ph&uacute; &ndash; Th&aacute;ng 12/2015</span></span></h2>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><strong>Tủ bếp gỗ Acrylic</strong>&nbsp;m&agrave;u trắng kết hợp m&agrave;u xanh non l&agrave; phong c&aacute;ch được đa số gia đ&igrave;nh ưa th&iacute;ch, với sự đơn giản kh&ocirc;ng hề cầu kỳ những vẫn to&aacute;t l&ecirc;n sự sang trọng v&agrave; thanh tho&aacute;t cho từng g&oacute;c nh&igrave;n. Gam trắng b&oacute;ng kết hợp xanh của gỗ Acrylic tạo n&ecirc;n sự hiện đại v&agrave; đầy mới mẻ cho kh&ocirc;ng gian nh&agrave; bếp của gia đ&igrave;nh. Gần gũi v&agrave; tinh tế được thể hiện một c&aacute;ch trọn vẹn trong to&agrave;n bộ tủ bếp thiết kế dưới đ&acirc;y.</span></span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Căn bếp nh&agrave; chị Nhi với k&iacute;ch thước chiều d&agrave;i 5 m&eacute;t.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><strong>Gi&aacute; tủ bếp Acrylic</strong>:&nbsp; Tủ bếp tr&ecirc;n : 2.750.000đ/met d&agrave;i</span></span></span></h3>\r\n\r\n<h3><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tủ bếp dưới : 3.250.000đ/met d&agrave;i</span></span></span></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Gi&aacute; n&agrave;y Qu&yacute; Kh&aacute;ch sẽ được miễn ph&iacute; tay nắm nổi bằng inox cho c&aacute;nh tủ, bản lề giảm chấn, pen hơi cho c&aacute;nh lật v&agrave; ray bi cho hộc tủ. B&ecirc;n cạnh bếp được thiết kế th&ecirc;m 1 hệ tủ cao d&ugrave;ng để đựng đồ kh&ocirc;</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Kiến tr&uacute;c thiết kế của ng&ocirc;i nh&agrave; l&agrave; một phần quan trọng cho tủ bếp thể hiện sự tiện nghi hay kh&ocirc;ng. Tủ bếp thiết kế theo từng th&ugrave;ng chức năng ri&ecirc;ng biệt kh&ocirc;ng h&ograve;a lẫn v&agrave; sử dụng tủ bếp gỗ một c&aacute;ch hiệu quả hơn. B&ecirc;n trong được lắp c&aacute;c phụ kiện inox như :</span></span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">1.<strong>&nbsp;Kệ 12 rổ inox &nbsp;</strong>&nbsp;:&nbsp;L&agrave; một sản phẩm thiết kế d&ugrave;ng đựng đồ kh&ocirc; như: Chai lọ, m&igrave; t&ocirc;m, b&uacute;n kh&ocirc;, c&aacute;c loại đồ gia vị kh&ocirc;,&hellip;</span></span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">2.&nbsp;&nbsp;</span><strong>Kệ &uacute;p ch&eacute;n, đĩa xoong nồi</strong><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">&nbsp;: Kệ ch&eacute;n, b&aacute;t tủ bếp l&agrave; sản phẩm rất tiện lợi v&igrave; một mặt n&oacute; c&oacute; thể tiết kiệm được kh&ocirc;ng gian nh&agrave; bếp mặt kh&aacute;c vị tr&iacute; đặt của n&oacute; lại thuận tiện cho người sử dụng.</span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">3.&nbsp;</span><strong>Kệ gia vị</strong><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">&nbsp;:&nbsp; Kệ gia vị Inox&nbsp;&nbsp;</span><strong>K6SPTJ030E</strong><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">&nbsp;d&ugrave;ng đựng dao thớt gia vị kh&ocirc;ng những gi&uacute;p kh&ocirc;ng gian bếp của bạn thật gọn g&agrave;ng sạch sẽ m&agrave; c&ograve;n v&ocirc; c&ugrave;ng sang trọng.Tổng trọng lượng kệ gia vị chịu lực l&agrave; 25kg.</span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">4.&nbsp;</span><strong>Kệ g&oacute;c 4 rổ inox&nbsp;</strong><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">: Đ&acirc;y l&agrave; phụ kiện được đ&aacute;nh gi&aacute; rất cao v&igrave; t&iacute;nh kỹ thuật cũng như c&ocirc;ng năng tiện &iacute;ch cho tủ g&oacute;c với chỉ c&oacute; :&nbsp;</span><em>4.774.000đ/bộ.</em></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">5.&nbsp;</span><strong>Th&ugrave;ng r&aacute;c &acirc;m tủ</strong>&nbsp;: Lựa chọn một loại th&ugrave;ng r&aacute;c hiệu quả đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu tr&ecirc;n th&igrave; qu&yacute; kh&aacute;ch n&ecirc;n chọn c&aacute;c loại th&ugrave;ng r&aacute;c &acirc;m.Thùng rác được đặt dưới b&ocirc;̀n rửa , mở cánh cửa là thùng rác b&acirc;̣t theo ra ngoài và nắp mở sẵn, kh&ocirc;ng phải ch&ocirc;̀m vào trong; đóng cửa &ndash; thùng rác &ldquo;chui&rdquo; vào tủ b&ecirc;́p dưới lại và nắp đóng lại.</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">6.</span><strong>Th&ugrave;ng gạo &acirc;m tủ</strong><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">&nbsp;:&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:16px\">Th&ugrave;ng gạo được thiết kế c&oacute; 2 n&uacute;t xả b&ecirc;n h&ocirc;ng v&agrave; c&oacute; ray giảm chấn c&oacute; thể k&eacute;o ra v&agrave;o gi&uacute;p bạn lấy gạo rất dễ d&agrave;ng như r&oacute;t nước v&agrave;o ly.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Qu&yacute; kh&aacute;ch sẽ được&nbsp; giảm th&ecirc;m 10% phần thiết bị Malloca khi mua sản phẩm tại Tủ Bếp Xinh.</span></span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0)\"><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Mặt bếp l&agrave;m bằng đ&aacute; nh&acirc;n tạo Solidsurface với đơn&nbsp;<strong>gi&aacute; 2.900.000đ</strong>/m&eacute;t d&agrave;i. M&agrave;u sắc đa dạng, đ&acirc;y ch&iacute;nh l&agrave; yếu tố quan trọng trong thiết kế nội thất, với Solid suface Dona ch&uacute;ng ta c&oacute; thể c&oacute; nhiều lựa chọn hơn trong việc lựa chọn phối m&agrave;u cho ph&ugrave; hợp sở th&iacute;ch của kh&aacute;ch h&agrave;ng.</span></span></span></p>\r\n', 6, 2, '2017-11-01 15:47:24', '2017-11-01 15:47:24'),
(9, 'BẾP TỪ MALLOCA - MH02I', 'Bep-Tu-Malloca---Mh02I', 1000000, 123, 0, 'Việt Nam', 1, NULL, '<div class=\"TopTitle\" style=\"font-weight: bold; color: rgb(96, 64, 0); text-transform: uppercase; font-family: Arial; font-size: 12px;\">TH&Ocirc;NG TIN CHI TIẾT</div>\r\n\r\n<div class=\"h13\" style=\"height: 13px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px;\">&nbsp;</div>\r\n\r\n<div class=\"desc\" style=\"color: rgb(90, 28, 0); font-family: Arial; font-size: 12px;\">\r\n<h1><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Bếp từ nhập khẩu - Bếp từ malloca MH02I</span></span></h1>\r\n\r\n<p><span style=\"color:rgb(51, 51, 51); font-family:arial,sans-serif; font-size:16px\">TH&Ocirc;NG SỐ KỸ THUẬT:</span></p>\r\n\r\n<div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; line-height: 20px;\">\r\n<p>Bếp k&iacute;nh &acirc;m 2 từ<br />\r\nMặt k&iacute;nh Eurokera m&agrave;u đen, d&agrave;y 4mm<br />\r\nHệ thống điều khiển cảm ứng<br />\r\nChức năng hẹn giờ<br />\r\nChức năng kh&oacute;a b&agrave;n ph&iacute;m an to&agrave;n<br />\r\nC&ocirc;ng suất: 2KW + 1.8KW (&empty;215+&empty;185)<br />\r\nK&iacute;ch thước bếp: W720 x D380 x H60mm<br />\r\nK&iacute;ch thước lỗ đ&aacute;: W660 x D325mm</p>\r\n</div>\r\n</div>\r\n', 'B-p-t-malloca-MH02I635756603428535353.jpg', 'nhabep', NULL, '<p>.</p>\r\n', 6, 2, '2017-11-01 15:48:40', '2017-11-01 15:48:40'),
(10, 'Tranh cây hạnh phúc', 'Bo-Tranh-Treo-Tuong-Cay-Hanh-Phuc', 500000, 58, 0, 'Việt Nam', 2, NULL, '<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">Bức&nbsp;</span></span><span style=\"font-family:inherit; font-size:14px\"><a href=\"http://lovehouse.vn/tranh-treo-tuong\" style=\"box-sizing: border-box; text-decoration-line: none; cursor: pointer; color: rgb(26, 74, 92); font-family: &quot;Source Sans Pro&quot;, Arial; transition: color 0.3s ease-in-out; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><span style=\"color:rgb(0, 0, 255); font-family:inherit\"><strong>tranh treo tường</strong></span></a></span><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">&nbsp;trang tr&iacute; bức tranh tối giản hiện đại c&oacute; thể treo ở&nbsp;h&agrave;nh lang, ph&ograve;ng ngủ, cạnh giường ngủ, sofa,.. Đ&acirc;y l&agrave; một dang tranh vẽ&nbsp;frameless, bức tranh c&oacute; t&ecirc;n l&agrave; &quot;C&acirc;y hạnh ph&uacute;c&quot; tượng chưng cho sự hạnh ph&uacute;c của một gia đ&igrave;nh.</span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">- Chất liệu: Tranh in tr&ecirc;n giấy lụa cao cấp</span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">- K&iacute;ch thước: 50*50cm</span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">- Sản phẩm sẽ l&agrave;m cho căn ph&ograve;ng, kh&ocirc;ng gian trong nh&agrave; bạn thay đổi, năng động v&agrave; tươi mới hơn</span></span></p>\r\n', 'tranh-treo-tuong02-ffe1fff3-b2e0-4142-bff6-6d83dd48333b.jpg', 'vattrangtri', NULL, '<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">Bức&nbsp;</span></span><span style=\"font-family:inherit; font-size:14px\"><a href=\"http://lovehouse.vn/tranh-treo-tuong\" style=\"box-sizing: border-box; text-decoration-line: none; cursor: pointer; color: rgb(26, 74, 92); font-family: &quot;Source Sans Pro&quot;, Arial; transition: color 0.3s ease-in-out; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><span style=\"color:rgb(0, 0, 255); font-family:inherit\"><strong>tranh treo tường</strong></span></a></span><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">&nbsp;trang tr&iacute; bức tranh tối giản hiện đại c&oacute; thể treo ở&nbsp;h&agrave;nh lang, ph&ograve;ng ngủ, cạnh giường ngủ, sofa,.. Đ&acirc;y l&agrave; một dang tranh vẽ&nbsp;frameless, bức tranh c&oacute; t&ecirc;n l&agrave; &quot;C&acirc;y hạnh ph&uacute;c&quot; tượng chưng cho sự hạnh ph&uacute;c của một gia đ&igrave;nh.</span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">- Chất liệu: Tranh in tr&ecirc;n giấy lụa cao cấp</span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">- K&iacute;ch thước: 50*50cm</span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">- Sản phẩm sẽ l&agrave;m cho căn ph&ograve;ng, kh&ocirc;ng gian trong nh&agrave; bạn thay đổi, năng động v&agrave; tươi mới hơn</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">Bức&nbsp;</span></span><span style=\"font-family:inherit; font-size:14px\"><a href=\"http://lovehouse.vn/tranh-treo-tuong\" style=\"box-sizing: border-box; text-decoration-line: none; cursor: pointer; color: rgb(26, 74, 92); font-family: &quot;Source Sans Pro&quot;, Arial; transition: color 0.3s ease-in-out; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><span style=\"color:rgb(0, 0, 255); font-family:inherit\"><strong>tranh treo tường</strong></span></a></span><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">&nbsp;trang tr&iacute; bức tranh tối giản hiện đại c&oacute; thể treo ở&nbsp;h&agrave;nh lang, ph&ograve;ng ngủ, cạnh giường ngủ, sofa,.. Đ&acirc;y l&agrave; một dang tranh vẽ&nbsp;frameless, bức tranh c&oacute; t&ecirc;n l&agrave; &quot;C&acirc;y hạnh ph&uacute;c&quot; tượng chưng cho sự hạnh ph&uacute;c của một gia đ&igrave;nh.</span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">- Chất liệu: Tranh in tr&ecirc;n giấy lụa cao cấp</span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">- K&iacute;ch thước: 50*50cm</span></span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">- Sản phẩm sẽ l&agrave;m cho căn ph&ograve;ng, kh&ocirc;ng gian trong nh&agrave; bạn thay đổi, năng động v&agrave; tươi mới hơn</span></span></p>\r\n', 6, 6, '2017-11-01 15:50:38', '2017-11-01 15:50:38');
INSERT INTO `products` (`product_id`, `name`, `alias`, `price`, `quantity`, `discount`, `origin`, `view`, `rate`, `highlight`, `image`, `keywords`, `size`, `describe`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(11, 'Kệ ti vi kết hợp ô vuông', 'Ke-Ti-Vi-Ket-Hop-O-Vuong', 5000000, 90, NULL, 'Việt Nam', 2, NULL, '<p><strong>Kệ ti vi kết hợp &ocirc; vu&ocirc;ng</strong><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14px\">&nbsp;v&agrave; chữ nhật đen trắng, c&oacute; rất nhiều mẫu kệ ti vi treo tường kh&aacute;c nhau gi&uacute;p c&aacute;c bạn c&oacute; thể thay đổi kh&ocirc;ng gian treo tivi nh&agrave; m&igrave;nh. Việc bố tr&iacute; c&aacute;c sản phẩm kệ gỗ trang tr&iacute; sẽ gi&uacute;p cho nh&agrave; của qu&yacute; vị v&agrave; c&aacute;c bạn đẹp hơn, gọn g&agrave;ng hơn. Hiện sản phẩm đang được ph&acirc;n phối v&agrave; sản xuất tại Shop đồ trang tr&iacute; nh&agrave; đẹp&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14px\"><strong>Lovehouse.vn</strong></span></p>\r\n', 'ke-treo-tuong-trang-tri-008.jpg', 'vattrangtri', NULL, '<p><strong>Kệ ti vi kết hợp &ocirc; vu&ocirc;ng</strong><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14px\">&nbsp;v&agrave; chữ nhật đen trắng, c&oacute; rất nhiều mẫu kệ ti vi treo tường kh&aacute;c nhau gi&uacute;p c&aacute;c bạn c&oacute; thể thay đổi kh&ocirc;ng gian treo tivi nh&agrave; m&igrave;nh. Việc bố tr&iacute; c&aacute;c sản phẩm kệ gỗ trang tr&iacute; sẽ gi&uacute;p cho nh&agrave; của qu&yacute; vị v&agrave; c&aacute;c bạn đẹp hơn, gọn g&agrave;ng hơn. Hiện sản phẩm đang được ph&acirc;n phối v&agrave; sản xuất tại Shop đồ trang tr&iacute; nh&agrave; đẹp&nbsp;<strong>Lovehouse.vn</strong></span><strong>Kệ ti vi kết hợp &ocirc; vu&ocirc;ng</strong><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14px\">&nbsp;v&agrave; chữ nhật đen trắng, c&oacute; rất nhiều mẫu kệ ti vi treo tường kh&aacute;c nhau gi&uacute;p c&aacute;c bạn c&oacute; thể thay đổi kh&ocirc;ng gian treo tivi nh&agrave; m&igrave;nh. Việc bố tr&iacute; c&aacute;c sản phẩm kệ gỗ trang tr&iacute; sẽ gi&uacute;p cho nh&agrave; của qu&yacute; vị v&agrave; c&aacute;c bạn đẹp hơn, gọn g&agrave;ng hơn. Hiện sản phẩm đang được ph&acirc;n phối v&agrave; sản xuất tại Shop đồ trang tr&iacute; nh&agrave; đẹp&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14px\"><strong>Lovehouse.vn</strong></span></p>\r\n\r\n<p><strong>Kệ ti vi kết hợp &ocirc; vu&ocirc;ng</strong><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14px\">&nbsp;v&agrave; chữ nhật đen trắng, c&oacute; rất nhiều mẫu kệ ti vi treo tường kh&aacute;c nhau gi&uacute;p c&aacute;c bạn c&oacute; thể thay đổi kh&ocirc;ng gian treo tivi nh&agrave; m&igrave;nh. Việc bố tr&iacute; c&aacute;c sản phẩm kệ gỗ trang tr&iacute; sẽ gi&uacute;p cho nh&agrave; của qu&yacute; vị v&agrave; c&aacute;c bạn đẹp hơn, gọn g&agrave;ng hơn. Hiện sản phẩm đang được ph&acirc;n phối v&agrave; sản xuất tại Shop đồ trang tr&iacute; nh&agrave; đẹp&nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14px\"><strong>Lovehouse.vn</strong></span></p>\r\n', 6, 6, '2017-11-01 15:51:59', '2017-11-01 15:58:23'),
(12, 'Khung ảnh hình trái tim', 'Khung-Anh-Hinh-Trai-Tim', 30000000, 60, 0, 'Việt Nam', 1, NULL, '<p><span style=\"color:rgb(119, 119, 119); font-family:arial,helvetica,sans-serif; font-size:14px\"><a href=\"http://lovehouse.vn/do-trang-tri\" style=\"box-sizing: border-box; text-decoration-line: none; cursor: pointer; color: rgb(26, 74, 92); font-family: \"><span style=\"color:rgb(0, 0, 255); font-family:inherit\"><strong>Khunh ảnh h&igrave;nh tr&aacute;i tim</strong></span></a></span><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif\"><span style=\"font-family:inherit; font-size:14px\">&nbsp;l&agrave; sản phẩm trang tr&iacute; độc đ&aacute;o gi&uacute;p lưu giữ những bức ảnh đẹp đầy kỷ niệm về t&igrave;nh y&ecirc;u của bạn. Những khoảng khắc tuyệt vời của những đ&ocirc;i đang y&ecirc;u nhau hay những cặp vợ chồng son. Sản phẩm được l&agrave;m từ vật liệu nhựa an to&agrave;n v&agrave; nhẹ b&oacute;ng đẹp. Sản phẩm n&ecirc;n treo tr&ecirc;n tường gần ph&ograve;ng ngủ hoặc gần g&oacute;c học tập c&aacute; nh&acirc;n.</span></span></p>\r\n', 'khung-anh-ltrai-tim-1.jpg', 'dotrangtri', NULL, '<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">C&aacute;c bạn quan t&acirc;m đến sản phẩm n&ecirc;n tham khảo th&ecirc;m th&ocirc;ng tin dưới đ&acirc;y:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">K&iacute;ch thước tổng thể: 58x53 cm</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">K&iacute;ch thước ảnh ngang: 15x10 cm</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">K&iacute;ch thước ảnh dọc: 10x15 cm</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">ĐT:&nbsp;<strong>0933588295</strong>&nbsp;hoặc&nbsp;<strong>0944 685 687</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">Email: lovehousekego@gmail.com; lovehousehn@gmail.com</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">Facebook 1:&nbsp;https://web.facebook.com/lovehousekegotrangtri</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit\"><span style=\"font-family:inherit; font-size:14px\">Facebook 2:&nbsp;https://web.facebook.com/dotrangtrinhadep</span></span></p>\r\n', 6, 6, '2017-11-01 15:53:41', '2017-11-01 15:53:41'),
(13, 'Ghế văn phòng YANKEE', 'Ghe-Van-Phong-Yankee', 1500000, 123, 0, 'Việt Nam', 1, NULL, '<p><span style=\"color:rgb(34, 34, 34); font-family:sfufuturaregular,open sans,arial; font-size:18px\">Đến với UMA, chọn về cho g&oacute;c học tập v&agrave; l&agrave;m việc của gia đ&igrave;nh bạn ghế văn ph&ograve;ng YANKEE , chất liệu lưới kết hợp kim loại, kiểu d&aacute;ng hiện đại nhỏ gọn với sắc x&aacute;m.</span></p>\r\n', 'YANKEE_YANKEE_0000001060683_HOME_OFFICE_and_STUDY_-_Office_Chairs_and_Benches_10767_20161011043841625156.jpg', 'vanphong', NULL, '<p>&nbsp;</p>\r\n\r\n<table style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; box-sizing:border-box; width:100%\">\r\n	<tbody style=\"box-sizing: border-box;\">\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238); white-space: nowrap;\">Chất Liệu</td>\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238);\">Mesh/ Metal</td>\r\n		</tr>\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238); white-space: nowrap;\">M&agrave;u sắc</td>\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238);\">M&agrave;u x&aacute;m</td>\r\n		</tr>\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238); white-space: nowrap;\">K&iacute;ch thước</td>\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238);\">S&acirc;u 50 cm, Ngang 50 cm, Cao 79/91 cm</td>\r\n		</tr>\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238); white-space: nowrap;\">M&atilde; Sản Phẩm</td>\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238);\">1060683</td>\r\n		</tr>\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238); white-space: nowrap;\">Thiết Kế Bởi</td>\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 1px solid rgb(238, 238, 238);\">&nbsp;</td>\r\n		</tr>\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td style=\"box-sizing: border-box; padding: 10px 10px 10px 0px; border-bottom: 0px; white-space: nowrap; color: rgb(34, 34, 34); font-family: SFUFuturaBook, &quot;Open Sans&quot;, Arial; font-size: 18px; letter-spacing: 0.5px;\">Xuất Xứ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 6, 5, '2017-11-01 15:55:54', '2017-11-01 15:55:54'),
(14, 'Bàn TINTIN', 'Ban-Tintin', 1500000, 60, 0, 'Việt Nam', 1, NULL, '', 'tin.jpg', 'vanphong', NULL, '<h4><strong>ĐẶC ĐIỂM SẢN PHẨM</strong></h4>\r\n\r\n<div class=\"content\" style=\"box-sizing: border-box; font-size: 18px; color: rgb(34, 34, 34); font-family: SFUFuturaBook, \">\r\n<table style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; box-sizing:border-box; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Chất Liệu</td>\r\n			<td>Gỗ bạch dương</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&agrave;u sắc</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">K&iacute;ch thước</td>\r\n			<td>Cao 51 cm, Đường k&iacute;nh 68 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&atilde; Sản Phẩm</td>\r\n			<td>2203</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Thiết Kế Bởi</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Xuất Xứ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n', 6, 5, '2017-11-01 15:57:15', '2017-11-01 15:57:15'),
(15, 'Bàn cà phê GONZALES', 'Ban-Ca-Phe-Gonzales', 1000000, 60, NULL, 'Việt Nam', 1, NULL, '<h4><strong>ĐẶC ĐIỂM SẢN PHẨM</strong></h4>\r\n\r\n<div class=\"content\" style=\"box-sizing: border-box; font-size: 18px;\">\r\n<table style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; box-sizing:border-box; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Chất Liệu</td>\r\n			<td>MDF/ Steel</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&agrave;u sắc</td>\r\n			<td>M&agrave;u đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">K&iacute;ch thước</td>\r\n			<td>Cao 42 cm, Đường k&iacute;nh 90 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&atilde; Sản Phẩm</td>\r\n			<td>1040210</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Thiết Kế Bởi</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Xuất Xứ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n', '12.jpg', 'phongkhach', NULL, '', 6, 1, '2017-11-01 16:00:07', '2017-11-01 16:18:41'),
(16, 'Bàn cà phê MISSION', 'Ban-Ca-Phe-Mission', 1000000, 60, NULL, 'Việt Nam', 1, NULL, '<h4><strong>ĐẶC ĐIỂM SẢN PHẨM</strong></h4>\r\n\r\n<div class=\"content\" style=\"box-sizing: border-box; font-size: 18px;\">\r\n<table style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; box-sizing:border-box; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Chất Liệu</td>\r\n			<td>Gỗ cao su</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&agrave;u sắc</td>\r\n			<td>M&agrave;u đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">K&iacute;ch thước</td>\r\n			<td>Cao 35 cm, Đường k&iacute;nh 65 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&atilde; Sản Phẩm</td>\r\n			<td>1026702</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Thiết Kế Bởi</td>\r\n			<td>Joachim Poirier</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Xuất Xứ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n', '1.jpg', '', NULL, '', 6, 1, '2017-11-01 16:00:52', '2017-11-01 16:18:15'),
(17, 'Tủ treo tường nhà tắm DELPHI', 'Tu-Treo-Tuong-Nha-Tam-Delphi', 500000000, 5, 0, 'Việt Nam', 6, NULL, '<h4><strong>ĐẶC ĐIỂM SẢN PHẨM</strong></h4>\r\n\r\n<div class=\"content\" style=\"box-sizing: border-box; font-size: 18px; color: rgb(34, 34, 34); font-family: SFUFuturaBook, &quot;Open Sans&quot;, Arial; letter-spacing: 0.5px;\">\r\n<table style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; box-sizing:border-box; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Chất Liệu</td>\r\n			<td>Gỗ sồi</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&agrave;u sắc</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">K&iacute;ch thước</td>\r\n			<td>S&acirc;u 13 cm, Ngang 64 cm, Cao 73 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&atilde; Sản Phẩm</td>\r\n			<td>102996</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Thiết Kế Bởi</td>\r\n			<td>Joachim Poirier</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n', 'DELPHI_DELPHI_0000000102996_BATHROOM_and_LAUNDRY_-_Bathroom_Furniture_4453_20160830022942589321 (1).jpg', 'phongtam', NULL, '<h4><strong>ĐẶC ĐIỂM SẢN PHẨM</strong></h4>\r\n\r\n<div class=\"content\" style=\"box-sizing: border-box; font-size: 18px; color: rgb(34, 34, 34); font-family: SFUFuturaBook, &quot;Open Sans&quot;, Arial; letter-spacing: 0.5px;\">\r\n<table style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; box-sizing:border-box; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Chất Liệu</td>\r\n			<td>Gỗ sồi</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&agrave;u sắc</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">K&iacute;ch thước</td>\r\n			<td>S&acirc;u 13 cm, Ngang 64 cm, Cao 73 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">M&atilde; Sản Phẩm</td>\r\n			<td>102996</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"white-space:nowrap\">Thiết Kế Bởi</td>\r\n			<td>Joachim Poirier</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n', 6, 3, '2017-11-01 16:05:09', '2017-11-01 16:05:09');

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
(6, 'admin', 'hoanghoang360@gmail.com', '$2y$10$6Q8Z9r3m6uYl9j68l8ZtZOgidXeSAvODD3Y/j65nE7UL7H8.ThjRq', '0933588295', NULL, NULL, NULL, NULL, 1, 'gkiYJUF8YWZKp8X9MCnJLm2OFkm5p68V9YhSP44JWcVcRYR2rSWpodqkD8tw', '2017-10-10 08:25:32', '2017-11-02 02:45:03'),
(9, 'user', 'tiodev2609@gmail.com', '$2y$10$of670tCkSoB1SAF3ZZEFruwKEJBJvJnxkFNS20hgPWWWcD/MI8RRq', '0933588295', NULL, NULL, NULL, NULL, 0, 'F50PUqI2gIHVzV6cV8TZJWLL9ywzPPTE9AKQdU6f', '2017-11-01 07:16:20', '2017-11-01 07:16:20'),
(10, 'idouglas', 'annette82@rempel.com', '$2y$10$rbp1jQ6HiS9peqdFABXIOOn51SS1bhBlEWexPiraS5Nn6E6yCUfVK', '1-335-509-4849 x85246', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(11, 'ksteuber', 'yvonne.durgan@harris.com', '$2y$10$FVB6rDdGfOXIkUOqNB.TNOt/MHLuHWBTUVN5ARiyGztA/RxrGWr26', '684.798.9124', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(12, 'zframi', 'bcollins@yahoo.com', '$2y$10$4.7lsjEbMQ23o0jXQhutaeTsUq.5hpYF4kZlRc6MuSzibos9Y1pGC', '1-879-893-5571 x614', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(13, 'wilderman.noel', 'mariam04@yahoo.com', '$2y$10$ScGuk2uGvrSpykNqFZTj3OMjVC9caLwvVNoETtuJS7vYO/YqGOVD2', '+1.541.426.5595', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(14, 'kutch.meggie', 'filomena.skiles@gmail.com', '$2y$10$Ps9/Lsq/x9yN8NeouBPI3e.2XANQh4IWQwdU/9HE8G2tDv31zyErq', '+1-748-464-0531', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(15, 'esmeralda.hintz', 'karianne25@fadel.com', '$2y$10$U3DNr1J5nECsHqHaHNvc2epo14yKVI1M6gJQlvfnxouxwDpqhjE2.', '+1 (802) 783-0488', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(16, 'ekoss', 'jaime42@cassin.com', '$2y$10$YvRUHaO.anJ8mR716gKL1eXxjvmar7Rh52mur6B5UKTyKNVUUqatO', '545.362.5091 x0606', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(17, 'shyann.buckridge', 'xwill@gmail.com', '$2y$10$gpXd0BCT9tlFTS2V6D8A6uWS638gLTYJfm4l0wB3kLgnXS6tUOuy2', '1-972-222-4013 x9845', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(18, 'rkub', 'cremin.natasha@zboncak.org', '$2y$10$jj69fDCqWw3bzL7SomavQu0ODponblIUeC6oAruudfaanM2VxN33i', '871.754.8301 x5896', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(19, 'mclaughlin.cary', 'mose38@turcotte.org', '$2y$10$CMclhzykg0NeuZzYQxczxesRBQdDC7hJgfXbkfJY0J0EuGLyfqY06', '672-780-8566', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:52', '2017-11-01 14:53:52'),
(20, 'reyna.hane', 'jessica.kuhic@yahoo.com', '$2y$10$5HtHYzj7bs4TB0uQ11mvjeFrF5Okla0fRxJ2l7hyLCNuMWw6R7fEq', '(918) 373-7089 x48792', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:53', '2017-11-01 14:53:53'),
(21, 'rosemarie70', 'hamill.rhea@hotmail.com', '$2y$10$Iv5Cp2RFjEmdQjsFxbKcxeUg24kAdntzD98vQhbG99Wk/WAOU1KCS', '(896) 665-9450 x281', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:53', '2017-11-01 14:53:53'),
(22, 'connor23', 'jody85@gmail.com', '$2y$10$8ADz39YCo7r6E02L2ERMYuDlHpp6LCWrCLIFhpOimbGnkWQJAtWtq', '616.249.5167', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:53', '2017-11-01 14:53:53'),
(23, 'armstrong.nora', 'kaci.carter@bernier.com', '$2y$10$46yWK.2AC70MpSkM1LYpyuw1UcWZOU2FFJt7xO6BgQSJ1Zekcv4ji', '(991) 253-1152', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:53', '2017-11-01 14:53:53'),
(24, 'coby39', 'gillian.nolan@yahoo.com', '$2y$10$sqyePsp.HWbuWF6Mv1V8W.J290X.x09kpGNTBQ4yMzExMGwsODwE.', '1-641-779-8121', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:53:53', '2017-11-01 14:53:53'),
(25, 'gussie.walker', 'dheller@gmail.com', '$2y$10$F8YR1xOgZf3i7eZu7IF8fu7pSViESAjlxgm8Nmg9QDdKZ./dL4t/K', '274.247.0070 x2231', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-01 14:54:18', '2017-11-01 14:54:18'),
(26, 'imills', 'otho.hirthe@yahoo.com', '$2y$10$HZWv4Qx/jH09CJrO/xhnr.yEPd5OrGyWZkZb.66p3iyqOxXCAHIW6', '557.294.0391', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-01 14:54:18', '2017-11-01 14:54:18'),
(27, 'devonte.funk', 'ledner.toni@gmail.com', '$2y$10$/5gXqKTnDvgfLQgBZKJOae.aHfgOrckfau.Ji7eUKhP9MEfMhJegW', '912-938-1893 x7703', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-01 14:54:18', '2017-11-01 14:54:18'),
(28, 'hayes.lyda', 'gheidenreich@hammes.com', '$2y$10$k6spSJRoQYVpBRLu3c1SruwlbstRFK8V8J.YnckMMperlDnp8c7KS', '964-729-0043 x5418', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-01 14:54:18', '2017-11-01 14:54:18'),
(29, 'fay66', 'mcdermott.emelia@hotmail.com', '$2y$10$SxLRtHPjpUDq3QnIuDZNW.Ep1kq2NU/PwESyCCbZrVIW5Y9dCjbA6', '(375) 906-5612', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-01 14:54:18', '2017-11-01 14:54:18'),
(30, 'ebony.langworth', 'hschultz@wyman.info', '$2y$10$XDjYF.XepYsBR33IO4cfBeKTGE7ddLBiimmgqRhil2irdNFlD/sqa', '+1.227.951.8073', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(31, 'david61', 'padberg.vicente@sporer.com', '$2y$10$aoODc4DUEzK.YEWSREKOoOHr39lasfjfQDDp7vFh.5YA49AVPXj1e', '521.909.1570', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(32, 'humberto.abbott', 'harvey.lori@roberts.com', '$2y$10$COWT1dvLMQ/oSI6Ndlc4FOMd5drcEj9NgXHI0J90ddfq3xFXyqrsC', '804-435-4457 x825', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(33, 'daugherty.colin', 'simonis.evie@goldner.com', '$2y$10$pF6h4q0hQVkUitUgSChZ9eeXuOJp3gKhmarlWa4qSyoubWIEyx8wy', '272-366-8439', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(34, 'mathew47', 'jennifer.hudson@hotmail.com', '$2y$10$zqZvX3W8pshlg4sc1rzPs.mCvjCZrxgGYgHq6EDb.u.ALYxz.dfly', '1-337-253-6033', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(35, 'probel', 'betsy23@trantow.net', '$2y$10$7KtfjnGERmMmhICFZghUsuJPz6/GeOgL0iY7qhXVXAM07wmmgL.BW', '678.732.6148 x569', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(36, 'bernhard.olson', 'cbeatty@hotmail.com', '$2y$10$arI53XMdoGNAa4V3tF0EQ.h92q4USpSEDugP34FjLgWj1F5i8v8bi', '1-846-418-6007 x83484', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(37, 'viola.ohara', 'anthony.cronin@roberts.com', '$2y$10$M3qfMN3N5k6sbLVdKxcri.OvMN6v49IhndGdkKzMwV.T.0U0jv7sq', '1-675-564-0585', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(38, 'doyle.dubuque', 'klein.edna@hotmail.com', '$2y$10$NdVKHaY9n.P36v.ERiRTeO4Vh.qsaaCSMSzJD.LfgWHYL8CjwLkcy', '229.686.1060 x0797', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(39, 'misael97', 'jenifer83@oberbrunner.com', '$2y$10$TDURY8CDH/YyIIrm9ra74.7hy4b31wfNprcboq4MTaTmq/TppeZ2e', '913-753-0216', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(40, 'morissette.avery', 'ucartwright@donnelly.com', '$2y$10$BX2lOWgrqEOSXYCGYexTGucQlgCU7CgA64Q8ka5LOqeVPFI6S7njW', '352-250-4639', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(41, 'stamm.dell', 'sstreich@feeney.info', '$2y$10$X46.C5J0Ce/mABbiDFv3GeInhxRskhw6Kv0sOaJOiLIQHc4QQ8ctW', '(270) 286-8333 x461', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(42, 'kennedy12', 'maribel89@hotmail.com', '$2y$10$Eptt86LctDN0GzqD20zYRe3sIszgDskEoVcXpKOuLiL6SsPZC9S5.', '342-816-2764 x228', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:26', '2017-11-01 14:55:26'),
(43, 'aschinner', 'gislason.barbara@gmail.com', '$2y$10$SKP2HL8.U4G0FzZaCb6kl.KvBKco9OT1TNyprMi7k0elQH.9pJD5a', '(226) 457-3526 x600', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:27', '2017-11-01 14:55:27'),
(44, 'rodrick.walker', 'jimmie51@gmail.com', '$2y$10$mgMREORXOXvD3z77UgAA4.VYKVg8pg.aVmIaPTL4uKuxPj8etl2WG', '330.931.2237 x006', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:27', '2017-11-01 14:55:27'),
(45, 'josiane.schultz', 'yheaney@gmail.com', '$2y$10$/rnRoX.sJXE8VStmdpGUzOZbehGl94o7RVakLmc1zy8uh9C8U.4ia', '+1 (558) 830-1400', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:27', '2017-11-01 14:55:27'),
(46, 'dietrich.noemy', 'gulgowski.pinkie@hotmail.com', '$2y$10$iCpZIhzFBqwzL86gv1yNO.IfuRHjDJGRTsNPAf9CeMZPyu2ZOl50u', '745.894.8112 x6921', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:27', '2017-11-01 14:55:27'),
(47, 'oshields', 'hnicolas@kassulke.com', '$2y$10$YwOD1PGAaIzu0D4xF6A8E.WLCbMKbnuJURzVLLV/GtG9acGywE2WC', '(883) 881-1339 x59380', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:27', '2017-11-01 14:55:27'),
(48, 'nicolette53', 'mariela76@lesch.com', '$2y$10$j/387bkLhxQUPY4CyxAvHO86UdHzaybVv2bW5yo0cdkuCPQTpYDiq', '1-945-608-8346', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:27', '2017-11-01 14:55:27'),
(49, 'leuschke.tyson', 'heaney.jacky@stoltenberg.com', '$2y$10$CqCABGafeWTNnf2k1kwAVOTTk4dvl66WQ8BNaJ5W3GRHmmYxiIiUm', '+1-242-851-6390', NULL, NULL, NULL, NULL, 0, NULL, '2017-11-01 14:55:27', '2017-11-01 14:55:27');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
