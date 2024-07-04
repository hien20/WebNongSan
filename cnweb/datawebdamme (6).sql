-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 06, 2021 lúc 05:47 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datawebdamme`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(43, 45, '2021-11-04', 100000, 'COD', NULL, '2021-11-03 19:35:01', '2021-11-03 19:35:01'),
(42, 44, '2021-11-04', 1000000, 'COD', NULL, '2021-11-03 19:29:59', '2021-11-03 19:29:59'),
(44, 46, '2021-11-04', 1200000, 'COD', NULL, '2021-11-03 21:41:09', '2021-11-03 21:41:09'),
(45, 47, '2021-11-04', 1200000, 'COD', NULL, '2021-11-03 21:42:48', '2021-11-03 21:42:48'),
(46, 48, '2021-11-04', 1200000, 'COD', NULL, '2021-11-03 21:46:03', '2021-11-03 21:46:03'),
(47, 49, '2021-11-04', 1200000, 'COD', NULL, '2021-11-03 21:46:54', '2021-11-03 21:46:54'),
(48, 50, '2021-11-04', 1200000, 'COD', NULL, '2021-11-03 21:48:37', '2021-11-03 21:48:37'),
(49, 51, '2021-11-04', 500000, 'COD', NULL, '2021-11-03 21:49:36', '2021-11-03 21:49:36'),
(50, 52, '2021-11-04', 500000, 'COD', NULL, '2021-11-03 21:50:41', '2021-11-03 21:50:41'),
(51, 53, '2021-11-04', 500000, 'COD', NULL, '2021-11-03 21:51:28', '2021-11-03 21:51:28'),
(52, 54, '2021-11-04', 500000, 'COD', NULL, '2021-11-03 21:51:43', '2021-11-03 21:51:43'),
(53, 55, '2021-11-04', 160000, 'COD', NULL, '2021-11-03 21:59:33', '2021-11-03 21:59:33'),
(54, 56, '2021-11-04', 15000, 'COD', NULL, '2021-11-04 09:33:04', '2021-11-04 09:33:04'),
(55, 57, '2021-11-04', 320000, 'COD', NULL, '2021-11-04 09:48:55', '2021-11-04 09:48:55'),
(56, 58, '2021-11-05', 1600000, 'ATM', NULL, '2021-11-04 17:57:06', '2021-11-04 17:57:06'),
(57, 59, '2021-11-06', 320000, 'COD', NULL, '2021-11-05 21:45:51', '2021-11-05 21:45:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `id_User` int(255) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `orderStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `id_User`, `quantity`, `unit_price`, `orderStatus`, `created_at`, `updated_at`) VALUES
(56, 57, 15, 13, 1, 320000, 'đang xử lý', '2021-11-05 21:45:51', '2021-11-05 21:45:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idProduct` int(10) UNSIGNED NOT NULL,
  `comment` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `idUser`, `idProduct`, `comment`, `created_at`, `updated_at`) VALUES
