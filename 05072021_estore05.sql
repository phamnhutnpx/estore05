-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 04, 2021 lúc 09:14 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `estore05`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'Apple', 'apple', 2, 3, '0', '2019-05-22 16:15:39', '4', '2019-05-22 22:37:23', '1', 1, 1),
(2, 'Samsung', 'samsung', 2, 3, '0', '2019-05-22 16:13:24', '4', '2019-05-22 22:37:28', '1', 1, 1),
(3, 'Điện thoại', 'dien-thoai', 1, 0, '0', '2019-05-22 16:09:41', '4', '2019-05-22 16:09:41', '4', 1, 1),
(4, 'Laptop', 'laptop', 1, 0, '1', '2019-05-23 21:33:25', '1', '2019-05-23 21:33:25', '1', 1, 1),
(5, 'Dell', 'dell', 2, 4, '0', '2019-05-23 21:33:41', '1', '2019-05-23 21:33:41', '1', 1, 1),
(6, 'Asus', 'asus', 2, 4, '1', '2019-06-03 21:38:28', '1', '2019-06-03 21:38:28', '1', 1, 1),
(7, 'Huawei', 'huawei', 2, 3, '1', '2019-06-03 21:39:01', '1', '2019-06-03 21:39:01', '1', 1, 1),
(8, 'Xiaomi', 'xiaomi', 2, 3, '2', '2019-06-03 21:39:48', '1', '2019-06-11 23:41:32', '4', 1, 1),
(9, 'HP', 'hp', 2, 4, '0', '2019-06-03 21:40:38', '1', '2019-06-11 23:40:35', '4', 1, 1),
(10, 'Phụ kiện', 'phu-kien', 1, 0, '2', '2019-06-03 22:19:53', '1', '2019-06-03 22:19:53', '1', 1, 1),
(11, 'Macbook', 'macbook', 2, 4, '1', '2019-06-03 22:37:59', '1', '2019-06-11 23:31:02', '4', 1, 1),
(13, 'Linh kiện PC', 'linh-kien-pc', 1, 0, '2', '2021-07-01 16:13:00', '1', '2021-07-01 16:13:00', '1', 1, 1),
(15, 'Mainboard', 'mainboard', 2, 13, '5', '2021-07-01 16:45:36', '1', '2021-07-01 16:48:00', '1', 1, 1),
(16, 'CPU', 'cpu', 2, 13, '4', '2021-07-01 16:47:26', '1', '2021-07-01 16:47:26', '1', 1, 1),
(17, 'VGA', 'vga', 2, 13, '5', '2021-07-01 16:47:55', '1', '2021-07-01 16:47:55', '1', 1, 1),
(18, 'RAM', 'ram', 2, 13, '6', '2021-07-01 16:48:18', '1', '2021-07-01 16:48:18', '1', 1, 1),
(19, 'SSD/HDD', 'ssd-hdd', 2, 13, '7', '2021-07-01 16:49:23', '1', '2021-07-01 16:49:23', '1', 1, 1),
(20, 'Case', 'case', 2, 13, '8', '2021-07-01 16:49:43', '1', '2021-07-01 16:49:43', '1', 1, 1),
(21, 'Cooler/Fan', 'cooler-fan', 2, 13, '9', '2021-07-01 16:49:55', '1', '2021-07-01 16:49:55', '1', 1, 1),
(22, 'PSU', 'psu', 2, 13, '9', '2021-07-01 17:22:52', '1', '2021-07-01 17:22:52', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'noreply.estore.pnb.2021@gmail.com', 'phonambo', 'noreply.estore.pnb.2021@gmail.com', '30000', 'Web site bán hàng Demo', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(1, 'Hay', '0788963501', '1951120182@sv.ut.edu.vn', 'Hay quá Bảo ơi', '2021/6/2', 1, 1, 'Phan Thị Ngọc Anh'),
(2, 'Shop', '0788963500', 'micaetranquocbao2001@gmail.com', 'Shop 13 04', '2021/6/2', 1, 1, 'Trần Quốc Bảo'),
(3, 'Câu hỏi', '0788963502', '1951120118@sv.ut.edu.vn', 'Thời giàn giao hang trong Quận 12 là bào nhiêu', '2021/6/2', 1, 1, 'Lương'),
(4, 'Yêu cầu', '0788963503', '1951120099@sv.ut.edu.vn', 'Chào shop', '2021/6/2', 1, 0, 'Lương'),
(5, 'Chào shop', '0788963500', 'bithu.cn19b@quocbaoit.com', '2', '2021/6/12', 0, 0, 'Lương'),
(6, 'Câu hỏi', '0788963506', 'trannguyenbaophuc@gmail.com', ' Giá ship quận gò vấp bao nhiêu', '2021/6/12', 0, 1, 'Trần Nguyễn Bảo Phúc'),
(7, 'Câu hỏi', '0788963509', 'xuannhutzz@gmail.com', ' Giá ship quận gò vấp bao nhiêu', '2021/6/12', 1, 1, 'Phạm Xuân Nhựt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(4, 'Bất chấp lệnh cấm, doanh số smartphone của Huawei vẫn tăng 130% ở Trung Quốc', 'bat-chap-lenh-cam-doanh-so-smartphone-cua-huawei-van-tang-130-o-trung-quoc', 'Điều này cho thấy ảnh hưởng từ cuộc chiến tranh thương mại Mỹ - Trung lên thị trường Trung Quốc là không đáng kể.', '<p>Kể từ khi ch&iacute;nh phủ Hoa Kỳ đưa&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/huawei\" target=\"_blank\">Huawei</a>&nbsp;v&agrave;o &ldquo;danh s&aacute;ch đen&rdquo;, rất nhiều c&ocirc;ng ty như Google Intel, Qualcomm v&agrave; ARM,... đều cũng đ&atilde; l&ecirc;n tiếng x&aacute;c nhận ngừng hợp t&aacute;c với nh&agrave; sản xuất đến từ Trung Quốc n&agrave;y.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c hiệp hội như Wi-Fi Alliance, hiệp hội b&aacute;n dẫn JEDEC, SDA (Hiệp hội SD) v&agrave; ti&ecirc;u chuẩn PCIe cũng hủy bỏ tư c&aacute;ch th&agrave;nh vi&ecirc;n của Huawei. Người ta tin rằng t&igrave;nh trạng n&agrave;y sẽ l&agrave;m sụp đổ hoạt động kinh doanh của Huawei ngay cả ở thị trường qu&ecirc; nh&agrave; Trung Quốc. Tuy nhi&ecirc;n, dường như lệnh cấm của Mỹ đang khuyến kh&iacute;ch người Trung Quốc chọn mua smartphone của nh&agrave; sản xuất Trung Quốc n&agrave;y.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"https://fptshop.com.vn/uploads/images/tin-tuc/84115/Originals/Huawei-dat-doanh-thu-khung-tren-Tmall-2.jpg\" style=\"height:650px; width:300px\" /></p>\r\n\r\n<p>Cụ thể, sau lệnh cấm của Mỹ đối với Huawei v&agrave;o ng&agrave;y 16 th&aacute;ng 5, doanh số của điện thoại th&ocirc;ng minh Huawei tr&ecirc;n nền tảng Tmall đ&atilde; tăng mạnh. Theo dữ liệu ch&iacute;nh thức từ Tmall, từ ng&agrave;y 18 đến 20 th&aacute;ng 5, c&aacute;c l&ocirc; h&agrave;ng điện thoại di động của Huawei từ Tmall đ&atilde; tăng 130%, vượt mức tăng trưởng trung b&igrave;nh của ng&agrave;nh smartphone n&oacute;i chung tới 30%. V&agrave; để &ldquo;ăn mừng&rdquo; điều n&agrave;y, Huawei cũng đ&atilde; đăng tải một tấm poster để &ldquo;chia vui&rdquo; c&ugrave;ng người d&ugrave;ng.</p>\r\n\r\n<p>Để đạt được điều n&agrave;y l&agrave; do Trung Quốc gần như l&agrave; một thị trường kh&eacute;p k&iacute;n với c&aacute;c dịch vụ &ldquo;tự cung tự cấp&rdquo; v&agrave; kh&ocirc;ng hề dựa dẫm qu&aacute; nhiều v&agrave;o m&ocirc;i trường b&ecirc;n ngo&agrave;i. Do đ&oacute; ảnh hưởng từ lệnh cấm vận của Mỹ l&ecirc;n thị trường tỷ d&acirc;n n&agrave;y l&agrave; kh&ocirc;ng đ&aacute;ng kể v&agrave; Huawei ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m chủ t&igrave;nh h&igrave;nh ở ngay tại thị trường nội địa m&agrave; kh&ocirc;ng gặp bất cứ vấn đề n&agrave;o.</p>\r\n\r\n<p><strong>Theo:&nbsp;</strong><em><a href=\"http://www.gizchina.com/2019/05/24/huawei-smartphone-shipment-grows-despite-us-ban/\" target=\"_blank\">Gizchina</a></em></p>\r\n', 'huawei-hongmeng-os_800x450.jpg', '2021-05-26 23:18:02', '1', '2021-06-23 18:03:27', '1', 1, 1),
(5, 'HongMeng OS của Huawei xuất hiện trực tuyến, có tên quốc tế là Ark OS', 'hongmeng-os-cua-huawei-xuat-hien-truc-tuyen-co-ten-quoc-te-la-ark-os', '', '<h2>Kh&ocirc;ng c&ograve;n nghi ngờ g&igrave; nữa,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-huawei\" target=\"_blank\">Huawei</a>&nbsp;đang ph&aacute;t triển hệ điều h&agrave;nh của ri&ecirc;ng m&igrave;nh, c&oacute; thể được gọi l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/huawei-mate-30-se-chay-he-dieu-hanh-hongmeng-os-va-chip-kirin-985-1170811\" target=\"_blank\">HongMeng OS</a>&nbsp;ở Trung Quốc v&agrave; Ark OS ở c&aacute;c quốc gia kh&aacute;c. Hệ thống n&agrave;y đ&atilde; th&ocirc;ng qua chứng nhận nh&atilde;n hiệu của Văn ph&ograve;ng Thương hiệu Trung Quốc cũng như Văn ph&ograve;ng Sở hữu Tr&iacute; tuệ Ch&acirc;u &Acirc;u.</h2>\r\n\r\n<p>C&aacute;c b&aacute;o c&aacute;o gần đ&acirc;y cho thấy Huawei đ&atilde; nộp đơn xin cấp bằng s&aacute;ng chế giao diện&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;với t&ecirc;n l&agrave; Huawei Ark OS.&nbsp;Trong đ&oacute;, Ark v&agrave; Huawei Ark đ&atilde; được&nbsp;Văn ph&ograve;ng nh&atilde;n hiệu v&agrave; bằng s&aacute;ng chế của Đức chứng nhận v&agrave;o th&aacute;ng 3 năm nay.</p>\r\n\r\n<p>Ứng dụng bằng s&aacute;ng chế cũng bao gồm một loạt c&aacute;c ảnh chụp m&agrave;n h&igrave;nh. Tuy nhi&ecirc;n, kh&ocirc;ng r&otilde; liệu ảnh chụp m&agrave;n h&igrave;nh b&ecirc;n dưới c&oacute; thuộc hệ thống HongMeng/ Ark sắp tới của Huawei hay kh&ocirc;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2019/06/08/1171773/Gallery/ark-os-z.jpg\" style=\"height:309px; width:550px\" /></p>\r\n\r\n<p>Một trong những ảnh chụp m&agrave;n h&igrave;nh c&oacute; cụm từ &quot;Android Green Alliance&quot; gợi &yacute; rằng hệ thống HongMeng/ Ark c&oacute; thể tương th&iacute;ch với c&aacute;c ứng dụng&nbsp;<a href=\"https://www.thegioididong.com/dtdd?g=android\" target=\"_blank\">Android</a>. Li&ecirc;n minh Android Xanh được Huawei, Alibaba, Tencent v&agrave; Netease phối hợp ra mắt. N&oacute; nhằm mục đ&iacute;ch tạo ra một hệ sinh th&aacute;i ứng dụng an to&agrave;n, đ&aacute;ng tin cậy v&agrave; l&agrave;nh mạnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2019/06/08/1171773/ark-os_550x409.jpg\" style=\"height:409px; width:550px\" /></p>\r\n\r\n<p>Hiện nay, nhiều c&ocirc;ng ty đ&atilde; tham gia. Trước đ&acirc;y, Yu Chengdong -&nbsp;Gi&aacute;m đốc điều h&agrave;nh bộ phận kinh doanh ti&ecirc;u d&ugrave;ng của Huawei, đ&atilde; tiết lộ rằng Huawei OS sẽ tương th&iacute;ch với smartphone, m&aacute;y t&iacute;nh,&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\">m&aacute;y t&iacute;nh bảng</a>, TV, xe hơi, thiết bị đeo th&ocirc;ng minh v&agrave; nhiều hệ thống kh&aacute;c.</p>\r\n\r\n<p>Nguồn:&nbsp;<a href=\"https://www.gizchina.com/2019/06/07/suspected-huawei-ark-os-interface-appears-online/\" target=\"_blank\">Gizchina</a></p>\r\n', '636944709585403075_huawei-dat-doanh-thu-khung-tren-tmall-cover.jpg', '2021-06-10 00:27:23', '1', '2021-06-12 22:53:05', '1', 0, 1),
(6, 'Sắm Galaxy A50, \"bá chủ\" bán chạy tầm trung, tặng thêm quà Samsung chính hãng', 'sam-galaxy-a50-ba-chu-ban-chay-tam-trung-tang-them-qua-samsung-chinh-hang', '', '<p>Cụ thể hơn, khi mua&nbsp;Samsung Galaxy A50 ngay b&acirc;y giờ bạn sẽ nhận được c&aacute;c ưu đ&atilde;i cực kỳ hấp dẫn sau:</p>\r\n\r\n<ul>\r\n	<li>Tặng sạc nhanh dự ph&ograve;ng 10.000 mAh ch&iacute;nh h&atilde;ng Samsung (hỗ trợ t&iacute;nh năng sạc nhanh).</li>\r\n	<li>Giảm ngay 300.000 đồng qua qu&agrave; tặng Galaxy (Kh&ocirc;ng &aacute;p dụng chương tr&igrave;nh thu cũ đổi mới).</li>\r\n	<li>Giảm th&ecirc;m 3%, tức khoảng 210.000 đồng cho<a href=\"https://www.thegioididong.com/tin-tuc/uu-dai-sinh-nhat-giam-soc-den-40--nhanh-tay-nao-ban--1168670\" target=\"_blank\">&nbsp;kh&aacute;ch mua online c&oacute; sinh nhật trong th&aacute;ng 6</a>&nbsp;(Kh&ocirc;ng &aacute;p dụng chương tr&igrave;nh thu cũ đổi mới, trả g&oacute;p 0%).</li>\r\n	<li>Đổi m&aacute;y cũ l&ecirc;n đời A50 tiết kiệm đến 7.000.000 đồng, &aacute;p dụng từ ng&agrave;y 1/6 đến 30/6​.</li>\r\n</ul>\r\n\r\n<p>Samsung Galaxy A50 l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\">smartphone Samsung&nbsp;</a>tầm trung mới&nbsp;trong năm 2019 với nhiều t&iacute;nh năng hấp dẫn như cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh,&nbsp;m&agrave;n h&igrave;nh Infinity-U tr&agrave;n viền, 3 camera cho chất lượng ảnh tốt,...</p>\r\n\r\n<p><img alt=\"\" src=\"/DO-AN-TN-2019/public/upload/images/samsung-galaxy-a50-black-10_800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Để đặt mua hoặc biết th&ecirc;m c&aacute;c th&ocirc;ng tin kh&aacute;c về&nbsp;Samsung Galaxy A50, bạn c&oacute; thể nhấn v&agrave;o đường dẫn sản phẩm ngay sau đ&acirc;y!</p>\r\n\r\n<p><img alt=\"\" src=\"/DO-AN-TN-2019/public/upload/images/samsung-galaxy-a50-black-9(1).jpg\" style=\"height:450px; width:800px\" /></p>\r\n', 'samsung-galaxy-a50-black-9.jpg', '2021-06-26 17:22:04', '1', '2021-06-26 17:22:04', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(2, 'Trần Quốc Bảo', 'bao2001', 'e10adc3949ba59abbe56e057f20f883e', '', '0788963500', 'noreply.estore.pnb.2021@gmail.com', '2021-05-24 22:10:08', 1, 1),
(9, 'Sầm Đức Cường', 'cuong2001', 'e10adc3949ba59abbe56e057f20f883e', '', '090932323', 'cuong@gmail.com', '2021-06-11 17:15:12', 1, 1),
(39, 'Dương Đình Danh', '', '', '', '052244141', 'danhbits@gmail.com', '2021-06-16 23:19:45', 1, 1),
(46, 'Trần Quốc Đạt', '', '', '', '0908030405', '', '2021-06-22 23:11:42', 1, 1),
(47, 'Nguyễn Duy', '', '', '', '090305146', '', '2021-06-22 23:16:45', 1, 1),
(48, 'Trần Ngọc Duy', '', '', '', '090640316', '', '2021-06-25 22:52:27', 1, 1),
(49, 'Nguyễn Trí Hải', '', '', '', '0913164136', '', '2021-06-25 22:58:22', 1, 1),
(50, 'Nguyễn Văn Lịch', '', '', '', '096323646', '', '2021-06-25 23:09:57', 1, 1),
(51, 'Hồ Quang Linh', '', '', '', '0357646765', '', '2021-06-26 13:17:30', 1, 1),
(52, 'Bùi Đình Lộc', '', '', '', '076613166', '', '2021-06-26 16:26:19', 1, 1),
(53, 'Nguyễn Phùng Lê Luân', '', '', '', '0903121564', '', '2021-06-28 15:57:50', 0, 1),
(54, 'Võ Thành Luân', '', '', '', '033564616', '', '2021-06-28 22:17:44', 0, 1),
(55, 'Phạm Ngọc Hoàng Minh', '', '', '', '03056451', '', '2021-06-29 15:02:46', 1, 1),
(56, 'Trần Nguyễn Bảo Phúc', '', '', '', '0305464844', '', '2021-06-29 15:09:06', 0, 1),
(57, 'Phạm Xuân Nhựt', '', '', '', '032133234', '', '2021-07-05 23:01:51', 1, 1),
(66, 'Bao 2021', 'bao2021', 'e10adc3949ba59abbe56e057f20f883e', '', '0306444854', 'noreply1.estore.pnb.2021@gmail.com', '2021-07-06 00:00:00', 1, 1),
(67, 'Phạm Nhựt', 'xuannhut02', 'e10adc3949ba59abbe56e057f20f883e', '', '0707937699', 'Npx6101@gmail.com', '2021-07-02 00:00:00', 1, 1),
(68, 'Phạm Nhựt', 'nhutproduct', '8aafece5dd2f7c88943cb9d22c283992', '', '090902132', '1951120118@sv.ut.edu.vn', '2021-07-02 00:00:00', 1, 1),
(69, 'Trần Nguyễn Bảo Phúc', 'baophucsv', 'e10adc3949ba59abbe56e057f20f883e', '', '0703202798', 'tnbaophucsv@gmail.com', '2021-07-04 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'MAHETLUOT', 100000, 30, 30, '2021-09-29', 500000, 'Giam 100000', '2021-06-10', 1, 1, 1),
(2, 'VANLICH', 200000, 20, 3, '2021-06-12', 500000, 'Giam 200k', '2021-06-10', 1, 0, 1),
(3, 'VANLICH123', 200000, 300, 103, '2021-07-20', 300000, 'giảm 200k', '2021-06-25', 1, 1, 1),
(4, 'PHAMNHUT', 150000, 68, 23, '2021-06-30', 500000, 'giảm 300k', '2021-06-25', 1, 1, 1),
(5, 'CN19B', 1000000, 70, 0, '2022-06-30', 500000, 'giảm 1 triệu cho CN19B', '2021-06-25', 1, 1, 1),
(13, 'BAOPHUC', 15000000, 200, 0, '2021-07-26', 100000, 'Giảm 15.000.000đ cho mã đặc biệt!', '2021-07-06', 1, 1, 1),
(14, 'RRHVDU47CRSO', 100000, 1, 0, '2021-08-06', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-07-06', 0, 1, 1),
(15, '9WOXIAKEILSS', 100000, 1, 0, '2021-08-06', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-07-06', 0, 1, 1),
(18, 'INNRRF2XKBTZ', 100000, 1, 0, '2021-08-02', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-07-02', 0, 1, 1),
(19, 'VA5VOZ7GKYWX', 100000, 1, 0, '2021-08-02', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-07-02', 0, 1, 1),
(20, 'OPDXYS3V9BSO', 100000, 1, 0, '2021-08-04', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-07-04', 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(7, '9Xa0wWsx', 39, '2021-05-24 22:10:25', 'Phạm Xuân Nhựt test', '981643651', 73190000, 30000, 0, 79, 761, 'Lê đức thọ', 1, 2),
(8, 'kBbR02fq', 2, '2021-06-08 22:16:37', 'Phạm Xuân Nhựt', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 3),
(9, 'ynPqQjPX', 9, '2021-06-11 21:38:46', 'Phạm Xuân Nhựt', '0981643651', 30610000, 30000, 0, 74, 721, 'so nha 23', 1, 0),
(10, '9PKJZdES', 9, '2021-06-14 00:17:31', 'Phạm Xuân Nhựt', '981643651', 68280000, 30000, 0, 79, 764, 'Hẻm 493, Lê đức thọ, Phường 16', 1, 1),
(42, 'ONyIhUsT', 2, '2021-06-20 23:44:34', 'Trần Nguyễn Bảo Phúc', '0981643651', 29600000, 30000, 0, 70, 696, 'ss', 1, 3),
(43, '5OV82vwX', 39, '2021-06-21 16:08:26', 'Bảo bự', '0932323252', 20030000, 30000, 0, 79, 770, '30, Nam kỳ khởi nghĩa', 1, 0),
(44, 'A3M9aBsQ', 2, '2021-06-21 16:20:59', 'Trần Nguyễn Bảo Phúc', '0981643651', 80510000, 30000, 0, 79, 760, '33, Hàm nghi', 1, 0),
(45, 'Q3KRv23X', 2, '2021-06-21 16:26:11', 'Trần Nguyễn Bảo Phúc', '0981643651', 34610000, 30000, 0, 79, 760, '33, Hàm nghi', 1, 3),
(46, 'YCuxWwS8', 2, '2021-06-21 16:34:33', 'Trần Nguyễn Bảo Phúc', '0981643651', 39710000, 30000, 0, 79, 761, '11A, Quốc lô 1A, Ngã tư ga', 1, 2),
(47, 'qpzSKH6S', 2, '2021-06-21 16:47:05', 'Trần Nguyễn Bảo Phúc', '0981643651', 20530000, 30000, 0, 79, 761, '', 1, 2),
(48, '3pBolrH7', 2, '2021-06-21 16:48:25', 'Trần Nguyễn Bảo Phúc', '0981643651', 20180000, 30000, 0, 79, 771, '', 1, 3),
(49, 'DNZ9O0v4', 2, '2021-06-22 21:24:09', 'Trần Nguyễn Bảo Phúc', '0981643651', 134570000, 30000, 0, 52, 543, 'ddd', 1, 1),
(50, 'B9pS7vS9', 46, '2021-06-22 23:11:42', 'Trần Quốc Bảo', '0908030405', 33800000, 30000, 0, 79, 778, '90, Nguyễn Thị Thấp, Phuong Tân Thuận', 1, 4),
(51, '2PaYlRw0', 47, '2021-06-22 23:16:45', 'Trần Quốc Bảo', '090305146', 17500000, 30000, 0, 96, 969, '11, Nguyễn Trãi', 1, 2),
(52, 'iLsZ3OSp', 2, '2021-06-24 22:33:14', 'Trần Nguyễn Bảo Phúc', '0981643651', 49630000, 30000, 100000, 79, 760, '33, Võ thị sáu, phường Bến nghé', 1, 3),
(53, 'ZRpyN4s4', 2, '2021-06-24 22:50:43', 'Trần Nguyễn Bảo Phúc', '0981643651', 11920000, 30000, 100000, 31, 311, '11, Lê Duẩn, p11', 1, 4),
(54, 'ynJiNdW6', 48, '2021-06-25 22:52:27', 'Trần Quốc Bảo', '090640316', 15330000, 30000, 100000, 79, 765, '11, Điện Biên Phủ, p 11', 1, 0),
(55, 'rGAmiC25', 49, '2021-06-25 22:58:22', 'Trần Quốc Bảo', '0913164136', 22230000, 30000, 100000, 79, 773, 'Số 33, Hẻm 337, Nguyễn Tất Thành, p10', 0, 2),
(56, 'DVpI5Z2S', 50, '2021-06-25 23:09:57', 'Trần Quốc Bảo', '096323646', 52410000, 30000, 100000, 79, 764, '11, Phan Huy Ích, p4', 1, 0),
(57, 'qWuGMFF4', 2, '2021-06-25 23:29:53', 'Trần Nguyễn Bảo Phúc', '0981643651', 860000, 30000, 100000, 79, 760, '11, Hàm Nghi, p14', 1, 2),
(58, 'Ys1tyS43', 9, '2021-06-26 00:18:09', 'Trần Quốc Bảo', '090932323', 19430000, 30000, 100000, 79, 761, '11, Hà Huy Giáp, p Thành Lộc', 0, 0),
(59, 'ZtQ6Lo3D', 9, '2021-06-26 00:23:39', 'Trần Quốc Bảo', '090932323', 15920000, 30000, 100000, 79, 760, '11, Lý Tự Trọng, P Bến Thành', 1, 1),
(60, 'BrDHRuS3', 9, '2021-06-26 00:24:27', 'Trần Quốc Bảo', '090932323', 18930000, 30000, 0, 60, 595, '', 1, 4),
(61, 'J2DcgBS5', 9, '2021-06-26 00:26:39', 'Trần Quốc Bảo', '090932323', 18930000, 30000, 0, 96, 972, '', 1, 0),
(62, 'UbFtpe2E', 9, '2021-06-26 00:30:42', 'Trần Quốc Bảo', '090932323', 14830000, 30000, 100000, 92, 926, 'EEFEF', 1, 0),
(63, 'L5M40Dle', 9, '2021-06-26 13:15:36', 'Trần Quốc Bảo', '090932323', 15870000, 30000, 150000, 79, 778, '11, Nguyễn Thị Thập, p Tân Thuận', 0, 4),
(64, 'B17rt3S6', 51, '2021-06-26 13:17:30', 'Trần Quốc Bảo', '0357646765', 29730000, 30000, 200000, 48, 497, '30a, Phạm Văn Chiêu', 1, 4),
(65, 'p7fMeu3n', 2, '2021-06-26 16:26:19', 'Trần Quốc Bảo', '076613166', 16820000, 30000, 0, 79, 778, 'efef', 0, 2),
(66, '8yXWhO11', 53, '2021-06-28 15:57:50', 'Trần Quốc Bảo', '0903121564', 15330000, 30000, 100000, 79, 760, '46, Lê Lơi, Bến Thành', 1, 0),
(67, '6lVn7Bim', 54, '2021-06-28 22:17:44', 'Trần Quốc Bảo', '033564616', 51830000, 30000, 0, 79, 760, '33, Đường số 14', 1, 0),
(68, 'qxDgoJvp', 2, '2021-06-28 22:23:47', 'Trần Nguyễn Bảo Phúc', '0981643651', 23010000, 30000, 0, 79, 761, '33A/11, Đường Hà Huy Giáp', 1, 4),
(69, 'voGyL6jS', 55, '2021-06-29 15:02:46', 'Trần Quốc Bảo', '03056451', 11720000, 30000, 200000, 79, 760, '33, Huỳnh Thúc Khàng, P Bến Thành', 1, 0),
(70, 'IOM5jzdT', 9, '2021-06-29 15:04:28', 'Trần Quốc Bảo', '090932323', 48000000, 30000, 0, 79, 778, 'Hẻm 253, Trần Xuân Soạn, Tân Thuận', 1, 4),
(71, 'bTRYE81q', 56, '2021-06-29 15:09:06', 'Trần Quốc Bảo', '0305464844', 22810000, 30000, 200000, 79, 760, '44, Lê Lai, P Bến Thành', 1, 1),
(72, 'MlzJ2HV5', 2, '2021-06-29 15:10:39', 'Trần Nguyễn Bảo Phúc', '0981643651', 31780000, 30000, 200000, 79, 768, '27, Đào Duy Anh', 0, 3),
(73, '5LZxClVb', 2, '2021-06-29 22:01:22', 'Trần Nguyễn Bảo Phúc', '0981643651', 30830000, 30000, 0, 95, 957, 'wded', 1, 1),
(74, 'q1sHScIN', 57, '2021-07-05 23:01:51', 'Trần Quốc Bảo', '032133234', 12730000, 30000, 0, 79, 775, '33, Nguyễn Hữa Cảnh', 1, 1),
(75, '3x4iJyP1', 66, '2021-07-06 22:12:24', 'Trần Quốc Bảo', '0306444854', 7360000, 30000, 100000, 79, 778, '33, Nguyễn Thị Thập', 1, 0),
(76, 'EcevtI7V', 69, '2021-07-04 02:49:30', 'Trần Nguyễn Bảo Phúc', '0703202798', 16930000, 30000, 0, 51, 528, 'Thị trấn Sông Vệ', 1, 3),
(77, '9KtuNDik', 69, '2021-07-04 03:01:51', 'Trần Nguyễn Bảo Phúc', '0703202798', 1110000, 30000, 0, 31, 312, 'Thị trấn Abc', 1, 1),
(78, 'UkWsiXEw', 69, '2021-07-04 03:04:45', 'Trần Nguyễn Bảo Phúc', '0703202798', 21020000, 30000, 0, 79, 764, '837/9 Quang Trung, P12', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(7, 7, 1, 4, 18290000, 1, 1),
(8, 8, 1, 3, 18290000, 1, 1),
(9, 9, 1, 3, 18290000, 1, 1),
(10, 10, 1, 3, 18290000, 1, 1),
(50, 42, 20, 1, 16790000, 1, 1),
(51, 42, 5, 2, 6390000, 1, 1),
(52, 43, 2, 1, 20000000, 1, 1),
(53, 44, 25, 3, 18900000, 1, 1),
(54, 44, 19, 2, 11890000, 1, 1),
(55, 45, 20, 2, 16790000, 1, 1),
(56, 45, 22, 4, 250000, 1, 1),
(57, 46, 23, 2, 19500000, 1, 1),
(58, 46, 11, 2, 340000, 1, 1),
(59, 47, 23, 1, 19500000, 1, 1),
(60, 47, 22, 4, 250000, 1, 1),
(61, 48, 25, 1, 18900000, 1, 1),
(62, 48, 22, 5, 250000, 1, 1),
(63, 49, 20, 6, 16790000, 1, 1),
(64, 49, 25, 1, 18900000, 1, 1),
(65, 49, 24, 1, 14900000, 1, 1),
(66, 50, 20, 1, 16790000, 1, 1),
(67, 50, 12, 2, 8490000, 1, 1),
(68, 51, 20, 1, 16790000, 1, 1),
(69, 51, 11, 3, 340000, 1, 1),
(70, 52, 28, 2, 15400000, 1, 1),
(71, 52, 25, 1, 18900000, 1, 1),
(72, 53, 13, 1, 11990000, 1, 1),
(73, 54, 28, 1, 15400000, 1, 1),
(74, 55, 25, 1, 18900000, 1, 1),
(75, 55, 11, 10, 340000, 1, 1),
(76, 56, 25, 1, 18900000, 1, 1),
(77, 56, 20, 2, 16790000, 1, 1),
(78, 57, 22, 1, 250000, 1, 1),
(79, 57, 11, 2, 340000, 1, 1),
(80, 58, 23, 1, 19500000, 1, 1),
(81, 59, 9, 1, 15990000, 1, 1),
(82, 60, 25, 1, 18900000, 1, 1),
(83, 61, 25, 1, 18900000, 1, 1),
(84, 62, 24, 1, 14900000, 1, 1),
(85, 63, 9, 1, 15990000, 1, 1),
(86, 64, 16, 1, 29900000, 1, 1),
(87, 65, 20, 1, 16790000, 1, 1),
(88, 66, 28, 1, 15400000, 1, 1),
(89, 67, 7, 1, 21900000, 1, 1),
(90, 67, 16, 1, 29900000, 1, 1),
(91, 68, 15, 2, 11490000, 1, 1),
(92, 69, 19, 1, 11890000, 1, 1),
(93, 70, 9, 3, 15990000, 1, 1),
(94, 71, 15, 2, 11490000, 1, 1),
(95, 72, 5, 5, 6390000, 1, 1),
(96, 73, 28, 2, 15400000, 1, 1),
(97, 74, 27, 1, 12700000, 1, 1),
(98, 75, 22, 1, 250000, 1, 1),
(99, 75, 14, 1, 790000, 1, 1),
(100, 75, 5, 1, 6390000, 1, 1),
(101, 76, 10, 1, 16900000, 1, 1),
(102, 77, 55, 1, 1080000, 1, 1),
(103, 78, 37, 1, 20990000, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Digiworld', 'DIGIWORLD', 'dienthoai,laptop', '2021-05-22 16:08:31', 4, '2021-05-22 16:08:31', 4, 1, 1),
(2, 'Nhà cung cấp di động gò vấp', 'GOVAPPRODUCER', ' dienthoai, maytinhbang,laptop,phukien', '2021-06-12 23:30:37', 1, '2021-07-05 10:52:13', 1, 1, 1),
(3, 'CÔNG TY THẾ GIỚI DI ĐỘNG', 'TGDDCODE', 'dienthoai,laptop', '2021-05-22 16:06:31', 4, '2021-06-12 23:40:22', 1, 1, 1),
(4, 'Gearvn', 'GEARVN', 'gear', '2021-07-04 16:57:29', 1, '2021-07-04 16:57:29', 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 2, 'Samsung Galaxy S10+ (Plus) Green', 'samsung-galaxy-s10-plus-green', '5df5496a8fb411fd207b39eae9802655.jpg', '5a6fb8ec2db3063e1e241a3e75d4e3ee.png', 'Samsung Galaxy S10 Plus Green chính hãng, nhiều ưu đãi khi đặt trước', '<h3><strong>Thiết kế thi&ecirc;n hướng&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-9-chinh-hang.html\" target=\"_blank\">Note 9</a>, kiểu m&agrave;n h&igrave;nh Infinity-O độc đ&aacute;o</strong></h3>\r\n\r\n<p>B&agrave;i to&aacute;n về hiển thị full m&agrave;n h&igrave;nh đ&atilde; được Samsung ho&agrave;n th&agrave;nh xuất sắc tr&ecirc;n Samsung Galaxy S10 Plus. Với thiết kế Infinity-O, m&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus đ&atilde; gần như chiếm trọn bộ mặt trước, với viền tr&ecirc;n v&agrave; cằm ở dưới rất mỏng. Tai thỏ, cũng như phần viền d&agrave;y đ&atilde; biến mất, thay v&agrave;o đ&oacute; l&agrave; một &lsquo;nốt ruồi&rsquo; chứa 2 camera selfie nằm ở g&oacute;c phải m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Phần nốt ruồi n&agrave;y được Samsung thiết kế rất tỉ mỉ, gọn g&agrave;ng, kh&ocirc;ng g&acirc;y qu&aacute; nhiều sự ch&uacute; &yacute;. B&ecirc;n cạnh đ&oacute;, nh&agrave; sản xuất H&agrave;n Quốc cũng kỹ lưỡng c&agrave;i đặt sẵn tr&ecirc;n m&aacute;y những h&igrave;nh nền mặc định &lsquo;tối dần&rsquo; về ph&iacute;a g&oacute;c tr&aacute;i, nhằm gi&uacute;p thiết kế tr&ocirc;ng liền lạc hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-2.jpg.jpg\" style=\"height:525px; width:840px\" /></p>\r\n\r\n<h2><strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10plus-chinh-hang.html\" target=\"_blank\">Samsung Galaxy S10 Plus</a>&nbsp;ch&iacute;nh h&atilde;ng, nhiều ưu đ&atilde;i khi đặt trước</strong></h2>\r\n\r\n<p><em>Vậy l&agrave;&nbsp;<strong><a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s.html\" target=\"_blank\">Samsung Galaxy S&nbsp;</a></strong>thế hệ thứ 10 đ&atilde; được ra mắt, v&agrave; kh&ocirc;ng l&agrave;m người d&ugrave;ng thất vọng một ch&uacute;t n&agrave;o. Trong bộ ba si&ecirc;u phẩm d&ograve;ng S năm nay,<strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10plus-chinh-hang.html\" target=\"_blank\">Samsung Galaxy S10 Plus</a>&nbsp;</strong>l&agrave; thiết bị đắt gi&aacute; cũng như được trang bị những t&iacute;nh năng đ&igrave;nh đ&aacute;m nhất từ&nbsp;<strong><a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\">Samsung</a></strong>. Đ&acirc;y hứa hẹn sẽ trở th&agrave;nh một trong những smartphone ho&agrave;n hảo nhất năm 2019. Ngo&agrave;i ra, c&aacute;c si&ecirc;u phẩm dự kiến tr&igrave;nh l&agrave;ng của Samsung như&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-s10e.html\" target=\"_blank\"><strong>Samsung Galaxy S10e</strong></a>,&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-10-chinh-hang.html\" target=\"_blank\"><strong>Samsung Galaxy Note 10&nbsp;</strong></a>với những thiết kế c&ugrave;ng t&iacute;nh năng đột ph&aacute; hứa hẹn sẽ b&ugrave;ng nổ giới c&ocirc;ng nghệ trong năm nay.&nbsp;</em></p>\r\n\r\n<h3><strong>Thiết kế thi&ecirc;n hướng&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-9-chinh-hang.html\" target=\"_blank\">Note 9</a>, kiểu m&agrave;n h&igrave;nh Infinity-O độc đ&aacute;o</strong></h3>\r\n\r\n<p>B&agrave;i to&aacute;n về hiển thị full m&agrave;n h&igrave;nh đ&atilde; được Samsung ho&agrave;n th&agrave;nh xuất sắc tr&ecirc;n Samsung Galaxy S10 Plus. Với thiết kế Infinity-O, m&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus đ&atilde; gần như chiếm trọn bộ mặt trước, với viền tr&ecirc;n v&agrave; cằm ở dưới rất mỏng. Tai thỏ, cũng như phần viền d&agrave;y đ&atilde; biến mất, thay v&agrave;o đ&oacute; l&agrave; một &lsquo;nốt ruồi&rsquo; chứa 2 camera selfie nằm ở g&oacute;c phải m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Phần nốt ruồi n&agrave;y được Samsung thiết kế rất tỉ mỉ, gọn g&agrave;ng, kh&ocirc;ng g&acirc;y qu&aacute; nhiều sự ch&uacute; &yacute;. B&ecirc;n cạnh đ&oacute;, nh&agrave; sản xuất H&agrave;n Quốc cũng kỹ lưỡng c&agrave;i đặt sẵn tr&ecirc;n m&aacute;y những h&igrave;nh nền mặc định &lsquo;tối dần&rsquo; về ph&iacute;a g&oacute;c tr&aacute;i, nhằm gi&uacute;p thiết kế tr&ocirc;ng liền lạc hơn.</p>\r\n\r\n<p><img alt=\"thiết kế samsung galaxy s10 plus\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-1.jpg_1.jpg\" /></p>\r\n\r\n<p>Về thiết kế mặt lưng, tr&ecirc;n Galaxy S10 Plus, thay v&igrave; đặt camera nằm dọc, Samsung đ&atilde; xoay ngang cụm camera giống như tr&ecirc;n Note 9. Đồng thời v&acirc;n tay cũng đ&atilde; được t&iacute;ch hợp thẳng v&agrave;o trong m&agrave;n h&igrave;nh. Nhờ đ&oacute; m&agrave; thiết kế tr&ecirc;n m&aacute;y tr&ocirc;ng gọn g&agrave;ng, vu&ocirc;ng vứt hơn. Song song với đ&oacute;, Galaxy S10 Plus cũng c&oacute; độ mỏng rất ấn tượng, chỉ 7.8mm v&agrave; c&oacute; hai khối lượng dựa v&agrave;o tuỳ phi&ecirc;n bản: 175g (bản thường), 198g (bản gốm).</p>\r\n\r\n<p><img alt=\"màn hình samsung galaxy s10\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-2.jpg.jpg\" /></p>\r\n\r\n<p>Samsung cũng kh&ocirc;ng qu&ecirc;n mang l&ecirc;n S10 Plus khả năng kh&aacute;ng nước IP68 cũng như mặt k&iacute;nh bảo vệ Gorilla Glass 5 ở ph&iacute;a sau. Về m&agrave;u sắc, Samsung Galaxy S10 Plus sở hữu rất nhiều phi&ecirc;n bản m&agrave;u sắc như: Prism White, Prism Black, Prism Green, Prism Blue, Canary Yellow, Flamingo Pink, Ceramic Black, Ceramic White. Nhưng hiện tại bạn c&oacute; thể đặt h&agrave;ng trước c&aacute;c m&agrave;u như Prism White, Prism Black v&agrave; Prism Green.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Dynamic AMOLED 2K, t&iacute;ch hợp cảm biến v&acirc;n tay si&ecirc;u &acirc;m&nbsp;</strong></h3>\r\n\r\n<p>Tr&ecirc;n m&agrave;n h&igrave;nh Galaxy S10 Plus, nếu như thiết kế Infinity-O l&agrave; một điểm c&aacute;ch t&acirc;n, th&igrave; chất lượng hiển thị lại l&agrave; một lời khẳng định về chất lượng. M&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus được trang bị tấm nền Dynamic AMOLED do ch&iacute;nh Samsung ph&aacute;t triển. Với kỹ thuật Dynamic Tone Mapping, m&agrave;n h&igrave;nh sử dụng tấm nền tr&ecirc;n sẽ hỗ trợ tối ưu độ tương phản cho từng khung h&igrave;nh kh&aacute;c nhau. Song song với đ&oacute;, Dynamic AMOLED cũng đạt chuẩn HDR10+. Đi k&egrave;m với độ ph&acirc;n giải rất cao - 1440 x 3040, m&agrave;n h&igrave;nh tr&ecirc;n Galaxy S10 Plus chắc chắn sẽ mang đến những trải nghiệm hiển thị xuất sắc chưa từng c&oacute;.<img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-4.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ với Exynos 9820, dung lượng RAM 8GB tối thiểu</strong></h3>\r\n\r\n<p>Galaxy S10 Plus được Samsung n&acirc;ng cấp l&ecirc;n vi xử l&yacute; Exynos 9820. Đ&acirc;y l&agrave; một CPU được thiết kế tr&ecirc;n tiến tr&igrave;nh 8nm v&agrave; chắc chắn sẽ mang đến một tốc độ xử l&yacute; nhanh hơn thế hệ cũ 9810 rất nhiều. Nh&acirc;n NPU cũng xuất hiện nhằm hỗ trợ c&aacute;c thuật to&aacute;n xử l&yacute; AI. B&ecirc;n cạnh đ&oacute;, mức ti&ecirc;u thụ pin của bộ vi xử l&yacute; n&agrave;y cũng &iacute;t hơn đ&aacute;ng kể. Song song với vi xử l&yacute; mạnh mẽ, Samsung cũng trang bị cho Galaxy S10 Plus bộ nhớ RAM tối thiểu l&agrave; 8GB (cho hai phi&ecirc;n bản 128<strong>/<a href=\"https://cellphones.com.vn/samsung-galaxy-s10-plus-512gb.html\" target=\"_blank\">512GB</a></strong>&nbsp;bộ nhớ trong). Đặc biệt hơn, bản tối đa cấu h&igrave;nh&nbsp;<strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10-plus-1tb.html\" target=\"_blank\">Galaxy S10 Plus 1TB</a></strong>&nbsp;sẽ sở hữu dung lượng RAM l&ecirc;n đến 12GB.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-5.jpg\" style=\"height:531px; width:840px\" /></p>\r\n', 1, 320, 60, 10, 18290000, 15290000, '2019-05-22 16:22:43', '4', '2019-06-27 17:11:20', '1', 1, 1),
(2, 1, 'Apple iPhone XR 128GB Black Chính hãng', 'apple-iphone-xr-128gb-black-chinh-hang', '1c8f01e59cf56a2c2e946b58f64f7624.jpg', 'b6a64d0316b06e976ad4324a4063e341.jpg#13b9fc538c72f97683304fcd8c7194fb.jpg#2aa38bbfc27b9aac9d958fb4898bbe08.png', 'Sức mạnh đầu bảng thế giới smartphone', '<p><strong>Bạn cần mua một chiếc iPhone thời thượng, cấu h&igrave;nh mạnh mẽ v&agrave; camera xuất sắc nhất trong tầm gi&aacute; hợp l&yacute;. iPhone XR 128GB ch&iacute;nh l&agrave; lựa chọn d&agrave;nh cho bạn.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-16.jpg\" style=\"height:534px; width:800px\" /></strong>Bộ vi xử l&yacute; Apple A12 Bionic tr&ecirc;n iPhone XR 128GB đang l&agrave; con chip mạnh mẽ nhất thế giới smartphone hiện nay. Bạn sẽ c&oacute; 6 nh&acirc;n, trong đ&oacute; 2 nh&acirc;n hiệu năng cao nhanh hơn 15% v&agrave; 4 nh&acirc;n tiết kiệm điện tiết kiệm hơn 50% so với thế hệ trước A11 Bionic của iPhone X. Đồng thời GPU đồ họa của A12 Bionic mạnh hơn tới 50%, cho ph&eacute;p bạn chơi mọi tựa game ở cấu h&igrave;nh cao nhất một c&aacute;ch nhẹ nh&agrave;ng v&agrave; mượt m&agrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-12.jpg\" style=\"height:533px; width:800px\" />B&ecirc;n cạnh sức mạnh đ&aacute;ng kinh ngạc, Apple A12 Bionic c&ograve;n l&agrave; con chip hỗ trợ tr&iacute; tuệ nh&acirc;n tạo. Với 8 nh&acirc;n Neural Engine c&oacute; khả năng học hỏi theo thời gian thực, iPhone XR c&oacute; thể nhận ra th&oacute;i quen sử dụng điện thoại của bạn, sau đ&oacute; đưa ra những dự đo&aacute;n, h&agrave;nh động xử l&yacute; nhanh dựa tr&ecirc;n những g&igrave; bạn l&agrave;m từng ng&agrave;y. 8 nh&acirc;n AI ri&ecirc;ng biệt c&ograve;n hỗ trợ cho iPhone XR trong rất nhiều trường hợp, từ nhận diện khu&ocirc;n mặt, chụp ảnh x&oacute;a ph&ocirc;ng, smart HDR cho đến c&ocirc;ng nghệ thực tế tăng cường AR. Mọi thứ đều trở n&ecirc;n dễ d&agrave;ng với bạn tr&ecirc;n iPhone XR.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-2.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h3><strong>Camera chỉ một l&agrave; đủ</strong></h3>\r\n\r\n<p>Kh&ocirc;ng cần qu&aacute; nhiều camera sau mang t&iacute;nh chạy đua, iPhone XR 128GB vẫn nổi bật khi sở hữu cảm biến camera xuất sắc h&agrave;ng đầu. Camera ch&iacute;nh tr&ecirc;n iPhone XR c&oacute; độ ph&acirc;n giải 12MP, khẩu độ f/1.8, lấy n&eacute;t nhanh gấp đ&ocirc;i, chụp đ&ecirc;m sắc n&eacute;t v&agrave; c&oacute; khả năng chụp ảnh x&oacute;a ph&ocirc;ng ưu việt. T&iacute;nh năng nổi bật nhất l&agrave; Smart HDR, chụp đẹp trong mọi điều kiện &aacute;nh s&aacute;ng nhờ khả năng b&ugrave; trừ s&aacute;ng ho&agrave;n hảo. iPhone XR kh&ocirc;ng chỉ chụp ảnh x&oacute;a ph&ocirc;ng ch&iacute;nh x&aacute;c m&agrave; c&ograve;n c&oacute; thể điều chỉnh được độ mờ của hậu cảnh, th&ecirc;m c&aacute;c hiệu ứng để ảnh ch&acirc;n dung của bạn đẹp một c&aacute;ch chuy&ecirc;n nghiệp.</p>\r\n\r\n<h3><strong>Chiếc iPhone m&agrave;n h&igrave;nh lớn tr&agrave;n viền cạnh</strong></h3>\r\n\r\n<p>Đ&uacute;ng như đặc trưng của d&ograve;ng iPhone X, iPhone XR 128GB sử dụng thiết kế tr&agrave;n viền gi&uacute;p cho d&ugrave; m&agrave;n h&igrave;nh lớn tới 6,1 inch nhưng iPhone XR vẫn nhỏ gọn hơn so với iPhone 8 Plus, dễ d&agrave;ng cầm nắm thao t&aacute;c bằng một tay. M&agrave;n h&igrave;nh iPhone XR c&ocirc;ng nghệ Liquid Retina sắc n&eacute;t, m&agrave;u sắc ch&iacute;nh x&aacute;c, độ s&aacute;ng cao, t&aacute;i tạo cuộc sống v&ocirc; c&ugrave;ng ch&acirc;n thực. Đ&acirc;y l&agrave; m&agrave;n h&igrave;nh LCD đẹp nhất thế giới smartphone với 6 tấm cảm biến đ&egrave;n nền dưới m&agrave;n h&igrave;nh, tự động điều chỉnh c&acirc;n bằng trắng th&ocirc;ng minh để thay đổi nhiệt độ m&agrave;u dựa theo m&ocirc;i trường, gi&uacute;p bạn lu&ocirc;n được tận hưởng m&agrave;n h&igrave;nh đẹp v&agrave; dễ chịu cho mắt.<img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-17.jpg\" style=\"height:583px; width:800px\" /></p>\r\n\r\n<h3><strong>Thoải m&aacute;i lựa chọn m&agrave;u sắc theo &yacute; th&iacute;ch</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; kiểu d&aacute;ng đẹp mắt khi được ho&agrave;n thiện từ nh&ocirc;m v&agrave; vỏ k&iacute;nh bền nhất trong thế giới smartphone, iPhone XR c&ograve;n l&agrave; chiếc iPhone nhiều lựa chọn m&agrave;u sắc nhất. Rất nhiều m&agrave;u sắc đang chờ bạn lựa chọn: Đỏ, v&agrave;ng, trắng, hồng, đen, xanh. Đội ngũ thiết kế của Apple đ&atilde; d&ugrave;ng 7 tấm nền m&agrave;u sắc để m&agrave;u sơn c&oacute; độ s&acirc;u đầy ấn tượng phản chiếu qua lớp k&iacute;nh sang trọng. Vỏ k&iacute;nh cũng mang lại cho iPhone XR khả năng sạc kh&ocirc;ng d&acirc;y. Đặc biệt, iPhone XR c&ograve;n rất bền vững nhờ khả năng chống nước, mang tới sự y&ecirc;n t&acirc;m khi sử dụng.</p>\r\n\r\n<h3><strong>Thời lượng pin tuyệt vời</strong></h3>\r\n\r\n<p>Một trong những l&yacute; do để iPhone XR được y&ecirc;u th&iacute;ch ch&iacute;nh l&agrave; thời lượng pin. Đ&acirc;y l&agrave; chiếc iPhone c&oacute; thời lượng pin tốt nhất hiện nay, đảm bảo cho bạn sử dụng thoải m&aacute;i trong thời gian l&ecirc;n tới hai ng&agrave;y. C&ocirc;ng việc v&agrave; giải tr&iacute; lu&ocirc;n lu&ocirc;n tr&ocirc;i chảy với một chiếc điện thoại hiệu năng mạnh, pin tốt như iPhone XR.</p>\r\n\r\n<h3><strong>N&acirc;ng tầm bảo mật khu&ocirc;n mặt</strong></h3>\r\n\r\n<p>Nhận diện khu&ocirc;n mặt Face ID tr&ecirc;n iPhone XR đ&atilde; được n&acirc;ng l&ecirc;n tầm cao mới. Bạn c&oacute; thể mở kh&oacute;a iPhone, đăng nhập v&agrave;o ứng dụng hay thanh to&aacute;n chỉ trong nh&aacute;y mắt m&agrave; kh&ocirc;ng cần nhập mật khẩu. Đơn giản chỉ l&agrave; cầm m&aacute;y l&ecirc;n, điện thoại sẽ qu&eacute;t khu&ocirc;n mặt si&ecirc;u nhanh v&agrave; x&aacute;c thực mở kh&oacute;a ngay lập tức.<img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-11.jpg\" style=\"height:533px; width:800px\" /></p>\r\n', 1, 20, 26, 20, 21000000, 20000000, '2019-05-26 23:28:34', '1', '2019-06-27 17:08:04', '1', 1, 1),
(4, 2, 'Samsung Galaxy M20 Blue', 'samsung-galaxy-m20-blue', 'fa97ee4b0f27dcf536795b32c58ae1c0.jpg', '23fd459c94ccc1d5f5092169543ff3c2.jpg', 'Điện thoại Samsung Galaxy M20 - Cấu hình mạnh mẽ, thiết kế màn hình giọt nước', '<p><em>Nối tiếp th&agrave;nh c&ocirc;ng sau series&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-a.html\" target=\"_blank\">Galaxy A</a>,<a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\">h&atilde;ng điện thoại SamSung</a>&nbsp;sẽ&nbsp;<em>ra mắt d&ograve;ng Galaxy M.</em><em>Theo đ&oacute;, Galaxy M10, Galaxy M20 l&agrave; 2 mẫu điện thoại đầu ti&ecirc;n được ra mắt v&agrave; sẽ được cập nhật&nbsp;<a href=\"https://www.android.com/versions/pie-9-0/\" target=\"_blank\">Android Pie 9</a>&nbsp;v&agrave;o th&aacute;ng 8/2018.</em></em></p>\r\n\r\n<h3><strong><a href=\"https://www.lifewire.com/what-is-tft-lcd-578664\" target=\"_blank\">M&agrave;n h&igrave;nh&nbsp;TFT LCD</a>&nbsp;tr&agrave;n viền, thiết kế&nbsp;giọt nước độc đ&aacute;o cho tỷ lệ hiển thị cao</strong></h3>\r\n\r\n<p>Tuy với chất liệu nhựa nhưng&nbsp;<strong>Samsung Galaxy M20&nbsp;</strong>vẫn mang trong m&igrave;nh một thiết kế nguy&ecirc;n khối sang trọng như một thiết bị cao cấp. Khi kh&ocirc;ng sờ v&agrave;o, mặt lưng b&oacute;ng bẩy cho cảm gi&aacute;c như&nbsp; mặt lưng k&iacute;nh sang trọng.</p>\r\n\r\n<p>Phần mặt trước được thiết kế với mặt k&iacute;nh cong 2,5 D. Sau thiết kế mang h&igrave;nh đục lỗ tr&ecirc;n&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-a8-2018-chinh-hang.html\" target=\"_blank\">Samsung Galaxy A8</a>, th&igrave; M20 đ&atilde; quay trở lại với thiết kế giọt nước. Với k&iacute;ch thước 6.3 inch được thiết kế giọt nước c&ugrave;ng m&agrave;n h&igrave;nh tr&agrave;n viền đ&atilde; mang đến cho tỉ lệ hiển thị của Samsung Galaxy M20 l&ecirc;n tới gần 100%.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-m20-hinh-1.jpg\" style=\"height:592px; width:840px\" /></p>\r\n\r\n<p>Được trang bị c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;TFT LCD c&oacute; độ ph&acirc;n giải m&agrave;n h&igrave;nh fullHD+ 1080 x 2340 pixels, 16 triệu m&agrave;u. Nhờ đ&oacute; m&agrave;n h&igrave;nh Samsung Galaxy M20 cho khả năng hiển thị tốt với c&aacute;c icon kh&ocirc;ng bị vỡ, h&igrave;nh ảnh tươi s&aacute;ng.</p>\r\n\r\n<h3><strong>Điện thoại Samsung Galaxy M20 c&oacute; hiệu năng mạnh mẽ</strong></h3>\r\n\r\n<p>SamSung đ&atilde; trang bị cho sản phẩm của m&igrave;nh con chip tự sản xuất Exynos 7904 8 nh&acirc;n 64-bit, trong đ&oacute; 2 nh&acirc;n 2.2 GHz Cortex-A73 &amp; 6 nh&acirc;n 1.6 GHz Cortex-A53 tr&ecirc;n nền tảng hệ hiều h&agrave;nh Android 8.1 (Oreo). Nhờ đ&oacute; m&agrave;&nbsp;<strong>Samsung Galaxy M20</strong>c&oacute; một hiệu năng mạnh mẽ, c&aacute;c thao t&aacute;c tr&ecirc;n ứng dụng trơn tru.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-m20-hinh-2.jpg\" style=\"height:585px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Samsung Galaxy M20 c&ograve;n được trang bị con chip GPU Mali G71 cho khả năng chơi game tốt, đặc biệt l&agrave; những game đồ họa hay c&aacute;c tựa game đ&igrave;nh đ&aacute;m hiện nay như PUBG Mobile hoặc Asphalt 8.</p>\r\n\r\n<p>Với dung lượng RAM 3 GB, bộ nhớ trong 32 GB n&ecirc;n M20 cho khả năng hoạt động mượt m&agrave;, hạn chế t&igrave;nh trạng reload khi mở nhiều ứng dụng. Như vậy M20 hứa hẹn đ&aacute;p ứng được nhu cầu của những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<h3><strong>Samsung Galaxy M20 sở hữu camera k&eacute;p cho chất lượng ảnh sắc n&eacute;t&nbsp;</strong></h3>\r\n\r\n<p>Galaxy M20 được trang bị cụm camera k&eacute;p với độ ph&acirc;n giải lần lượt l&agrave; 13 MP (khẩu độ F/1.9) + 5 MP (khẩu độ F/2.2) c&ugrave;ng nhiều t&iacute;nh năng chụp ảnh n&acirc;ng cao như chụp ảnh x&oacute;a ph&ocirc;ng, HDR, chạm nấy n&eacute;t. Ngo&agrave;i ra camera 5 MP c&ograve;n c&oacute; khả năng chụp h&igrave;nh với g&oacute;c si&ecirc;u rộng lần đầu ti&ecirc;n được trang bị tr&ecirc;n sản phẩm smartphone phổ th&ocirc;ng. C&oacute; lẽ SamSung đ&atilde; d&agrave;nh rất nhiều ưu &aacute;i cho Galaxy M20 khi sản phẩm n&agrave;y lại tiếp tục sở hữu một t&iacute;nh năng lần đầu ti&ecirc;n xuất hiện tr&ecirc;n c&aacute;c sản phẩm smartphone tầm trung. Với t&iacute;nh năng cao cấp n&agrave;y người d&ugrave;ng c&oacute; thể tha hồ lưu lại những khoảnh khắc trong cuộc sống h&agrave;ng ng&agrave;y hoặc c&oacute; thể tự tạo cho m&igrave;nh những bộ ảnh hết sức tuyệt vời.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-m20-hinh-5.jpg\" style=\"height:544px; width:840px\" /></p>\r\n\r\n<h3>Mua điện thoại Samsung Galaxy M20 ở đ&acirc;u? Gi&aacute; bao nhi&ecirc;u?</h3>\r\n\r\n<p>Một sản phẩm tầm trung nhưng mang cấu h&igrave;nh mạnh mẽ,&nbsp;<strong>Samsung Galaxy M20</strong>&nbsp;hứa hẹn l&agrave; một đối thủ đ&aacute;ng gờm trong thị trường smartphone tầm trung, cạnh tranh trực tiếp với c&aacute;c t&ecirc;n tuổi Trung Quốc như Oppo, Huawei trong năm 2019. Nếu bạn quan t&acirc;m h&atilde;y đến ngay hệ thống cửa h&agrave;ng CellphoneS hoặc truy cập ngay webite để tham khảo gi&aacute; b&aacute;n chi tiết của sản phẩm n&agrave;y.</p>\r\n', 2, 400, 44, 10, 4990000, 4250000, '2019-06-03 21:45:31', '1', '2019-06-27 17:12:15', '1', 1, 1),
(5, 2, 'Samsung Galaxy A50 White', 'samsung-galaxy-a50-white', '636872943529900358_samsung-galaxy-a50-trang-1.png', '2803038d1e70c78f962564f440b52282.jpg#63f7ee76f51d47c525d4f3813ee9dc29.jpg', 'Điện thoại Samsung Galaxy A50 – Smartphone với màn hình tràn viền, cụm 3 camera ấn tượng', '<p><em>Sau&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-a20.html\" target=\"_blank\"><strong>Galaxy A20</strong></a>&nbsp;v&agrave;&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-a30-64gb.html\" target=\"_blank\"><strong>Galaxy A30</strong></a>&nbsp;th&igrave; mới đ&acirc;y&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\"><strong>SamSung</strong></a>&nbsp;tiếp tục bổ sung một c&aacute;i t&ecirc;n mới v&agrave;o danh s&aacute;ch&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-a.html\" target=\"_blank\"><strong>Galaxy A</strong></a>&nbsp;của m&igrave;nh, đ&oacute; ch&iacute;nh l&agrave;&nbsp;<strong>SamSung Galaxy A50</strong>. A50 với nhiều c&ocirc;ng nghệ với v&agrave; hấp dẫn như cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh, cụm 3 camera hứa hẹn sẽ mang đến trải nghiệm tuyệt vời cho người d&ugrave;ng.</em></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh 6.4 inch &ndash; tận hưởng trọn vẹn với m&agrave;n h&igrave;nh v&ocirc; cực</strong></h3>\r\n\r\n<p>Galaxy A50 sở hữu một m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn l&ecirc;n đến 6.4 inch c&ugrave;ng c&ocirc;ng nghệ m&agrave;n h&igrave;nh Infinity-U tr&agrave;n viền mang đến những trải nghiệm tận c&ugrave;ng cho người d&ugrave;ng. C&ugrave;ng với đ&oacute; l&agrave; tấm nền&nbsp;<a href=\"https://www.lifewire.com/super-amoled-4151073\" target=\"_self\">Super AMOLED</a>&nbsp;chuẩn FHD+ v&agrave; m&agrave;n h&igrave;nh 16 triệu m&agrave;u nhờ đ&oacute; A50 mang đến những trải nghiệm xem ho&agrave;n to&agrave;n kh&aacute;c biệt với những h&igrave;nh ảnh sắc n&eacute;t, ch&acirc;n thực v&agrave; sống động đến từng chi tiết.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Galaxy-A50-1.jpg\" style=\"height:469px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh một m&agrave;n h&igrave;nh v&ocirc; cực với chất lượng hiển thị tốt th&igrave; Galaxy A50 c&ograve;n sở hữu một thiết kế ấn tượng với mặt k&iacute;nh 3D cao cấp kết hợp viền m&agrave;n h&igrave;nh cong tr&agrave;n tinh tế tạo n&ecirc;n một tổng thể nguy&ecirc;n khối liền mạch ho&agrave;n hảo nhờ đ&oacute; m&aacute;y cho khả năng cầm nắm kh&aacute; chắc chắn. Ngo&agrave;i ra, m&agrave;u sắc cũng l&agrave; một điểm nhấn ấn tượng tr&ecirc;n A50 khi m&aacute;y sở hữu nhiều phi&ecirc;n bản m&agrave;u độc đ&aacute;o&nbsp; như đen thi&ecirc;n thạch, xanh đại dương v&agrave; trắng ngọc trai.</p>\r\n\r\n<h3><strong>Bộ ba camera sau với khả năng chụp ảnh AI cho những bức ảnh chuẩn nhiếp ảnh gia</strong></h3>\r\n\r\n<p>Với ba ổng k&iacute;nh đa khẩu độ, từ camera g&oacute;c si&ecirc;u rộng 8MP mang đến g&oacute;c chụp 123 độ thật như mắt nh&igrave;n đến camera đo chiều s&acirc;u 5MP v&agrave; camera khẩu độ lớn 25MP thu s&aacute;ng vượt trội. Ngo&agrave;i ra, cụm camera sau tr&ecirc;n Galaxy A50 c&ograve;n được t&iacute;ch hợp nhiều t&iacute;nh năng th&ocirc;ng minh như chế độ tối ưu h&oacute;a cảnh gi&uacute;p nhận diện chủ thể. Hay c&ocirc;ng nghệ tr&iacute; th&ocirc;ng minh nh&acirc;n tạo AI gi&uacute;p tự động tối ưu độ s&aacute;ng, độ b&atilde;o h&ograve;a gi&uacute;p bức ảnh lu&ocirc;n đẹp ho&agrave;n hảo.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Galaxy-A50-2.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<p>Tất cả đ&oacute; gi&uacute;p Galaxy A50 cho ra những bức ảnh c&oacute; chất lượng như được chụp bởi những nhiếp ảnh gia chuy&ecirc;n nghiệp. Bất kể thời gian v&agrave; kh&ocirc;ng gian, h&agrave;nh tr&igrave;nh của bạn sẽ trở n&ecirc;n trọn vẹn với cụm 3 camera sẵn s&agrave;ng bắt trọn mọi n&eacute;t đẹp d&ugrave; trong điều kiện thiếu s&aacute;ng.&nbsp;</p>\r\n\r\n<p>Đặc bi&ecirc;t với t&iacute;nh năng nhận diện ảnh lỗi khi Galaxy A50 c&oacute; thể ph&acirc;n biệt được c&aacute;c trường hợp mắt nhắm, ống k&iacute;nh bị mờ hay ngược s&aacute;ng. Nhờ đ&oacute; người d&ugrave;ng c&oacute; thể kịp thời điều chỉnh v&agrave; cho ra những khoảnh khắc ho&agrave;n hảo v&agrave; sắc n&eacute;t nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Galaxy-A50-3.jpg\" style=\"height:446px; width:840px\" /></p>\r\n\r\n<h3><strong>Mở kh&oacute;a nhanh v&agrave; bảo mật an to&agrave;n với x&aacute;c thực sinh trắc học</strong></h3>\r\n\r\n<p>Galaxy A50 với&nbsp; c&ocirc;ng nghệ bảo mật sinh trắc học t&acirc;n tiến với khả năng qu&eacute;t v&acirc;n tay&nbsp; dưới m&agrave;n h&igrave;nh nhanh ch&oacute;ng v&agrave; an to&agrave;n. Ngo&agrave;i ra, bạn cũng c&oacute; thể lựa chọn một phương thức kh&aacute;c v&agrave; nhanh ch&oacute;ng kh&ocirc;ng k&eacute;m đ&oacute; ch&iacute;nh l&agrave; nhận diện khu&ocirc;n mặt. Việc bạn cần l&agrave;m l&agrave; giữ điện thoại trước mặt, c&ocirc;ng nghệ nhận diện khu&ocirc;n mặt sẽ gi&uacute;p bạn truy cập v&agrave;o điện thoại một c&aacute;ch nhanh ch&oacute;ng nhưng kh&ocirc;ng k&eacute;m phần an to&agrave;n.</p>\r\n', 2, 368, 11, 10, 6990000, 6390000, '2019-06-03 21:49:23', '1', '2019-06-27 17:04:43', '1', 1, 1),
(6, 8, 'Redmi Note 7 32GB Pink', 'redmi-note-7-32gb-pink', 'dff47577347f3fddcda326afac0c7f34.jpg', '467d27927f4a8057bcf3dd2bb7fe7ef4.jpg#06488aaef1d138e77c10e4c750305f1c.jpg', 'Cấu hình đỉnh giá bất ngờ', '<h2><a href=\"https://www.thegioididong.com/dtdd/xiaomi-redmi-note-7\" target=\"_blank\">Xiaomi Redmi Note 7</a>&nbsp;l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;gi&aacute; rẻ mới được giới thiệu v&agrave;o đầu năm 2019 với nhiều trang bị đ&aacute;ng gi&aacute; như&nbsp;thiết kế notch giọt nước hay camera l&ecirc;n tới 48 MP.</h2>\r\n\r\n<h3>Hiệu năng mạnh mẽ trải nghiệm game mượt m&agrave;</h3>\r\n\r\n<p>Redmi Note 7 xứng đ&aacute;ng l&agrave; một trong những chiếc smartphone c&oacute; hiệu năng tốt, với điểm Antutu đo được khoảng 137586.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/42/167535/Slider/vi-vn-xiaomi-redmi-note-7-thietke.jpg\" style=\"height:433px; width:780px\" />Nhờ được cung cấp sức mạnh bởi con chip Snapdragon 660 c&ugrave;ng RAM 4 GB, m&aacute;y chiến mượt m&agrave; c&aacute;c d&ograve;ng game hiện n&agrave;y với cấu h&igrave;nh tầm trung hoặc cao (tuỳ game) như Li&ecirc;n Qu&acirc;n, PUBG,...</p>\r\n\r\n<p>Giao diện trực quan dễ sử dụng, c&oacute; thể tuỳ chỉnh ph&iacute;m điều hướng cũng l&agrave; một ưu điểm của m&aacute;y.</p>\r\n\r\n<h3>Thiết kế hiện đại, theo xu thế</h3>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-xiaomi\" target=\"_blank\">điện thoại Xiaomi</a>&nbsp;mới l&agrave; một sự lột x&aacute;c ho&agrave;n to&agrave;n về thiết kế so với c&aacute;c d&ograve;ng Redmi trước đ&acirc;y.<img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/42/167535/xiaomi-redmi-note-7-tgdd-4.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>M&aacute;y sở hữu cho m&igrave;nh&nbsp;mặt lưng bằng kính ph&ocirc;́i màu gradient, mang lại cho m&aacute;y cảm gi&aacute;c cao cấp v&agrave; sang trọng hơn rất nhiều.</p>\r\n\r\n<p>4 g&oacute;c m&aacute;y được tăng cường độ bền đ&aacute;ng kể gi&uacute;p chống vỡ k&iacute;nh gấp 4 lần so với c&aacute;c smartphone kh&aacute;c tr&ecirc;n thị trường hiện nay.</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh giọt nước th&iacute;ch mắt</h3>\r\n\r\n<p>Xiaomi Redmi Note 7 sở hữu m&agrave;n h&igrave;nh 6.3 inch của c&oacute; tỷ lệ khung h&igrave;nh 19.5:9,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" target=\"_blank\">độ ph&acirc;n giải Full HD+</a>(2.340 x 1.080 pixel).</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/42/167535/xiaomi-redmi-note-7-tgdd-1.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h3>Camera chất lượng tốt trong tầm gi&aacute;</h3>\r\n\r\n<p>Xiaomi Redmi Note 7 trở th&agrave;nh chiếc điện thoại c&oacute; camera &quot;khủng&quot; gi&aacute; rẻ nhất tr&ecirc;n thị trường hiện nay với &quot;số chấm&quot; l&ecirc;n tới&nbsp;&nbsp;48 MP.</p>\r\n', 1, 420, 10, 10, 4990000, 4550000, '2019-06-03 21:54:51', '1', '2019-06-27 16:59:20', '1', 1, 1),
(7, 1, 'Apple iPhone X 64GB White  Chính hãng', 'apple-iphone-x-64gb-white-chinh-hang', '636483223586180190_1.jpg', '49159254e59c88f0fd2cc7a61dcc45c8.jpg', 'iPhone X 64GB – Siêu phẩm kỷ niệm 10 năm của Apple', '<p><em>Sản phẩm kỷ niệm 10 năm ra mắt của Apple n&ecirc;n&nbsp;<strong>iPhone X 64GB ch&iacute;nh h&atilde;ng VN/A</strong>&nbsp;c&oacute; sự thay đổi so với bộ đ&ocirc;i&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html\" target=\"_blank\">iPhone 8, 8 Plus</a>&nbsp;trước đ&oacute; từ t&iacute;nh năng đến thiết kế khiến nhiều người d&ugrave;ng smartphone khao kh&aacute;t. Ngo&agrave;i ra, bạn c&oacute; thể tham khảo phi&ecirc;n bản dung lượng bộ nhớ trong cao hơn l&agrave;&nbsp;<strong><a href=\"https://cellphones.com.vn/apple-iphone-x-256-gb-chinh-hang-vn.html\" target=\"_blank\">iPhone X 256GB</a></strong></em></p>\r\n\r\n<h3><strong>iPhone m&atilde; VN/A l&agrave; g&igrave;? V&igrave; sao n&ecirc;n chọn iPhone X 64GB ch&iacute;nh h&atilde;ng VN/A?</strong></h3>\r\n\r\n<p>Trước khi ra mắt mỗi sản phẩm cho từng thị trường th&igrave; Apple đ&atilde; nghi&ecirc;n cứu rất kỹ lưỡng để ph&ugrave; hợp nhất với thị trường đ&oacute;. V&iacute; dụ như với Nhật Bản v&agrave; H&agrave;n Quốc đ&oacute; l&agrave; cấm chụp l&eacute;n n&ecirc;n smartphone của 2 thị trường n&agrave;y sẽ kh&ocirc;ng tắt được &acirc;m chụp h&igrave;nh. V&agrave; điện thoại iPhone tại thị trường Việt Nam cũng sẽ như vậy, Apple đ&atilde; nghi&ecirc;n cứu những th&oacute;i quen, quy định của Việt Nam để sản xuất ra iPhone X 64GB ch&iacute;nh h&atilde;ng m&atilde; VN/A.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-1.jpg\" style=\"height:586px; width:840px\" /></p>\r\n\r\n<p>Vậy cụ thể iPhone m&atilde; VA/A l&agrave; g&igrave;? iPhone m&atilde; VN/A l&agrave; h&agrave;nh do ch&iacute;nh Apple sản xuất cho từng thị trường cụ thể v&agrave; đảm bảo chất lượng, kiểm duyệt của Apple. N&ecirc;n khi mua<em>&nbsp;iPhone X 64GB ch&iacute;nh h&atilde;ng m&atilde; VN/A</em>&nbsp;kh&aacute;ch h&agrave;ng sẽ được hưởng nhiều ưu đ&atilde;i hơn so với iPhone cũ, iPhone x&aacute;ch tay. Đ&oacute; l&agrave; ch&iacute;nh s&aacute;ch bảo h&agrave;nh hấp dẫn, nguồn gốc r&otilde; r&agrave;ng, sản phẩm đầy phụ kiện. Đ&acirc;y l&agrave; những điều m&agrave; iPhone X cũ sẽ kh&ocirc;ng thể c&oacute; hoặc c&oacute; kh&ocirc;ng đầy đủ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-2.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>So với những năm trước th&igrave; Apple từng sản xuất những mẫu smartphone c&oacute; dung lượng chỉ 16GB, 32GB th&igrave; 64GB đ&atilde; l&agrave; một dung lượng lớn, đủ để đ&aacute;p ứng mọi nhu cầu sử dụng của kh&aacute;ch h&agrave;ng. Được chạy tr&ecirc;n một hệ điều h&agrave;nh iOS đ&atilde; được tối ưu h&oacute;a, iPhone X 64GB cho ph&eacute;p người d&ugrave;ng thoải m&aacute;i lưu trữ &acirc;m nhạc, h&igrave;nh ảnh, video hay tải c&aacute;c ứng dụng m&agrave; kh&ocirc;ng lo đầy bộ nhớ.</p>\r\n\r\n<h3><strong>iPhone X 64GB thiết kế đột ph&aacute; với m&agrave;n h&igrave;nh tai thỏ</strong></h3>\r\n\r\n<p>Sau 4 năm trung th&agrave;nh với một kiểu thiết kế, bắt đầu từ iPhone 6/ 6 Plus đến&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html\" target=\"_blank\">iPhone 8/8 Plus</a>, th&igrave; m&atilde;i đến iPhone X Apple mới c&oacute; một sự thay đổi ho&agrave;n to&agrave;n trong thiết kế của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-5.jpg\" style=\"height:466px; width:840px\" /></p>\r\n\r\n<p>Face ID hoạt động bằng c&aacute;ch sử dụng camera hồng ngoại, m&ocirc;̣t đ&egrave;n chi&ecirc;́u v&agrave; cảm bi&ecirc;́n ch&acirc;́m với hơn 30.000 điểm kh&ocirc;ng nh&igrave;n thấy được để x&acirc;y dựng v&agrave; đ&ocirc;́i chi&ecirc;́u t&acirc;́t cả đường n&eacute;t tr&ecirc;n khu&ocirc;n mặt của người d&ugrave;ng mang lại khả năng nhận diện khu&ocirc;n mặt cực k&igrave; chuẩn x&aacute;c. D&ugrave; người d&ugrave;ng c&oacute; cạo đi r&acirc;u, thay đổi kiểu t&oacute;c th&igrave; Face ID cũng dễ d&agrave;ng nhận ra v&agrave; mở kh&oacute;a iPhone một c&aacute;ch nhanh ch&oacute;ng.</p>\r\n\r\n<h3><strong>Vi xử l&yacute;&nbsp;<a href=\"https://cellphones.com.vn/sforum/chipset-apple-a11-bionic-tren-iphone-8-va-iphone-x-danh-bai-tat-ca-cac-thiet-bi-android-voi-diem-geekbench-cao-ngat-nguong\" target=\"_blank\">Apple A11 Bionic</a>&nbsp;đem lại những trải nghiệm d&ugrave;ng tuyệt vời</strong></h3>\r\n\r\n<p>Hiệu năng l&agrave; điều chưa bao giờ phải b&agrave;n c&atilde;i với c&aacute;c sản phẩm từ Apple v&agrave;&nbsp;<em>iPhone X 64Gb</em>&nbsp;cũng kh&ocirc;ng ngoại lệ.&nbsp;<strong>iPhone X 64GB</strong>&nbsp;được trang bị chip xử l&yacute; A11 Bionic s&aacute;u l&otilde;i (Hexa core) 64 bit đem lại tốc độ nhanh hơn 25% so với chip A10, tiết kiệm năng lượng l&ecirc;n tới 70%.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-6.jpg\" style=\"height:466px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;&nbsp;<a href=\"https://www.notebookcheck.net/Apple-A11-Bionic-GPU-GPU-Benchmarks-and-Specs.250994.0.html\" target=\"_blank\">chip xử l&yacute; đồ họa GPU M11</a>&nbsp;cũng gi&uacute;p cải thiện tốc độ l&ecirc;n khoảng 30% so với GPU cũ. Nhờ vậy, người d&ugrave;ng c&oacute; thể lướt game nhanh v&agrave; mượt hơn.</p>\r\n\r\n<h3><strong>Mua iPhone X 64GB ch&iacute;nh h&atilde;ng VN/A gi&aacute; tốt tại CellphoneS</strong></h3>\r\n\r\n<p>Smartphone&nbsp;<em><strong>iPhone X 64GB ch&iacute;nh h&atilde;ng</strong></em>&nbsp;l&agrave; một flagship rất đ&aacute;ng để trải nghiệm. Hiện sản phẩm đang được b&aacute;n ch&iacute;nh h&atilde;ng tại hệ thống cửa h&agrave;ng của CellphoneS,nếu bạn quan t&acirc;m đến sản phẩm n&agrave;y th&igrave; h&atilde;y đến c&aacute;c hệ thống cửa h&agrave;ng&nbsp;<a href=\"https://cellphones.com.vn/\" target=\"_blank\">CellphoneS&nbsp;</a>để được trải nghiệm tận tay. Ngo&agrave;i ra, khi mua iPhone X 64GB ch&iacute;nh h&atilde;ng kh&aacute;ch h&agrave;ng sẽ được hưởng nhiều ch&iacute;nh s&aacute;ch ưu đ&atilde;i mua h&agrave;ng trả g&oacute;p với thẻ t&iacute;n dụng, bảo h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng, 1 đổi 1 trong 30 ng&agrave;y, miễn ph&iacute; giao h&agrave;ng, thu tiền tại nh&agrave;.</p>\r\n', 2, 190, 20, 0, 21900000, 21900000, '2019-06-03 22:04:43', '1', '2019-06-27 16:57:33', '1', 1, 1),
(8, 1, 'iPhone Xs Max 64GB  Rose gold', 'iphone-xs-max-64gb-rose-gold', '636748771945393060_iPhone-Xs-Max-gold.jpg', 'eb94d71b8618424db4dafbb58b39ee25.jpg#8161dd6861975d560bc1d272ed332243.jpg#a1505c545351e44c877c2edf96ebecbf.jpg', 'iPhone Xs Max 64GB Rose gold (Vàng hồng) là chiếc iPhone có màn hình lớn nhất từ trước đến nay, mang đến những trải nghiệm tuyệt vời về màn hình và thời lượng pin.', '<h2><strong>M&agrave;n h&igrave;nh lớn 6,5 inch chuẩn Super Retina si&ecirc;u sắc n&eacute;t</strong></h2>\r\n\r\n<p><strong>iPhone Xs Max 64GB</strong>&nbsp;c&oacute; m&agrave;n h&igrave;nh vượt trội so với mọi thế hệ iPhone trước đ&acirc;y khi lớn tới 6,5 inch, được l&agrave;m từ tấm nền OLED, hỗ trợ hiển thị HDR. HDR mang đến m&agrave;u sắc ch&iacute;nh x&aacute;c, m&agrave;u đen c&oacute; chiều s&acirc;u, độ s&aacute;ng v&agrave; độ tương phản tuyệt vời. Bạn sẽ được tận hưởng một m&agrave;n h&igrave;nh cực lớn, độ ph&acirc;n giải si&ecirc;u cao 2688 x 1242 pixels cho trải nghiệm xem đ&aacute;ng kinh ngạc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-xs-max-3.jpg\" style=\"height:455px; width:907px\" /></p>\r\n\r\n<p>Nếu như bạn lo lắng m&agrave;n h&igrave;nh lớn sẽ khiến cho&nbsp;<strong>iPhone Xs Max 64GB&nbsp;</strong>kh&oacute; cầm nắm tr&ecirc;n tay th&igrave; h&atilde;y qu&ecirc;n ngay nỗi lo đ&oacute;, v&igrave; viền m&agrave;n h&igrave;nh tr&agrave;n 4 cạnh gi&uacute;p cho iPhone Xs Max thậm ch&iacute; c&ograve;n nhỏ gọn hơn iPhone 8 Plus. Ch&uacute;ng ta c&oacute; một chiếc m&aacute;y m&agrave;n h&igrave;nh lớn hơn rất nhiều, nhưng vẫn đủ gọn g&agrave;ng để dễ d&agrave;ng cầm nắm v&agrave; thao t&aacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-xs-max-2.JPG\" style=\"height:654px; width:981px\" /></p>\r\n\r\n<h2><strong>Sự kết hợp giữa k&iacute;nh v&agrave; th&eacute;p, sang trọng nhưng kh&ocirc;ng k&eacute;m phần bền vững</strong></h2>\r\n\r\n<p><strong>iPhone Xs Max 64GB</strong>&nbsp;được ho&agrave;n thiện từ những vật liệu đặc biệt, đ&oacute; l&agrave; viền th&eacute;p kh&ocirc;ng gỉ s&aacute;ng b&oacute;ng v&agrave; mặt k&iacute;nh bền nhất trong thế giới smartphone. Kỹ thuật gia c&ocirc;ng ch&iacute;nh x&aacute;c ho&agrave;n hảo của Apple mang đến chiếc điện thoại cứng c&aacute;p, thời trang, vừa vặn trong l&ograve;ng b&agrave;n tay bạn. Ba m&agrave;u sắc thời thượng X&aacute;m kh&ocirc;ng gian, Bạc v&agrave; V&agrave;ng cho những lựa chọn c&aacute; t&iacute;nh. Đặc biệt, hai phi&ecirc;n bản m&agrave;u V&agrave;ng v&agrave; X&aacute;m được sơn bằng qu&aacute; tr&igrave;nh xử l&yacute; m&agrave;u PVD, tạo hiệu ứng &aacute;nh s&aacute;ng qua lớp k&iacute;nh rất đẹp mắt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xs-3.jpg\" style=\"height:700px; width:1050px\" /></p>\r\n\r\n<h2><strong>Face ID thế hệ mới, mật khẩu ch&iacute;nh l&agrave; khu&ocirc;n mặt của bạn</strong></h2>\r\n\r\n<p>Face ID tr&ecirc;n&nbsp;<strong>iPhone Xs Max 64GB</strong>&nbsp;khiến cho việc bảo mật đơn giản v&agrave; an to&agrave;n hơn. Bạn c&oacute; thể mở kh&oacute;a, đăng nhập, thanh to&aacute;n nhanh ch&oacute;ng th&ocirc;ng qua nhận diện khu&ocirc;n mặt. Ngay khi đưa m&aacute;y l&ecirc;n, hệ thống camera TrueDepth sẽ nhận diện tới 30.000 điểm tr&ecirc;n khu&ocirc;n mặt của bạn v&agrave; mở kh&oacute;a ngay lập tức. Đồng thời, hệ thống n&agrave;y cũng sẽ ghi nhớ v&agrave; học hỏi th&oacute;i quen của bạn để sau n&agrave;y d&ugrave; c&oacute; đội mũ hay đeo k&iacute;nh th&igrave; Face ID vẫn nhận diện nhanh ch&oacute;ng đầy ch&iacute;nh x&aacute;c. Face ID của iPhone Xs Max ch&iacute;nh l&agrave; phương thức bảo mật an to&agrave;n nhất tr&ecirc;n smartphone từ trước đến nay.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xs-4.jpg\" style=\"height:812px; width:1217px\" /></p>\r\n', 2, 160, 30, 0, 28900000, 28900000, '2019-06-03 22:08:30', '1', '2019-06-27 16:55:46', '1', 1, 1),
(9, 7, 'Huawei Mate 20 Pro (Xanh dương)', 'huawei-mate-20-pro-xanh-duong', '636753320259321737_huawei-mate20-pro-xanhla-1.jpg', 'cf69d7775e92df0125cf38b8dc38e697.jpg', 'Huawei Mate 20 Pro chính hãng - Thông tin giá bán, cấu hình chi tiết, quà tặng khủng', '<p>Huawei đang dần chứng minh với thế giới rằng họ l&agrave; c&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n sản xuất smartphone chất lượng cao nắm trong tay gần 10% thị phần smartphone to&agrave;n thế giới.&nbsp;Điện thoại&nbsp;<strong>Huawei Mate 20 Pro</strong>&nbsp;tiếp tục được&nbsp;<a href=\"https://cellphones.com.vn/mobile/huawei.html\" target=\"_blank\">Huawei</a>&nbsp;cho ra đời nhằm củng cố điều đ&oacute;.</p>\r\n\r\n<h2>Thiết kế Huawei Mate 20 Pro đẳng cấp</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-1_1.png\" style=\"height:600px; width:640px\" /></p>\r\n\r\n<p><strong>Huawei Mate 20 Pro</strong>&nbsp;v&agrave;&nbsp;<em><a href=\"https://cellphones.com.vn/huawei-mate-20-chinh-hang.html\" target=\"_blank\">Huawei Mate 20</a></em>&nbsp;đều sở hữu thiết kế hai mặt k&iacute;nh b&oacute;ng bẩy tạo vẻ đẹp tinh tế v&agrave; bắt mắt với bất cứ ai nh&igrave;n v&agrave;o. B&ecirc;n cạnh đ&oacute;, kiểu d&aacute;ng vu&ocirc;ng vắn hiện đại v&agrave; những đường bo cong hợp l&yacute; để tạo cảm gi&aacute;c cầm nắm chắc chắn. Đặc biệt, với thiết kế cong 2 b&ecirc;n giống như tr&ecirc;n chiếc Mate RS Porsche Design hay giống c&aacute;c thiết bị Galaxy d&ograve;ng S mới đến từ Samsung gi&uacute;p cho m&aacute;y dễ d&agrave;ng nằm gọn trong tay người d&ugrave;ng.</p>\r\n\r\n<h2>M&agrave;n h&igrave;nh Mate 20 Pro tr&agrave;n viền sắc n&eacute;t</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-4_1.png\" style=\"height:600px; width:640px\" /></p>\r\n\r\n<p><strong>Mate 20 Pro</strong>&nbsp;sở hữu m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn 6.39 inches c&ugrave;ng độ ph&acirc;n giải&nbsp;2K+ 3120x1440 cho khả năng hiển thị ngo&agrave;i trời v&agrave; g&oacute;c nh&igrave;n cực tốt. B&ecirc;n cạnh đ&oacute;, c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;OLED đem lại h&igrave;nh ảnh v&agrave; video được t&aacute;i tạo một c&aacute;ch ch&acirc;n thực, sắc n&eacute;t với độ s&aacute;ng, độ tương phản cao ở từng chi tiết, thỏa m&atilde;n nhu cầu giải tr&iacute; của người d&ugrave;ng.</p>\r\n\r\n<h2>Cấu h&igrave;nh Huawei Mate 20 Pro ch&iacute;nh h&atilde;ng mạnh mẽ</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-6.png\" style=\"height:453px; width:640px\" /></p>\r\n\r\n<p><strong>Huawei Mate 20 Pro</strong>&nbsp;<strong>ch&iacute;nh h&atilde;ng</strong>&nbsp;được trang bị chip mới l&agrave; Kirin 980 do ch&iacute;nh Huawei tự sản xuất tr&ecirc;n tiến tr&igrave;nh 7nm c&oacute; NPU d&agrave;nh ri&ecirc;ng cho tr&iacute; th&ocirc;ng minh nh&acirc;n tạo đem lại khả năng xử l&yacute; t&aacute;c vụ năng v&ocirc; c&ugrave;ng mượt m&agrave; v&agrave; ổn định.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, RAM 6 GB thoải m&aacute;i cho bạn c&ugrave;ng bộ nhớ trong 128GB gi&uacute;p bạn lưu trữ dữ liệu thỏa th&iacute;ch.&nbsp;<strong>Mate 20 Pro</strong>&nbsp;được chạy tr&ecirc;n nền hệ điều h&agrave;nh Android 9.</p>\r\n\r\n<h2>Camera Huawei Mate 20 Pro ch&iacute;nh h&atilde;ng bắt trọn từng khoảnh khắc</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-3_1.png\" style=\"height:600px; width:640px\" /></p>\r\n\r\n<p><strong>Mate 20 Pro</strong>&nbsp;Ch&iacute;nh h&atilde;ng được trang bị ba camera trang bị AI bao gồm camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 40MP v&agrave; hai camera phụ c&oacute; độ ph&acirc;n giải 20MP đơn sắc + 8MP tele hỗ trợ c&ocirc;ng nghệ AI, nhận dạng được nhiều bối cảnh kh&aacute;c nhau như phong cảnh, đồ ăn... gi&uacute;p cho camera c&oacute; thể bắt được chủ thể khu&ocirc;n h&igrave;nh v&agrave; l&agrave;m mờ hậu cảnh một c&aacute;ch ch&iacute;nh x&aacute;c. C&ograve;n camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải l&ecirc;n đến 24MP gi&uacute;p người d&ugrave;ng c&oacute; những bức ảnh tự sướng ảo diệu, tự tin chia sẻ cho bạn b&egrave;.</p>\r\n\r\n<h2>Thời lượng pin Mate 20 Pro ch&iacute;nh h&atilde;ng ấn tượng</h2>\r\n\r\n<p><strong>Huawei Mate 20 Pro</strong>&nbsp;ch&iacute;nh h&atilde;ng sở hữu pin với dung lượng 4.200 mAh, con chip tiết kiệm pin cho thời gian sử dụng l&agrave; dư dả trong một ng&agrave;y. Ngo&agrave;i ra,&nbsp;<strong>Mate 20 Pro&nbsp;</strong>c&ograve;n được hỗ trợ c&ocirc;ng nghệ sạc nhanh cho ph&eacute;p điện thoại tăng 50% tốc độ chỉ trong 25 ph&uacute;t gi&uacute;p cho người d&ugrave;ng mau ch&oacute;ng sử dụng m&aacute;y khi cần thiết. Ngo&agrave;i ra, Huawei Mate 20 Pro c&ograve;n hỗ trợ sạc ngược cho c&aacute;c thiết bị được trang bị c&ocirc;ng nghệ NFC.</p>\r\n\r\n<p>Mua&nbsp;<a href=\"https://cellphones.com.vn/huawei-mate-20-pro-chinh-hang.html\" target=\"_blank\"><em>Huawei Mate 20 Pro Ch&iacute;nh h&atilde;ng gi&aacute; bao nhi&ecirc;u</em></a>, chế độ bảo h&agrave;nh như thế n&agrave;o? H&atilde;y đến với CellphoneS, hệ thống b&aacute;n lẻ điện thoại tr&ecirc;n to&agrave;n quốc hiện sẽ cung cấp cho kh&aacute;ch h&agrave;ng sản phẩm Huawei&nbsp;<strong><em>Mate 20 Pro</em></strong>&nbsp;ch&iacute;nh h&atilde;ng trong thời gian sớm nhất khi được nh&agrave; sản xuất ra mắt c&ugrave;ng với việc b&aacute;n mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn, chế độ hậu m&atilde;i v&ocirc; c&ugrave;ng tốt. Đối với c&aacute;c kh&aacute;ch h&agrave;ng ở xa c&oacute; nhu cầu mua sản phẩm c&oacute; thể tham khảo qua dịch vụ mua h&agrave;ng v&agrave; thanh to&aacute;n tận nơi miễn ph&iacute; của CellphoneS. Đặc biệt, đối với những sản phẩm mới ra mắt, kh&aacute;ch h&agrave;ng c&oacute; thể đặt cọc online để ưu ti&ecirc;n nhận m&aacute;y v&agrave; sở hữu nhiều phần qu&agrave; hấp dẫn.</p>\r\n', 2, 220, 30, 10, 16990000, 15990000, '2019-06-03 22:14:17', '1', '2019-06-27 17:14:06', '1', 1, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(10, 7, 'Huawei P30 Xanh dương', 'huawei-p30-xanh-duong', '23f164c8a75a27464e75292caebde305.png', '80d45cc3bfdb292db80ed7802e27debf.jpg', 'Điện thoại Huawei P30 chính hãng – Chiếc điện thoại thông minh độc đáo nhất', '<p><em><strong><a href=\"https://cellphones.com.vn/mobile/huawei.html\" target=\"_blank\">Huawei</a></strong>&nbsp;vừa mới tr&igrave;nh l&agrave;ng chiếc smartphone cao cấp Huawei P30 c&ugrave;ng với&nbsp;<a href=\"https://cellphones.com.vn/huawei-p30-pro.html\" target=\"_blank\"><strong>P30 Pro</strong></a>&nbsp;v&agrave;&nbsp;<a href=\"https://cellphones.com.vn/huawei-p30-lite.html\" target=\"_blank\"><strong>P30 Lite</strong></a>. Được thừa hưởng những thiết kế của Huawei P20, hơn nữa thiết bị cũng được cải tiến mạnh mẽ về camera cũng như hiệu năng. Huawei P30 hứa hẹn sẽ l&agrave; đối thủ đ&aacute;ng gờm trong ph&acirc;n kh&uacute;c cao cấp v&agrave; mang lại cho người d&ugrave;ng những trải nghiệm tuyệt vời.</em></p>\r\n\r\n<h3>Thiết kế m&agrave;n h&igrave;nh Huawei P30 xứng đ&aacute;ng l&agrave; smartphone cao cấp</h3>\r\n\r\n<p>Điện thoại&nbsp;<strong>Huawei P30</strong>&nbsp;nổi bật với m&agrave;u &ldquo;Gradient&rdquo; vốn đ&atilde; được sử dụng tr&ecirc;n Huawei P20, được lấy cảm hứng từ xu hướng sử dụng bản m&agrave;u Gradients tr&ecirc;n c&aacute;c giao diện. Với lớp phủ quang học NCVM b&ecirc;n dưới mặt k&iacute;nh, kết hợp phản chiếu kh&uacute;c xạ &aacute;nh s&aacute;ng để tạo n&ecirc;n dải m&agrave;u tươi mới, gi&uacute;p n&oacute; c&oacute; thể đổi m&agrave;u từ m&agrave;u t&iacute;m sang xanh lục, sang xanh lam.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-p30-1.jpg\" style=\"height:559px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, mặt lưng k&iacute;nh cao cấp đi k&egrave;m với bộ khung kim loại cứng c&aacute;p ở th&acirc;n m&aacute;y gi&uacute;p bảo vệ Huawei P30 tr&aacute;nh khỏi những t&aacute;c động vật l&yacute; b&ecirc;n ngo&agrave;i. M&aacute;y d&ugrave;ng m&agrave;n h&igrave;nh khuyết đỉnh nhưng được l&agrave;m nhỏ gọn hơn v&agrave; c&oacute; h&igrave;nh giọt nước gi&uacute;p cho m&aacute;y c&oacute; c&aacute;i nh&igrave;n tổng thể tinh tế hơn phi&ecirc;n bản trước.</p>\r\n\r\n<p>Về m&agrave;n h&igrave;nh,&nbsp;<strong>điện thoại</strong>&nbsp;<strong>Huawei P30</strong>&nbsp;được trang bị m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn 6 inch nhưng do được tối ưu phần viền n&ecirc;n tổng thể m&aacute;y vẫn rất vừa vặn trong l&ograve;ng b&agrave;n tay. Hơn nữa, phần nội dung được tr&agrave;n ra s&aacute;t c&aacute;c m&eacute;p cạnh sẽ n&acirc;ng cao việc trải nghiệm giải tr&iacute; như xem phim hay chơi game. Ngo&agrave;i ra, độ ph&acirc;n giải Full HD+ (1080 x 2340 Pixels) kết hợp với c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.trustedreviews.com/news/what-is-oled-3285263\" target=\"_blank\">OLED</a>&nbsp;cho chất lượng hiển thị h&igrave;nh ảnh sắc n&eacute;t với m&agrave;u sắc rực rỡ, độ tương phản cao.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-p30-2.jpg\" style=\"height:531px; width:840px\" /></p>\r\n\r\n<p>Điểm mạnh của m&agrave;n h&igrave;nh OLED l&agrave; khả năng thể hiện những m&agrave;u sắc rực rỡ, bắt mắt v&agrave; trung thực, m&agrave;u đen gần như l&agrave; tuyệt đối. Ngo&agrave;i ra, g&oacute;c nh&igrave;n si&ecirc;u rộng, c&oacute; thể đạt xấp xỉ l&ecirc;n đến 180 độ, người d&ugrave;ng c&oacute; thể tận hưởng trọn vẹn chất lượng h&igrave;nh ảnh ngay cả khi kh&ocirc;ng nh&igrave;n trực diện. Điểm yếu duy nhất l&agrave; ti&ecirc;u tốn nhiều năng lượng nhưng do khả năng tối ưu về chip, hệ điều h&agrave;nh n&ecirc;n Huawei P30 cũng sẽ cho thời gian sử dụng ấn tượng.</p>\r\n\r\n<h3>Chụp ảnh chuy&ecirc;n nghiệp với ba camera sau tr&ecirc;n Huawei P30</h3>\r\n\r\n<p><em>Huawei P30</em>&nbsp;sở hữu ba camera&nbsp;<a href=\"http://en.leica-camera.com/\" target=\"_blank\">Leica</a>&nbsp;quen thuộc ở mặt sau, bao gồm camera ch&iacute;nh c&oacute; độ ph&acirc;n giải cực khủng 40MP c&oacute; hỗ trợ zoom quang học 5x, camera phụ lần lượt l&agrave; 20MP v&agrave; 13MP trợ chống rung quang học để nội suy h&igrave;nh ảnh v&agrave; hỗ trợ chụp trắng đen. Huawei P30 chắc chắn sẽ kh&ocirc;ng l&agrave;m cho người d&ugrave;ng thất vọng với những bức ảnh ưng &yacute;.</p>\r\n\r\n<p>C&ograve;n camera trước của cũng được h&atilde;ng đặc biệt chăm ch&uacute;t khi trang bị độ ph&acirc;n giải 24MP t&iacute;ch hợp c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo AI c&ugrave;ng đ&egrave;n LED trợ s&aacute;ng, hỗ trợ chế độ l&agrave;m đẹp sẽ cho người d&ugrave;ng những bức ảnh selfie đẹp n</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-p30-3.jpg\" style=\"height:423px; width:840px\" /></p>\r\n\r\n<p>Huawei P30 đ&atilde; được bỏ đi n&uacute;t home v&agrave; thay v&agrave;o đ&oacute; chỉ c&ograve;n bảo mật nhận diện khu&ocirc;n mặt Face Unlock. C&ocirc;ng nghệ n&agrave;y hoạt động với cơ chế kết hợp camera hồng ngoại v&agrave; laser ph&aacute;t s&aacute;ng bề mặt khoang dọc (<a href=\"https://en.wikipedia.org/wiki/Vertical-cavity_surface-emitting_laser\" target=\"_blank\">VCSEL</a>). Đồng thời, t&iacute;nh năng n&agrave;y hoạt động hiệu quả, thậm ch&iacute; tốc độ mở kh&oacute;a của m&aacute;y c&ograve;n nhanh hơn cả iPhone X.</p>\r\n\r\n<p>Với dung lượng pin cao 4.300 mAh mang lại thời lượng sử dụng rất tốt, người d&ugrave;ng thoải m&aacute;i sử dụng m&aacute;y trong 2 ng&agrave;y. Hơn nữa, m&aacute;y cũng hỗ trợ t&iacute;nh năng sạc si&ecirc;u nhanh Huawei Super Charge gi&uacute;p tiết kiệm 30% thời gian sạc nhưng vẫn đảm bảo an to&agrave;n cho người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-p30-4.jpg\" style=\"height:561px; width:840px\" /></p>\r\n', 2, 310, 41, 0, 16900000, 16900000, '2019-06-03 22:18:49', '1', '2019-06-27 17:15:05', '1', 1, 1),
(11, 10, 'Cáp AUKEY 3 trong 1 (Lightning, Micro, USB-C) CB-BAL5 1.2m Chuẩn MFI', 'cap-aukey-3-trong-1-lightning-micro-usb-c-cb-bal5-1-2m-chuan-mfi', '9d67ba4f20f38ec6a2232ec0fca5f9e0.jpg', 'a505b96c64649c2414eb8a31b2829ae0.jpg#64ee9342e51da2b72877a7c1a253e796.jpg', 'Cáp AUKEY 3 trong 1 (Lightning, Micro, USB-C) CB-BAL5 1.2m Chuẩn MFI', '', 2, 605, 27, 0, 340000, 340000, '2019-06-03 22:21:22', '1', '2019-06-03 22:21:22', '1', 1, 1),
(12, 8, 'Xiaomi Mi 8 64GB Đen', 'xiaomi-mi-8-64gb-den', '74ca778d59300c8f71236c436fa6dd9e.jpg', 'c7a3137f57a2855ef38d9d023d6a1042.jpg#a0a18f7b513c1519f364b69f327918ea.png', 'Điện thoại Xiaomi Mi 8 64GB – Smartphone giá rẻ cấu hình mạnh đáng mua nhất hiện nay', '<p><em><strong>(*) Điện thoại Xiaomi ch&iacute;nh h&atilde;ng, c&oacute; sẵn tiếng Việt, đầy đủ ứng dụng của Google. Bạn c&oacute; thể sử dụng ngay b&igrave;nh thường. Kh&aacute;c với c&aacute;c m&aacute;y h&agrave;ng x&aacute;ch tay: kh&ocirc;ng c&oacute; sẵn rom tiếng Việt, chặn c&aacute;c ứng dụng của Google</strong></em></p>\r\n\r\n<p><em>Những năm gần đ&acirc;y&nbsp;<a href=\"https://cellphones.com.vn/mobile/xiaomi.html\" target=\"_blank\">Xiaomi</a>&nbsp;đang c&oacute; những bước tiến mạnh mẽ trở th&agrave;nh một trọng những nh&agrave; sản xuất smartphone lớn nhất thế giới. Những chiếc điện thoại Xiaomi thường c&oacute; thiết kế đẹp, cấu h&igrave;nh mạnh nhưng lại c&oacute; gi&aacute; cả rẻ hơn so với c&aacute;c h&agrave;ng đ&oacute;. Điển h&igrave;nh trong đ&oacute; c&oacute; chiếc điện thoại&nbsp;<strong>Xiaomi Mi 8 64GB</strong>&nbsp;v&agrave; n&oacute; đang c&oacute; b&aacute;n với mức gi&aacute; kh&aacute; tốt tại CellphoneS.</em></p>\r\n\r\n<h3><strong>Xiaomi Mi 8 64GB c&oacute; m&agrave;n h&igrave;nh tr&agrave;n viền với thiết kế tai thỏ độc đ&aacute;o</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh Xiaomi c&oacute; thiết kế tr&agrave;n viền l&agrave; 6.21 inch với c&aacute;c cạnh b&ecirc;n đều rất mỏng gi&uacute;p tối đa hiển thị v&agrave; t&ocirc;n l&ecirc;n vẻ cao cấp của Xiaomi Mi 8. Độ ph&acirc;n giải m&agrave;n h&igrave;nh Xiaomi Mi 8 l&agrave; full HD+ (1080*2248 pixels) với mật độ điểm ảnh l&ecirc;n đến 402 ppi. V&igrave; thế Xiaomi Mi 8 cho chất lượng h&igrave;nh ảnh r&otilde; n&eacute;t đến từng chi tiết v&agrave; v&ocirc; c&ugrave;ng mềm mại cho sự trải nghiệm một c&aacute;ch ch&acirc;n thật nhất khi sử dụng.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-8-64-gb-2.jpg\" style=\"height:520px; width:840px\" /></p>\r\n\r\n<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.samsung.com/global/galaxy/what-is/amoled/\" target=\"_blank\">AMOLED&nbsp;</a>16 triệu&nbsp;m&agrave;u cao cấp kh&ocirc;ng những gi&uacute;p chất lượng h&igrave;nh ảnh hiển thị tốt hơn m&agrave; n&oacute; c&ograve;n c&oacute; độ bền cao v&agrave; c&acirc;n bằng m&agrave;u sắc tốt hơn so với c&aacute;c c&ocirc;ng nghệ m&agrave;n h&igrave;nh kh&aacute;c. Tuy bền nhưng AMOLED kh&ocirc;ng c&oacute; độ d&agrave;y cao gi&uacute;p c&aacute;c thao t&aacute;c vuốt tr&ecirc;n Xiaomi Mi 8 trở n&ecirc;n rất linh hoạt v&agrave; ch&acirc;n thật. Ngo&agrave;i ra, hai cạnh b&ecirc;n hai cạnh b&ecirc;n của m&aacute;y cũng được thiết kế mỏng v&agrave; v&aacute;t cong 2.5D cho cảm gi&aacute;c vuốt rất chạm dễ d&agrave;ng hơn.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ chiến mọi tựa game với&nbsp;<a href=\"https://cellphones.com.vn/sforum/snap-845-co-diem-benchmark-diem-do-hoa-cao-hon-han-iphone-x\" target=\"_blank\">Snapdragon 845</a></strong></h3>\r\n\r\n<p>Xiaomi Mi 8 chạy tr&ecirc;n nền tảng&nbsp;<a href=\"https://www.trustedreviews.com/news/android-8-1-oreo-features-release-date-download-changes-phones-3317301\" target=\"_blank\">Android 8.1 (Oreo)</a>&nbsp;sở&nbsp;hữu một trong những con chip mạnh nhất hiện nay Snapdragon 845. V&igrave; thế c&aacute;c thao t&aacute;c hằng ng&agrave;y như lướt web, facebook, youtube,&hellip; đều rất mượt m&agrave;. Kh&ocirc;ng những thế Xiaomi Mi 8 c&ograve;n c&oacute; thể chiến mọi tựa game 3D hiện nay một c&aacute;ch dễ d&agrave;ng nhưng ở một số game vẫn chưa để được chế độ max setting v&igrave; sự tối ưu h&oacute;a ứng dụng tr&ecirc;n nền tảng&nbsp;<a href=\"https://cellphones.com.vn/sforum/android-phan-mem-doc-hai\" target=\"_blank\">Android</a>&nbsp;vẫn chưa tốt.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-64gb-3.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, với RAM 6GB cũng gi&uacute;p đ&atilde; nhiệm m&aacute;y chạy một c&aacute;ch mượt m&agrave;, &iacute;t khi bị reload. Sự chuyển qua chuyển lại giữa c&aacute;i ứng dụng dường như kh&ocirc;ng c&oacute; độ trễ. Bộ nhớ trong 64GB gi&uacute;p mọi lưu trữ tr&ecirc;n Xiaomi Mi 8 được tốt nhất hạn chế tr&agrave;n bộ nhớ.</p>\r\n\r\n<h3><strong>Camera 12MP sắc n&eacute;t với t&iacute;nh năng x&oacute;a ph&ocirc;ng tuyệt vời</strong></h3>\r\n\r\n<p>Kh&ocirc;ng những c&oacute; hiệu năng mạnh mẽ Xiaomi Mi 8 c&ograve;n c&oacute; camera ấn tượng. Cụm camera k&eacute;p được Xiaomi trang bị với camera ch&iacute;nh 12 MP (khẩu độ f/2.4) v&agrave; camera phụ 12MP (khẩu độ f/1.8). Với bộ đ&ocirc;i camera n&agrave;y chẳng những gi&uacute;p Xiaomi Mi 8<strong>&nbsp;</strong>cho ra những h&igrave;nh ảnh ch&acirc;n thật m&agrave; n&oacute; c&ograve;n l&agrave;m được nhiều điều hơn thế. Cụm camera k&eacute;p c&oacute; c&aacute;c t&iacute;nh năng như chụp x&oacute;a ph&ocirc;ng, tự động lấy n&eacute;t, zoom quang 2X, LED flash k&eacute;p. Đồng thời, camera n&agrave;y c&ograve;n được trang bị c&ocirc;ng nghệ chống rung quang học 4 trục thế hệ mới v&agrave; c&oacute; thể quay video 2160p@60fps. Nhờ vậy m&agrave; người d&ugrave;ng c&oacute; thể ghi lại những khoảnh khắc đẹp hằng ng&agrave;y của m&igrave;nh một c&aacute;ch dễ d&agrave;ng v&agrave; ch&acirc;n thật nhất.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-8-64-gb-4.jpg\" style=\"height:360px; width:840px\" /></p>\r\n\r\n<p>Camera trước Xiaomi Mi 8 c&oacute; độ ph&acirc;n giải 20MP (khẩu độ f/2.0) với khả năng quay video 1080P gi&uacute;p c&aacute;c cuộc gọi videocall cho h&igrave;nh ảnh sắc n&eacute;t dễ chịu với người đối diện. T&iacute;nh năng l&agrave;m đẹp cũng gi&uacute;p những tấm ảnh selfie trở n&ecirc;n mịn m&agrave;ng v&agrave; tươi tắn hơn.</p>\r\n\r\n<h3><strong>Xiaomi Mi 8 64GB - dung lượng bộ nhớ trong lớn cho khả năng lưu chữ tốt</strong></h3>\r\n\r\n<p>Ngo&agrave;i dung lượng 64GB Xiaomi Mi 8 c&ograve;n c&oacute; dung lượng 128GB. Nhưng hiện nay người d&ugrave;ng vẫn ưa chuộng phi&ecirc;n bản 64GB nhiều hơn. 64GB nghe c&oacute; vẻ nhỏ hơn rất nhiều so với phi&ecirc;n bản 128GB nhưng khả năng lưu trữ của n&oacute; vẫn v&ocirc; c&ugrave;ng lớn. V&agrave; phi&ecirc;n bản Xiaomi Mi 8 64GB cũng rẻ hơn so với phi&ecirc;n bản 128GB. Vậy với 64GB người d&ugrave;ng c&oacute; thể lưu trữ được những g&igrave;?</p>\r\n\r\n<p>- Khi mua m&aacute;y cần dung lượng cho c&agrave;i đặt hệ điều h&agrave;nh v&agrave; c&aacute;c ứng dụng bắt buộc kh&aacute;c như google, CH play,&hellip; n&ecirc;n dung lượng thực tế chỉ c&ograve;n khoảng 42GB trống</p>\r\n\r\n<p>- 42GB c&oacute; thể c&agrave;i hơn 30 game từ 1GB-2GB tr&ecirc;n CH play. Những game n&agrave;y đa phần đều l&agrave; game hay c&oacute; đồ họa tốt.</p>\r\n\r\n<p>- Người d&ugrave;ng c&oacute; c&oacute; thể lưu trữ h&agrave;ng ng&agrave;n b&agrave;i h&aacute;t v&agrave; ảnh chụp với dung lượng n&agrave;y.</p>\r\n\r\n<p>- C&oacute; thể quay video hơn 20 video full HD mỗi video 20&rsquo;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-8-64-gb-7.jpg\" style=\"height:562px; width:840px\" /></p>\r\n\r\n<p>Như vậy mới thấy với dung lượng 64GB m&agrave; người d&ugrave;ng đ&atilde; c&oacute; thể lưu trữ được dữ liệu khủng như thế n&agrave;o. Dĩ nhi&ecirc;n những điều tr&ecirc;n chỉ l&agrave; v&iacute; dụ tr&ecirc;n thực tế khi sử dụng điện thoại người d&ugrave;ng sẽ ph&acirc;n bổ dữ liệu của m&igrave;nh để lưu trữ nhạc, video, game, ảnh, c&aacute;c ứng dụng,.. nhưng vẫn c&ograve;n rất nhiều dung lượng trống b&ecirc;n trong điện thoại.&nbsp;</p>\r\n\r\n<p>Tuy vậy với những người thường xuy&ecirc;n sử dụng điện thoại để l&agrave;m việc quay video, lưu trữ h&igrave;nh ảnh rất nhiều th&igrave; cần c&acirc;n nhắc mua phi&ecirc;n bản Xiaomi Mi 8 128GB để cho khả năng lưu trữ được tốt hơn.</p>\r\n\r\n<h3><strong>Vi&ecirc;n pin 3400 mAh cho thời gian sử dụng tốt t&iacute;ch hợp&nbsp;<a href=\"https://www.qualcomm.com/solutions/mobile-computing/features/quick-charge\" target=\"_blank\">sạc nhanh Quick Charge</a>&nbsp;4.0</strong></h3>\r\n\r\n<p>Với vi&ecirc;n pin lớn 3400 mAh sẽ gi&uacute;p Xiaomi Mi 8 64GB trụ được đến cuối ng&agrave;y mới sạc cới c&aacute;c thao t&aacute;c hằng ng&agrave;y như nghe nhạc, chơi game, lướt web, face book,&hellip; Nhưng n&ecirc;u sử dụng li&ecirc;n tục dĩ nhi&ecirc;n vi&ecirc;n pin n&agrave;y sẽ kh&ocirc;ng đ&aacute;p ứng đủ nhu cầu người d&ugrave;ng bắt buộc phải sạc th&ecirc;m một lần nữa trong ng&agrave;y.&nbsp;</p>\r\n', 1, 220, 4, 0, 8490000, 8490000, '2019-06-03 22:27:35', '1', '2019-06-27 16:42:14', '1', 1, 1),
(13, 8, 'Xiaomi Mi 9 Tím', 'xiaomi-mi-9-tim', 'c2a795629d0748415fef66b954e5943a.jpg', '2675a4cd565d020d5bb2ef292b3a4d96.jpg#f016a6a0b3c651a1263b13f23e7c6aa5.jpg', 'Điện thoại Xiaomi Mi 9 chính hãng – smartphone cao cấp cấu hình “khủng long”', '<p><em><strong>(*) Điện thoại Xiaomi ch&iacute;nh h&atilde;ng, c&oacute; sẵn tiếng Việt, đầy đủ ứng dụng của Google. Bạn c&oacute; thể sử dụng ngay b&igrave;nh thường. Kh&aacute;c với c&aacute;c m&aacute;y h&agrave;ng x&aacute;ch tay: kh&ocirc;ng c&oacute; sẵn rom tiếng Việt, chặn c&aacute;c ứng dụng của Google</strong></em></p>\r\n\r\n<p>Sau sự ra mắt th&agrave;nh c&ocirc;ng của h&agrave;ng loạt smartphone cao cấp gi&aacute; rẻ, Xiaomi tiếp tục tr&igrave;nh l&agrave;ng chiếc điện thoại cao cấp mới với t&ecirc;n gọi l&agrave; Xiaomi Mi 9. L&agrave; thiết bị được trang bị vi xử l&yacute; Snapdragon 855 mạnh nhất của Qualcomm v&agrave; camera sở hữu độ ph&acirc;n giải cao 48MP. Xiaomi Mi 9 l&agrave; chiếc smartphone đầy hứa hẹn cho những ai th&iacute;ch chụp ảnh, với cấu h&igrave;nh camera rất cao.</p>\r\n\r\n<h3>Thiết kế, m&agrave;n h&igrave;nh Xiaomi Mi 9 cao cấp, hiện đại</h3>\r\n\r\n<p>Xiaomi Mi 9 mang thiết kế đặc trưng của phi&ecirc;n bản tiền nhiệm, mặt lưng k&iacute;nh được cường lực b&oacute;ng bẩy kết hợp với bộ khung nh&ocirc;m chắc chắn tạo n&ecirc;n vẻ đẹp h&agrave;i h&ograve;a khiến cho người d&ugrave;ng kh&ocirc;ng khỏi rời mắt. B&ecirc;n cạnh đ&oacute;, mặt lưng được v&aacute;t cong nhẹ v&agrave; bốn g&oacute;c được bo tr&ograve;n gi&uacute;p cho cảm gi&aacute;c cầm nắm được tốt hơn. Hơn nữa, m&aacute;y d&ugrave;ng m&agrave;n h&igrave;nh khuyết đỉnh nhưng được l&agrave;m nhỏ gọn hơn v&agrave; c&oacute; h&igrave;nh giọt nước gi&uacute;p cho m&aacute;y c&oacute; c&aacute;i nh&igrave;n tổng thể tinh tế hơn Mi 8.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-1.jpg\" style=\"height:488px; width:840px\" />Về m&agrave;n h&igrave;nh, Xiaomi Mi 9 được trang bị m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn 6.4 inch nhưng do được tối ưu phần viền n&ecirc;n tổng thể m&aacute;y vẫn rất vừa vặn trong l&ograve;ng b&agrave;n tay. Hơn nữa, phần nội dung được tr&agrave;n ra s&aacute;t m&eacute;p cạnh sẽ n&acirc;ng cao việc trải nghiệm giải tr&iacute; như xem phim hay chơi game. Ngo&agrave;i ra, độ ph&acirc;n giải Full HD+ tỉ lệ 19:9 gi&uacute;p hiển thị nhiều th&ocirc;ng tin hơn v&agrave; hỗ trợ tốt cho c&ocirc;ng việc lẫn giải tr&iacute; hơn so với 18:9 th&ocirc;ng thường</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-2.jpg\" style=\"height:472px; width:840px\" /></p>\r\n\r\n<p>Hơn nữa, c&ocirc;ng nghệ m&agrave;n h&igrave;nh AMOLED đem lại m&agrave;u sắc hiển thị rực rỡ, nịnh mắt, độ s&aacute;ng v&agrave; độ tương phản cao, m&agrave;u đen s&acirc;u v&agrave; đậm v&agrave; đặc biệt l&agrave; khả năng tiết kiệm hơn so với c&aacute;c c&ocirc;ng nghệ m&agrave;n h&igrave;nh kh&aacute;c qua đ&oacute; cho thời gian sử dụng vượt trội&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .</p>\r\n\r\n<h3>Chụp ảnh ấn tượng với ba camera của Xiaomi Mi 9</h3>\r\n\r\n<p>Xiaomi Mi 9 sở hữu đến ba camera ở mặt sau, bao gồm camera ch&iacute;nh c&oacute; độ ph&acirc;n giải cực khủng 48MP cảm biến Sony IMX 586, camera phụ lần lượt l&agrave; 13MP v&agrave; 16MP, cảm biến TOF 3D (Time-of-Flight c&oacute; khả năng cảm biến nhận diện chiều s&acirc;u, khoảng c&aacute;ch 3D). Xiaomi Mi 9 chắc chắn sẽ khiến cho người d&ugrave;ng h&agrave;i l&ograve;ng với những bức ảnh ưng &yacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-3.jpg\" style=\"height:556px; width:840px\" /></p>\r\n\r\n<p>C&ograve;n camera trước của cũng được h&atilde;ng đặc biệt chăm ch&uacute;t khi trang bị độ ph&acirc;n giải 24MP Sony IMX576 t&iacute;ch hợp c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo AI c&ugrave;ng đ&egrave;n LED trợ s&aacute;ng, mang lại những bức ảnh selfie r&otilde; n&eacute;t v&agrave; ch&acirc;n thực.</p>\r\n\r\n<h3>Hiệu năng mạnh mẽ v&agrave; t&iacute;nh năng bảo mật v&acirc;n tay dưới m&agrave;n h&igrave;nh tr&ecirc;n Xiaomi Mi 9</h3>\r\n\r\n<p>Xiaomi Mi 9 được t&iacute;ch hợp vi xử l&yacute; hiện đang đứng đầu về hiệu năng Snapdragon 855. Đ&acirc;y l&agrave; chip c&oacute; nhiều ưu điểm như: c&oacute; khả năng truy cập dữ liệu với tốc độ 5G, CPU nhanh hơn tới 45%, xử l&yacute; đồ họa nhanh hơn 20% so với người tiền nhiệm, Snapdragon 845, Quay video 4K chế độ Portrait, hỗ trợ VR tr&ecirc;n di động với độ ph&acirc;n giải 8K v&agrave; tốc độ 120 fps. Nh&igrave;n chung, Snapdragon 855 kh&ocirc;ng chỉ mang lại cho người d&ugrave;ng khả năng xử l&yacute; mạnh hơn m&agrave; c&ograve;n nhiều trải nghiệm tuyệt vời hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-4.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, RAM 6 GB cho người d&ugrave;ng khả năng chạy đa nhiệm mượt m&agrave;, đi c&ugrave;ng l&agrave; bộ nhớ trong 64 GB gi&uacute;p bạn lưu trữ dữ liệu c&aacute; nh&acirc;n thỏa th&iacute;ch. Xiaomi Mi 9 được chạy tr&ecirc;n hệ điều h&agrave;nh MIUI 10 dựa tr&ecirc;n nền tảng Android 9 Pie.</p>\r\n\r\n<p>Điểm nổi bật của chiếc m&aacute;y n&agrave;y l&agrave; cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh. Cảm biến n&agrave;y được đặt ngay dưới m&agrave;n h&igrave;nh AMOLED v&agrave; được hoạt động khi đầu ng&oacute;n tay người d&ugrave;ng chạm l&ecirc;n bề mặt m&agrave;n h&igrave;nh, cảm biến sẽ ph&aacute;t ra c&aacute;c tia s&aacute;ng đọc dấu v&acirc;n tay, sau đ&oacute; chuyển th&ocirc;ng tin về bộ cảm biến quang học. Sau đ&oacute;, bộ xử l&yacute; AI sẽ ph&acirc;n t&iacute;ch v&agrave; ghi nhận 300 điểm kh&aacute;c biệt tr&ecirc;n v&acirc;n tay, như khoảng c&aacute;ch giữa c&aacute;c đường v&acirc;n v&agrave; cuối c&ugrave;ng l&agrave; ghi nhận mở kh&oacute;a thiết bị.</p>\r\n\r\n<p>Xiaomi Mi 9 sở hữu vi&ecirc;n pin c&oacute; dung lượng 3.700 mAh, cung cấp đủ điện năng để người d&ugrave;ng sử dụng trong v&ograve;ng một ng&agrave;y với c&aacute;c nhu cầu cơ bản. Ngo&agrave;i ra, m&aacute;y c&ograve;n t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh sạc nhanh 32W để tiết kiệm thời gian sạc pin.</p>\r\n', 2, 260, 16, 0, 11990000, 11990000, '2019-06-03 22:30:05', '1', '2019-06-27 16:40:11', '1', 1, 1),
(14, 10, 'Pin dự phòng Xiaomi 20000 Gen 3 Type-C 2019', 'pin-du-phong-xiaomi-20000-gen-3-type-c-2019', 'b95189cc9d879cd58511ea653de13c56.jpg', '20ef52d914472f3d878625aad5ba4d86.jpg#01de8bfa781e18587fa0b4ccaf89cba6.jpg', 'Pin sạc dự phòng Xiaomi 20000 Gen 3 Type-C 2019 – Dung lượng pin khủng 20.000 mAh sử dụng được cho cả máy tính cá nhân', '<p><em>Ng&agrave;y nay những sản phẩm&nbsp;<a href=\"https://cellphones.com.vn/mobile.html\" target=\"_self\"><strong>smartphone</strong></a>&nbsp;hay m&aacute;y t&iacute;nh bảng được người d&ugrave;ng sử dụng rất nhiều để phụ phụ cho những nhu cầu giải tr&iacute;, l&agrave;m việc, đọc b&aacute;o, &hellip; Tuy vậy, những thiết bị n&agrave;y pin cũng kh&aacute; tr&acirc;u nhưng hầu hết ch&uacute;ng đều kh&ocirc;ng thể trụ được m&ocirc;t ng&agrave;y nếu như cường độ sử dụng cao. Ch&iacute;nh v&igrave; thế m&agrave; sạc dự ph&ograve;ng đang ng&agrave;y trở n&ecirc;n phổ biến đối với người d&ugrave;ng c&ocirc;ng nghệ hiện nay. Vừa qua th&igrave; Xiaomi đ&atilde; cho ra mắt<strong>&nbsp;pin sạc dự ph&ograve;ng Xiaomi 20000 Gen 3 Type-C 2019</strong>&nbsp;với dung lượng pin lớn, hỗ trợ sạc nhanh với c&ocirc;ng suất lớn v&agrave; mức gi&aacute; hợp l&yacute;.</em></p>\r\n\r\n<h3><strong>Thiết kế mạnh mẽ c&ugrave;ng chất liệu&nbsp;<a href=\"https://3dinsider.com/what-is-abs/\" target=\"_blank\">nhựa ABS</a>&nbsp;nhằm giảm thiểu trọng lượng tối đa</strong></h3>\r\n\r\n<p><strong>Pin dự ph&ograve;ng Xiaomi 20000 Gen 3 Type-C&nbsp;</strong>được nh&agrave; sản xuất Xiaomi kho&aacute;c l&ecirc;n m&igrave;nh một m&agrave;u đen huyền mạnh mẽ rất ph&ugrave; hợp với c&aacute;c thiết bị smartphone hiện nay. Đa số phụ kiện hiện nay sẽ sử dụng m&agrave;u đen v&igrave; điều n&agrave;y sẽ l&agrave;m nổi bật thiết bị th&ocirc;ng minh m&agrave; m&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/accessories/power_bank/pin-sac-du-phong-xiaomo-20000-gen3-typeC-den-hinh1.jpg.jpg\" style=\"height:620px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Được thiết kế th&agrave;nh h&igrave;nh chữ nhật v&agrave; được bo tr&ograve;n cả bốn cạnh hết sức tinh tế th&igrave; cảm gi&aacute;c đầu ti&ecirc;n m&agrave; ch&uacute;ng ta c&oacute; thể cảm nhận ở pin sạc dự ph&ograve;ng n&agrave;y l&agrave; cầm nắm rất chắc tay. Xiaomi sử dụng chất liệu nhựa ABS thay v&igrave; nh&ocirc;m như một số sản phẩm trước đ&oacute; nhằm giảm thiểu trọng lượng của vi&ecirc;n pin. Với việc trọng lượng được tối giản hết mức th&igrave; ch&uacute;ng ta ho&agrave;n to&agrave;n c&oacute; thể mang sạc dự ph&ograve;ng n&agrave;y đi bất cứ đ&acirc;u trong c&aacute;c hoạt động hằng ng&agrave;y của m&igrave;nh.</p>\r\n\r\n<h3><strong><a href=\"https://cellphones.com.vn/phu-kien/pin-du-phong.html\" target=\"_blank\">Pin dự ph&ograve;ng</a>&nbsp;với dung lượng khủng 20000 mAh v&agrave; khả năng sạc nhanh l&ecirc;n đến 45W</strong></h3>\r\n\r\n<p>Kh&aacute;c với những vi&ecirc;n sạc dự ph&ograve;ng hiện c&oacute; tr&ecirc;n thị trường chỉ c&oacute; dung lượng pin tầm 10000 mAh th&igrave;&nbsp;<strong>pin dự ph&ograve;ng Xiaomi 20000 Gen 3 Type-C</strong>&nbsp;sở hữu dung lượng lưu trữ l&ecirc;n đến 20000 mAh c&oacute; thể sạc nhiều lần li&ecirc;n tiếp cho thiết bị của bạn m&agrave; kh&ocirc;ng cần phải nạp năng lượng lại trong thời gian ngắn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/accessories/power_bank/pin-sac-du-phong-xiaomo-20000-gen3-typeC-den-hinh2.jpg.jpg\" style=\"height:620px; width:840px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, thiết bị c&ograve;n được trang bị 1&nbsp;cổng&nbsp;<a href=\"https://www.pcmag.com/article/332797/what-is-usb-c-an-explainer\" target=\"_blank\">USB-C</a>&nbsp;k&egrave;m theo 2 cổng USB-A. N&acirc;ng cấp lớn nhất của&nbsp;<em>Xiaomi 20000 Gen 3 Type-C</em>&nbsp;l&agrave; khả năng sạc nhanh l&ecirc;n đến 45W (cho cả đầu v&agrave;o v&agrave; đầu ra) th&ocirc;ng qua cổng USB-C.</p>\r\n\r\n<h3><strong>Sạc dự ph&ograve;ng đầu ti&ecirc;n đủ khả năng sạc cho laptop</strong></h3>\r\n\r\n<p>Nhờ c&ocirc;ng suất mạnh v&agrave; dung lượng rất lớn th&igrave;&nbsp;<strong>pin dự ph&ograve;ng Xiaomi 20000 Gen 3 Type-C</strong>&nbsp;l&agrave; sạc dự ph&ograve;ng đầu ti&ecirc;n của Xiaomi đủ sức để sạc được cho laptop. Để l&agrave;m được điều n&agrave;y, laptop sẽ cần phải c&oacute; cổng USB-C hỗ trợ&nbsp;<a href=\"https://www.androidauthority.com/usb-power-delivery-806266/\" target=\"_blank\">Power Delivery</a>(truyền tải điện).</p>\r\n', 1, 731, 110, 0, 790000, 790000, '2019-06-03 22:33:51', '1', '2019-06-23 17:54:59', '1', 1, 1),
(15, 6, 'Laptop Asus Vivobook 15 A512FA-EJ117T', 'laptop-asus-vivobook-15-a512fa-ej117t', 'd2c4ca51c189e719b725035e7586f871.jpg', '84c6f5c124046b93c3d736a42581046f.jpg#736f3a5a22b4bc0e0c3178e4b7ed81ba.jpg', 'Máy tính xách tay Asus A512FA-EJ117T  với thiết kế màn hình tràn viền tinh tế và công nghệ sạc nhanh tiện lợi', '<p><em>Chắc hẳn ai cũng mong muốn trang bị cho m&igrave;nh một chiếc&nbsp;<a href=\"https://cellphones.com.vn/laptop.html\" target=\"_blank\"><strong>laptop</strong></a>&nbsp;với thiết kế ấn tượng, c&aacute;c t&iacute;nh năng hiện đại đi k&egrave;m một gi&aacute; th&agrave;nh hợp l&iacute;. Vậy th&igrave; chiếc&nbsp;<strong>laptop Asus A512FA-EJ117T</strong>&nbsp;chắc chắn sẽ l&agrave; một lựa chọn v&ocirc; c&ugrave;ng ho&agrave;n hảo, chắc chắn sẽ khiến người d&ugrave;ng h&agrave;i l&ograve;ng.</em></p>\r\n\r\n<h3><strong>Thiết kế gọn nhẹ v&agrave; được trang bị hệ thống tản nhiệt hiện đại</strong></h3>\r\n\r\n<p>Asus A512FA-EJ117T mang tr&ecirc;n m&igrave;nh một sự trang nh&atilde; trong thiết kế, với trọng lượng 1.6kg v&agrave; k&iacute;ch thước 357.2 x 230.4 x 19.9 mm khiến chiếc&nbsp;<a href=\"https://cellphones.com.vn/laptop/asus.html\" target=\"_blank\"><strong>laptop Asus</strong></a>&nbsp;n&agrave;y v&ocirc; c&ugrave;ng gọn nhẹ, rất ph&ugrave; hợp với c&aacute;c đối tượng như học sinh, sinh vi&ecirc;n hay nh&acirc;n vi&ecirc;n văn ph&ograve;ng v&igrave; t&iacute;nh chất th&acirc;n thiện với nhu cầu di chuyển của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-a512fa-ej117t-core-i3-8145u-ba-1.jpg\" style=\"height:506px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c đường n&eacute;t của chiếc laptop n&agrave;y v&ocirc; c&ugrave;ng vu&ocirc;ng vức, c&aacute;c mặt phẳng được gia c&ocirc;ng trơn nhẵn v&ocirc; c&ugrave;ng tỉ mỉ. Đế của Asus A512FA-EJ117T được thiết kế n&acirc;ng cao hơn 2&ordm; so với mặt tiếp x&uacute;c, tạo điều kiện thuận tiện cho thao t&aacute;c của người d&ugrave;ng. Ngo&agrave;i ra, chiếc laptop n&agrave;y c&ograve;n được trang bị hệ thống tản hiệu v&ocirc; c&ugrave;ng hiệu quả.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh tr&agrave;n viền ấn tượng c&ugrave;ng c&ocirc;ng nghệ m&agrave;n h&igrave;nh Led backlit FHD</strong></h3>\r\n\r\n<p>Với Asus A512FA-EJ117T người d&ugrave;ng sẽ được trải nghiệm như đang sử dụng một m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; c&ugrave;ng ấn tượng. Tỉ lệ&nbsp;screen-to-body-ratio đạt được đến 88%, c&ugrave;ng k&iacute;ch thước m&agrave;n h&igrave;nh 15.6 inches. Với c&aacute;c con số n&agrave;y, bạn sẽ c&oacute; một kh&ocirc;ng gian hiển thị ho&agrave;n hảo.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-a512fa-ej117t-core-i3-8145u-ba-2.jpg\" style=\"height:428px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Song song đ&oacute;, với độ ph&acirc;n giải l&agrave; 1920 x 1080, Asus đ&atilde; th&ocirc;ng qua chiếc laptop n&agrave;y để mang đến cho người d&ugrave;ng chất lượng hiển thị h&igrave;nh ảnh sống động, m&agrave; kh&ocirc;ng hề khiến bạn bị l&oacute;a mắt khi theo d&otilde;i. C&ocirc;ng nghệ m&agrave;n h&igrave;nh Led backlit FHD với cấu tạo si&ecirc;u mỏng v&agrave; ti&ecirc;u thụ &iacute;t điện năng hơn cũng như khả năng t&aacute;i chế cao v&igrave; kh&ocirc;ng chứa c&aacute;c th&agrave;nh phần đạt mức nguy hiểm.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ chạy tr&ecirc;n phi&ecirc;n bản hệ điều h&agrave;nh&nbsp;<a href=\"https://cellphones.com.vn/sforum/windows-10-sap-co-them-theme-mau-trang-cuc-sang\" target=\"_blank\">Windows 10</a>&nbsp;c&ugrave;ng khả năng lưu trữ lớn</strong></h3>\r\n\r\n<p>Asus Vivobook 15 A512FA-EJ117T sở hữu CPU&nbsp;<a href=\"https://ark.intel.com/content/www/vn/vi/ark/products/149090/intel-core-i3-8145u-processor-4m-cache-up-to-3-90-ghz.html\" target=\"_blank\">Intel Core&nbsp;i3-8145U</a>&nbsp;2.1 GHz mang đến hiệu năng v&agrave; tốc độ xử l&iacute; v&ocirc; c&ugrave;ng nhanh nhạy, c&ugrave;ng khả năng tiết kiệm điện năng hiệu quả. Với dung lượng ram 4GB hỗ trợ đắc lực cho việc lưu trữ v&agrave; xử l&iacute; c&aacute;c t&aacute;c vụ một c&aacute;ch mượt m&agrave; nhất. Việc lưu trữ th&ocirc;ng tin, dữ liệu trở n&ecirc;n v&ocirc; c&ugrave;ng đơn giản v&agrave; thoải m&aacute;i với 1TB ổ cứng HDD. Nhờ đ&oacute; m&agrave; Asus Vivobook 15 th&aacute;ch thức c&aacute;c phần mềm đồ họa lẫn c&aacute;c loại game nặng nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-a512fa-ej117t-core-i3-8145u-ba-3.jpg\" style=\"height:426px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Touchpad của Asus A512FA-EJ117T rất nhạy lại v&ocirc; c&ugrave;ng dễ sử dụng, ngo&agrave;i ra c&ograve;n t&iacute;ch hợp nhận diện v&acirc;n tay tiện lợi, nhờ đ&oacute; m&agrave; khả năng bảo mật tốt hơn so với mật khẩu bằng b&agrave;n ph&iacute;m.</p>\r\n\r\n<h3><strong>Khả năng sạc nhanh c&ugrave;ng c&ocirc;ng nghệ bảo vệ pin&nbsp;<a href=\"https://www.asus.com/us/support/FAQ/1032726/\" target=\"_blank\">Battery Health Charging</a></strong></h3>\r\n\r\n<p>Sở hữu vi&ecirc;n&nbsp;<a href=\"https://electronics.howstuffworks.com/everyday-tech/lithium-ion-battery.htm\" target=\"_blank\">pin Li-ion</a>&nbsp;2 Cells 37 Whrs&nbsp;mang đến khả năng&nbsp;sử dụng gần như cả ng&agrave;y cho c&aacute;c hoạt động th&ocirc;ng thường. Ngo&agrave;i ra, khả năng sạc cực nhanh l&agrave; một trong những ưu điểm vượt trội của Asus A512FA-EJ117T, dung lượng pin sẽ đạt mức 60% trong chưa đầy 50 ph&uacute;t.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-a512fa-ej117t-core-i3-8145u-ba-4.jpg\" style=\"height:452px; width:840px\" /></p>\r\n', 2, 120, 6, 0, 11490000, 11490000, '2019-06-03 22:36:43', '1', '2019-06-23 17:54:37', '1', 1, 1),
(16, 11, 'Apple MacBook Pro 13 inch 128GB MPXQ2 Chính hãng', 'apple-macbook-pro-13-inch-128gb-mpxq2-chinh-hang', '441c401340a20e12eb44d159e8cbd72a.jpg', '2d6c253a47b945c830cf2ea731f995ed.jpg#305e036a276dfa0d1844cfc305aa26f0.jpg#d74c3c405b20ab5bdc354bfc2ed27ac4.jpg#220ab7ba8f2149a182a33b0789b938e9.jpg', 'Apple MacBook Pro 13 inch 128GB MPXQ2 (2017)', '<h3>Thiết kế v&agrave; ngoại h&igrave;nh Apple MacBook Pro 13 inch 128GB MPXQ2</h3>\r\n\r\n<p>Sở hữu thiết kế mỏng v&agrave; nhẹ với m&agrave;n h&igrave;nh LED-backlit IPS LCD, 2560 x 1600 pixels, 13.3 inches l&agrave;m cho h&igrave;nh ảnh hiển thị cực k&igrave; sắc n&eacute;t v&agrave; thực tế.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/macbook/apple-macbook-pro-13-inch-128gb-mpxq2-1.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&aacute;y được tạo n&ecirc;n từ kim loại nguy&ecirc;n khối, tuy nhi&ecirc;n ch&uacute;ng c&ograve;n mỏng v&agrave; nhẹ hơn rất nhiều so với phi&ecirc;n bản cũ với trọng lượng chỉ 1.37kg.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Hiệu suất cực khủng của Apple MacBook Pro 13 inch 128GB MPXQ2</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/macbook/apple-macbook-pro-13-inch-128gb-mpxq2-3.jpg\" style=\"height:427px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với phi&ecirc;n bản Apple MacBook Pro 13 inch 2017 n&agrave;y, người d&ugrave;ng đảm bảo h&agrave;i l&ograve;ng với tốc độ xử l&iacute; Intel Core i5 Dual-core 2.3 GHz, Turbo Boost l&ecirc;n đến 3.6 GHz, 64MB eDRAM, bộ RAM 8GB, bộ nhớ lưu trữ 128 GB PCIe, đồ họa Intel Iris Plus Graphics 640 xử l&iacute; đồ họa nhanh hơn 130% thực sự đ&atilde; chinh phục to&agrave;n bộ người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Apple MacBook Pro 13 inch 128GB MPXQ2 lưu lượng pin cực bền</h3>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/macbook/apple-macbook-pro-13-inch-128gb-mpxq2-4.jpg\" style=\"height:360px; width:640px\" /></p>\r\n', 2, 61, 4, 0, 29900000, 29900000, '2019-06-03 22:40:49', '1', '2019-06-23 17:54:42', '1', 1, 1),
(17, 11, 'Laptop Apple Macbook Air 2018 i5/8GB/128GB', 'laptop-apple-macbook-air-2018-i5-8gb-128gb', 'a7a0053cc6d2b90f2602dc1d9b77684b.jpg', '34e8488139757ace8573289800572ff2.jpg#925c910414f836910fd9afd05a2565cb.jpg#8f1d2034ef89ecc061070b06d1ca2deb.jpg', 'Macbook Air 2018 sở hữu vẻ ngoài sang trọng và mỏng nhẹ. Cấu hình đáp ứng đầy đủ nhu cầu sử dụng văn phòng, giải trí cùng thời lượng pin đủ để bạn sử dụng suốt cả ngày dài.', '<h3>Đ&aacute;p ứng tuyệt vời nhu cầu văn ph&ograve;ng</h3>\r\n\r\n<p>Dung lượng RAM 8 GB của Macbook Air 2018 cho ph&eacute;p bạn sử dụng c&ugrave;ng l&uacute;c nhiều ứng dụng, mở nhiều tab tr&igrave;nh duyệt m&agrave; kh&ocirc;ng bị đứng, giật.</p>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;<strong>Apple&nbsp;</strong>sở hữu ổ&nbsp;cứng SSD cho tốc độ khởi chạy c&aacute;c ứng dụng trong chớp mắt,&nbsp;dung lượng 128 GB l&agrave; đủ d&ugrave;ng với nhu cầu lưu trữ t&agrave;i liệu, h&igrave;nh ảnh, b&agrave;i thuyết tr&igrave;nh...</p>\r\n\r\n<p>Mẫu&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\">Macbook</a>&nbsp;2018 c&ograve;n cho ph&eacute;p bạn c&oacute; thể sử dụng mượt m&agrave; c&aacute;c ứng dụng thiết kế chuy&ecirc;n nghiệp như Photoshop, AI,...&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-cauhinhtgdd.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780\" target=\"_blank\">M&agrave;n h&igrave;nh Retina</a>&nbsp;độ ph&acirc;n giải cao v&agrave; sắc n&eacute;t&nbsp;</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh của Macbook Air 2018 l&agrave; điểm cải tiến nổi bật nhất so với thế hệ trước. Viền m&agrave;n h&igrave;nh mỏng hơn 50% c&ugrave;ng độ ph&acirc;n giải cao 2K Retina mang lại trải nghiệm h&igrave;nh ảnh sắc n&eacute;t, ch&acirc;n thực hơn, cho bạn y&ecirc;u hơn những g&igrave; bạn thấy.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-manhinhtgdd.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Đặc điểm nổi bật của Apple Macbook Air 2018 i5/8GB/128GB (MREE2SA/A)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/197305/Slider/vi-vn-apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-slider-thietke.jpg\" /></p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/laptop/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold\" target=\"_blank\">Macbook Air 2018</a>&nbsp;sở hữu vẻ ngo&agrave;i sang trọng v&agrave; mỏng nhẹ. Cấu h&igrave;nh đ&aacute;p ứng đầy đủ nhu cầu sử dụng văn ph&ograve;ng, giải tr&iacute; c&ugrave;ng thời lượng pin đủ để bạn sử dụng suốt cả ng&agrave;y d&agrave;i.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Đ&aacute;p ứng tuyệt vời nhu cầu văn ph&ograve;ng</h3>\r\n\r\n<p>Dung lượng RAM 8 GB của Macbook Air 2018 cho ph&eacute;p bạn sử dụng c&ugrave;ng l&uacute;c nhiều ứng dụng, mở nhiều tab tr&igrave;nh duyệt m&agrave; kh&ocirc;ng bị đứng, giật.</p>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;<strong>Apple&nbsp;</strong>sở hữu ổ&nbsp;cứng SSD cho tốc độ khởi chạy c&aacute;c ứng dụng trong chớp mắt,&nbsp;dung lượng 128 GB l&agrave; đủ d&ugrave;ng với nhu cầu lưu trữ t&agrave;i liệu, h&igrave;nh ảnh, b&agrave;i thuyết tr&igrave;nh...</p>\r\n\r\n<p>Mẫu&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\">Macbook</a>&nbsp;2018 c&ograve;n cho ph&eacute;p bạn c&oacute; thể sử dụng mượt m&agrave; c&aacute;c ứng dụng thiết kế chuy&ecirc;n nghiệp như Photoshop, AI,...&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-cauhinhtgdd.jpg\" onclick=\"return false;\"><img alt=\"Hiệu năng mạnh mẽ trên laptop nhỏ gọn Macbook Air MREE2SA/A (2018)\" src=\"https://cdn.tgdd.vn/Products/Images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-cauhinhtgdd.jpg\" /></a></p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780\" target=\"_blank\">M&agrave;n h&igrave;nh Retina</a>&nbsp;độ ph&acirc;n giải cao v&agrave; sắc n&eacute;t&nbsp;</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh của Macbook Air 2018 l&agrave; điểm cải tiến nổi bật nhất so với thế hệ trước. Viền m&agrave;n h&igrave;nh mỏng hơn 50% c&ugrave;ng độ ph&acirc;n giải cao 2K Retina mang lại trải nghiệm h&igrave;nh ảnh sắc n&eacute;t, ch&acirc;n thực hơn, cho bạn y&ecirc;u hơn những g&igrave; bạn thấy.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-manhinhtgdd.jpg\" onclick=\"return false;\"><img alt=\"Màn hình retina sắc nét trên laptop nhỏ gọn Macbook Air MREE2SA/A (2018)\" src=\"https://cdn.tgdd.vn/Products/Images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-manhinhtgdd.jpg\" /></a></p>\r\n\r\n<h3>Thiết kế sang trọng, độ mỏng ấn tượng</h3>\r\n\r\n<p>Macbook Air 2018 được l&agrave;m từ 100% l&agrave; nh&ocirc;m t&aacute;i chế. Đặc biệt, với c&acirc;n nặng chỉ 1,25kg v&agrave; mỏng 15,6mm gi&uacute;p bạn dễ d&agrave;ng mang theo mọi l&uacute;c, mọi nơi.</p>\r\n\r\n<h3>Pin d&ugrave;ng được cả ng&agrave;y</h3>\r\n\r\n<p>Thời lượng pin tr&ecirc;n Macbook Air 2018 l&ecirc;n đến 12 giờ trong điều kiện sử dụng b&igrave;nh thường. 7 - 8 giờ khi sử dụng hỗn hợp c&aacute;c t&aacute;c vụ Chrome, Photoshop, ứng dụng văn ph&ograve;ng&hellip; Thoải m&aacute;i cho một ng&agrave;y l&agrave;m việc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-thietke-1.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<h3>Cảm biến v&acirc;n tay, bảo mật cao&nbsp;</h3>\r\n\r\n<p>D&ograve;ng Macbook Air 2018 được cải biến với cảm biến v&acirc;n tay Touch ID t&iacute;ch hợp thẳng v&agrave;o n&uacute;t nguồn. Chip bảo mật ri&ecirc;ng Apple T2 nhận dạng ch&iacute;nh x&aacute;c v&agrave; gi&uacute;p mở kh&oacute;a nhanh ch&oacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-vantaytgdd.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<h3>T&iacute;ch hợp nhiều t&iacute;nh năng cao cấp từ Macbook Pro</h3>\r\n\r\n<p>Loa &acirc;m thanh nổi cung cấp &acirc;m trầm gấp đ&ocirc;i v&agrave; &acirc;m lượng lớn hơn 25 phần trăm so với thế hệ trước.&nbsp; &Acirc;m thanh nổi rộng sống động cho bạn đắm m&igrave;nh v&agrave;o c&aacute;c b&agrave;i h&aacute;t, bộ phim,...</p>\r\n\r\n<p>B&agrave;n di chuột&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/force-touch-trackpad-tren-macbook-la-gi-956432\" target=\"_blank\"><strong>cảm ứng lực Force Touch</strong></a>&nbsp;cho ph&eacute;p bạn tương t&aacute;c với m&aacute;y Mac của m&igrave;nh theo nhiều c&aacute;ch kh&aacute;c nhau. B&agrave;n ph&iacute;m Butterfly gi&uacute;p &iacute;t ph&aacute;t ra &acirc;m thanh khi g&otilde;, đ&egrave;n nền LED với cảm biến &aacute;nh s&aacute;ng cho bạn c&oacute; thể sử dụng Macbook trong điều kiện thiếu s&aacute;ng thoải m&aacute;i hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-content-banphimtgdd.jpg\" style=\"height:500px; width:800px\" /></p>\r\n', 2, 90, 8, 0, 39100000, 39100000, '2019-06-04 23:24:20', '1', '2019-06-23 17:54:33', '1', 1, 1),
(18, 6, 'Laptop Asus Zenbook 14 UX433FA-A6113T', 'laptop-asus-zenbook-14-ux433fa-a6113t', '057abb3c59a567ad0a730422fe2fe2a0.jpg', 'bfa43fbff54788626a7f5b876ad1e573.jpg#7b7b2921713608c27ec12d66c7973fd2.jpg#a64986a8622edd9744fe5eecd2878fb7.jpg#6da3e971273bdff3b680b42d12adb749.jpg', 'Máy tính xách tay Asus Zenbook 14 UX433FA-A6113T: Dòng laptop mỏng nhẹ và đầy mạnh mẽ', '<p><em><a href=\"https://cellphones.com.vn/laptop/asus.html\" target=\"_blank\"><strong>Laptop Asus</strong></a>&nbsp;Zenbook lu&ocirc;n được biết đến như một trong những d&ograve;ng laptop mỏng nhẹ v&agrave; đẹp v&agrave; cũng l&agrave; sự lựa chọn thường thấy ở giới doanh nh&acirc;n - nh&acirc;n vi&ecirc;n văn ph&ograve;ng. Với phi&ecirc;n bản&nbsp;<strong>Asus Zenbook UX433FA-A6113T</strong>. Asus tiếp tục cải tiến Zenbook 14 với nhiều n&acirc;ng cấp về m&agrave;n h&igrave;nh cũng như vi xử l&yacute;.</em></p>\r\n\r\n<h3><strong>Thiết kế si&ecirc;u mỏng, gọn nhẹ với độ d&agrave;y 16mm v&agrave; trọng lượng 1kg</strong></h3>\r\n\r\n<p>Khung m&aacute;y si&ecirc;u gọn nhẹ đ&atilde; l&agrave;m n&ecirc;n mẫu laptop 14-inch nhỏ gọn nhất từ trước đến nay, m&agrave; tr&ecirc;n thực tế chỉ c&oacute; k&iacute;ch thước xấp xỉ một tờ giấy A4 v&agrave; c&ograve;n l&agrave; một trong những chiếc m&aacute;y t&iacute;nh x&aacute;ch tay nhỏ nhất thế giới với độ d&agrave;y 16mm v&agrave; nặng 1.2kg.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Laptop-Asus-Zenbook-14-UX433FA-A6113T-1.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Lớp ho&agrave;n thiện v&acirc;n kim loại đồng t&acirc;m lấy cảm hứng từ Zen đặc trưng tr&ecirc;n nắp lưng c&ugrave;ng hai m&agrave;u sắc lựa chọn: xanh, bạc. Cả hai mẫu thiết kế n&agrave;y đều được nhấn mạnh bằng sự tương phản của panel viền m&agrave;u &agrave;ng hồng ph&iacute;a tr&ecirc;n b&agrave;n ph&iacute;m, l&agrave;m t&ocirc;n l&ecirc;n th&ecirc;m vẻ sang trọng.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh kh&ocirc;ng</strong><strong>&nbsp;viền&nbsp;</strong><a href=\"https://www.asus.com/support/FAQ/1038282/\" target=\"_blank\"><strong>NanoEdge</strong></a><strong>&nbsp;(1920x1080)</strong>&nbsp;<strong>thể hiện m&agrave;u sắc tối ưu</strong><strong>,&nbsp;</strong><strong>g&oacute;c nh&igrave;n rộng</strong></h3>\r\n\r\n<p>Asus Zenbook 14 UX433FA-A6113T đ&atilde; trang bị m&agrave;n h&igrave;nh độ ph&acirc;n giải cao (1920x1080), r&otilde; n&eacute;t v&agrave; trong trẻo gi&uacute;p cho từng h&igrave;nh ảnh đều trở n&ecirc;n tốt nhất với g&oacute;c nh&igrave;n rộng 178 , m&agrave;u sắc ch&iacute;nh x&aacute;c v&agrave; sống động.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Laptop-Asus-Zenbook-14-UX433FA-A6113T-2.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh n&agrave;y c&ograve;n hỗ trợ những c&ocirc;ng nghệ độc quyền của ASUS &ndash; trong đ&oacute; c&oacute;&nbsp;<a href=\"https://www.asus.com/vn/support/FAQ/1009986/\" target=\"_blank\">ASUS Splendid</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.asus.com/me-en/support/FAQ/1038464/\" target=\"_blank\">ASUS Tru2Life Video</a>&nbsp;&ndash;&nbsp;tinh chỉnh c&aacute;c th&ocirc;ng số m&agrave;n h&igrave;nh để đảm bảo độ thoải m&aacute;i tối đa cho mắt cũng như khả năng thể hiện m&agrave;u sắc tối ưu cho mọi loại nội dung.</p>\r\n\r\n<h3><strong>V</strong><strong>i xử l&yacute;&nbsp;<a href=\"https://ark.intel.com/content/www/vn/vi/ark/products/149088/intel-core-i5-8265u-processor-6m-cache-up-to-3-90-ghz.html\" target=\"_blank\">Intel&reg; Core&trade; i5-8265U</a>&nbsp;trải</strong><strong>&nbsp;nghiệm thoải m&aacute;i đa t&aacute;c vụ, khai ph&aacute; mọi dữ liệu</strong></h3>\r\n\r\n<p>ZenBook 14 được x&acirc;y dựng để mang đến sức mạnh kh&ocirc;ng giới hạn cho trải nghiệm m&aacute;y t&iacute;nh v&ocirc; c&ugrave;ng nhẹ nh&agrave;ng khi di chuyển. Trang bị bộ vi xử l&yacute; Intel&reg; Core&trade; i5-8265U Kabylake Refresh thế hệ thứ 8 mới nhất c&ugrave;ng với tốc độ khởi động ứng dụng si&ecirc;u tốc c&oacute; được từ 256GB SSD NVMe, ZenBook 14 sẽ kh&ocirc;ng bao giờ để bạn phải chờ đợi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Laptop-Asus-Zenbook-14-UX433FA-A6113T-3.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D&ugrave; bạn đang soạn lập t&agrave;i liệu phức tạp, khai ph&aacute; dữ liệu, chỉnh sửa ảnh, bi&ecirc;n tập video hay chỉ đơn giản l&agrave; giải tr&iacute; với một v&aacute;n game, Asus Zenbook 14 UX433FA-A6113T đều cho ph&eacute;p bạn l&agrave;m nhiều hơn v&agrave; nhanh hơn.</p>\r\n\r\n<h3><strong><a href=\"https://www.computerworld.com/article/3244347/what-is-windows-hello-microsofts-biometrics-security-system-explained.html\" target=\"_blank\">Window Hello</a>&nbsp;mở kho&aacute; bằng khu&ocirc;n mặt c&ugrave;ng&nbsp;<a href=\"https://cellphones.com.vn/sforum/schannel-amazon-alexa-tro-ly-ao-voi-tiem-nang-danh-bai-siri-va-google-assitant-nay-co-gi-hay\" target=\"_blank\">trợ l&yacute; ảo Alexa</a>&nbsp;gi&uacute;p bạn thực hiện thao t&aacute;c dễ d&agrave;ng</strong></h3>\r\n\r\n<p>Phần cứng sinh trắc học ti&ecirc;n tiến hoạt động liền mạch với Windows Hello v&agrave; Cortana, nhờ đ&oacute; bạn c&oacute; thể đ&aacute;nh thức m&aacute;y t&iacute;nh v&agrave; chỉ cần đăng nhập bằng khu&ocirc;n mặt v&agrave; ra lệnh cho Asus Zenbook 14 bằng giọng n&oacute;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Laptop-Asus-Zenbook-14-UX433FA-A6113T-4.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, Alexa bởi Microsoft l&agrave; trợ l&yacute; ảo, sử dụng điện to&aacute;n đ&aacute;m m&acirc;y v&agrave; AI gi&uacute;p bạn thực hiện c&aacute;c c&ocirc;ng việc, giải tr&iacute;, t&igrave;m th&ocirc;ng tin chung, v.v... Chỉ cần y&ecirc;u cầu chơi nhạc, đọc tin tức, điều khiển ng&ocirc;i nh&agrave; th&ocirc;ng minh, kể chuyện cười,... Alexa sẽ trả lời ngay lập tức.</p>\r\n\r\n<h3><strong>C&ocirc;ng</strong><strong>&nbsp;nghệ&nbsp;</strong><strong><a href=\"https://www.pcworld.idg.com.au/mediareleases/10909/asus-sonicmaster-composes-new-notebook-audio/\" target=\"_blank\">SonicMaster&nbsp;</a>khuếch</strong><strong>&nbsp;đại&nbsp;</strong><strong>&acirc;m thanh lớn hơn m&agrave; kh&ocirc;ng bị m&eacute;o tiếng</strong></h3>\r\n\r\n<p>Để tạo n&ecirc;n c&ocirc;ng nghệ &acirc;m thanh ASUS SonicMaster thế hệ tiếp theo, đội ngũ Golden Ear của ASUS đ&atilde; hợp t&aacute;c với c&aacute;c chuy&ecirc;n gia về hệ thống &acirc;m thanh xe hơi v&agrave; gia đ&igrave;nh lừng danh, Harman Kardon.</p>\r\n', 2, 180, 13, 10, 22990000, 22490000, '2019-06-04 23:28:14', '1', '2019-06-23 17:54:25', '1', 1, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(19, 9, 'Laptop HP Pavilion 15-cs0014TU 4MF01PA', 'laptop-hp-pavilion-15-cs0014tu-4mf01pa', '2fffae1beec0f68c13e8c9864445e29d.jpg', 'e7de832e8da20d696a99e562a2d77921.jpg#19f19b95a5e3da0faf795a102fc8f432.jpg', 'Máy tính xách tay HP Pavilion 15-cs0014TU 4MF01PA – Laptop phù hợp với mọi tầng lớp', '<p><em>D&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/laptop/hp.html\" target=\"_blank\"><strong>m&aacute;y t&iacute;nh x&aacute;ch tay của HP</strong></a>&nbsp;chắc chắn l&agrave; c&aacute;i t&ecirc;n rất phổ biến với giới văn ph&ograve;ng với ti&ecirc;u ch&iacute;: gi&aacute; cả phải chăng, cấu h&igrave;nh tốt, thiết kế đẹp mắt &hellip; Ch&iacute;nh v&igrave; thế,&nbsp;<strong>laptop HP Pavilion 15-cs0014TU 4MF01PA</strong>&nbsp;lu&ocirc;n l&agrave; sự lựa chọn của đ&ocirc;ng đảo của người d&ugrave;ng, từ học sinh, sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng,&hellip;</em></p>\r\n\r\n<h3><strong>Thiết kế nh&ocirc;m cao cấp</strong>&nbsp;<strong>với độ mỏng chỉ 17.9mm, c&aacute;c đường cong bo tr&ograve;n tỉ mỉ tinh tế</strong></h3>\r\n\r\n<p>Laptop HP Pavilion 15-cs0014TU 4MF01PA c&oacute; thiết kế nh&ocirc;m đẹp mắt, cao cấp. C&aacute;c đường n&eacute;t tr&ecirc;n thiết bị đều được ho&agrave;n thiện tỉ mỉ, tinh tế với độ mỏng chỉ 17.9mm gi&uacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i mang đi để sử dụng bất cứ l&uacute;c n&agrave;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/HP/Laptop_HP_Pavilion_15-cs0014TU_4MF01PA_1__.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&ecirc;n nắp laptop được sơn 1 lớp tr&aacute;ng bạc &iacute;t b&aacute;m v&acirc;n tay v&agrave; bụi bẩn. C&aacute;c đường cong bo tr&ograve;n bao quanh th&acirc;n m&aacute;y kết hợp 2 n&uacute;t nhựa để người d&ugrave;ng đ&aacute;nh m&aacute;y thoải m&aacute;i hơn &ndash; thiết kế n&agrave;y cũng gần giống 2 đế nẫy của c&aacute;c b&agrave;n ph&iacute;m rời.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh 15.6 inch Full HD với&nbsp;<a href=\"https://www.viewsonic.com/library/photography/what-is-an-ips-monitor-panel\" target=\"_blank\">tấm nền IPS</a>&nbsp;cho h&igrave;nh ảnh r&otilde; n&eacute;t v&agrave; sống động</strong></h3>\r\n\r\n<p>Laptop HP Pavilion 15-cs0014TU 4MF01PA c&oacute; k&iacute;ch thước 15.6 inch độ ph&acirc;n giải Full HD tạo ra h&igrave;nh ảnh r&otilde; n&eacute;t v&agrave; sống động khi phục vụ giải tr&iacute;, xem phim hay c&aacute;c c&ocirc;ng việc đồ hoạ đều thể hiện tốt tr&ecirc;n m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/HP/Laptop_HP_Pavilion_15-cs0014TU_4MF01PA_2_.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Laptop c&ograve;n sử dụng c&ocirc;ng nghệ tấm nền IPS anti-glare cho g&oacute;c nh&igrave;n l&ecirc;n tới 178 độ gi&uacute;p người dung nh&igrave;n nghi&ecirc;ng kh&ocirc;ng bị thay đổi m&agrave;u sắc. Phần viền hai b&ecirc;n m&agrave;n h&igrave;nh được chế t&aacute;c mỏng hơn c&ograve;n 6.5 mm tương đương c&aacute;c laptop cao cấp kh&aacute;c tr&ecirc;n thị trường.</p>\r\n\r\n<h3><strong>Vi xử l&yacute;&nbsp;<a href=\"https://ark.intel.com/content/www/us/en/ark/products/137977/intel-core-i3-8130u-processor-4m-cache-up-to-3-40-ghz.html\" target=\"_blank\">Intel Core i3-8130U</a>&nbsp;v&agrave; ổ cứng 1TB phục vụ tốt nhu cầu l&agrave;m việc, giải tr&iacute;</strong></h3>\r\n\r\n<p>Laptop HP Pavilion 15-cs0014TU 4MF01PA được trang bị vi xử l&yacute; Intel Core i3-8130U tốc độ 2.2 GHz, cho thời gian xử l&yacute; dữ liệu nhanh hơn 45% v&agrave; hiệu năng tăng 25% so với d&ograve;ng trước đ&oacute;. B&ecirc;n cạnh đ&oacute;, bộ nhớ RAM DDR4 dung lượng 4 GB đ&aacute;p ứng tốt c&aacute;c nhu cầu học tập, l&agrave;m việc văn ph&ograve;ng hay giải tr&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/HP/Laptop_HP_Pavilion_15-cs0014TU_4MF01PA_3_.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Sản phẩm kh&ocirc;ng hổ trợ card đồ hoạ rời m&agrave; chỉ d&ugrave;ng GPU t&iacute;ch hợp&nbsp;<a href=\"https://www.notebookcheck.net/Intel-UHD-Graphics-620-GPU-Review-Benchmarks-and-Specs.239936.0.html\" target=\"_blank\">Intel UHD 620</a>,&nbsp;để phục vụ nhu cầu chơi 1 số game online hiện nay. K&egrave;m theo đ&oacute; l&agrave; ổ cứng HDD l&ecirc;n đến 1TB gi&uacute;p người dung tha hồ lưu trữ th&ocirc;ng tin c&aacute; nh&acirc;n, t&agrave;i liệu v&agrave; nhiều game hơn.</p>\r\n\r\n<h3><strong>Trang bị thỏi pin 3 Cell 41Wh cung cấp năng lượng sử dụng đến 7 tiếng</strong></h3>\r\n\r\n<p>Laptop HP Pavilion 15-cs0014TU 4MF01PA &nbsp;được trang bị 3 Cell pin 41Wh cho thời gian sử dụng của m&aacute;y kh&aacute; do t&iacute;ch hợp loại chip tiết kiệm điện (i3-8130U). V&igrave; vậy, thỏi pin của m&aacute;y ho&agrave;n to&agrave;n c&oacute; thể gi&uacute;p người d&ugrave;ng sử dụng mượt m&agrave; trong thời gian kh&aacute; d&agrave;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/HP/Laptop_HP_Pavilion_15-cs0014TU_4MF01PA_4_.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Thực tế cho thấy, laptop khi dung để soạn thảo văn bản, xử l&yacute; c&ocirc;ng việc văn ph&ograve;ng th&igrave; sẽ sử dụng được đến 7 tiếng. Ngo&agrave;i ra, HP Pavilion 15-cs0014TU c&ograve;n hỗ trợ c&ocirc;ng nghệ sạc nhanh HP FastCharge cho ph&eacute;p sạc tới 50% pin chỉ sau khoảng 45 ph&uacute;t vừa d&ugrave;ng vừa sạc.</p>\r\n\r\n<h3><strong>Thiết kế b&agrave;n ph&iacute;m</strong>&nbsp;<strong>chiclet v&agrave; touch pad rộng r&atilde;i, tạo cảm gi&aacute;c thoải khi nhập liệu</strong></h3>\r\n\r\n<p>HP Pavilion 15-cs0014TU được thiết kế b&agrave;n ph&iacute;m kiểu chiclet với khoảng c&aacute;ch giữa c&aacute;c</p>\r\n\r\n<p>Bắt được t&acirc;m l&yacute; đ&oacute;, HP đ&atilde; trang bị cho laptop HP Pavilion 15-cs0014TU 4MF01PA hai dải loa B&amp;O được đặt ở ph&iacute;a tr&ecirc;n khu vực b&agrave;n ph&iacute;m. Nh&igrave;n chung loa của m&aacute;y c&oacute; &acirc;m lượng lớn, dải &acirc;m treble, dải trung t&aacute;i tạo &acirc;m thanh trong vắt, gi&uacute;p mang lại chất lượng &acirc;m thanh tuyệt vời cho người d&ugrave;ng.</p>\r\n\r\n<h3><strong>HP Pavilion 15-cs0014TU 4MF01PA cung cấp&nbsp;<a href=\"https://cellphones.com.vn/sforum/windows-10-sap-co-them-theme-mau-trang-cuc-sang\" target=\"_blank\">Win10</a>&nbsp;bản quyền, k&egrave;m theo chế độ bảo h&agrave;nh tại nh&agrave;</strong></h3>\r\n\r\n<p>Win 10 bản quyền ở laptop cung cấp độ an to&agrave;n cao, hạn chế tối đa virus v&agrave; nguy cơ mất dữ liệu. Laptop sử dụng ổn định, tương th&iacute;ch với hầu hết game v&agrave; ứng dụng, thường xuy&ecirc;n được cập nhật, sửa lỗi từ nh&agrave; cung cấp. Đặc biệt l&agrave; hạn sử dụng vĩnh viễn kh&ocirc;ng cần mua đi mua lại nhiều lần.</p>\r\n\r\n<p>CellphoneS lu&ocirc;n nỗ lực hết m&igrave;nh trong việc đảm bảo chất lượng sản phẩm, cũng như dịch vụ hỗ trợ sau b&aacute;n h&agrave;ng. Laptop sẽ bao gồm chế độ bảo h&agrave;nh tại nh&agrave; của hệ thống b&aacute;n h&agrave;ng uy t&iacute;n CellPhoneS. Ch&uacute;ng t&ocirc;i lu&ocirc;n c&oacute; đội ngũ kĩ thuật vi&ecirc;n chuy&ecirc;n nghiệp, c&oacute; nhiều năm kinh nghiệm trong việc bảo h&agrave;nh. Gi&uacute;p kh&aacute;ch h&agrave;ng tiết kiệm được thời gian v&agrave; hạn chế đi lại khi laptop c&oacute; bất k&igrave; trục trặc g&igrave;, nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i sẽ c&oacute; mặt kịp thời để xử l&yacute;.</p>\r\n', 2, 140, 22, 10, 13890000, 11890000, '2019-06-04 23:30:36', '1', '2019-06-23 17:54:19', '1', 1, 1),
(20, 5, 'Laptop Dell Vostro 15 5581 (70175950)', 'laptop-dell-vostro-15-5581-70175950', '7041fb19db5fc6b0232f6b29914424d6.jpg', '8eaed859be980f79ae65426b01be5d21.jpg#e8a82e95d2df07f19ffc79c0f06e5ca7.jpg#84dc9f701c61f6a00b28ad8766ad6159.jpg', 'Máy tính xách tay Dell Vostro 15 5581 - mẫu laptop nắm bắt được công nghệ tiên tiến, người dùng luôn được trải nghiệm độc đáo', '<p><em>Với thiết kế lu&ocirc;n giữ được sự đơn giản nhưng hiệu quả m&agrave; d&ograve;ng&nbsp;<strong>Dell Vostro 15 5581</strong>&nbsp;l&agrave;m việc n&agrave;y mang lại thật sự đ&aacute;ng t&igrave;m hiệu. Lu&ocirc;n nắm bắt được c&ocirc;ng nghệ ti&ecirc;n tiến, người d&ugrave;ng lu&ocirc;n được trải nghiệm những c&ocirc;ng nghệ mới m&agrave;&nbsp;Dell&nbsp;mang lại được sự trải nghiệm tốt hơn c&aacute;c&nbsp;ứng dụng&nbsp;đ&aacute;p ứng cho c&ocirc;ng việc cũng như tăng th&ecirc;m phần th&uacute; vị trong thời gian giải tr&iacute;. Hỗ trợ bảo mật v&acirc;n tay gi&uacute;p người d&ugrave;ng c&oacute; thể lưu trữ th&ocirc;ng tin tốt hơn, an to&agrave;n hơn chỉ với 1 lần chạm.</em></p>\r\n\r\n<h3><strong>Thiết kế vỏ nh&ocirc;m tinh giản, chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>G&oacute;p phần v&agrave;o phong th&aacute;i chỉnh chu cho người d&ugrave;ng c&ocirc;ng sở hiện đại, Dell Vostro 15 5581 c&oacute; cấu tr&uacute;c vỏ nh&ocirc;m, t&ocirc;ng m&agrave;u x&aacute;m trung t&iacute;nh th&iacute;ch hợp cho người d&ugrave;ng nam lẫn nữ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/DELL-VOSTRO-15-5581-1.jpg\" style=\"height:487px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dell Vostro 15 5581 được thiết kế đơn giản nhưng kh&ocirc;ng k&eacute;m phần sang trọng, tinh tế với lớp vỏ ngo&agrave;i cứng c&aacute;p, chắc chắn gi&uacute;p bảo vệ tốt c&aacute;c linh kiện b&ecirc;n trong v&agrave; c&aacute;c g&oacute;c cạnh được bo tr&ograve;n nhẹ tạo cảm gi&aacute;c thoải m&aacute;i khi cầm nắm. Ngo&agrave;i ra, với k&iacute;ch thước tổng thể 36.1 x 24.9 x 1.8cm v&agrave; trọng lượng chỉ khoảng 1.9kg, bạn c&oacute; thể bỏ m&aacute;y v&agrave;o t&uacute;i x&aacute;ch hoặc balo v&agrave; mang theo b&ecirc;n m&igrave;nh đến bất cứ nơi n&agrave;o bạn muốn để sử dụng khi cần.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Full&nbsp;</strong><strong>H</strong><strong>D với&nbsp;<a href=\"https://www.tomshardware.com/reviews/ips-in-plane-switching-definition,5748.html\" target=\"_blank\">tấm nền IPS</a></strong><strong>&nbsp;c&ugrave;ng đ&egrave;n nền LED</strong><strong>&nbsp;chống ch&oacute;i</strong></h3>\r\n\r\n<p>Sử dụng tấm nền IPS với điểm mạnh nằm ở g&oacute;c nh&igrave;n rộng, chống l&oacute;a hỗ trợ người d&ugrave;ng c&oacute; thể nh&igrave;n từ nhiều g&oacute;c độ cũng như sử dụng ngay trong m&ocirc;i trường c&oacute; &aacute;nh nắng trực tiếp. Với độ bền cao hơn, duy tr&igrave; tu&ocirc;i thọ sản phẩm l&acirc;u hơn, bền bỉ hơn c&ugrave;ng độ ph&acirc;n giải 1920 x 1080 với h&igrave;nh ảnh chuẩn&nbsp;Full HD&nbsp;được g&oacute;i gọn trong k&iacute;ch thước 15,6 inch mang đến trải nghiệm h&igrave;nh ảnh sắc n&eacute;t.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/DELL-VOSTRO-15-5581-2.jpg\" style=\"height:634px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một điểm cộng cho chiếc Dell Vostro 5581&nbsp;70175952 đ&oacute; l&agrave; được trang bị đường viền hẹp 2 mặt, vừa tạo được g&oacute;c nh&igrave;n rộng, vừa l&agrave;m cho m&aacute;y trở n&ecirc;n mỏng nhẹ hơn khi nằm trọn trong khung h&igrave;nh Laptop 14inch ti&ecirc;u chuẩn. M&agrave;n h&igrave;nh Full HD k&iacute;ch thước 14 inch của Vostro 5481 v&agrave; 15,6 inch tr&ecirc;n Vostro 5581 cho khung h&igrave;nh rộng, cung cấp những thước h&igrave;nh rực rỡ, sắc n&eacute;t từng chi tiết. Tầm nền IPS ngăn ngừa mỏi mắt v&agrave; chống ch&oacute;i gi&uacute;p người d&ugrave;ng văn ph&ograve;ng c&oacute; thể l&agrave;m việc dưới mọi m&ocirc;i trường &aacute;nh s&aacute;ng.</p>\r\n\r\n<p>Đ&egrave;n nền LED chống ch&oacute;i 15,6 inch FHD (1920 x 1080) M&agrave;n h&igrave;nh IPS viền kh&ocirc;ng chạm. C&ocirc;ng nghệ&nbsp;m&agrave;n h&igrave;nh IPS&nbsp;sẽ gi&uacute;p chiếc laptop n&agrave;y t&aacute;i tạo được h&igrave;nh ảnh một c&aacute;ch r&otilde; r&agrave;ng, m&agrave;u sắc ch&iacute;nh x&aacute;c v&agrave; g&oacute;c nh&igrave;n rộng hơn. Tuy nhi&ecirc;n, c&oacute; 1 nhược điểm cho m&agrave;n h&igrave;nh IPS đ&oacute; l&agrave; sẽ ti&ecirc;u tốn điện năng hơn khoảng 15% v&agrave; chi ph&iacute; sản xuất cũng đắt hơn so với tấm nền TN.</p>\r\n\r\n<h3><strong>Cấu h&igrave;nh khủng vi xử l&yacute; core i5 thế hệ thứ 8 Kabylake Refresh với ổ cứng&nbsp;</strong><strong>4GB DDR4</strong></h3>\r\n\r\n<p>Dell Vostro 15 5581 sử dụng chip&nbsp;Intel&nbsp;Core&nbsp;i5&nbsp;đ&aacute;p ứng được hầu hết tất cả c&aacute;c ti&ecirc;u chuẩn&nbsp;ứng dụng&nbsp;hiện nay. 8265U thuộc thế hệ thứ 8 với độ xung nhịp 1.6 GHz &ndash; 3.9 GHz với 4 nh&acirc;n 8 luồng mang lại tốc độ xử l&yacute; ti&ecirc;u chuẩn cung cấp &ldquo;kh&ocirc;ng gian&rdquo; l&agrave;m việc đảm bảo gi&uacute;p người d&ugrave;ng được trải nghiệm chuy&ecirc;n s&acirc;u. Kh&ocirc;ng đơn giản l&agrave; để đ&aacute;p ứng&nbsp;ứng dụng, độ xung nhịp lớn cũng gi&uacute;p người d&ugrave;ng chạy đa nhiệm tốt hơn v&agrave; mang đến sự mượt m&agrave; với nhiều tab tr&ecirc;n nền c&aacute;c tr&igrave;nh duyệt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/DELL-VOSTRO-15-5581-3.jpg\" style=\"height:538px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với RAM 4GB&nbsp;DDR4&nbsp;2666MHz thuộc dạng tầm trung, ngo&agrave;i những gi&acirc;y ph&uacute;t l&agrave;m việc căng thẳng người d&ugrave;ng c&oacute; thể tận hưởng những khoảng thời gian giải tr&iacute; nhẹ nh&agrave;ng. Với 4GB&nbsp;RAM&nbsp;người d&ugrave;ng c&oacute; thể thoải m&aacute;i chơi c&aacute;c game c&oacute; cấu h&igrave;nh tương đối đủ để đ&aacute;p ứng với mức tối thiểu của c&aacute;c dạng game lớn. Với 2 khe cắm hỗ trợ tối đa người d&ugrave;ng l&ecirc;n đến 16GB. T&igrave;m hiểu th&ecirc;m th&igrave;&nbsp;DDR4&nbsp;được xem như l&agrave; sự n&acirc;ng cấp từ&nbsp;DDR3.&nbsp;DDR4&nbsp;được ra mắt với hiệu năng l&agrave;m việc cao hơn, ti&ecirc;u thụ &iacute;t điện năng hơn b&ecirc;n cạnh 1 v&agrave;i chức năng kh&aacute;c của được n&acirc;ng cấp v&agrave; cải tiến. Giảm thiểu 40% điện năng, sở hữu t&iacute;nh năng kiểm tra phần dư tuần ho&agrave;n (CRC) để thực thi nhiệm vụ kiểm tra đường truyền v&agrave; giải quyết mang lại t&iacute;nh an to&agrave;n của dữ liệu, ph&aacute;t hiện t&iacute;nh chẵn lẻ tr&ecirc;n chip nhằm x&aacute;c thực t&iacute;nh to&agrave;n vẹn của dữ liệu, b&ecirc;n cạnh đ&oacute; c&ograve;n thực hiện 1 v&agrave;i t&iacute;nh năng RAS mạnh mẽ kh&aacute;c.&nbsp;</p>\r\n\r\n<p>Sử dụng ch&iacute;p&nbsp;<a href=\"https://www.notebookcheck.net/Intel-UHD-Graphics-620-GPU-Review-Benchmarks-and-Specs.239936.0.html\" target=\"_blank\">intel&nbsp;UHD&nbsp;Graphics 620</a>&nbsp;thuộc d&ograve;ng chip cải tiến n&acirc;ng cao khả năng l&agrave;m việc so với 520, với thử nghiệm qua 3D Mark Cloud Gate (đ&aacute;nh gi&aacute; về khả năng xử l&yacute; đồ họa game). Intel&nbsp;HD Graphics 620 nhanh hơn khoảng 7% so với d&ograve;ng 520 trước đ&oacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/DELL-VOSTRO-15-5581-5.jpg\" style=\"height:358px; width:840px\" /></p>\r\n\r\n<h3><strong>Mạnh mẽ với card đồ họa rời 2GB v&agrave; t&iacute;ch hợp sẵn win10 + Office 365</strong></h3>\r\n\r\n<p>Dell Vostro 15 5581 t&iacute;ch hợp card đồ họa rời&nbsp;<a href=\"https://www.notebookcheck.net/NVIDIA-GeForce-MX130-GPU-Benchmarks-and-Specs.258054.0.html\" target=\"_blank\">NVIDIA GeForce MX130</a>&nbsp;2GB GDDR5 b&ecirc;n trong gi&uacute;p Dell Vostro 15 5581 c&oacute; thể chạy tốt hơn những&nbsp;phần mềm&nbsp;đồ họa văn ph&ograve;ng v&agrave; chơi được c&aacute;c dạng game c&oacute; cấu h&igrave;nh tầm trung. Với kiến tr&uacute;c Maxell cũ nhưng NVIDIA GeForce MX130 vẫn mạnh hơn khoảng 2,5 lần so với ch&iacute;nh card&nbsp;Intel&nbsp;UHD&nbsp;Graphics 620 onboard</p>\r\n', 1, 300, 26, 10, 18790000, 16790000, '2019-06-04 23:33:43', '1', '2019-06-04 23:33:43', '1', 1, 1),
(21, 1, 'Apple iPhone 8 Plus 64GB Chính hãng', 'apple-iphone-8-plus-64gb-chinh-hang', 'a6a1f3a7e3191930164237d7abbcf552.jpg', '511ea2148be73decc55c4cc807626d5a.jpg#328c007de67c9215673348a2cb1f0743.jpg#3249faead50a8a99fc7ff3178f70de6a.jpg#21cecadc38c1d1b3bea0df11ea01f981.jpg', 'iPhone 8 Plus 64GB - Smartphone đến từ thương hiệu Apple uy tín', '<p><em>Trong thời buổi hiện đại ng&agrave;y nay, smartphone l&agrave; một trong những thiết bị di động kh&ocirc;ng thể thiếu đối với bất k&igrave; người d&ugrave;ng n&agrave;o. Nổi bật v&agrave; thịnh h&agrave;nh trong c&aacute;c thương hiệu tr&ecirc;n thị trường hiện nay kh&ocirc;ng thể n&agrave;o kh&ocirc;ng kể đến h&atilde;ng Apple. C&aacute;c sản phẩm đến từ Apple đều mang lại chất lượng ho&agrave;n hảo. Như thường lệ,&nbsp;<strong>iPhone 8 Plus</strong>&nbsp;<strong>64GB&nbsp;</strong>ra đời với thiết kế c&ugrave;ng t&iacute;nh năng tuyệt vời sẽ mang đến cho người d&ugrave;ng những trải nghiệm th&uacute; vị nhất.</em></p>\r\n\r\n<h3><strong>Tại sao người d&ugrave;ng n&ecirc;n chọn mua iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A?</strong></h3>\r\n\r\n<p>L&yacute; do để người d&ugrave;ng lựa chọn chiếc&nbsp;<strong><em><a href=\"https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html\" target=\"_self\">iPhone 8 Plus</a></em></strong>&nbsp;ch&iacute;nh h&atilde;ng VN/A v&igrave; đ&acirc;y l&agrave; chiếc điện thoại c&oacute; gi&aacute; th&agrave;nh hợp l&yacute; v&agrave; chất lượng đảm bảo. Đ&acirc;y l&agrave; sản phẩm h&agrave;ng ch&iacute;nh h&atilde;ng sản xuất cho thị trường Việt Nam, do đại l&yacute; Apple được ủy quyền tại Việt Nam ph&acirc;n phối.&nbsp;Chất lượng h&agrave;ng h&oacute;a của iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A được đảm bảo theo đ&uacute;ng ti&ecirc;u chuẩn nh&agrave; sản xuất. Đặc biệt, tại hệ thống CellphoneS c&oacute; dịch vụ đổi mới 30 ng&agrave;y sau khi mua sản phẩm, bảo hiểm 1 năm hoặc hơn tại c&aacute;c trung t&acirc;m bảo h&agrave;nh ủy quyền.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-2.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, cả hai mặt k&iacute;nh của điện thoại đều được cắt 2.5D ho&agrave;n hảo v&agrave; tinh tế, cụm camera cũng được bọc v&ograve;ng kim loại để mang đến n&eacute;t sang trọng nhưng cũng kh&ocirc;ng k&eacute;m phần hiện đại cho điện thoại. Mặt k&iacute;nh n&agrave;y cũng sẽ c&oacute; thể hỗ trợ c&ocirc;ng nghệ sạc kh&ocirc;ng d&acirc;y rất độc đ&aacute;o.</p>\r\n\r\n<h3><strong>Trang bị camera k&eacute;p 12 MP, quay phim 4K chất lượng cao</strong></h3>\r\n\r\n<p>Hệ thống camera k&eacute;p tại mặt sau của iPhone 8 Plus 64GB được cải tiến mạnh mẽ với một ống k&iacute;nh rộng độ ph&acirc;n giải 12MP (f/1.8) v&agrave; một ống k&iacute;nh tele đồng độ ph&acirc;n giải (f.2/8). Hệ thống camera k&eacute;p n&agrave;y được n&acirc;ng cấp cho khả năng thu nhận &aacute;nh s&aacute;ng nhiều hơn, gi&uacute;p h&igrave;nh ảnh sắc n&eacute;t v&agrave; chi tiết hơn trong mọi điều kiện m&ocirc;i trường. Với cấu h&igrave;nh n&agrave;y, iPhone 8 Plus cho ph&eacute;p bạn&nbsp;<a href=\"https://cellphones.com.vn/sforum/moi-xem-bo-phim-ngan-4k-tuyet-dep-duoc-quay-toan-bo-bang-iphone-6s-plus\" target=\"_blank\">quay video chất lượng 4K</a>. Camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải 7MP (f/2.2) kết hợp c&ugrave;ng c&ocirc;ng nghệ chống rung tự động ti&ecirc;n tiến.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-3.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, đ&acirc;y l&agrave; lần đầu ti&ecirc;n iPhone t&iacute;ch hợp t&iacute;nh năng&nbsp;<a href=\"https://www.pocket-lint.com/phones/news/apple/142244-what-is-apple-s-portrait-lighting-and-how-does-it-work-on-iphone\" target=\"_blank\">Portrait Lightning</a>&nbsp;tr&ecirc;n camera&nbsp;trước nhằm gi&uacute;p người d&ugrave;ng điều chỉnh &aacute;nh s&aacute;ng trực tiếp khi thực hiện c&aacute;c t&aacute;c vụ selfie.Ngo&agrave;i ra, tr&ecirc;n iPhone 8 Plus 64GB cũng được Apple trang bị c&ocirc;ng nghệ ổn định h&igrave;nh ảnh quang học OIS gi&uacute;p lấy n&eacute;t nhanh v&agrave; ch&iacute;nh x&aacute;c hơn. Điện thoại cũng c&oacute; khả năng quay phim chất lượng cao 4K/60fps v&agrave; 1080p/240fps kết hợp c&ugrave;ng c&aacute;c chức năng hiện đại kh&aacute;c, gi&uacute;p người d&ugrave;ng c&oacute; những trải nghiệm h&igrave;nh ảnh tuyệt vời nhất.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ v&agrave; nhanh ch&oacute;ng từ chip Apple A11 Bionic 6 nh&acirc;n</strong></h3>\r\n\r\n<p>iPhone 8 Plus 64GB được trang bị con chip&nbsp;<a href=\"https://cellphones.com.vn/sforum/chipset-apple-a11-bionic-tren-iphone-8-va-iphone-x-danh-bai-tat-ca-cac-thiet-bi-android-voi-diem-geekbench-cao-ngat-nguong\" target=\"_blank\">Apple A11 Bionic 6</a>&nbsp;nh&acirc;n mới nhất, trong đ&oacute; 2 nh&acirc;n c&oacute; khả năng xử l&yacute; nhanh hơn 25%, 4 nh&acirc;n c&ograve;n lại c&oacute; tốc độ nhanh hơn 70% so với d&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/sforum/chip-apple-a10-se-co-toi-6-nhan-xu-ly\" target=\"_blank\">chip A10</a>. Hệ điều h&agrave;nh&nbsp;<a href=\"https://cellphones.com.vn/sforum/25-thu-thuat-nho-co-the-ban-chua-biet-tren-he-dieu-hanh-ios-11-4-1\" target=\"_blank\">iOS 11</a>&nbsp;tr&ecirc;n m&aacute;y được đ&aacute;nh gi&aacute; cao với nhiều cải tiến vượt bậc về giao diện, cho khả năng đa nhiệm mượt m&agrave;, hỗ trợ mạnh t&iacute;nh năng thực tế ảo AR, gi&uacute;p người d&ugrave;ng c&oacute; được trải nghiệm ho&agrave;n hảo hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-4.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, GPU cũng được Apple tự sản xuất để đưa v&agrave;o chiếc iPhone 8 Plus 64GB mới với khả năng ti&ecirc;u thụ điện năng chỉ bằng 1/2 so với trước. Điều n&agrave;y sẽ cho ph&eacute;p điện thoại vừa hoạt động v&ocirc; c&ugrave;ng mạnh mẽ vừa c&oacute; thể dễ d&agrave;ng tối ưu h&oacute;a c&aacute;c t&aacute;c vụ đồ họa, c&ocirc;ng nghệ AR cũng như tr&iacute; tuệ nh&acirc;n tạo m&agrave; Apple đang ph&aacute;t triển.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh sắc n&eacute;t với c&ocirc;ng nghệ&nbsp;<a href=\"https://www.pocket-lint.com/tablets/news/apple/137264-what-is-apple-true-tone-display\" target=\"_blank\">True Tone</a></strong></h3>\r\n\r\n<p>Đối với iPhone 8 Plus 64GB, người d&ugrave;ng sẽ c&oacute; trải nghiệm tr&ecirc;n m&agrave;n&nbsp;h&igrave;nh&nbsp;<a href=\"https://www.macworld.co.uk/feature/apple/retina-display-3466732/\" target=\"_blank\">Retina</a>&nbsp;5.5 inch chuẩn HD, tấm nền LCD cảm ứng điện dung c&ugrave;ng c&ocirc;ng nghệ&nbsp;<a href=\"https://www.tomshardware.com/reviews/ips-in-plane-switching-definition,5748.html\" target=\"_blank\">IPS</a>, 16 triệu m&agrave;u, độ ph&acirc;n giải 1080 x 1920 pixels c&ugrave;ng mật độ điểm ảnh 401ppi cho khả năng hiển thị ho&agrave;n hảo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-6.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, iPhone 8 Plus 64GB c&ograve;n trang bị t&iacute;nh năng sạc nhanh hiện đại. Điện thoại c&oacute; thể sạc đầy 50% pin dung lượng 2900mAh chỉ trong vỏn vẹn 30 ph&uacute;t, thay v&igrave; phải mất hơn 1 giờ như tr&ecirc;n chiếc iPhone 7 tiền nhiệm. Bởi lẽ, đế sạc kh&ocirc;ng d&acirc;y được hỗ trợ kết nối với c&aacute;p Type &ndash; C hỗ trợ d&ograve;ng điện l&ecirc;n tới 100W, thay v&igrave; chỉ 10W như cổng&nbsp;<a href=\"https://whatis.techtarget.com/definition/micro-USB\" target=\"_blank\">microUSB</a>&nbsp;th&ocirc;ng thường.</p>\r\n\r\n<h3><strong>iPhone 8 Plus 64GB được t&iacute;ch hợp nhiều t&iacute;nh năng hiện đại: cảm biến v&acirc;n tay&nbsp;<a href=\"https://cellphones.com.vn/sforum/3-meo-don-gian-giup-cam-bien-van-tay-touch-id-tren-iphone-nhay-hon\" target=\"_blank\">Touch ID</a>, ti&ecirc;u chuẩn kh&aacute;ng nước IP68</strong></h3>\r\n\r\n<p>iPhone 8 Plus 64GB vẫn được t&iacute;ch hợp cảm biến v&acirc;n tay Touch ID v&agrave;o n&uacute;t Home như iPhone 7/ 7 Plus, điều n&agrave;y cho ph&eacute;p người d&ugrave;ng dễ d&agrave;ng truy cập v&agrave;o c&aacute;c ứng dụng, thực hiện nhiều t&aacute;c vụ hơn với c&aacute;c mức phản hồi lực kh&aacute;c nhau v&agrave; độ bảo mật được tối ưu hơn.</p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;,<strong>&nbsp;</strong>&nbsp;iPhone 8 Plus 64GB c&ograve;n được trang bị kh&aacute;ng nước, bụi đạt chuẩn IP68. Trang bị n&agrave;y cho ph&eacute;p điện thoại chịu nước ở độ s&acirc;u 1 m&eacute;t trong v&ograve;ng 30 ph&uacute;t. Người d&ugrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m sử dụng điện thoại dưới trời mưa hay trong m&ocirc;i trường kh&oacute;i bụi.<img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-7.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, loa ngo&agrave;i tr&ecirc;n iPhone 8 Plus cũng cho c&ocirc;ng suất lớn hơn 25% so với người tiền nhiệm. Điện thoại c&ograve;n sử dụng cổng Lightning v&agrave; tai nghe Earpods để ph&ugrave; hợp với những ai đang sử dụng&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-7-7-plus.html\" target=\"_blank\">iPhone 7/7Plus</a>.</p>\r\n\r\n<h3><strong>Mua iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A đảm bảo chất lượng tại hệ thống&nbsp;<a href=\"https://cellphones.com.vn/\" target=\"_blank\">CellphoneS</a></strong></h3>\r\n\r\n<p>Nếu bạn đang muốn t&igrave;m mua một chiếc smartphone với chất lượng ho&agrave;n hảo v&agrave; gi&aacute; cả hợp l&yacute; th&igrave;&nbsp;<strong>iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A&nbsp;</strong>sẽ l&agrave; một lựa chọn tuyệt vời.&nbsp;Đặc biệt hơn, tại ​hệ thống&nbsp;<strong>CellphoneS</strong>​, bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi mua sản phẩm n&agrave;y v&igrave; ​CellphoneS c&oacute; chế độ bảo h&agrave;nh &ndash; đổi trả chu đ&aacute;o c&ugrave;ng dịch vụ giao h&agrave;ng &ndash; thu tiền tại nh&agrave; miễn ph&iacute; tr&ecirc;n to&agrave;n quốc</p>\r\n', 2, 240, 17, 12, 19500000, 18200000, '2019-06-10 00:03:02', '1', '2019-06-10 00:03:02', '2', 0, 1),
(22, 10, 'Chuột không dây Logitech M185', 'chuot-khong-day-logitech-m185', '3f83d23fdc12378fc61ac5c0e55c2476.png', '3daf27b63c30e5a8f1dc1d2ab0934959.png#92877a41b87dae8377bdfdb840fad3f0.png', 'Chuột không dây Logitech M185, Chính hãng', '', 2, 720, 161, 0, 250000, 250000, '2019-06-10 00:04:42', '1', '2019-06-23 17:54:03', '1', 1, 1),
(23, 1, 'Apple iPad Pro 11 2018 Wi-fi 64GB Chính hãng', 'apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang', 'ae20440301730c38e1ca3f1440c50fcc.jpg', '765bd745b649eb90984b26d9d29a6e66.jpg#a031fcbb6b6a47fe5159c21c55c84df2.jpg#fe694bb7f08d8a12e62d7e23ce43d5aa.jpg', 'Apple iPad Pro 11 2018 Wi-fi 64GB Chính hãng - Cấu hình và tính năng', '<p>Nhằm mục đ&iacute;ch biến&nbsp;<a href=\"https://cellphones.com.vn/tablet/ipad-pro.html\" target=\"_blank\">iPad Pro</a>&nbsp;th&agrave;nh chiếc m&aacute;y t&iacute;nh bảng c&oacute; khả năng thay thế đảm nhiệm c&ocirc;ng việc cho laptop, năm nay Apple đ&atilde; ra mắt phi&ecirc;n bản n&acirc;ng cấp mạnh mẽ về thiết kế lẫn hiệu năng &ldquo;khủng&rdquo; cho&nbsp;<strong>Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</strong>.</p>\r\n\r\n<h3>Thiết kế viền si&ecirc;u mỏng tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p>Về thiết kế,&nbsp;<strong>iPad Pro 11 2018 Wi-fi 64GB</strong>&nbsp;sở hữu phần c&aacute;c cạnh viền xung quanh mỏng đều nhau ở bốn cạnh. M&aacute;y đ&atilde; bỏ đi ph&iacute;m home truyền thống thay v&agrave;o đ&oacute; l&agrave; c&aacute;c cử chỉ vuốt khi sử dụng như tr&ecirc;n iPhone X. Tổng k&iacute;ch thước của sản phẩm l&agrave; 247.6 x 178.5 x 5.9mm v&agrave; c&oacute; trọng lượng 468g. Với k&iacute;ch thước n&agrave;y c&ugrave;ng với c&aacute;c cạnh xung quanh được bo tr&ograve;n mềm mại sẽ tạo cho người d&ugrave;ng cảm gi&aacute;c cầm nắm v&ocirc; c&ugrave;ng chắc chắn v&agrave; thoải m&aacute;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-1_1.jpg\" style=\"height:839px; width:840px\" /></p>\r\n\r\n<h3>Trang bị c&ocirc;ng nghệ Face ID cao cấp tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p>Sản phẩm đ&atilde; được Apple thay thế phương thức bảo mật cảm biến v&acirc;n tay th&agrave;nh Face ID. Với cụm camera TrueDepth được t&iacute;ch hợp tr&ecirc;n&nbsp;<strong>iPad Pro 11 2018</strong>&nbsp;sẽ cho ph&eacute;p m&aacute;y nhận dạng tối đa 2 gương mặt người d&ugrave;ng. Đồng thời bất cứ hướng xoay cầm m&aacute;y theo chiều n&agrave;o của người d&ugrave;ng, Face ID cũng c&oacute; thể thực hiện mở kh&oacute;a được.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-2_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-4_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Trang bị cổng USB-Type C tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p>Đ&acirc;y l&agrave; lần đầu ti&ecirc;n Apple thay thế cổng kết nối Lightning tr&ecirc;n d&ograve;ng thiết bị iPad Pro của m&igrave;nh. Với việc t&iacute;ch hợp USB-Type C sẽ cho ph&eacute;p người d&ugrave;ng đồng bộ h&oacute;a tốt hơn với c&aacute;c thiết bị ngoại vi kh&aacute;c tr&ecirc;n thị trường. Đồng thời cổng kết nối n&agrave;y sẽ gi&uacute;p tốc độ truyền tải dữ liệu nhanh l&ecirc;n đến 10 gigabit. Người d&ugrave;ng c&oacute; thể xuất h&igrave;nh ảnh truyền từ m&agrave;n h&igrave;nh&nbsp;<strong>iPad Pro 11 64GB</strong>&nbsp;ra m&agrave;n h&igrave;nh ngo&agrave;i với độ ph&acirc;n giải khủng l&ecirc;n đến 5K.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-3_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-5_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Hiệu năng đỉnh cao tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p><strong><a href=\"https://cellphones.com.vn/apple-ipad-pro-11-2018-wifi-64-gb-chinh-hang.html\" target=\"_blank\">Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</a></strong>&nbsp;được mệnh danh l&agrave; chiếc m&aacute;y t&iacute;nh bảng đầu ti&ecirc;n tr&ecirc;n thế giới c&oacute; hiệu năng mạnh hơn cả c&aacute;c d&ograve;ng laptop c&ugrave;ng mức gi&aacute; tr&ecirc;n thị trường. Cụ thể trang bị con chip Apple A12X Bionic với 8 l&otilde;i CPU nhanh hơn đến 35% so với thiết bị tiềm nhiệm v&agrave; 7 l&otilde;i GPU cho tốc độ xử l&yacute; đồ họa nhanh hơn 2 lần so với con chip A11X. Con chip n&agrave;y được sản xuất theo tiến tr&igrave;nh 7nm tối t&acirc;n nhất tr&ecirc;n thị trường. Sở hữu b&ecirc;n trong 10 tỷ b&oacute;ng b&aacute;n dẫn mang đến hiệu năng cực xuất sắc trong mọi t&aacute;c vụ từ đơn giản đến phức tạp nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 470, 32, 15, 22500000, 19500000, '2019-06-10 00:07:42', '1', '2019-06-23 17:53:49', '1', 1, 1),
(24, 5, 'Laptop Dell Inspiron 15 3576 (70157552)', 'laptop-dell-inspiron-15-3576-70157552', 'ed89f871f145b6b99099923be292f9ba.jpg', 'd678d1325a0ef2723e395da364f67092.jpg#cd30cc5a1ed94166742788b0b2876086.jpg#efb8d711e852b823cec67e8c8b8ac595.jpg#4d08e4839006d7694348defb7980b91d.jpg', 'Máy tính xách tay Dell Inspiron 15 3576 70157552 chính hãng, chất lượng tại hệ thống E-Store', '<p><em>Dell l&agrave; một trong những thương hiệu&nbsp;<a href=\"https://cellphones.com.vn/laptop.html\" target=\"_blank\"><strong>laptop</strong></a>&nbsp;thịnh h&agrave;nh tr&ecirc;n thị trường hiện nay với c&aacute;c sản phẩm chất lượng v&agrave; ph&ugrave; hợp với nhiều đối tượng người d&ugrave;ng, nổi bật trong đ&oacute; l&agrave; chiếc laptop&nbsp;<strong>Dell Inspiron 15</strong>. Nếu bạn l&agrave; một người d&ugrave;ng cơ bản v&agrave; kh&ocirc;ng y&ecirc;u cầu những chiếc m&aacute;y ultrabook cao cấp với thiết kế đẹp v&agrave; cấu h&igrave;nh khủng,&nbsp;<strong>Dell Inspiron 15 3576 70157552</strong>&nbsp;sẽ l&agrave; một lựa chọn ph&ugrave; hợp.</em></p>\r\n\r\n<h3><strong>Thiết kế cứng c&aacute;p, gọn nhẹ với chất liệu nhựa cao cấp</strong></h3>\r\n\r\n<p>Dell Inspiron 15 3576 70157552 được bao bọc bởi lớp vỏ ngo&agrave;i bằng nhựa m&agrave;u đen cứng c&aacute;p, bản lề chắc chắn gi&uacute;p bảo vệ tốt c&aacute;c linh kiện b&ecirc;n trong. C&aacute;c g&oacute;c cạnh của m&aacute;y được bo tr&ograve;n nhẹ tạo cảm gi&aacute;c thoải m&aacute;i khi cầm nắm, tr&aacute;nh việc cứa v&agrave;o da tay v&agrave; g&acirc;y kh&oacute; chịu khi sử dụng. Hai b&ecirc;n viền l&agrave; điểm nhấn ch&iacute;nh của m&aacute;y khi được l&agrave;m từ nhựa b&oacute;ng nổi bật, tinh tế.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-1.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với trọng lượng 2.3kg, người d&ugrave;ng c&oacute; thể mang theo m&aacute;y b&ecirc;n m&igrave;nh đến bất cứ nơi n&agrave;o để sử dụng khi cần. Hơn nữa, Dell c&ograve;n đảm bảo cho chiếc laptop của bạn hoạt động tốt nhất ở cả những khu vực n&oacute;ng v&agrave; c&oacute; nhiệt độ khắc nghiệt nhất khi khả năng chịu nhiệt độ của Dell Inspiron 15 3576 70157552 l&ecirc;n tới hơn 75 độ C.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Full HD, k&iacute;ch thước 15.6 inch đem đến trải nghiệm h&igrave;nh ảnh tuyệt vời</strong></h3>\r\n\r\n<p>Dell Inspiron 15 3576 70157552 được trang bị m&agrave;n h&igrave;nh Full HD, k&iacute;ch thước lớn 15.6 inch c&ugrave;ng độ ph&acirc;n giải 1920 x 1080 pixels, tương đương 142 ppi cho trải nghiệm tuyệt vời, sắc n&eacute;t đến từng chi tiết. M&agrave;n h&igrave;nh của Inspiron 3576 hiển thị m&agrave;u đẹp, sống động v&agrave; ch&acirc;n thực khiến bất cứ kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh n&agrave;o đều phải h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-2.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, m&agrave;n h&igrave;nh c&ograve;n được t&iacute;ch hợp c&ocirc;ng nghệ chống l&oacute;a Anti-Glare cho ph&eacute;p hiển thị tốt ngay cả dưới điều kiện ban đ&ecirc;m thiếu &aacute;nh s&aacute;ng hoặc qu&aacute; nhiều &aacute;nh s&aacute;ng chiếu v&agrave;o. Ngo&agrave;i ra, trang bị HD Webcam gi&uacute;p người d&ugrave;ng c&oacute; những trải nghiệm ho&agrave;n hảo khi thực hiện c&aacute;c cuộc tr&ograve; chuyện trực tuyến.</p>\r\n\r\n<h3><strong>Hiệu năng vượt trội c&ugrave;ng chip&nbsp;<a href=\"https://ark.intel.com/content/www/vn/vi/ark/products/124967/intel-core-i5-8250u-processor-6m-cache-up-to-3-40-ghz.html\" target=\"_blank\">Intel Core i5-8250U</a>&nbsp;thế hệ thứ 8</strong></h3>\r\n\r\n<p>Dell Inspiron 15 3576 70157552 được trang bị chip Intel Core i5-8250U thế hệ thứ 8 si&ecirc;u tốc, 4 nh&acirc;n 8 buồng với tốc độ 1,6GHz upto 3,4GHz c&ugrave;ng bộ nhớ đệm 6MB xử l&yacute; tốt mọi ứng dụng m&agrave; bạn mong muốn. M&aacute;y c&oacute; 4GB DDR4 2400MHz ti&ecirc;n tiến c&ugrave;ng 1 khe cắm thứ 2 sẵn s&agrave;ng n&acirc;ng cấp th&ecirc;m bất cứ l&uacute;c n&agrave;o. Ổ cứng HDD 1TB cho bạn thoải m&aacute;i lưu trữ c&aacute;c dữ liệu c&aacute; nh&acirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-3.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i phi&ecirc;n bản Win 10 được lập tr&igrave;nh sẵn, Dell Inspiron 15 3576 70157552 c&ograve;n c&oacute; cả phi&ecirc;n bản chạy hệ điều h&agrave;nh Ubuntu cho tốc độ xử l&yacute; vượt trội v&agrave; bảo mật cao hơn.</p>\r\n\r\n<p>M&aacute;y c&ograve;n c&oacute; card đồ họa rời AMD Radeon 520 Graphics 2GB GDDR5 sẵn s&agrave;ng hỗ trợ c&aacute;c ứng dụng đồ họa v&agrave; c&aacute;c game cấu h&igrave;nh mạnh. Dell Inspiron 15 3576 kh&ocirc;ng chỉ hoạt động tốt trong ứng dụng văn ph&ograve;ng m&agrave; c&ograve;n xử l&yacute; tốt c&aacute;c c&ocirc;ng việc đồ họa v&agrave; tất cả c&aacute;c tựa game như Dota, Li&ecirc;n minh huyền thoại,&nbsp;<a href=\"https://www.livemint.com/Technology/2KSD3xh8fRjBPuUkKCf8dK/Game-Review-PUBG-Mobile-is-immensely-addictive-like-the-PC.html\" target=\"_blank\">PUBG</a>,...</p>\r\n\r\n<h3><strong>B&agrave;n ph&iacute;m c&ugrave;ng touchpad dễ thao t&aacute;c</strong></h3>\r\n\r\n<p>B&agrave;n ph&iacute;m của Dell Inspiron 15 3576 70157552 được thiết kế theo phong c&aacute;ch truyền thống của Dell với k&iacute;ch thước, khoảng c&aacute;ch giữa c&aacute;c ph&iacute;m hợp l&yacute;, ph&iacute;m bấm &ecirc;m, h&agrave;nh tr&igrave;nh ph&iacute;m d&agrave;i, độ nảy tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người d&ugrave;ng trong từng thao t&aacute;c nhập liệu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-4.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m được thiết kế mỗi ph&iacute;m sử dụng được hơn 10 triệu lần bấm, ri&ecirc;ng Touchpad cảm ứng với hơn 1 triệu lần chạm m&agrave; kh&ocirc;ng bị lỗi. B&agrave;n ph&iacute;m cũng hỗ trợ đ&egrave;n nền backlit gi&uacute;p bạn ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m việc trong m&ocirc;i trường thiếu s&aacute;ng.</p>\r\n\r\n<h3><strong>Dung lượng pin ổn định, thời lượng sử dụng bền bỉ</strong></h3>\r\n\r\n<p>Dell Inspiron 15 3576 70157552 được trang bị vi&ecirc;n pin dung lượng 42Wh, dạng 4 cell. Tuy dung lượng kh&ocirc;ng qu&aacute; cao như c&aacute;c sản phẩm kh&aacute;c nhưng vẫn đ&aacute;p ứng được c&aacute;c nhu cầu sử dụng h&agrave;ng ng&agrave;y của người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-5.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tuy vậy, c&aacute;c phần cứng &ldquo;ăn điện&rdquo; nhất được trang bị b&ecirc;n trong m&aacute;y (CPU v&agrave; GPU đồ họa rời) đều l&agrave; loại tiết kiệm điện (i5-8250U v&agrave;&nbsp;<a href=\"https://www.notebookcheck.net/AMD-Radeon-520-GPU-Benchmarks-and-Specs.214532.0.html\" target=\"_blank\">Radeon 520</a>), vi&ecirc;n pin của m&aacute;y ho&agrave;n to&agrave;n c&oacute; thể gi&uacute;p chiếc laptop n&agrave;y hoạt động tốt trong thời gian kh&aacute; d&agrave;i. Theo đo đạc thực tế, người d&ugrave;ng c&oacute; thể sử dụng m&aacute;y tới hơn 7 tiếng&nbsp; li&ecirc;n tục khi duyệt web v&agrave; hơn 4 tiếng khi sử dụng để xem video.</p>\r\n\r\n<h3><strong>Kết nối đa dạng, đ&aacute;p ứng mọi nhu cầu cần thiết</strong></h3>\r\n\r\n<p>L&agrave; chiếc laptop phục vụ c&ocirc;ng việc n&ecirc;n Dell Inspiron 15 3576 70157552 c&oacute; đầy đủ c&aacute;c cổng kết nối th&ocirc;ng dụng hiện nay. Cổng sạc, cổng ethernet v&agrave; 2 cổng USB 3.0 Type-A c&ugrave;ng khe tho&aacute;t nhiệt được đặt b&ecirc;n tr&aacute;i. Ở ph&iacute;a đối diện l&agrave; ổ đĩa quang, th&ecirc;m 1 cổng USB 2.0 Type-A nữa c&ugrave;ng khe thẻ SD v&agrave; 1 cổng &acirc;m thanh 3.5mm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-6.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>Cổng kết nối hiện đại&nbsp;<a href=\"https://www.lifewire.com/what-is-usb-3-0-2626038\" target=\"_blank\">USB 3.0</a>&nbsp;cho&nbsp;tốc độ sao ch&eacute;p dữ liệu được nhanh ch&oacute;ng hơn. Cổng HDMI hỗ trợ việc tr&igrave;nh chiếu h&igrave;nh ảnh, &acirc;m thanh từ laptop qua m&aacute;y chiếu, tivi được tiện lợi hơn. Ổ đĩa DVD th&iacute;ch hợp cho việc học ngoại ngữ hay c&agrave;i win, kết nối kh&ocirc;ng d&acirc;y Bluetooth 4.1 cho ph&eacute;p kết nối với c&aacute;c thiết bị như tai nghe, chuột v&agrave; sử dụng tiện lợi hơn.</p>\r\n\r\n<h3><strong>Laptop Dell Inspiron 15 3576 70157552 đảm bảo ch&iacute;nh h&atilde;ng, chất lượng tại hệ thống&nbsp;<a href=\"https://cellphones.com.vn/\" target=\"_blank\">CellphoneS</a></strong></h3>\r\n\r\n<p>H&atilde;y đến với CellphoneS - hệ thống b&aacute;n lẻ điện thoại tr&ecirc;n to&agrave;n quốc để sở hữu cho m&igrave;nh&nbsp;<strong>Laptop Dell Inspiron 15 3576 70157552</strong>&nbsp;đảm bảo ch&iacute;nh h&atilde;ng, chất lượng, mức gi&aacute; hợp l&yacute; c&ugrave;ng nhiều ưu đ&atilde;i hấp dẫn.&nbsp;Tại ​hệ thống&nbsp;<strong>CellphoneS</strong>​, bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi mua sản phẩm n&agrave;y v&igrave; ​CellphoneS c&oacute; chế độ bảo h&agrave;nh &ndash; đổi trả chu đ&aacute;o c&ugrave;ng dịch vụ giao h&agrave;ng &ndash; thu tiền tại nh&agrave; miễn ph&iacute; tr&ecirc;n to&agrave;n quốc. Đặc biệt, đối với những sản phẩm mới ra mắt, kh&aacute;ch h&agrave;ng c&oacute; thể đặt cọc online để ưu ti&ecirc;n nhận m&aacute;y v&agrave; sở hữu nhiều phần qu&agrave; hấp dẫn.</p>\r\n', 2, 250, 3, 0, 14900000, 14900000, '2019-06-10 00:10:34', '1', '2019-06-23 17:53:43', '1', 1, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(25, 2, 'Samsung Galaxy Note 9 Xanh đen', 'samsung-galaxy-note-9-xanh-den', 'bb0cd93933cdc906b66e3fc8a961ee35.jpg', 'd153c29c6407ab35d622591d57ab5e68.jpg#7b8e18f37db91158adc2bad1c146f40d.jpg', 'Điện thoại Samsung Galaxy Note 9 – Smartphone đầu tiên sở hữu bút S Pen hỗ trợ Bluetooth có thể dùng như điều khiển từ xa', '<p><em><a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-note.html\" target=\"_blank\"><strong>Galaxy Note</strong></a>&nbsp;lu&ocirc;n l&agrave; d&ograve;ng sản phẩn đầu ti&ecirc;n được&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\"><strong>Samsung</strong></a>&nbsp;đưa v&agrave;o những c&ocirc;ng nghệ mới hoặc những &yacute; tưởng thiết kế c&aacute;ch t&acirc;n nhất. Tuy nhi&ecirc;n chiếc Note 9 lại đi theo một hướng kh&aacute;c với với tập trung v&agrave;o ho&agrave;n thiện những thứ sẵn c&oacute; v&agrave; đưa ra một số c&ocirc;ng nghệ mới để c&oacute; thể cải thiện trải nghiệm cho người d&ugrave;ng. L&agrave; một người c&oacute; đam m&ecirc; về c&ocirc;ng nghệ cũng như l&agrave; một SamFan ch&acirc;n ch&iacute;nh th&igrave; chiếc si&ecirc;u phẩm&nbsp;<strong>Samsung Galaxy Note 9</strong>&nbsp;sẽ l&agrave; một lựa chọn bạn kh&ocirc;ng n&ecirc;n bỏ qua.</em></p>\r\n\r\n<h3><strong>Thiết kế sang trọng với bộ khung nh&ocirc;m v&agrave; hai mặt lưng k&iacute;nh cường lực&nbsp;<a href=\"https://cellphones.com.vn/sforum/gorilla-glass-5-chinh-thuc-ra-mat\" target=\"_blank\">Gorilla Glass 5</a></strong></h3>\r\n\r\n<p>Nh&igrave;n tổng thể, thiết kế của Note 9 cơ bản vẫn kh&ocirc;ng kh&aacute;c biệt so với Note 8. Kiểu d&aacute;ng chung của m&aacute;y vẫn vậy với khung nh&ocirc;m v&agrave; hai mặt lưng k&iacute;nh cường lực Gorilla Glass 5. Hai m&eacute;p k&iacute;nh mặt trước v&agrave; sau bo cong nhẹ hơn Galaxy S8/S9 v&agrave; c&aacute;c g&oacute;c bo vu&ocirc;ng hơn n&ecirc;n tr&ocirc;ng khỏe khoắn v&agrave; nam t&iacute;nh chứ kh&ocirc;ng mềm mại như d&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s.html\" target=\"_blank\">Galaxy S</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh1.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, phần cạnh của&nbsp;<strong>Galaxy Note 9</strong>&nbsp;kh&ocirc;ng c&ograve;n bo cong v&agrave;o hai mặt k&iacute;nh v&agrave; b&oacute;ng lo&aacute;ng như phi&ecirc;n bản tiền nhiệm. Samsung đ&atilde; gia tăng độ nh&aacute;m ở phần khung viền, c&aacute;c m&eacute;p cạnh m&agrave;n h&igrave;nh đồng thời cũng được v&aacute;t nhẹ gi&uacute;p cho trải nghiệm cầm nắm được an to&agrave;n hơn, kh&oacute; bị tuột tay hơn với k&iacute;ch thước đồ sộ 6.4 inch của m&igrave;nh.</p>\r\n\r\n<h3><strong>Smartphone sở hữu m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.trustedreviews.com/news/what-is-oled-3285263\" target=\"_blank\">OLED</a>&nbsp;cho khả&nbsp;năng hiển thị tốt</strong></h3>\r\n\r\n<p>Một điều đ&aacute;ng khen tr&ecirc;n Note 9 l&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh được n&acirc;ng l&ecirc;n th&agrave;nh 6.4 inch so với tiền nhiệm nhưng k&iacute;ch thước tổng thể kh&ocirc;ng đổi, ch&iacute;nh nhờ Samsung đ&atilde; l&agrave;m cho phần viền cạnh dưới mỏng hơn. Cạnh tr&ecirc;n c&ograve;n lại kh&ocirc;ng đổi khi Samsung n&oacute;i kh&ocirc;ng với m&agrave;n h&igrave;nh tai thỏ (notch) vốn l&agrave; xu hướng thiết kế hiện nay. Về tỉ lệ v&agrave; độ ph&acirc;n giải th&igrave; Note 9 kh&ocirc;ng kh&aacute;c nhiều so với Note 8 khi vẫn sử dụng m&agrave;n h&igrave;nh 18:5:9 k&egrave;m độ ph&acirc;n giải 2960x1440 pixels sắc n&eacute;t.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh2.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>Tất nhi&ecirc;n về chất lượng hiện thị th&igrave; Note 9 vẫn l&agrave; một trong những mẫu smartphone c&oacute; m&agrave;n h&igrave;nh OLED tốt nhất hiện nay. Theo đ&aacute;nh gi&aacute; Display Mate, m&aacute;y c&oacute; độ ch&iacute;nh x&aacute;c m&agrave;u tuyệt đối v&agrave; khả năng hiện thị m&agrave;u sắc ch&iacute;nh x&aacute;c nhất, độ s&aacute;ng tăng cao hơn 27% so với Note 8 v&agrave; độ tương phản l&agrave; 32 %. Tr&ecirc;n thực tế, Note 9 mang đến trải nghiệm ho&agrave;n hảo tr&ecirc;n mọi g&oacute;c cạnh, m&agrave;n h&igrave;nh lớn khi kết hợp c&ugrave;ng m&agrave;u sắc sống động gi&uacute;p cho những trải nghiệm khi xem phim hay chơi game đều thật sự tuyệt hảo.</p>\r\n\r\n<h3><strong>B&uacute;t S Pen được kết nối&nbsp;<a href=\"https://cellphones.com.vn/sforum/bluetooth-5-1-ra-mat-ho-tro-them-dinh-vi-va-dieu-huong-chinh-xac-den-tung-centimet\" target=\"_blank\">Bluetooth</a>&nbsp;chỉ cần sạc 40 gi&acirc;y cho thời gian sử dụng 30 ph&uacute;t</strong></h3>\r\n\r\n<p>Một điểm đặc biệt l&agrave; b&uacute;t S Pen mới đ&atilde; được bổ sung kết nối Bluetooth để sử dụng điều khiển từ xa cho một số ứng dụng tr&ecirc;n điện thoại như chuyển chế độ chụp v&agrave; chụp ảnh, nghe nhạc, ghi &acirc;m, di chuyển tới lui khi xem ảnh v&agrave; điều khiển slide tr&igrave;nh chiếu PowerPoint, &hellip; S Pen đ&atilde; trở n&ecirc;n đa dụng hơn v&agrave; đến được với số người dụng hơn, kh&ocirc;ng chỉ hữu &iacute;ch với nh&oacute;m người cần vẽ vời hay viết ghi ch&uacute; nữa. B&acirc;y giờ bạn đ&atilde; c&oacute; thể tự sướng kh&ocirc;ng lo rung tay hay c&oacute; để điều khiển file thuyết tr&igrave;nh ngay tr&ecirc;n Note 9 với sự hỗ trợ của&nbsp;<a href=\"https://www.samsung.com/vn/apps/samsung-dex/\" target=\"_blank\">DeX&nbsp;</a>HDMI&nbsp;v&agrave; b&uacute;t S Pen m&agrave; kh&ocirc;ng cần d&ugrave;ng đến laptop nữa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh3.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh3.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"Khi nghe tin rò rỉ bút S Pen hỗ trợ Bluetooth, nhiều người đã lo ngại vấn đề sạc pin của nó. Thực tế thì S Pen khing dùng pin mà dùng siêu tụ điện, có thể sạc đầy chỉ trong 40 giây sau khi đút vào máy theo như công bố của Samsung. Mỗi lần sạc bút đủ dùng trong 30 phút ở chế độ kết nỗi Bluetooth với điện thoại, tương đương 200 lần bấm. Khi hết pin, bút vẫn có thể sử dụng các chức năng thông thường như viết, vẽ, tin nhắn động, …  Camera được tích hợp công nghệ Dual Pixel cho khả năng chụp ảnh thiếu sáng ấn tượng Với sự kết hợp của AI (trí thông minh nhân tạo) thì camera Note 9 sẽ mang đến chất lượng hình ảnh khá ấn tượng sau khoảng thời gian sử dụng. Khả năng nhận dạng khá nhanh chóng các trường hợp thường thấy ở smartphone như ống kính bị ẩn, phát hiện ra chủ thể đang nhắm mắt.\" /><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh4.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>Sở hữu khẩu độ cao, khả năng t&ugrave;y chỉnh khẩu độ theo từng m&ocirc;i trường &aacute;nh s&aacute;ng. Note 9 kh&ocirc;ng kh&oacute; để l&agrave;m chủ những khung h&igrave;nh thiếu s&aacute;ng. Độ chi tiết vẫn thể hiện kh&aacute; tốt, m&agrave;u sắc kh&ocirc;ng bị bệch. Ngo&agrave;i ra với lợi thế từ c&ocirc;ng nghệ Dual Pixel t&iacute;ch hợp b&ecirc;n trong cảm biến ảnh của Note 9, tốc độ chụp trong điều kiện thiếu s&aacute;ng vẫn đảm bảo chủ thể kh&ocirc;ng bị rung, nh&egrave;o khi đang di chuyển.</p>\r\n\r\n<h3><strong>Cấu h&igrave;nh mạnh khi sở hữu chip&nbsp;<a href=\"https://cellphones.com.vn/sforum/exynos-9810-vuot-moc-4-000-diem-don-loi-trong-bai-kiem-tra-hieu-nang-cua-geekbench\" target=\"_blank\">Exynos 9810</a>&nbsp;v&agrave; thời lượng pin l&ecirc;n đến 4000 mAh</strong></h3>\r\n\r\n<p>Với những g&igrave; ưu t&uacute; v&agrave; mạnh mẽ nhất th&igrave; Samsung đ&atilde; trang bị cho Note 9 bộ vi xử l&yacute; Exynos 9810 k&egrave;m theo đ&oacute; l&agrave; bộ nhớ RAM 6 GB cho phi&ecirc;n bản 128 GB v&agrave; 8 GB cho phi&ecirc;n bản 512 GB. Thừa sức để đ&aacute;p ứng cho người d&ugrave;ng ở mọi thao t&aacute;c d&ugrave; l&agrave; những tựa game nặng k&yacute; nhất hiện nay th&igrave; mọi thứ vẫn rất mượt m&agrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh5.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"Không những thế, Note 9 còn sở hữu dung lượng pin khủng lên đến 4000 mAh giúp cho người dùng có thể tự tin bật Wi-Fi và 4G liên tục. Với nhu cầu sử dụng hàng ngày thì thông thường 1 ngày rưỡi đến 2 ngày mới phải sạc một lần. Có thể nói đây là yếu tố rất đáng giá vì phần lớn smartphone cao cấp hiện tại chỉ có thời lượng pin trung bình chứ không quá thoải mái sử dụng.  Mua Samsung Galaxy Note 9 giá ưu đãi chỉ có tại CellphoneS Cả về thiết kế, hiệu năng, camera lẫn bút S Pen đều được Samsung trau chuốt từng chút một, tạo nên một khối thống nhất hoàn hảo và khác biệt hơn bất kỳ mẫu máy cao cấp nào trên thị trường hiện nay. Hiện tại CellphoneS đang có mức giá hết sức ưu đãi dành cho sản phẩm Samsung Galaxy Note 10 cùng với đó là thời gian bảo hành dài hạn lên đến 12 tháng từ ngày quý khách mua sản phẩm.\" /></p>\r\n\r\n<p>Kh&ocirc;ng những thế, Note 9 c&ograve;n sở hữu dung lượng pin khủng l&ecirc;n đến 4000 mAh gi&uacute;p cho người d&ugrave;ng c&oacute; thể tự tin bật Wi-Fi v&agrave;&nbsp;<a href=\"https://cellphones.com.vn/sforum/mang-4g-la-gi-toc-do-co-that-su-vuot-troi-hon-3g\" target=\"_blank\">4G</a>&nbsp;li&ecirc;n tục. Với nhu cầu sử dụng h&agrave;ng ng&agrave;y th&igrave; th&ocirc;ng thường 1 ng&agrave;y rưỡi đến 2 ng&agrave;y mới phải sạc một lần. C&oacute; thể n&oacute;i đ&acirc;y l&agrave; yếu tố rất đ&aacute;ng gi&aacute; v&igrave; phần lớn smartphone cao cấp hiện tại chỉ c&oacute; thời lượng pin trung b&igrave;nh chứ kh&ocirc;ng qu&aacute; thoải m&aacute;i sử dụng.</p>\r\n\r\n<h3><strong>Mua Samsung Galaxy Note 9 gi&aacute; ưu đ&atilde;i&nbsp;</strong></h3>\r\n\r\n<p>Cả về thiết kế, hiệu năng, camera lẫn b&uacute;t S Pen đều được Samsung trau chuốt từng ch&uacute;t một, tạo n&ecirc;n một khối thống nhất ho&agrave;n hảo v&agrave; kh&aacute;c biệt hơn bất kỳ mẫu m&aacute;y cao cấp n&agrave;o tr&ecirc;n thị trường hiện nay. Hiện tại CellphoneS đang c&oacute; mức gi&aacute; hết sức ưu đ&atilde;i d&agrave;nh cho sản phẩm Samsung Galaxy Note 10 c&ugrave;ng với đ&oacute; l&agrave; thời gian bảo h&agrave;nh d&agrave;i hạn l&ecirc;n đến 12 th&aacute;ng từ ng&agrave;y qu&yacute; kh&aacute;ch mua sản phẩm.</p>\r\n', 2, 367, 5, 15, 22980000, 18900000, '2019-06-10 00:14:46', '1', '2019-06-27 16:37:01', '1', 1, 1),
(27, 2, 'Samsung Galaxy S8+ Chính hãng', 'samsung-galaxy-s8-chinh-hang', 'cadd73e4617f599e52932e90a8f94976.jpg', 'b96fbb511e7d5d4424ca2eae52a3eb28.jpg#d5276929094f87e470ca2d957917c59d.jpg#ab6c2dc71ee55a8e3aa58b9dfe6ec896.jpg#d7ed3e9c74108cfa3d260b8b097ca6a1.jpg', 'Thiết kế Samsung Galaxy S8 Plus: vẻ đẹp độc đáo từ màn hình “không viền”', '<h2>Samsung Galaxy S8 Plus ch&iacute;nh h&atilde;ng</h2>\r\n\r\n<p>Sau th&agrave;nh c&ocirc;ng vang dội của bộ đ&ocirc;i&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s/galaxy-s7-s7-edge.html\" target=\"_blank\">Galaxy S7, Galaxy S7 Edge</a>, Samsung tiếp tục mang đến cho thị trường nhiều bất ngờ với cặp&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s8.html\" target=\"_blank\">Galaxy S8/S8 Plus</a>&nbsp;sở hữu thiết kế độc đ&aacute;o v&agrave; nhiều t&iacute;nh năng mới th&uacute; vị. Trong đ&oacute;, Galaxy S8 Plus được dự b&aacute;o sẽ l&agrave; đối thủ xứng tầm của d&ograve;ng iPhone Plus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-1.jpg\" style=\"height:458px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vẫn l&agrave; thiết kế nguy&ecirc;n khối với bộ khung nh&ocirc;m v&agrave; hai mặt trước sau ốp k&iacute;nh cường lực b&oacute;ng bảy, nhưng Galaxy S8 Plus đ&atilde; được n&acirc;ng l&ecirc;n một tầm cao mới khi phần viền được l&agrave;m cực mỏng, tr&agrave;n ra s&aacute;t c&aacute;c m&eacute;p cạnh, tạo n&ecirc;n m&agrave;n h&igrave;nh m&agrave; Samsung gọi l&agrave; &ldquo;v&ocirc; cực&rdquo;, tạo n&ecirc;n một vẻ đẹp vừa độc đ&aacute;p vừa quyến rũ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh Samsung Galaxy S8 Plus: hai cạnh cong, hiển thị sắc n&eacute;t đến từng chi tiết</h3>\r\n\r\n<p>Hai cạnh b&ecirc;n của Galaxy S8 Plus được l&agrave;m cong 3D v&agrave; vẫn được t&iacute;ch hợp thanh c&ocirc;ng cụ gi&uacute;p người d&ugrave;ng truy cập nhanh c&aacute;c ứng dụng rất tiện lợi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-2.jpg\" style=\"height:427px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Về m&agrave;n h&igrave;nh, Samsung trang bị độ ph&acirc;n giải 1440 x 2960 theo tỷ lệ mới (18.5:9) nhằm tối ưu h&oacute;a đa nhiệm, kết hợp c&ugrave;ng k&iacute;ch thước lớn, l&ecirc;n đến 6.2 inch mang lại cho người d&ugrave;ng trải nghiệm ấn tượng khi xem phim v&agrave; chơi game giải tr&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Hiệu năng Samsung Galaxy S8 Plus: mạnh mẽ đến kinh ngạc</h3>\r\n\r\n<p>Samsung Galaxy S8 Plus C&ocirc;ng ty được trang bị vi xử l&yacute; Exynos 8895 t&aacute;m nh&acirc;n sản xuất tr&ecirc;n tiến tr&igrave;nh 10nm hiện đại cho hiệu năng cực kỳ đ&aacute;ng nể. N&oacute; đạt kết quả benchmark vượt trội hơn tất cả những smartphone c&oacute; mặt tr&ecirc;n thị trường v&agrave;o thời điểm ra mắt, kể cả iPhone 7 Plus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-3.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Nhiều t&iacute;nh năng hữu &iacute;ch trang bị tr&ecirc;n Samsung Galaxy S8 Plus</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với Galaxy S8 Plus, người d&ugrave;ng tự tin nghe điện thoại dưới trời mưa v&igrave; m&aacute;y được t&iacute;ch hợp ti&ecirc;u chuẩn chống nước IP68 (ng&acirc;m được trong nước ở độ s&acirc;u 1,5m trong v&ograve;ng 30 ph&uacute;t).</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Galaxy S8 Plus hỗ trợ người d&ugrave;ng bảo mật theo nhiều h&igrave;nh thức: bằng mật khẩu, h&igrave;nh vẽ, v&acirc;n tay hoặc mống mắt. Bạn cũng c&oacute; thể mở kh&oacute;a nhanh bằng c&aacute;ch k&iacute;ch hoạt chế độ nhận diện khu&ocirc;n mặt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-5.jpg\" style=\"height:327px; width:640px\" /></p>\r\n\r\n<p>Những thao t&aacute;c hằng ng&agrave;y sẽ được thực hiện nhanh ch&oacute;ng m&agrave; kh&ocirc;ng cần d&ugrave;ng đến đ&ocirc;i tay nhờ trợ l&yacute; ảo Bixby mới (điều khiển bằng giọng n&oacute;i) m&agrave; Samsung trang bị cho Galaxy S8 Plus. Đặc biệt, h&atilde;ng c&ograve;n ph&aacute;t h&agrave;nh một phụ kiện đặc biệt c&oacute; t&ecirc;n Samsung DeX để biến Galaxy S8 Plus th&agrave;nh m&aacute;y t&iacute;nh để b&agrave;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Camera Samsung Galaxy S8 Plus: ng&agrave;y c&agrave;ng gần hơn với m&aacute;y ảnh chuy&ecirc;n nghiệp</h3>\r\n\r\n<p>Với độ ph&acirc;n giải 12MP, ống k&iacute;nh khẩu độ lớn f/1.7, c&ocirc;ng nghệ lấy n&eacute;t DualPixel v&agrave; c&ocirc;ng nghệ chống rung quang học, camera sau của Galaxy S8 Plus mang lại những bức ảnh si&ecirc;u n&eacute;t, kh&ocirc;ng hề thua k&eacute;m m&aacute;y ảnh chuy&ecirc;n nghiệp DSLR.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-7.jpg\" style=\"height:370px; width:640px\" /></p>\r\n\r\n<h3>Thời lượng pin Samsung Galaxy S8 Plus đ&aacute;p ứng tốt nhu cầu</h3>\r\n\r\n<p>Với vi&ecirc;n pin dung lượng 3500mAh v&agrave; con chip Exynos mới tiết kiệm điện năng, Galaxy S8 Plus đ&aacute;p ứng tốt nhu cầu l&agrave;m việc v&agrave; giải tr&iacute; trong ng&agrave;y. M&aacute;y cũng được t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh, người d&ugrave;ng c&oacute; thể nhanh ch&oacute;ng nạp lại năng lượng cho thiết bị th&ocirc;ng qua cổng USB Type-C (cắm được c&aacute;p theo cả 2 chiều) v&agrave; đế sạc kh&ocirc;ng d&acirc;y.</p>\r\n', 2, 430, 53, 20, 17900000, 12700000, '2019-06-14 21:46:25', '1', '2019-06-14 21:46:25', '', 1, 1),
(28, 2, 'Samsung Galaxy S10 White', 'samsung-galaxy-s10-white', '15e1004aae0ad9dc632fab1c2c49a46f.jpg', 'b4b312066a992ca228092a0fd28d66d4.jpg#6143e44c305aec0801910443dc700a6c.png', 'Điện thoại Samsung Galaxy S10 - Cập nhật thông tin cấu hình, giá bán, chương trình khuyến mãi', '<p><em>Sự kiện Samsung Unpacked 2019 đ&atilde; kh&eacute;p lại với th&agrave;nh c&ocirc;ng kh&ocirc;ng thể tuyệt vời hơn, ch&iacute;nh l&agrave; biết thế hệ S thứ 10 của m&igrave;nh th&agrave;nh t&acirc;m điểm, chiếm s&oacute;ng to&agrave;n bộ spotlight của Đại hội MWC 2019. Thực sự, Samsung Galaxy S10 kh&ocirc;ng hẳn l&agrave; bản n&acirc;ng cấp ho&agrave;n hảo về mọi mặt nhưng n&oacute; hội tụ đủ, đ&uacute;ng những yếu tố cần thiết để người d&ugrave;ng cả thấy kh&ocirc;ng nh&agrave;m ch&aacute;n v&agrave; h&agrave;o hứng muốn sở hữu. Samsung Galaxy S10 cũng ch&iacute;nh l&agrave; bước s&atilde;i ch&acirc;n xa bắt kịp với c&aacute;c đối thủ song vẫn chứng minh ng&ocirc;i vương của bản th&acirc;n sau một năm nhạt nh&ograve;a.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Thiết kế đỉnh cao &ndash; điểm nhấn m&agrave;n h&igrave;nh &ldquo;nốt ruồi&rdquo;</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ Infinity O đ&atilde; được Samsung c&ocirc;ng bố v&agrave; ứng dụng tr&ecirc;n c&aacute;c smartphone tầm trung của m&igrave;nh. Tuy kh&ocirc;ng c&ograve;n qu&aacute; xa lạ nhưng với ph&acirc;n kh&uacute;c cao cấp đ&acirc;y l&agrave; một sự mới mẻ b&ecirc;n cạnh một rừng tai thỏ đủ thế loại. Tấm nền hiển thị tr&ecirc;n S10 cũng đ&atilde; được n&acirc;ng cấp, v&agrave; giờ đ&acirc;y sau bao nhi&ecirc;u năng gắn b&oacute; với Super AMOLED, Samsung gọi c&ocirc;ng nghệ mới của m&igrave;nh l&agrave; Dynamic AMOLED. Samsung Galaxy S10 c&oacute; độ ph&acirc;n giải m&agrave;n h&igrave;nh Quad HD+ với tỷ lệ 19:9 mới, điều đặt biệt l&agrave; độ s&aacute;ng của tấm nền mới l&ecirc;n đến 1200nits đạt chuẩn HDR10 v&agrave; HDR10+ đầu ti&ecirc;n tr&ecirc;n thiết bị duy động. Kh&ocirc;ng những thế Samsung Galaxy S10 c&ograve;n được c&ocirc;ng nhận đạt 100% chuẩn m&agrave;u điện ảnh DCI-P3 v&agrave; độ tương phản khủng khiếp 2.000.000:1. Hiển thị tr&ecirc;n Galaxy S10 kh&ocirc;ng c&oacute; g&igrave; để c&oacute; thể ph&agrave;n n&agrave;n bất kể mục đ&iacute;ch sử dụng, điều kiện m&ocirc;i trường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s10.jpg\" style=\"height:408px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vẫn l&agrave; triết l&yacute; thiết kế quen thuộc của Samsung từ 2016, kim loại c&ugrave;ng với 2 mặt k&iacute;nh cong nhưng tr&igrave;nh độ ho&agrave;n thiện của Samsung Galaxy S10 đ&atilde; đạt đến tr&igrave;nh độ tuyệt hảo đến từng chi tiết nhỏ. M&agrave;u sắc cũng l&agrave; điểm thu h&uacute;t của c&aacute;c series S10 vẫn bắt kịp xung hướng Gradient nhưng c&aacute;ch l&agrave;m của Samsung v&ocirc; c&ugrave;ng tinh tế v&agrave; nhẹ nh&agrave;ng d&ugrave; l&agrave; chuyển m&agrave;u nhưng vẫn giữ t&ocirc;ng m&agrave;u ch&iacute;nh chủ đạo kh&ocirc;ng kề qu&aacute; rực, qu&aacute; chỏi nhau. Khung viền được đ&aacute;nh b&oacute;ng, c&ugrave;ng với mặt trước một m&agrave;u đen tạo cho viền c&oacute; cảm đ&atilde; mỏng lại c&agrave;ng mỏng hơn. Cụm ba camera sau đặt ngang hơi hướng của Note 8, kh&ocirc;ng c&ograve;n cảm biến v&acirc;n tay b&agrave;n chạm nữa n&ecirc;n mặt lưng trong gọn g&agrave;n c&acirc;n đối. Cạnh tr&ecirc;n l&agrave; khe sim + thẻ nhớ, dưới vẫn l&agrave; cổng 3.5mm + cổng sạc type-C + loa ngo&agrave;i, ph&iacute;m &acirc;m lượng + ph&iacute;m Bixby vẫn b&ecirc;n tr&aacute;i, b&ecirc;n phải l&agrave; ph&iacute;m nguồn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/s10_-_m_t_sau.jpg\" style=\"height:605px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tuy được đ&aacute;nh gi&aacute; cao về thiết kế song Samsung Galaxy S10 vẫn vấp phải nhưng tranh c&atilde;i về mặt thiết kế. Về ph&iacute;m nguồn đặt qu&aacute; cao, g&acirc;y thay t&aacute;c cho những người c&oacute; b&agrave;n tay nhỏ kh&oacute; khăn hơn. Hay kịch liệt hơn ch&iacute;nh l&agrave; c&ocirc;ng nghệ Infinity - O, phần nhỏ người d&ugrave;ng kh&ocirc;ng chấp nhận với việc m&agrave;n h&igrave;nh bị 1 lỗ đen ngứa mắt, cản trở hiển thị, phần c&ograve;n lại th&igrave; chấp nhận v&igrave; giới hạn c&ocirc;ng nghệ cũng như thấy b&igrave;nh thường v&igrave; kh&ocirc;ng ản hưởng qu&aacute; nhiều đến khả năng sử dụng hay hiển thị. Rồi ngay cả c&ocirc;ng nghệ mới v&acirc;n tay si&ecirc;u &acirc;m cũng bị ch&ecirc; tr&aacute;ch l&agrave; qu&aacute; chậm, kh&ocirc;ng thể d&aacute;m m&agrave;n h&igrave;nh&hellip; Nhưng tất cả những điều tr&ecirc;n đều kh&ocirc;ng thể phủ nhận l&agrave; Samsung Galaxy S10 gần như tiệm cận đến sự ho&agrave;n hảo.</p>\r\n\r\n<h3><strong>Bộ vi xử l&yacute; mới ho&agrave;n to&agrave;n, dung lượng pin cao chưa từng c&oacute;</strong></h3>\r\n\r\n<p>Ở thị trường Việt Nam, Samsung trang bị con chip &ldquo;nh&agrave; l&agrave;m&rdquo; Exynos 9820 Octa-core, tiến tr&igrave;nh 8nm mới nhất, 3 cụm nh&acirc;n phối hợp với nhau gồm 2xCustomCPU(M4), 2xCortexA75 v&agrave; 4xCortexA55 cho ph&eacute;p xung nhịp tối đa l&ecirc;n đến 2.7Hz. Về GPU th&igrave; Galaxy S10 trang bị Mali G76MP12 tăng đến 40% so với GPU đang trang bị tr&ecirc;n S9. Hỗ trợ chuẩn RAM cao nhất 4x 16-bit CHLPDDR4x l&ecirc;n đến 12GB, Exynos 9820 hổ trợ USF3.0 nhanh gấp 2 lần chuẩn 2.1 (2.9GHz). B&ecirc;n cạnh đ&oacute; tr&ecirc;n Exynos 9820 c&ograve;n được trang bị 2 nh&acirc;n NPU ri&ecirc;ng biệt hổ trợ c&aacute;c t&iacute;nh năng AI t&iacute;ch hợp v&agrave; d&ugrave;ng AI để do lường ch&iacute;nh x&aacute;c c&oacute; tiến tr&igrave;nh tr&ecirc;n m&aacute;y ph&acirc;n bổ t&agrave;i nguy&ecirc;n m&aacute;y, c&ograve;n c&oacute; c&aacute;c khu vực d&agrave;nh ri&ecirc;ng cho bảo mật, xử l&iacute; h&igrave;nh ảnh&hellip; Theo l&iacute; thuyết th&igrave; năng lực xử l&yacute; của 9820 cao hơn 20% so với 9810 v&agrave; tiết kiệm pin hơn 40%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s10-cau-hinh.jpg\" style=\"height:343px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dung lượng pin cũng l&agrave; thứ được Samsung nhấn mạnh cho S10, với vi&ecirc;n pin 4100mAh lớn nhất trong c&aacute;c flagship Samsung hiện tại cho ph&eacute;p d&ugrave;ng trong cả ng&agrave;y d&agrave;i, thậm ch&iacute; sạc ngược cho thiết bị kh&aacute;c bằng t&iacute;nh năng Wireless Powershare mới. Đ&acirc;y cũng l&agrave; lần đầy ti&ecirc;n, Samsung n&acirc;ng tốc độ sạc sau vụ việc Note7, từ 18watt l&ecirc;n 25watt kh&aacute; d&egrave; dặt nhưng vẫn l&agrave;m ấm l&ograve;ng người sử dụng khi m&agrave; Samsung đ&atilde; ở qu&aacute; l&acirc;u với chuẩn Quick Charge 2.0.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Screenshot_5.jpg\" style=\"height:318px; width:840px\" /></p>\r\n\r\n<p>Với cấu h&igrave;nh mạnh mẻ hiện tại cũng dung lượng pin thoải m&aacute;i, Galaxy S10 hầu như c&oacute; thẻ g&aacute;nh mọi t&aacute;c vụ nặng nề nhất tr&ecirc;n Android b&acirc;y giờ như chỉnh sửa h&igrave;nh ảnh, l&agrave;m video, t&aacute;c vụ AR, chơi c&aacute;c game khủng nhất tr&ecirc;n CH Play m&agrave; kh&ocirc;ng lo lắng t&igrave;nh trạng chậm, giật lag&hellip;</p>\r\n\r\n<h3><strong>Gia nhập hội flagship ba camera sau &ldquo;chậm nhưng chắc&rdquo;</strong></h3>\r\n\r\n<p>Thiếu s&oacute;t nếu kh&ocirc;ng đề cập đến những n&acirc;ng cấp s&aacute;ng gi&aacute; tr&ecirc;n bộ 3 camera tr&ecirc;n Galaxy S10. Ngo&agrave;i ống k&iacute;nh ch&iacute;nh f1.5-2.4 c&oacute; Dualpixel v&agrave; lấy n&eacute;t theo pha, c&ugrave;ng ống tele 2x f2.4 th&igrave; t&ecirc;n S10 c&ograve;n c&oacute; th&ecirc;m 1 mắt si&ecirc;u rộng l&ecirc;n đến 123 độ f2.2 Điểm được Samsung nhấn mạnh nhất năm nay tr&ecirc;n bộ ba camera ch&iacute;nh l&agrave; chất lượng video khi m&agrave;n được trang bị th&ecirc;m t&iacute;nh năng Steady Shot khiến cho khả năng chống rung tuyệt vời hơn. B&ecirc;n cạnh đ&oacute; sau, c&oacute; v&agrave;i sự thay đổi ch&iacute;nh l&agrave; t&iacute;nh năng x&oacute;a ph&ocirc;ng đ&atilde; được Samsung chuyển từ cam tele về cam ch&iacute;nh. Vừa c&oacute; lợi cũng vừa c&oacute; hại, ảnh từ cam ch&iacute;nh cho ra m&agrave;u sắc chi tiết hay độ s&aacute;ng đều nhỉnh hơn cam tele, g&oacute;c cũng rộng hơn nhưng b&ugrave; lại khi muốn lấy được gần chủ thể phải zoom bằng ch&acirc;n, v&agrave; khả năng t&aacute;ch nền tạo bokeh đều bằng phần mềm n&ecirc;n sẽ c&oacute; đ&ocirc;i ch&uacute;t kh&aacute;c biệt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Screenshot_4.jpg\" style=\"height:488px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm nay d&atilde;y nhạy s&aacute;ng cũng ch&iacute;nh l&agrave; một trong những sự cả tiến lớn. Khi m&agrave; cả cam trước lẫn cam sau đều phải gọi l&agrave; xuất sắc khi chụp c&aacute;c bức ngược s&aacute;ng, hay gần nguồn s&aacute;ng mạnh. N&oacute;i về camera trước, sự quay lại của lấy n&eacute;t tự động v&agrave; bổ sung th&ecirc;m g&oacute;c chụp rộng hơn l&agrave;m cho c&aacute;c t&ugrave;y chọn selfie phong ph&uacute; v&agrave; chuy&ecirc;n nghiệp hơn. M&agrave;u da v&agrave; c&aacute;c chi tiết đều được giữ lại nhiều hơn, do độ ph&acirc;n giải được n&acirc;ng l&ecirc;n từ 8MP l&ecirc;n 10MP.</p>\r\n\r\n<h3><strong>Giao diện mới OneUI hiện đại, hổ trợ tốt m&agrave;n h&igrave;nh d&agrave;i</strong></h3>\r\n\r\n<p>C&oacute; qu&aacute; nhiều b&agrave;i đ&aacute;nh gi&aacute; trải nghiệm OneUI kể từ khi S10 chưa xuất hiện, hầu như giao diện được trang bị tr&ecirc;n S10 sẽ kh&ocirc;ng kh&aacute;c qu&aacute; nhiều tr&ecirc;n S9 hay Note9 được cập nhật. OneUI được khen nức nở bởi t&iacute;nh tiện dụng c&ugrave;ng với những thay đổi th&acirc;n thiện hơn với người d&ugrave;ng, c&aacute;c t&iacute;nh năng như Darkmode hay điều khiển cử chỉ đều được trang bị ngo&agrave;i ra nhưng thay đổi nhỏ về c&aacute;ch sắp xếp hiện thị cũng ghi điểm c&ocirc;ng cho OneUI trong mắt người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/s10_-_OneUI.jpg\" style=\"height:566px; width:840px\" /></p>\r\n\r\n<p>Tuy nhi&ecirc;n v&agrave;i vấn đề tr&ecirc;n OneUI ch&iacute;nh l&agrave; bộ Icon mới trong hoạt h&igrave;nh v&agrave; k&eacute;m sang hẳn so với giao diện cũ. V&agrave; c&aacute;ch điều hướng cử chỉ tr&ecirc;n OneUI kh&aacute; l&agrave; ngu, chả mấy tuận tiện cho người d&ugrave;ng.</p>\r\n\r\n<h3><strong>C&aacute;c t&iacute;nh năng mới được trang bị tr&ecirc;n Galaxy S10</strong></h3>\r\n\r\n<p>Phải kể đến t&iacute;nh năng được Samsung nhấn kh&aacute; s&acirc;u v&agrave; mạnh tr&ecirc;n S10 ch&iacute;nh l&agrave; t&iacute;nh năng sạc ngược Wireless Powershare. Thực tế đ&acirc;y kh&ocirc;ng phải l&agrave; t&iacute;nh năng mới do Samsung nghĩ ra, nhưng trước đ&oacute; với Huawei chưa bao giờ biến t&iacute;nh năng n&agrave;y trở n&ecirc;n hữu &iacute;ch, bởi mang t&iacute;nh tr&igrave;nh diễn nhiều hơn l&agrave; tiện &iacute;ch. Tuy nhi&ecirc;n với hệ sinh th&aacute;i Galaxy, như tai nghe Galaxy Bubs hay đồng hồ Galaxy Watch, Samsung sẽ gi&uacute;p t&iacute;nh năng n&agrave;y c&oacute; nhiều đất diễn hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-8.jpg\" style=\"height:444px; width:840px\" /></p>\r\n\r\n<p>Một t&iacute;nh năng được xem l&agrave; điểm nhấn của S10 ch&iacute;nh l&agrave; cảm biến v&acirc;n tay si&ecirc;u &acirc;m 3D. đ&acirc;y cũng kh&ocirc;ng phải l&agrave; t&iacute;nh năng mới bởi n&oacute; đ&atilde; được Qualcomm nghi&ecirc;n cứu v&agrave; giới thiệu từ l&acirc;u, nhưng phải đến gần đ&acirc;y khi vị tr&iacute; của n&oacute; được đưa xuống dưới m&agrave;n h&igrave;nh th&igrave; mới được xem l&agrave; t&iacute;nh năng mới, v&agrave; Samsung l&agrave; nh&agrave; sản xuất đầu ti&ecirc;n d&ugrave;ng t&iacute;nh năng n&agrave;y. Cơ chế hoạt độ bằng s&oacute;ng &acirc;m vẻ bản đồ 3D v&acirc;n tay, ch&iacute;nh đến từng nm nếu so với c&ocirc;ng nghệ nhận diện Gương mặt th&igrave; đ&acirc;y ch&iacute;nh l&agrave; FaceID của Apple v&igrave; n&oacute; d&ugrave;ng h&igrave;nh ảnh 3D của sinh trắc học chứ kh&ocirc;ng pahir l&agrave; ảnh 2D th&ocirc;ng thường. T&iacute;nh năng tương lai n&agrave;y cho ph&eacute;p sử dụng cả khi ng&oacute;n tay bị d&iacute;nh nước, dầu, lotion&hellip; nhưng lại cự tuyệt d&aacute;n cường lực hay miếng d&aacute;n th&ocirc;ng thường. Trong tương lai Samsung sẽ chắc chắn cho ra mắt những miếng d&aacute;n hỗ trợ c&ocirc;ng nghệ n&agrave;y vừa d&ugrave;ng được v&acirc;n tay, vừa bảo vệ điện thoại khỏi trầy xướt.</p>\r\n', 2, 320, 310, 20, 20900000, 15400000, '2019-06-10 00:20:01', '1', '2019-06-29 15:12:27', '1', 1, 1),
(29, 10, 'Loa Bluetooth Xiaomi Mi Basic 2 Chính hãng', 'loa-bluetooth-xiaomi-mi-basic-2-chinh-hang', '21944f52af19e4446f7755621031fbd2.jpg', '6c6044d233d6a8373c7f214ae4900462.jpg', 'Loa Bluetooth Xiaomi Mi Basic 2 rất tinh tế, thuận tiện cho di động', '<h2>Đặc điểm loa Bluetooth Xiaomi Mi Basic 2 Ch&iacute;nh h&atilde;ng</h2>\r\n\r\n<p>Như truyền thống của thương hiệu,&nbsp;<strong>loa Bluetooth Xiaomi Mi Basic 2</strong>&nbsp;được b&aacute;n với mức gi&aacute; hấp dẫn m&agrave; chất lượng kh&ocirc;ng hề thua k&eacute;m nhiều sản phẩm gi&aacute; c&oacute; gi&aacute; cao hơn.&nbsp;<a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/loa/xiaomi.html\" target=\"_blank\">Loa Xiaomi</a>&nbsp;l&agrave; sự lựa chọn l&yacute; tưởng với những người d&ugrave;ng muốn &ldquo;đổi gi&oacute;&rdquo; khi nghe nhạc d&ugrave; điều kiện t&agrave;i ch&iacute;nh hạn chế.</p>\r\n\r\n<p><strong>Loa Xiaomi Mi Basic 2</strong>&nbsp;c&oacute; k&iacute;ch thước vừa phải v&agrave; trọng lượng nhẹ, thuận tiện để người d&ugrave;ng mang theo tr&ecirc;n tay hay bỏ v&agrave;o ba l&ocirc;, t&uacute;i x&aacute;ch. B&ecirc;n cạnh đ&oacute;, loa sở hữu phần khung nh&ocirc;m v&agrave; c&aacute;c cạnh v&aacute;t được ho&agrave;n thiện tinh tế, tất cả pha trộn lại với nhau một c&aacute;ch ho&agrave;n hảo tạo n&ecirc;n vẻ đẹp đầy phong c&aacute;ch cho sản phẩm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/DO-AN-TN-2019/public/upload/images/Loa-Bluetooth-Xiaomi-Mi-Basic-2-Chinh-hang-4.jpg\" style=\"height:570px; width:840px\" /></p>\r\n\r\n<p><strong>Loa Xiaomi Mi Basic 2</strong>&nbsp;c&oacute; k&iacute;ch thước vừa phải v&agrave; trọng lượng nhẹ, thuận tiện để người d&ugrave;ng mang theo tr&ecirc;n tay hay bỏ v&agrave;o ba l&ocirc;, t&uacute;i x&aacute;ch. B&ecirc;n cạnh đ&oacute;, loa sở hữu phần khung nh&ocirc;m v&agrave; c&aacute;c cạnh v&aacute;t được ho&agrave;n thiện tinh tế, tất cả pha trộn lại với nhau một c&aacute;ch ho&agrave;n hảo tạo n&ecirc;n vẻ đẹp đầy phong c&aacute;ch cho sản phẩm.</p>\r\n\r\n<p><img alt=\"\" src=\"/DO-AN-TN-2019/public/upload/images/Loa-Bluetooth-Xiaomi-Mi-Basic-2-Chinh-hang-2.jpg\" style=\"height:481px; width:840px\" /></p>\r\n\r\n<h3>Loa Bluetooth Xiaomi Mi Basic 2 t&iacute;ch hợp micro</h3>\r\n\r\n<p>Với micro t&iacute;ch hợp,&nbsp;<strong><a href=\"https://cellphones.com.vn/loa-bluetooth-xiaomi-mi-basic-2-chinh-hang.html\" target=\"_self\">loa Xiaomi Mi Basic 2 ch&iacute;nh h&atilde;ng</a></strong>&nbsp;gi&uacute;p người d&ugrave;ng dễ d&agrave;ng trả lời cuộc gọi đến m&agrave; kh&ocirc;ng cần d&ugrave;ng điện thoại. Thay v&agrave;o đ&oacute;, bạn chỉ cần nhấn ph&iacute;m nguồn tr&ecirc;n loa, giữ đ&ocirc;i tay rảnh rang để l&agrave;m nhiều việc kh&aacute;c trong l&uacute;c tr&ograve; chuyện như xem tin tức, lau ch&ugrave;i b&agrave;n ghế...</p>\r\n\r\n<p><img alt=\"\" src=\"/DO-AN-TN-2019/public/upload/images/Loa-Bluetooth-Xiaomi-Mi-Basic-2-Chinh-hang-3.jpg\" style=\"height:493px; width:840px\" /></p>\r\n\r\n<h3>Thời lượng pin loa Bluetooth Xiaomi Mi Basic 2 rất ấn tượng</h3>\r\n\r\n<p>Với vi&ecirc;n pin lithium polymer cho 10 giờ ph&aacute;t nhạc li&ecirc;n tục,&nbsp;<strong>loa di động Xiaomi Mi Basic 2</strong>&nbsp;cung cấp thời lượng pin tuyệt vời để người d&ugrave;ng thoải m&aacute;i nghe nhạc giải tr&iacute; c&aacute; nh&acirc;n hoặc tổ chức những cuộc vui chơi c&ugrave;ng người th&acirc;n v&agrave; bạn b&egrave; trong cả ng&agrave;y m&agrave; kh&ocirc;ng phải lo lắng về việc sạc pin.</p>\r\n', 2, 560, 0, 10, 600000, 450000, '2019-06-26 17:32:25', '1', '2019-06-26 17:32:25', '1', 1, 0),
(32, 16, 'Intel Core i3 10105F / 6MB / 4 nhân 8 luồng / LGA 1200', 'intel-core-i3-10105f-6mb-4-nhan-8-luong-lga-1200', 'db2a7fd18bee6458562518c83867168b.jpg', '40eca09bc9b49831b47f11aefd1ab3a9.jpg', 'Thông tin chung:\r\n\r\nHãng sản xuất: Intel\r\nBảo hành: 36 Tháng', '<h2>Đ&aacute;nh gi&aacute; chi tiết Intel Core i3 10105F / 4 nh&acirc;n 8 luồng / LGA 1200</h2>\r\n\r\n<p>CPU Intel Core i3-10105F l&agrave; một trong những bộ vi xử l&yacute; mới thế hệ thứ 10 thuộc d&ograve;ng Comet Lake Refresh. Mang trong m&igrave;nh sức mạnh 4 nh&acirc;n 8 luồng v&agrave; xung nhịp đơn nh&acirc;n l&ecirc;n đến 4.4Ghz, bộ vi xử l&yacute; n&agrave;y v&ocirc; c&ugrave;ng mạnh mẽ d&agrave;nh cho những bộ m&aacute;y thuần gaming tầm trung.</p>\r\n\r\n<h3><strong>Đặc tả kỹ thuật ấn tượng</strong></h3>\r\n\r\n<p>Th&ocirc;ng số kỹ thuật của bộ vi xử l&yacute; Intel Core i3-10105F tương tự như&nbsp;<a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\">CPU</a>&nbsp;Intel Core i3-10100F tuy nhi&ecirc;n c&oacute; 1 số cải tiến. Chi tiết mẫu i3-10105F n&agrave;y c&oacute; 4 nh&acirc;n 8 luồng, xung nhịp cơ bản 3.7GHz v&agrave; xung đơn nh&acirc;n l&agrave; 4.4Ghz. Mức dung lượng bộ nhớ đệm l&ecirc;n đến 6 MB Intel&reg; Smart Cache. Bộ nhớ tối đa c&oacute; thể hỗ trợ l&agrave; 128GB DDR4-2666, TDP 65W v&agrave; vẫn chạy tr&ecirc;n socket LGA-1200.</p>\r\n\r\n<p><img alt=\"Intel Core i3 10105F / 4 nhân 8 luồng / LGA 1200\" src=\"https://file.hstatic.net/1000026716/file/bo-vi-xu-ly-intel-core-i3-10105f-4-nhan-8-luong-lga-1200_8d7883a83a794b719e61f68055cfe48e.jpg\" /></p>\r\n\r\n<h3><strong>Kh&ocirc;ng c&oacute; nh&acirc;n đồ họa t&iacute;ch hợp</strong></h3>\r\n\r\n<p>Với hậu tố &quot;F&quot; trong t&ecirc;n model, mẫu vi xử l&yacute; n&agrave;y kh&ocirc;ng c&oacute; iGPU l&agrave; bởi nh&oacute;m kh&aacute;ch h&agrave;ng chủ yếu m&agrave; n&oacute; hướng tới l&agrave; game thủ. Với c&aacute;c game thủ th&igrave; một chiếc vi xử l&yacute; t&iacute;ch hợp GPU sẽ kh&ocirc;ng đủ đ&aacute;p ứng trải nghiệm chơi game m&agrave; thay v&agrave;o đ&oacute; l&agrave; một chiếc&nbsp;<a href=\"https://gearvn.com/collections/vga-card-man-hinh\">card m&agrave;n h&igrave;nh</a>&nbsp;tương th&iacute;ch v&agrave; chuy&ecirc;n dụng theo nhu cầu của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Intel Core i3 10105F / 4 nhân 8 luồng / LGA 1200\" src=\"https://file.hstatic.net/1000026716/file/bo-vi-xu-ly-intel-core-i3-10105f-4-nhan-8-luong-lga-1200-1_3270c23f21364e33b770072a1e364c5f.jpg\" /></p>\r\n\r\n<h3><strong>Tương th&iacute;ch với c&aacute;c bo mạch chủ thế hệ cũ</strong></h3>\r\n\r\n<p>Với việc c&oacute; thể sử dụng socket LGA-1200 n&ecirc;n bạn ho&agrave;n to&agrave;n c&oacute; thể chạy n&oacute; c&ugrave;ng những bo mạch chủ chipset Intel 400 Series thế hệ cũ cũng như những mẫu bo mạch chủ thế hệ mới 500 Series (trong đ&oacute; nổi bật nhất hiện tại l&agrave;&nbsp;<a href=\"https://gearvn.com/collections/mainboard-z590\">bo mạch chủ Z590</a>).</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ theo d&otilde;i nhiệt</strong></h3>\r\n\r\n<p>Tr&aacute;nh việc nhiệt độ qu&aacute; n&oacute;ng l&agrave;m ảnh hưởng xấu đến vi xử l&yacute;, Cảm biến nhiệt kỹ thuật số khi c&oacute; sự cố (DTS)&nbsp; gi&uacute;p ph&aacute;t hiện nhiệt độ của l&otilde;i từ đ&oacute; c&aacute;c t&iacute;nh năng quản l&yacute; nhiệt l&agrave;m giảm ti&ecirc;u thụ điện của g&oacute;i để m&aacute;y lu&ocirc;n hoạt động ổn định, an to&agrave;n v&agrave; tốt nhất.</p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ si&ecirc;u ph&acirc;n luồng</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ Intel&reg; HT (Hyper threading) cho ta hai luồng xử l&yacute; tr&ecirc;n mỗi nh&acirc;n vật l&yacute;. Những ứng dụng ph&acirc;n luồng cao sẽ gi&uacute;p m&aacute;y xử l&yacute; được nhiều c&ocirc;ng việc c&ugrave;ng l&uacute;c, từ đ&oacute; ho&agrave;n th&agrave;nh c&ocirc;ng việc nhanh hơn.</p>\r\n\r\n<p><img alt=\"Intel Core i3 10105F / 4 nhân 8 luồng / LGA 1200\" src=\"https://file.hstatic.net/1000026716/file/bo-vi-xu-ly-intel-core-i3-10105f-4-nhan-8-luong-lga-1200-2_c4cfd9b8f2c241f9b83d309cfc4c454c.jpg\" /></p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ Intel Turbo Boost 2.0</strong></h3>\r\n\r\n<p>L&agrave;m tăng tần số của bộ xử l&yacute; i3-10105F một c&aacute;ch động khi cần bằng c&aacute;ch khai th&aacute;c khoảng trống nhiệt v&agrave; điện để tăng tốc khi cần v&agrave; n&acirc;ng cao khả năng tiết kiệm điện khi kh&ocirc;ng cần.</p>\r\n\r\n<h3><strong>Năng suất tăng cường với Intel Optane</strong></h3>\r\n\r\n<p>Bộ vi xử l&yacute; i3 10105F hỗ trợ c&ocirc;ng nghệ Intel Optane tạo ra tốc độ phản hồi tốt hơn khi l&agrave;m việc li&ecirc;n quan đến dữ liệu. Bộ nhớ Intel Optane l&agrave; c&ocirc;ng nghệ th&ocirc;ng minh gi&uacute;p tăng tốc độ phản hồi của m&aacute;y t&iacute;nh.</p>\r\n\r\n<h3><strong>Intel Core i3 10105F / 4 nh&acirc;n 8 luồng / LGA 1200 c&oacute; ph&ugrave; hợp với bạn?</strong></h3>\r\n\r\n<p>Nếu bạn đang muốn x&acirc;y dựng cho m&igrave;nh một bộ PC tầm trung chất lượng cao, gi&aacute; rẻ th&igrave; Intel Core i3 10105F / 4 nh&acirc;n 8 luồng / LGA 1200 sẽ l&agrave; bộ vi xử l&yacute; d&agrave;nh cho bạn. Mạnh mẽ tương đương với những CPU i7 thế hệ 7 trở về trước v&agrave; kh&ocirc;ng c&oacute; nh&acirc;n đồ họa t&iacute;ch n&ecirc;n nếu bạn sẽ cần trang bị th&ecirc;m cho m&igrave;nh một chiếc card đồ họa. Nếu mong muốn của bạn thỏa m&atilde;n 2 điều tr&ecirc;n th&igrave; đừng ngần ngại đến ngay Gearvn để sở hữu bộ vi xử l&yacute; n&agrave;y.</p>\r\n', 1, 12, 0, 5, 3100000, 2990000, '2021-07-01 17:37:32', '1', '2021-07-01 17:37:32', '1', 1, 1),
(33, 16, 'CPU Intel Core i5 10400F / 12MB / 2.9GHz / 6 Nhân 12 Luồng / LGA 1200', 'cpu-intel-core-i5-10400f-12mb-2-9ghz-6-nhan-12-luong-lga-1200', 'fa959f6bad86640c510c6067c4c0a64c.jpg', 'a699eb2168b546dcad1585d0c7ef40d1.jpg', 'Thông tin chung:\r\n\r\nHãng sản xuất: Intel\r\nBảo hành: 36 Tháng', '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết CPU&nbsp;Intel Core i5-10400F</strong></h2>\r\n\r\n<h3><strong>Hiệu năng cải tiến</strong></h3>\r\n\r\n<p><strong>CPU Intel Core i5-10400F&nbsp;</strong>đ&atilde; khiến thị trường d&ograve;ng chip tầm trung &quot;n&oacute;ng&quot; hơn rất nhiều. Với 6 nh&acirc;n 12 luồng, xung nhịp 2.9GHz v&agrave; turbo boost l&ecirc;n 4.3GHz, quả l&agrave; l&agrave; sự chọn tuyệt vời cho việc chơi game cho tới stream game, vượt xa người tiền nhiệm&nbsp;<a href=\"https://gearvn.com/products/core-i5-9400f-9m-2-9ghz-6-nhan-6-luong\">i5-9400F</a>&nbsp;khi kh&ocirc;ng thể ho&agrave;n th&agrave;nh tốt việc stream game.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-intel-core-i5-10400f-01_27be7ce254f542298abb580a69ad304e.jpg\" /></p>\r\n\r\n<h3><strong>Tương th&iacute;ch tuyệt vời</strong></h3>\r\n\r\n<p><strong><a href=\"https://gearvn.com/products/intel-core-i5-10400f\">CPU&nbsp;Intel Core i5-10400F</a>&nbsp;</strong>dễ d&agrave;ng ghi điểm trong mắt game thủ khi cực k&igrave; &quot;hợp gu&quot; với&nbsp;<a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\">mainboard</a>&nbsp;gi&aacute; rẻ&nbsp;<a href=\"https://gearvn.com/collections/mainboard-b460-comet-lake-s\">B460</a>, gi&uacute;p c&aacute;c bạn c&oacute; thể tiết kiệm được hầu bao của m&igrave;nh cho những th&agrave;nh phần kh&aacute;c. Mặc d&ugrave; gi&aacute; cả kh&ocirc;ng cao nhưng hiệu năng của&nbsp;<a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\">bộ vi xử l&yacute;</a>&nbsp;mang lại kh&ocirc;ng hề nhỏ t&iacute; n&agrave;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-intel-core-i5-10400f-02_905c99c2e93c4614a7ed26d09708c0d8.jpg\" /></p>\r\n', 1, 11, 0, 10, 5000000, 4500000, '2021-07-01 17:39:08', '1', '2021-07-02 22:07:19', '1', 1, 1),
(34, 16, 'Intel Core i7 10700 / 16MB / 2.9GHz / 8 Nhân 16 Luồng / LGA 1200', 'intel-core-i7-10700-16mb-2-9ghz-8-nhan-16-luong-lga-1200', '6f6739697396eb79efc5c1421563b7db.jpg', '0396a59133b681bace0b7e73356fcbd1.jpg', 'Thông tin chung:\r\n\r\nHãng sản xuất: Intel\r\nBảo hành: 36 Tháng\r\n', '', 1, 3, 0, 10, 9000000, 8190000, '2021-07-01 17:40:43', '1', '2021-07-01 17:40:43', '1', 1, 1),
(36, 16, 'Intel Core i9 10850KA / 20MB / 3.6GHz / 10 Nhân 20 Luồng', 'intel-core-i9-10850ka-20mb-3-6ghz-10-nhan-20-luong', '4b9768b6b104cc2bc280f06be0de5987.jpg', '36c8125550e28b99091710c523b23ab1.jpg', 'Thông tin chung\r\n\r\nHãng sản xuất: INTEL\r\nTình trạng: Mới \r\nBảo hành: 36 tháng', '<p><strong><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\">CPU</a></strong>&nbsp;Intel Core i9-10850K sở hữu 10 nh&acirc;n v&agrave; 20 luồng, tương tự như &ldquo;đ&agrave;n anh&rdquo; 10900K. Mặc d&ugrave; vậy, cả 2 chỉ số xung nhịp cơ sở v&agrave; boost đều được cho l&agrave; thấp hơn 100MHz so với 10900K, ở tốc độ 3,6 GHz v&agrave; 5,2Ghz.</p>\r\n\r\n<p>Ngo&agrave;i ra, dường như phần (K) cũng đ&atilde; được mở kh&oacute;a, do đ&oacute; con chip mới nhiều khả năng sẽ cho ph&eacute;p &eacute;p xung tr&ecirc;n bo mạch chủ socket Z390 chipset LGA 1200.</p>\r\n', 1, 4, 0, 10, 12000000, 11790000, '2021-07-01 18:23:00', '1', '2021-07-01 18:23:00', '1', 1, 1),
(37, 16, 'Intel Core i9 10980XE / 24.75M / 3.0GHz / 18 nhân 36 luồng LGA2066', 'intel-core-i9-10980xe-24-75m-3-0ghz-18-nhan-36-luong-lga2066', '853a3fad0751da4b8d8b03471a3591d2.png', 'da13249c89d825ded4ba09c8f3560c21.png', 'Nhà sản xuất : Intel\r\n\r\n-Tình trạng : NEW - 100%\r\n\r\n-Bảo hành : 36 tháng ', '<p><strong>T&iacute;nh năng nổi bật:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>&nbsp;Socket</strong></td>\r\n			<td>&nbsp;&nbsp;<strong>LGA2066</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Bộ nhớ đệm</strong></td>\r\n			<td>&nbsp; 24.75MB Smart Cache</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Thuật in</strong></td>\r\n			<td>&nbsp; 14 nm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Số nh&acirc;n (Cores)</strong></td>\r\n			<td>&nbsp;&nbsp;<strong>18</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Số luồng (Threads)</strong></td>\r\n			<td>&nbsp;&nbsp;<strong>36</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Xung cơ bản</strong></td>\r\n			<td>&nbsp;&nbsp;<strong>3.0GHz</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Xung Turbo</strong></td>\r\n			<td>&nbsp;&nbsp;<strong>4.6GHz</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;TDP&nbsp;</strong></td>\r\n			<td>&nbsp;&nbsp;<strong>165W</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;RAM tối đa</strong></td>\r\n			<td>&nbsp; 256GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Loại RAM</strong></td>\r\n			<td>&nbsp;&nbsp;<strong>DDR4</strong>-2933</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 3, 0, 30, 29990000, 20990000, '2021-07-01 18:24:28', '1', '2021-07-02 22:45:06', '1', 1, 1),
(38, 16, 'AMD Ryzen 7 3700x /36MB /3.6GHz /8 nhân 16 luồng', 'amd-ryzen-7-3700x-36mb-3-6ghz-8-nhan-16-luong', '361ad2c4b8492146d298ce051d38cd6f.jpg', '', 'Thông tin chung:\r\n- Nhà sản xuất : AMD\r\n\r\n- Bảo hành : 36 tháng \r\n\r\n- Tình trạng: New 100%', '<p><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\">CPU</a>&nbsp;Ryzen 7 3700X&nbsp;chạy tr&ecirc;n nền tảng socket AM4 - l&agrave; một trong những m&atilde; CPU được nhiều người mong đợi nhất trong list cpu Ryezn 3000 Series. C&ugrave;ng c&oacute; 8 nh&acirc;n/16 luồng như Ryzen 7 3800X, nhưng được AMD xem l&agrave; &ldquo;vi&ecirc;n kẹo ngọt&rdquo; trong loạt Ryzen 3000 Series mới được giới thiệu lần n&agrave;y. Sự kh&aacute;c biệt của chiếc&nbsp;CPU n&agrave;y&nbsp;so với 7 3800X l&agrave; mức TDP của sản phẩm chỉ c&oacute; 65W v&agrave; c&oacute; bộ nhớ đệm 36Mb, xung nhịp cơ bản 3.6Ghz v&agrave; c&oacute; thể đạt max Turbo ở 4.4Ghz.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>T&iacute;nh năng nổi bật:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>&nbsp;Socket</strong></td>\r\n			<td>&nbsp;<strong>AM4</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Bộ nhớ đệm</strong></td>\r\n			<td><strong>&nbsp;36MB</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Số nh&acirc;n (Cores)</strong></td>\r\n			<td>&nbsp;<strong>8</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Số luồng (Threads)</strong></td>\r\n			<td><strong>&nbsp;16</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Xung cơ bản</strong></td>\r\n			<td>&nbsp;<strong>3.6GHz</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Xung&nbsp;tối đa</strong></td>\r\n			<td>&nbsp;<strong>4.4GHz</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;T&iacute;ch hợp</strong></td>\r\n			<td><strong>&nbsp;Kh&ocirc;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>&nbsp;Điện ti&ecirc;u thụ</strong></td>\r\n			<td>&nbsp;<strong>65W</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 6, 0, 0, 8500000, 8500000, '2021-07-01 18:25:42', '1', '2021-07-02 23:32:38', '1', 0, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(42, 15, 'GIGABYTE Z590 VISION G (rev. 1.0)', 'gigabyte-z590-vision-g-rev-1-0', 'c3e23132af87a88ac55cb21edd21933b.jpg', 'cd219f1a96adf9ce560ff12d47df73b4.jpg', 'Thông tin chung:\r\n\r\nHãng sản xuất: Gigabyte\r\nTình trạng: Mới\r\nBảo hành: 36Tháng', '<h2>Đ&aacute;nh gi&aacute; chi tiết&nbsp;bo mạch chủ&nbsp;GIGABYTE Z590 VISION G</h2>\r\n\r\n<p>Bo mạch chủ GIGABYTE Z590 VISION G l&agrave; một trong những sản phẩm mới nhất&nbsp;<a href=\"https://gearvn.com/collections/mainboard-z590\">Mainboard Z590</a>&nbsp;thuộc d&ograve;ng VISION Series. Với hiệu suất cực cao, kết nối ấn tượng c&ugrave;ng khả năng mở rộng đồ họa v&agrave; lưu trữ cực nhanh, từ đ&oacute; cho người sử dụng s&aacute;ng tạo gi&uacute;p tối đa hiệu năng sử dụng.</p>\r\n\r\n<p><img alt=\"Mainboard GIGABYTE Z590 VISION G\" src=\"https://file.hstatic.net/1000026716/file/mainboard-gigabyte-z590-vision-g_03e337de706a49ac87ebfd1bbe822c5b.jpg\" /></p>\r\n\r\n<h2><strong>I/O mạnh mẽ của bo mạch chủ GIGABYTE Z590 VISION G</strong></h2>\r\n\r\n<h3><strong>Tối ưu m&agrave; kh&ocirc;ng cần th&ecirc;m c&aacute;p</strong></h3>\r\n\r\n<p>Truyền dữ liệu, đầu ra video v&agrave; sạc điện tất cả th&ocirc;ng qua một USB Type-C&reg; c&aacute;p gi&uacute;p đơn giản hơn bao giờ hết. Với đa nhiệm liền mạch giữa PC v&agrave; thiết bị của bạn, n&oacute; cho ph&eacute;p bạn sử dụng dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng, b&ecirc;n cạnh đ&oacute; khả năng tương th&iacute;ch c&oacute; thể thay đổi t&ugrave;y theo cấu h&igrave;nh hệ thống v&agrave; th&ocirc;ng số kỹ thuật của thiết bị.</p>\r\n\r\n<h3><strong>Tăng sức mạnh đồ họa của bạn</strong></h3>\r\n\r\n<p>Bạn đ&atilde; bao giờ tự hỏi liệu bạn c&oacute; thể tăng hiệu suất đồ họa của m&igrave;nh kh&ocirc;ng? Thiết kế displayport&trade;_In gi&uacute;p GPU trở n&ecirc;n vượt trội hơn. N&oacute; mang đến s&aacute;ng tạo của bạn với chủ nghĩa hiện thực v&agrave; hiệu suất đ&aacute;ng kinh ngạc.</p>\r\n\r\n<p><img alt=\"Mainboard GIGABYTE Z590 VISION G\" src=\"https://file.hstatic.net/1000026716/file/mainboard-gigabyte-z590-vision-g-1_775f50b4f3ff40dc91d3b3a38c67b164.jpg\" /></p>\r\n\r\n<h2><strong>Kết nối ho&agrave;n hảo</strong></h2>\r\n\r\n<h3><strong>Băng th&ocirc;ng cao v&agrave; độ trễ thấp</strong></h3>\r\n\r\n<p>Việc th&ocirc;ng qua Intel&reg; Mạng LAN 2.5G cung cấp khả năng kết nối mạng l&ecirc;n tới 2.5GbE, tốc độ truyền nhanh hơn &iacute;t nhất 2 lần so với mạng 1GbE n&oacute;i chung. N&oacute; gi&uacute;p cải thiện băng th&ocirc;ng cần thiết để c&oacute; thể dễ d&agrave;ng truyền tải tệp lớn, chỉnh sửa video v&agrave; c&aacute;c c&ocirc;ng việc kh&aacute;c với hiệu suất cao.</p>\r\n\r\n<h3><strong>Kết nối dễ d&agrave;ng</strong></h3>\r\n\r\n<p>Để c&oacute; thiết kế kết nối USB 3.2 Gen2x2, hiệu năng gấp đ&ocirc;i so với USB3.2 Gen2 hiện tại. Mainboard GIGABYTE Z590 VISION G hoạt động truyền dữ liệu cực nhanh l&ecirc;n đến 20Gbps trong khi kết nối với c&aacute;c thiết bị ngoại vi tu&acirc;n thủ USB 3.2.</p>\r\n\r\n<h2><strong>Thiết kế đầy đủ PCIe 4.0* c&ugrave;ng băng th&ocirc;ng cao</strong></h2>\r\n\r\n<p>Bo mạch chủ GIGABYTE Z590 VISION G hỗ trợ hầu hết c&aacute;c thiết bị ti&ecirc;n tiến, chiếc bo mạch chủ n&agrave;y hỗ trợ nhiều thiết bị PCIe 4.0, bao gồm card đồ họa v&agrave; SSD M.2. Băng th&ocirc;ng PCIe l&ecirc;n đến 31,58GB/ gi&acirc;y từ c&aacute;c thiết kế khe cắm. Đảm bảo hiệu năng&nbsp;<a href=\"https://gearvn.com/collections/vga-card-man-hinh\">card m&agrave;n h&igrave;nh</a>, thẻ tăng tốc deep learning v&agrave; card chụp video.</p>\r\n\r\n<p><img alt=\"Mainboard GIGABYTE Z590 VISION G\" src=\"https://file.hstatic.net/1000026716/file/mainboard-gigabyte-z590-vision-g-4_be7fdf2685f34ee1bc8d45f43bc38be5.jpg\" /></p>\r\n\r\n<h2><strong>Mainboard GIGABYTE Z590 VISION G mang lại hiệu năng cao</strong></h2>\r\n\r\n<p>Dung lượng bộ nhớ tối đa tr&ecirc;n bo mạch chủ Z590 l&agrave; 128GB với khe cắm đơn hỗ trợ l&ecirc;n tới 32GB. Bạn c&oacute; thể trải nghiệm hiệu suất nhanh trong khi thực hiện c&aacute;c t&aacute;c vụ thiết kế phức tạp v&agrave; nhận kết quả theo thời gian thực.</p>\r\n\r\n<h2><strong>Lưu trữ cực nhanh</strong></h2>\r\n\r\n<h3><strong>Tốc độ nhanh hơn</strong></h3>\r\n\r\n<p>GIGABYTE Z590 VISION G được trang bị tối đa 4 khe PCIe M.2, cung cấp băng th&ocirc;ng vượt trội v&agrave; n&acirc;ng cấp dung lượng lưu trữ của bạn để tăng tốc quy tr&igrave;nh l&agrave;m việc của bạn. SSD M.2 PCIe cung cấp cho bạn trải nghiệm truyền dữ liệu nhanh hơn 7 lần so với ổ đĩa trạng th&aacute;i rắn SATA 2.5&quot;. Cho ph&eacute;p sự s&aacute;ng tạo chảy từ suy nghĩ n&agrave;y sang suy nghĩ kh&aacute;c nhanh hơn v&agrave; c&oacute; được hiệu suất đ&aacute;p ứng m&agrave; kh&ocirc;ng cần chờ đợi.</p>\r\n\r\n<p><img alt=\"Mainboard GIGABYTE Z590 VISION G\" src=\"https://file.hstatic.net/1000026716/file/mainboard-gigabyte-z590-vision-g-2_20d60cff982640d095e134186e7364b4.jpg\" /></p>\r\n\r\n<h3><strong>NVMe PCIe x4 M.2</strong></h3>\r\n\r\n<p>Giải ph&aacute;p GIGABYTE M.2 cung cấp hiệu suất lưu trữ cao đ&aacute;ng kể v&agrave; cung cấp bộ nhớ l&yacute; tưởng với c&aacute;c chế độ RAID. Để t&iacute;nh năng với 3 đầu nối PCIe 4.0 * M.2 tốc độ đầy đủ để cung cấp bộ nhớ cực nhanh c&oacute; sẵn. Cung cấp cấu h&igrave;nh tốt nhất về dung lượng lưu trữ NVMe cho những người s&aacute;ng tạo y&ecirc;u cầu dung lượng cao, t&ugrave;y chọn lưu trữ nhanh v&agrave; kết xuất m&ocirc; h&igrave;nh 3D phức tạp.</p>\r\n\r\n<h2><strong>C&ocirc;ng nghệ&nbsp;</strong><a href=\"https://gearvn.com/collections/fan-rgb-tan-nhiet-pc\"><strong>tản nhiệt</strong></a><strong>&nbsp;cực tốt</strong></h2>\r\n\r\n<h3><strong>Bảo vệ nhiệt M.2</strong></h3>\r\n\r\n<p>GIGABYTE cung cấp một giải ph&aacute;p nhiệt si&ecirc;u hiệu quả cho c&aacute;c ổ SSD PCIe 4.0 M.2 mới nhất. Bộ bảo vệ nhiệt M.2 độc đ&aacute;o ngăn tất cả SSD M.2 nếu nhiệt độ vượt qu&aacute; ngưỡng.</p>\r\n\r\n<p><img alt=\"Mainboard GIGABYTE Z590 VISION G\" src=\"https://file.hstatic.net/1000026716/file/mainboard-gigabyte-z590-vision-g-3_2e7ad1d2f8784b32b74585c7b8c901ec.jpg\" /></p>\r\n\r\n<h3><strong>C&ocirc;ng nghệ Smart Fan 6</strong></h3>\r\n\r\n<p>Nhiều điểm cảm biến nhiệt độ được đặt tr&ecirc;n bo mạch chủ để theo d&otilde;i nhiệt độ trong thời gian thực để điều chỉnh ph&ugrave; hợp với c&aacute;c khối lượng c&ocirc;ng việc kh&aacute;c nhau th&ocirc;ng qua Smart Fan 6. Người s&aacute;ng tạo được ph&eacute;p đặt điểm k&iacute;ch hoạt để k&iacute;ch hoạt quạt v&agrave; tốc độ tương ứng. Quạt sẽ dừng ho&agrave;n to&agrave;n khi thực hiện c&aacute;c t&aacute;c vụ nhẹ để tr&aacute;nh tiếng ồn, tiết kiệm điện v&agrave; tăng độ bền quạt.</p>\r\n', 1, 14, 0, 0, 7090000, 6590000, '2021-07-01 18:35:43', '1', '2021-07-01 18:35:43', '1', 1, 1),
(44, 15, 'GIGABYTE Z490 VISION D (rev. 1.0)', 'gigabyte-z490-vision-d-rev-1-0', '894d1c3b155e56149610d30f447cd6f1.png', '9a4af31984883097aa435209d327e5c6.png', 'Hãng sản xuất: GIGABYTE\r\n\r\nTình trạng: Mới 100%\r\n\r\nBảo hành: 36 tháng', '<h2>GIGABYTE Z490 VISION D (rev. 1.0)</h2>\r\n\r\n<table border=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sản ph&acirc;̉m</p>\r\n			</td>\r\n			<td>\r\n			<p>Bo mạch chủ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&ecirc;n Hãng</p>\r\n			</td>\r\n			<td>\r\n			<p>GIGABYTE&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model</p>\r\n			</td>\r\n			<td>\r\n			<p>Z490 VISION D</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>CPU hỗ trợ</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chipset</p>\r\n			</td>\r\n			<td>\r\n			<p>Z490</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>RAM hỗ trợ</p>\r\n			</td>\r\n			<td>\r\n			<p>4 x DDR4 DIMM , support up to 128GB&nbsp;<br />\r\n			Intel&nbsp;Core&trade; i9/i7 processors:<br />\r\n			Support for DDR4 4400(O.C.)/ 4300(O.C.)/4266(O.C.) / 4133(O.C.) / 4000(O.C.) / 3866(O.C.) / 3800(O.C.) / 3733(O.C.) / 3666(O.C.) / 3600(O.C.) / 3466(O.C.) / 3400(O.C.) / 3333(O.C.) / 3300(O.C.) / 3200(O.C.) / 3000(O.C.) / 2933 / 2800 / 2666 / 2400 / 2133 MHz</p>\r\n\r\n			<p>Intel&nbsp;Core&trade; i5/i3/Pentium/Celeron&nbsp;processors:<br />\r\n			Support for DDR4 2666/2400/2133 MHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khe cắm mở rộng</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x PCI Express x16 slot, running at x16 (PCIEX16)<br />\r\n			1 x PCI Express x16 slot, running at x8 (PCIEX8)<br />\r\n			1 x PCI Express x16 slot, running at x4 (PCIEX4)<br />\r\n			1 x PCI Express x1 slot<br />\r\n			1 x M.2 Socket 1 connector for an Intel&nbsp;CNVi wireless module (CNVI)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ổ cứng hỗ trợ</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x M.2 connector (Socket 3, M key, type 2280/22110 SATA and PCIe x4/x2 SSD support) (M2A_CPU)<br />\r\n			1 x M.2 connector (Socket 3, M key, type 2280/22110 SATA and PCIe x4/x2 SSD support) (M2M_SB)<br />\r\n			1 x M.2 connector (Socket 3, M key, type 2260/2280/22110 PCIe x4/x2 SSD support) (M2P_SB)<br />\r\n			6 x SATA 6Gb/s connectors</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cổng kết nối (Internal)</p>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>1 x 24-pin ATX main power connector</li>\r\n				<li>1 x 8-pin ATX 12V power connector</li>\r\n				<li>1 x 4-pin ATX 12V power connector</li>\r\n				<li>1 x PEG power connector</li>\r\n				<li>1 x CPU fan header</li>\r\n				<li>1 x water cooling CPU fan header</li>\r\n				<li>4 x system fan headers</li>\r\n				<li>2 x system fan/water cooling pump headers</li>\r\n				<li>2 x addressable LED strip headers</li>\r\n				<li>2 x RGB LED strip headers</li>\r\n				<li>3 x M.2 Socket 3 connectors</li>\r\n				<li>6 x SATA 6Gb/s connectors</li>\r\n				<li>1 x front panel header</li>\r\n				<li>1 x front panel audio header</li>\r\n				<li>1 x USB Type-C&trade; header, with USB 3.2 Gen 2 support</li>\r\n				<li>1 x USB 3.2 Gen 1 header</li>\r\n				<li>2 x USB 2.0/1.1 headers</li>\r\n				<li>1 x Trusted Platform Module header (For the GC-TPM2.0 SPI/GC-TPM2.0 SPI 2.0 module only)</li>\r\n				<li>2 x temperature sensor headers</li>\r\n				<li>1 x Clear CMOS jumper</li>\r\n				<li>1 x Q-Flash Plus button</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cổng kết nối (Back Panel)</p>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>1 x DisplayPort In port</li>\r\n				<li>2 x Thunderbolt&trade; 3 connectors (USB Type-C&trade; port, with USB 3.2 Gen 2 support)</li>\r\n				<li>1 x HDMI port</li>\r\n				<li>2 x SMA antenna connectors (2T2R)</li>\r\n				<li>2 x USB 3.2 Gen 2 Type-A ports (red)</li>\r\n				<li>4 x USB 3.2 Gen 1 ports</li>\r\n				<li>2 x USB 2.0/1.1 ports</li>\r\n				<li>2 x RJ-45 ports</li>\r\n				<li>1 x optical S/PDIF Out connector</li>\r\n				<li>5 x audio jacks</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>LAN / Wireless</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x Intel&nbsp;2.5GbE LAN chip (2.5 Gbit/1 Gbit/100 Mbit)(LAN1)<br />\r\n			1 x Intel&nbsp;GbE LAN chip (1 Gbit/100 Mbit) (LAN2)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch cỡ</p>\r\n			</td>\r\n			<td>\r\n			<p>ATX Form Factor; 30.5cm x 24.4cm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 13, 0, 0, 8490000, 7990000, '2021-07-01 18:40:09', '1', '2021-07-01 18:40:09', '1', 1, 1),
(46, 15, 'ASUS TUF GAMING B560M-PLUS', 'asus-tuf-gaming-b560m-plus', '97677674e980caa93fa6a89c5b0e5a41.jpg', '334b34fd279ad48eca2e5606dbdf3015.jpg', 'Thông tin chung:\r\n\r\nNhà sản xuất: Asus\r\nBảo hành: 36 tháng\r\nTình trạng: Mới 100%', '<h2>Đ&aacute;nh gi&aacute; chi tiết mainboard&nbsp;ASUS TUF GAMING B560M-PLUS</h2>\r\n\r\n<p>Asus TUF Gaming B560M - Plus l&agrave;&nbsp;<a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\">mainboard</a>&nbsp;thuộc d&ograve;ng TUF với thiết kế hầm hố chuẩn qu&acirc;n đội v&agrave; được trang bị kết nối wifi mang đến sự thuận ti&ecirc;n cho người d&ugrave;ng những tiện &iacute;ch tốt nhất.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-asus-tuf-gaming-b560m-plus-5_882e17080af34d0ab83dbe132cc193ed_grande.png\" /></p>\r\n\r\n<p>ASUS TUF GAMING B560M-PLUS lấy tất cả c&aacute;c yếu tố thiết yếu của bộ vi xử l&yacute;&nbsp;<a href=\"https://gearvn.com/collections/cpu-10th-gen\">Intel</a>&nbsp;mới nhất v&agrave; kết hợp ch&uacute;ng với c&aacute;c t&iacute;nh năng sẵn s&agrave;ng cho tr&ograve; chơi v&agrave; độ bền đ&atilde; được chứng minh.&nbsp;Được thiết kế với c&aacute;c giải ph&aacute;p năng lượng được n&acirc;ng cấp v&agrave; hệ thống l&agrave;m m&aacute;t to&agrave;n diện, bo mạch chủ n&agrave;y mang đến hiệu suất ổn định, vững chắc để chơi game k&eacute;o d&agrave;i.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-asus-tuf-gaming-b560m-plus-1_b213c45e169f4ebeb1db9183782c6376_grande.png\" /></p>\r\n\r\n<p>Về mặt thẩm mỹ, TUF GAMING B560M-PLUS thể hiện logo TUF Gaming mới v&agrave; kết hợp c&aacute;c yếu tố thiết kế h&igrave;nh học đơn giản để phản &aacute;nh độ tin cậy v&agrave; ổn định đặc trưng cho d&ograve;ng TUF Gaming. Sử dụng chipset&nbsp;<a href=\"https://gearvn.com/collections/mainboard-intel-b560-rocket-lake\">B560</a>&nbsp;mới nhất, hỗ trợ CPU i3, i5 v&agrave; i7 socket LGA 1200 (Thế hệ Intel Core i 10 v&agrave; 11).</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-asus-tuf-gaming-b560m-plus-4_f05ecefe2f604b78a3fd6e7e9381089f_grande.png\" /></p>\r\n\r\n<p>Bo mạch chủ TUF GAMING cung cấp cho người d&ugrave;ng hiện nay mọi thứ bạn cần để x&acirc;y dựng hệ thống&nbsp;<a href=\"https://gearvn.com/pages/pc-gvn\">pc</a>&nbsp;gaming trong mơ của m&igrave;nh một c&aacute;ch đơn giản những lại kh&ocirc;ng k&eacute;m phần đẹp mắt mang đến hiệu năng đỉnh cao.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-asus-tuf-gaming-b560m-plus_6fe98990dace43ed8ad3915012dd24c2_grande.png\" /></p>\r\n\r\n<p>D&ograve;ng bo mạch chủ TUF GAMING B560M-PLUS cung cấp một g&oacute;i chơi game ho&agrave;n chỉnh, hiệu suất cao với c&aacute;c t&iacute;nh năng để cải thiện trải nghiệm. C&ugrave;ng với đ&oacute; l&agrave; hệ thống đ&egrave;n RGB tr&ecirc;n bo mạch đồng bộ với c&aacute;c phụ kiện k&egrave;m theo để gi&uacute;p bạn tạo ra kh&ocirc;ng gian chơi game c&aacute; nh&acirc;n h&oacute;a.</p>\r\n', 1, 14, 0, 0, 3990000, 3590000, '2021-07-01 18:43:58', '1', '2021-07-01 18:43:58', '1', 1, 1),
(48, 15, 'MSI H410M-A PRO', 'msi-h410m-a-pro', 'a2b754d0d1f803ebe44a7ef42ba8e67a.jpg', '3223995adfa46af1b3a8e7adeb8eec91.jpg', 'Hãng Sản Xuất: MSI\r\n\r\nTình Trạng: Mới và Fullbox 100%\r\n\r\nBảo Hành: 36 Tháng', '<h2>Main m&aacute;y t&iacute;nh&nbsp;MSI H410M-A PRO</h2>\r\n\r\n<p><strong>MSI H410M-A PRO</strong>&nbsp;l&agrave;&nbsp;<a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\">main m&aacute;y t&iacute;nh</a>&nbsp;được sử dụng chipset H410 của Intel, hỗ trợ vi xử l&yacute; Intel&reg; Core&trade; / Pentium&reg; Celeron&reg; thế hệ 10 socket LGA 1200. L&agrave; một bo mạch chủ với gi&aacute; cả phải chăng, MSI H410M-A Pro vẫn sở hữu đầy đủ t&iacute;nh năng để đ&aacute;p ứng cho nhu cầu l&agrave;m việc cũng như gaming.&nbsp;</p>\r\n\r\n<p>Bo mạch chủ của MSI được thiết kế một c&aacute;ch th&ocirc;ng minh với h&agrave;ng loạt tiện &iacute;ch ph&ugrave; hợp với cả người d&ugrave;ng cơ bản lẫn người đam m&ecirc; s&aacute;ng tạo. Đồng thời thiết kế th&acirc;n thiện cũng gi&uacute;p người d&ugrave;ng lắp đặt dễ d&agrave;ng.&nbsp;</p>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>SOCKET</td>\r\n			<td>1200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU (MAX SUPPORT)</td>\r\n			<td>i9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CHIPSET</td>\r\n			<td>Intel&reg; H410 Chipset</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DDR4 MEMORY</td>\r\n			<td>2933n(JEDEC)/ 2666(JEDEC)/ 2400(JEDEC)/ 2133(JEDEC) MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MEMORY CHANNEL</td>\r\n			<td>Dual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DIMM SLOTS</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MAX MEMORY (GB)</td>\r\n			<td>128</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PCI-E X16</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PCI-E GEN</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PCI-E X1</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SATAIII</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M.2 SLOT</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAID</td>\r\n			<td>0/1/5/10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TPM (HEADER)</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LAN</td>\r\n			<td>1x Realtek&reg; 8125B 2.5G LAN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 3.2 PORTS (FRONT)</td>\r\n			<td>1(Gen 2, Type C), 2(Gen 1, Type A)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 3.2 PORTS (REAR)</td>\r\n			<td>1(Gen 2, Type C), 1(Gen 2, Type A), 2(Gen 1, Type A)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 2.0 PORTS (FRONT)</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 2.0 PORTS (REAR)</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>AUDIO PORTS (REAR)</td>\r\n			<td>5+ Optical S/PDIF (Realtek&reg; ALC1220 Codec)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDMI</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DIRECTX</td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FORM FACTOR</td>\r\n			<td>Micro-ATX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OPERATING SYSTEM</td>\r\n			<td>Support for Windows&reg; 10 64-bit</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 14, 0, 0, 1690000, 1390000, '2021-07-01 18:46:53', '1', '2021-07-01 18:46:53', '1', 1, 1),
(49, 17, 'GIGABYTE GeForce RTX 3070 VISION OC 8G', 'gigabyte-geforce-rtx-3070-vision-oc-8g', '125049fc1024a14f971f047bb834ef71.png', '1c9d18205ae4a393ff8908a40d43fc24.png', 'Thông tin chung:\r\n\r\nHãng sản xuất: Gigabyte \r\nMã sản phẩm: GV-N3070VISION OC-8GD\r\nBảo hành: 36 Tháng', '<h3><strong>TH&Ocirc;NG SỐ KĨ THUẬT</strong></h3>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Graphics Processing</td>\r\n			<td>GeForce RTX&trade; 3070</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Core Clock</td>\r\n			<td>1&lrm;815 MHz (Reference Card: 1725 MHz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUDA&reg; Cores</td>\r\n			<td>5&lrm;888</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Clock</td>\r\n			<td>1&lrm;4000 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Size</td>\r\n			<td>8&lrm; GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Type</td>\r\n			<td>GDDR6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Bus</td>\r\n			<td>2&lrm;56 bit</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Bandwidth (GB/sec)</td>\r\n			<td>4&lrm;&lrm;48 GB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card Bus</td>\r\n			<td>PCI-E 4.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Digital max resolution</td>\r\n			<td>7&lrm;680x4320</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Multi-view</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Card size</p>\r\n			</td>\r\n			<td>\r\n			<p>L=286</p>\r\n\r\n			<p>W=115</p>\r\n\r\n			<p>H=51 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PCB Form</td>\r\n			<td>ATX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DirectX</td>\r\n			<td>1&lrm;2 Ultimate</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OpenGL</td>\r\n			<td>4&lrm;.6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Recommended PSU</td>\r\n			<td>6&lrm;50W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Power Connectors</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>8&lrm; pin*1 + 6 pin*1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Output</td>\r\n			<td>DisplayPort 1.4a *2<br />\r\n			HDMI 2.1 *2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SLI Support</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Accessories</td>\r\n			<td>Quick guide</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 2, 13, 0, 0, 36900000, 34900000, '2021-07-01 18:48:43', '1', '2021-07-01 18:48:43', '1', 1, 1),
(51, 17, 'GIGABYTE GeForce GTX 1660 OC 6G', 'gigabyte-geforce-gtx-1660-oc-6g', '21eca713db19ce10752da54451c04cb6.jpg', '2812cf4b785086653b08860a3e520772.jpg', 'Thông tin chung:\r\n\r\nNhà sản xuất: GIGABYTE\r\nBảo hành: 36 tháng', '<h3>Th&ocirc;ng số kỹ thuật:</h3>\r\n\r\n<table border=\"6\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Graphics Processing</td>\r\n			<td>GeForce&reg; GTX 1660</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Core Clock</td>\r\n			<td>1830 MHz (Reference Card: 1785 MHz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUDA&reg; Cores</td>\r\n			<td>1408</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Clock</td>\r\n			<td>8002 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Size</td>\r\n			<td>6 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Type</td>\r\n			<td>GDDR5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Bus</td>\r\n			<td>192 bit</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Bandwidth (GB/sec)</td>\r\n			<td>192 GB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card Bus</td>\r\n			<td>PCI-E 3.0 x 16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Digital max resolution</td>\r\n			<td>7680x4320@60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Multi-view</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card size</td>\r\n			<td>L=224 W=121 H=40 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PCB Form</td>\r\n			<td>ATX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DirectX</td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OpenGL</td>\r\n			<td>4.6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Recommended PSU</td>\r\n			<td>450W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power Connectors</td>\r\n			<td>8 Pin*1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Output</td>\r\n			<td>DisplayPort 1.4 *3<br />\r\n			HDMI 2.0b *1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Accessories</td>\r\n			<td>1. Quick guide<br />\r\n			2. Driver CD</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 3, 13, 0, 0, 13490000, 12000000, '2021-07-01 18:50:45', '1', '2021-07-01 18:50:45', '1', 1, 1),
(52, 17, 'GIGABYTE GeForce RTX 3060 GAMING OC 12G', 'gigabyte-geforce-rtx-3060-gaming-oc-12g', '32cb012889d0ace4b38bbebdff9925fd.png', '7d374e19bc71bca9af57bc17d05cbe5c.png', 'Thông tin chung:\r\n\r\nHãng sản xuất: Gigabyte \r\nMã sản phẩm: GV-N3060GAMING OC-12GD\r\nBảo hành: 36 Tháng\r\n', '<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>GeForce RTX&trade; 3060</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Core Clock</td>\r\n			<td>1&lrm;837 MHz (Reference Card: 1777 MHz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUDA&reg; Cores</td>\r\n			<td>3&lrm;584</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Clock</td>\r\n			<td>1&lrm;5000 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Size</td>\r\n			<td>1&lrm;2 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Type</td>\r\n			<td>GDDR6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Bus</td>\r\n			<td>1&lrm;92 bit</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Bandwidth (GB/sec)</td>\r\n			<td>3&lrm;60 GB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card Bus</td>\r\n			<td>PCI-E 4.0 x 16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Digital max resolution</td>\r\n			<td>7&lrm;680x4320@60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Multi-view</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card size</td>\r\n			<td>L=282 W=117 H=41 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PCB Form</td>\r\n			<td>ATX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DirectX</td>\r\n			<td>1&lrm;2 Ultimate</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OpenGL</td>\r\n			<td>4&lrm;.6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power requirement</td>\r\n			<td>5&lrm;50W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power Connectors</td>\r\n			<td>8&lrm; pin*1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Output</td>\r\n			<td>\r\n			<p>DisplayPort 1.4a *2</p>\r\n\r\n			<p>HDMI 2.1 *2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SLI support</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Accessories</td>\r\n			<td>Quick guide</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 3, 12, 0, 0, 24000000, 22390000, '2021-07-01 18:53:12', '1', '2021-07-01 18:53:12', '1', 1, 1),
(53, 18, '(16G DDR4 2x8G 3200) Corsair Dominator Platinum RGB CL16-18-18-36', '16g-ddr4-2x8g-3200-corsair-dominator-platinum-rgb-cl16-18-18-36', '42598c5cd78cce6c6b40d3c76908cfe1.jpg', '7396432cd764cd376a6a14eb4aa20af2.jpg', '- Nhà sản xuất: CORSAIR\r\n- Loại RAM: DDR4\r\n- Dung lượng: 16GB \r\n- Số lượng: 2 thanh\r\n- Bus: 3200MHz\r\n- Tản nhiệt: Có\r\n- Màu: Đen\r\n- Bảo Hành: 36 Tháng', '', 2, 14, 0, 0, 4590000, 4390000, '2021-07-01 18:55:21', '1', '2021-07-02 22:07:54', '1', 1, 1),
(55, 18, '(8GB DDR4 1x8G 3200) RAM PNY XLR8 GAMING', '8gb-ddr4-1x8g-3200-ram-pny-xlr8-gaming', '183b4199598cfca7bff6d6abefd72d97.png', 'c44dc5f46a87eaad02930cce713a5975.png', 'Nhà sản xuất: PNY\r\nLoại RAM: DDR4\r\nDung lượng: 8GB \r\nSố lượng: 1 thanh\r\nBus: 3200MHz\r\nBảo hành: 36 tháng', '<h3><strong>TH&Ocirc;NG SỐ KĨ THUẬT</strong></h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Memory Type</td>\r\n			<td>Desktop DDR4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Channel Type</td>\r\n			<td>Single Channel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Form Factor</td>\r\n			<td>DIMM (Desktop)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capacity</td>\r\n			<td>8GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frequency Speed</td>\r\n			<td>3200MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Timing</td>\r\n			<td>16-18-18</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CAS Latency</td>\r\n			<td>CL16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>tRas</td>\r\n			<td>36</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>1.35V</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ECC</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Buffered/ Registered</td>\r\n			<td>Unbuffered</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XMP Support</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Speed Compatibility</td>\r\n			<td>3200MHz, 3000MHz, 2933MHz, 2800MHz, 2666MHz, 2400MHz, 2133MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Module Dimension</td>\r\n			<td>1.45 x 6.2 x 46.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Retail Pack Dimension</td>\r\n			<td>147 x 9 x 50mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OS Compatibility</td>\r\n			<td>Windows 10 and older</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 17, 0, 25, 1450000, 1080000, '2021-07-01 19:00:15', '1', '2021-07-02 22:42:41', '1', 1, 1),
(56, 18, '(8GB DDR4 1x8G 3000) RAM G.SKILL Trident Z RGB CL16-18-18-38', '8gb-ddr4-1x8g-3000-ram-g-skill-trident-z-rgb-cl16-18-18-38', '48955ebacc2eaf56fbb8782b786be0c2.jpg', '8295620e313b7393e8eca6e1d3f7f8d1.jpg', '- Hãng: GSKILL\r\n\r\n- Dung lượng: 8GB\r\n\r\n- Bus: 3000MHZ\r\n\r\n- LED: RGB\r\n\r\n- Bảo hành: 36 tháng', '', 2, 11, 0, 0, 1550000, 1550000, '2021-07-01 19:01:07', '1', '2021-07-02 22:08:09', '1', 1, 1),
(60, 19, 'SSD SamSung 980 PRO 1TB M.2 NVMe MZ-V8P1T0BW', 'ssd-samsung-980-pro-1tb-m-2-nvme-mz-v8p1t0bw', '21335dffc6b4ac97195964f5d4a564cd.jpg', '7dc2517a759138e70b70697ead59368a.jpg', 'Thông tin chung:\r\n\r\nHãng sản xuất: SamSung \r\nTình trạng: Mới\r\nBảo hành: 60 Tháng', '<h3><strong>TH&Ocirc;NG SỐ KĨ THUẬT</strong></h3>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Nh&agrave; sản xuất</td>\r\n			<td>Samsung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model</td>\r\n			<td>MZ-V8P1T0BW</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chuẩn giao tiếp</td>\r\n			<td>PCIe Gen4.0 x4, NVMe1.3c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>M.2 2280</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng</td>\r\n			<td>1TB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Random 4k</td>\r\n			<td>1000.000 IOPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tốc độ đọc</td>\r\n			<td>7000 MB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tốc độ ghi</td>\r\n			<td>5000 MB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NAND Flash</td>\r\n			<td>Samsung V-NAND 3-bit TLC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TBW</td>\r\n			<td>600 TB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phần mềm chuyển hệ điều h&agrave;nh đi k&egrave;m</td>\r\n			<td>Samsung Data Migration</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 2, 24, 0, 0, 6590000, 6590000, '2021-07-01 19:11:12', '1', '2021-07-05 02:13:26', '1', 1, 1),
(61, 19, 'SSD KINGSTON A2000 250GB M.2 NVMe - SA2000M8/250G', 'ssd-kingston-a2000-250gb-m-2-nvme-sa2000m8-250g', '4b6e0b3970f27402131fc094de505c8d.png', '542ada14a8a02f61dd4c6454edaec653.png', 'Hãng sản xuất: Kingston\r\n\r\nTình trạng: Mới\r\n\r\nBảo hành: 60 tháng', '<h3>Th&ocirc;ng số kỹ thuật:</h3>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" style=\"width:900px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu</td>\r\n			<td>KINGSTON</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh</td>\r\n			<td>60 th&aacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng</td>\r\n			<td>250GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kích thước</td>\r\n			<td>M.2 2280</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&ecirc;́t n&ocirc;́i</td>\r\n			<td>M.2 NVMe</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&ocirc;̣ nhớ NAND</td>\r\n			<td>3D-NAND</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&ocirc;́c đ&ocirc;̣ đọc</td>\r\n			<td>2000MB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&ocirc;́c đ&ocirc;̣ ghi</td>\r\n			<td>1100MB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&ocirc;̃ trợ h&ecirc;̣ đi&ecirc;̀u hành</td>\r\n			<td>Windows 10, macOS</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 3, 15, 0, 0, 1590000, 1590000, '2021-07-01 19:12:40', '1', '2021-07-02 22:07:40', '1', 1, 1),
(64, 19, 'Intel® SSD 660p QLC 512GB M.2 NVMe', 'intelr-ssd-660p-qlc-512gb-m-2-nvme', '025f6511ec63cbca1aaaf542321f5af8.jpg', 'cec202b7c12182c5928c36521b90a02b.jpg', 'Nhà sản xuất: INTEL\r\n\r\nBảo hành: 60 tháng\r\n\r\nTình trạng: Fullbox – 100%', '', 1, 12, 0, 0, 2090000, 2090000, '2021-07-01 19:15:45', '1', '2021-07-05 02:12:28', '1', 1, 1),
(66, 19, 'HDD WD Blue 4TB 5400rpm', 'hdd-wd-blue-4tb-5400rpm', 'e42c9b6260e4ae57100afe899e831428.jpg', '652c3d60399a23e47ae7567cc243a747.jpg', 'Nhà sản xuất: Western Digital\r\n\r\nMã sản phẩm: WD40EZRZ\r\n\r\nTình trạng: Fullbox – 100%\r\n\r\nBảo hành: 24 tháng', '<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:26pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\"><span style=\"color:#3366ff\">WD Blue</span></span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Ổ cứng d&agrave;nh cho m&aacute;y t&iacute;nh c&aacute; nh&acirc;n</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Ổ cứng d&agrave;nh cho hoạt động h&agrave;ng ng&agrave;y&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Hiệu suất cao v&agrave; ổn định</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Dễ d&agrave;ng n&acirc;ng cấp&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-C&oacute; cả chuẩn 3.5 inch v&agrave; 2.5 inch</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Gi&aacute; cả hợp l&yacute; với chất lượng tối ưu&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Dung lượng l&ecirc;n đ&ecirc;n 1TB</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:26pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\"><span style=\"color:#00ff00\">WD Green</span></span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Ổ cứng thứ cấp</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Dung lượng lưu trữ lớn&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Dung lượng lớn l&ecirc;n đến 6TB&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Sử dụng cho m&aacute;y t&iacute;nh để b&agrave;n, m&aacute;y t&iacute;nh All-in-one, lưu trữ thứ cấp, c&aacute;c thiết bị gắn ngo&agrave;i hoặc sao lưu dự ph&ograve;ng&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Hoạt động m&aacute;t v&agrave; &ecirc;m &aacute;i</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:26pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\"><span style=\"color:#000000\">WD Black</span></span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Ổ cứng d&agrave;nh cho hệ thống chuy&ecirc;n nghiệp</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Tối ưu h&oacute;a hiệu suất cho m&aacute;y t&iacute;nh chuy&ecirc;n dụng&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-L&agrave; ổ cứng duy nhất c&oacute; hai nh&acirc;n xử l&yacute;: nh&acirc;n đ&ocirc;i sức mạnh xử l&yacute; để tối ưu h&oacute;a hiệu năng&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Đ&aacute;p ứng tốt nhất cho hệ thống cần độ n&eacute;t cao: tăng độ ch&iacute;nh x&aacute;c dữ liệu tr&ecirc;n từng ổ đĩa</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Dung lượng l&ecirc;n đến 4TB&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-C&oacute; cả chuẩn 3.5 inch v&agrave; chuẩn 2.5 inch</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:26pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\"><span style=\"color:#ff0000\">WD Red</span></span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Ổ cứng chuy&ecirc;n dụng cho NAS</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Thiết kế v&agrave; thử nghiệm cho m&ocirc;i trường RAID</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Sự lựa chọn đ&uacute;ng đắn d&agrave;nh cho NAS</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">Thiết kế d&agrave;nh ri&ecirc;ng cho NAS của hộ gia đ&igrave;nh, văn ph&ograve;ng vừa v&agrave; nhỏ&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Hoạt động li&ecirc;n tục trong m&ocirc;i trường 24/7&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Hoạt động m&aacute;t, &iacute;t ti&ecirc;u tốn điện năng v&agrave; &iacute;t n&oacute;ng&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-C&ocirc;ng nghệ NASwareTM gi&uacute;p tối ưu RAID&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Dung lượng tối đa l&ecirc;n đến 6TB&nbsp;</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:26pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\"><span style=\"color:#cc99ff\">WD Purple</span></span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Sự lựa chọn th&ocirc;ng minh cho hệ thống gi&aacute;m s&aacute;t</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Tối ưu h&oacute;a hiệu suất hệ thống l&ecirc;n đến 32 HD camera hoạt động c&ugrave;ng l&uacute;c</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Cải thiện hiệu năng với t&iacute;nh năng Allframe: giảm thiểu mất khung ảnh</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Khả năng Workload l&ecirc;n đến 60TB / năm</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Tương th&iacute;ch tối ưu với hầu hết c&aacute;c loại đầu ghi của c&aacute;c hệ thống gi&aacute;m s&aacute;t</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:26pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">WD VelociRaptor&nbsp;</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Ổ cứng m&aacute;y trạm với tốc độ thần tốc - Hiệu năng tột đỉnh cho những chuy&ecirc;n gia</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Si&ecirc;u nhanh: Tốc độ v&ograve;ng quay l&ecirc;n đến 10,000 RPM&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Si&ecirc;u bền: thời gian hoạt động tin cậy (MTBF) l&ecirc;n đến 1.4 triệu giờ&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Dung lượng l&ecirc;n đến 1TB&nbsp;</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-C&oacute; sẵn chuẩn 3.5 inch v&agrave; 2.5 inch&nbsp;</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:26pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">WD RE/ SE&nbsp;</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Ổ cứng d&agrave;nh cho Server</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Lưu trữ tin cậy, hiệu năng v&agrave; t&iacute;nh sẵn s&agrave;ng cao</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Khả năng xử l&iacute; l&ecirc;n đến 550TB / năm với c&aacute;c ứng dụng lớn quan trọng trong hệ thống m&aacute;y chủ dữ liệu</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Tốc độ truyền tải l&ecirc;n đến 6GB/s v&agrave; được duy tr&igrave; li&ecirc;n tục ở mức 182mb/s</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Được thiết kế cho độ tin cậy v&agrave; độ bền cao: l&ecirc;n đến 1.4 triệu giờ thời gian hoạt động tin cậy (MTBF) v&agrave; hoạt động li&ecirc;n tục 24x7x365</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:black\"><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">-Khả năng bảo vệ rung động: c&ocirc;ng nghệ ti&ecirc;n tiến RAFF gi&aacute;m s&aacute;t ổ cứng v&agrave; c&acirc;n bằng rung động thời gian thực</span></span></span></li>\r\n</ul>\r\n', 2, 13, 0, 0, 2090000, 2090000, '2021-07-01 19:29:05', '1', '2021-07-02 22:07:29', '1', 1, 1),
(67, 19, 'HDD Seagate Barracuda 1TB 7200rpm', 'hdd-seagate-barracuda-1tb-7200rpm', 'e0795cee7ea1a5a69aff8eeafe898d80.jpg', 'ea5bb24ec88cb431a61c60f363d08eda.jpg', '- Nhà sản xuất: Seagate\r\n\r\n- Mã sản phẩm: \r\n\r\n- Tình trạng: Fullbox – 100%\r\n\r\n- Bảo hành: 24 Tháng', '', 2, 25, 0, 0, 800000, 800000, '2021-07-01 19:32:48', '1', '2021-07-02 22:07:00', '1', 1, 1),
(68, 20, 'Case Cooler Master MASTERBOX MB520 ARGB', 'case-cooler-master-masterbox-mb520-argb', '21160fd91c9cd5801596e6a122a221cb.png', '54d0b1ad234e52fde1a27c11e481ec8f.png', 'Thông tin chung:\r\n\r\nHãng sản xuất: Cooler Master\r\nTình trạng: Mới\r\nBảo hành: 12 tháng\r\nCASE CÓ SẴN 3 FAN A-RGB & 1 FAN KHÔNG LED', '<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>MODEL NUMBER</strong></td>\r\n			<td>MCB-B520-KGNN-RGA</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>SERIES</strong></td>\r\n			<td>MasterBox Series</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>SIZE</strong></td>\r\n			<td>Mid Tower</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>AVAILABLE COLOR(S)</strong></td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>MATERIALS</strong></td>\r\n			<td>Steel, Plastic, Tempered Glass</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>DIMENSIONS (L X W X H)</strong></td>\r\n			<td>496 x 217 x 469 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>WEIGHT</strong></td>\r\n			<td>6.59 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>MOTHERBOARD SUPPORT</strong></td>\r\n			<td>Mini ITX, Micro ATX, ATX, E-ATX*, SSI CEB*, (*support for up to 12&quot; x 10.7&quot;, will limit cable management features)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>EXPANSION SLOTS</strong></td>\r\n			<td>7</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>5.25&quot; DRIVE BAYS</strong></td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2.5&quot; / 3.5&quot; DRIVE BAYS (COMBO)</strong></td>\r\n			<td>2 (Max.2)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2.5&quot; DRIVE BAYS</strong></td>\r\n			<td>4 (Max.6)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>I/O PANEL</strong></td>\r\n			<td>2x USB 3.2 Gen 1 (formerly USB 3.0), 1x 3.5mm Audio Jack, 1x 3.5mm Mic Jack, 1x ARGB Controller, 1x ARGB 2-to-3 splitter</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>PRE-INSTALLED FANS - FRONT</strong></td>\r\n			<td>3x 120mm ARGB Fans</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>PRE-INSTALLED FANS - REAR</strong></td>\r\n			<td>1x 120mm (Black)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>FAN SUPPORT - TOP</strong></td>\r\n			<td>3x 120mm, 2x 140mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>FAN SUPPORT - FRONT</strong></td>\r\n			<td>3x 120mm, 2x 140mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>FAN SUPPORT - REAR</strong></td>\r\n			<td>1x 120mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>RADIATOR SUPPORT - TOP</strong></td>\r\n			<td>120mm, 240mm, 360mm, (44mm max motherboard component height)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>RADIATOR SUPPORT - FRONT</strong></td>\r\n			<td>120mm, 140mm, 240mm, 280mm, 360mm, (75mm clearance)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>RADIATOR SUPPORT - REAR</strong></td>\r\n			<td>120mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>CLEARANCE - CPU COOLER</strong></td>\r\n			<td>165mm/6.49&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>CLEARANCE - PSU</strong></td>\r\n			<td>180mm/7.08&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>CLEARANCE - GFX</strong></td>\r\n			<td>410mm/16.1&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>CABLE ROUTING</strong></td>\r\n			<td>19~27mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>DUST FILTERS</strong></td>\r\n			<td>Top, Front, Bottom</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>POWER SUPPLY SUPPORT</strong></td>\r\n			<td>Bottom mount, ATX</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>WARRANTY</strong></td>\r\n			<td>1 year</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>EAN CODE</strong></td>\r\n			<td>4719512095171</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>UPC CODE</strong></td>\r\n			<td>884102047473</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 3, 13, 0, 0, 2350000, 2350000, '2021-07-01 19:37:47', '1', '2021-07-02 22:06:46', '1', 1, 1),
(72, 20, 'Case MSI MAG VAMPIRIC 100R', 'case-msi-mag-vampiric-100r', '01a440983178ea35700f799dfd19ef13.jpg', '2e51d0c1a01115f46662c5577891319e.jpg', 'Thông tin sản phẩm:\r\n\r\nNhà sản xuất : MSI\r\nBảo hành : 12 tháng\r\nSản phẩm có:\r\n\r\n1 fan không LED (trước)\r\n1 fan LED RGB (sau)\r\n', '', 1, 13, 0, 0, 1490000, 1490000, '2021-07-01 20:03:25', '1', '2021-07-02 22:06:24', '1', 1, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(73, 20, 'Case XIGMATEK VENTUS 3FC', 'case-xigmatek-ventus-3fc', '61e2abe36473424fd2fdc4ac6069d728.png', '8f5b8dfa07e6912c529feb6176c267b4.png', 'Thông tin chung:\r\n\r\nHãng sản xuất: XIGMATEK \r\nTình trạng: Mới\r\nBảo hành: 12 Tháng', '<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất:</td>\r\n			<td>XIGMATEK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model:</td>\r\n			<td>VENTUS 3FC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vật liệu:</td>\r\n			<td>SECC phủ đen, Plastic ABS, Nhựa trong suốt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước:&nbsp;</td>\r\n			<td>330 x 200 x 435 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hỗ trợ:&nbsp;</td>\r\n			<td>2.5 &quot;&quot; x 2 / 3.5&quot;&quot; x 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe mở rộng:</td>\r\n			<td>7 slots</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hỗ trợ Mainboard:</td>\r\n			<td>ATX, Micro-ATX, ITX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cổng kết nối:</td>\r\n			<td>USB3.0 x 1 - USB2.0 x2 - Audio in/out x 1 (HD Audio)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hỗ trợ&nbsp;<a href=\"https://gearvn.com/collections/tan-nhiet-khi\">tản nhiệt</a>:</td>\r\n			<td>CPU 170mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hỗ trợ&nbsp;<a href=\"https://gearvn.com/collections/vga-card-man-hinh\">card đồ họa</a>:</td>\r\n			<td>320mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hỗ trợ mặt k&iacute;nh:</td>\r\n			<td>Cường lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>K&iacute;ch thước quạt:</p>\r\n			</td>\r\n			<td>\r\n			<p>Trước: 120mm x 3 (lắp sẵn)</p>\r\n\r\n			<p>Sau: 120mm fan x 1&nbsp;(t&ugrave;y chọn)</p>\r\n\r\n			<p>N&oacute;c: 120mm fan x 2&nbsp;(t&ugrave;y chọn)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 13, 0, 10, 780000, 710000, '2021-07-01 20:05:05', '1', '2021-07-02 22:20:50', '1', 1, 1),
(75, 21, 'Tản nhiệt RAIJINTEK JUNO PRO RBW', 'tan-nhiet-raijintek-juno-pro-rbw', '5068a0a17da88ecadd4acb168f8e50a0.jpg', 'dde69127d3df35065bb2c4b0f98377e3.jpg', 'Thông tin chung:\r\n-Nhà sản xuất    : RAIJINTEK\r\n-Tình trạng         : NEW - 100%\r\n\r\n-Bảo hành          : 12 tháng \r\n\r\n', '', 1, 26, 0, 45, 450000, 250000, '2021-07-01 20:17:36', '1', '2021-07-01 20:18:00', '1', 1, 1),
(79, 21, 'Tản nhiệt GIGABYTE AORUS ATC800', 'tan-nhiet-gigabyte-aorus-atc800', '4c45f70a2de9a8be2b0b83bd37f0f816.jpg', '73599b43373b3630125db854ce9d004a.jpg', 'Thông tin chung:\r\n-Nhà sản xuất    : GIGABYTE\r\n-Tình trạng        :  NEW - 100%\r\n\r\n-Bảo hành          : 36 tháng', '', 3, 125, 0, 0, 2550000, 2050000, '2021-07-01 20:23:25', '1', '2021-07-02 22:06:30', '1', 1, 1),
(80, 21, 'Tản nước AIO DeepCool Gammaxx L240 RGB V2', 'tan-nuoc-aio-deepcool-gammaxx-l240-rgb-v2', '297d1b5d76366f8618afc4137c685c87.jpg', '276c2d96669d3637adae0c3daff173c0.jpg', 'Thông tin sản phẩm :\r\nNhà sản xuất            : DeepCool\r\nBảo hành                  : 24 tháng \r\nLED                            : RGB', '', 1, 25, 0, 0, 1690000, 1690000, '2021-07-01 20:34:09', '1', '2021-07-02 22:05:59', '1', 1, 1),
(82, 21, 'Fan XIGMATEK GALAXY III ESSENTIAL - BX120 ARGB', 'fan-xigmatek-galaxy-iii-essential-bx120-argb', '1ab2b1bc40de8cc9010b263688e3e2f9.jpg', '849d07488b3e14f70c29e7e250951a23.jpg', 'Thông tin sản phẩm :\r\n\r\nNhà sản xuất: XIGMATEK\r\nBảo hành: 12 tháng\r\nMàu sắc: RGB (3 fans)\r\n★ GIẢM GIÁ KHI MUA KÈM PC giá chỉ còn 550.000VNĐ.', '', 1, 145, 0, 0, 890000, 690000, '2021-07-01 20:46:34', '1', '2021-07-02 22:05:48', '1', 1, 1),
(84, 21, 'Fan Corsair LL120 RGB 120mm RGB LED — 3 Fan Pack with Lighting Node PRO', 'fan-corsair-ll120-rgb-120mm-rgb-led-?-3-fan-pack-with-lighting-node-pro', '673d36896adb7a97607978b2eeeb3d6e.jpg', 'b0dfa195a2fb2cf37ce49483a00c7cb9.jpg', 'Thông tin sản phẩm : \r\nNhà sản xuất            : Corsair \r\n\r\nBảo hành                  : 24 tháng\r\n\r\nMàu                           : Led RGB', '', 3, 18, 0, 25, 3050000, 2280000, '2021-07-01 20:51:30', '1', '2021-07-02 22:41:44', '1', 1, 1),
(85, 22, '( 450W ) Nguồn Gigabyte P450B - 80 Plus Bronze', '450w-nguon-gigabyte-p450b-80-plus-bronze', '090a734c098042ac17e3af73e09d41a4.jpg', '8ba8da6e58ecd7b4d67b543b08da65e3.jpg', 'Thông tin sản phẩm\r\n\r\nNhà sản xuất: Gigabyte\r\nTình trạng: New\r\nBảo hành: 36 Tháng', '<h3>Th&ocirc;ng số kỹ thuật:</h3>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Thương hiệu</strong></td>\r\n			<td>GIGABYTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bảo h&agrave;nh</strong></td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>36 th&aacute;ng</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng su&acirc;́t t&ocirc;́i đa</strong></td>\r\n			<td>450W</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>S&ocirc;́ c&ocirc;̉ng cắm</strong></td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>1 x 24-pin Main, 1 x 8-pin (4+4) EPS, 2 x 8-pin (6+2) PCIE, 3 x Peripheral (4-pin), 6 x SATA</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Hi&ecirc;̣u su&acirc;́t</strong></td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>80 Plus Bronze</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Quạt làm mát</strong></td>\r\n			<td>1 x 120 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Ngu&ocirc;̀n đ&acirc;̀u vào</strong></td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>100 - 240VAC</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>PFC</strong></td>\r\n			<td>Active</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chứng nhận bảo vệ</strong></td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>OVP</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Hệ số c&ocirc;ng suất</strong></td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>0.9</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kích thước</strong></td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>150 x 140 x 86 mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 125, 0, 0, 890000, 890000, '2021-07-01 20:56:44', '1', '2021-07-02 22:05:24', '1', 1, 1),
(87, 22, '( 650W ) Nguồn CoolerMaster MWE 650 BRONZE - V2 230V', '650w-nguon-coolermaster-mwe-650-bronze-v2-230v', '4930847b713a565873586312a7b9c251.jpg', '305e64ce2d60dea8edbdd9287a3d860d.jpg', 'Thông tin chung:\r\n\r\nHãng sản xuất: Cooler Master \r\nTình trạng: Mới\r\nBảo hành: 60 Tháng', '<h3><strong>TH&Ocirc;NG SỐ KĨ THUẬT</strong></h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>MODEL</td>\r\n			<td>MPE-6501-ACABW-B</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PHI&Ecirc;N BẢN ATX</td>\r\n			<td>ATX 12V V2.52</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PFC</td>\r\n			<td>Active PFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐIỆN &Aacute;P ĐẦU V&Agrave;O</td>\r\n			<td>200-240Vac</td>\r\n		</tr>\r\n		<tr>\r\n			<td>D&Ograve;NG ĐIỆN ĐẦU V&Agrave;O</td>\r\n			<td>10-5A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TẦN SỐ ĐẦU V&Agrave;O</td>\r\n			<td>50-60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&Iacute;CH THƯỚC (D X R X C)</td>\r\n			<td>140 x 150 x 86 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&Iacute;CH THƯỚC QUẠT</td>\r\n			<td>120mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>V&Ograve;NG BI QUẠT</td>\r\n			<td>HDB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TỐC ĐỘ QUẠT</td>\r\n			<td>2400 RPM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ĐỘ ỒN @ 20%</p>\r\n\r\n			<p>ĐỘ ỒN @ 50%</p>\r\n\r\n			<p>ĐỘ ỒN @ 100%</p>\r\n			</td>\r\n			<td>\r\n			<p>16.54 dBA</p>\r\n\r\n			<p>26.5 dBA</p>\r\n\r\n			<p>42.5 dBA</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>CHUẨN</p>\r\n\r\n			<p>CHUẨN 80 PLUS</p>\r\n			</td>\r\n			<td>\r\n			<p>88% Typically</p>\r\n\r\n			<p>80 PLUS Bronze EU 230V</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ERP 2014 LOT 3</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&Iacute;N HIỆU TỐT</td>\r\n			<td>100-500ms</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THỜI GIAN CHỜ</td>\r\n			<td>&gt;18ms at 100% Full&nbsp;Load@230Vac</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MTBF</td>\r\n			<td>&gt;100,000 Hours</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BẢO VỆ</td>\r\n			<td>OVP, OPP, SCP, UVP, OTP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>QUY ĐỊNH</td>\r\n			<td>CCC, CE, TUV-RH, RCM, EAC, cTUVus, FCC, BSMI, KC, CB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ĐẦU KẾT NỐI ATX 24-PIN</p>\r\n			</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐẦU NỐI 4 + 4 PIN EPS</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐẦU NỐI 8 PIN EPS</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KẾT NỐI SATA</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐẦU NỐI 4-PIN NGOẠI VI</td>\r\n			<td>3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐẦU KẾT NỐI PCI-E 6+2 PIN</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SERIE</td>\r\n			<td>MWE Bronze Series</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MODULAR</td>\r\n			<td>Non Modular</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80 PLUS</td>\r\n			<td>Bronze</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WATTAGE</td>\r\n			<td>500 đến 750W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 134, 0, 25, 1750000, 1300000, '2021-07-01 21:00:26', '1', '2021-07-02 22:39:44', '1', 1, 1),
(88, 22, '( 750W ) Nguồn CoolerMaster MWE 750 BRONZE - V2 230V', '750w-nguon-coolermaster-mwe-750-bronze-v2-230v', '779e56972bb4b43e7f9373cada5873ad.jpg', 'f511c42947e7010d4666737e925b6cbe.jpg', 'Thông tin chung:\r\n\r\nHãng sản xuất: Cooler Master \r\nTình trạng: Mới\r\nBảo hành: 60 Tháng', '<h3><strong>TH&Ocirc;NG SỐ KĨ THUẬT</strong></h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>MODEL</td>\r\n			<td>MPE-7501-ACABW-B</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PHI&Ecirc;N BẢN ATX</td>\r\n			<td>ATX 12V V2.52</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PFC</td>\r\n			<td>Active PFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐIỆN &Aacute;P ĐẦU V&Agrave;O</td>\r\n			<td>200-240Vac</td>\r\n		</tr>\r\n		<tr>\r\n			<td>D&Ograve;NG ĐIỆN ĐẦU V&Agrave;O</td>\r\n			<td>10-6A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TẦN SỐ ĐẦU V&Agrave;O</td>\r\n			<td>50-60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&Iacute;CH THƯỚC (D X R X C)</td>\r\n			<td>140 x 150 x 86 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&Iacute;CH THƯỚC QUẠT</td>\r\n			<td>120mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>V&Ograve;NG BI QUẠT</td>\r\n			<td>HDB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TỐC ĐỘ QUẠT</td>\r\n			<td>2400 RPM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ĐỘ ỒN @ 20%</p>\r\n\r\n			<p>ĐỘ ỒN @ 50%</p>\r\n\r\n			<p>ĐỘ ỒN @ 100%</p>\r\n			</td>\r\n			<td>\r\n			<p>11.12 dBA</p>\r\n\r\n			<p>20.3 dBA</p>\r\n\r\n			<p>39.5 dBA</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>CHUẨN</p>\r\n\r\n			<p>CHUẨN 80 PLUS</p>\r\n			</td>\r\n			<td>\r\n			<p>88% Typically</p>\r\n\r\n			<p>80 PLUS Bronze EU 230V</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ERP 2014 LOT 3</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&Iacute;N HIỆU TỐT</td>\r\n			<td>100-500ms</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THỜI GIAN CHỜ</td>\r\n			<td>&gt;18ms at 100% Full&nbsp;Load@230Vac</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MTBF</td>\r\n			<td>&gt;100,000 Hours</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BẢO VỆ</td>\r\n			<td>OVP, OPP, SCP, UVP, OTP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>QUY ĐỊNH</td>\r\n			<td>CCC, CE, TUV-RH, RCM, EAC, cTUVus, FCC, BSMI, KC, CB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ĐẦU KẾT NỐI ATX 24-PIN</p>\r\n			</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐẦU NỐI 4 + 4 PIN EPS</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐẦU NỐI 8 PIN EPS</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KẾT NỐI SATA</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐẦU NỐI 4-PIN NGOẠI VI</td>\r\n			<td>3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐẦU KẾT NỐI PCI-E 6+2 PIN</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SERIE</td>\r\n			<td>MWE Bronze Series</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80 PLUS</td>\r\n			<td>Bronze</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MODULAR</td>\r\n			<td>Non Modular</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WATTAGE</td>\r\n			<td>500 đến 750W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 131, 0, 0, 2090000, 2090000, '2021-07-01 21:01:57', '1', '2021-07-02 22:36:07', '1', 1, 1),
(89, 9, 'áđá', 'ada', 'd01d260e55aa49e1572e68a1f7f63a51.png', '0b887912a306276fb5675f5f05213e6f.jpg', '', '', 1, 1, 0, 0, 2323, 2342323, '2021-07-02 23:43:37', '1', '2021-07-02 23:43:37', '1', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 'Banner1', 'banner-1', '2.jpg', '2021-06-13 21:27:24', '1', '2021-06-13 23:42:42', '', 0, 1),
(2, 'Banner 2', 'Banner-2', 'default.png', '2021-06-13 23:45:04', '1', '2021-06-13 23:45:44', '', 0, 1),
(3, 'trang chu 1', 'trang-chu', 'banner-samsungs102.png', '2021-07-03 17:05:52', '1', '2021-07-02 23:21:56', '', 1, 1),
(4, 'slider trang chu 2', 'slider-trang-chu-2', 'iphone-banner.jpg', '2021-07-03 17:06:38', '1', '2021-07-03 17:06:38', '1', 1, 1),
(5, 'slider trang chu 3', 'slider-trang-chu-3', 'xsmaxbanner1.png', '2021-07-03 17:06:58', '1', '2021-07-02 23:10:38', '', 1, 1),
(6, 'ss', 'ss', 'icon_142e7.png', '2021-07-03 17:08:07', '1', '2021-07-03 17:08:07', '1', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Gò vấp', 'user-group.png', '2019-04-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Gò vấp', 'bc0d4c186522764fc9457b7bacb635e4.png', '2019-04-25 22:08:18', 1, 1),
(3, 'Nhân viên', 'nhanvien', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '09990990', 'Gò vấp', 'b78af1dc3e1098f71e7cd607c49f5d51.png', '2019-04-23 09:20:41', 1, 1),
(4, 'Nguyễn Văn A', 'nhanviena', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '0985657410', 'Gò vấp 1', '403ceb0ed6fdb72494bbd2ac39182b04.png', '2019-04-25 22:08:18', 1, 1),
(6, 'Nguyễn Văn B', 'nhanvienb', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 0, '09876543532', 'Gò vấp', 'user.png', '2019-04-23 09:18:18', 1, 1),
(7, 'Trần Quốc Bảo', 'bao2k1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'micaetranquocbao2001@gmail.com', 0, '23523523423', 'Gò vấp', '5eab74ad301795ffdfaa82f52579f71d.png', '2019-06-13 22:15:15', 0, 1),
(8, 'Phạm Xuân Nhựt', 'nhut2k1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'noreply.estore.pnb.2021@gmail.com', 0, '981643651', 'Gò vấp', 'default.png', '2019-06-13 22:30:03', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Chỉ mục cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Chỉ mục cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
