-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 24, 2024 lúc 12:41 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `123`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_password` varchar(100) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_phone` varchar(20) NOT NULL,
  `account_type` int(11) NOT NULL,
  `account_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `account_name`, `account_password`, `account_email`, `account_phone`, `account_type`, `account_status`) VALUES
(23, 'Admin', '123456', 'admin@gmail.com', '', 2, 0);
(1, 'Ann', '123', 'ann@gmail.com', '', 1, 0),
(22, 'Văn An', '1', 'vanan@gmail.com', '', 2, 0),
(1, 'Ann', '123', 'ann@gmail.com', '', 1, 0),
(22, 'Văn An', '1', 'vanan@gmail.com', '', 2, 0),

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_author` varchar(100) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_summary` text NOT NULL,
  `article_content` text NOT NULL,
  `article_image` varchar(100) NOT NULL,
  `article_date` date NOT NULL,
  `article_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`article_id`, `article_author`, `article_title`, `article_summary`, `article_content`, `article_image`, `article_date`, `article_status`) VALUES
(5, 'Viết Sơn', 'THÔNG BÁO CHÍNH THỨC TỪ CÔNG TY CỔ PHẦN TIN HỌC VIẾT SƠN', '<h3>TH&Ocirc;NG B&Aacute;O CH&Iacute;NH THỨC TỪ C&Ocirc;NG TY CỔ PHẦN TIN HỌC VIẾT SƠN</h3>\r\n', '<p>Kể từ ng&agrave;y 25/07/2024, tập đo&agrave;n Achieva Technology SDN BHD ch&iacute;nh thức trở th&agrave;nh Nh&agrave; Ph&acirc;n Phối khu vực của Intel ( Intel Authorized Distributor) tại thị trường Việt Nam.</p>\r\n\r\n<p>Được sự ủy th&aacute;c v&agrave; t&iacute;n nhiệm từ tập đo&agrave;n Achieva:</p>\r\n\r\n<p>C&ocirc;ng Ty Cổ Phần Tin Học Viết Sơn ch&iacute;nh thức trở th&agrave;nh đối t&aacute;c đại diện , với mục ti&ecirc;u th&uacute;c đẩy hoạt động kinh doanh v&agrave; ph&acirc;n phối sản phẩm Intel tại thị trường Việt Nam.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cam kết sẽ lu&ocirc;n mang lại những gi&aacute; trị tốt nhất cho tất cả Qu&yacute; đối t&aacute;c kinh doanh cũng như Qu&yacute; Kh&aacute;ch H&agrave;ng đ&atilde; lựa chọn sản phẩm Intel v&agrave; C&ocirc;ng ty Viết Sơn</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/vietson?__eep__=6&amp;__cft__[0]=AZWHd4QA6q8JOjGDPwfBCFdaoc0H3T2u9heWTUHOxrbxYiRwblGL8r9rTp-TUli0np2O46pMn4CWQLT2x3NnSjB9RFOqGCTOOg2TcQ9xStdklZOdY7FWH7Ql2R5h1fRx0VULuBSp2zE9YTogl15LGsDsBBITjssRz7GxU2ZoJPUBDgmLlOL1VIVEGb2C4YcGUZtyvRFTg7OkG4w_ys56mwCe&amp;__tn__=*NK-R\">#Vietson</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/intel?__eep__=6&amp;__cft__[0]=AZWHd4QA6q8JOjGDPwfBCFdaoc0H3T2u9heWTUHOxrbxYiRwblGL8r9rTp-TUli0np2O46pMn4CWQLT2x3NnSjB9RFOqGCTOOg2TcQ9xStdklZOdY7FWH7Ql2R5h1fRx0VULuBSp2zE9YTogl15LGsDsBBITjssRz7GxU2ZoJPUBDgmLlOL1VIVEGb2C4YcGUZtyvRFTg7OkG4w_ys56mwCe&amp;__tn__=*NK-R\">#Intel</a></p>\r\n\r\n<p>--------------------------------------------------------</p>\r\n\r\n<p>VIẾT SƠN - Leading Distributor in the Internet of Every things</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf6/1/16/1f3e0.png\" />&nbsp;150Ter B&ugrave;i Thị Xu&acirc;n, P. Phạm Ngũ L&atilde;o, Q.1, TP.HCM</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tf6/1/16/1f3e0.png\" />&nbsp;Chi nh&aacute;nh HN : tầng 4, số 1 Th&aacute;i H&agrave;- Trung Liệt, Đống Đa, H&agrave; Nội.</p>\r\n', '1726671733_on6.jpg', '2024-09-18', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `media_path` varchar(255) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `media_path`, `upload_date`) VALUES
(13, 'uploads/banner/1.mp4', '2024-09-20 09:08:01'),
(14, 'uploads//1.mp4', '2024-09-20 09:08:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'INTEL'),
(2, 'KINGSTON'),
(3, 'AMD'),
(4, 'GSKILL'),
(6, 'ROSA'),
(7, 'LEXAR'),
(8, 'AOC'),
(10, 'ASROCK'),
(11, 'ASUS');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `capacity`
--

CREATE TABLE `capacity` (
  `capacity_id` int(11) NOT NULL,
  `capacity_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `capacity`
--

INSERT INTO `capacity` (`capacity_id`, `capacity_name`) VALUES
(3, 'I7'),
(4, 'I5'),
(5, 'I9'),
(6, 'I3'),
(7, 'RYZEN 7'),
(8, 'RYZEN 9'),
(9, 'THẺ NHỚ'),
(10, 'ROSA'),
(11, 'RYZEN 5'),
(13, 'Màn hình'),
(14, 'Ram'),
(15, 'ASROCK');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `category_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_image`) VALUES
(1, 'INTEL', 'Tất cả các sản phẩm của intel', '1.jpeg'),
(2, 'AMD', 'Tất cả sản phẩm của AMD', 'amd.jpg'),
(3, 'Kingston', 'Tất cả sản phẩm của Kingston', 'kingston.jpg'),
(4, 'ASUS', 'Tất cả sản phẩm Asus\r\n', ''),
(12, 'AOC', 'Tất cả sản phẩm của AOC', 'aoc.jpg'),
(13, 'ASROCK', 'Tất cả sản phẩm của ASROCK', ''),
(14, 'G.SKILL', 'Tất cả các sản phẩm G.SKILL', '1727065770_'),
(15, 'PALIT ', 'Tất cả các sản phẩm Palit ', '1727065797_'),
(16, 'ROSA', 'Tất cả sản phẩm Rosa', '1727065838_');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `collection_name` varchar(100) NOT NULL,
  `collection_keyword` varchar(100) NOT NULL,
  `collection_image` varchar(100) NOT NULL,
  `collection_description` varchar(255) NOT NULL,
  `collection_order` int(11) NOT NULL,
  `collection_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `collection_keyword`, `collection_image`, `collection_description`, `collection_order`, `collection_type`) VALUES
(1, 'Intel', 'Intel', '1684376498_.jpg', 'Sản phẩm intel', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment_name` varchar(50) NOT NULL,
  `comment_email` varchar(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `article_id`, `comment_name`, `comment_email`, `comment_content`, `comment_date`, `comment_status`) VALUES
(9, 8, 'An', 'vanan@gmail.com', 'Hay quá admin ơi', '2023-05-30', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_gender` int(11) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `account_id`, `customer_name`, `customer_gender`, `customer_email`, `customer_phone`, `customer_address`) VALUES
(21, 0, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_phone` varchar(20) NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `delivery_note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `account_id`, `delivery_name`, `delivery_phone`, `delivery_address`, `delivery_note`) VALUES
(18, 13, 'Văn An', '1234567898', 'Hồ Chí Minh', ''),
(7387, 23, 'test', '0126354893', 'Hồ Chí Minh', ''),
(8867, 23, 'test', '0123456733', 'Hồ Chí Minh', ''),
(9579, 23, 'test', '0866421556', 'Hà nội', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluate`
--

CREATE TABLE `evaluate` (
  `evaluate_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `evaluate_rate` int(11) NOT NULL,
  `evaluate_content` text NOT NULL,
  `evaluate_date` varchar(50) NOT NULL,
  `evaluate_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `evaluate`
--

INSERT INTO `evaluate` (`evaluate_id`, `account_id`, `product_id`, `account_name`, `evaluate_rate`, `evaluate_content`, `evaluate_date`, `evaluate_status`) VALUES
(10, 7, 15, 'An', 5, 'Sản phâm rất tuỵet', '2023-06-13 09:46:32', 1),
(14, 13, 19, 'Văn An', 4, 'Sản phẩm ổn trong tầm giá', '2023-06-13 10:07:48', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `staf_name` varchar(50) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_phone` varchar(20) NOT NULL,
  `inventory_note` varchar(100) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `inventory_date` date NOT NULL,
  `total_amount` float NOT NULL,
  `inventory_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `account_id`, `staf_name`, `supplier_name`, `supplier_phone`, `inventory_note`, `inventory_code`, `inventory_date`, `total_amount`, `inventory_status`) VALUES
(16, 0, 'An', 'Brave Bits', '123456789', 'Bổ sung hàng', '5574', '2023-06-19', 6000000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_detail_id` int(11) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price_import` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_detail_id`, `inventory_code`, `product_id`, `product_quantity`, `product_price_import`) VALUES
(1, '9124', 21, 3, 2500000),
(11, '3997', 22, 12, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `metrics`
--

CREATE TABLE `metrics` (
  `metric_id` int(11) NOT NULL,
  `metric_date` date NOT NULL,
  `metric_order` int(11) NOT NULL,
  `metric_sales` varchar(100) NOT NULL,
  `metric_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `metrics`
--

INSERT INTO `metrics` (`metric_id`, `metric_date`, `metric_order`, `metric_sales`, `metric_quantity`) VALUES
(1, '2023-05-14', 19, '20000000', 34);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `momo_id` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_code` int(11) NOT NULL,
  `momo_amount` varchar(50) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`momo_id`, `partner_code`, `order_code`, `momo_amount`, `order_info`, `order_type`, `trans_id`, `payment_date`, `pay_type`, `payment_status`) VALUES
(2, 'MOMOBKUN20180529', 6434, '9000000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2023-06-15 13:05:51', 'napas', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `order_code`, `order_date`, `account_id`, `delivery_id`, `total_amount`, `order_type`, `order_status`) VALUES
(166, 6492, '2023-06-20 07:26:34', 7, 6743, 85050000, 4, 3),
(167, 6872, '2023-06-20 08:17:07', 7, 8388, 7360000, 4, 3),
(171, 5519, '2023-07-07 18:10:18', 1, 2912, 3325000, 5, 3),
(172, 6976, '2023-10-07 23:42:30', 22, 3525, 3325000, 1, -1),
(173, 7265, '2023-10-07 23:45:24', 22, 8440, 3325000, 4, -1),
(174, 2209, '2023-10-07 19:07:36', 23, 2115, 123, 6, -1),
(175, 9398, '2023-10-07 19:14:48', 23, 8867, 211, 6, -1),
(176, 4635, '2023-10-07 19:33:00', 23, 6820, 123, 6, -1),
(177, 2119, '2024-06-30 08:47:38', 23, 7387, 123, 1, -1),
(178, 1877, '2024-06-30 08:48:07', 23, 3154, 178, 1, 5),
(179, 1694, '2024-06-30 09:05:09', 23, 9579, 8550000, 4, 2),
(180, 26, '2024-06-30 09:07:39', 23, 3659, 8550000, 4, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_code`, `product_id`, `product_quantity`, `product_price`, `product_sale`) VALUES
(172, 6492, 13, 9, 10500000, 10),
(173, 6872, 21, 2, 4000000, 8),
(176, 4287, 14, 14, 10590000, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `capacity_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `quantity_sales` int(11) NOT NULL,
  `product_price_import` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` text NOT NULL,
  `product_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_brand`, `capacity_id`, `product_quantity`, `quantity_sales`, `product_price_import`, `product_price`, `product_sale`, `product_description`, `product_image`, `product_status`) VALUES
(10, 'Bộ vi xử lý AMD Ryzen 7 5800X / 3.8GHz Boost 4.7GHz / 8 nhân 16 luồng / 32MB / AM4', 0, 3, 7, 7, 7, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"10\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; sản phẩm</th>\r\n			<th>Chi tiết cấu h&igrave;nh</th>\r\n		</tr>\r\n		<tr>\r\n			<td>i3-12100</td>\r\n			<td>CPU Intel&reg; Core&trade; i3 12100 Processor (3.30Ghz Max Turbo 4.30GHz /12MB Intel&reg; SmartCache/4C/8T) - SK1700</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H610M2</td>\r\n			<td>Mainboard - Intel H610 SK1700: 4 x DIMM DDR5, 2 x DIMM DDR4 23200/3000/2933/2800/2666MHz<br />\r\n			- 3 x PCIe 4.0/3.0 x16 slot; 1 x PCI slot<br />\r\n			- Graphics Output Options: 1 x D-Sub Port, 1 x DVI-D port, 1 x HDMI port, 1 x Display port<br />\r\n			- 4 SATA3; 1 x M.2 2280, 2260, 2242 (both SATA &amp; x4 PCIE mode)<br />\r\n			- 4 x USB 3.1 port(s) (2 Rear (included 1 Type C), 8 x USB 2.0 (2 x USB 2.0 Rear, Support 6 x USB 2.0 at midboard)<br />\r\n			- Realtek Gigabit LAN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LD4U08G32C22ST-BGS</td>\r\n			<td>Ram Lexar 8GB bus 3200 DDR4 Udimm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LNM620X256G-RNNNG</td>\r\n			<td>Ổ cứng SSD Lexar 256GB M2 PCIe Gen3 - R: 3500MB/s - W: 1300MB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mouse EMD14 - Keyboard EKD14</td>\r\n			<td>Mouse EMD14 (USB) - Keyboard EKD14 (USB)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Case E7775</td>\r\n			<td>Th&ugrave;ng m&aacute;y Emaster Case E7775</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PSU 450Elite</td>\r\n			<td>Nguồn Jetek PSU 450Elite 450W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22B3HM/74</td>\r\n			<td>M&agrave;n h&igrave;nh AOC 22B3HM/74 21.5&rdquo;/ FHD/ VA/ 75Hz/ Phẳng - Kết nối : 1xDsub (VGA) - 1x HDMI</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671577_1724002658_1723996525_name (26).jpg', 1),
(11, 'Rosa A5500GT', 0, 6, 6, 15, 0, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"10\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; sản phẩm</th>\r\n			<th>Chi tiết cấu h&igrave;nh</th>\r\n		</tr>\r\n		<tr>\r\n			<td>i3-12100</td>\r\n			<td>CPU Intel&reg; Core&trade; i3 12100 Processor (3.30Ghz Max Turbo 4.30GHz /12MB Intel&reg; SmartCache/4C/8T) - SK1700</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H610M2</td>\r\n			<td>Mainboard - Intel H610 SK1700: 4 x DIMM DDR5, 2 x DIMM DDR4 23200/3000/2933/2800/2666MHz<br />\r\n			- 3 x PCIe 4.0/3.0 x16 slot; 1 x PCI slot<br />\r\n			- Graphics Output Options: 1 x D-Sub Port, 1 x DVI-D port, 1 x HDMI port, 1 x Display port<br />\r\n			- 4 SATA3; 1 x M.2 2280, 2260, 2242 (both SATA &amp; x4 PCIE mode)<br />\r\n			- 4 x USB 3.1 port(s) (2 Rear (included 1 Type C), 8 x USB 2.0 (2 x USB 2.0 Rear, Support 6 x USB 2.0 at midboard)<br />\r\n			- Realtek Gigabit LAN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LD4U08G32C22ST-BGS</td>\r\n			<td>Ram Lexar 8GB bus 3200 DDR4 Udimm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LNM620X256G-RNNNG</td>\r\n			<td>Ổ cứng SSD Lexar 256GB M2 PCIe Gen3 - R: 3500MB/s - W: 1300MB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mouse EMD14 - Keyboard EKD14</td>\r\n			<td>Mouse EMD14 (USB) - Keyboard EKD14 (USB)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Case E7775</td>\r\n			<td>Th&ugrave;ng m&aacute;y Emaster Case E7775</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PSU 450Elite</td>\r\n			<td>Nguồn Jetek PSU 450Elite 450W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22B3HM/74</td>\r\n			<td>M&agrave;n h&igrave;nh AOC 22B3HM/74 21.5&rdquo;/ FHD/ VA/ 75Hz/ Phẳng - Kết nối : 1xDsub (VGA) - 1x HDMI</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671555_A5500GT.jpg', 1),
(12, 'ROSA I12100', 0, 6, 3, 9, 6, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"10\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; sản phẩm</th>\r\n			<th>Chi tiết cấu h&igrave;nh</th>\r\n		</tr>\r\n		<tr>\r\n			<td>i3-12100</td>\r\n			<td>CPU Intel&reg; Core&trade; i3 12100 Processor (3.30Ghz Max Turbo 4.30GHz /12MB Intel&reg; SmartCache/4C/8T) - SK1700</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H610M2</td>\r\n			<td>Mainboard - Intel H610 SK1700: 4 x DIMM DDR5, 2 x DIMM DDR4 23200/3000/2933/2800/2666MHz<br />\r\n			- 3 x PCIe 4.0/3.0 x16 slot; 1 x PCI slot<br />\r\n			- Graphics Output Options: 1 x D-Sub Port, 1 x DVI-D port, 1 x HDMI port, 1 x Display port<br />\r\n			- 4 SATA3; 1 x M.2 2280, 2260, 2242 (both SATA &amp; x4 PCIE mode)<br />\r\n			- 4 x USB 3.1 port(s) (2 Rear (included 1 Type C), 8 x USB 2.0 (2 x USB 2.0 Rear, Support 6 x USB 2.0 at midboard)<br />\r\n			- Realtek Gigabit LAN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LD4U08G32C22ST-BGS</td>\r\n			<td>Ram Lexar 8GB bus 3200 DDR4 Udimm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LNM620X256G-RNNNG</td>\r\n			<td>Ổ cứng SSD Lexar 256GB M2 PCIe Gen3 - R: 3500MB/s - W: 1300MB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mouse EMD14 - Keyboard EKD14</td>\r\n			<td>Mouse EMD14 (USB) - Keyboard EKD14 (USB)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Case E7775</td>\r\n			<td>Th&ugrave;ng m&aacute;y Emaster Case E7775</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PSU 450Elite</td>\r\n			<td>Nguồn Jetek PSU 450Elite 450W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22B3HM/74</td>\r\n			<td>M&agrave;n h&igrave;nh AOC 22B3HM/74 21.5&rdquo;/ FHD/ VA/ 75Hz/ Phẳng - Kết nối : 1xDsub (VGA) - 1x HDMI</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671531_I12100.jpg', 1),
(13, 'Bộ vi xử lý AMD Ryzen 7 5800X / 3.8GHz Boost 4.7GHz / 8 nhân 16 luồng / 32MB / AM4', 0, 3, 7, 2, 9, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Số nh&acirc;n (Cores)</strong></td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số luồng (Threads)</strong></td>\r\n			<td>24</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tốc độ xử l&yacute;</strong></p>\r\n			</td>\r\n			<td>Xung cơ bản 4.4GHz, xung tối đa 5.6GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ đệm L1</strong></td>\r\n			<td>768 KB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L2</strong></p>\r\n			</td>\r\n			<td>12 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L3</strong></p>\r\n			</td>\r\n			<td>128 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Mở kh&oacute;a để &eacute;p xung</strong></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ xử l&yacute; cho l&otilde;i CPU</strong></td>\r\n			<td>TSMC 5nm FinFET</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Socket</strong></td>\r\n			<td>AM5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phi&ecirc;n bản PCI Express&nbsp;</strong></p>\r\n			</td>\r\n			<td>PCIe&reg; 5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giải ph&aacute;p tản nhiệt&nbsp;(PIB)</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Kh&ocirc;ng c&oacute; sẵn</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Điện năng ti&ecirc;u thụ&nbsp;mặc định</strong></p>\r\n			</td>\r\n			<td>120 W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ hỗ trợ</strong></p>\r\n			</td>\r\n			<td><strong>Loại:</strong>&nbsp;DDR5<br />\r\n			<strong>K&ecirc;nh:</strong>&nbsp;2<br />\r\n			<strong>Tốc độ bộ nhớ tối đa:&nbsp;</strong>\r\n			<ul>\r\n				<li>2x1R DDR5-5200</li>\r\n				<li>2x2R DDR5-5200</li>\r\n				<li>4x1R DDR5-3600</li>\r\n				<li>4x2R DDR5-3600</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&iacute;nh năng đồ họa</strong></p>\r\n			</td>\r\n			<td><strong>Graphics Model:</strong>&nbsp;AMD Radeon&trade; Graphics<br />\r\n			<strong>Graphics Core Count:&nbsp;</strong>2<br />\r\n			<strong>Graphics Frequency:</strong>&nbsp;2200 MHz<br />\r\n			<strong>GPU Base:&nbsp;</strong>400 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ hỗ trợ</strong></td>\r\n			<td>AMD EXPO&trade; Technology<br />\r\n			AMD Ryzen&trade; Technologies</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671507_1723996579_name (26).jpg', 1),
(14, 'Bộ vi xử lý AMD Ryzen 7 5800X / 3.8GHz Boost 4.7GHz / 8 nhân 16 luồng / 32MB / AM4', 0, 3, 7, 0, 15, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Số nh&acirc;n (Cores)</strong></td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số luồng (Threads)</strong></td>\r\n			<td>24</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tốc độ xử l&yacute;</strong></p>\r\n			</td>\r\n			<td>Xung cơ bản 4.4GHz, xung tối đa 5.6GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ đệm L1</strong></td>\r\n			<td>768 KB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L2</strong></p>\r\n			</td>\r\n			<td>12 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L3</strong></p>\r\n			</td>\r\n			<td>128 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Mở kh&oacute;a để &eacute;p xung</strong></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ xử l&yacute; cho l&otilde;i CPU</strong></td>\r\n			<td>TSMC 5nm FinFET</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Socket</strong></td>\r\n			<td>AM5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phi&ecirc;n bản PCI Express&nbsp;</strong></p>\r\n			</td>\r\n			<td>PCIe&reg; 5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giải ph&aacute;p tản nhiệt&nbsp;(PIB)</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Kh&ocirc;ng c&oacute; sẵn</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Điện năng ti&ecirc;u thụ&nbsp;mặc định</strong></p>\r\n			</td>\r\n			<td>120 W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ hỗ trợ</strong></p>\r\n			</td>\r\n			<td><strong>Loại:</strong>&nbsp;DDR5<br />\r\n			<strong>K&ecirc;nh:</strong>&nbsp;2<br />\r\n			<strong>Tốc độ bộ nhớ tối đa:&nbsp;</strong>\r\n			<ul>\r\n				<li>2x1R DDR5-5200</li>\r\n				<li>2x2R DDR5-5200</li>\r\n				<li>4x1R DDR5-3600</li>\r\n				<li>4x2R DDR5-3600</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&iacute;nh năng đồ họa</strong></p>\r\n			</td>\r\n			<td><strong>Graphics Model:</strong>&nbsp;AMD Radeon&trade; Graphics<br />\r\n			<strong>Graphics Core Count:&nbsp;</strong>2<br />\r\n			<strong>Graphics Frequency:</strong>&nbsp;2200 MHz<br />\r\n			<strong>GPU Base:&nbsp;</strong>400 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ hỗ trợ</strong></td>\r\n			<td>AMD EXPO&trade; Technology<br />\r\n			AMD Ryzen&trade; Technologies</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671492_1723996579_name (26).jpg', 1),
(15, 'Bộ vi xử lý AMD Ryzen 7 5800X / 3.8GHz Boost 4.7GHz / 8 nhân 16 luồng / 32MB / AM4', 0, 3, 7, 8, 4, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Số nh&acirc;n (Cores)</strong></td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số luồng (Threads)</strong></td>\r\n			<td>24</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tốc độ xử l&yacute;</strong></p>\r\n			</td>\r\n			<td>Xung cơ bản 4.4GHz, xung tối đa 5.6GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ đệm L1</strong></td>\r\n			<td>768 KB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L2</strong></p>\r\n			</td>\r\n			<td>12 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L3</strong></p>\r\n			</td>\r\n			<td>128 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Mở kh&oacute;a để &eacute;p xung</strong></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ xử l&yacute; cho l&otilde;i CPU</strong></td>\r\n			<td>TSMC 5nm FinFET</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Socket</strong></td>\r\n			<td>AM5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phi&ecirc;n bản PCI Express&nbsp;</strong></p>\r\n			</td>\r\n			<td>PCIe&reg; 5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giải ph&aacute;p tản nhiệt&nbsp;(PIB)</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Kh&ocirc;ng c&oacute; sẵn</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Điện năng ti&ecirc;u thụ&nbsp;mặc định</strong></p>\r\n			</td>\r\n			<td>120 W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ hỗ trợ</strong></p>\r\n			</td>\r\n			<td><strong>Loại:</strong>&nbsp;DDR5<br />\r\n			<strong>K&ecirc;nh:</strong>&nbsp;2<br />\r\n			<strong>Tốc độ bộ nhớ tối đa:&nbsp;</strong>\r\n			<ul>\r\n				<li>2x1R DDR5-5200</li>\r\n				<li>2x2R DDR5-5200</li>\r\n				<li>4x1R DDR5-3600</li>\r\n				<li>4x2R DDR5-3600</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&iacute;nh năng đồ họa</strong></p>\r\n			</td>\r\n			<td><strong>Graphics Model:</strong>&nbsp;AMD Radeon&trade; Graphics<br />\r\n			<strong>Graphics Core Count:&nbsp;</strong>2<br />\r\n			<strong>Graphics Frequency:</strong>&nbsp;2200 MHz<br />\r\n			<strong>GPU Base:&nbsp;</strong>400 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ hỗ trợ</strong></td>\r\n			<td>AMD EXPO&trade; Technology<br />\r\n			AMD Ryzen&trade; Technologies</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671472_1723996579_name (26).jpg', 1),
(16, 'Bộ vi xử lý Intel Core i7 14700KF / Turbo up to 5.6GHz / 20 Nhân 28 Luồng / 33MB / LGA 1700', 0, 1, 3, 44, 1, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Socket</strong></td>\r\n			<td>FCLGA1700</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>D&ograve;ng CPU</strong></td>\r\n			<td>Core i9</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>CPU</strong></td>\r\n			<td>Intel&reg; Core&reg; i9</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số nh&acirc;n</strong></td>\r\n			<td>24 (8 Performance-cores/16 Efficient-cores)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số luồng</strong></td>\r\n			<td>32</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tần số Turbo tối đa</strong></td>\r\n			<td>6 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ Intel Turbo Boost Max Tần số 3.0</strong></td>\r\n			<td>5.8 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ Turbo tối đa của P-core</strong></td>\r\n			<td>5.6 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ&nbsp;Turbo tối đa của E-core&nbsp;</strong></td>\r\n			<td>4.4GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ cơ bản của P-core</strong></td>\r\n			<td>3.2GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ cơ bản của E-core</strong></td>\r\n			<td>2.4GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Điện năng ti&ecirc;u thụ</strong></td>\r\n			<td>125W - 253W</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ đệm</strong></td>\r\n			<td>36MB Intel&reg; Smart Cache</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bo mạch chủ tương th&iacute;ch</strong></td>\r\n			<td>600 v&agrave; 700 series</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ hỗ trợ tối đa</strong></td>\r\n			<td>192GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Loại bộ nhớ</strong></td>\r\n			<td>DDR5, DDR4</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&acirc;n đồ họa t&iacute;ch hợp</strong></td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phi&ecirc;n bản&nbsp;PCI Express</strong></td>\r\n			<td>5.0 and 4.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số lượng PCIe lanes</strong></td>\r\n			<td>20</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671456_1723996652_name (27).jpg', 1),
(17, 'KINGSTON', 0, 2, 9, 11, 0, 0, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>C&aacute;c mức dung lượng3</td>\r\n			<td>8 GB, 16 GB, 32 GB, 64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tốc độ1</td>\r\n			<td>L&ecirc;n đến 100MB/gi&acirc;y đọc, 80MB/gi&acirc;y ghi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hiệu năng1</td>\r\n			<td>Cấp 10, UHS-I, U3, V30, A1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ bền2</td>\r\n			<td>L&ecirc;n đến 1920 TBW<br />\r\n			30K chu kỳ ghi-x&oacute;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NAND</td>\r\n			<td>TLC trong chế độ pSLC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kích thước Thẻ microSDHC</td>\r\n			<td>11 mm x 15 mm x 1 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kích thước Bộ chuyển đổi SD</td>\r\n			<td>24 mm x 32 mm x 2,1 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Định dạng</td>\r\n			<td>FAT32 cho SDHC v&agrave; ExFAT cho SDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nhiệt độ hoạt động &amp; Bảo quản</td>\r\n			<td>-40&deg;C đến 85&deg;C</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Điện &aacute;p</td>\r\n			<td>3,3V</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng c&ocirc;ng nghiệp</td>\r\n			<td>&bull; Quản l&yacute; Khu vực lưu trữ kh&ocirc;ng c&ograve;n đ&aacute;ng tin cậy<br />\r\n			&bull; C&ocirc;ng cụ ECC mạnh mẽ<br />\r\n			&bull; Bảo vệ khi mất điện<br />\r\n			&bull; Kỹ thuật c&acirc;n bằng hao m&ograve;n<br />\r\n			&bull; Bảo vệ ph&acirc;n phối nội dung đọc tự động l&agrave;m mới<br />\r\n			&bull; L&agrave;m mới dữ liệu động<br />\r\n			&bull; SiP &ndash; G&oacute;i hệ thống<br />\r\n			&bull; Dọn dữ liệu hỏng<br />\r\n			&bull; Theo d&otilde;i t&igrave;nh trạng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ bền</td>\r\n			<td>Chống thấm nước5<br />\r\n			Chống nhiệt6<br />\r\n			Bảo vệ khỏi tia X ở s&acirc;n bay7</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểm tra chu kỳ nhiệt</td>\r\n			<td>Ho&agrave;n th&agrave;nh kiểm thử gi&aacute; trị giữa c&aacute;c khoảng thời gian ở c&aacute;c mức nhiệt độ khắc nghiệt kh&aacute;c nhau</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thi&ecirc;n &aacute;p độ ẩm nhiệt độ mạnh mẽ</td>\r\n			<td>H&agrave;ng trăm giờ thử nghiệm để đảm bảo độ bền ở c&aacute;c mức độ ẩm kh&aacute;c nhau</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thử nghiệm trong buồng c&oacute; phạm vi nhiệt độ rộng</td>\r\n			<td>Ho&agrave;n th&agrave;nh đối với tất cả c&aacute;c thẻ SDCIT2 trước khi sản xuất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh4</td>\r\n			<td>3 năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671355_3.webp', 1),
(18, 'Bộ vi xử lý Intel Core i9 14900 / Turbo up to 5.8GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700', 0, 1, 5, 8, 4, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Số nh&acirc;n (Cores)</strong></td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số luồng (Threads)</strong></td>\r\n			<td>24</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tốc độ xử l&yacute;</strong></p>\r\n			</td>\r\n			<td>Xung cơ bản 4.4GHz, xung tối đa 5.6GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ đệm L1</strong></td>\r\n			<td>768 KB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L2</strong></p>\r\n			</td>\r\n			<td>12 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L3</strong></p>\r\n			</td>\r\n			<td>128 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Mở kh&oacute;a để &eacute;p xung</strong></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ xử l&yacute; cho l&otilde;i CPU</strong></td>\r\n			<td>TSMC 5nm FinFET</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Socket</strong></td>\r\n			<td>AM5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phi&ecirc;n bản PCI Express&nbsp;</strong></p>\r\n			</td>\r\n			<td>PCIe&reg; 5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giải ph&aacute;p tản nhiệt&nbsp;(PIB)</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Kh&ocirc;ng c&oacute; sẵn</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Điện năng ti&ecirc;u thụ&nbsp;mặc định</strong></p>\r\n			</td>\r\n			<td>120 W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ hỗ trợ</strong></p>\r\n			</td>\r\n			<td><strong>Loại:</strong>&nbsp;DDR5<br />\r\n			<strong>K&ecirc;nh:</strong>&nbsp;2<br />\r\n			<strong>Tốc độ bộ nhớ tối đa:&nbsp;</strong>\r\n			<ul>\r\n				<li>2x1R DDR5-5200</li>\r\n				<li>2x2R DDR5-5200</li>\r\n				<li>4x1R DDR5-3600</li>\r\n				<li>4x2R DDR5-3600</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&iacute;nh năng đồ họa</strong></p>\r\n			</td>\r\n			<td><strong>Graphics Model:</strong>&nbsp;AMD Radeon&trade; Graphics<br />\r\n			<strong>Graphics Core Count:&nbsp;</strong>2<br />\r\n			<strong>Graphics Frequency:</strong>&nbsp;2200 MHz<br />\r\n			<strong>GPU Base:&nbsp;</strong>400 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ hỗ trợ</strong></td>\r\n			<td>AMD EXPO&trade; Technology<br />\r\n			AMD Ryzen&trade; Technologies</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671126_1723997622_1723997524_name (28).jpg', 1),
(19, 'Bộ vi xử lý AMD Ryzen 7 5800X / 3.8GHz Boost 4.7GHz / 8 nhân 16 luồng / 32MB / AM4', 0, 3, 7, 3, 5, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Số nh&acirc;n (Cores)</strong></td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số luồng (Threads)</strong></td>\r\n			<td>24</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tốc độ xử l&yacute;</strong></p>\r\n			</td>\r\n			<td>Xung cơ bản 4.4GHz, xung tối đa 5.6GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ đệm L1</strong></td>\r\n			<td>768 KB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L2</strong></p>\r\n			</td>\r\n			<td>12 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L3</strong></p>\r\n			</td>\r\n			<td>128 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Mở kh&oacute;a để &eacute;p xung</strong></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ xử l&yacute; cho l&otilde;i CPU</strong></td>\r\n			<td>TSMC 5nm FinFET</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Socket</strong></td>\r\n			<td>AM5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phi&ecirc;n bản PCI Express&nbsp;</strong></p>\r\n			</td>\r\n			<td>PCIe&reg; 5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giải ph&aacute;p tản nhiệt&nbsp;(PIB)</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Kh&ocirc;ng c&oacute; sẵn</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Điện năng ti&ecirc;u thụ&nbsp;mặc định</strong></p>\r\n			</td>\r\n			<td>120 W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ hỗ trợ</strong></p>\r\n			</td>\r\n			<td><strong>Loại:</strong>&nbsp;DDR5<br />\r\n			<strong>K&ecirc;nh:</strong>&nbsp;2<br />\r\n			<strong>Tốc độ bộ nhớ tối đa:&nbsp;</strong>\r\n			<ul>\r\n				<li>2x1R DDR5-5200</li>\r\n				<li>2x2R DDR5-5200</li>\r\n				<li>4x1R DDR5-3600</li>\r\n				<li>4x2R DDR5-3600</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&iacute;nh năng đồ họa</strong></p>\r\n			</td>\r\n			<td><strong>Graphics Model:</strong>&nbsp;AMD Radeon&trade; Graphics<br />\r\n			<strong>Graphics Core Count:&nbsp;</strong>2<br />\r\n			<strong>Graphics Frequency:</strong>&nbsp;2200 MHz<br />\r\n			<strong>GPU Base:&nbsp;</strong>400 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ hỗ trợ</strong></td>\r\n			<td>AMD EXPO&trade; Technology<br />\r\n			AMD Ryzen&trade; Technologies</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671112_1723996525_name (26).jpg', 1),
(20, 'ROSA I12400', 0, 6, 8, 13, 3, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"10\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th colspan=\"2\">CẤU H&Igrave;NH 1: Rosa I12400</th>\r\n		</tr>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<th>Chi Tiết</th>\r\n		</tr>\r\n		<tr>\r\n			<td>i5-12400</td>\r\n			<td>CPU: Intel&reg; Core&trade; i5 12400 Processor (2.50Ghz Max Turbo 4.60GHz /18MB Intel&reg; SmartCache/6C/12T) - SK1700</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H610M2</td>\r\n			<td>Mainboard - Intel H610 SK1700: 4 x DIMM DDR5, 2 x DIMM DDR4 23200/3000/2933/2800/2666MHz<br />\r\n			- 3 x PCIe 4.0/3.0 x16 slot; 1 x PCI slot<br />\r\n			- Graphics Output Options: 1 x D-Sub Port, 1 x DVI-D port, 1 x HDMI port, 1 x Display port<br />\r\n			- 4 SATA3; 1 x M.2 2280, 2260, 2242 (both SATA &amp; x4 PCIE mode)<br />\r\n			- 4 x USB 3.1 port(s) (2 Rear (included 1 Type C), 8 x USB 2.0 (2 x USB 2.0 Rear, Support 6 x USB 2.0 at midboard)<br />\r\n			- Realtek Gigabit LAN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LD4U08G32C22ST-BGS</td>\r\n			<td>Ram Lexar 8GB bus 3200 DDR4 Udimm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>AP512GAS350XR</td>\r\n			<td>Ổ cứng SSD Apacer 512Gb Sata3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mouse EMD14 - Keyboard EKD14</td>\r\n			<td>Mouse EMD14 (USB) - Keyboard EKD14 (USB)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Case E7775</td>\r\n			<td>Th&ugrave;ng m&aacute;y Emaster Case E7775</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PSU 450Elite</td>\r\n			<td>Nguồn Jetek PSU 450Elite 450W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22B3HM/74</td>\r\n			<td>M&agrave;n h&igrave;nh AOC 22B3HM/74 21.5&rdquo;/ FHD/ VA/ 75Hz/ Phẳng - Kết nối : 1xDsub (VGA) - 1x HDMI</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671099_I12400.jpg', 1),
(21, 'Bộ vi xử lý AMD Ryzen 7 5800X / 3.8GHz Boost 4.7GHz / 8 nhân 16 luồng / 32MB / AM4', 2, 3, 3, 0, 3, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Số nh&acirc;n (Cores)</strong></td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số luồng (Threads)</strong></td>\r\n			<td>24</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tốc độ xử l&yacute;</strong></p>\r\n			</td>\r\n			<td>Xung cơ bản 4.4GHz, xung tối đa 5.6GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ đệm L1</strong></td>\r\n			<td>768 KB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L2</strong></p>\r\n			</td>\r\n			<td>12 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ đệm L3</strong></p>\r\n			</td>\r\n			<td>128 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Mở kh&oacute;a để &eacute;p xung</strong></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ xử l&yacute; cho l&otilde;i CPU</strong></td>\r\n			<td>TSMC 5nm FinFET</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Socket</strong></td>\r\n			<td>AM5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phi&ecirc;n bản PCI Express&nbsp;</strong></p>\r\n			</td>\r\n			<td>PCIe&reg; 5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giải ph&aacute;p tản nhiệt&nbsp;(PIB)</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Kh&ocirc;ng c&oacute; sẵn</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Điện năng ti&ecirc;u thụ&nbsp;mặc định</strong></p>\r\n			</td>\r\n			<td>120 W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bộ nhớ hỗ trợ</strong></p>\r\n			</td>\r\n			<td><strong>Loại:</strong>&nbsp;DDR5<br />\r\n			<strong>K&ecirc;nh:</strong>&nbsp;2<br />\r\n			<strong>Tốc độ bộ nhớ tối đa:&nbsp;</strong>\r\n			<ul>\r\n				<li>2x1R DDR5-5200</li>\r\n				<li>2x2R DDR5-5200</li>\r\n				<li>4x1R DDR5-3600</li>\r\n				<li>4x2R DDR5-3600</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&iacute;nh năng đồ họa</strong></p>\r\n			</td>\r\n			<td><strong>Graphics Model:</strong>&nbsp;AMD Radeon&trade; Graphics<br />\r\n			<strong>Graphics Core Count:&nbsp;</strong>2<br />\r\n			<strong>Graphics Frequency:</strong>&nbsp;2200 MHz<br />\r\n			<strong>GPU Base:&nbsp;</strong>400 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ hỗ trợ</strong></td>\r\n			<td>AMD EXPO&trade; Technology<br />\r\n			AMD Ryzen&trade; Technologies</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671079_1723996579_name (26).jpg', 1),
(22, 'Bộ vi xử lý Intel Core i9 14900 / Turbo up to 5.8GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700', 1, 1, 3, 23, 2, 0, 0, 0, '<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Socket</strong></td>\r\n			<td>FCLGA1700</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>D&ograve;ng CPU</strong></td>\r\n			<td>Core i9</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>CPU</strong></td>\r\n			<td>Intel&reg; Core&reg; i9</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số nh&acirc;n</strong></td>\r\n			<td>24 (8 Performance-cores/16 Efficient-cores)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số luồng</strong></td>\r\n			<td>32</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tần số Turbo tối đa</strong></td>\r\n			<td>6 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng nghệ Intel Turbo Boost Max Tần số 3.0</strong></td>\r\n			<td>5.8 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ Turbo tối đa của P-core</strong></td>\r\n			<td>5.6 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ&nbsp;Turbo tối đa của E-core&nbsp;</strong></td>\r\n			<td>4.4GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ cơ bản của P-core</strong></td>\r\n			<td>3.2GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ cơ bản của E-core</strong></td>\r\n			<td>2.4GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Điện năng ti&ecirc;u thụ</strong></td>\r\n			<td>125W - 253W</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ đệm</strong></td>\r\n			<td>36MB Intel&reg; Smart Cache</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bo mạch chủ tương th&iacute;ch</strong></td>\r\n			<td>600 v&agrave; 700 series</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ nhớ hỗ trợ tối đa</strong></td>\r\n			<td>192GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Loại bộ nhớ</strong></td>\r\n			<td>DDR5, DDR4</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&acirc;n đồ họa t&iacute;ch hợp</strong></td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phi&ecirc;n bản&nbsp;PCI Express</strong></td>\r\n			<td>5.0 and 4.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số lượng PCIe lanes</strong></td>\r\n			<td>20</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1726671067_1723996652_name (27).jpg', 1),
(158, 'Màn hình AOC 22B30HM2/74 | 21.45 inch, Full HD, VA, 100Hz, 4ms, phẳng', 0, 8, 13, 0, 0, 0, 0, 0, '<p><strong>M&agrave;n h&igrave;nh:</strong></p>\r\n\r\n<ul>\r\n	<li>K&iacute;ch thước: 21.45 inch (VA)</li>\r\n	<li>K&iacute;ch thước điểm ảnh: 0.2493 (H) &times; 0.241 (V)</li>\r\n	<li>K&iacute;ch thước v&ugrave;ng xem: 478.66 (H) &times; 260.28 (V)</li>\r\n	<li>Độ s&aacute;ng: 250 cd/m&sup2;</li>\r\n	<li>Độ tương phản: 3000:1 (Typical), 20 Million:1 (DCR)</li>\r\n	<li>Tốc độ phản hồi: 4ms GtG / 1ms MPRTG</li>\r\n	<li>G&oacute;c nh&igrave;n: 178&deg; (H) / 178&deg; (V) (CR &gt; 10)</li>\r\n	<li>Gam m&agrave;u: NTSC 86% (CIE1976), sRGB 102% (CIE1931)</li>\r\n	<li>Độ ch&iacute;nh x&aacute;c m&agrave;u: -</li>\r\n	<li>Độ ph&acirc;n giải tối ưu: 1920 &times; 1080 @ 100Hz (HDMI), 1920 &times; 1080 @ 75Hz (VGA)</li>\r\n	<li>Số m&agrave;u hiển thị: 16.7 triệu</li>\r\n</ul>\r\n\r\n<p><strong>Cổng kết nối:</strong></p>\r\n\r\n<ul>\r\n	<li>VGA x 1</li>\r\n	<li>HDMI 1.4 x 1</li>\r\n</ul>\r\n\r\n<p><strong>Nguồn điện:</strong></p>\r\n\r\n<ul>\r\n	<li>Nguồn ngo&agrave;i 19VDC, 1.31A</li>\r\n	<li>Điện ti&ecirc;u thụ (điển h&igrave;nh): 17W</li>\r\n</ul>\r\n\r\n<p><strong>K&iacute;ch thước:</strong></p>\r\n\r\n<ul>\r\n	<li>K&iacute;ch thước sản phẩm kh&ocirc;ng c&oacute; ch&acirc;n đế: 284.8 (H) &times; 493.8 (W) &times; 35.8 (D) mm</li>\r\n	<li>K&iacute;ch thước sản phẩm c&oacute; ch&acirc;n đế: 379.1 (H) &times; 493.8 (W) &times; 169.9 (D) mm</li>\r\n	<li>K&iacute;ch thước đ&oacute;ng g&oacute;i: 350 (H) &times; 565 (W) &times; 93 (D) mm</li>\r\n</ul>\r\n\r\n<p><strong>Trọng lượng:</strong></p>\r\n\r\n<ul>\r\n	<li>Trọng lượng sản phẩm kh&ocirc;ng c&oacute; ch&acirc;n đế: 1.79 kg</li>\r\n	<li>Trọng lượng sản phẩm c&oacute; ch&acirc;n đế: 2.02 kg</li>\r\n	<li>Trọng lượng sản phẩm c&oacute; bao b&igrave;: 3.49 kg</li>\r\n</ul>\r\n\r\n<p><strong>T&iacute;nh năng kh&aacute;c:</strong></p>\r\n\r\n<ul>\r\n	<li>Khả năng điều chỉnh ch&acirc;n đế: Nghi&ecirc;ng -5&deg; ~ 23&deg;</li>\r\n	<li>Treo tường: 100mm &times; 100mm</li>\r\n	<li>Loa: Line in &amp; Tai nghe</li>\r\n	<li>M&agrave;u sắc: Đen</li>\r\n	<li>Chứng nhận: CE / BSMI / RCM / MEPS / RoHS</li>\r\n</ul>\r\n', '1727160408_name (45).jpg', 1),
(159, 'Lexar® Professional 2000x SDHC™/SDXC™ UHS-II Card GOLD Series', 0, 7, 9, 0, 0, 0, 0, 0, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hiệu suất</p>\r\n\r\n	<p>Tốc độ đọc l&ecirc;n đến 300MB/gi&acirc;y, tốc độ ghi 260MB/gi&acirc;y&nbsp;1</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhiệt độ hoạt động</p>\r\n\r\n	<p>0 &deg;C đến 70 &deg;C (32 &deg;F đến 158 &deg;F)</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhiệt độ lưu trữ</p>\r\n\r\n	<p>-25 &deg;C đến 85 &deg;C (-13 &deg;F đến 185 &deg;F)</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước (D x R x C)</p>\r\n\r\n	<p>32 mm x 24 mm x 2,1 mm / 1,25&rdquo; x 0,95&rdquo; x 0,08&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo h&agrave;nh</p>\r\n\r\n	<p>Bảo h&agrave;nh trọn đời c&oacute; giới hạn</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>1&nbsp;&nbsp;Tốc độ truyền dữ liệu đọc l&ecirc;n đến 300MB/gi&acirc;y, tốc độ ghi thấp hơn. Tốc độ dựa tr&ecirc;n thử nghiệm nội bộ. Hiệu suất thực tế c&oacute; thể thay đổi. x=150KB/gi&acirc;y.</p>\r\n\r\n<p>2&nbsp;&nbsp;Tốc độ truyền dữ liệu cao nhất chỉ đạt được khi kết hợp với đầu đọc SD UHS-II.</p>\r\n\r\n<p>3&nbsp;Chống nhiệt: Chịu được phạm vi nhiệt độ hoạt động từ 32&ordm;F (-0&ordm;C) hoặc 158&ordm;F (70 &ordm;C) v&agrave; nhiệt độ kh&ocirc;ng hoạt động từ -13&ordm;F (-25&ordm;C) hoặc 185&ordm;F (85 &ordm;C).<br />\r\nChống sốc: Chống sốc (200G [1961,33m/gi&acirc;y^2] 3ms, 150G [1471,00m/gi&acirc;y^2] 10ms, Từ XYZ, 3 hướng/mỗi hướng 3 lần)<br />\r\nChống rung: Chống rung (10Hz đến 2000 Hz, 6Grms, 5 ph&uacute;t cho mỗi chu kỳ 1, 10 chu kỳ cho mỗi trục 1 tổng cộng 30 chu kỳ cho mỗi 3 trục, dựa tr&ecirc;n hướng dẫn IEC 60512-6-4). Chống<br />\r\ntia X: Được bảo vệ chống lại sự tiếp x&uacute;c với tia X dựa tr&ecirc;n hướng dẫn ISO7816-1.<br />\r\nNgoại h&igrave;nh sản phẩm, hiệu suất, phần mềm cung cấp v&agrave; bao b&igrave; c&oacute; thể thay đổi t&ugrave;y thuộc v&agrave;o ng&agrave;y giao h&agrave;ng v&agrave; h&agrave;ng tồn kho c&oacute; sẵn.<br />\r\nDung lượng bộ nhớ thực tế c&oacute; thể sử dụng c&oacute; thể thay đổi. 1 GB bằng 1 tỷ byte.<br />\r\nBảo h&agrave;nh trọn đời c&oacute; giới hạn trong 10 năm kể từ ng&agrave;y mua tại Đức v&agrave; c&aacute;c khu vực kh&ocirc;ng c&ocirc;ng nhận bảo h&agrave;nh trọn đời.<br />\r\nLexar kh&ocirc;ng chịu tr&aacute;ch nhiệm cho bất kỳ mất m&aacute;t dữ liệu hoặc h&igrave;nh ảnh n&agrave;o.</p>\r\n', '1727160762_name (1).png', 1),
(160, 'Ram GSkill Trident Z5 RGB 32GB | 16GB x 2, DDR5, 5600MHz', 0, 4, 14, 0, 0, 0, 0, 0, '<p><strong>⚙ TH&Ocirc;NG SỐ CƠ BẢN:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Dung lượng:</strong>&nbsp;32GB | 16GB x 2</li>\r\n	<li><strong>Bus:</strong>&nbsp;DDR5, 5600MHz</li>\r\n	<li><strong>Độ trễ:</strong>&nbsp;CL40-40-40-89</li>\r\n	<li><strong>Điện &aacute;p:</strong>&nbsp;1.20V</li>\r\n	<li><strong>Tản nhiệt:</strong>&nbsp;C&oacute;</li>\r\n	<li><strong>Số thanh:</strong>&nbsp;2 thanh</li>\r\n	<li><strong>LED:</strong>&nbsp;RGB</li>\r\n</ul>\r\n', '1727161447_name (28).png', 1),
(161, 'Mainboard ASROCK B660M Pro RS', 0, 10, 15, 0, 0, 0, 0, 0, '<p>Th&ocirc;ng số kĩ thuật</p>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>ASROCK</p>\r\n\r\n<p>Bảo h&agrave;nh</p>\r\n\r\n<p>36 th&aacute;ng</p>\r\n\r\n<p>Th&ocirc;ng tin chung</p>\r\n\r\n<p>Nhu cầu</p>\r\n\r\n<p>Gaming, Đồ họa - Kỹ thuật, Doanh nghiệp, Học sinh - Sinh vi&ecirc;n</p>\r\n\r\n<p>Cấu h&igrave;nh chi tiết</p>\r\n\r\n<p>Chipset</p>\r\n\r\n<p>B660</p>\r\n\r\n<p>Socket</p>\r\n\r\n<p>1700</p>\r\n\r\n<p>Kích thước</p>\r\n\r\n<p>Micro-ATX</p>\r\n\r\n<p>Khe RAM tối đa</p>\r\n\r\n<p>4 khe</p>\r\n\r\n<p>Kiểu RAM hỗ trợ</p>\r\n\r\n<p>DDR4</p>\r\n\r\n<p>H&ocirc;̃ trợ b&ocirc;̣ nhớ t&ocirc;́i đa</p>\r\n\r\n<p>128GB</p>\r\n\r\n<p>Bus RAM hỗ trợ</p>\r\n\r\n<p>4800MHz</p>\r\n\r\n<p>Lưu trữ</p>\r\n\r\n<p>4 x SATA 3 6Gb/s, 1 x M.2 NVMe, 1 x Ultra M.2 (PCIe &amp; SATA3)</p>\r\n\r\n<p>Kiểu khe M.2 hỗ trợ</p>\r\n\r\n<p>M.2 SATA/NVMe</p>\r\n\r\n<p>C&ocirc;̉ng xu&acirc;́t hình</p>\r\n\r\n<p>1 x HDMI, 1 x DisplayPort</p>\r\n\r\n<p>Khe PCI</p>\r\n\r\n<p>1 x PCIe 4.0 x16, 1 x PCIe 3.0 x16, 1 x PCIe 3.0 x1, 1 M.2 Key-E for WiFi</p>\r\n\r\n<p>Multi-GPU</p>\r\n\r\n<p>AMD CrossFire</p>\r\n\r\n<p>S&ocirc;́ c&ocirc;̉ng USB</p>\r\n\r\n<p>4 x USB 3.2(Tối đa 6), 2 x USB 2.0(Tối đa 6)</p>\r\n\r\n<p>LAN</p>\r\n\r\n<p>1 x LAN 1 Gb/s</p>\r\n\r\n<p>&Acirc;m thanh</p>\r\n\r\n<p>Realtek ALC897 7.1 CH HD Audio Codec, Nahimic Audio</p>\r\n', '1727161610_1723997214_name (4).png', 1),
(162, 'Màn hình chơi game TUF Gaming VG259Q - 25 inch (có thể xem 24.5 inch) Full HD (1920x1080), 144Hz, IP', 0, 11, 13, 0, 0, 0, 0, 0, '<ul>\r\n	<li>M&agrave;n h&igrave;nh chơi game IPS 24,5 inch Full HD (1920x1080) với tốc độ l&agrave;m mới 144 Hz được thiết kế d&agrave;nh cho c&aacute;c game thủ chuy&ecirc;n nghiệp v&agrave; mang tới trải nghiệm chơi game c&oacute; nhịp độ nhanh</li>\r\n	<li>Sở hữu c&ocirc;ng nghệ ASUS Extreme Low Motion Blur (ELMB) với 1ms MPRT để giảm hiện tượng b&oacute;ng ma v&agrave; mờ khi chuyển động nhanh</li>\r\n	<li>Được chứng nhận G-SYNC Compatible, mang lại trải nghiệm chơi game liền mạch, kh&ocirc;ng x&eacute; h&igrave;nh bằng c&aacute;ch bật VRR (tốc độ l&agrave;m tươi biến thi&ecirc;n).</li>\r\n	<li>M&agrave;n h&igrave;nh được trang bị một ch&acirc;n đế c&oacute; thiết kế c&ocirc;ng th&aacute;i học để hỗ trợ xoay, nghi&ecirc;ng, quay v&agrave; điều chỉnh chiều cao to&agrave;n diện</li>\r\n	<li>Shadow Boost tăng cường chi tiết h&igrave;nh ảnh trong c&aacute;c v&ugrave;ng tối, l&agrave;m s&aacute;ng v&ugrave;ng tối m&agrave; kh&ocirc;ng g&acirc;y ch&aacute;y s&aacute;ng c&aacute;c v&ugrave;ng s&aacute;ng hơn</li>\r\n</ul>\r\n', '1727161990_1723999981_1723996166_name (8).jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `TENHANG` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MAHANG` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SOSERIAL` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL PRIMARY KEY,
  `NGAYXUAT` date DEFAULT NULL,
  `THOIHANBH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`SoSerial`, `MAHANG`, `TENHANG`, `NGAYXUAT`, `THOIHANBH`) VALUES
('9ACM265N40199', '100-100000147BOX', 'AMD Ryzen 5 4600G w/ W.Stealth', '2024-07-09', 3),
('9ACM592N40120', '100-100000147BOX', 'AMD Ryzen 5 4600G w/ W.Stealth', '2024-07-09', 3),
('9ACM592N40136', '100-100000147BOX', 'AMD Ryzen 5 4600G w/ W.Stealth', '2024-07-09', 3),
('9KY7450W30153', '100-100000591WOF', 'AMD Ryzen 7 7700X w/o cooler', '2024-07-09', 3),
('AEP20411J02138', '24B20JH2/74', 'LCD-AOC-24INCH-24B20JH2/74', '2024-07-09', 3),
('AEP20411J03002', '24B20JH2/74', 'LCD-AOC-24INCH-24B20JH2/74', '2024-07-09', 3),
('AEP20411J03011', '24B20JH2/74', 'LCD-AOC-24INCH-24B20JH2/74', '2024-07-09', 3),
('AEP20411J03015', '24B20JH2/74', 'LCD-AOC-24INCH-24B20JH2/74', '2024-07-09', 3),
('AEP20411J03045', '24B20JH2/74', 'LCD-AOC-24INCH-24B20JH2/74', '2024-07-09', 3),
('AEP20411J03346', '24B20JH2/74', 'LCD-AOC-24INCH-24B20JH2/74', '2024-07-09', 3),
('AEP20411J03457', '24B20JH2/74', 'LCD-AOC-24INCH-24B20JH2/74', '2024-07-09', 3),
('AEP20411J03478', '24B20JH2/74', 'LCD-AOC-24INCH-24B20JH2/74', '2024-07-09', 3),
('TYKP5HA000146', '27G2Z/74', 'LCD-AOC-27INCH-27G2Z/74', '2024-07-09', 3),
('TYKP5HA000153', '27G2Z/74', 'LCD-AOC-27INCH-27G2Z/74', '2024-07-09', 3),
('TYKP5HA000179', '27G2Z/74', 'LCD-AOC-27INCH-27G2Z/74', '2024-07-09', 3),
('TYKP5HA000198', '27G2Z/74', 'LCD-AOC-27INCH-27G2Z/74', '2024-07-09', 3),
('TYKP5HA000199', '27G2Z/74', 'LCD-AOC-27INCH-27G2Z/74', '2024-07-09', 3),
('TYKP5HA000205', '27G2Z/74', 'LCD-AOC-27INCH-27G2Z/74', '2024-07-09', 3),
('H1M0XB260991', 'B550M STEEL LEGEND', 'MB-ASROCK B550M STEEL LEGEND', '2024-07-09', 3),
('H1M0XB260993', 'B550M STEEL LEGEND', 'MB-ASROCK B550M STEEL LEGEND', '2024-07-09', 3),
('H1M0XB260994', 'B550M STEEL LEGEND', 'MB-ASROCK B550M STEEL LEGEND', '2024-07-09', 3),
('GAM0XB174103', 'B660M PRO RS', 'MB-ASROCK B660M PRO RS', '2024-07-09', 3),
('1O0Q5JA008178', 'C27G4ZE/74', 'MÀN HÌNH CONG LCD Curve  AOC-27INCH-C27G4ZE/74', '2024-07-09', 3),
('1O0Q5JA008257', 'C27G4ZE/74', 'MÀN HÌNH CONG LCD Curve  AOC-27INCH-C27G4ZE/74', '2024-07-09', 3),
('1O0Q5JA008258', 'C27G4ZE/74', 'MÀN HÌNH CONG LCD Curve  AOC-27INCH-C27G4ZE/74', '2024-07-09', 3),
('1O0Q5JA008268', 'C27G4ZE/74', 'MÀN HÌNH CONG LCD Curve  AOC-27INCH-C27G4ZE/74', '2024-07-09', 3),
('1O0Q5JA008292', 'C27G4ZE/74', 'MÀN HÌNH CONG LCD Curve  AOC-27INCH-C27G4ZE/74', '2024-07-09', 3),
('U4G13C3200039', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3200119', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3200179', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3200312', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3200349', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3200403', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3200551', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3200693', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3200732', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3200855', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201043', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201182', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201249', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201257', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201514', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201519', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201529', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201562', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201593', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201595', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201615', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201650', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201866', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201888', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3201900', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202185', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202251', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202298', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202608', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202631', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202653', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202794', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202803', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202835', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202840', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202942', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202950', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3202996', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3203032', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3203048', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4G13C3203088', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4P28D7300213', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4P28D7300257', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4P28D7301154', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4P28D7301626', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4P28D7302016', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4P28D7302082', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4P28D7302991', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4QE487100189', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4QE487102350', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U4VV243001479', 'CPU-G6405-RH3Z', 'CPU-Pentium Gold G6405-RH3Z', '2024-07-09', 3),
('U32D44M204774', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U32D44M204840', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U32D44M204856', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U32D44M204961', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U32D44M204997', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U32D44M205038', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U32D44M205340', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3EH386302867', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3PN264701015', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776200617', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776200728', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776200903', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776201050', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776202509', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776203077', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776203254', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776203318', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776203404', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776203461', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776203569', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776204324', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776204357', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776204951', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776205292', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U3YT776205810', 'CPU-I5-10400-SRH3C', 'CPU-I5-10400-SRH3C', '2024-07-09', 3),
('U4DD455600446', 'CPU-I5-12400F-RL4W', 'CPU-I5-12400F-RL4W', '2024-07-09', 3),
('U39R1L2100960', 'CPU-I5-12400F-RL5Z', 'CPU-I5-12400F-RL5Z', '2024-07-09', 3),
('U3XY645603810', 'CPU-I5-12400F-RL5Z', 'CPU-I5-12400F-RL5Z', '2024-07-09', 3),
('U3XY645604482', 'CPU-I5-12400F-RL5Z', 'CPU-I5-12400F-RL5Z', '2024-07-09', 3),
('U4SQ003302800', 'CPU-I5-12400-RL5Y', 'CPU-I5-12400-RL5Y', '2024-07-09', 3),
('U4SQ003303959', 'CPU-I5-12400-RL5Y', 'CPU-I5-12400-RL5Y', '2024-07-09', 3),
('U4SQ003304022', 'CPU-I5-12400-RL5Y', 'CPU-I5-12400-RL5Y', '2024-07-09', 3),
('U4SQ003304037', 'CPU-I5-12400-RL5Y', 'CPU-I5-12400-RL5Y', '2024-07-09', 3),
('U4SQ003304633', 'CPU-I5-12400-RL5Y', 'CPU-I5-12400-RL5Y', '2024-07-09', 3),
('U3W22C6401610', 'CPU-I7-13700-RMBA', 'CPU-I7-13700-RMBA', '2024-07-09', 3),
('U3W22C6401700', 'CPU-I7-13700-RMBA', 'CPU-I7-13700-RMBA', '2024-07-09', 3),
('U3W22C6402789', 'CPU-I7-13700-RMBA', 'CPU-I7-13700-RMBA', '2024-07-09', 3),
('U3W22C6404320', 'CPU-I7-13700-RMBA', 'CPU-I7-13700-RMBA', '2024-07-09', 3),
('S4YVCM01Z163F8L', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S4YVCM01Z164RBN', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S4YVCM01Z16596P', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S4YVNC021406Z26', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S4YVNC021407YG9', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004149WTN', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004150K84', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC0041514XZ', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004152H5M', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004153YFX', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004154F2E', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004155SLA', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004156CZ5', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004157PXY', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004158WSW', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004199G58', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004200XF9', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004201GY9', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004202EV9', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004203CK9', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004204BEA', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC0042059ZA', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC0042067PA', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC0042076JA', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC0042084DB', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004259BF7', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004260NLJ', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004261FW8', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC00426284W', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVNC004263Y7D', 'DUAL-RTX3050-O6G', 'VGA-ASUS DUAL-RTX3050-O6G', '2024-07-09', 3),
('S5YVYZ00J098A3F', 'DUAL-RTX4060-O8G-EVO', 'VGA-ASUS DUAL-RTX4060-O8G-EVO', '2024-07-09', 3),
('S5YVYZ00J0992T7', 'DUAL-RTX4060-O8G-EVO', 'VGA-ASUS DUAL-RTX4060-O8G-EVO', '2024-07-09', 3),
('S4YVYZ00K6075X5', 'DUAL-RTX4060-O8G-WH', 'VGA-ASUS DUAL-RTX4060-O8G-WHITE', '2024-07-09', 3),
('S4YVYZ00K619V86', 'DUAL-RTX4060-O8G-WH', 'VGA-ASUS DUAL-RTX4060-O8G-WHITE', '2024-07-09', 3),
('S4YVYZ00K620YJ4', 'DUAL-RTX4060-O8G-WH', 'VGA-ASUS DUAL-RTX4060-O8G-WHITE', '2024-07-09', 3),
('23455734020', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455734021', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455734022', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455734217', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455734218', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455734424', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455734425', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455734426', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455734429', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455734441', 'F3-1600C11S-4GIS', 'DDR3 F3-1600C11S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688187', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688188', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688189', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688190', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688191', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688192', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688193', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688194', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688195', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688199', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688200', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688201', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688209', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688211', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688212', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688213', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688214', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688215', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688216', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688217', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688218', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688219', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688220', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688235', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688236', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688237', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688238', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688239', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688257', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688258', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688272', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688273', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688274', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688275', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688276', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688303', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688304', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688305', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688306', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688311', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688313', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688314', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688315', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688316', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688317', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688318', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688319', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688320', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688321', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688322', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688323', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688324', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688325', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688329', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688330', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688338', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688346', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688348', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688349', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688350', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688351', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688352', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688353', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688354', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688357', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688358', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688359', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688360', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688361', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688362', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688363', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688364', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688365', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688366', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688367', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688368', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688369', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688370', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688371', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688372', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688373', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688374', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688375', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688376', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688377', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688378', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688386', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688387', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688388', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688389', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688390', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688394', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688395', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688406', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688407', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688408', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688409', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688410', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688411', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688412', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688416', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688417', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688418', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688419', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688420', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688421', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688422', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688423', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688425', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688426', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688427', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688433', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688434', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688435', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688436', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688444', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688445', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688446', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688447', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688453', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688454', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688455', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688460', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688461', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688466', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688473', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688474', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688475', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688476', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688477', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688478', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688479', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688481', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688498', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688499', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688500', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688501', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688502', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688510', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688511', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688512', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688513', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688514', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688533', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688534', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688552', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688553', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688554', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688555', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688556', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688568', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688569', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688570', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688571', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688581', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688582', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688583', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688584', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688585', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688586', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688587', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688603', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24272688604', 'F3-1600C11S-8GIS', 'DDR3 F3-1600C11S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24161870420', 'F4-2400C17S-4GIS', 'DDR4 F4-2400C17S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24161870421', 'F4-2400C17S-4GIS', 'DDR4 F4-2400C17S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24161870422', 'F4-2400C17S-4GIS', 'DDR4 F4-2400C17S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24161870423', 'F4-2400C17S-4GIS', 'DDR4 F4-2400C17S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24161870467', 'F4-2400C17S-4GIS', 'DDR4 F4-2400C17S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24232325885', 'F4-2400C17S-4GIS', 'DDR4 F4-2400C17S-4GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23283186678', 'F4-3200C16S-16GIS', 'DDR4 F4-3200C16S-16GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23283186679', 'F4-3200C16S-16GIS', 'DDR4 F4-3200C16S-16GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23283187255', 'F4-3200C16S-16GIS', 'DDR4 F4-3200C16S-16GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23283187256', 'F4-3200C16S-16GIS', 'DDR4 F4-3200C16S-16GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23283187257', 'F4-3200C16S-16GIS', 'DDR4 F4-3200C16S-16GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455736037', 'F4-3200C16S-8GIS', 'DDR4 F4-3200C16S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455736038', 'F4-3200C16S-8GIS', 'DDR4 F4-3200C16S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455736063', 'F4-3200C16S-8GIS', 'DDR4 F4-3200C16S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455736064', 'F4-3200C16S-8GIS', 'DDR4 F4-3200C16S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455736065', 'F4-3200C16S-8GIS', 'DDR4 F4-3200C16S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455736066', 'F4-3200C16S-8GIS', 'DDR4 F4-3200C16S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455736067', 'F4-3200C16S-8GIS', 'DDR4 F4-3200C16S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('23455736189', 'F4-3200C16S-8GIS', 'DDR4 F4-3200C16S-8GIS NON-ECC G.SKILL', '2024-07-09', 3),
('24212170617', 'F4-3200C22S-16GRS', 'DDR4 F4-3200C22S-16GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170689', 'F4-3200C22S-16GRS', 'DDR4 F4-3200C22S-16GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170690', 'F4-3200C22S-16GRS', 'DDR4 F4-3200C22S-16GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170726', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170727', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170728', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170729', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170730', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170737', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170738', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170739', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170740', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170741', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170752', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170753', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170754', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170755', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170761', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170764', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170765', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170766', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170767', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170768', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170797', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170799', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170800', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170801', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('24212170823', 'F4-3200C22S-32GRS', 'DDR4 F4-3200C22S-32GRS SODIM G.SKILL', '2024-07-09', 3),
('23455737002', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('23455737003', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('23455737004', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('23455737006', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172437', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172440', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172441', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172442', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172443', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172444', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172455', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172456', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172473', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172474', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172475', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172476', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172512', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172513', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172514', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172515', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172516', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172521', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172531', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24212172532', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24232327251', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24232327252', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24232327253', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24232327254', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24232327255', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('24232327256', 'F4-3200C22S-8GRS', 'DDR4 F4-3200C22S-8GRS SODIM G.SKILL', '2024-07-09', 3),
('23364398611', 'F4-3600C18D-16GTZR', 'DDR4 KIT 16GB F4-3600C18D-16GTZR NON-ECC G.SKILL (2pcs 8G)', '2024-07-09', 3),
('23364398612', 'F4-3600C18D-16GTZR', 'DDR4 KIT 16GB F4-3600C18D-16GTZR NON-ECC G.SKILL (2pcs 8G)', '2024-07-09', 3),
('24272679853', 'F4-3600C18D-32GTZR', 'DDR4 KIT 32GB F4-3600C18D-32GTZR NON-ECC G.SKILL (2pcs 16G)', '2024-07-09', 3),
('24272679854', 'F4-3600C18D-32GTZR', 'DDR4 KIT 32GB F4-3600C18D-32GTZR NON-ECC G.SKILL (2pcs 16G)', '2024-07-09', 3),
('24161872559', 'F4-3600C18D-64GTZN', 'DDR4 KIT 64GB F4-3600C18D-64GTZN NON-ECC G.SKILL (2pcs 32G)', '2024-07-09', 3),
('24161872560', 'F4-3600C18D-64GTZN', 'DDR4 KIT 64GB F4-3600C18D-64GTZN NON-ECC G.SKILL (2pcs 32G)', '2024-07-09', 3),
('24272680439', 'F4-3600C18D-64GTZN', 'DDR4 KIT 64GB F4-3600C18D-64GTZN NON-ECC G.SKILL (2pcs 32G)', '2024-07-09', 3),
('24272680440', 'F4-3600C18D-64GTZN', 'DDR4 KIT 64GB F4-3600C18D-64GTZN NON-ECC G.SKILL (2pcs 32G)', '2024-07-09', 3),
('24212171871', 'F5-56J40C16GX2-RS5W', 'DDR5 KIT 32GB F5-5600J4040C16GX2-RS5W NON-ECC G.SKILL (2pcs 16G)', '2024-07-09', 3),
('24212171872', 'F5-56J40C16GX2-RS5W', 'DDR5 KIT 32GB F5-5600J4040C16GX2-RS5W NON-ECC G.SKILL (2pcs 16G)', '2024-07-09', 3),
('24212171873', 'F5-56J40C16GX2-RS5W', 'DDR5 KIT 32GB F5-5600J4040C16GX2-RS5W NON-ECC G.SKILL (2pcs 16G)', '2024-07-09', 3),
('24212171874', 'F5-56J40C16GX2-RS5W', 'DDR5 KIT 32GB F5-5600J4040C16GX2-RS5W NON-ECC G.SKILL (2pcs 16G)', '2024-07-09', 3),
('24030283232', 'F5-56S4645A32GX1-RS', 'DDR5 F5-5600S4645A32GX1-RS NON-ECC G.SKILL', '2024-07-09', 3),
('24030283233', 'F5-56S4645A32GX1-RS', 'DDR5 F5-5600S4645A32GX1-RS NON-ECC G.SKILL', '2024-07-09', 3),
('24030283236', 'F5-56S4645A32GX1-RS', 'DDR5 F5-5600S4645A32GX1-RS NON-ECC G.SKILL', '2024-07-09', 3),
('24161872949', 'F5-60J36F32GX2-TZ5RW', 'DDR5 KIT 64GB F5-6000J3636F32GX2-TZ5RW NON-ECC G.SKILL (2pcs 32G)', '2024-07-09', 3),
('24161872950', 'F5-60J36F32GX2-TZ5RW', 'DDR5 KIT 64GB F5-6000J3636F32GX2-TZ5RW NON-ECC G.SKILL (2pcs 32G)', '2024-07-09', 3),
('RCDCOP0002063Z5', 'GR701 ROG-HYP WHITE', 'CASE-ASUS GR701 ROG HYPERION WHITE EDITION', '2024-07-09', 3),
('RCDCOP0002099NP', 'GR701 ROG-HYP WHITE', 'CASE-ASUS GR701 ROG HYPERION WHITE EDITION', '2024-07-09', 3),
('RCDCOP000210VYW', 'GR701 ROG-HYP WHITE', 'CASE-ASUS GR701 ROG HYPERION WHITE EDITION', '2024-07-09', 3),
('RCM0KC043648J45', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('RCM0KC043649W8P', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('RCM0KC043650E8K', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('RCM0KC043651WTD', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('RCM0KC043652KK6', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('RCM0KC043653YXZ', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('RCM0KC043654B8K', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('RCM0KC043655LUD', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('RCM0KC0436562S6', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('RCM0KC043657CJV', 'H81M-K', 'MB-ASUS H81M-K', '2024-07-09', 3),
('2406 0000010295303-P011992', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P012176', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P012268', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P012292', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P012475', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P012643', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P013317', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P013689', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P014081', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P014083', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P014085', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2406 0000010295303-P014428', 'KF432C16BB/16', 'Kingston 16G DDR4 3200 C16 Beast Black (KF432C16BB/16)', '2024-07-09', 3),
('2405 0000010284203-S000181', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000188', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000190', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000365', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000367', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000368', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000370', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000372', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000375', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000392', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000409', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000418', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000444', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000855', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000858', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000859', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000863', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000865', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000872', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000873', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000874', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000875', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000876', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000877', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000881', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000889', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000892', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000893', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000899', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S000902', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001045', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001077', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001081', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001083', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001169', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001171', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001173', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001199', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001318', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001376', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001569', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001581', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001610', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001663', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001667', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001676', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001677', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001679', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001681', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001683', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001685', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001689', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001691', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001692', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001696', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001703', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001918', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001932', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001936', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001938', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001954', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001989', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001993', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001994', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S001996', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002074', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002076', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002078', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002087', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002089', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002090', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002091', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002098', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002200', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002205', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002208', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002354', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002369', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002478', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002488', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002510', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002518', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002531', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002548', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002556', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002723', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002725', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002741', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002743', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002745', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002757', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002772', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002787', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002791', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3);
INSERT INTO `sanpham` (`SoSerial`, `MAHANG`, `TENHANG`, `NGAYXUAT`, `THOIHANBH`) VALUES
('2405 0000010284203-S002793', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S002795', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003097', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003101', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003423', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003425', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003426', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003434', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003435', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003443', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003444', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003445', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003453', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003480', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003517', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003525', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003527', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003561', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003692', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003728', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003730', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003750', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003754', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003760', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S003890', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004025', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004033', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004039', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004087', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004089', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004165', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004167', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004169', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004215', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004222', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004224', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004226', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004235', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004237', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004239', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004437', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004682', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004717', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004723', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004724', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004728', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004731', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004742', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004750', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004757', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004763', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004813', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004816', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004868', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004874', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004878', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004894', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004896', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004908', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004912', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2405 0000010284203-S004914', 'KF432C16BB/8', 'Kingston 8G DDR4 3200 C16 Beast Black', '2024-07-09', 3),
('2406 010297799X001-K000006', 'KF432C16BB2A/32', 'Kingston 32GB DDR4 3200MT/s  CL16 DIMM FURY Beast RGB (KF432C16BB2A/32)', '2024-07-09', 3),
('2411 010337551X001-K000002', 'KF432C16BB2A/32', 'Kingston 32GB DDR4 3200MT/s  CL16 DIMM FURY Beast RGB (KF432C16BB2A/32)', '2024-07-09', 3),
('2411 010337551X001-K000004', 'KF432C16BB2A/32', 'Kingston 32GB DDR4 3200MT/s  CL16 DIMM FURY Beast RGB (KF432C16BB2A/32)', '2024-07-09', 3),
('2411 010337551X001-K000016', 'KF432C16BB2A/32', 'Kingston 32GB DDR4 3200MT/s  CL16 DIMM FURY Beast RGB (KF432C16BB2A/32)', '2024-07-09', 3),
('2411 010337551X001-K000018', 'KF432C16BB2A/32', 'Kingston 32GB DDR4 3200MT/s  CL16 DIMM FURY Beast RGB (KF432C16BB2A/32)', '2024-07-09', 3),
('2411 010337551X001-K000021', 'KF432C16BB2A/32', 'Kingston 32GB DDR4 3200MT/s  CL16 DIMM FURY Beast RGB (KF432C16BB2A/32)', '2024-07-09', 3),
('2411 010337551X001-K000023', 'KF432C16BB2A/32', 'Kingston 32GB DDR4 3200MT/s  CL16 DIMM FURY Beast RGB (KF432C16BB2A/32)', '2024-07-09', 3),
('2403 0000010271092-S001676', 'KF432C16BB2AK2/32', 'Kingston KIT 32GB DDR4 3200MT/s CL16 DIMM FURY Beast RGB-KF432C16BB2AK2/32(2PCS 16G)', '2024-07-09', 3),
('2403 0000010271092-S001678', 'KF432C16BB2AK2/32', 'Kingston KIT 32GB DDR4 3200MT/s CL16 DIMM FURY Beast RGB-KF432C16BB2AK2/32(2PCS 16G)', '2024-07-09', 3),
('2404 010268823X003-K000140', 'KF432C16BB2AK2/32', 'Kingston KIT 32GB DDR4 3200MT/s CL16 DIMM FURY Beast RGB-KF432C16BB2AK2/32(2PCS 16G)', '2024-07-09', 3),
('2404 010268823X003-K000149', 'KF432C16BB2AK2/32', 'Kingston KIT 32GB DDR4 3200MT/s CL16 DIMM FURY Beast RGB-KF432C16BB2AK2/32(2PCS 16G)', '2024-07-09', 3),
('2409 010315419X002-K000306', 'KF432C16BB2AK2/32', 'Kingston KIT 32GB DDR4 3200MT/s CL16 DIMM FURY Beast RGB-KF432C16BB2AK2/32(2PCS 16G)', '2024-07-09', 3),
('2409 010315419X002-K000307', 'KF432C16BB2AK2/32', 'Kingston KIT 32GB DDR4 3200MT/s CL16 DIMM FURY Beast RGB-KF432C16BB2AK2/32(2PCS 16G)', '2024-07-09', 3),
('2416 010369181X001-K000028', 'KF552C40BBAK2-64', 'Kingston KIT 64G DDR5 5200Mhz CL40 DIMM FURY Beast RGB XMP(2 PCS 32)-KF552C40BBAK2-64', '2024-07-09', 3),
('2416 010369181X001-K000037', 'KF552C40BBAK2-64', 'Kingston KIT 64G DDR5 5200Mhz CL40 DIMM FURY Beast RGB XMP(2 PCS 32)-KF552C40BBAK2-64', '2024-07-09', 3),
('2416 010369181X003-K000023', 'KF552C40BBAK2-64', 'Kingston KIT 64G DDR5 5200Mhz CL40 DIMM FURY Beast RGB XMP(2 PCS 32)-KF552C40BBAK2-64', '2024-07-09', 3),
('2416 010369181X003-K000030', 'KF552C40BBAK2-64', 'Kingston KIT 64G DDR5 5200Mhz CL40 DIMM FURY Beast RGB XMP(2 PCS 32)-KF552C40BBAK2-64', '2024-07-09', 3),
('2416 010369181X003-K000038', 'KF552C40BBAK2-64', 'Kingston KIT 64G DDR5 5200Mhz CL40 DIMM FURY Beast RGB XMP(2 PCS 32)-KF552C40BBAK2-64', '2024-07-09', 3),
('2416 010369181X003-K000039', 'KF552C40BBAK2-64', 'Kingston KIT 64G DDR5 5200Mhz CL40 DIMM FURY Beast RGB XMP(2 PCS 32)-KF552C40BBAK2-64', '2024-07-09', 3),
('2415 010368964X001-K000201', 'KF556C40BBAK2-64', 'Kingston KIT 64GB D5-5600 Fury Beast RGB  KF556C40BBAK2-64 (2PCS 32G)', '2024-07-09', 3),
('2415 010368964X001-K000204', 'KF556C40BBAK2-64', 'Kingston KIT 64GB D5-5600 Fury Beast RGB  KF556C40BBAK2-64 (2PCS 32G)', '2024-07-09', 3),
('2415 010368964X001-K000205', 'KF556C40BBAK2-64', 'Kingston KIT 64GB D5-5600 Fury Beast RGB  KF556C40BBAK2-64 (2PCS 32G)', '2024-07-09', 3),
('2415 010368964X001-K000206', 'KF556C40BBAK2-64', 'Kingston KIT 64GB D5-5600 Fury Beast RGB  KF556C40BBAK2-64 (2PCS 32G)', '2024-07-09', 3),
('2415 010368964X001-K000278', 'KF556C40BBAK2-64', 'Kingston KIT 64GB D5-5600 Fury Beast RGB  KF556C40BBAK2-64 (2PCS 32G)', '2024-07-09', 3),
('2415 010368964X001-K000279', 'KF556C40BBAK2-64', 'Kingston KIT 64GB D5-5600 Fury Beast RGB  KF556C40BBAK2-64 (2PCS 32G)', '2024-07-09', 3),
('2416 010370877X001-K000132', 'KF556C40BBAK2-64', 'Kingston KIT 64GB D5-5600 Fury Beast RGB  KF556C40BBAK2-64 (2PCS 32G)', '2024-07-09', 3),
('2416 010370877X001-K000133', 'KF556C40BBAK2-64', 'Kingston KIT 64GB D5-5600 Fury Beast RGB  KF556C40BBAK2-64 (2PCS 32G)', '2024-07-09', 3),
('2351 0000010234931-T000008', 'KSM48R40BS8KMM-16HMR', 'Kingston 16GB DDR5 4800MT/s  ECC Reg CL40 DIMM 1Rx8 Hynix M Rambus(KSM48R40BS8KMM-16HMR)', '2024-07-09', 3),
('2414 0000010356928-S004343', 'KVR26N19S8/8', 'Kingston 8G DDR4 2666 CL19 1Rx8 UDIMM', '2024-07-09', 3),
('2414 0000010356928-S005193', 'KVR26N19S8/8', 'Kingston 8G DDR4 2666 CL19 1Rx8 UDIMM', '2024-07-09', 3),
('2414 0000010364843-K000948', 'KVR26S19S6/8', 'Kingston 8G DDR4 2666 S19 1Rx16 SODIMM', '2024-07-09', 3),
('2414 0000010364843-K000980', 'KVR26S19S6/8', 'Kingston 8G DDR4 2666 S19 1Rx16 SODIMM', '2024-07-09', 3),
('2348 0000010197227-K000277', 'KVR26S19S8/16', 'Kingston 16GB DDR4 2666 S19 1Rx8 SODIMM', '2024-07-09', 3),
('2341 0000010108695-K000324', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2341 0000010108695-K000326', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2341 0000010108695-K000329', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2341 0000010108695-K001592', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2341 0000010108695-K002424', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K000286', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K000325', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K000416', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K000421', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K000428', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K000898', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001164', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001165', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001193', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001195', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001197', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001199', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001476', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001632', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001706', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001720', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001721', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001726', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001759', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001786', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K001893', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K002055', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K002061', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K002064', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K002081', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K002084', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2401 0000010249752-K002087', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2417 0P1395575X031-S007639', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2417 0P1395575X031-S007663', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S003220', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S003226', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S003254', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S003264', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S003266', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S006034', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S006046', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S006074', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S007936', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S007945', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S007969', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2419 0P1395575X039-S008450', 'KVR32S22S8/16', 'Kingston 16GB DDR4  - 3200MHz Non-ECC S22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S000752', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003544', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003555', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003580', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003604', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003620', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003632', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003636', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003717', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003723', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S003766', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S004057', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S004060', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S004274', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S005373', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S005474', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S005595', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S005605', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S006273', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2415 0000010366302-S007294', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2416 0000010356952-S001808', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2416 0000010356952-S001821', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2416 0000010356952-S002205', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2416 0000010356952-S002958', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2416 0000010356952-S002967', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S000898', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004435', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004441', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004452', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004453', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004472', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004473', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004474', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004489', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004521', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004522', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004523', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004634', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004635', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S004646', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005321', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005327', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005329', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005414', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005415', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005420', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005441', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005442', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005450', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005925', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005926', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005943', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005946', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005967', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005968', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005995', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005996', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S005999', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007197', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007642', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007644', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007665', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007666', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007766', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007776', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007812', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007826', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007829', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007831', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007832', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007833', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007860', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007928', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007942', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007944', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007956', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007957', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007958', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007959', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007960', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007983', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S007994', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008003', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008008', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008009', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008010', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008011', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008020', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008239', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008528', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008529', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008530', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008532', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008536', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008537', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008538', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008563', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008564', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008569', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('2422 0000010428103-S008708', 'KVR32S22S8/8', 'Kingston 8GB DDR4 - 3200MHz Non - ECC CL22 SODIMM', '2024-07-09', 3),
('64533EBA2349', 'LD4AS016G-B3200GSST', 'Lexar SO-DIMM DDR4 3200 16GB, Blister, for Global (B)', '2024-07-09', 3),
('64536FDC2349', 'LD4AS016G-B3200GSST', 'Lexar SO-DIMM DDR4 3200 16GB, Blister, for Global (B)', '2024-07-09', 3),
('NM4075Q000156P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q000362P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q000363P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q000365P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q000818P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q001182P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q001403P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q001411P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q001456P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q001472P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q001683P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q001690P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q001907P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002141P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002144P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002154P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002158P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002159P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002180P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002181P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002308P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002350P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002364P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002391P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002398P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002406P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002417P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002505P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002507P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002609P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002619P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002850P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002864P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002894P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002903P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002907P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002919P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002931P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002934P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002937P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002973P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002988P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q002989P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003009P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003017P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003036P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003038P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003041P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003042P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003045P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003049P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003187P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003544P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003588P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q003690P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q004224P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q004674P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q006882P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q006883P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q006895P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q006899P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q007414P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q007680P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q008202P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q008204P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q008208P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q008212P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q008214P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q008390P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q008391P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q008808P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q009976P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q009984P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q009994P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q009999P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q010010P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q010012P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q012095P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q012296P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q012388P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q012894P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q013270P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q013285P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q013290P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q013292P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q013536P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q013542P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q013574P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q014227P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q014233P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q021432P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q023478P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q026255P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q026261P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q026265P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q026283P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q026992P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q027487P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q028221P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NM4075Q030468P111D', 'LNM620X512G-RNNNG', 'Lexar Internal SSD NM620 PCIe G3x4 512GB, Global', '2024-07-09', 3),
('NHK836R0022210S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022220S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022230S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022240S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022250S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022290S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022300S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022320S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022340S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022350S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022360S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022370S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022380S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022390S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0022400S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0026240S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0026380S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0030210S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0032770S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0033880S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0033890S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0033910S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0033920S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0033940S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0033950S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0033970S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0033990S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0034000S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035410S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035420S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035430S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035440S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035450S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035460S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035470S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035480S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035490S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035500S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035510S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035520S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035530S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035540S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035550S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035560S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035570S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035580S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035590S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0035600S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036020S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036030S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036050S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036060S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036080S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036100S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036120S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036140S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036150S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036160S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036170S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036190S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0036200S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037060S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037410S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037420S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037440S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037470S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037480S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037500S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037510S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037520S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037530S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037540S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037560S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037600S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0037820S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038230S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038250S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038270S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038280S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038290S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038340S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038350S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038360S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038410S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038430S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038440S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038450S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038460S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038470S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038490S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038500S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038510S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038560S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3);
INSERT INTO `sanpham` (`SoSerial`, `MAHANG`, `TENHANG`, `NGAYXUAT`, `THOIHANBH`) VALUES
('NHK836R0038570S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038600S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038610S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038620S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038700S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038710S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NHK836R0038720S30N', 'LNS100-128RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 128G, Global', '2024-07-09', 3),
('NKT088R0084610S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0084650S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0084680S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0084700S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0084710S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0084750S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0084800S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0098610S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0098620S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0098690S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0098710S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0098800S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0105360S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0106450S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0107640S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0107690S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0107730S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0107740S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0107750S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0107800S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0111130S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0111180S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0121830S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0121840S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0121870S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0121980S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0122450S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0122520S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0122530S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('NKT088R0122540S304', 'LNS100-512RB', 'Lexar Internal SSD NS100 2.5\\\" VAL SATA 512G, Global', '2024-07-09', 3),
('S1M0CS001992YLW', 'PRIME B760M-A WIFI', 'MB-ASUS PRIME B760M-A WIFI', '2024-07-09', 3),
('RCM0CS05J8435UV', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J844GNJ', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J845VGD', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J8467H6', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J847XBV', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J848S4J', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J8499SC', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J850B5C', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J851ET4', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J852YNW', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J853XWG', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J8545H9', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J855MAY', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J85693L', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J857V5D', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J858DT6', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J859YMV', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J860KT4', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J861ENM', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J8627GE', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J9834P7', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J984ESW', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J985WZF', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J986535', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J987G6M', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J988C9C', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J989MC3', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J990SDY', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J991GJH', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RCM0CS05J9924P7', 'PRIME H610M-A WF D4', 'MB-ASUS PRIME H610M-A WIFI D4', '2024-07-09', 3),
('RAM0KC234927BA2', 'R-ST-Z790-E-GM WF II', 'MB-ASUS ROG STRIX Z790-E GAMING WIFI II', '2024-07-09', 3),
('50026B73829597D6', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295982D', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295982E', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959834', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959839', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295984D', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959850', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959854', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959860', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959885', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959897', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295989A', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295989B', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295993A', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B73829599E0', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959AA3', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959BC1', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959E18', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959EC6', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959ED0', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959F50', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959F55', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959F62', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382959F71', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295A0D4', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295A11B', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295A14C', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295A158', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295A388', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295A72C', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295A730', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295AA48', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295AA49', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B738295BC2B', 'SA400S37/240G', 'KINGSTON SSD A400 SATA3 240GB', '2024-07-09', 3),
('50026B7382D753EE', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('50026B7382D753FB', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('50026B7382D7553F', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('50026B7382D75540', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('50026B7382D75542', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('50026B7382D7554C', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('50026B7382D7554D', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('50026B7382D75552', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('50026B7382D75558', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('50026B7382D765E2', 'SA400S37/480G', 'KINGSTON SSD A400 SATA3 480GB', '2024-07-09', 3),
('N9S2CG003828', 'SER-P11C-X', 'MB-SER-ASUS P11C-X', '2024-07-09', 3),
('50026B7382F39AFF', 'SKC3000S/512G', 'KINGSTON SSD KC3000S 512G PCIe 4.0 NVMe M.2', '2024-07-09', 3),
('50026B7382F39B2C', 'SKC3000S/512G', 'KINGSTON SSD KC3000S 512G PCIe 4.0 NVMe M.2', '2024-07-09', 3),
('50026B7382F39C8A', 'SKC3000S/512G', 'KINGSTON SSD KC3000S 512G PCIe 4.0 NVMe M.2', '2024-07-09', 3),
('50026B7382F39CDC', 'SKC3000S/512G', 'KINGSTON SSD KC3000S 512G PCIe 4.0 NVMe M.2', '2024-07-09', 3),
('50026B7382F39FC3', 'SKC3000S/512G', 'KINGSTON SSD KC3000S 512G PCIe 4.0 NVMe M.2', '2024-07-09', 3),
('50026B7785A7BFF5', 'SKC600/1024G', 'KINGSTON SSD KC600 SATA3 1024GB', '2024-07-09', 3),
('50026B7785AD9A18', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9AF2', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9B07', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9B75', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9B7D', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9D57', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9D5E', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9D65', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9D70', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9D83', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9D87', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9DB2', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9DE8', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9E36', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9E4E', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9E50', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785AD9E57', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7785ADA081', 'SKC600/512G', 'KINGSTON SSD KC600 SATA3 512GB', '2024-07-09', 3),
('50026B7686C9ACB1', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9ADD3', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9AE17', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9AE1A', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9AE1C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9AE1F', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9AE2E', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9AE3B', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9AE3C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9AE41', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9AE44', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9B63D', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9B649', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9B8F2', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9B942', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9B947', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9B957', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9B95D', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9B967', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BA39', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BA60', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BA67', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BC93', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BE32', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BE35', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BE37', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BE38', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BE3C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BE45', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7686C9BE52', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8D89C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8D929', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8D92E', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8D9AC', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8D9B2', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DA34', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DA51', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DAC9', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DACE', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DADB', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DADE', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DAE5', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DB0E', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DB64', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DB6D', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DB87', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DD1D', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DD6F', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE0B', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE0C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE2B', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE35', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE38', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE3B', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE3C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE3E', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE3F', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE43', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE44', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE57', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE5B', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE68', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE6D', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE76', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE85', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE88', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE8C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE8E', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE93', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DE9C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DEAA', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DEB6', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DEC0', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DF45', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8DF86', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E01F', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E02A', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E049', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E04B', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E05D', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E05E', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E068', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E085', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E09C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E0A1', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E0B7', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E0B8', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E0D7', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E111', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E115', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E116', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E119', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E11D', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E12C', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E136', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E13B', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E146', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E158', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E16F', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E170', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E1B4', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E1EE', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E200', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E6FC', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E759', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E75B', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E762', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E76B', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E76F', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E775', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E777', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E778', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E781', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E78F', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7785A8E791', 'SNV2S/1000G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 1000G (SNV2S/1000G)', '2024-07-09', 3),
('50026B7382B44156', 'SNV2S/500G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 500G (SNV2S/500G)', '2024-07-09', 3),
('50026B7382B44A80', 'SNV2S/500G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 500G (SNV2S/500G)', '2024-07-09', 3),
('50026B7382B44A99', 'SNV2S/500G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 500G (SNV2S/500G)', '2024-07-09', 3),
('50026B7382B44ABA', 'SNV2S/500G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 500G (SNV2S/500G)', '2024-07-09', 3),
('50026B7382B44AC7', 'SNV2S/500G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 500G (SNV2S/500G)', '2024-07-09', 3),
('50026B7382B450D6', 'SNV2S/500G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 500G (SNV2S/500G)', '2024-07-09', 3),
('50026B7382B450DD', 'SNV2S/500G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 500G (SNV2S/500G)', '2024-07-09', 3),
('50026B7382B450EE', 'SNV2S/500G', 'KINGSTON SSD NV2 M.2 2280 PCIe Gen 4.0 NVMe 500G (SNV2S/500G)', '2024-07-09', 3),
('50026B728340CF8B', 'SXS1000/1000G', 'KINGSTON SSD 1TB XS1000 External USB 3.2 Gen 2 Portable Solid State Drive (SXS1000/1000G)', '2024-07-09', 3),
('50026B728340DBBF', 'SXS1000/1000G', 'KINGSTON SSD 1TB XS1000 External USB 3.2 Gen 2 Portable Solid State Drive (SXS1000/1000G)', '2024-07-09', 3),
('50026B728340E123', 'SXS1000/1000G', 'KINGSTON SSD 1TB XS1000 External USB 3.2 Gen 2 Portable Solid State Drive (SXS1000/1000G)', '2024-07-09', 3),
('50026B728340E1D8', 'SXS1000/1000G', 'KINGSTON SSD 1TB XS1000 External USB 3.2 Gen 2 Portable Solid State Drive (SXS1000/1000G)', '2024-07-09', 3),
('50026B728340E2F5', 'SXS1000/1000G', 'KINGSTON SSD 1TB XS1000 External USB 3.2 Gen 2 Portable Solid State Drive (SXS1000/1000G)', '2024-07-09', 3),
('S3M0KC226830RF5', 'TU-G-B760M-PLS-WIFI', 'MB-ASUS TUF GAMING B760M-PLUS WIFI', '2024-07-09', 3),
('L3YECM001150RMF', 'WIG-AWPM/QI-PAD-15-W', 'SẠC KHÔNG DÂY ASUS W1G-AWPM/QI-PAD-15W-WHITE', '2024-07-09', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vnpay`
--

CREATE TABLE `vnpay` (
  `vnp_id` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankcode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `order_code` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vnpay`
--

INSERT INTO `vnpay` (`vnp_id`, `vnp_amount`, `vnp_bankcode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `order_code`, `payment_status`) VALUES
(36, '368000000', 'NCB', 'VNP14029821', 'ATM', 'Thanh toán đơn hàng ', '20230603222548', 'MCG9RE1Q', '14029821', 3320, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`) USING BTREE;

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`) USING BTREE;

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`) USING BTREE;

--
-- Chỉ mục cho bảng `capacity`
--
ALTER TABLE `capacity`
  ADD PRIMARY KEY (`capacity_id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

--
-- Chỉ mục cho bảng `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`) USING BTREE;

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`) USING BTREE;

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Chỉ mục cho bảng `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`) USING BTREE;

--
-- Chỉ mục cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`evaluate_id`) USING BTREE;

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`) USING BTREE;

--
-- Chỉ mục cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  ADD PRIMARY KEY (`inventory_detail_id`) USING BTREE;

--
-- Chỉ mục cho bảng `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`metric_id`) USING BTREE;

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`momo_id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`) USING BTREE;

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`) USING BTREE;

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`vnp_id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `capacity`
--
ALTER TABLE `capacity`
  MODIFY `capacity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `evaluate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `inventory_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `metrics`
--
ALTER TABLE `metrics`
  MODIFY `metric_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `momo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `vnp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
