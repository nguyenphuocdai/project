-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2017 lúc 05:43 AM
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
(28, 'Ghế Fabio', 'Ghe-Fabio', 1590000, 0, NULL, 'Pháp', 148, NULL, NULL, 'ghe-fabio.jpg', 'ghevanphong,fabio', NULL, '<p>Ghế nh&acirc;n vi&ecirc;n Fabio mang thương hiệu AO+ được thiết kế v&agrave; sản xuất tại PH&aacute;p do The City Ph&acirc;n phối. Lưng ghế bọc lưới, nệm ngồi bọc vải, ch&acirc;n nhựa.</p>\r\n', 6, 16, '2017-10-16 03:06:08', '2017-10-16 03:43:38'),
(29, 'Tủ hồ sơ di động KLIMPEN', 'Tu-Ho-So-Di-Dong-Klimpen', 2750000, 0, 0, 'Việt Nam', 37, NULL, NULL, 'tu-tai-lieu-go-2-canh.jpg', 'tuhoso,klimpen', NULL, '<p>- Tủ ngăn k&eacute;o KLIMPEN c&oacute; thể đặt ở giữa ph&ograve;ng v&igrave; mặt sau tủ được ho&agrave;n chỉnh. Ngăn k&eacute;o được thiết kế với ngăn dừng để ngăn chặn k&eacute;o bị k&eacute;o ra qu&aacute; xa.</p>\r\n\r\n<p>- Tủ c&oacute; khe cắm cho nh&atilde;n tr&ecirc;n mỗi ngăn k&eacute;o để bạn c&oacute; thể dễ d&agrave;ng giữ cho vật dụng của bạn c&oacute; tổ chức v&agrave; t&igrave;m thấy ch&uacute;ng nhanh ch&oacute;ng</p>\r\n\r\n<p>- Chất liệu :&nbsp;</p>\r\n\r\n<p>+ Đầu tủ/ h&ocirc;ng tủ : v&aacute;n okal, sơn acrylic, nhựa&nbsp;ABS.</p>\r\n\r\n<p>+ Trước thanh trượt/ bệ ch&acirc;n/ mặt trước ngăn k&eacute;o : v&aacute;n sợi&nbsp;, sơn arcylic.</p>\r\n\r\n<p>+ Lưng tủ : v&aacute;n okal, sơn acrylic</p>\r\n', 6, 16, '2017-10-16 07:07:17', '2017-10-16 07:07:17'),
(30, 'Giường Ngủ KLED', 'Giuong-Ngu-Kled', 30000000, 0, 0, 'Việt Nam', 28, NULL, NULL, 'giuong-ngu-dep-go-tu-nhien.jpg', 'giuongngu', NULL, '<p>Chất liệu: MDF cao cấp</p>\r\n\r\n<div class=\"csschitiet\" style=\"position: relative; max-width: 100%; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Giường ngủ sử dụng nguy&ecirc;n liệu nhập khẩu, thiết kế sang trọng, chắc chắn, c&oacute; nhiều v&acirc;n kh&aacute;c nhau để lựa chọn. Chất liệu bền, đẹp, gi&aacute; cả hợp l&yacute;, Giường Ngủ GN002 l&agrave; sự lựa chọn tuyệt vời cho kh&aacute;ch h&agrave;ng kinh doanh dịch vụ kh&aacute;c sạn, nh&agrave; nghỉ.</div>\r\n\r\n<div class=\"csschitiet\" style=\"position: relative; max-width: 100%; color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">\r\n<div style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Mẫu&nbsp;<strong>giường ngủ đẹp</strong>&nbsp;GN002 c&oacute; nhiều kiểu chạy chỉ kh&aacute;c nhau.<br />\r\n<br />\r\n<strong><a href=\"http://noithatminhkhoi.com/giuong-ngu\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: 0px; outline: 0px; text-decoration-line: none; color: rgb(0, 0, 205);\" target=\"_blank\" title=\"Giường ngủ\">Giường ngủ</a></strong>&nbsp;sử dụng nguy&ecirc;n liệu nhập khẩu, thiết kế sang trọng, chắc chắn, c&oacute; nhiều v&acirc;n kh&aacute;c nhau để lựa chọn. Chất liệu bền, đẹp, gi&aacute; cả hợp l&yacute;, Giường Ngủ GN002 l&agrave; sự lựa chọn tuyệt vời cho kh&aacute;ch h&agrave;ng kinh doanh dịch vụ kh&aacute;ch sạn, nh&agrave; nghỉ.&nbsp;<br />\r\n&nbsp;</div>\r\n\r\n<div style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Một số tư vấn khi&nbsp;chọn giường ngủ cho kh&aacute;ch sạn<strong>:</strong><br />\r\n&nbsp;\r\n<h2 style=\"text-align:justify\"><strong>1. Đầu ti&ecirc;n, bất cứ vật dụng trang tr&iacute; nội thất n&agrave;o th&igrave; k&iacute;ch cỡ cũng l&agrave; yếu tố quan trọng.</strong></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Nếu bạn c&oacute; một ph&ograve;ng ngủ của kh&aacute;ch sạn tương đối nhỏ, bạn kh&ocirc;ng thể chọn những kiểu giường ngoại cỡ như d&agrave;nh cho vua ch&uacute;a, v&igrave; vậy n&oacute; sẽ l&agrave;m mất đi t&iacute;nh h&agrave;i ho&agrave; trong việc b&agrave;i tr&iacute; th&ecirc;m nhiều đồ d&ugrave;ng kh&aacute;c trong ph&ograve;ng.</li>\r\n	<li>V&agrave; quan trọng một điều nữa l&agrave; bạn cần phải lưu &yacute; l&agrave; khi mua giường để ngủ một m&igrave;nh th&igrave; mua k&iacute;ch cỡ n&agrave;o l&agrave; hợp l&yacute; nhất, c&ograve;n trong trường hợp kh&aacute;ch sạn th&igrave; thường c&oacute; nhiều người ngủ th&igrave; phải chọn chiếc giường c&oacute; bề ngang cần lớn hơn v&iacute; dụ như 160cm hay 180cm d&agrave;nh cho 2 người.</li>\r\n	<li>Trừ khi bạn l&agrave; người th&iacute;ch tạo ra sự thoải m&aacute;i tối đa chiếc giường ngoại cỡ với bề ngang 200cm l&agrave; sự lựa chọn kh&ocirc;ng tồi.</li>\r\n</ul>\r\n\r\n<h2><strong>2. Đệm - th&ecirc;m một yếu tố quan trọng.</strong></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Tất nhi&ecirc;n mọi người đếu muốn thật thoải m&aacute;i v&agrave; &ecirc;m &aacute;i khi nằm tr&ecirc;n giường, hiện nay hầu hết mọi gia đ&igrave;nh đều sử dụng nệm cho chiếc giường của m&igrave;nh.</li>\r\n	<li>C&oacute; nhiều loại nệm nhưng nệm cao su cao cấp vẫn l&agrave; lựa chọn tuyệt vời nhất mặt d&ugrave; gi&aacute; th&agrave;nh kh&ocirc;ng hề rẻ.</li>\r\n	<li>V&agrave; đa số những nh&agrave; sản xuất nệm đều cho th&ecirc;m v&agrave;o lớp b&ocirc;ng v&agrave; lớp l&oacute;t ở tr&ecirc;n mặt nệm hay c&ograve;n gọi l&agrave; chần g&ograve;n để tăng tối đa sự thoải m&aacute;i khi sử dụng. Khi bạn mua tấm trải giường, bạn phải chắc chắn 100% đ&atilde; đo đ&uacute;ng k&iacute;ch thước của nệm v&agrave; m&agrave;u sắc của kh&ocirc;ng gian ph&ograve;ng ngủ, m&agrave;u sắc đồ d&ugrave;ng nội thất kh&aacute;c để lựa được một bộ drap đẹp, ph&ugrave; hợp nhất.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h2>3. Gi&aacute; th&agrave;nh, tất nhi&ecirc;n ai cũng quan t&acirc;m&nbsp;đến gi&aacute; th&agrave;nh nhất, bạn cần d&agrave;nh số ti&ecirc;n th&iacute;ch hợp.</h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Tr&ecirc;n thị trường hiện nay c&oacute; v&ocirc; v&agrave;n mẫu m&atilde;, kiểu giường kh&aacute;c nhau, thiết kế rất đẹp mắt v&agrave; độc đ&aacute;o, ấn tượng gi&aacute; từ 2.500.000 vnđ đến tr&ecirc;n 20.000.000 vnđ.</li>\r\n	<li>Với nhu cầu sử dụng trong v&ograve;ng 20 năm v&agrave; đổi mẫu kh&aacute;c th&igrave; những mẫu giường l&agrave;m từ gỗ mdf cao cấp gi&aacute; khoảng hơn 3.000.000 vnđ (loại chuy&ecirc;n sử dụng trong kh&aacute;ch sạn) đ&atilde; đ&aacute;p ứng được.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h2><strong>4. Khung giường phải thật chắc chắn, đ&oacute; l&agrave; điều then chốt.</strong></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Bạn h&atilde;y tưởng tượng một chiếc giường cứ ph&aacute;t ra tiếng động khi trở m&igrave;nh hay c&oacute; &quot;hoạt động mạnh&quot;, đ&oacute; l&agrave; một điều kinh khủng, n&oacute; ph&aacute; hoại giấc ngủ hay ph&aacute; hoại cuộc y&ecirc;u.</li>\r\n	<li>H&atilde;y xem chất liệu của giường chắc chắn đ&oacute; l&agrave; loại tốt v&agrave; lắp r&aacute;p phải thật chuẩn.<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h2>5. Quan trọng l&agrave; bạn phải th&iacute;ch.</h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>C&aacute;c yếu tố về gi&aacute; cả, kỹ thuật khi đ&atilde; được đ&aacute;p ứng th&igrave; bạn phải lựa chọn chiếc giường l&agrave;m sao vừa h&agrave;i ho&agrave; với ph&ograve;ng ngủ nhưng phải đ&aacute;p ứng được sở th&iacute;ch của chủ nh&acirc;n, đừng vội v&agrave;ng quyết định cứ chậm r&atilde;i c&acirc;n nhắc khi lựa chọn.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h2><strong>6. Đệm - chọn chất liệu.</strong></h2>\r\n\r\n<ul style=\"margin-left:10px !important; margin-right:0px\">\r\n	<li>Đệm - nệm hiện nay c&oacute; &nbsp;rất nhiều loại nhưng đối với kh&aacute;ch sạn th&igrave; n&ecirc;n sử dụng nệm l&ograve; xo.</li>\r\n	<li>Thứ nhất l&agrave; về gi&aacute; cả của nệm l&ograve; xo cũng mềm hơn nệm cao su rất nhiều.</li>\r\n	<li>Thứ hai l&agrave; độ d&agrave;y của nệm thấp nhất l&agrave; 20cm nh&igrave;n rất sang trọng v&agrave; cao cấp. Thứ ba l&agrave; về độ đ&agrave;n hồi, l&ograve; xo hiện đại hiện nay được xử l&yacute; rất tốt n&ecirc;n độ đ&agrave;n hồi rất cao, rất ph&ugrave; hợp cho kh&aacute;ch sạn.</li>\r\n	<li>Khuyết điểm lớn nhất của nệm l&ograve; xo l&agrave; độ bền, cho n&ecirc;n bạn cần phải chọn thật kỹ h&atilde;ng sản xuất v&agrave; nhờ người c&oacute; kinh nghiệm tư vấn để chọn được chiếc nệm vừa đẹp vừa bền.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n', 6, 14, '2017-10-21 14:35:59', '2017-10-21 14:35:59'),
(31, 'Chậu cây cau giả', 'Chau-Cay-Cau-Gia', 1900000, 0, NULL, 'Việt Nam', 50, NULL, NULL, 'cay dua gia_1.jpg', 'caycanh', NULL, '<p style=\"text-align:justify\">Một chậu c&acirc;y cau giả bao gồm 3 c&acirc;y, trong đ&oacute; 1 c&acirc;y cao v&agrave; 2 c&acirc;y thấp.</p>\r\n\r\n<p style=\"text-align:justify\">Chậu c&acirc;y cau giả th&iacute;ch hợp trang tr&iacute; ban c&ocirc;ng, s&acirc;n thượng, hoặc những nơi trong nh&agrave; cần kh&ocirc;ng gian xanh m&aacute;t.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">C&acirc;y xanh giả với m&agrave;u sắc như c&acirc;y thật, bạn kh&ocirc;ng phải tốn thời gian v&agrave; c&ocirc;ng sức chăm s&oacute;c, c&acirc;y nh&igrave;n vẫn rất đẹp theo thời gian. Nếu c&acirc;y d&iacute;nh bụi, bạn chỉ cần xịt rửa lại bằng nước l&agrave; c&acirc;y trở n&ecirc;n như mới.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;Qu&yacute; kh&aacute;ch c&oacute; thể mua c&acirc;y kh&ocirc;ng cần chậu, khi đặt h&agrave;ng, qu&yacute; kh&aacute;ch n&oacute;i r&otilde; y&ecirc;u cầu, ch&uacute;ng t&ocirc;i sẽ trừ tiền chậu ra cho qu&yacute; kh&aacute;ch</p>\r\n\r\n<p style=\"text-align:justify\">- Vận chuyển miễn ph&iacute; trong nội th&agrave;nh TPHCM, nếu vận chuyển đi tỉnh ngo&agrave;i TPHCM, ch&uacute;ng t&ocirc;i sẽ đ&oacute;ng chậu v&agrave; c&acirc;y ri&ecirc;ng, sau đ&oacute; ch&uacute;ng t&ocirc;i sẽ hướng dẫn qu&yacute; kh&aacute;ch c&aacute;ch trồng c&acirc;y v&ocirc; chậu.</p>\r\n\r\n<p style=\"text-align:justify\">Trồng c&acirc;y trong nh&agrave; kh&ocirc;ng những mang lại kh&ocirc;ng gian xanh m&aacute;t, c&ograve;n mang phong thủy tốt , tăng cường sinh kh&iacute;, th&ecirc;m thịnh vượng v&agrave; may mắn.</p>\r\n', 6, 19, '2017-10-21 14:42:12', '2017-10-25 08:08:37'),
(32, 'Cây treo đồ cổ điển', 'Cay-Treo-Do-Co-Dien', 1000000, 0, 0, 'Việt Nam', 32, NULL, NULL, '3029953423_194853924.jpg', 'dotrangtri', NULL, '<p style=\"text-align:justify\">Th&ocirc;ng tin sản phẩm :</p>\r\n\r\n<p style=\"text-align:justify\">- Chất liệu : sắt sơn tĩnh điện chống rỉ s&eacute;t</p>\r\n\r\n<p style=\"text-align:justify\">- M&agrave;u sắc : sản phẩm c&oacute; 2 m&agrave;u : đen v&agrave; trắng kem. Bạn chọn m&agrave;u sắc vui l&ograve;ng để lại lời nhắn khi đặt h&agrave;ng</p>\r\n\r\n<p style=\"text-align:justify\">- K&iacute;ch thước : Cao 1m85, đường k&iacute;nh đế m&oacute;c 40cm</p>\r\n\r\n<p style=\"text-align:justify\">- Trọng lượng : 13kg</p>\r\n\r\n<p style=\"text-align:justify\">- C&oacute; thể th&aacute;o rời, rất thuận tiện để&nbsp;vận chuyển.</p>\r\n', 6, 19, '2017-10-21 14:43:28', '2017-10-21 14:43:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Các ràng buộc cho các bảng đã đổ
--

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