(1, 14, 2, 'sản phẩm very gút', '2021-10-27 11:38:16', '2021-10-28'),
(2, 14, 2, 'sản phẩm very gút', '2021-10-27 11:38:20', '2021-10-28'),
(8, 13, 7, 'hay quá', '2021-10-27 21:40:03', '2021-10-28'),
(9, 13, 7, 'vip rpo', '2021-10-27 21:41:18', '2021-10-28'),
(10, 13, 7, 'sản phẩm tuyệt lắm', '2021-10-27 21:54:45', '2021-10-28'),
(11, 13, 7, 'tốt lắm', '2021-10-28 05:46:14', '2021-10-28'),
(12, 14, 7, 'gút chọp', '2021-10-28 05:46:56', '2021-10-28'),
(13, 14, 2, 'gút gút ai lai ịt', '2021-10-28 06:44:37', '2021-10-28'),
(14, 13, 7, 'sản phẩm gút chọp', '2021-11-01 07:18:33', '2021-11-01'),
(15, 13, 2, 'gút chọp', '2021-11-04 17:58:34', '2021-11-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `created_at`, `updated_at`) VALUES
(58, 'adsfzg', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-04 17:57:06', '2021-11-04 17:57:06'),
(57, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-04 09:48:55', '2021-11-04 09:48:55'),
(56, 'vinhkaka', 'nam', 'master@gmail.com', 'Quang Nam', '0356523036', '2021-11-04 09:33:04', '2021-11-04 09:33:04'),
(55, 'adfas', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:59:33', '2021-11-03 21:59:33'),
(54, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:51:43', '2021-11-03 21:51:43'),
(53, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:51:28', '2021-11-03 21:51:28'),
(52, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:50:41', '2021-11-03 21:50:41'),
(51, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:49:36', '2021-11-03 21:49:36'),
(50, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:48:37', '2021-11-03 21:48:37'),
(49, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:46:54', '2021-11-03 21:46:54'),
(48, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:46:03', '2021-11-03 21:46:03'),
(47, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:42:48', '2021-11-03 21:42:48'),
(46, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 21:41:09', '2021-11-03 21:41:09'),
(45, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 19:35:01', '2021-11-03 19:35:01'),
(44, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 19:29:59', '2021-11-03 19:29:59'),
(43, 'vinhkaka', 'nam', 'master@gmail.com', 'quang nam', '0356523036', '2021-11-03 19:27:32', '2021-11-03 19:27:32'),
(42, 'sdafsad', '19', 'asdfas@gmail.com', 'asdfasdf', '0987654', '2021-11-03 16:07:05', '2021-11-03 16:07:05'),
(41, 'sdafsad', '19', 'asdfas@gmail.com', 'asdfasdf', '0987654', '2021-11-03 16:07:02', '2021-11-03 16:07:02'),
(59, 'full red bds', 'nam', 'master@gmail.com', 'quang nam', '0312648458', '2021-11-05 21:45:51', '2021-11-05 21:45:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `create_at`, `update_at`) VALUES
(1, 'Khi làm bể thủy sinh, mọi người thường tránh ánh mặt trời chiếu vào làm nóng và nhanh mọc rêu. Bất chấp lời cảnh báo, anh Dũng vẫn đặt bể cá ở ban công, đến nay sau 3 tháng không hề có rêu xanh.', 'Đam mê nuôi chim, cá, trồng cây và mong muốn mang một dòng suối nhỏ về ban công của mình, anh Quốc Dũng, 35 tuổi, ở quận 2, đã học hỏi kinh nghiệm làm hồ thủy sinh trên các diễn đàn mạng. Dịp 30/4, anh dành 2 ngày nghỉ để thi công.\n\nBể cá ghép từ kính cường lực 10 mm, đặt trên chân sắt. Bể có chiều dài 2,4 m, có kích thước vừa chiều dài ban công, cao 0,35 m, sâu 0,2 m, dung tích 150 lít nước.', 'tin1.jpg', '2021-10-11 12:26:24', '0000-00-00 00:00:00'),
(2, 'Đặt mua cá cảnh trên mạng, khổ chủ ngỡ ngàng khi nhận sản phẩm', 'Từ kích thước cho đến màu sắc giữa con cá mẫu và cá nhận được hoàn toàn khác nhau.', 'tin2.png', '2021-10-11 12:29:59', '0000-00-00 00:00:00'),
(3, 'Mua cá đuối chơi để cả năm \'không bị đuối\'', 'Chỉ cần sơ suất, cá đuối nước ngọt giá vài chục triệu đồng có thể chết trong vài phút, tuy nhiên nhiều người vẫn thích mua cá này đầu năm.\n\n27 Tết, anh Nguyễn Thành Hưng (35 tuổi, quận 1, TPHCM) đi mua cặp cá đuối với giá 40 triệu đồng, anh cho biết \"người miền Nam hay quan niệm ngược, như ăn vịt lộn cho cái xui lộn thành cái hên. Nên tôi mua cá đuối trong nhà cho cả năm khỏi đuối\".', 'tin3.png', '2021-10-11 12:30:09', '0000-00-00 00:00:00'),
(4, 'Thái Lan chọn loài cá hung dữ làm động vật thủy sinh quốc gia', 'Cá chọi Xiêm nổi tiếng với bản tính hung dữ và hiếu chiến, sẵn sàng tấn công hình ảnh của chính mình ở trong gương. ', 'tin4.jpg', '2021-10-11 12:29:28', '0000-00-00 00:00:00'),
(5, 'Cá Ping Pong \'siêu béo\' thu hút người chơi ở Sài Gòn', 'Có giá từ 15.000 đến vài trăm nghìn, cá Ping Pong mũm mĩm, dáng bơi đáng yêu đang là thú nuôi được nhiều người lựa chọn', 'tin5.jpg', '2021-10-11 12:31:05', '0000-00-00 00:00:00'),
(6, 'Vợ chồng giận nhau vì chồng bỏ ra số tiền ngang mua cái xe máy để rước con cá bé tẹo về nhà', 'Nhìn bé nhỏ nhưng màu sắc của chúng thật sự ấn tượng, làm cho dân chơi cá cảnh cũng phải mê mẩn không rời.', 'tin6.jpg', '2021-10-11 12:56:57', '2021-10-11 12:56:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(2, 'lọc ván nước hiệu SunSun', 6, 'lọc ván nước hiệu SunSun giúp đảm bảo mặt hồ thủy sinh của bạn luôn trong vắt sạch đẹp ngăn ngừa váng dầu gây hại đến hồ cá', 1000000, 800000, 'locvansunsun.jpg', 'cái', 1, NULL, '2021-11-03 01:23:22'),
(4, 'cám thái ', 5, 'cám thái cho cá ', 160000, 0, 'camthai.jpg', 'hôp/1kg', 0, NULL, NULL),
(5, 'trùng huyết đóng vỉ', 5, 'trùng huyết đóng vỉ', 120000, 100000, 'trunhuyet.jpg', 'vỉ', 0, NULL, '2021-10-19 17:52:40'),
(6, 'lọc ván nước hiệu SunSun', 6, 'abcxyz', 1000000, 900000, 'locvansunsun.jpg', 'bộ', 0, NULL, '2021-10-20 06:11:41'),
(7, 'hồ kính mini nuôi cá betta', 4, 'hồ kính mini nuôi cá betta', 160000, 0, 'becaminibeta.jpg', 'hồ', 1, NULL, NULL),
(9, 'combo 5 thùng nhựa nuôi cá màu đen 7 lít', 4, '5 khay nhựa nuôi cá 7 lít', 650000, 500000, '5khaynhua.jpg', 'khay', 0, NULL, NULL),
(11, 'bể cá sinh thái 2 tầng guppy and betta', 3, 'bể cá hai tầng ', 1500000, 1200000, 'becahaitang.jpg', 'bể', 0, NULL, NULL),
(15, 'bể nuôi cá HATELI, Hộp cách ly cỡ nhỏ ', 3, '', 350000, 320000, 'bengan2.jpg', 'cái', 1, NULL, NULL),
(17, 'vợt vớt cá nano', 6, '', 25000, 20000, 'votnano.jpg', 'cai', 0, NULL, NULL),
(18, 'cá Neon bản origial', 2, '', 10000, 0, 'caneon.png', 'con', 0, NULL, NULL),
(19, 'cá bút chì', 2, '', 15000, 0, 'cabutchi.jpg', 'con', 1, NULL, NULL),
(20, 'cá sóc đầu đỏ', 2, '', 15000, 0, 'socdaudo.jpg', 'con', 0, NULL, NULL),
(21, 'cá sọc ngựa original', 2, '', 10000, 7000, 'socngua.jpg', 'cái', 0, NULL, NULL),
(22, 'Full Black Guppy', 1, '', 160000, 150000, 'fullblack.jpg', 'cặp', 1, NULL, NULL),
(23, 'Guppy Koi Red', 1, '', 300000, 0, 'koired.jpg', 'cặp ', 0, NULL, NULL),
(24, 'Dumbo Red Tail Guppy', 1, '', 250000, 0, 'dumboredtail.png', 'cặp', 0, NULL, NULL),
(25, ' Blue Grass Guppy', 1, '', 250000, 100000, 'blue.jpg', 'cặp', 0, NULL, NULL),
(26, 'Rồng Tím Guppy', 1, 'cực phẩm khó tìm trong các dòng cá guppy vì độ nhiễm khá cao nên sở hữu nó là điều rất khó ', 300000, 280000, 'rongtim.jpg', 'cặp', 1, NULL, NULL),
(27, 'rồng đỏ Guppy', 1, '', 100000, 80000, 'rongdo.jpg', 'cặp', 0, NULL, NULL),
(28, 'panda Guppy', 1, '', 120000, 0, 'Panda.jpg', 'hộp', 1, NULL, NULL),
(79, 'bobo đông lạnh', 5, 'bo bo đông lạnh cho cá', 7000, 5000, 'bobo.jpg', 'túi nhỏ', 0, '2021-10-20 05:53:40', '2021-10-20 05:53:40'),
(82, 'lọc ván nước hiệu SunSun', 1, 'sadfghj', 120000, 0, 'Screenshot (19).png', 'bộ', 0, '2021-11-02 01:49:09', '2021-11-02 01:49:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'ban1.jpg'),
(2, '', 'ban2.jpg'),
(3, '', 'ban3.jpg'),
(4, '', 'ban4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cá Guppy', NULL, NULL),
(2, 'cá thả thủy sinh ', NULL, NULL),
(3, 'hồ thủy sinh setup sẵn', NULL, NULL),
(4, 'hồ nuôi cá', NULL, NULL),
(5, 'thức ăn cá', NULL, NULL),
(6, 'phụ kiện', NULL, NULL),
(7, 'cây thủy sinh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Nguyen Hung Vinh', 'vinh@gmail.com', '$2y$10$nG6D4uNuHFdgptMyq7sRi.7tGG2j0KOox2FPMvfpU.nixmC17STdK', '0356523036', 'Quảng Nam', NULL, '2021-10-05 16:41:49', '2021-10-05 16:41:49'),
(8, 'Nguyen Hung Vinh', 'vinhne@gmail.com', '$2y$10$l.ybTnpsMJU2Ab0VOHv5lO7pv4D.9Oo7pgdZauxxqyDOL3hkR/H7O', '0356543036', 'Quang Nam', NULL, '2021-10-06 04:27:11', '2021-10-06 04:27:11'),
(9, 'Nguyen Hung Van', 'vinhkaka@gmail.com', '$2y$10$HefpTFAtfNrz7dNaMpZsW.h0ib4swQQpHnIIz5Kvck.lSLN/g1Jou', '0356523036', 'Quang Nam', NULL, '2021-10-06 08:30:40', '2021-10-06 08:30:40'),
(10, 'Nguyen Hung Vinh ka', 'vinhcute@gmail.com', '$2y$10$s.oLl4XAJGehGyrMXlNdMuddurIarOsr5vQWjqLV2n/5jkqna5ZiW', '03674863875', 'quang nam', NULL, '2021-10-09 04:31:01', '2021-10-09 04:31:01'),
(11, 'ADMIN123', 'admin@gmail.com', '$2y$10$ScaFpvgaPetVTwPks9yy5O3RBXPOrtm4I/rHjpTkMrKOUw/qTdBqe', '0', 'no', NULL, '2021-10-09 15:07:32', '2021-10-09 15:07:32'),
(12, 'nguyen hung vinh', 'vinhday@gmail.com', '$2y$10$Xbwsk.XDATIKwRqs2Ltd9eO/WcYS/9/7WURvjJWtmvPTs3pmk4M1C', '0356523036', 'Quang Nam', NULL, '2021-10-10 14:03:14', '2021-10-10 14:03:14'),
(13, 'master', 'master@gmail.com', '$2y$10$FUCc9aKnoyds50FEcqx7R./LtMficgoTXidXcGrMFnzJwne6/GKWO', '012345678', '0', NULL, '2021-10-18 06:55:11', '2021-10-18 06:55:11'),
(14, 'test', 'test@gmail.com', '$2y$10$PDswweNn9kamDwW8JgVcTuGE52vmPLD5.HnPxvu.SM4g4DN2HvkUO', '012345', '0', NULL, '2021-10-18 07:02:33', '2021-10-18 07:02:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_product` (`idProduct`),
  ADD KEY `lk_user` (`idUser`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `lk_product` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `lk_user` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
