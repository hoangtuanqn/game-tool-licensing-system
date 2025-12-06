-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 19, 2024 lúc 05:08 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test`
--

DELIMITER $$
--
-- Các hàm
--
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STR` (`x` VARCHAR(255), `delim` VARCHAR(12), `pos` INT) RETURNS VARCHAR(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci DETERMINISTIC RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
    CHAR_LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
    delim, "");

DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biendongsodu`
--

CREATE TABLE `biendongsodu` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `truoc` bigint(20) DEFAULT 0,
  `sau` bigint(20) DEFAULT 0,
  `note` varchar(250) DEFAULT NULL,
  `tongtien` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `biendongsodu`
--

INSERT INTO `biendongsodu` (`id`, `username`, `truoc`, `sau`, `note`, `tongtien`, `time`) VALUES
(1, 'tuanori', 200000, 199999, 'Admin thay đổi số dư ', 1, '2024-02-16 22:39:59'),
(2, 'tuanori', 1, 50000, 'Admin thay đổi số dư ', 49999, '2024-02-16 22:40:28'),
(3, 'tuanori', 50000, 93000, 'Nạp thẻ 50,000đ có seri (65897895465212)', 43000, '2024-02-17 22:45:57'),
(4, 'tuanori', 93000, 62000, 'Chuyển 30.000đ cho thành viên 2. Phí GD là 1.000đ', 30000, '2024-02-17 23:42:26'),
(5, 'phttuan', 0, 30000, 'Nhận 30.000đ từ thành viên tuanori', 30000, '2024-02-17 23:42:26'),
(6, 'tuanori', 62000, 562000, 'Nhập giftcode mã GIFTCODE thành công', 500000, '2024-02-17 23:53:18'),
(7, 'tuanori', 562000, 1062000, 'Nhập giftcode mã AG-UBS35QFS thành công', 500000, '2024-02-18 00:01:03'),
(8, 'tuanori', 1062000, 1063000, 'Nhập giftcode mã AG-HJQX28GH thành công', 1000, '2024-02-18 00:01:35'),
(9, 'tuanori', 1063000, 1263000, 'Nhập giftcode mã AG-FMM1QKET thành công', 200000, '2024-02-18 00:11:48'),
(10, 'tuanori', 1263000, 863000, 'Đã mua 10 key thành công với giá 400,000đ', 400000, '2024-02-18 23:45:39'),
(11, 'tuanori', 863000, 463000, 'Đã mua 10 key thành công với giá 400,000đ', 400000, '2024-02-18 23:50:09'),
(12, 'tuanori', 463000, 563000, 'Nạp 100.000đ vào tài khoản qua MOMO', 100000, '2024-02-19 00:03:51'),
(13, 'tuanori', 563000, 573000, 'Nạp 10.000đ vào tài khoản qua MBBANK', 10000, '2024-02-19 00:07:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blockip`
--

CREATE TABLE `blockip` (
  `id` int(11) NOT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories_sp`
--

CREATE TABLE `categories_sp` (
  `id` int(11) NOT NULL,
  `category` int(11) DEFAULT 1,
  `name` text DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL,
  `download` varchar(250) DEFAULT NULL,
  `download2` varchar(250) DEFAULT NULL,
  `id_video` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories_sp`
--

INSERT INTO `categories_sp` (`id`, `category`, `name`, `mota`, `img`, `download`, `download2`, `id_video`, `status`) VALUES
(1, 1, 'HAX SUPER TEAM ANDROID NO ROOT', 'Bản hack Superteam v2 hỗ trợ android no root, antiban 99%, cày rank tốt nhất hiện nay. ESP, AIMBOT,...', 'https://r90hax.com/resize.php?imgs=SuperTeamCheat.jpg', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `seo_key` text DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `mota`, `seo_key`, `img`, `slug`, `status`) VALUES
(1, 'HAX PUBG MOBILE', 'Cung cấp Hax Pubg Mobile Android &amp; IOS', 'pubg mobile, pubg android, pubg ios, pubg', 'https://r90hax.com/public/uploads/resize/PubgMobile.png', 'hax-pubg-mobile', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_goi`
--

CREATE TABLE `category_goi` (
  `id` int(11) NOT NULL,
  `categories_sp` int(11) DEFAULT 1,
  `time` bigint(20) DEFAULT NULL,
  `money` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category_goi`
--

INSERT INTO `category_goi` (`id`, `categories_sp`, `time`, `money`, `status`) VALUES
(1, 1, 24, 40000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyentien`
--

CREATE TABLE `chuyentien` (
  `id` int(11) NOT NULL,
  `userchuyen` varchar(250) DEFAULT NULL,
  `usernhan` varchar(250) DEFAULT NULL,
  `sotien` bigint(20) DEFAULT NULL,
  `time` varchar(250) DEFAULT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `hethong` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyentien`
--

INSERT INTO `chuyentien` (`id`, `userchuyen`, `usernhan`, `sotien`, `time`, `ip`, `hethong`) VALUES
(1, 'tuanori', 'phttuan', 30000, '1708188146', '::1', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ck_card`
--

CREATE TABLE `ck_card` (
  `id` int(11) NOT NULL,
  `loaithe` varchar(250) DEFAULT NULL,
  `ck` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ck_card`
--

INSERT INTO `ck_card` (`id`, `loaithe`, `ck`) VALUES
(1, 'VIETTEL', 12),
(2, 'VINAPHONE', 12),
(3, 'MOBIFONE', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftcode`
--

CREATE TABLE `giftcode` (
  `id` int(11) NOT NULL,
  `gift` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `amount` bigint(20) DEFAULT 0,
  `uptime` datetime DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giftcode`
--

INSERT INTO `giftcode` (`id`, `gift`, `status`, `amount`, `uptime`, `username`) VALUES
(7, 'AG-FMM1QKET', 0, 200000, '2024-02-18 00:11:48', 'tuanori');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listbank`
--

CREATE TABLE `listbank` (
  `id` int(11) NOT NULL,
  `img` varchar(250) DEFAULT NULL,
  `bank` varchar(250) DEFAULT NULL,
  `stk` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `listbank`
--

INSERT INTO `listbank` (`id`, `img`, `bank`, `stk`, `name`) VALUES
(1, 'https://i.imgur.com/DjzV7BX.png', 'MBBANK', '0812665001', 'Phạm Hoàng Tuấn'),
(2, 'https://i.imgur.com/eyvWNvF.png', 'MOMO', '0812665001', 'PHẠM HOÀNG TUẤN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_key`
--

CREATE TABLE `list_key` (
  `id` int(11) NOT NULL,
  `category_goi` int(11) DEFAULT 1,
  `token` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `list_key`
--

INSERT INTO `list_key` (`id`, `category_goi`, `token`, `status`) VALUES
(1, 1, '1', 0),
(2, 1, '2', 0),
(3, 1, '3', 0),
(4, 1, '4', 0),
(5, 1, '5', 0),
(6, 1, '6', 0),
(7, 1, '7', 0),
(8, 1, '8', 0),
(9, 1, '9', 0),
(10, 1, '10', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ls_mua`
--

CREATE TABLE `ls_mua` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `categories_sp` int(11) DEFAULT 0,
  `category_goi` int(11) DEFAULT 1,
  `token` varchar(250) DEFAULT NULL,
  `sotien` bigint(20) DEFAULT 0,
  `thoigian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ls_mua`
--

INSERT INTO `ls_mua` (`id`, `username`, `categories_sp`, `category_goi`, `token`, `sotien`, `thoigian`) VALUES
(1, 'tuanori', 1, 1, '10', 40000, '2024-02-18 23:50:09'),
(2, 'tuanori', 1, 1, '9', 40000, '2024-02-18 23:50:09'),
(3, 'tuanori', 1, 1, '8', 40000, '2024-02-18 23:50:09'),
(4, 'tuanori', 1, 1, '7', 40000, '2024-02-18 23:50:09'),
(5, 'tuanori', 1, 1, '6', 40000, '2024-02-18 23:50:09'),
(6, 'tuanori', 1, 1, '5', 40000, '2024-02-18 23:50:09'),
(7, 'tuanori', 1, 1, '4', 40000, '2024-02-18 23:50:09'),
(8, 'tuanori', 1, 1, '3', 40000, '2024-02-18 23:50:09'),
(9, 'tuanori', 1, 1, '2', 40000, '2024-02-18 23:50:09'),
(10, 'tuanori', 1, 1, '1', 40000, '2024-02-18 23:50:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `napatm`
--

CREATE TABLE `napatm` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `hinhthuc` varchar(250) DEFAULT NULL,
  `magd` varchar(250) DEFAULT NULL,
  `sotien` varchar(250) DEFAULT NULL,
  `ndnaptien` varchar(250) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `napatm`
--

INSERT INTO `napatm` (`id`, `username`, `hinhthuc`, `magd`, `sotien`, `ndnaptien`, `thoigian`) VALUES
(2, 'tuanori', 'MOMO', '20831630295', '20000', 'naptien 2844', '2022-02-10 18:25:08'),
(3, 'tuanbgtl', 'MOMO', '20781781170', '15000', 'naptien 5033', '2022-02-10 18:25:08'),
(4, 'Zun717', 'MOMO', '20831635029', '10000', 'naptien 2844', '2022-02-10 18:25:09'),
(5, 'Zun717', 'MOMO', '20831635611', '40000', 'naptien 2844', '2022-02-10 18:25:09'),
(6, 'Zun717', 'MOMO', '20831767512', '10000', 'naptien 2844', '2022-02-10 18:25:11'),
(7, 'nguyenthanhonetap', 'MOMO', '20854807378', '21500', 'naptien 928', '2022-02-11 01:16:07'),
(8, 'mrken9999', 'MOMO', '20923381795', '30000', 'naptien 3811', '2022-02-11 11:02:08'),
(9, 'haidz2006', 'MOMO', '20929464275', '140000', 'naptien 4998', '2022-02-11 13:18:07'),
(10, 'kabattu', 'MOMO', '21112024435', '80000', 'naptien 5283', '2022-02-15 09:12:07'),
(11, 'nguyenphong206', 'MOMO', '21113818307', '420000', 'naptien 2913', '2022-02-15 10:33:09'),
(12, 'hoaad5vxt', 'MOMO', '21158331144', '200000', 'naptien 5324', '2022-02-16 17:21:07'),
(13, 'HuynhPhat123', 'MOMO', '21176203121', '15000', 'naptien 5046', '2022-02-17 10:50:08'),
(14, 'oofers', 'MOMO', '21193509072', '100000', 'naptien 4757', '2022-02-17 23:33:07'),
(15, 'nguyenthanhonetap', 'MOMO', '21234887471', '150000', 'naptien 928', '2022-02-18 20:39:07'),
(16, 'Haidz110', 'MOMO', '21255976046', '80000', 'naptien 318', '2022-02-19 14:02:07'),
(17, 'thanquan200', 'MOMO', '21263422971', '30000', 'naptien 5400', '2022-02-19 19:09:09'),
(18, 'Minhbovt20100', 'MOMO', '21282625320', '20000', 'naptien 1447', '2022-02-20 15:20:09'),
(19, 'tuananh4g', 'MOMO', '21304276746', '200000', 'naptien 5433', '2022-02-21 12:35:08'),
(20, 'Tunghq111', 'MOMO', '21306483155', '20000', 'naptien 5438', '2022-02-21 14:17:09'),
(21, 'vanhuu', 'MOMO', '21334991704', '5000', 'naptien 5473', '2022-02-22 16:55:08'),
(22, 'khang90907777', 'MOMO', '21358483631', '20000', 'naptien 2900', '2022-02-23 16:39:08'),
(23, 'cafehepho340', 'MOMO', '21368469624', '100000', 'naptien 2690', '2022-02-23 22:41:08'),
(24, 'manhmoi', 'MOMO', '21399258096', '2000', 'naptien 2542', '2022-02-25 07:58:08'),
(25, 'Thanh phat', 'MOMO', '21459853575', '110000', 'naptien 5202', '2022-02-27 14:23:08'),
(26, 'lungphatien@gmail.com', 'MOMO', '21464656692', '150000', 'naptien 4345', '2022-02-27 18:24:12'),
(27, 'Thanh phat', 'MOMO', '21479746361', '100000', 'naptien 5202', '2022-02-28 10:47:07'),
(28, 'Thanh phat', 'MOMO', '21491385059', '70000', 'naptien 5202', '2022-02-28 17:43:09'),
(29, 'Thanh phat', 'MOMO', '21492741240', '100000', 'naptien 5202', '2022-02-28 18:24:08'),
(30, 'hoangskyht', 'MOMO', '21504855446', '15000', 'naptien 5716', '2022-03-01 06:37:08'),
(31, 'Haidz110', 'MOMO', '21524438653', '800000', 'naptien 318', '2022-03-01 14:21:08'),
(32, 'anhtuyet123', 'MOMO', '21534421304', '50000', 'naptien 1886', '2022-03-01 20:53:08'),
(33, 'truongne123', 'MOMO', '21561296644', '50000', 'naptien 5788', '2022-03-02 19:37:07'),
(34, 'truongne123', 'MOMO', '21563979937', '150000', 'naptien 5788', '2022-03-02 21:21:08'),
(35, 'Thanhka', 'MOMO', '21577589060', '20000', 'naptien 5543', '2022-03-03 11:24:07'),
(36, 'caigivay4', 'MOMO', '21603302022', '500000', 'naptien 5856', '2022-03-04 09:28:08'),
(37, 'huydan207', 'MOMO', '21607335210', '100000', 'naptien 5865', '2022-03-04 12:15:08'),
(38, 'huydan207', 'MOMO', '21607446492', '320000', 'naptien 5865', '2022-03-04 12:24:11'),
(39, 'trungthaotrungthao.pv@gmail.com', 'MOMO', '21630099865', '20000', 'naptien 5666', '2022-03-05 09:05:08'),
(40, 'taodeovao', 'MOMO', '21640988986', '150000', 'naptien 5903', '2022-03-05 16:48:07'),
(41, 'shopluachua', 'MOMO', '21652447074', '2000', 'naptien 4940', '2022-03-06 01:13:07'),
(42, 'Haidz110', 'MOMO', '21728208467', '20000', 'naptien 318', '2022-03-08 16:57:11'),
(43, 'Monkeydluffy', 'MOMO', '21759426516', '92000', 'naptien 5008', '2022-03-09 18:17:07'),
(44, 'klsokiu', 'MOMO', '21774841142', '220000', 'naptien 6092', '2022-03-10 09:19:07'),
(45, 'nguyenhao1805', 'MOMO', '21779150159', '200000', 'naptien 5548', '2022-03-10 11:48:07'),
(46, 'Sakura3mc', 'MOMO', '21793059060', '90000', 'naptien 6102', '2022-03-10 19:40:08'),
(47, 'minhquan8m', 'MOMO', '21808591232', '50000', 'naptien 6124', '2022-03-11 10:02:07'),
(48, 'Datkunte', 'MOMO', '21810806217', '20000', 'naptien 2509', '2022-03-11 11:32:07'),
(49, 'Tandz00', 'MOMO', '21924690862', '20000', 'naptien 1062', '2022-03-13 07:18:07'),
(50, 'tranducminh2128', 'MOMO', '21964016213', '44111', 'naptien 6222', '2022-03-14 14:32:08'),
(51, 'phamthuhue01', 'MOMO', '21970344226', '100000', 'naptien 6233', '2022-03-14 18:42:07'),
(52, 'tranducminh2128', 'MOMO', '21973392168', '26000', 'naptien 6222', '2022-03-14 20:35:09'),
(53, 'dophihungdz', 'MOMO', '21974090404', '150000', 'naptien 5553', '2022-03-14 20:55:07'),
(54, 'xegom31265', 'MOMO', '22044920202', '100', 'naptien 5610', '2022-03-17 11:33:08'),
(55, 'Minhhieu7613', 'MOMO', '22052013524', '15000', 'naptien 1792', '2022-03-17 16:52:08'),
(56, 'vodanhqd', 'MOMO', '22093923255', '20000', 'naptien 6373', '2022-03-19 07:02:07'),
(57, 'hoangvu', 'MOMO', '22095229658', '100000', 'naptien 6245', '2022-03-19 08:13:09'),
(58, 'anhcunhoi35', 'MOMO', '22095864302', '100000', 'naptien 1449', '2022-03-19 08:57:07'),
(59, 'Quan104', 'MOMO', '22131663343', '150000', 'naptien 301', '2022-03-20 16:29:08'),
(60, 'kietdanchoi1203', 'MOMO', '22133357825', '420000', 'naptien 6438', '2022-03-20 17:54:07'),
(61, 'hanchinso9999', 'MOMO', '22167425828', '50000', 'naptien 6503', '2022-03-21 23:03:07'),
(62, 'Trungkien123', 'MOMO', '22175541492', '70000', 'naptien 6507', '2022-03-22 08:27:09'),
(63, 'Kietsz', 'MOMO', '22197390620', '20000', 'naptien 3826', '2022-03-22 20:44:09'),
(64, 'Vinhdz567ok', 'MOMO', '22215058841', '70000', 'naptien 6482', '2022-03-23 11:47:09'),
(65, 'nguyenvankhue', 'MOMO', '22221376886', '70000', 'naptien 2229', '2022-03-23 15:23:12'),
(66, 'quoctoan23', 'MOMO', '22231132977', '70000', 'naptien 6564', '2022-03-23 19:45:08'),
(67, 'xuandung19049x', 'MOMO', '22231516241', '150000', 'naptien 6089', '2022-03-23 20:04:07'),
(68, 'anhcunhoi35', 'MOMO', '22249146846', '150000', 'naptien 1449', '2022-03-24 08:52:08'),
(69, 'adminori', 'VIETCOMBANK', '200205', '1000000', 'naptien 16', '2022-03-25 20:03:26'),
(70, 'adminori', 'VIETCOMBANK', '200205', '1000000', 'naptien 16', '2022-03-25 20:05:06'),
(71, 'adminori', 'VIETCOMBANK', '200758', '100000', 'naptien 16', '2022-03-25 20:08:03'),
(72, 'adminori', 'VIETCOMBANK', '200853', '100000', 'naptien 16', '2022-03-25 20:09:04'),
(73, 'adminori', 'VIETCOMBANK', '201206', '101000', 'naptien 16', '2022-03-25 20:13:03'),
(74, 'ngthanhvien2006', 'MOMO', '22297024488', '500000', 'naptien 6634', '2022-03-25 20:21:06'),
(75, 'adminori', 'VIETCOMBANK', '202538', '20000', 'naptien 16', '2022-03-25 20:26:04'),
(76, 'adminori', 'MOMO', '22307563674', '100', 'naptien 16', '2022-03-25 20:27:08'),
(77, 'Tandz00', 'VIETCOMBANK', '230153', '50000', 'naptien 1062', '2022-03-25 23:02:04'),
(78, 'adminori', 'VIETCOMBANK', '5017 - 64396', '10000', 'naptien 16', '2022-03-26 22:15:11'),
(79, 'Tandz00', 'VIETCOMBANK', '5017 - 18553', '50000', 'naptien 1062', '2022-03-26 22:15:11'),
(80, 'adminori', 'VIETCOMBANK', '5017 - 91332', '20000', 'naptien 16', '2022-03-26 22:15:11'),
(81, 'adminori', 'VIETCOMBANK', '5017 - 67250', '101000', 'naptien 16', '2022-03-26 22:15:11'),
(82, 'adminori', 'VIETCOMBANK', '5017 - 61452', '100000', 'naptien 16', '2022-03-26 22:15:11'),
(83, 'adminori', 'VIETCOMBANK', '5017 - 59798', '100000', 'naptien 16', '2022-03-26 22:15:11'),
(84, 'adminori', 'VIETCOMBANK', '5017 - 49354', '1000000', 'naptien 16', '2022-03-26 22:15:11'),
(85, 'Duy2311', 'MOMO', '22365668081', '20000', 'naptien 6679', '0000-00-00 00:00:00'),
(86, 'Duy2311', 'MOMO', '22366234130', '200000', 'naptien 6679', '0000-00-00 00:00:00'),
(87, 'lehuy2709', 'MOMO', '22384159087', '70000', 'naptien 3927', '2022-03-27 22:49:14'),
(88, 'tuadenz', 'MOMO', '22400330159', '20000', 'naptien 4476', '2022-03-28 10:54:03'),
(89, 'sozeidom', 'MOMO', '22405428749', '650000', 'naptien 6715', '2022-03-28 13:17:07'),
(90, 'vihoanganh', 'MOMO', '22440587245', '200000', 'naptien 6733', '2022-03-29 09:10:05'),
(91, 'vudinhdanjr', 'VIETCOMBANK', '5017 - 10587', '150000', 'naptien 6640', '2022-03-31 12:34:05'),
(92, 'Long3805aB', 'MOMO', '22624554745', '20000', 'naptien 6868', '2022-04-02 15:35:04'),
(93, 'Long3805aB', 'MOMO', '22624778933', '110000', 'naptien 6868', '2022-04-02 15:37:03'),
(94, 'namdeptrai', 'VIETCOMBANK', '5017 - 73116', '170000', 'naptien 6889', '2022-04-03 01:12:03'),
(95, 'vudinhdanjr', 'VIETCOMBANK', '5017 - 48072', '40000', 'naptien 6640', '2022-04-03 15:06:05'),
(96, 'ejkdnd', 'MOMO', '22687575358', '150000', 'naptien 6774', '2022-04-04 08:33:03'),
(97, 'anonymous', 'VIETCOMBANK', '5017 - 69771', '20000', 'naptien 6941', '2022-04-04 14:20:04'),
(98, '0379359645', 'MOMO', '22711291465', '220000', 'naptien 6945', '2022-04-04 18:34:04'),
(99, '0379359645', 'VIETCOMBANK', '5017 - 54159', '160000', 'naptien 6945', '2022-04-05 12:55:04'),
(100, '0379359645', 'VIETCOMBANK', '5017 - 60199', '10000', 'naptien 6945', '2022-04-05 12:59:03'),
(101, 'hoangnam15082009', 'MOMO', '22754598559', '100000', 'naptien 6972', '2022-04-05 18:48:10'),
(102, 'lekimkhai12c9', 'VIETCOMBANK', '5017 - 72667', '200000', 'naptien 6996', '2022-04-06 01:05:04'),
(103, 'Hoangden', 'MOMO', '22808486453', '200000', 'naptien 7004', '2022-04-06 13:32:05'),
(104, '0862688527', 'MOMO', '22830066137', '70000', 'naptien 7027', '2022-04-06 21:48:07'),
(105, 'Tuanyn11', 'MOMO', '22846721197', '30000', 'naptien 7031', '2022-04-07 06:02:02'),
(106, 'truongducks', 'MOMO', '22886154754', '40000', 'naptien 5671', '2022-04-08 02:26:07'),
(107, 'oofers', 'MOMO', '22912887562', '80000', 'naptien 4757', '2022-04-08 18:25:08'),
(108, 'tienpc', 'VIETCOMBANK', '5017 - 27339', '150000', 'naptien 7114', '2022-04-09 19:21:24'),
(109, 'admin2003', 'VIETCOMBANK', '5078 - 75016', '70000', 'naptien 6091', '2022-04-11 10:18:03'),
(110, '0388667337', 'MOMO', '23004946118', '150000', 'naptien 7175', '2022-04-11 14:36:05'),
(111, 'Levanthuan29102007', 'VIETCOMBANK', '5017 - 62951', '900000', 'naptien 7211', '2022-04-12 21:37:04'),
(112, 'Levanthuan29102007', 'VIETCOMBANK', '5017 - 69645', '20000', 'naptien 7211', '2022-04-12 22:50:06'),
(113, 'vungocquy2k3', 'VIETCOMBANK', '5017 - 96677', '70000', 'naptien 7230', '2022-04-13 13:37:03'),
(114, 'Cubin232k', 'VIETCOMBANK', '5017 - 21092', '420000', 'naptien 7145', '2022-04-13 13:52:03'),
(115, 'Kienpro5z', 'MOMO', '23080091650', '50000', 'naptien 5959', '2022-04-13 20:50:07'),
(116, 'Kienpro5z', 'MOMO', '23080517433', '100000', 'naptien 5959', '2022-04-13 21:13:09'),
(117, 'taodeovao', 'MOMO', '23097171137', '150000', 'naptien 5903', '2022-04-14 11:50:06'),
(118, 'Cross-z', 'MOMO', '23105983779', '100000', 'naptien 5659', '2022-04-14 16:45:07'),
(119, 'levinhthuong', 'MOMO', '23107947070', '20000', 'naptien 5763', '2022-04-14 18:11:07'),
(120, 'tdat_thongtrifb', 'MOMO', '23146002239', '5000', 'naptien 7169', '2022-04-15 21:36:05'),
(121, 'ducdzbanvps@gmail.com', 'MOMO', '23169156916', '100000', 'naptien 7314', '2022-04-16 12:52:03'),
(122, 'Hoangden', 'VIETCOMBANK', '5017 - 90507', '50000', 'naptien 7004', '2022-04-16 12:57:04'),
(123, 'BaoLe2008', 'MOMO', '23178291763', '100', 'naptien 3841', '2022-04-16 18:54:04'),
(124, 'BaoLe2008', 'MOMO', '23178166502', '18400', 'naptien 3841', '2022-04-16 18:55:04'),
(125, 'levinhthuong', 'MOMO', '23178445236', '100', 'naptien 5763', '2022-04-16 19:08:07'),
(126, 'tdat_thongtrifb', 'MOMO', '23180502716', '5000', 'naptien 7169', '2022-04-16 20:20:06'),
(127, 'atbdbnkt', 'VIETCOMBANK', '5017 - 25342', '150000', 'naptien 1681', '2022-04-17 15:18:04'),
(128, 'finthezin', 'MOMO', '23201708254', '100000', 'naptien 7356', '2022-04-17 15:44:08'),
(129, 'HaruRi', 'MOMO', '23213071539', '60000', 'naptien 7375', '2022-04-17 23:43:06'),
(130, 'tdat_thongtrifb', 'MOMO', '23235267363', '60000', 'naptien 7169', '2022-04-18 18:01:07'),
(131, 'xuancong37', 'VIETCOMBANK', '5017 - 38546', '14892', 'naptien 7397', '2022-04-18 18:52:03'),
(132, 'thangprono7', 'VIETCOMBANK', '5017 - 86860', '450000', 'naptien 7402', '2022-04-18 20:09:05'),
(133, 'Loiboichamcom12345y', 'MOMO', '23254825152', '20000', 'naptien 6447', '2022-04-19 11:44:06'),
(134, 'Nmt2001', 'VIETCOMBANK', '5078 - 39551', '20000', 'naptien 3705', '2022-04-19 23:57:03'),
(135, 'namc6352', 'VIETCOMBANK', '5017 - 40969', '1000', 'naptien 7534', '2022-04-22 21:13:03'),
(136, 'namc6352', 'VIETCOMBANK', '5017 - 43769', '19000', 'naptien 7534', '2022-04-22 21:15:03'),
(137, 'tds1tg', 'MOMO', '23398522171', '70000', 'naptien 7574', '2022-04-23 20:49:09'),
(138, 'demodemo234', 'MOMO', '23398960323', '15000', 'naptien 7572', '2022-04-23 21:13:06'),
(139, '0394001615', 'MOMO', '23488950305', '80000', 'naptien 7327', '2022-04-26 13:47:07'),
(140, 'Cross-z', 'MOMO', '23503223733', '50000', 'naptien 5659', '2022-04-26 21:00:07'),
(141, 'nnnonjb', 'MOMO', '23544946272', '50000', 'naptien 1242', '2022-04-28 01:27:03'),
(142, 'nghicoi2003', 'VIETCOMBANK', '5078 - 64982', '80000', 'naptien 7724', '2022-04-28 23:50:03'),
(143, 'vantai66555', 'VIETCOMBANK', '5078 - 86876', '70000', 'naptien 7752', '2022-04-30 12:03:04'),
(144, 'huydz160607', 'MOMO', '23654886876', '70000', 'naptien 7773', '2022-05-01 07:44:03'),
(145, 'Loiboichamcom12345y', 'VIETCOMBANK', '5017 - 27819', '130000', 'naptien 6447', '2022-05-01 20:12:04'),
(146, 'bmhien', 'VIETCOMBANK', '5017 - 04567', '17500', 'naptien 7736', '2022-05-02 19:56:04'),
(147, 'bmhien', 'VIETCOMBANK', '5017 - 4567', '17500', 'naptien 7736', '2022-05-02 22:00:03'),
(148, 'Thang123', 'MOMO', '23727437182', '70000', 'naptien 7865', '2022-05-04 08:37:03'),
(149, 'lequangvinhaz', 'MOMO', '23729698088', '200000', 'naptien 7464', '2022-05-04 10:19:04'),
(150, 'qminh77', 'VIETCOMBANK', '5017 - 67149', '20000', 'naptien 7852', '2022-05-04 10:20:06'),
(151, 'dienvipzp123', 'VIETCOMBANK', '5017 - 13088', '120000', 'naptien 7881', '2022-05-04 17:56:03'),
(152, 'qminh77', 'VIETCOMBANK', '5017 - 95049', '15000', 'naptien 7852', '2022-05-04 20:24:04'),
(153, 'nguyendangthanh10071997', 'VIETCOMBANK', '5017 - 31577', '70000', 'naptien 7930', '2022-05-06 11:19:04'),
(154, 'Yeumai2n', 'VIETCOMBANK', '5017 - 54346', '15000', 'naptien 7974', '2022-05-06 22:00:04'),
(155, 'morning123', 'MOMO', '23835308555', '120000', 'naptien 8007', '2022-05-07 21:17:07'),
(156, 'Lacnguyen', 'VIETCOMBANK', '5017 - 72834', '105000', 'naptien 5593', '2022-05-08 08:48:04'),
(157, 'buianhthai', 'VIETCOMBANK', '5017 - 57099', '70000', 'naptien 8033', '2022-05-08 19:08:05'),
(158, 'Lacnguyen', 'VIETCOMBANK', '5017 - 19977', '30000', 'naptien 5593', '2022-05-10 21:47:04'),
(159, 'Duyanhcute', 'VIETCOMBANK', '5017 - 88325', '100000', 'naptien 7914', '2022-05-11 19:36:03'),
(160, 'thanhphong987', 'MOMO', '23997379156', '320000', 'naptien 7996', '2022-05-12 21:18:06'),
(161, 'vikhoi91', 'VIETCOMBANK', '5017 - 94163', '100000', 'naptien 8212', '2022-05-13 09:56:04'),
(162, 'admin123dz', 'MOMO', '24013141320', '70000', 'naptien 8214', '2022-05-13 12:57:06'),
(163, 'tomhumtool', 'MOMO', '24058750129', '75000', 'naptien 4497', '2022-05-14 21:23:14'),
(164, 'Long3805aB', 'MOMO', '24063048264', '50000', 'naptien 6868', '2022-05-15 00:27:04'),
(165, 'tuanxinh', 'VIETCOMBANK', '5078 - 16647', '50000', 'naptien 8291', '2022-05-16 09:19:04'),
(166, 'Hienth', 'MOMO', '24101297764', '15000', 'naptien 2031', '2022-05-16 11:28:08'),
(167, 'nhanhotv', 'MOMO', '24129435176', '70000', 'naptien 8328', '2022-05-17 10:45:08'),
(168, 'ducanhuytins1', 'MOMO', '24138045106', '70000', 'naptien 7368', '2022-05-17 15:58:09'),
(169, 'Cross-z', 'MOMO', '24140126080', '50000', 'naptien 5659', '2022-05-17 17:19:13'),
(170, 'Huysum09', 'VIETCOMBANK', '5017 - 71295', '20000', 'naptien 4681', '2022-05-17 22:35:04'),
(171, 'vinhk2ok123', 'MOMO', '24176414356', '20000', 'naptien 7630', '2022-05-18 21:48:04'),
(172, 'Lacnguyen', 'VIETCOMBANK', '5017 - 31833', '450000', 'naptien 5593', '2022-05-19 17:32:24'),
(173, 'ADKCC06', 'MOMO', '24276313332', '3000', 'naptien 8445', '2022-05-21 15:49:07'),
(174, 'admin0', 'MOMO', '24294127456', '200000', 'naptien 6300', '2022-05-22 08:59:05'),
(175, 'kentrinhduy@gmail.com', 'MOMO', '24319190165', '19000', 'naptien 4350', '2022-05-23 01:22:03'),
(176, 'adminori', 'MBBANK', 'FT22143618399937', '10000', 'naptien 16', '2022-05-23 14:54:16'),
(177, 'Tuandev', 'MOMO', '24342464107', '20000', 'naptien 8513', '2022-05-23 18:35:11'),
(178, '0394001615', 'MOMO', '24363451389', '20000', 'naptien 7327', '2022-05-24 13:31:06'),
(179, 'anhkienvn', 'MOMO', '24398021742', '15000', 'naptien 8566', '2022-05-25 15:38:06'),
(180, 'kentnguyen1107', 'MBBANK', 'FT22146405890288', '200000', 'naptien 8585', '2022-05-26 11:28:04'),
(181, 'voduckhai', 'MBBANK', 'FT22147504427037', '90000', 'naptien 3225', '2022-05-27 22:21:03'),
(182, 'Nhatanh2k1', 'MOMO', '24486807229', '70000', 'naptien 8664', '2022-05-28 10:31:08'),
(183, 'tamtaka', 'MOMO', '24500290401', '200000', 'naptien 7819', '2022-05-28 18:04:07'),
(184, 'cloneptt', 'MOMO', '24629742420', '50000', 'naptien 8641', '2022-06-01 16:26:04'),
(185, 'cloneptt', 'MOMO', '24631167606', '20000', 'naptien 8641', '2022-06-01 17:15:12'),
(186, 'Minhbovt20100', 'MOMO', '24633066886', '65000', 'naptien 1447', '2022-06-01 18:18:11'),
(187, 'quandeptrai2005', 'MOMO', '24645469131', '70000', 'naptien 2098', '2022-06-02 02:22:04'),
(188, 'vklgame', 'MOMO', '24658514883', '100000', 'naptien 8837', '2022-06-02 13:54:06'),
(189, 'kethien2k8', 'MOMO', '24661913836', '80000', 'naptien 8799', '2022-06-02 15:35:19'),
(190, 'nitagm', 'MOMO', '24678695184', '2500', 'naptien 1779', '2022-06-03 01:01:05'),
(191, 'mquangpro123', 'MBBANK', 'FT22154826459095', '170000', 'naptien 8794', '2022-06-03 06:46:03'),
(192, 'tonghaophuc12', 'MOMO', '24708883717', '170000', 'naptien 8886', '2022-06-03 23:36:12'),
(193, 'khoipkl1234', 'MBBANK', 'FT22155389486937', '19000', 'naptien 8912', '2022-06-04 18:41:03'),
(194, 'admin2003', 'MBBANK', 'FT22155044121945', '68000', 'naptien 6091', '2022-06-04 19:06:03'),
(195, 'kethien2k8', 'MOMO', '24774106411', '150000', 'naptien 8799', '2022-06-05 19:44:27'),
(196, 'thuongnong29', 'MOMO', '24783937302', '20000', 'naptien 8962', '2022-06-06 01:12:03'),
(197, 'enmeve2003', 'MBBANK', 'FT22158290114276', '50000', 'naptien 3877', '2022-06-07 14:57:04'),
(198, 'iamphat99', 'MOMO', '24899648996', '20000', 'naptien 9016', '2022-06-08 18:34:09'),
(199, 'Lacnguyen', 'MBBANK', 'FT22160078102913', '150000', 'naptien 5593', '2022-06-09 20:02:13'),
(200, 'manhty1119', 'MOMO', '24969406388', '20000', 'naptien 4385', '2022-06-10 17:27:10'),
(201, 'tvpgamer', 'MOMO', '25000044354', '70000', 'naptien 8217', '2022-06-11 13:19:03'),
(202, 'Dung789', 'MOMO', '25067286439', '15000', 'naptien 4905', '2022-06-13 12:45:10'),
(203, 'NhatLuan', 'MOMO', '25114650533', '70000', 'naptien 9255', '2022-06-14 15:57:03'),
(204, 'hoangkien5bl', 'MBBANK', 'FT22166999901212', '100000', 'naptien 9283', '2022-06-15 11:33:03'),
(205, 'voduckhai', 'MBBANK', 'FT22166157260232', '470000', 'naptien 3225', '2022-06-15 22:18:04'),
(206, 'tuanhoami', 'MBBANK', 'FT22167607409512', '300000', 'naptien 9212', '2022-06-16 08:27:04'),
(207, 'hoangkien5bl', 'MBBANK', 'FT22168698004107', '35000', 'naptien 9283', '2022-06-17 00:47:02'),
(208, 'Vanhdzz', 'MOMO', '25235430608', '90000', 'naptien 9353', '2022-06-17 15:07:25'),
(209, 'FTVVU2008', 'MOMO', '25245508463', '10000', 'naptien 8185', '2022-06-17 19:03:21'),
(210, 'Lacnguyen', 'MOMO', '25282894578', '50000', 'naptien 5593', '2022-06-18 18:30:13'),
(211, 'phantrandaidung', 'MOMO', '25286913973', '70000', 'naptien 9401', '2022-06-18 20:28:19'),
(212, 'ductin111', 'MOMO', '25343297182', '70000', 'naptien 7331', '2022-06-20 12:07:24'),
(213, 'dolehung7', 'MOMO', '25344382461', '20000', 'naptien 9407', '2022-06-20 12:29:31'),
(214, 'HuyYeuKtrang', 'MOMO', '25362181738', '10000', 'naptien 9116', '2022-06-20 20:11:04'),
(215, 'HuyYeuKtrang', 'MOMO', '25362182506', '55000', 'naptien 9116', '2022-06-20 20:12:04'),
(216, 'Đạt Nguyễn', 'MOMO', '25370413252', '50000', 'naptien 4761', '2022-06-21 01:08:03'),
(217, 'barryanh', 'MOMO', '25406950696', '86500', 'naptien 3232', '2022-06-21 23:19:08'),
(218, 'duongbanguyen', 'MBBANK', 'FT22173361836000', '520000', 'naptien 9507', '2022-06-22 09:47:05'),
(219, 'Banker', 'MBBANK', 'FT22173520028589', '65000', 'naptien 9518', '2022-06-22 17:06:03'),
(220, 'ducdz999', 'MOMO', '25463916404', '20000', 'naptien 9522', '2022-06-23 14:05:07'),
(221, 'hieustar', 'MOMO', '25495904091', '45000', 'naptien 7180', '2022-06-24 11:14:04'),
(222, 'Nguyenduc03jj', 'MBBANK', 'FT22176339724338', '130000', 'naptien 9549', '2022-06-25 10:24:04'),
(223, 'Nghiep2007', 'MOMO', '25536847220', '150000', 'naptien 9603', '2022-06-24 11:14:04'),
(225, 'adminori', 'THESIEURE', 'T10714888', '306000', 'naptien 16', '2022-06-27 13:15:50'),
(226, 'adminori', 'MBBANK', 'FT22179059038443', '100000', 'naptien 16', '2022-06-28 20:47:07'),
(227, 'adminori', 'MBBANK', 'FT22179023940202', '1000000', 'naptien 16', '2022-06-28 20:49:05'),
(228, 'adminori', 'THESIEURE', 'T10747242', '400000', 'naptien 16', '2022-06-28 20:55:04'),
(229, '20082008', 'MBBANK', 'FT22180451516640', '48000', 'naptien 4933', '2022-06-29 16:32:06'),
(230, 'adminori', 'THESIEURE', 'T10759053', '313000', 'naptien 16', '2022-06-29 16:44:14'),
(231, 'khoa123khoa', 'MOMO', '25691886522', '50000', 'naptien 9707', '2022-06-29 17:55:09'),
(232, 'adminori', 'THESIEURE', 'T10770498', '105000', 'naptien 16', '2022-06-30 11:39:03'),
(233, 'Lyduy1107', 'MOMO', '25716379162', '70000', 'naptien 9742', '2022-06-30 11:47:06'),
(234, 'Huy26032009', 'MOMO', '25721397547', '100000', '', '2022-06-30 14:29:05'),
(235, 'Helocacban1', 'MBBANK', 'FT22181008201800', '150000', '', '2022-06-30 17:33:04'),
(236, 'Lyduy1107', 'MOMO', '25728710903', '30000', '', '2022-06-30 17:51:08'),
(237, 'minh12354', 'MOMO', '25767929849', '20000', '', '2022-07-01 17:00:13'),
(238, 'TranThanhGiao', 'THESIEURE', 'T10807925', '20000', 'naptien 255', '2022-07-02 14:22:04'),
(239, 'accthethietke@gmail.com', 'MOMO', '25818069529', '50000', '', '2022-07-02 14:22:04'),
(240, 'GG1578929381', 'MOMO', '25840928184', '20000', 'naptien 9822', '2022-07-03 15:51:07'),
(241, 'teoteo1233', 'MBBANK', 'FT22185097757025', '18000', 'naptien 9493', '2022-07-03 21:03:05'),
(242, 'bphuc734@gmail.com', 'THESIEURE', 'T10836893', '90000', 'naptien 4709', '2022-07-04 10:04:03'),
(243, 'polikekp', 'MOMO', '25953185589', '20000', 'naptien 9954', '2022-07-05 19:38:08'),
(244, 'lunalvin', 'MBBANK', 'FT22187214477539', '170000', 'MB naptien 9965. TU: NGUYEN XUAN KHOI NGUYEN', '2022-07-06 02:34:04'),
(245, 'GG389587253', 'MOMO', '26078475378', '100000', 'naptien 10029', '2022-07-08 18:06:41'),
(246, 'Minhthienkey', 'MOMO', '26109585261', '5000', 'naptien 8181', '2022-07-09 09:40:10'),
(247, 'GG1978779184', 'MBBANK', 'FT22190070966666', '70000', 'MB naptien 9855. TU: DINH TRAN UYEN NHI', '2022-07-09 10:06:05'),
(248, 'GG1978779184', 'MBBANK', 'FT22190156192850', '30000', 'MB naptien 9855. TU: DINH TRAN UYEN NHI', '2022-07-09 10:26:07'),
(249, 'Minhthienkey', 'MOMO', '26120750702', '15000', 'naptien 8181', '2022-07-09 14:19:13'),
(250, 'FB654146462', 'MOMO', '26125058517', '120000', 'naptien 10086', '2022-07-09 16:24:07'),
(251, 'GG983040396', 'MOMO', '26125454715', '50000', 'naptien 9982', '2022-07-09 16:44:07'),
(252, '005019218290', 'MBBANK', 'FT22190307011506', '20000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-07-09 19:59:05'),
(253, 'vuvanthang2116', 'MBBANK', 'FT22190149065825', '70000', 'MB naptien 10071. TU: VU VAN THANG', '2022-07-09 20:49:05'),
(254, 'GG983040396', 'MOMO', '26136392836', '20000', 'naptien 9982', '2022-07-09 21:57:08'),
(255, 'anhcunhoi35', 'MOMO', '26136694427', '50000', 'naptien 1449', '2022-07-09 22:09:14'),
(256, 'GG983040396', 'MOMO', '26136384890', '20000', 'naptien 9982', '2022-07-09 22:09:14'),
(257, '005019218290', 'MBBANK', 'FT22192130896058', '100000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-07-09 23:37:07'),
(258, '005019218290', 'MBBANK', 'FT22192787020348', '30000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-07-10 09:09:05'),
(259, 'GG482282943', 'MOMO', '26161224210', '50000', 'naptien 10082', '2022-07-10 15:41:05'),
(260, 'GG482282943', 'MOMO', '26168431707', '90000', 'naptien 10082', '2022-07-10 18:28:09'),
(261, 'adminori', 'THESIEURE', 'T10968986', '698000', 'naptien 16', '2022-07-11 12:28:04'),
(262, 'GG1124393610', 'MOMO', '26218162696', '80000', 'naptien 10181', '2022-07-11 22:47:07'),
(263, 'GG1124393610', 'MBBANK', 'FT22192869064791', '80000', 'MB naptien 10181. TU: YA TRUONG NIE', '2022-07-11 23:00:07'),
(264, 'GG1124393610', 'MOMO', '26218448208', '50000', 'naptien 10181', '2022-07-11 23:12:06'),
(265, 'doluanpro', 'MBBANK', 'FT22193724032987', '70000', 'MB naptien 10078. TU: DO TAT LUAN', '2022-07-12 18:31:05'),
(266, 'Magus2', 'MOMO', '26255861551', '50000', 'naptien 4343', '2022-07-12 19:26:05'),
(267, 'xuandong2401', 'THESIEURE', 'T11000158', '19000', 'naptien 2748', '2022-07-12 19:48:04'),
(268, 'minhbui123', 'MBBANK', 'FT22193139090042', '100000', 'MB naptien 10162. TU: BUI NGOC MINH', '2022-07-12 20:25:07'),
(269, 'GG1255122568', 'MOMO', '26266049201', '70000', 'naptien 10252', '2022-07-13 00:29:03'),
(270, 'GG1140171603', 'MBBANK', 'FT22194002296690', '50000', 'CUSTOMER naptien 10232 FT22194030592919 Trac e 053242', '2022-07-13 14:08:04'),
(271, 'vinh206', 'MBBANK', 'FT22194249120421', '20000', 'MB naptien 10035. TU: NGO QUANG VINH', '2022-07-13 15:01:04'),
(272, 'Kejice', 'MOMO', '26289688105', '1000', 'naptien 10280', '2022-07-13 16:51:03'),
(273, 'Kejice', 'MOMO', '26298501486', '5300', 'naptien 10280', '2022-07-13 19:59:04'),
(274, 'zxzvlogs', 'MBBANK', 'FT22194520502992', '200000', 'MB naptien 7469. TU: NGUYEN VAN HOAN', '2022-07-13 22:09:04'),
(275, 'adminori', 'THESIEURE', 'T11025980', '1484000', 'naptien 16', '2022-07-13 23:50:03'),
(276, 'GG2018656751', 'MOMO', '26315103878', '15000', 'naptien 10297', '2022-07-14 09:52:04'),
(277, 'Magus2', 'MOMO', '26339791523', '150000', 'naptien 4343', '2022-07-14 19:37:03'),
(278, 'dolehung7', 'MOMO', '26345301696', '50000', 'naptien 9407', '2022-07-14 21:57:03'),
(279, 'lh1652007', 'MOMO', '26386342227', '2500', 'naptien 6420', '2022-07-15 17:49:04'),
(280, 'GG1928248962', 'MOMO', '26398995310', '10000', 'naptien 9889', '2022-07-15 17:49:04'),
(281, 'Lamsub247', 'MBBANK', 'FT22197986097447', '80000', 'MB naptien 4884. TU: NGUYEN THI AN', '2022-07-15 22:57:04'),
(282, 'GG1928248962', 'MOMO', '26400549778', '2500', 'naptien 9889', '2022-07-15 14:23:08'),
(283, 'GG1928248962', 'MOMO', '26399622115', '9000', 'naptien 9889', '2022-07-15 14:23:08'),
(284, 'GG1928248962', 'MOMO', '26399621925', '1000', 'naptien 9889', '2022-07-15 14:23:08'),
(285, '005019218290', 'MBBANK', 'FT22197160072436', '200000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-07-16 16:21:04'),
(286, '005019218290', 'MBBANK', 'FT22197297172237', '50000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-07-16 16:26:04'),
(287, 'Nguyenngocnam', 'MOMO', '26436269160', '100000', 'naptien 10420', '2022-07-16 20:41:04'),
(288, '005019218290', 'MBBANK', 'FT22199725971001', '280000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-07-17 08:44:04'),
(289, 'Kejice', 'MOMO', '26468231707', '60000', 'naptien 10280', '2022-07-17 17:08:03'),
(290, 'GG494583302', 'MBBANK', 'FT22199160058052', '540000', 'CUSTOMER naptien 10469 Trace 516208', '2022-07-18 10:09:03'),
(291, 'GG494583302', 'MBBANK', 'FT22199618011824', '53000', 'CUSTOMER naptien 10469 Trace 277908', '2022-07-18 10:38:04'),
(292, 'Kejice', 'MOMO', '26502954786', '3000', 'naptien 10280', '2022-07-18 15:30:04'),
(293, 'aenvtae', 'THESIEURE', 'T11133305', '67000', 'naptien 230', '2022-07-19 06:36:04'),
(294, 'khoa123khoa', 'MOMO', '26531676969', '170000', 'naptien 9707', '2022-07-19 10:41:03'),
(295, 'GG542312687', 'MBBANK', 'FT22200322067566', '200000', 'MB naptien 10508. TU: HOANG DINH QUAN', '2022-07-19 11:08:04'),
(296, 'hoandayma123', 'MBBANK', 'FT22200400769807', '50000', 'CUSTOMER naptien 9156 FT22200070743070 Trace 766272', '2022-07-19 17:09:09'),
(297, 'ducdeptrai123', 'MOMO', '26550845602', '75000', 'naptien 6660', '2022-07-19 19:31:04'),
(298, 'huycoder2113', 'MBBANK', 'FT22200893000745', '50000', 'MB naptien 10552. TU: LE QUOC HUY', '2022-07-19 22:27:04'),
(299, 'Thang151004', 'MOMO', '26567667988', '75000', 'naptien 10555', '2022-07-20 10:07:03'),
(300, 'GG1714764626', 'MBBANK', 'FT22201017700655', '20000', 'MB naptien 10416. TU: NGUYEN NGOC TY', '2022-07-20 17:31:04'),
(301, 'pbn100', 'MBBANK', 'FT22202973091611', '20000', 'CUSTOMER naptien 10601', '2022-07-21 11:10:06'),
(302, 'Tandz00', 'MOMO', '26657130244', '150000', 'naptien 1062', '2022-07-22 12:12:05'),
(303, 'Anhlati13', 'MOMO', '26657820028', '30000', 'naptien 10629', '2022-07-22 12:39:22'),
(304, 'voduckhai', 'MOMO', '26666583527', '120000', 'naptien 3225', '2022-07-22 16:48:05'),
(305, 'kien1211', 'MOMO', '26675119934', '90000', 'naptien 10640', '2022-07-22 20:27:04'),
(306, 'kien1211', 'MOMO', '26676933506', '30000', 'naptien 10640', '2022-07-22 21:25:05'),
(320, 'adminori', 'MBBANK', 'FT22204177128984', '100000', 'CUSTOMER MBVCB 2257535047 000862 naptien 16  CT tu 1027236393 PHAM HOANG TUAN to i 259876543210 PHAM HOANG TUAN  MB   Quan Doi Trace 000862', '2022-07-23 20:49:13'),
(321, 'jackn0442@gmail.com', 'MOMO', '26718743463', '20000', 'naptien 2146', '2022-07-24 01:03:07'),
(322, 'thuyenthu200912', 'MBBANK', 'FT22206830478832', '50000', 'MB naptien 2890. TU: PHAN GIA THUAN', '2022-07-24 21:28:08'),
(323, 'tjencm1', 'MOMO', '26765633139', '500000', 'naptien 10738', '2022-07-25 11:56:07'),
(324, 'GG935244324', 'MOMO', '26765928569', '15000', 'naptien 10668', '2022-07-25 11:58:08'),
(325, 'ttclonggiang', 'MOMO', '26766157414', '120000', 'naptien 10599', '2022-07-25 12:16:07'),
(326, 'tjencm1', 'MOMO', '26766692179', '300000', 'naptien 10738', '2022-07-25 12:21:08'),
(327, 'phantuankiet', 'MOMO', '26787418902', '950000', 'naptien 10754', '2022-07-25 21:23:07'),
(328, 'hungbansub', 'MOMO', '26825695620', '2500', 'naptien 1558', '2022-07-26 20:54:06'),
(329, 'B29b29', 'MBBANK', 'FT22208005875182', '200000', 'MB naptien 10793. TU: LY TRONG AN', '2022-07-26 23:26:06'),
(330, 'B29b29', 'MBBANK', 'FT22208195976729', '100000', 'MB naptien 10793. TU: LY TRONG AN', '2022-07-26 23:30:18'),
(331, 'FB1346142673', 'MBBANK', 'FT22208075040522', '250000', 'MB naptien 10808. TU: TRAN DUC MANH', '2022-07-27 01:02:05'),
(332, 'tienqxth', 'MOMO', '26833136038', '20000', 'naptien 10807', '2022-07-27 01:57:06'),
(333, 'ttclonggiang', 'MBBANK', 'FT22208721082214', '80000', 'MB naptien 10599. TU: TRAN LONG GIANG', '2022-07-27 10:10:09'),
(334, 'ttclonggiang', 'MOMO', '26843561245', '30000', 'naptien 10599', '2022-07-27 11:56:07'),
(335, 'ttclonggiang', 'MOMO', '26846112376', '34500', 'naptien 10599', '2022-07-27 13:03:07'),
(336, 'Lyduy1107', 'MOMO', '26848750639', '200000', 'naptien 9742', '2022-07-27 13:03:07'),
(337, 'thanhan912', 'MBBANK', 'FT22208152893394', '70000', 'CUSTOMER naptien 10732 Trace 107885', '2022-07-27 14:34:05'),
(338, 'Lyduy1107', 'MOMO', '26850728822', '50000', 'naptien 9742', '2022-07-27 13:03:07'),
(339, 'thanhan912', 'MBBANK', 'FT22208427847429', '26500', 'CUSTOMER naptien 10732 Trace 153195', '2022-07-27 16:13:05'),
(340, 'Lyduy1107', 'MOMO', '26850738822', '50000', 'naptien 9742', '2022-07-27 18:43:48'),
(341, 'GG1928248962', 'MOMO', '26860039899', '50000', 'naptien 9889', '2022-07-27 19:18:51'),
(342, 'FB1157206548', 'MOMO', '26871378124', '10000', 'naptien 10851', '2022-07-28 02:28:05'),
(343, 'GG1369210776', 'MBBANK', 'FT22209365004769', '80000', 'CUSTOMER MB 259876543210 naptien 10849 Trace 610323', '2022-07-28 09:53:08'),
(344, 'vinh206', 'MOMO', '26879532189', '50000', 'naptien 10035', '2022-07-28 10:39:05'),
(345, 'vklgame', 'MBBANK', 'FT22209198067761', '1500000', 'MB naptien 8837. TU: VU DINH KHANH', '2022-07-28 11:08:08'),
(346, 'GG1928248962', 'MOMO', '26883950247', '20000', 'naptien 9889', '2022-07-28 12:01:05'),
(347, '005019218290', 'THESIEURE', 'T11311741', '20000', 'naptien 10093', '2022-07-28 13:27:05'),
(348, '005019218290', 'THESIEURE', 'T11315769', '75000', 'naptien 10093', '2022-07-28 16:36:05'),
(349, '005019218290', 'MBBANK', 'FT22209840961530', '135000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-07-28 17:10:08'),
(350, '005019218290', 'MBBANK', 'FT22211042675100', '90000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-07-30 11:48:07'),
(351, '005019218290', 'MBBANK', 'FT22211828432078', '280000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-07-30 13:20:07'),
(352, 'dinhtrantuan', 'MBBANK', 'FT22211472000035', '15000', 'MB naptien 8743. TU: DINH TRAN TUAN', '2022-07-30 20:06:13'),
(353, 'Tranminhchi', 'MOMO', '27004328931', '50000', 'naptien 10951', '2022-07-30 22:21:09'),
(354, 'GG258164410', 'MOMO', '27023294522', '150000', 'naptien 10844', '2022-07-31 12:10:28'),
(355, 'FB1103169888', 'MOMO', '27027047738', '30000', 'naptien 10261', '2022-07-31 13:48:18'),
(356, 'FB1103169888', 'MOMO', '27062330055', '10000', 'naptien 10261', '2022-08-01 12:18:28'),
(357, 'Hovanba', 'MBBANK', 'FT22214440091970', '50000', 'CUSTOMER naptien 11022 Trace 561919', '2022-08-02 00:08:05'),
(358, 'Hovanba', 'MBBANK', 'FT22214324750204', '30000', 'CUSTOMER naptien 11022 Trace 566054', '2022-08-02 00:38:08'),
(359, 'FB45056797', 'MOMO', '27090067723', '43900', 'naptien 10098', '2022-08-02 06:22:16'),
(360, 'truong783514', 'MBBANK', 'FT22214962608303', '20000', 'CUSTOMER naptien 10438 Trace 992618', '2022-08-02 10:32:06'),
(361, 'GG690936278', 'MBBANK', 'FT22214546881689', '10945', 'CUSTOMER naptien 11032 Trace 162136', '2022-08-02 13:39:06'),
(362, 'GG494583302', 'THESIEURE', 'T11424192', '150000', 'naptien 10469', '2022-08-03 12:10:07'),
(363, 'damtruong', 'MOMO', '27162565343', '50000', 'naptien 9103', '2022-08-03 22:28:08'),
(364, '005019218290', 'MBBANK', 'FT22216390275520', '20000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-08-04 08:24:07'),
(365, 'minhtuong', 'MOMO', '27181110399', '30000', 'naptien 10735', '2022-08-04 12:33:08'),
(366, 'nhamquangtrungT', 'MBBANK', 'FT22217900486510', '120000', 'MB naptien 11129. TU: NHAM QUANG TRUNG', '2022-08-05 11:35:08'),
(367, 'luan19', 'MOMO', '27227641591', '20000', 'naptien 10911', '2022-08-05 14:45:08'),
(368, 'nongtung92', 'MOMO', '27229308223', '30000', 'naptien 10025', '2022-08-05 15:30:14'),
(369, 'demo', 'THESIEURE', 'T11471253', '60800', 'naptien 11144', '2022-08-05 20:11:05'),
(370, 'demo', 'MOMO', '27243004115', '39200', 'naptien 11144', '2022-08-05 20:13:08'),
(371, 'giangdance', 'MOMO', '27245125288', '50000', 'naptien 3534', '2022-08-05 21:14:08'),
(372, 'phamhuy001', 'MOMO', '27251891324', '20000', 'naptien 3974', '2022-08-06 01:49:08'),
(373, 'vinh206', 'MBBANK', 'FT22218266101205', '80000', 'MB naptien 10035. TU: NGO QUANG VINH', '2022-08-06 12:30:16'),
(374, 'GG1369210776', 'MBBANK', 'FT22218170509909', '70000', 'CUSTOMER ZP68Q9JJH34V naptien 10849 Trace 04 1288', '2022-08-06 16:34:07'),
(375, '005019218290', 'MBBANK', 'FT22218610686601', '80000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-08-06 20:49:07'),
(376, 'GG1815211915', 'MOMO', '27299591546', '37000', 'naptien 11214', '2022-08-07 12:23:09'),
(377, 'ttclonggiang', 'MOMO', '27314444260', '90000', 'naptien 10599', '2022-08-07 19:21:08'),
(378, 'KhangNgo1', 'THESIEURE', 'T11508223', '15000', 'naptien 11206', '2022-08-07 19:27:05'),
(379, 'KhangNgo1', 'MOMO', '27315390771', '85000', 'naptien 11206', '2022-08-07 19:41:09'),
(380, 'GG89508435', 'MBBANK', 'FT22220200208403', '50000', 'MB naptien 10731. TU: LE NHA MINH', '2022-08-07 23:57:09'),
(381, 'KhangNgo1', 'MOMO', '27337458684', '45000', 'naptien 11206', '2022-08-08 11:55:10'),
(382, 'Funsub188', 'MOMO', '27344112524', '14000', 'naptien 11254', '2022-08-08 14:40:11'),
(383, 'ndtam1712', 'MBBANK', 'FT22220435947636', '800000', 'MB naptien 1913. TU: HOANG THU HUYEN', '2022-08-08 20:03:07'),
(384, 'GG1928248962', 'MBBANK', 'FT22222998046109', '150000', 'MB naptien 9889. TU: TRAN DUY DAI NGHIA', '2022-08-10 11:15:28'),
(385, 'GG1274685491', 'THESIEURE', 'T11555208', '50000', 'naptien 11315', '2022-08-10 11:32:11'),
(386, 'GG1274685491', 'THESIEURE', 'T11556771', '320000', 'naptien 11315', '2022-08-10 12:37:04'),
(387, 'GG1274685491', 'MOMO', '27418454121', '60000', 'naptien 11315', '2022-08-10 12:40:14'),
(388, 'Funsub188', 'MOMO', '27425555523', '50000', 'naptien 11254', '2022-08-10 15:38:12'),
(389, 'FB1114143636', 'MBBANK', 'FT22222040096805', '50000', 'MB naptien 9683. TU: TRAN VAN CUU', '2022-08-10 16:37:06'),
(390, 'chanh04', 'MBBANK', 'FT22224030471189', '100000', 'CUSTOMER naptien 11383 Trace 152021', '2022-08-12 01:54:12'),
(391, 'chanh04', 'MBBANK', 'FT22224003850903', '50000', 'CUSTOMER naptien 11383 Trace 152026', '2022-08-12 01:59:05'),
(392, '005019218290', 'MBBANK', 'FT22224919549220', '30000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-08-12 06:55:08'),
(393, 'GG2143037155', 'MBBANK', 'FT22224542123830', '86000', 'MB naptien 11392. TU: NGUYEN QUANG TIEN', '2022-08-12 11:53:08'),
(394, 'chanh04', 'MBBANK', 'FT22224976040521', '30000', 'CUSTOMER naptien 11383 Trace 117089', '2022-08-12 14:22:13'),
(395, 'GG258164410', 'MOMO', '27538011334', '50000', 'naptien 10844', '2022-08-12 23:17:08'),
(396, 'andepzai123', 'MOMO', '27562375442', '150000', 'naptien 11182', '2022-08-13 16:33:07'),
(397, 'andepzai123', 'MOMO', '27563011715', '30000', 'naptien 11182', '2022-08-13 16:43:09'),
(398, 'GG1235163212', 'MOMO', '27589716355', '150000', 'naptien 10505', '2022-08-14 11:40:17'),
(399, 'nguyenvanan', 'THESIEURE', 'T11631185', '380000', 'naptien 11478', '2022-08-14 13:53:06'),
(400, 'GG185253439', 'MBBANK', 'FT22228070919550', '950000', 'MB naptien 11534. TU: LUU THI DUYEN', '2022-08-16 10:55:10'),
(401, 'nguyenthangno77', 'MBBANK', 'FT22228672476030', '1200000', 'MB naptien 6698. TU: NGUYEN TRONG THANG', '2022-08-16 20:56:08'),
(402, 'tinpro2x5678', 'MBBANK', 'FT22229601131580', '30000', 'MB naptien 3624 nap2274. TU: NGUYEN HUU TOAN', '2022-08-17 02:22:09'),
(403, 'Haometa09', 'MOMO', '27724092994', '50000', 'naptien 11556', '2022-08-17 13:47:09'),
(404, 'Haometa09', 'MOMO', '27723363699', '50000', 'naptien 11556', '2022-08-17 13:54:14'),
(405, 'vanhung97', 'MBBANK', 'FT22229385610830', '20000', 'CUSTOMER naptien 10720 Trace 852859', '2022-08-17 21:48:11'),
(406, '0358810405', 'MOMO', '27756761158', '100000', 'Naptien 11616', '2022-08-18 10:14:12'),
(407, '0358810405', 'MOMO', '27757161552', '217000', 'Naptien 11616', '2022-08-18 10:31:09'),
(408, 'FB1142455196', 'MOMO', '27772801940', '60000', 'naptien 11634', '2022-08-18 16:40:12'),
(409, 'GG342385880', 'THESIEURE', 'T11724372', '80000', 'naptien 11656', '2022-08-19 11:15:05'),
(410, 'GG342385880', 'THESIEURE', 'T11724786', '50000', 'naptien 11656', '2022-08-19 11:33:05'),
(411, 'GG2125676929', 'MOMO', '27828659093', '67000', 'naptien 11667', '2022-08-19 23:22:07'),
(412, 'GG2125676929', 'MOMO', '27837028657', '22000', 'naptien 11667', '2022-08-20 09:51:08'),
(413, 'dophihungdz', 'MOMO', '27854130530', '150000', 'naptien 5553', '2022-08-20 19:54:13'),
(414, 'DucAnh2102', 'MOMO', '27858576123', '20000', 'naptien 10976', '2022-08-20 22:48:12'),
(415, 'Minhty', 'THESIEURE', 'T11764056', '150000', 'naptien 11409', '2022-08-21 10:01:05'),
(416, 'GG38733589', 'MOMO', '27868992362', '30000', 'naptien 11734', '2022-08-21 11:07:10'),
(417, 'Minhty', 'THESIEURE', 'T11765811', '80000', 'naptien 11409', '2022-08-21 11:18:04'),
(418, 'GG2022009201', 'MOMO', '27869263167', '90000', 'naptien 11737', '2022-08-21 11:21:10'),
(419, 'GG2022009201', 'MOMO', '27870678876', '30000', 'naptien 11737', '2022-08-21 11:57:13'),
(420, 'huydepnhaats', 'MBBANK', 'FT22234157133138', '20000', 'MB naptien 11595. TU: PHAM THANH HUY', '2022-08-21 21:17:07'),
(421, 'ducdeptrai123', 'MBBANK', 'FT22234487231611', '50000', 'MB naptien 6660. TU: LE NANG HOANG DUC', '2022-08-21 21:30:12'),
(422, 'lequy2345', 'MBBANK', 'FT22234036130013', '90000', 'MB naptien 10959. TU: LE DUC QUY', '2022-08-22 12:01:04'),
(423, 'FB1103169888', 'MOMO', '27910491506', '110000', 'naptien 10261', '2022-08-22 14:43:13'),
(424, 'GG875136116', 'MOMO', '27911247019', '45000', 'naptien 11660', '2022-08-22 15:21:11'),
(425, 'GG552878959', 'MBBANK', 'FT22235063050322', '50000', 'MB naptien 11705. TU: LUONG THI BAC', '2022-08-23 12:46:12'),
(426, 'GG578915987', 'MOMO', '27953231591', '120000', 'naptien 11829', '2022-08-23 18:25:12'),
(427, '005019218290', 'THESIEURE', 'T11820842', '30000', 'naptien 10093', '2022-08-24 07:35:05'),
(428, 'hieust063', 'THESIEURE', 'T11821729', '210000', 'naptien 11844', '2022-08-24 08:46:05'),
(429, 'GG578915987', 'MOMO', '27988048735', '44000', 'naptien 11829', '2022-08-24 16:15:07'),
(430, 'quocanh888', 'THESIEURE', 'T11835014', '61900', 'naptien 11876', '2022-08-24 20:18:05'),
(431, 'quocanh888', 'MOMO', '27996407497', '8000', 'naptien 11876', '2022-08-24 20:34:11'),
(432, 'quanghp500yo', 'MOMO', '28002244962', '190000', 'naptien 11883', '2022-08-24 23:41:08'),
(433, 'quanghp500yo', 'MOMO', '28010108796', '30000', 'naptien 11883', '2022-08-25 08:48:10'),
(434, 'quocanh888', 'THESIEURE', 'T11854646', '46900', 'naptien 11876', '2022-08-25 22:03:05'),
(435, 'FB374264407', 'MOMO', '28057659490', '36000', 'naptien 11901', '2022-08-26 10:23:10'),
(436, 'xuandong2401', 'MBBANK', 'FT22238687030022', '500000', 'MB naptien 2748. TU: NGHIEM XUAN DONG', '2022-08-26 18:37:06'),
(437, 'xuandong2401', 'MBBANK', 'FT22238330961277', '50000', 'MB naptien 2748. TU: NGHIEM XUAN DONG', '2022-08-26 22:39:06'),
(438, 'FB2131199623', 'MBBANK', 'FT22239087347691', '350000', 'MB naptien 11000. TU: TRAN MINH GIANG', '2022-08-27 12:18:10'),
(439, 'Doanh2k777', 'MBBANK', 'FT22239266063250', '70000', 'MB naptien 12017. TU: LE VAN DOANH', '2022-08-27 18:29:07'),
(440, 'GG1838207936', 'MOMO', '28117785090', '90000', 'naptien 11962', '2022-08-27 20:55:10'),
(441, 'GG450788852', 'MOMO', '28119663577', '30000', 'naptien 11924', '2022-08-27 21:59:10'),
(442, 'phanson001', 'MOMO', '28144665778', '80000', 'naptien 12041', '2022-08-28 17:19:10'),
(443, 'phanson001', 'MOMO', '28146139169', '60000', 'naptien 12041', '2022-08-28 17:47:12'),
(444, 'ljjt5081', 'MBBANK', 'FT22241958201402', '20000', 'MB naptien 12035. TU: TRIEU TUAN KIET', '2022-08-28 18:52:08'),
(445, 'ljjt5081', 'MBBANK', 'FT22241903571012', '130000', 'MB naptien 12035. TU: TRIEU TUAN KIET', '2022-08-28 18:55:08'),
(446, 'phanson001', 'MOMO', '28148002457', '10000', 'naptien 12041', '2022-08-28 19:00:11'),
(447, 'thanhdieu', 'MBBANK', 'FT22241002603666', '70000', 'CUSTOMER naptien 7961  Trace 284605', '2022-08-28 19:09:13'),
(448, 'thanhdieu', 'MBBANK', 'FT22241594600500', '50000', 'CUSTOMER naptien 7961 Trace 295021', '2022-08-28 19:37:12'),
(449, 'Thanhthong166', 'MOMO', '28170948400', '150000', 'naptien 12066', '2022-08-29 12:50:13'),
(450, 'Thanhthong166', 'MOMO', '28173559620', '50000', 'naptien 12066', '2022-08-29 13:57:09'),
(451, 'Ngovietduc', 'MOMO', '28274627336', '47000', 'naptien 951', '2022-08-31 10:55:09'),
(452, 'Ngovietduc', 'MBBANK', 'FT22243167903878', '153000', 'MB naptien 951. TU: NGO VIET DUC', '2022-08-31 11:04:28'),
(453, '005019218290', 'THESIEURE', 'T11955983', '50000', 'naptien 10093', '2022-08-31 17:53:05'),
(454, '005019218290', 'MBBANK', 'FT22243079109983', '50000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-08-31 17:56:14'),
(455, 'GG1928248962', 'MBBANK', 'FT22243305890559', '100000', 'MB naptien 9889. TU: TRAN DUY DAI NGHIA', '2022-08-31 19:47:08'),
(456, 'dichvuzalovn', 'MBBANK', 'FT22245074941471', '150000', 'MB naptien 12153. TU: LE VAN LANG', '2022-09-01 01:24:08'),
(457, 'dichvuzalovn', 'MBBANK', 'FT22245860159787', '250000', 'MB naptien 12153. TU: LE VAN LANG', '2022-09-01 01:44:10'),
(458, 'khang122333', 'MOMO', '28313084327', '70000', 'naptien 9734', '2022-09-01 11:29:08'),
(459, 'datpro979', 'MOMO', '28322907954', '260000', 'naptien 12175', '2022-09-01 16:50:12'),
(460, 'Trietduong123', 'MOMO', '28331473181', '30000', 'naptien 5530', '2022-09-01 21:14:11'),
(461, 'datpro979', 'MBBANK', 'FT22245707209538', '130000', 'MB naptien 12175. TU: VO THANH DAT', '2022-09-02 13:00:12'),
(462, 'Emtuoilonok', 'MBBANK', 'FT22245665175210', '64600', 'MB naptien 11049. TU: LE XUAN DUNG', '2022-09-02 16:31:05'),
(463, 'GG142565834', 'MOMO', '28368946779', '85000', 'naptien 11468', '2022-09-03 02:17:11'),
(464, 'GG1851507145', 'MOMO', '28371409386', '450000', 'naptien 12155', '2022-09-03 06:54:13'),
(465, 'Minhty', 'THESIEURE', 'T12013601', '250000', 'naptien 11409', '2022-09-03 20:41:05'),
(466, 'GG1851507145', 'MBBANK', 'FT22246350869586', '200000', 'CUSTOMER naptien 12155 Trace 660374', '2022-09-04 15:15:34'),
(467, 'tranphude', 'MOMO', '28427557832', '44000', 'naptien 12289', '2022-09-04 20:07:11'),
(468, 'FB1142455196', 'MOMO', '28443904778', '132000', 'naptien 11634', '2022-09-05 10:22:08'),
(469, '005019218290', 'MOMO', '28444903691', '90000', 'naptien 10093', '2022-09-05 10:39:11'),
(470, 'GG1028698199', 'THESIEURE', 'T12036414', '200000', 'naptien 12303', '2022-09-05 10:42:05'),
(471, '005019218290', 'THESIEURE', 'T12036408', '16000', 'naptien 10093', '2022-09-05 10:42:06'),
(472, '005019218290', 'MBBANK', 'FT22248800440844', '100000', 'MB naptien 10093. TU: NGUYEN VAN ANH', '2022-09-05 12:05:08'),
(473, 'quand', 'MBBANK', 'FT22248752980029', '520000', 'MB naptien 11123. TU: NGUYEN MINH QUAN', '2022-09-05 13:16:06'),
(474, 'tranminhngoc', 'MOMO', '28457309272', '90000', 'naptien 12287', '2022-09-05 15:29:09'),
(475, 'maixuanthang', 'MOMO', '28484183907', '100000', 'naptien 12321', '2022-09-06 10:32:12'),
(476, 'maixuanthang', 'MOMO', '28485513304', '30000', 'naptien 12321', '2022-09-06 11:04:12'),
(477, 'adminori', 'MBBANK', 'FT22249001717240', '100000', 'CUSTOMER MBVCB 2420648919 339176 naptien 16  CT tu 1027236393 PHAM HOANG TUAN to i 259876543210 PHAM HOANG TUAN  MB   Quan Doi Trace 339176', '2022-09-06 21:20:07'),
(478, 'GG142565834', 'MOMO', '28514865845', '15000', 'naptien 11468', '2022-09-07 08:03:10'),
(479, 'giangdance', 'MOMO', '28545751543', '200000', 'naptien 3534', '2022-09-07 20:49:06'),
(480, 'adminori', 'ACB', '2501', '0', 'MBVCB.2427229823.174242.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN (ACB) A Chau GD 174242-090822 15:45:46', '2022-09-08 17:20:38'),
(481, 'adminori', 'ACB', '2502', '0', 'MBVCB.2427672713.372174.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN (ACB) A Chau GD 372174-090822 17:26:03', '2022-09-08 17:26:09'),
(482, 'Nguyennam208', 'MOMO', '28583029822', '11628.1', 'naptien 10457', '2022-09-08 20:09:08'),
(483, 'Trien2007', 'ACB', '2517', '96800', 'naptien 11587 GD 856933-090922 18:14:59', '2022-09-09 18:16:09'),
(484, 'FB1142455196', 'MOMO', '28660590348', '71500', 'naptien 11634', '2022-09-10 18:32:11'),
(485, 'Webcacc', 'MOMO', '28661270093', '22000', 'naptien 11530', '2022-09-10 18:50:10'),
(486, 'Nguyennam208', 'MOMO', '28677704387', '18920', 'naptien 10457', '2022-09-11 08:46:10'),
(487, 'Ngocson', 'MOMO', '28682672879', '16500', 'naptien 10107', '2022-09-11 11:28:12'),
(488, 'FB1142455196', 'THESIEURE', 'T12122725', '38600', 'naptien 11634', '2022-09-11 12:50:05'),
(489, 'FB1142455196', 'THESIEURE', 'T12131407', '15500', 'naptien 11634', '2022-09-11 20:02:05'),
(490, '005019218290', 'THESIEURE', 'T12133961', '28000', 'naptien 10093', '2022-09-11 22:23:06'),
(491, 'FB1142455196', 'THESIEURE', 'T12135414', '24500', 'naptien 11634', '2022-09-12 06:40:05'),
(492, 'FB1142455196', 'MOMO', '28709433713', '11000', 'naptien 11634', '2022-09-12 06:42:12'),
(493, 'anhtran', 'MOMO', '28727479869', '231000', 'naptien 12525', '2022-09-12 15:25:11'),
(494, 'podkasdeptrai', 'MOMO', '28733499616', '82500', 'naptien 12531', '2022-09-12 18:35:15'),
(495, 'FB308567315', 'MOMO', '28764640441', '77000', 'naptien 12543', '2022-09-13 16:08:11'),
(496, 'FB308567315', 'MOMO', '28773000241', '27500', 'naptien 12543', '2022-09-13 20:20:11'),
(497, '005019218290', 'THESIEURE', 'T12185850', '26000', 'naptien 10093', '2022-09-15 15:58:05'),
(498, 'FB1142455196', 'MOMO', '28881977924', '165000', 'naptien 11634', '2022-09-16 07:26:11'),
(499, 'FB1142455196', 'MOMO', '28882017730', '15000', 'naptien 11634', '2022-09-16 07:27:11'),
(500, 'GG40471287', 'MOMO', '28909063608', '250000', 'naptien 11395', '2022-09-16 21:07:11'),
(501, 'Nguyennam208', 'MOMO', '28917390577', '19452', 'naptien 10457', '2022-09-17 06:58:12'),
(502, 'izeros2', 'ACB', '2539', '150000', 'naptien 12705 GD 022830-091822 12:17:19', '2022-09-18 12:18:08'),
(503, 'GG378853402', 'MOMO', '28979390059', '50000', 'naptien 12284', '2022-09-19 07:57:10'),
(504, 'nuoizalo', 'ACB', '2548', '50000', 'MoMoT0904067605T28994691053T970416Tnaptien 12747 GD 252995-091922 15:46:22', '2022-09-19 15:47:09'),
(505, 'buinhathoan1', 'ACB', '2550', '114000', 'ACC-GD 640669-2022-09-19T19:30:37-180906-/CTR/naptien 12746/MAC/02FB40D2D89D4CF8', '2022-09-19 19:31:06'),
(506, 'buinhathoan1', 'ACB', '2552', '90000', 'ACC-GD 655709-2022-09-19T19:52:00-180906-/CTR/naptien 12746/MAC/2A91FDB180F2C617', '2022-09-19 19:52:13'),
(507, 'FB1142455196', 'MOMO', '29006009951', '15393', 'Naptien 11634', '2022-09-19 20:47:11'),
(508, 'GG1768189338', 'MOMO', '29013839731', '15000', 'naptien 12391', '2022-09-20 06:28:11'),
(509, 'GG40471287', 'MOMO', '29040259357', '150000', 'naptien 11395', '2022-09-20 19:45:12'),
(510, 'minhlun123', 'MOMO', '29042634777', '20000', 'naptien 3844', '2022-09-20 21:11:13'),
(511, 'GG1299392564', 'ACB', '2560', '80000', 'naptien 12791 GD 092874-092122 02:16:41', '2022-09-21 02:18:09'),
(512, 'GG1299392564', 'MOMO', '29061812818', '13000', 'naptien 12791', '2022-09-21 12:57:14'),
(513, 'dinhkhaitam', 'MOMO', '29078198643', '400000', 'naptien 12755', '2022-09-21 22:03:11'),
(514, 'hungle', 'MOMO', '29125275000', '1300000', 'naptien 11298', '2022-09-23 11:03:08'),
(515, 'big24996', 'ACB', '2569', '550000', 'naptien 12429 GD 678931-092522 21:56:12', '2022-09-25 21:57:08'),
(516, 'Hung2050hh', 'MOMO', '29245033445', '50000', 'naptien 12932', '2022-09-26 21:27:14'),
(517, 'GG39642254', 'MOMO', '29280781683', '80000', 'naptien 12939', '2022-09-28 01:47:16'),
(518, '005019218290', 'ACB', '2579', '30000', 'naptien 10093 GD 177536-092822 12:18:18', '2022-09-28 12:19:08'),
(519, 'Phamtienduc', 'ACB', '2581', '800000', 'naptien 12943 GD 202037-092822 21:18:50', '2022-09-28 21:18:06'),
(520, 'Luongbe2002007', 'ACB', '2584', '50000', 'naptien 10854 GD 211097-093022 22:08:19', '2022-09-30 22:09:09'),
(521, 'Luongbe2002007', 'ACB', '2585', '150000', 'naptien 10854 GD 796450-093022 22:36:59', '2022-09-30 22:38:09'),
(522, 'Cuongkeone', 'MOMO', '29389793872', '22000', 'naptien 10926', '2022-10-01 12:10:10');
INSERT INTO `napatm` (`id`, `username`, `hinhthuc`, `magd`, `sotien`, `ndnaptien`, `thoigian`) VALUES
(523, 'Minhbovt20100', 'MOMO', '29416037020', '50000', 'naptien 1447', '2022-10-02 08:49:07'),
(524, 'Buiduykhanh2007', 'ACB', '2591', '19000', 'naptien 5766 GD 264680-100222 12:37:24', '2022-10-02 12:38:06'),
(525, 'GG1066169518', 'ACB', '2592', '19000', 'naptien 13080 GD 852425-100322 18:13:09', '2022-10-03 18:14:10'),
(526, 'GG1234776710', 'ACB', '2599', '500000', 'naptien 13133 GD 634909-100422 21:48:03', '2022-10-04 21:47:09'),
(527, 'GG1436732925', 'MOMO', '29527843544', '60000', 'naptien 12678', '2022-10-05 11:18:11'),
(528, 'datbanhack', 'MOMO', '29561064275', '77000', 'naptien 13163', '2022-10-06 09:12:13'),
(529, 'tuana5k57', 'ACB', '2610', '50000', 'naptien 12456 GD 734697-100822 16:45:30', '2022-10-08 16:46:40'),
(530, 'FB614891082', 'MOMO', '29687077429', '85500', 'naptien 11200', '2022-10-09 20:03:14'),
(531, 'FB614891082', 'MOMO', '29687791584', '47500', 'naptien 11200', '2022-10-09 20:13:11'),
(532, 'FB455986102', 'THESIEURE', 'T12537645', '178000', 'naptien 9668', '2022-10-09 21:24:05'),
(533, 'GG1268055468', 'ACB', '2611', '10000', 'naptien 10697 GD 606994-100922 21:31:44', '2022-10-09 21:33:09'),
(534, 'tungvm', 'MOMO', '29692558901', '150000', 'naptien 13265', '2022-10-09 22:56:06'),
(535, 'Songtri', 'THESIEURE', 'T12556692', '150000', 'naptien 10861', '2022-10-11 12:03:05'),
(536, 'Ngocson', 'MOMO', '29765317217', '50000', 'naptien 10107', '2022-10-13 12:54:20'),
(537, 'hoangha777', 'ACB', '2618', '120000', 'naptien 13352 GD 771647-101322 21:42:49', '2022-10-13 21:44:07'),
(538, 'luonggiang196', 'ACB', '2620', '150000', 'naptien 13361 GD 788551-101422 10:59:56', '2022-10-14 11:00:12'),
(539, 'luonggiang196', 'ACB', '2623', '30000', 'naptien 13361 GD 620856-101522 09:22:26', '2022-10-15 09:23:10'),
(540, '005019218290', 'ACB', '2625', '30000', 'naptien 10093 GD 373925-101622 11:07:02', '2022-10-16 11:08:07'),
(541, '20082008', 'ACB', '2628', '15000', 'naptien 4933 GD 430771-101622 21:52:10', '2022-10-16 21:52:15'),
(542, '20082008', 'ACB', '2629', '5000', 'naptien 4933 GD 643232-101722 14:46:45', '2022-10-17 14:47:06'),
(543, 'vanloi669', 'MOMO', '29982561250', '19000', 'naptien 13449', '2022-10-17 15:48:15'),
(544, 'Hoanpham', 'MOMO', '29995359170', '50000', 'naptien 13430', '2022-10-17 21:33:05'),
(545, 'nhankugaming', 'MOMO', '29996723750', '684000', 'naptien 13432', '2022-10-17 22:52:07'),
(546, 'giangkeny', 'MOMO', '30019293170', '285000', 'naptien 13467', '2022-10-18 15:35:15'),
(547, 'Hoanpham', 'ACB', '2633', '100000', 'naptien 13430 GD 249820-101822 21:22:42', '2022-10-18 21:24:14'),
(548, '0364320050', 'ACB', '2637', '150000', 'naptien 13493 GD 549034-101922 18:24:28', '2022-10-19 18:25:07'),
(549, 'congdanhmmo', 'ACB', '2638', '25000', 'IB NGUYEN CONG DANH NAPTIEN 2502', '2022-10-20 03:21:07'),
(550, 'hoadz99', 'ACB', '2639', '15000', 'naptien 5902 GD 334500-102022 11:27:48', '2022-10-20 11:29:06'),
(551, 'Luongbe2002007', 'ACB', '2640', '50000', 'naptien 10854 GD 540027-102122 08:36:44', '2022-10-21 08:38:08'),
(552, 'dtai45412123', 'MOMO', '30150690265', '20000', 'naptien 13543', '2022-10-21 14:40:06'),
(553, 'Lacnguyen', 'MOMO', '30184050227', '50000', 'naptien 5593', '2022-10-22 11:37:06'),
(554, 'dstgamingtv', 'ACB', '2642', '50000', 'naptien 10684 GD 929498-102222 17:47:17', '2022-10-22 17:48:13'),
(555, 'khoiduy', 'MOMO', '30213731134', '100000', 'naptien 13584', '2022-10-23 02:10:14'),
(556, 'khoiduy', 'MOMO', '30225508565', '25000', 'naptien 13584', '2022-10-23 11:56:17'),
(557, 'GG369215678', 'ACB', '2646', '30000', 'ACB;28349817;naptien 9730 GD 931139-102322 13:18:51', '2022-10-23 13:19:13'),
(558, 'GG1731184871', 'ACB', '2651', '200000', 'naptien 13619 GD 163751-102422 11:47:38', '2022-10-24 11:48:09'),
(559, 'GG1731184871', 'ACB', '2652', '30000', 'naptien 13619 GD 787041-102422 12:51:41', '2022-10-24 12:52:09'),
(560, 'shopduc2002', 'MOMO', '30280591820', '150000', 'naptien 13649', '2022-10-24 19:33:19'),
(561, 'GG1269744806', 'ACB', '2655', '70000', 'naptien 13258 GD 811210-102522 10:05:23', '2022-10-25 10:06:09'),
(562, 'GG1269744806', 'ACB', '2656', '10000', 'naptien 13258 GD 202862-102522 12:03:55', '2022-10-25 12:05:09'),
(563, 'GG1939961854', 'ACB', '2657', '90000', 'naptien 13659 FT22298536396686 GD 287786-102522 16:05:58', '2022-10-25 16:06:10'),
(564, 'GG1939961854', 'ACB', '2658', '30000', 'naptien 13659 FT22298750510037 GD 291454-102522 16:08:01', '2022-10-25 16:08:09'),
(565, 'GG1939961854', 'ACB', '2659', '60000', 'naptien 13659 FT22298982139036 GD 298009-102522 16:11:37', '2022-10-25 16:12:11'),
(566, 'GG1939961854', 'ACB', '2660', '30000', 'naptien 13659 FT22298536521308 GD 352699-102522 16:41:23', '2022-10-25 16:42:11'),
(567, 'GG694141213', 'ACB', '2662', '600000', 'MBVCB.2618262659.088374.naptien 13683.CT tu 0221000073958 NGUYEN VAN BINH toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 088374-102622 06:02:24', '2022-10-26 06:03:06'),
(568, 'luanplus', 'MOMO', '30335697240', '5001', 'naptien 11294', '2022-10-26 08:11:08'),
(569, 'GG694141213', 'ACB', '2663', '30000', 'MBVCB.2620883241.059073.naptien 13683.CT tu 0221000073958 NGUYEN VAN BINH toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 059073-102622 17:30:48', '2022-10-26 17:31:09'),
(570, 'FB614891082', 'MOMO', '30429894400', '30000', 'naptien 11200', '2022-10-28 12:44:12'),
(571, 'gautrang2007', 'MOMO', '30570205974', '50000', 'naptien 12278', '2022-10-29 10:05:05'),
(572, 'GG1452014848', 'MOMO', '30596094610', '600000', 'naptien 13648', '2022-10-29 13:41:14'),
(573, 'chinh2206', 'MOMO', '30749837845', '80000', 'naptien 13650', '2022-10-30 12:28:06'),
(574, 'longtamdaoms', 'MOMO', '30785794609', '30000', 'naptien 9324', '2022-10-30 17:18:19'),
(575, 'longtamdaoms', 'MOMO', '30786744652', '10000', 'naptien 9324', '2022-10-30 17:29:14'),
(576, 'GG134785062', 'ACB', '2672', '720000', 'naptien 13750 GD 538279-110122 11:59:35', '2022-11-01 12:01:08'),
(577, 'Dovantamez', 'MOMO', '31196035425', '150000', 'naptien 2815', '2022-11-01 20:09:13'),
(578, 'FB1027558646', 'MOMO', '31200692796', '250000', 'naptien 12981', '2022-11-01 20:35:16'),
(579, 'Dovantamez', 'MOMO', '31204434198', '30000', 'naptien 2815', '2022-11-01 21:09:14'),
(580, 'Linhliu752', 'ACB', '2675', '1000000', 'Naptien 13864 GD 463789-110222 02:49:09', '2022-11-02 02:50:06'),
(581, 'GG1028698199', 'MOMO', '31516073649', '70000', 'naptien 12303', '2022-11-03 18:03:21'),
(582, 'lt7890', 'ACB', '2681', '22000', 'naptien 13907 GD 948074-110422 18:52:30', '2022-11-04 18:53:08'),
(583, 'suakeyboard', 'ACB', '2687', '108000', 'SACOMBANK-GD 459096-2022-11-06T11:41:21-970403-/CTR/IBFT naptien 10636/MAC/1526BCF94B9A4C13', '2022-11-06 11:42:12'),
(584, 'suakeyboard', 'ACB', '2688', '30000', 'SACOMBANK-GD 488861-2022-11-06T12:32:31-970403-/CTR/IBFT naptien 10636/MAC/71D8D450D831ACB2', '2022-11-06 12:33:10'),
(585, 'GG771851877', 'ACB', '2689', '82000', 'naptien 13949 GD 789703-110622 16:14:42', '2022-11-06 16:16:11'),
(586, 'trongleotop2k9', 'MOMO', '31646058943', '1071000', 'naptien 13976', '2022-11-06 22:28:20'),
(587, 'GG1254452966', 'MOMO', '31708008036', '30000', 'naptien 13407', '2022-11-08 14:08:17'),
(588, 'gautrang2007', 'ACB', '2698', '1300000', 'naptien 12278 GD 549130-110822 19:34:30', '2022-11-08 19:37:09'),
(589, 'gautrang2007', 'ACB', '2699', '60000', 'naptien 12278 GD 556455-110822 19:36:36', '2022-11-08 19:38:14'),
(590, 'Songtri', 'MOMO', '31744898171', '950000', 'naptien 10861', '2022-11-09 12:29:29'),
(591, 'Songtri', 'MOMO', '31745969250', '13000', 'naptien 10861', '2022-11-09 12:35:22'),
(592, 'GG40471287', 'MOMO', '31762641473', '650000', 'naptien 11395', '2022-11-09 19:30:35'),
(593, 'nlv2k1', 'ACB', '2707', '350000', 'SACOMBANK-GD 216444-2022-11-10T11:35:53-970403-/CTR/IBFT naptien 12709/MAC/A978AC09B260B4F7', '2022-11-10 11:36:10'),
(594, 'hvd2k3', 'MOMO', '31845904893', '80000', 'naptien 13966', '2022-11-11 14:04:24'),
(595, 'EirlysMup', 'ACB', '2712', '20000', 'ACB;28349817;naptien 14110 GD 512849-111122 15:31:52', '2022-11-11 15:32:06'),
(596, 'Thotvhd56', 'ACB', '2713', '63000', 'naptien 14118 GD 603280-111122 21:12:36', '2022-11-11 21:13:11'),
(597, 'Thotvhd56', 'ACB', '2714', '20000', 'naptien 14118 GD 651034-111122 21:30:33', '2022-11-11 21:31:11'),
(598, 'Thotvhd56', 'ACB', '2715', '30000', 'MBVCB.2689669613.057662.naptien 14118.CT tu 1032050166 PHAM XUAN THO toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 057662-111122 21:47:12', '2022-11-11 21:48:12'),
(599, 'GG1340929597', 'MOMO', '31874063883', '242000', 'naptien 14131', '2022-11-12 05:52:17'),
(600, 'Thotvhd56', 'ACB', '2719', '30000', 'naptien 14118 GD 950307-111222 12:09:59', '2022-11-12 12:10:12'),
(601, 'GG137391563', 'MOMO', '31886928179', '60300', 'naptien 14138', '2022-11-12 12:50:11'),
(602, 'GG1343014837', 'MOMO', '31904179943', '126000', 'naptien 13990', '2022-11-12 20:12:49'),
(603, 'trumvip', 'MOMO', '31904973407', '30000', 'naptien 13729', '2022-11-12 20:48:08'),
(604, 'Buiduykhanh2007', 'MOMO', '31917285500', '5800', 'naptien 5766', '2022-11-13 08:12:20'),
(605, 'vankiet249', 'ACB', '2727', '190000', 'Naptien 14181 GD 537006-111322 19:19:18', '2022-11-13 19:21:10'),
(606, 'fdffdf', 'MOMO', '31947018896', '15000', 'naptien 14202', '2022-11-13 22:29:22'),
(607, 'Buiduykhanh2007', 'ACB', '2730', '44200', 'naptien 5766 GD 251982-111422 12:07:26', '2022-11-14 12:09:10'),
(608, 'tcandt2', 'ACB', '2731', '50000', 'naptien 13412 FT22318043388056 GD 010124-111422 13:09:57', '2022-11-14 13:10:11'),
(609, 'GG1012451721', 'MOMO', '31984042030', '48000', 'naptien 14218', '2022-11-14 20:26:08'),
(610, 'Sakura3mc', 'ACB', '2734', '50000', 'naptien 6102 GD 056362-111522 11:14:23', '2022-11-15 11:15:19'),
(611, 'vankiet249', 'ACB', '2735', '595000', 'naptien 14181 GD 614464-111522 18:38:52', '2022-11-15 18:40:10'),
(612, 'FB921718511', 'MOMO', '32047474275', '81000', 'naptien 13539', '2022-11-16 00:04:26'),
(613, 'FB921718511', 'MOMO', '32073758029', '30000', 'naptien 13539', '2022-11-16 16:53:21'),
(614, 'GG1012451721', 'MOMO', '32077670665', '5500', 'naptien 14218', '2022-11-16 18:17:28'),
(615, 'chinh2206', 'ACB', '2738', '100000', 'IB NGUYEN TRUNG CHINH NAPTIEN 13650', '2022-11-16 19:20:23'),
(616, 'GG1142493452', 'ACB', '2740', '88000', 'naptien 13566 GD 883505-111622 22:56:52', '2022-11-16 22:58:10'),
(617, 'havanduong7620', 'MOMO', '32088755416', '180000', 'naptien 14292', '2022-11-17 00:01:05'),
(618, 'GG1142493452', 'ACB', '2743', '25000', 'naptien 13566 GD 127651-111722 12:03:13', '2022-11-17 12:04:11'),
(619, 'GG564489537', 'MOMO', '32115958016', '1000000', 'naptien 14301', '2022-11-17 15:07:19'),
(620, 'nguyenanapple', 'ACB', '2748', '150000', 'naptien 12440 GD 859777-111822 10:35:00', '2022-11-18 10:36:11'),
(621, 'tamdubai', 'MOMO', '32160951630', '700000', 'naptien 101', '2022-11-18 16:21:26'),
(622, 'tuadz1', 'MOMO', '32175927395', '50000', 'naptien 12129', '2022-11-19 00:01:04'),
(623, 'levansinh144', 'MOMO', '32208923665', '72000', 'naptien 14346', '2022-11-19 21:03:17'),
(624, 'tamdubai', 'MOMO', '32221685240', '250000', 'naptien 101', '2022-11-20 09:21:26'),
(625, 'lethigai', 'ACB', '2756', '108000', 'naptien 14376 GD 384636-112022 13:45:49', '2022-11-20 13:48:11'),
(626, 'lethigai', 'ACB', '2757', '150000', 'naptien 14376 GD 394024-112022 13:49:01', '2022-11-20 13:50:13'),
(627, 'Nguyenvanhoangvy', 'ACB', '2760', '500000', 'naptien 10596 GD 742858-112022 21:34:09', '2022-11-20 21:35:11'),
(628, 'ma9ngon', 'ACB', '2764', '96600', '32287655204-0762080898-naptien 5448 GD 201379-112122 19:46:05', '2022-11-21 19:54:22'),
(629, 'cafehepho340', 'MOMO', '32297589491', '600000', 'naptien 2690', '2022-11-22 00:10:20'),
(630, 'GG860288136', 'ACB', '2766', '750000', 'naptien 14433 GD 273641-112222 12:28:33', '2022-11-22 12:29:10'),
(631, 'datj2cvlogs', 'MOMO', '32351164068', '1200000', 'naptien 304', '2022-11-23 11:24:09'),
(632, 'langtoi', 'MOMO', '32358311378', '50000', 'naptien 14467', '2022-11-23 14:17:13'),
(633, 'tamdubai', 'MOMO', '32366516154', '250000', 'naptien 101', '2022-11-23 18:17:13'),
(634, 'tamdubai', 'MOMO', '32391198635', '250000', 'naptien 101', '2022-11-24 10:38:14'),
(635, 'tcandt123', 'ACB', '2774', '600000', 'NGUYEN DUC TINH-GD 025613-2022-11-24T12:28:30-970403-/CTR/naptien 14295/MAC/A51129451655A5D8', '2022-11-24 12:29:06'),
(636, 'GG686828311', 'ACB', '2776', '494000', 'naptien 14493 GD 189972-112422 13:21:15', '2022-11-24 13:22:08'),
(637, 'GG112120676', 'MOMO', '32427901465', '63650', 'naptien 14522', '2022-11-25 08:24:14'),
(638, 'adminori', 'THESIEURE', 'T2022112713257769', '29000', 'naptien 16', '2022-11-27 02:01:20'),
(639, 'adminori', 'THESIEURE', 'T2022112713262840', '28900', 'naptien 16', '2022-11-27 11:43:04'),
(640, 'FB614891082', 'MOMO', '32579557636', '30000', 'naptien 11200', '2022-11-28 21:06:19'),
(641, 'Tandz00', 'MOMO', '32650306299', '33000', 'naptien 1062', '2022-11-30 17:21:16'),
(642, 'minh15052k', 'MOMO', '32658698448', '220000', 'naptien 14670', '2022-11-30 20:34:13'),
(643, 'minh15052k', 'MOMO', '32662843718', '11000', 'naptien 14670', '2022-11-30 22:38:17'),
(644, 'hoan1122', 'MOMO', '32673218117', '99000', 'naptien 14588', '2022-12-01 08:34:05'),
(645, 'hoan1122', 'MOMO', '32674359581', '55000', 'naptien 14588', '2022-12-01 08:39:11'),
(646, 'hachautruong13', 'ACB', '2786', '110000', 'NGUYEN HUYNH PHUONG LAN-GD 096219-2022-12-01T09:06:09-970437-/CTR/naptien 14639/MAC/400AE7FC5857CF11', '2022-12-01 09:07:13'),
(647, 'GG771851877', 'MOMO', '32692626533', '99000', 'naptien 13949', '2022-12-01 16:23:11'),
(648, 'hieprik', 'ACB', '2788', '330000', 'IBVCB.2777348465.049668.naptien 14707.CT tu 9399909999 NGO VAN HIEP toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 049668-120222 10:50:05', '2022-12-02 10:50:15'),
(649, 'Lehuuhuy', 'ACB', '2790', '220000', 'ACB;28349817;naptien 14704 GD 918023-120222 12:28:38', '2022-12-02 12:29:15'),
(650, 'lailasangday', 'MOMO', '32739100808', '385000', 'naptien 14686', '2022-12-02 15:50:17'),
(651, 'lailasangday', 'MOMO', '32739333467', '29700', 'naptien 14686', '2022-12-02 16:05:16'),
(652, 'mrkent1107', 'ACB', '2791', '66000', 'naptien 14719 GD 258836-120222 16:56:49', '2022-12-02 16:57:13'),
(653, 'mrkent1107', 'ACB', '2792', '110000', 'naptien 14719 GD 274175-120222 17:02:45', '2022-12-02 17:03:11'),
(654, 'lt7890', 'MOMO', '32800118953', '14300', 'naptien 13907', '2022-12-04 00:38:16'),
(655, 'thuonqqdz', 'MOMO', '32808398754', '200000', 'naptien 14616', '2022-12-04 09:44:15'),
(656, 'GG2095068304', 'THESIEURE', 'T2022120413369012', '50000', 'naptien 11890', '2022-12-04 10:06:05'),
(657, 'Rubux2020', 'MOMO', '32811346983', '70000', 'naptien 14773', '2022-12-04 11:26:17'),
(658, 'thuonqqdz', 'MOMO', '32812733140', '500000', 'naptien 14616', '2022-12-04 11:50:19'),
(659, 'GG1013781807', 'ACB', '2795', '50000', 'naptien 11102 GD 992016-120422 11:52:01', '2022-12-04 11:53:15'),
(660, 'thuonqqdz', 'MOMO', '32812327614', '10000', 'naptien 14616', '2022-12-04 11:53:19'),
(661, 'Brux', 'MOMO', '32815198912', '800000', 'naptien 14541', '2022-12-04 12:45:12'),
(662, 'Brux', 'MOMO', '32815121754', '550000', 'naptien 14541', '2022-12-04 12:52:18'),
(663, 'GG2095068304', 'THESIEURE', 'T2022120413372426', '80000', 'naptien 11890', '2022-12-04 12:56:05'),
(664, 'Brux', 'MOMO', '32831194430', '1000000', 'naptien 14541', '2022-12-04 20:12:21'),
(665, 'anhquan2006hp', 'MOMO', '32831315983', '190000', 'naptien 5183', '2022-12-04 20:21:15'),
(666, 'GG1162671881', 'ACB', '2798', '70000', 'IB NGUYEN VU TRUONG NAPTIEN 14794', '2022-12-04 23:48:12'),
(667, 'Luando2002', 'MOMO', '32878968401', '220000', 'naptien 14816', '2022-12-05 20:33:26'),
(668, 'Luando2002', 'MOMO', '32880062060', '70000', 'naptien 14816', '2022-12-05 21:05:21'),
(669, 'Luando2002', 'MOMO', '32881112291', '80000', 'naptien 14816', '2022-12-05 21:05:23'),
(670, 'Luando2002', 'MOMO', '32881176338', '30000', 'naptien 14816', '2022-12-05 21:38:25'),
(671, 'GG470711510', 'ACB', '2806', '50000', 'naptien 14472 GD 699641-120622 12:59:57', '2022-12-06 13:00:31'),
(672, 'dangcaplnb', 'MOMO', '32965641121', '150000', 'naptien 7548', '2022-12-07 16:46:25'),
(673, 'Khanggbb011', 'MOMO', '32994917037', '60000', 'naptien 14458', '2022-12-08 09:51:17'),
(674, 'doan1st', 'ACB', '2813', '50000', 'MBVCB.2807350905.042324.naptien 14848.CT tu 1015036784 NGUYEN THE DOAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 042324-120922 08:29:33', '2022-12-09 08:30:33'),
(675, 'Khanggbb011', 'MOMO', '33057189279', '70000', 'naptien 14458', '2022-12-09 15:40:23'),
(676, 'Khanggbb011', 'MOMO', '33057418519', '10000', 'naptien 14458', '2022-12-09 15:45:12'),
(677, 'Phong89088', 'ACB', '2815', '70000', 'naptien 14921 GD 904984-120922 19:41:03', '2022-12-09 19:41:09'),
(678, 'Khanggbb011', 'MOMO', '33098964490', '30000', 'naptien 14458', '2022-12-10 12:10:19'),
(679, 'GG636699918', 'ACB', '2817', '700000', 'naptien 14891 GD 558365-121022 16:59:46', '2022-12-10 17:01:16'),
(680, 'taidz123kaka', 'MOMO', '33127938849', '300000', 'naptien 14969', '2022-12-10 23:57:08'),
(681, 'GG1295583085', 'MOMO', '33154802828', '80000', 'naptien 14739', '2022-12-11 16:52:20'),
(682, 'yeupc', 'MOMO', '33190837222', '1150000', 'naptien 13961', '2022-12-12 12:45:20'),
(683, 'GG368036358', 'ACB', '2822', '100000', 'naptien 15006 GD 888459-121222 17:01:26', '2022-12-12 17:04:13'),
(684, 'GG368036358', 'MOMO', '33217876360', '50000', 'naptien 15006', '2022-12-12 22:54:22'),
(685, 'kentrinhduy@gmail.com', 'ACB', '2823', '570000', 'IB HA THI HANH NAPTIEN 4350', '2022-12-12 22:58:20'),
(686, 'GG368036358', 'MOMO', '33219839738', '30000', 'naptien 15006', '2022-12-12 23:41:18'),
(687, '0379922927', 'MOMO', '33303450326', '250000', 'naptien 15059', '2022-12-14 21:24:08'),
(688, '0379922927', 'MOMO', '33305954155', '20000', 'naptien 15059', '2022-12-14 22:44:22'),
(689, 'doan1st', 'ACB', '2830', '20000', 'MBVCB.2838701370.053185.naptien 14848.CT tu 1015036784 NGUYEN THE DOAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 053185-121522 16:43:34', '2022-12-15 16:44:19'),
(690, 'GG1343014837', 'ACB', '2831', '30000', 'naptien 13990 GD 470151-121522 17:13:13', '2022-12-15 17:15:07'),
(691, 'adminori', 'ACB', '669ITC122349A4OU', '15000', 'naptien 16', '2022-12-15 23:28:18'),
(692, 'adminori', 'ACB', '669ITC1223494865', '650000', 'naptien 16', '2022-12-15 23:28:21'),
(693, 'phamtanhuy', 'ACB', '2837', '15000', 'MBVCB.2842796858.062958.naptien 15096.CT tu 0751000056147 PHAM TAN HUY toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 062958-121622 13:56:50', '2022-12-16 13:57:23'),
(694, 'Test070499', 'MOMO', '33436561299', '100000', 'naptien 14388', '2022-12-17 20:44:18'),
(695, 'Test070499', 'MOMO', '33438483970', '25000', 'naptien 14388', '2022-12-17 21:38:07'),
(696, 'hung28112006', 'ACB', '2847', '170000', 'naptien 10647 GD 687416-121722 22:15:08', '2022-12-17 22:16:13'),
(697, 'hung28112006', 'ACB', '2848', '330000', 'naptien 10647 GD 200151-121722 22:18:06', '2022-12-17 22:19:10'),
(698, 'lethigai', 'ACB', '2852', '30000', 'naptien 14376 GD 127374-121822 12:04:11', '2022-12-18 12:05:11'),
(699, 'GG976769758', 'MOMO', '33569312402', '20000', 'naptien 14936', '2022-12-20 13:31:11'),
(700, 'jimmyvinser', 'MOMO', '33599696004', '68000', 'naptien 9477', '2022-12-20 21:00:15'),
(701, 'nguyenduytoan', 'MOMO', '33617319153', '700000', 'naptien 15201', '2022-12-21 09:50:14'),
(702, 'GG1295583085', 'MOMO', '33619212922', '800000', 'naptien 14739', '2022-12-21 10:48:11'),
(703, 'nguyenduytoan', 'MOMO', '33623694085', '70000', 'naptien 15201', '2022-12-21 12:33:42'),
(704, 'tuyenn097', 'THESIEURE', 'T2022122113657789', '50000', 'naptien 12519', '2022-12-21 13:12:06'),
(705, 'nguyenduytoan', 'MOMO', '33625366136', '30000', 'naptien 15201', '2022-12-21 13:23:11'),
(706, 'concu7899', 'ACB', '2866', '120000', 'naptien 15239 FT22356155321233 GD 630662-122222 17:43:14', '2022-12-22 17:44:09'),
(707, 'Lehuuhuy', 'MOMO', '33716302468', '40000', 'naptien 14704', '2022-12-23 16:35:06'),
(708, 'zzzzzthang2', 'MOMO', '33736554679', '52000', 'naptien 2554', '2022-12-24 05:45:08'),
(709, 'GG201413299', 'ACB', '2875', '15000', 'naptien 15296 GD 678575-122522 10:36:42', '2022-12-25 10:38:11'),
(710, 'tuyenn09', 'THESIEURE', '9b62f45', '0', 'naptien 12519', '2022-12-25 16:34:05'),
(711, 'GG40471287', 'MOMO', '33806840158', '150000', 'naptien 11395', '2022-12-25 21:54:14'),
(712, 'GG40471287', 'MOMO', '33807430513', '150000', 'naptien 11395', '2022-12-25 22:13:13'),
(713, 'tranbaquocquyen9', 'ACB', '2880', '70000', 'naptien 14358 GD 062633-122622 01:37:35', '2022-12-26 01:39:08'),
(714, 'GG119544563', 'MOMO', '33826399322', '750000', 'naptien 15252', '2022-12-26 12:34:05'),
(715, 'Nhatuyen', 'MOMO', '33837837639', '10000', 'naptien 15321', '2022-12-26 18:11:07'),
(716, 'GG1861077487', 'THESIEURE', 'f7f6fc9', '43000', 'naptien 13561', '2022-12-27 17:58:06'),
(717, 'dat15022', 'MOMO', '33885893458', '110000', 'naptien 15341', '2022-12-27 20:48:12'),
(718, 'dat15022', 'MOMO', '33886096682', '10000', 'naptien 15341', '2022-12-27 21:03:11'),
(719, 'mhungdzais1', 'ACB', '2885', '100000', 'naptien 11544 GD 355963-122722 21:49:43', '2022-12-27 21:51:18'),
(720, 'GG119544563', 'ACB', '2886', '52500', 'MBVCB.2893681693.095289.naptien 15252.CT tu 0241004098698 LE DUY KHUONG toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 095289-122722 22:04:10', '2022-12-27 22:04:33'),
(721, 'mhungdzais1', 'ACB', '2887', '150000', '3388769501301633361340970416naptien 11544 GD 138609-122722 22:14:41', '2022-12-27 22:15:15'),
(722, 'dat15022', 'MOMO', '33890062132', '30000', 'naptien 15341', '2022-12-27 22:42:08'),
(723, 'GG1319129111', 'MOMO', '33915854951', '15000', 'naptien 15305', '2022-12-28 16:36:11'),
(724, 'GG933853582', 'MOMO', '33932562526', '28000', 'naptien 12501', '2022-12-28 23:24:12'),
(725, 'GG1519601234', 'ACB', '2893', '200000', 'naptien 13051 GD 308682-122922 12:12:08', '2022-12-29 12:13:10'),
(726, 'GG1559417323', 'THESIEURE', 'a3e90c7', '158000', 'naptien 15386', '2022-12-30 09:59:06'),
(727, 'GG1559417323', 'THESIEURE', '50e839b', '50000', 'naptien 15386', '2022-12-30 12:26:06'),
(728, 'GG1559417323', 'THESIEURE', 'b81a0dc', '49000', 'naptien 15386', '2022-12-30 12:34:05'),
(729, 'hieukun8487', 'ACB', '2897', '10000', 'MBVCB.2905659230.051698.naptien 4315.CT tu 1015821481 LE VAN QUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 051698-123022 16:10:55', '2022-12-30 16:11:12'),
(730, 'hieukun8487', 'ACB', '2898', '574000', 'MBVCB.2905718588.080600.naptien 4315.CT tu 1015821481 LE VAN QUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 080600-123022 16:19:51', '2022-12-30 16:21:07'),
(731, 'huynhduc301121', 'MOMO', '34012107368', '50000', 'naptien 9974', '2022-12-30 22:32:09'),
(732, 'huynhduc301121', 'MOMO', '34013014830', '300000', 'naptien 9974', '2022-12-30 22:55:10'),
(733, 'adminori', 'ACB', '2902', '55000', 'MBVCB.2912386887.060154.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 060154-010123 00:55:26', '2023-01-01 00:56:07'),
(734, 'adminori', 'ACB', '2903', '55000', 'MBVCB.2912396774.067952.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 067952-010123 01:10:06', '2023-01-01 01:10:11'),
(735, 'adminori', 'ACB', '2903', '55000', 'MBVCB.2912396774.067952.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 067952-010123 01:10:06', '2023-01-01 01:10:11'),
(736, 'adminori', 'THESIEURE', '9869095', '20900', 'naptien 16', '2023-01-01 01:15:41'),
(737, 'hieukun8487', 'THESIEURE', '402fc7b', '22000', 'naptien 4315', '2023-01-01 01:15:44'),
(738, 'adminori', 'ACB', '2904', '22000', 'MBVCB.2912408747.072172.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 072172-010123 01:18:45', '2023-01-01 01:19:05'),
(739, 'adminori', 'ACB', '2905', '55000', 'MBVCB.2912651265.042442.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 042442-010123 07:52:41', '2023-01-01 07:52:43'),
(740, 'thecao365chamvn', 'ACB', '2906', '236500', 'naptien 14426 GD 449635-010123 08:46:52', '2023-01-01 08:48:04'),
(741, 'thecao365chamvn', 'ACB', '2907', '15400', 'naptien 14426 GD 480196-010123 09:26:13', '2023-01-01 09:27:24'),
(742, 'Lehuuhuy', 'MOMO', '34074356065', '16500', 'naptien 14704', '2023-01-01 13:10:07'),
(743, 'Tuankoy09082003', 'ACB', '2915', '150000', 'IBFT naptien 15546 GD 519930-010323 19:29:36', '2023-01-03 19:31:12'),
(744, 'Tuankoy09082003', 'ACB', '2915', '150000', 'IBFT naptien 15546 GD 519930-010323 19:29:36', '2023-01-03 19:31:13'),
(745, 'Tuankoy09082003', 'ACB', '2915', '150000', 'IBFT naptien 15546 GD 519930-010323 19:29:36', '2023-01-03 19:31:13'),
(746, 'Tuankoy09082003', 'ACB', '2915', '150000', 'IBFT naptien 15546 GD 519930-010323 19:29:36', '2023-01-03 19:31:13'),
(747, 'Tuankoy09082003', 'ACB', '2915', '150000', 'IBFT naptien 15546 GD 519930-010323 19:29:36', '2023-01-03 19:31:13'),
(748, 'GG178211180', 'THESIEURE', '1019626', '850000', 'naptien 15564', '2023-01-04 15:53:05'),
(751, 'GG178211180', 'THESIEURE', '1c3dd2f', '10000', 'naptien 15564', '2023-01-04 16:01:05'),
(752, 'Luando2002', 'MOMO', '34217498074', '30003', 'naptien 14816', '2023-01-04 22:47:07'),
(753, 'Luando2002', 'MOMO', '34217498074', '30003', 'naptien 14816', '2023-01-04 22:47:07'),
(754, 'muon1minhsocodon', 'ACB', '2918', '50000', 'ACB;28349817;naptien 15596 GD 149234-010523 00:40:59', '2023-01-05 00:41:05'),
(755, 'muon1minhsocodon', 'ACB', '2919', '450000', 'ACB;28349817;naptien 15596 GD 459813-010523 00:41:46', '2023-01-05 00:42:03'),
(756, 'hieukun8487', 'ACB', '2920', '800000', 'MBVCB.2933202313.040641.naptien 4315.CT tu 1015821481 LE VAN QUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 040641-010523 20:35:43', '2023-01-05 20:36:06'),
(757, 'GG579097438', 'THESIEURE', 'aebc298', '29900', 'naptien 10044', '2023-01-06 09:48:05'),
(758, 'ngoc06', 'MOMO', '34277242211', '150000', 'naptien 10096', '2023-01-06 11:31:22'),
(759, 'GG579097438', 'MOMO', '34275363025', '40100', 'naptien 10044', '2023-01-06 11:31:24'),
(761, 'lexuanphuc', 'MOMO', '34294516977', '100000', 'naptien 15639', '2023-01-06 17:47:06'),
(762, 'lexuanphuc', 'MOMO', '34298005605', '25000', 'naptien 15639', '2023-01-06 19:06:07'),
(763, 'GG384085973', 'ACB', '2923', '100000', 'naptien 15415 GD 661637-010623 22:07:02', '2023-01-06 22:08:10'),
(764, 'vantu888', 'ACB', '2925', '90000', 'naptien 15641 GD 028474-010723 00:28:01', '2023-01-07 00:29:41'),
(765, 'ndtam1712', 'ACB', '2927', '900000', 'naptien 1913 GD 154713-010723 21:19:25', '2023-01-07 21:21:05'),
(766, 'Hat262006', 'MOMO', '34408490883', '50000', 'naptien 9221', '2023-01-09 15:39:13'),
(767, 'GG709946087', 'ACB', '2931', '50000', 'naptien 14572 GD 038998-010923 23:16:59', '2023-01-09 23:18:10'),
(768, 'GG709946087', 'ACB', '2932', '50000', 'naptien 14572 GD 043055-010923 23:19:33', '2023-01-09 23:21:06'),
(769, 'GG1792914418', 'ACB', '2933', '90000', 'MBVCB.2953904344.091114.naptien 15709.CT tu 9393911347 NGUYEN TRUNG KIEN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 091114-011023 11:21:46', '2023-01-10 11:23:02'),
(770, 'GG1284743610', 'ACB', '2934', '10000', 'naptien 14890 GD 924834-011023 16:32:18', '2023-01-10 16:34:05'),
(771, 'Trietduong303', 'MOMO', '34478902910', '100000', 'naptien 15719', '2023-01-10 19:04:10'),
(772, 'triphucc', 'MOMO', '34487412794', '170000', 'naptien 15690', '2023-01-10 21:28:13'),
(773, 'mhungdzais1', 'MOMO', '34490824364', '150000', 'naptien 11544', '2023-01-10 22:52:10'),
(774, 'thietke059', 'MOMO', '34541969559', '500000', 'naptien 15747', '2023-01-11 19:56:01'),
(775, 'keronvn', 'MOMO', '34558220994', '50000', 'naptien 13515', '2023-01-12 00:09:04'),
(776, 'keronvn', 'MOMO', '34579120717', '30000', 'naptien 13515', '2023-01-12 11:38:08'),
(777, 'keronvn', 'MOMO', '34578962714', '10000', 'naptien 13515', '2023-01-12 11:41:03'),
(778, 'phucdzvcl123', 'MOMO', '34581785021', '70000', 'naptien 15754', '2023-01-12 12:42:03'),
(779, 'thongok', 'MOMO', '34610046620', '10000', 'naptien 15680', '2022-02-10 18:25:08'),
(780, 'yoshimura', 'MOMO', '34613911258', '70000', 'naptien 15772', '2023-01-12 21:41:06'),
(781, 'yoshimura', 'MOMO', '34648710178', '27000', 'naptien 15772', '2023-01-13 14:47:07'),
(782, 'yoshimura', 'MOMO', '34648710178', '27000', 'naptien 15772', '2023-01-13 14:47:07'),
(783, 'trangiahuy', 'ACB', '2943', '89000', 'naptien 15815 GD 462898-011423 08:38:29', '2023-01-14 08:40:09'),
(784, 'Long2608', 'MOMO', '34702719059', '50000', 'naptien 15304', '2023-01-14 11:51:06'),
(785, 'Long2608', 'MOMO', '34702719059', '50000', 'naptien 15304', '2023-01-14 11:51:06'),
(786, 'FB1027558646', 'MOMO', '34719261828', '50000', 'naptien 12981', '2023-01-14 17:12:09'),
(787, 'Lugonatvn', 'MOMO', '34721686593', '420000', 'naptien 15835', '2023-01-14 18:25:10'),
(788, 'keronvn', 'MOMO', '34725512999', '40100', 'naptien 13515', '2023-01-14 19:46:13'),
(789, 'dotruongchung', 'MOMO', '34794958251', '300000', 'naptien 15870', '2023-01-15 23:20:05'),
(790, 'lethigai', 'ACB', '2946', '30000', 'naptien 14376 GD 024540-011623 10:32:40', '2023-01-16 10:34:17'),
(791, 'dotruongchung', 'MOMO', '34843057605', '710000', 'naptien 15870', '2023-01-16 21:22:06'),
(793, 'dotruongchung', 'MOMO', '34846274315', '80000', 'naptien 15870', '2023-01-16 22:23:06'),
(794, 'RIOTDZ', 'MOMO', '34952609640', '50000', 'naptien 14942', '2023-01-18 20:34:36'),
(795, 'BLGVN', 'MOMO', '34973198014', '400000', 'naptien 15941', '2023-01-19 10:39:12'),
(796, 'GG640707870', 'ACB', '2954', '15000', 'naptien 15731 GD 224305-011923 14:21:02', '2023-01-19 14:24:06'),
(797, 'BLGVN', 'MOMO', '34988022514', '13000', 'naptien 15941', '2023-01-19 15:26:10'),
(798, 'duybinh1', 'ACB', '2960', '150000', 'naptien 15798 GD 049540-012123 00:42:49', '2023-01-21 00:44:07'),
(799, 'dat121322132', 'ACB', '2961', '50000', 'naptien 15315 GD 212532-012123 06:49:29', '2023-01-21 06:52:07'),
(800, 'tuananh1312', 'MOMO', '35072604691', '70000', 'naptien 15995', '2023-01-21 10:55:11'),
(801, 'tuananh1312', 'MOMO', '35073133869', '30000', 'naptien 15995', '2023-01-21 11:10:13'),
(802, 'tuananh1312', 'MOMO', '35076397970', '20000', 'naptien 15995', '2023-01-21 12:45:12'),
(803, 'canhthang', 'ACB', '2966', '70000', 'naptien 15827 GD 698858-012123 19:31:33', '2023-01-21 19:33:26'),
(804, 'canhthang', 'ACB', '2967', '13000', 'naptien 15827 GD 997431-012123 20:50:15', '2023-01-21 20:52:06'),
(805, 'GG1861077487', 'THESIEURE', 'f94bb74', '47850', 'naptien 13561', '2023-01-22 09:01:24'),
(806, 'adminori', 'THESIEURE', 'b9b6cea', '22000', 'naptien 16', '2023-01-22 11:15:33'),
(807, 'adminori', 'ACB', '2968', '22000', 'MBVCB.3022602760.051694.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 051694-012223 11:17:26', '2023-01-22 11:18:18'),
(808, 'tuananh1312', 'MOMO', '35149594626', '693000', 'naptien 15995', '2023-01-22 16:47:15'),
(809, 'GG89726362', 'MOMO', '35189186002', '231000', 'naptien 16048', '2023-01-23 15:05:09'),
(810, 'GG89726362', 'MOMO', '35189396747', '28600', 'naptien 16048', '2023-01-23 15:16:09'),
(811, 'GG89726362', 'THESIEURE', '62f5842', '12100', 'naptien 16048', '2023-01-23 16:09:05'),
(812, 'GG89726362', 'THESIEURE', '62f5842', '12100', 'naptien 16048', '2023-01-23 16:09:05'),
(813, 'GG228509665', 'ACB', '2971', '825000', 'naptien 13819 GD 992794-012323 18:34:42', '2023-01-23 18:36:18'),
(814, 'trungthuy01', 'MOMO', '35206701438', '209000', 'naptien 16058', '2023-01-23 23:22:13'),
(815, 'GG667734485', 'MOMO', '35225188004', '269500', 'naptien 15884', '2023-01-24 14:08:14'),
(816, 'GG667734485', 'MOMO', '35226207235', '137500', 'naptien 15884', '2023-01-24 14:45:15'),
(817, 'GG667734485', 'MOMO', '35228236248', '22000', 'naptien 15884', '2023-01-24 15:17:07'),
(818, 'FB154293435', 'MOMO', '35235976426', '48400', 'naptien 15516', '2023-01-24 18:13:07'),
(819, 'tamff168', 'THESIEURE', '10f7b24', '15950', 'naptien 8660', '2023-01-24 18:38:47'),
(820, '0377155048', 'ACB', '2974', '143000', 'naptien 16078 GD 056587-012423 19:04:54', '2023-01-24 19:06:19'),
(821, '0377155048', 'ACB', '2975', '104500', 'naptien 16078 GD 060499-012423 19:07:36', '2023-01-24 19:09:18'),
(822, '0377155048', 'MOMO', '35239804112', '11324.5', 'naptien 16078', '2023-01-24 20:23:06'),
(823, 'lequy2345', 'ACB', '2978', '120000', 'naptien 10959 GD 866590-012523 16:03:15', '2023-01-25 16:05:18'),
(824, 'anhtuan99club', 'ACB', '2979', '50000', 'naptien 16117 GD 304433-012523 20:02:21', '2023-01-25 20:04:20'),
(825, 'adminori', 'THESIEURE', '15e8b5d', '20000', 'naptien 16', '2023-01-26 08:44:55'),
(826, 'Duyanhcute', 'MOMO', '35299023782', '90000', 'naptien 7914', '2023-01-26 12:39:10'),
(827, 'adminori', 'ACB', '2983', '50000', 'MBVCB.3029598601.076223.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 076223-012623 12:53:56', '2023-01-26 12:54:19'),
(828, 'Duyanhcute', 'ACB', '2984', '50000', 'naptien 7914 GD 539460-012623 12:54:45', '2023-01-26 12:56:19'),
(829, 'GG851348229', 'THESIEURE', '839b630', '70000', 'naptien 16156', '2023-01-26 20:49:50'),
(830, 'GG851348229', 'THESIEURE', '851b147', '11000', 'naptien 16156', '2023-01-26 21:59:06'),
(831, 'GG851348229', 'THESIEURE', '851b147', '11000', 'naptien 16156', '2023-01-26 21:59:06'),
(832, 'GG851348229', 'THESIEURE', '963c4b0', '11000', 'naptien 16156', '2023-01-26 22:00:48'),
(833, 'GG851348229', 'THESIEURE', '12738b4', '12000', 'naptien 16156', '2023-01-26 22:01:48'),
(834, 'billoggy6', 'MOMO', '35377267475', '44000', 'naptien 15699', '2023-01-28 00:15:15'),
(835, 'GG1824393112', 'ACB', '2988', '150000', 'naptien 16208 GD 072352-012823 01:53:25', '2023-01-28 01:55:19'),
(836, 'GG1824393112', 'ACB', '2989', '80000', 'naptien 16208 FT23028054902433 GD 720173-012823 02:26:25', '2023-01-28 02:27:18'),
(837, 'kewkkqwkw', 'THESIEURE', '3fadd8d', '20000', 'naptien 16209', '2023-01-28 07:46:48'),
(838, 'GG1605578267', 'MOMO', '35384077648', '80000', 'naptien 16133', '2023-01-28 09:02:06'),
(839, 'khang122333', 'MOMO', '35395668401', '20000', 'naptien 9734', '2023-01-28 12:56:14'),
(840, 'anhden12z', 'MOMO', '35421158042', '50000', 'naptien 16233', '2023-01-28 19:15:09'),
(841, 'banh0309', 'ACB', '2992', '200000', 'naptien 16220 GD 595640-012923 10:40:39', '2023-01-29 10:41:18'),
(842, 'banh0309', 'ACB', '2993', '50000', 'naptien 16220 GD 638915-012923 10:46:06', '2023-01-29 10:47:19'),
(843, 'TheMoon_VN', 'ACB', '2995', '50000', 'naptien 16254 GD 756716-012923 13:30:36', '2023-01-29 13:32:21'),
(844, 'tindzsv2', 'MOMO', '35528720341', '20000', 'naptien 16247', '2023-01-30 13:33:09'),
(845, 'khang122333', 'MOMO', '35531504976', '18100', 'naptien 9734', '2023-01-30 14:54:15'),
(846, 'quangdungvn', 'ACB', '2998', '800000', 'naptien 16297 GD 863383-013023 15:57:51', '2023-01-30 15:58:19'),
(847, 'Buithang225', 'MOMO', '35537901342', '50000', 'naptien 15869', '2023-01-30 16:50:13'),
(848, 'Kimono4444', 'MOMO', '35553770623', '80000', 'naptien 9037', '2023-01-30 22:04:10'),
(849, 'tunkjt050105@gmail.com', 'ACB', '3001', '10000', 'naptien 6254 GD 027948-013123 12:04:50', '2023-01-31 12:06:18'),
(850, 'Maivanlinhsos', 'MOMO', '35588438840', '350000', 'naptien 15651', '2023-01-31 14:46:14'),
(851, 'vankhanh1996', 'MOMO', '35591581893', '120000', 'naptien 16339', '2023-01-31 15:53:46'),
(852, 'vankhanh1996', 'ACB', '3003', '24000', 'IBFT naptien 16339 GD 488152-013123 16:15:53', '2023-01-31 16:16:18'),
(853, 'Luuthanhkhang', 'MOMO', '35614696321', '20000', 'naptien 640', '2023-01-31 23:55:10'),
(854, 'vankhanh1996', 'ACB', '3005', '760000', 'IBFT naptien 16339 GD 965507-020123 11:53:39', '2023-02-01 11:54:19'),
(855, 'vankhanh1996', 'ACB', '3006', '40000', 'IBFT naptien 16339 GD 966646-020123 11:55:16', '2023-02-01 11:58:18'),
(856, 'vankhanh1996', 'ACB', '3007', '30000', 'IBFT naptien 16339 GD 979828-020123 12:14:14', '2023-02-01 12:15:19'),
(857, 'thanhvaynen', 'ACB', '3009', '250000', 'naptien 7273 GD 700360-020123 19:58:03', '2023-02-01 20:01:42'),
(859, 'thanhvaynen', 'ACB', '3011', '30000', 'naptien 7273 GD 574972-020123 21:34:13', '2023-02-01 21:38:19'),
(860, 'Tuannobody1', 'THESIEURE', '6dd04ed', '150000', 'naptien 16266', '2023-02-01 23:26:49'),
(861, 'thanhvaynen', 'ACB', '3012', '80000', 'naptien 7273 GD 399916-020223 08:55:19', '2023-02-02 08:57:18'),
(862, 'codevnes', 'MOMO', '35696696953', '500000', 'naptien 16397', '2023-02-02 14:51:18'),
(863, 'Tuannobody1', 'THESIEURE', '88e0a23', '50000', 'naptien 16266', '2023-02-02 17:51:48'),
(864, 'GG1207711886', 'MOMO', '35720680045', '150000', 'naptien 16407', '2023-02-02 20:32:07'),
(865, 'Minhbovt20100', 'MOMO', '35765296341', '100000', 'naptien 1447', '2023-02-03 17:03:06'),
(866, 'nguyenphong206', 'MOMO', '35777443810', '429000', 'naptien 2913', '2023-02-03 19:09:14'),
(867, 'GG1207711886', 'ACB', '3015', '50000', 'naptien 16407 GD 641764-020323 19:34:28', '2023-02-03 19:36:19'),
(868, 'GG1207711886', 'ACB', '3016', '50000', 'naptien 16407 GD 650620-020323 19:37:07', '2023-02-03 19:39:19'),
(869, 'GG1172315969', 'ACB', '3018', '10000', 'naptien 16204 GD 472305-020323 20:35:51', '2023-02-03 20:38:07'),
(870, 'GG1172315969', 'ACB', '3019', '1600000', 'naptien 16204 GD 858764-020323 20:37:42', '2023-02-03 20:39:20'),
(871, 'GG1172315969', 'ACB', '3020', '90000', 'naptien 16204 GD 864862-020323 20:39:41', '2023-02-03 20:41:10'),
(872, 'thinhnu462006', 'ACB', '3022', '100000', 'IBVCB.3060045608.049960.naptien 16476.CT tu 1031642846 NGUYEN VAN THINH toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 049960-020423 19:04:04', '2023-02-04 19:04:20'),
(873, 'thinhnu462006', 'ACB', '3023', '10000', 'IBVCB.3060042176.056069.naptien 16476.CT tu 1031642846 NGUYEN VAN THINH toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 056069-020423 19:07:02', '2023-02-04 19:07:18'),
(874, 'lailasangday', 'MOMO', '35852760409', '200000', 'naptien 14686', '2023-02-05 10:47:14'),
(875, 'giang12535', 'THESIEURE', 'T2023020514535518', '180000', 'naptien 16479', '2023-02-05 16:00:15'),
(876, 'Tuannobody1', 'THESIEURE', 'T2023020214478719', '0', 'naptien 16266', '2023-02-05 16:00:17'),
(877, 'Tuannobody1', 'THESIEURE', 'T2023020114468185', '0', 'naptien 16266', '2023-02-05 16:00:19'),
(878, 'GG1207711886', 'MOMO', '35885278939', '250000', 'naptien 16407', '2023-02-05 23:04:47'),
(879, 'nguyenleloi08', 'MOMO', '35907321731', '220000', 'naptien 15577', '2023-02-06 12:15:16'),
(880, 'kiencuongvps', 'MOMO', '35964941149', '1250000', 'naptien 16576', '2023-02-07 13:03:43'),
(881, 'banh0309', 'MOMO', '35991329932', '19000', 'naptien 16220', '2023-02-07 21:39:09'),
(882, 'banh0309', 'MOMO', '36026143492', '920000', 'naptien 16220', '2023-02-08 16:41:15'),
(883, 'banh0309', 'MOMO', '36037638352', '30000', 'naptien 16220', '2023-02-08 20:40:17'),
(884, 'Huyhieu1', 'ACB', '3030', '200000', 'naptien 16371 GD 699824-020823 22:52:15', '2023-02-08 22:53:19'),
(885, 'nguyenvanan', 'MOMO', '36071358732', '205000', 'naptien 11478', '2023-02-09 14:14:17'),
(886, 'nguyenvanan', 'ACB', '3031', '590000', 'naptien 11478 GD 708594-020923 14:16:09', '2023-02-09 14:17:18'),
(887, 'nguyenvanan', 'THESIEURE', 'T2023020914603575', '96000', 'naptien 11478', '2023-02-09 14:20:06'),
(888, 'nguyenvanan', 'ACB', '3032', '50000', 'naptien 11478 GD 516607-020923 14:26:53', '2023-02-09 14:27:17'),
(889, 'adminori', 'ACB', '3039', '0', 'MBVCB.3080341303.072941.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 072941-020923 23:04:04', '2023-02-09 23:04:14'),
(890, 'adminori', 'ACB', '3045', '0', 'MBVCB.3080446767.048880.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 048880-021023 00:39:34', '2023-02-10 00:40:40'),
(891, 'adminori', 'THESIEURE', 'T2023021014613543', '0', 'naptien 16', '2023-02-10 00:41:48'),
(892, 'adminori', 'ACB', '3048', '50000', 'MBVCB.3080471028.065901.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 065901-021023 01:27:35', '2023-02-10 01:28:27'),
(893, 'adminori', 'MOMO', '36106996621', '10000', 'naptien 16', '2023-02-10 09:06:48'),
(894, 'GGTRINHVY1024', 'MOMO', '36121021710', '100000', 'naptien 16675', '2023-02-10 13:37:06'),
(895, 'GGCANALESMATTHIS106', 'MOMO', '36149903708', '50000', 'naptien 16702', '2023-02-10 23:28:29'),
(896, 'tonydang1988', 'ACB', '3057', '160000', 'MBVCB.3086741751.076864.naptien 16300.CT tu 0071000779373 DANG VAN VU toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 076864-021123 10:43:55', '2023-02-11 10:44:18'),
(897, 'GG40471287', 'MOMO', '36211606420', '953500', 'naptien 11395', '2023-02-12 13:14:35'),
(898, 'nvhxu41', 'MOMO', '36216614726', '80000', 'naptien 16745', '2023-02-12 15:39:07'),
(899, 'beenofav', 'MOMO', '36232073469', '550000', 'naptien 16738', '2023-02-12 22:10:47'),
(900, 'beenofav', 'MOMO', '36234611068', '50000', 'naptien 16738', '2023-02-12 23:22:11'),
(901, 'beenofav', 'MOMO', '36234850699', '20000', 'naptien 16738', '2023-02-12 23:37:07'),
(902, 'beenofav', 'MOMO', '36237442143', '20000', 'naptien 16738', '2023-02-13 01:25:11'),
(903, 'anhthoidkr', 'ACB', '3065', '110000', 'Naptien 16667 GD 538124-021323 18:30:42', '2023-02-13 18:31:31'),
(904, 'anhthoidkr', 'ACB', '3066', '350000', 'Naptien 16667 GD 547444-021323 20:09:58', '2023-02-13 20:10:11'),
(905, 'Pikachutidi', 'MOMO', '36272844730', '600000', 'naptien 16780', '2023-02-13 21:10:11'),
(906, 'vankhai123', 'MOMO', '36282011509', '140000', 'naptien 16147', '2023-02-14 02:41:38'),
(907, 'Dattran123', 'ACB', '3070', '450000', 'naptien 16808 GD 138865-021423 20:33:58', '2023-02-14 20:35:19'),
(908, 'Dattran123', 'ACB', '3071', '400000', 'naptien 16808 GD 795597-021423 21:30:09', '2023-02-14 21:32:31'),
(909, 'Dattran123', 'THESIEURE', 'T2023021514699990', '270000', 'naptien 16808', '2023-02-15 11:35:33'),
(910, 'Dattran123', 'ACB', '3074', '300000', 'naptien 16808 GD 119896-021523 11:37:11', '2023-02-15 11:37:35'),
(911, 'Dattran123', 'ACB', '3075', '100000', 'naptien 16808 GD 004474-021523 11:44:23', '2023-02-15 11:45:12'),
(912, 'GG1644462102', 'MOMO', '36366793112', '100000', 'naptien 10719', '2023-02-15 21:06:57'),
(913, 'barryanh', 'MOMO', '36368413730', '1884700', 'naptien 3232', '2023-02-15 21:44:30'),
(914, 'barryanh', 'MOMO', '36368697787', '100000', 'naptien 3232', '2023-02-15 22:06:29'),
(915, 'lethigai', 'ACB', '3078', '30000', 'naptien 14376 GD 018590-021623 00:18:16', '2023-02-16 00:19:35'),
(916, '0352511233', 'MOMO', '36387402032', '600000', 'naptien 16851', '2023-02-16 11:16:45'),
(917, '0352511233', 'MOMO', '36388664065', '800000', 'naptien 16851', '2023-02-16 11:50:47'),
(918, 'GG1644462102', 'MOMO', '36406309422', '150000', 'naptien 10719', '2023-02-16 17:37:27'),
(919, 'GGHITMOSY1245', 'THESIEURE', 'T2023021614725604', '20000', 'naptien 16558', '2023-02-16 20:37:49'),
(920, '0879367480', 'ACB', '3081', '50000', 'naptien 16752 GD 544188-021723 13:36:24', '2023-02-17 13:37:19'),
(921, 'GGMKTHUC', 'MOMO', '36443015001', '35000', 'naptien 16826', '2023-02-17 15:18:47'),
(922, 'GGVNFUTURE1', 'ACB', '3082', '50000', 'naptien 16730 GD 007291-021723 15:35:37', '2023-02-17 15:35:50'),
(923, 'GGHAITMDT19AICTU', 'MOMO', '36463109323', '110000', 'naptien 16907', '2023-02-18 01:09:26'),
(924, 'Vietnamplug', 'ACB', '3088', '250000', 'MBVCB.3118503332.084016.naptien 16915.CT tu 1012542381 LE THE TRIEU toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 084016-021823 16:06:43', '2023-02-18 16:07:35'),
(925, 'Vietnamplug', 'ACB', '3091', '500000', 'MBVCB.3119925536.076364.naptien 16915.CT tu 1012542381 LE THE TRIEU toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 076364-021823 21:42:43', '2023-02-18 22:14:32'),
(926, 'GG1427031227', 'MOMO', '36494168434', '70000', 'naptien 11969', '2023-02-18 22:32:57'),
(927, 'concushin1', 'ACB', '3092', '120000', 'SHBMB-GD 739456-2023-02-18T22:56:44-970443-/CTR/naptien 16930/MAC/3067A515E52D94A5', '2023-02-18 22:58:13'),
(928, 'GG117291807', 'MOMO', '36499683268', '5001', 'naptien 15646', '2023-02-19 06:20:28'),
(929, 'betuan03', 'MOMO', '36499683250', '100000', 'naptien 16041', '2023-02-19 06:20:30'),
(930, 'Ngocson', 'MOMO', '36512557581', '30000', 'naptien 10107', '2023-02-19 14:44:00'),
(931, 'hung28112006', 'ACB', '3095', '220000', 'naptien 10647 GD 465649-021923 22:20:50', '2023-02-19 22:21:34'),
(932, 'hung28112006', 'ACB', '3096', '17000', 'naptien 10647 GD 641226-021923 23:53:48', '2023-02-19 23:54:34'),
(933, 'tuananh1312', 'MOMO', '36591273499', '30000', 'naptien 15995', '2023-02-21 18:58:26'),
(934, 'hung28112006', 'ACB', '3098', '500000', 'naptien 10647 GD 756847-022123 22:18:15', '2023-02-21 22:19:32'),
(935, 'ntdongna', 'ACB', '3100', '20000', 'naptien 17008 GD 243856-022223 03:47:52', '2023-02-22 03:48:07'),
(936, 'GGKHOIKK1234', 'MOMO', '36620829220', '86000', 'naptien 16970', '2023-02-22 17:02:03'),
(937, 'phamminhhoang207', 'MOMO', '36632133938', '90000', 'naptien 17042', '2023-02-22 23:52:59'),
(938, 'phamminhhoang207', 'MOMO', '36632293593', '18000', 'naptien 17042', '2023-02-23 00:02:58'),
(939, 'phamminhhoang207', 'MOMO', '36632067601', '12000', 'naptien 17042', '2023-02-23 00:06:21'),
(940, 'tranthanhthao', 'MOMO', '36645920577', '70000', 'naptien 17049', '2023-02-23 12:09:13'),
(941, 'ngohiep', 'MOMO', '36649604844', '300000', 'naptien 17048', '2023-02-23 14:02:56'),
(942, 'GG1427031227', 'MOMO', '36654495360', '80000', 'naptien 11969', '2023-02-23 16:36:17'),
(943, 'GG714433342', 'MOMO', '36664222415', '50000', 'naptien 16284', '2023-02-23 20:42:04'),
(944, 'Kiệt', 'ACB', '3107', '10000', 'naptien 9038 GD 868411-022323 22:49:11', '2023-02-23 22:50:09'),
(945, 'Kiệt', 'ACB', '3108', '150000', 'naptien 9038 GD 871989-022323 22:50:52', '2023-02-23 22:51:14'),
(946, 'Tuchuotbn', 'MOMO', '36675062714', '50000', 'naptien 16911', '2023-02-23 23:45:30'),
(947, 'Tuchuotbn', 'MOMO', '36675748723', '333000', 'naptien 16911', '2023-02-24 00:05:34'),
(948, 'Tuchuotbn', 'MOMO', '36675383496', '17000', 'naptien 16911', '2023-02-24 00:08:49'),
(949, 'taidz2k4', 'ACB', '3109', '20000', 'naptien 17052 GD 238926-022423 13:08:56', '2023-02-24 13:09:20'),
(950, 'GGHITMOSY1245', 'THESIEURE', '', '20000', 'naptien 16558', '2023-02-24 17:38:43'),
(951, 'GG89726362', 'MOMO', '36722796695', '10000', 'naptien 16048', '2023-02-25 10:44:30'),
(952, 'Khoatai1', 'ACB', '3111', '50000', 'naptien 17115 GD 512586-022523 13:32:25', '2023-02-25 13:32:40'),
(953, 'GG89726362', 'MOMO', '36732008602', '6000', 'naptien 16048', '2023-02-25 15:23:54'),
(954, 'hoanghuyff', 'MOMO', '36755099225', '800000', 'naptien 9474', '2023-02-26 09:43:26'),
(955, 'dkhoa1806', 'MOMO', '36807756134', '80000', 'naptien 17182', '2023-02-27 19:16:26'),
(956, 'Beandepzai', 'MOMO', '36837459082', '1700000', 'naptien 17212', '2023-02-28 15:48:10'),
(957, 'Tupro', 'MOMO', '36844062336', '80000', 'naptien 17214', '2023-02-28 19:01:31'),
(958, 'Beandepzai', 'MOMO', '36844515361', '300000', 'naptien 17212', '2023-02-28 19:19:16'),
(959, 'GGNGUYENQUANGTHE207', 'ACB', '3132', '70000', 'naptien 17287 GD 013928-030323 10:47:01', '2023-03-03 10:47:35'),
(960, 'KhanhMilo0209', 'MOMO', '36986426571', '100000', 'naptien 17216', '2023-03-03 18:23:13'),
(961, 'GGLAMQUOCBAOQNG123', 'MOMO', '36992809205', '250000', 'naptien 17302', '2023-03-03 20:38:45'),
(962, 'GGLAMQUOCBAOQNG123', 'MOMO', '36994038505', '50000', 'naptien 17302', '2023-03-03 21:06:15'),
(963, 'GGLAMQUOCBAOQNG123', 'MOMO', '36994338011', '30000', 'naptien 17302', '2023-03-03 21:24:28'),
(964, 'KhanhMilo0209', 'MOMO', '36997882634', '200000', 'naptien 17216', '2023-03-03 22:32:02'),
(965, 'KhanhMilo0209', 'MOMO', '36997882634', '200000', 'naptien 17216', '2023-03-03 22:32:02'),
(966, 'KhanhMilo0209', 'MOMO', '36998101382', '50000', 'naptien 17216', '2023-03-03 22:34:03'),
(967, 'KhanhMilo0209', 'MOMO', '36997728359', '50000', 'naptien 17216', '2023-03-03 22:35:13'),
(968, 'gaface', 'ACB', '3137', '90000', 'naptien 17314 GD 084347-030423 02:04:20', '2023-03-04 02:05:07'),
(969, 'doanvanduc', 'ACB', '3140', '260000', 'naptien 17329 GD 849211-030423 14:53:53', '2023-03-04 14:54:06'),
(970, 'GGFBZ1001ST', 'ACB', '3142', '1200000', 'naptien 17346 GD 741481-030423 21:11:47', '2023-03-04 21:12:36'),
(971, 'Kiệt', 'MOMO', '37054763998', '40000', 'naptien 9038', '2023-03-04 23:43:27'),
(972, 'GGTDUY97979', 'MOMO', '37086354867', '20000', 'naptien 17383', '2023-03-05 18:16:26'),
(973, 'nguyendat06', 'MOMO', '37137005721', '50000', 'naptien 17197', '2023-03-06 16:15:09'),
(974, 'Nguyenphuhao', 'MOMO', '37145903374', '150000', 'naptien 17390', '2023-03-06 19:06:15'),
(975, 'Nguyenphuhao', 'MOMO', '37148660491', '50000', 'naptien 17390', '2023-03-06 19:46:27'),
(976, 'gtnxchiljx', 'ACB', '3148', '800000', 'MBVCB.3194152309.069929.naptien 17411.CT tu 1031858011 NGUYEN MINH LONG toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 069929-030723 19:12:18', '2023-03-07 19:13:16'),
(977, 'Thaovan', 'MOMO', '37213077014', '90000', 'naptien 17433', '2023-03-08 03:19:25'),
(978, 'Doanminhtruc', 'ACB', '3154', '150000', 'naptien 16485 GD 947936-030923 14:19:04', '2023-03-09 14:19:38'),
(979, 'trongleotop2k9', 'MOMO', '37333453789', '30000', 'naptien 13976', '2023-03-10 19:12:57'),
(980, 'trongleotop2k9', 'MOMO', '37333960498', '100000', 'naptien 13976', '2023-03-10 19:14:48'),
(981, 'trongleotop2k9', 'MOMO', '37342596375', '100000', 'naptien 13976', '2023-03-10 22:25:31'),
(982, 'phambao21', 'ACB', '3160', '50000', 'naptien 14025 GD 027702-031123 00:25:07', '2023-03-11 00:26:57'),
(983, 'dangduy', 'THESIEURE', '74f5bed', '50000', 'naptien 17444', '2023-03-11 12:20:01'),
(984, 'HowToBeADeverlop', 'THESIEURE', '1784355', '50000', 'naptien 17462', '2023-03-11 12:20:01'),
(985, 'dangduy', 'THESIEURE', '99bdb51', '27000', 'naptien 17444', '2023-03-11 12:20:01'),
(986, 'dangduy', 'THESIEURE', '3c2a625', '70000', 'naptien 17444', '2023-03-11 12:20:01'),
(987, 'hopdz1', 'MOMO', '37379551743', '20000', 'naptien 17527', '2023-03-11 20:32:35'),
(988, 'FBBANPHAT7891011', 'ACB', '3169', '250000', 'naptien 17582 GD 958216-031323 12:42:47', '2023-03-13 12:44:03'),
(989, 'GGDAN123456ABCD1', 'THESIEURE', 'ea77ac8', '10000', 'naptien 17538', '2023-03-13 18:09:02'),
(990, 'GGDAN123456ABCD1', 'MOMO', '37454119743', '40000', 'naptien 17538', '2023-03-13 18:10:05'),
(991, 'GGNGUYNDINE', 'ACB', '3172', '1700000', 'naptien 17600 GD 200646-031323 22:29:03', '2023-03-13 22:34:04'),
(992, 'GGSTOREROBUXVIP', 'MOMO', '37488538289', '50000', 'naptien 17612', '2023-03-14 15:26:06'),
(993, 'GG1569204126', 'MOMO', '37492464482', '10000', 'naptien 15970', '2023-03-14 17:08:09'),
(994, 'phongdesigner', 'THESIEURE', '0b0d830', '50000', 'naptien 17473', '2023-03-14 19:42:03');
INSERT INTO `napatm` (`id`, `username`, `hinhthuc`, `magd`, `sotien`, `ndnaptien`, `thoigian`) VALUES
(995, 'GGHUYHOANGMAFIAINTONET', 'THESIEURE', '36b8ddf', '170000', 'naptien 16947', '2023-03-14 22:19:03'),
(996, 'phanhbi9', 'ACB', '3174', '50000', 'naptien 17599 GD 776242-031523 17:58:35', '2023-03-15 17:59:11'),
(997, 'GGHUYHOANGMAFIAINTONET', 'THESIEURE', '24c873a', '30000', 'naptien 16947', '2023-03-15 20:09:03'),
(998, 'nvphuoc2211', 'MOMO', '37552312030', '520000', 'naptien 17657', '2023-03-16 00:35:06'),
(999, 'GGTHUHANGPHA2FA', 'MOMO', '37617548754', '5001', 'naptien 17602', '2023-03-17 16:03:36'),
(1000, 'hominhquan', 'MOMO', '37625346219', '89000', 'naptien 8598', '2023-03-17 19:39:19'),
(1001, 'GGSHIYINGO95', 'ACB', '3178', '84000', 'naptien 17698 GD 811264-031723 20:25:46', '2023-03-17 20:26:11'),
(1002, 'GGSHIYINGO95', 'THESIEURE', '51e4199', '125000', 'naptien 17698', '2023-03-17 22:04:03'),
(1003, 'GGSHIYINGO95', 'THESIEURE', '5c7da9d', '41000', 'naptien 17698', '2023-03-17 22:38:03'),
(1004, 'vudiep9x', 'ACB', '3179', '250000', 'MBVCB.3244872830.098781.naptien 17706.CT tu 9868104974 VU DUC DIEP toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 098781-031823 00:05:56', '2023-03-18 00:06:14'),
(1005, 'vudiep9x', 'ACB', '3180', '17500', 'MBVCB.3244920482.039894.naptien 17706.CT tu 9868104974 VU DUC DIEP toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 039894-031823 00:40:01', '2023-03-18 00:40:08'),
(1006, 'minhkhang', 'THESIEURE', 'c588efb', '120000', 'naptien 17573', '2023-03-18 18:16:02'),
(1007, 'minhkhang', 'THESIEURE', 'e89be8a', '14000', 'naptien 17573', '2023-03-19 10:52:03'),
(1008, 'GGVINET213GRE', 'ACB', '3183', '90000', 'naptien 17725 GD 313832-031923 12:11:09', '2023-03-19 12:12:09'),
(1009, 'GGVINET213GRE', 'ACB', '3184', '50000', 'naptien 17725 GD 310870-031923 12:58:45', '2023-03-19 12:59:10'),
(1010, 'Huyhieu1', 'MOMO', '37692962572', '22900', 'naptien 16371', '2023-03-19 16:46:16'),
(1011, 'laonam07066', 'MOMO', '37700506872', '100000', 'naptien 17764', '2023-03-19 20:28:16'),
(1012, 'laonam07066', 'MOMO', '37702527304', '23000', 'naptien 17764', '2023-03-19 21:25:15'),
(1013, 'HuynhVoAnhKhoa', 'MOMO', '37709466887', '1300000', 'naptien 17565', '2023-03-20 03:36:07'),
(1014, 'xoataikhoananlon', 'ACB', '3186', '15000', 'naptien 9559 GD 688235-032023 21:12:43', '2023-03-20 21:13:17'),
(1015, 'lethigai', 'ACB', '3187', '30000', 'naptien 14376 GD 388053-032023 22:32:02', '2023-03-20 22:33:10'),
(1016, 'GGSATAN3113', 'ACB', '3189', '50000', 'MBVCB.3258273993.081793.naptien 17799.CT tu 0311000709707 CAO HOANG DUC toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 081793-032123 03:38:39', '2023-03-21 03:40:07'),
(1017, 'GG1638068276', 'MOMO', '37755280675', '50000', 'naptien 12273', '2023-03-21 08:55:07'),
(1018, 'VuQuangHai', 'THESIEURE', 'a788e10', '40000', 'naptien 7038', '2023-03-21 11:34:03'),
(1019, 'VuQuangHai', 'MOMO', '37760968189', '10000', 'naptien 7038', '2023-03-21 11:38:16'),
(1020, 'Huyhieu1', 'MOMO', '37775175516', '15100', 'naptien 16371', '2023-03-21 17:59:06'),
(1021, 'Huyhieu1', 'GACHTHE1S', 'T202303213868700', '10000', 'naptien 16371', '2023-03-21 19:39:29'),
(1022, 'quocviet2009', 'MOMO', '37781064388', '620000', 'naptien 16654', '2023-03-21 20:27:11'),
(1023, 'quocviet2009', 'MOMO', '37781758289', '20900', 'naptien 16654', '2023-03-21 20:49:09'),
(1024, 'Huyhieu1', 'MOMO', '37785862309', '15000', 'naptien 16371', '2023-03-21 22:39:12'),
(1025, 'Huyhieu1', 'ACB', '3194', '63000', 'naptien 16371 GD 631503-032223 17:27:46', '2023-03-22 17:28:09'),
(1026, 'GGSONGPHAIRASONG', 'THESIEURE', '15b5f3d', '19000', 'naptien 17778', '2023-03-23 08:41:03'),
(1027, 'FB1830771795', 'THESIEURE', '9fb5ae8', '200000', 'naptien 15422', '2023-03-23 09:45:03'),
(1028, 'GGTTUANBLOX', 'MOMO', '37860566710', '250000', 'naptien 17874', '2023-03-23 20:07:11'),
(1029, 'GG1939961854', 'MOMO', '37868397203', '110000', 'naptien 13659', '2023-03-24 00:23:08'),
(1030, 'GG1939961854', 'MOMO', '37868437334', '40000', 'naptien 13659', '2023-03-24 00:27:08'),
(1031, 'GG1939961854', 'MOMO', '37869004906', '30000', 'naptien 13659', '2023-03-24 00:56:16'),
(1032, 'duychuyen3107', 'MOMO', '37874581467', '50000', 'naptien 17906', '2023-03-24 08:04:29'),
(1033, 'duychuyen3107', 'MOMO', '37874720028', '30000', 'naptien 17906', '2023-03-24 08:08:18'),
(1034, 'duychuyen3107', 'MOMO', '37874976641', '30000', 'naptien 17906', '2023-03-24 08:32:17'),
(1035, 'GG716627146', 'MOMO', '37877285241', '26000', 'naptien 12990', '2023-03-24 09:37:15'),
(1036, 'GGCASNHUPEMER', 'MOMO', '37909041299', '150000', 'naptien 17931', '2023-03-25 02:40:12'),
(1037, 'shopcauxamsv8', 'ACB', '3201', '50000', 'naptien 17146 GD 764143-032523 06:15:27', '2023-03-25 06:16:07'),
(1038, 'GGNGOCAN0428', 'MOMO', '37923115813', '90000', 'naptien 17945', '2023-03-25 13:27:17'),
(1039, 'GGNGOCAN0428', 'MOMO', '37923286303', '10000', 'naptien 17945', '2023-03-25 13:31:51'),
(1040, 'GG1427031227', 'MOMO', '37932489334', '350000', 'naptien 11969', '2023-03-25 18:18:27'),
(1041, 'GGNGOCAN0428', 'MOMO', '37933443350', '20000', 'naptien 17945', '2023-03-25 18:52:24'),
(1042, 'GGHUY400207', 'ACB', '3204', '70000', 'naptien 17944 GD 131068-032523 20:40:37', '2023-03-25 20:41:09'),
(1043, 'GGHUY400207', 'ACB', '3205', '30000', 'naptien 17944 GD 153640-032523 20:46:51', '2023-03-25 20:47:17'),
(1044, 'GGHUY400207', 'ACB', '3206', '20000', 'naptien 17944 GD 179020-032523 20:53:46', '2023-03-25 20:55:16'),
(1045, 'nguyenquangdao', 'ACB', '3207', '500000', 'naptien 5967 GD 881184-032523 22:15:04', '2023-03-25 22:16:21'),
(1046, 'GG719310264', 'MOMO', '37944797732', '50000', 'naptien 16414', '2023-03-26 02:08:14'),
(1047, 'GG719310264', 'MOMO', '37946199670', '20000', 'naptien 16414', '2023-03-26 04:32:03'),
(1048, 'dlsale', 'ACB', '3209', '200000', 'naptien 17969 GD 295790-032623 09:26:34', '2023-03-26 09:27:11'),
(1049, 'klose', 'ACB', '3213', '80000', 'naptien 17859 GD 728742-032623 20:07:19', '2023-03-26 20:08:13'),
(1050, 'GGDODUCQUANGPMT', 'ACB', '3215', '100000', 'IB DANG TON SON NAPTIEN 18006', '2023-03-27 03:29:06'),
(1051, 'GGDODUCQUANGPMT', 'MOMO', '37982162893', '30000', 'naptien 18006', '2023-03-27 04:50:12'),
(1052, 'datblue312', 'ACB', '3218', '50000', 'naptien 18032 GD 764048-032823 11:15:54', '2023-03-28 11:16:13'),
(1053, 'huyhuyhuy1212', 'THESIEURE', '51def00', '50000', 'naptien 7261', '2023-03-28 12:43:03'),
(1054, 'GG968560924', 'ACB', '3219', '170000', 'naptien 16389 GD 195858-032923 06:44:01', '2023-03-29 06:44:09'),
(1055, 'chaomynhan', 'ACB', '3220', '1184000', 'naptien 7479 GD 104462-032923 11:50:57', '2023-03-29 11:51:34'),
(1056, 'xoataikhoananlon', 'ACB', '3222', '20000', 'naptien 9559 GD 334333-032923 12:49:00', '2023-03-29 12:49:28'),
(1057, '111222', 'ACB', '3226', '10000', 'naptien 6685 GD 034034-033023 00:35:40', '2023-03-30 00:36:33'),
(1058, 'GGLONGTRUTRI2009', 'THESIEURE', '6fe604a', '50000', 'naptien 17950', '2023-03-30 13:50:04'),
(1059, 'dat30041', 'MOMO', '38101733701', '50000', 'naptien 18070', '2023-03-30 14:10:30'),
(1060, 'gautrang2007', 'ACB', '3231', '190000', 'naptien 12278 GD 965810-033023 18:05:44', '2023-03-30 18:06:32'),
(1061, 'lebao250906', 'ACB', '3233', '200000', 'naptien 7526 GD 420817-033123 12:19:40', '2023-03-31 12:20:13'),
(1062, 'GG667734485', 'MOMO', '38137713230', '230000', 'naptien 15884', '2023-03-31 14:08:15'),
(1063, 'huynhkynang', 'MOMO', '38144308184', '150000', 'naptien 18131', '2023-03-31 17:25:20'),
(1064, 'GG667734485', 'MOMO', '38147734815', '114000', 'naptien 15884', '2023-03-31 18:49:11'),
(1065, 'GGHUY400207', 'ACB', '3238', '30000', 'naptien 17944 GD 465098-033123 19:18:44', '2023-03-31 19:19:21'),
(1066, 'GGHUY400207', 'ACB', '3239', '10000', 'naptien 17944 GD 110700-033123 19:21:46', '2023-03-31 19:22:20'),
(1067, 'GGBAOVPS247', 'ACB', '3241', '50000', 'naptien 18134 GD 340147-033123 20:13:52', '2023-03-31 20:14:19'),
(1068, 'GGKHANH27MODS', 'MOMO', '38170586742', '100000', 'naptien 17727', '2023-04-01 11:37:20'),
(1069, 'GG489975287', 'MOMO', '38171035160', '50000', 'naptien 14434', '2023-04-01 11:47:16'),
(1070, 'huyhuyhuy1212', 'MOMO', '38187475950', '50000', 'naptien 7261', '2023-04-01 19:46:21'),
(1071, 'lebao250906', 'ACB', '3245', '140000', 'naptien 7526 GD 786183-040123 21:18:19', '2023-04-01 21:19:21'),
(1072, 'GG719310264', 'MOMO', '38196106225', '200000', 'naptien 16414', '2023-04-02 00:48:05'),
(1073, 'loducduy15', 'ACB', '3247', '200000', 'naptien 17691 GD 672423-040223 10:10:21', '2023-04-02 10:12:05'),
(1074, 'GG93173551', 'ACB', '3248', '43913', 'naptien 14718 GD 816519-040223 10:52:42', '2023-04-02 10:53:08'),
(1075, 'Banker', 'ACB', '3249', '50000', 'naptien 9518 GD 327778-040223 13:30:50', '2023-04-02 13:31:13'),
(1076, 'GG93173551', 'ACB', '3251', '80000', 'naptien 14718 GD 875708-040223 15:20:05', '2023-04-02 15:20:23'),
(1077, 'admin222', 'MOMO', '38215955309', '70000', 'naptien 18138', '2023-04-02 15:56:13'),
(1078, 'GGHUY400207', 'ACB', '3252', '75000', 'naptien 17944 GD 135724-040223 17:19:50', '2023-04-02 17:20:04'),
(1079, 'admin222', 'MOMO', '38226847732', '20000', 'naptien 18138', '2023-04-02 21:08:05'),
(1080, 'GG178211180', 'MOMO', '38262752640', '81000', 'naptien 15564', '2023-04-03 19:18:04'),
(1081, 'Banker', 'ACB', '3258', '10000', 'naptien 9518 GD 342652-040423 11:36:29', '2023-04-04 11:37:07'),
(1082, 'locfa123', 'MOMO', '38306843520', '50000', 'naptien 18251', '2023-04-04 19:12:05'),
(1083, 'huyhungx2000', 'ACB', '3260', '30000', 'naptien 18273 GD 401655-040423 20:04:32', '2023-04-04 20:05:05'),
(1084, 'duchoang2512', 'ACB', '3264', '10000', 'naptien 13574 GD 653745-040523 11:36:29', '2023-04-05 11:37:06'),
(1085, 'mhungdzais1', 'MOMO', '38343296014', '250000', 'naptien 11544', '2023-04-05 18:07:10'),
(1086, 'GG1266714672', 'MOMO', '38353903298', '50000', 'naptien 13395', '2023-04-05 22:24:13'),
(1087, 'GGHOPUPLUONG1', 'ACB', '3265', '520000', 'naptien 18317 GD 054744-040623 10:33:32', '2023-04-06 10:34:07'),
(1088, 'GGHOPUPLUONG1', 'ACB', '3266', '30000', 'naptien 18317 GD 434753-040623 11:49:20', '2023-04-06 11:50:03'),
(1089, 'FBPAYPALHODUCANH', 'ACB', '3270', '1200000', 'MBVCB.3340825212.080488.naptien 17410.CT tu 9869141628 HO DUC ANH toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 080488-040723 21:12:05', '2023-04-07 21:12:11'),
(1090, 'duchoang2512', 'ACB', '3272', '1199500', 'naptien 13574 GD 616077-040823 12:16:16', '2023-04-08 12:18:06'),
(1091, 'LNENDERMANVN', 'MOMO', '38486576903', '50000', 'naptien 12345', '2023-04-09 16:15:05'),
(1092, 'FBPAYPALHODUCANH', 'ACB', '3281', '1200000', 'MBVCB.3340592638.027918.naptien 17410.CT tu 9869141628 HO DUC ANH toi 28349817 PHAM HOANG TUAN Ngan  hang A Chau (ACB) GD 027918-040723 20:23:00', '2023-04-10 14:53:03'),
(1093, 'Nhat01234', 'THESIEURE', 'dcda2cc', '20000', 'naptien 17382', '2023-04-10 19:41:03'),
(1094, 'FBGR07ASPINAS', 'ACB', '3282', '90000', 'MBVCB.3354908449.054057.naptien 18472.CT tu 1034911445 NGUYEN TU THIEN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 054057-041023 19:43:45', '2023-04-10 19:44:04'),
(1095, 'GGTAGOFUMITURE1998', 'ACB', '3286', '150000', 'naptien 18481 GD 951896-041123 03:28:01', '2023-04-11 03:29:05'),
(1096, 'tuanhung1512', 'MOMO', '38578765731', '480000', 'naptien 18495', '2023-04-11 18:17:04'),
(1097, 'hp1234', 'MOMO', '38611645216', '20000', 'naptien 18319', '2023-04-12 15:46:03'),
(1098, 'holinh', 'ACB', '3291', '50000', 'MBVCB.3366629274.039142.naptien 18516.CT tu 1071456789 NGUYEN TRONG PHUONG toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 039142-041223 22:20:36', '2023-04-12 22:21:19'),
(1099, 'GGTRANTRINGHIA21', 'ACB', '3292', '50000', 'naptien 18539 GD 516901-041223 22:45:03', '2023-04-12 22:46:04'),
(1100, 'gempro', 'ACB', '3295', '2025000', 'MBVCB.3369175711.050444.naptien 18554.CT tu 0801000292751 NGUYEN QUANG TUNG toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 050444-041323 14:32:12', '2023-04-13 14:33:06'),
(1101, 'Tiendz2k8', 'THESIEURE', '1d19676', '10000', 'naptien 17368', '2023-04-14 10:43:03'),
(1102, 'Tiendz2k8', 'THESIEURE', '93fa991', '120000', 'naptien 17368', '2023-04-14 10:45:03'),
(1103, 'Tiendz2k8', 'THESIEURE', '72bc09e', '20000', 'naptien 17368', '2023-04-14 10:52:03'),
(1104, 'GGHONJUNWER', 'THESIEURE', '8849d32', '90000', 'naptien 18606', '2023-04-14 22:04:03'),
(1105, 'GGHONJUNWER', 'THESIEURE', 'd48dba4', '30000', 'naptien 18606', '2023-04-14 22:35:03'),
(1106, 'namha', 'MOMO', '38707350681', '30000', 'naptien 18091', '2023-04-14 23:19:05'),
(1107, 'GGTHOADAJGJA', 'ACB', '3298', '600000', 'naptien 18613 FT23105168550900 GD 235249-041523 01:43:14', '2023-04-15 01:44:03'),
(1108, 'GGHONJUNWER', 'THESIEURE', '5e13b1c', '30000', 'naptien 18606', '2023-04-15 11:40:03'),
(1109, 'Long2608', 'MOMO', '38766080639', '26600', 'naptien 15304', '2023-04-16 14:24:06'),
(1110, 'GGHONJUNWER', 'THESIEURE', '4efd849', '40000', 'naptien 18606', '2023-04-16 19:59:03'),
(1111, 'GG1427031227', 'ACB', '3307', '24000', 'naptien 11969 GD 511237-041623 22:22:43', '2023-04-16 22:23:05'),
(1112, 'namthaosoc1', 'MOMO', '38802304841', '20000', 'naptien 18485', '2023-04-17 13:47:03'),
(1113, 'namthaosoc1', 'MOMO', '38802378885', '20000', 'naptien 18485', '2023-04-17 13:51:06'),
(1114, 'GGHONJUNWER', 'THESIEURE', '00f2c77', '10000', 'naptien 18606', '2023-04-17 14:52:03'),
(1115, 'GGTTAN2290', 'MOMO', '38806946819', '250000', 'naptien 18553', '2023-04-17 16:18:06'),
(1116, 'Tranminhhoang', 'THESIEURE', '60f56d7', '50000', 'naptien 18704', '2023-04-17 18:17:04'),
(1117, 'anhcunhoi35', 'MOMO', '38815274394', '500000', 'naptien 1449', '2023-04-17 19:12:07'),
(1118, 'namthaosoc1', 'MOMO', '38841905969', '160000', 'naptien 18485', '2023-04-18 14:34:06'),
(1119, 'namthaosoc1', 'ACB', '3312', '40000', 'naptien 18485 GD 888934-041823 14:35:49', '2023-04-18 14:36:07'),
(1120, 'huyhuyhuy1212', 'THESIEURE', '9620cc8', '50000', 'naptien 7261', '2023-04-18 19:09:03'),
(1121, 'Lamdinho', 'MOMO', '38895127848', '2000000', 'naptien 18661', '2023-04-19 23:39:04'),
(1122, 'thuongvip', 'MOMO', '38908646583', '300000', 'naptien 18770', '2023-04-20 11:32:04'),
(1123, 'GGTTAN2290', 'MOMO', '38910585027', '50000', 'naptien 18553', '2023-04-20 12:21:05'),
(1124, 'Ruket_TuMi', 'MOMO', '38910801657', '800000', 'naptien 18646', '2023-04-20 12:28:07'),
(1125, 'GGBOYCHICKEN43', 'ACB', '3316', '150000', 'naptien 18773 GD 551455-042023 12:53:50', '2023-04-20 12:54:06'),
(1126, 'GGVIPHN8386', 'ACB', '3317', '300000', 'naptien 18785 GD 268046-042023 19:43:10', '2023-04-20 19:44:06'),
(1127, 'GGBUCKINGMASTERPIECE00', 'MOMO', '38926203839', '60000', 'naptien 18786', '2023-04-20 20:19:12'),
(1128, 'GGVIPHN8386', 'ACB', '3318', '200000', 'naptien 18785 GD 233295-042123 06:42:49', '2023-04-21 06:43:05'),
(1129, 'GGHUONGLE7375', 'ACB', '3319', '150000', 'naptien 18666 FT23111439416456 GD 018964-042123 12:53:36', '2023-04-21 12:54:04'),
(1130, 'GG667734485', 'MOMO', '38951390187', '30000', 'naptien 15884', '2023-04-21 13:06:12'),
(1131, 'Xuanhauhihi', 'THESIEURE', '642b236', '50000', 'naptien 17507', '2023-04-21 20:57:03'),
(1132, 'vanthanh1005', 'ACB', '3323', '32000', 'naptien 10097 GD 113789-042223 16:23:00', '2023-04-22 16:23:07'),
(1133, 'huynhkynang', 'MOMO', '38995939174', '30000', 'naptien 18131', '2023-04-22 16:31:39'),
(1134, 'HoangDat68', 'THESIEURE', '6920777', '10000', 'naptien 18911', '2023-04-24 01:18:03'),
(1135, 'hongtien', 'MOMO', '39051726127', '720000', 'naptien 18615', '2023-04-24 04:25:12'),
(1136, 'donguyenthuan', 'MOMO', '39055921451', '150000', 'naptien 18905', '2023-04-24 08:48:12'),
(1137, 'tuyenkute1555', 'THESIEURE', 'c5b3c63', '150000', 'naptien 18943', '2023-04-25 10:48:02'),
(1138, 'Duyvipboy', 'ACB', '3327', '80000', 'ZP6HI804ME9O naptien 18838 GD 028938-042523 12:16:31', '2023-04-25 12:17:04'),
(1139, 'Duyvipboy', 'ACB', '3329', '66000', 'ZP6HI804MNHU naptien 18838 GD 030161-042523 12:31:58', '2023-04-25 12:32:05'),
(1140, 'GGSONGPHAIRASONG', 'MOMO', '39103508498', '40000', 'naptien 17778', '2023-04-25 13:36:12'),
(1141, 'vanthanh1005', 'ACB', '3333', '1200000', 'naptien 10097 GD 863869-042523 17:36:37', '2023-04-25 17:37:05'),
(1142, 'GG688841588', 'THESIEURE', 'f3d6ca6', '10000', 'naptien 10387', '2023-04-26 07:50:03'),
(1143, 'adminori', 'ACB', '3339', '50000', 'MBVCB.3440091335.094721.naptien 16.CT tu 1027236393 PHAM HOANG TUAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 094721-042723 20:04:00', '2023-04-27 20:04:08'),
(1144, 'lebao250906', 'ACB', '3341', '40000', 'naptien 7526 GD 195029-042723 23:25:23', '2023-04-27 23:27:03'),
(1145, 'Huynhvanquy', 'MOMO', '39219419939', '80000', 'naptien 14000', '2023-04-28 11:04:25'),
(1146, 'tuyenkute1555', 'THESIEURE', '7ef8d1b', '690000', 'naptien 18943', '2023-04-28 15:36:03'),
(1147, 'vandatfpt', 'MOMO', '39229939232', '200000', 'naptien 19043', '2023-04-28 15:39:03'),
(1148, 'anhbabao2009f', 'MOMO', '39277751187', '100000', 'naptien 19082', '2023-04-29 20:32:02'),
(1149, 'thanhhung678', 'MOMO', '39281268383', '176000', 'naptien 19089', '2023-04-29 22:32:02'),
(1150, 'GGVOMINHQUY1133', 'MOMO', '39282701168', '250000', 'naptien 19091', '2023-04-29 23:13:03'),
(1151, 'thanhhung678', 'MOMO', '39282794988', '20000', 'naptien 19089', '2023-04-29 23:22:03'),
(1152, 'thanhhung678', 'MOMO', '39283074277', '54000', 'naptien 19089', '2023-04-29 23:35:03'),
(1153, 'anhbabao2009f', 'ACB', '3343', '20000', '39280755820-0981505212-naptien 19082 GD 835080-042923 23:36:57', '2023-04-29 23:37:03'),
(1154, 'ltagaming1', 'MOMO', '39283409309', '50000', 'naptien 19087', '2023-04-29 23:43:03'),
(1155, 'anhbabao2009f', 'ACB', '3344', '30000', 'naptien 19082 GD 974999-043023 00:39:18', '2023-04-30 00:41:03'),
(1156, 'Hainguyen', 'MOMO', '39373812210', '250000', 'naptien 19153', '2023-05-02 17:21:02'),
(1157, 'tuyenkute1555', 'THESIEURE', '0f72d3f', '250000', 'naptien 18943', '2023-05-02 18:33:03'),
(1158, 'nguyentranngoc', 'MOMO', '39442608874', '220000', 'naptien 19133', '2023-05-04 13:19:03'),
(1159, 'nguyentranngoc', 'MOMO', '39445651164', '10000', 'naptien 19133', '2023-05-04 14:48:03'),
(1160, 'dotruongchung', 'MOMO', '39496476650', '40000', 'naptien 15870', '2023-05-05 17:25:07'),
(1161, 'anhbabao2009f', 'ACB', '3358', '100000', 'naptien 19082 GD 924496-050523 20:15:25', '2023-05-05 20:16:03'),
(1162, 'GGNHOCDATZ123', 'MOMO', '39506210029', '120000', 'naptien 19011', '2023-05-05 20:57:04'),
(1163, 'anhbabao2009f', 'ACB', '3359', '50000', 'CTY CP DICH VU DI DONG TRUC TUYEN-GD 485149-2023-05-05T21:00:11-970448-/CTR/MoMoT0981505212T39505312543T970416Tnaptien 19082/MAC/54EF5B2F6497445B', '2023-05-05 21:01:03'),
(1164, 'GGNHOCDATZ123', 'MOMO', '39506943458', '20000', 'naptien 19011', '2023-05-05 21:23:15'),
(1165, 'Phonghuynh', 'MOMO', '39543718811', '55000', 'naptien 6008', '2023-05-06 19:24:16'),
(1166, 'GG489975287', 'MOMO', '39578245428', '29700', 'naptien 14434', '2023-05-07 18:15:02'),
(1167, 'daoxuanbay', 'MOMO', '39614727731', '55000', 'naptien 1911', '2023-05-08 16:59:52'),
(1168, 'Xuanhauhihi', 'THESIEURE', 'e76f2ad', '880000', 'naptien 17507', '2023-05-08 23:20:08'),
(1169, 'GGDUCXUANMANH', 'MOMO', '39633821833', '150000', 'naptien 19354', '2023-05-09 06:03:02'),
(1170, 'GGHCNGUYENA22068', 'MOMO', '39644983847', '30000', 'naptien 19358', '2023-05-09 11:33:03'),
(1171, 'GGDUCXUANMANH', 'ACB', '3376', '320000', 'naptien 19354 GD 712500-050923 19:21:37', '2023-05-09 19:22:03'),
(1172, 'GGNHOCDATZ123', 'MOMO', '39676035828', '20000', 'naptien 19011', '2023-05-10 05:06:03'),
(1173, 'GGTHETHAOVUA797', 'MOMO', '39714079959', '50000', 'naptien 19151', '2023-05-10 20:39:03'),
(1174, 'GGMANHDAT06209', 'THESIEURE', '5ac7ac5', '90000', 'naptien 19155', '2023-05-11 12:28:03'),
(1175, 'Xuanhauhihi', 'THESIEURE', 'decd690', '800000', 'naptien 17507', '2023-05-11 18:33:03'),
(1176, 'GGTIENTHIET38', 'ACB', '3381', '520000', 'naptien 18833 FT23132515343054 GD 138746-051223 06:35:53', '2023-05-12 06:37:04'),
(1177, 'Nguyenbaba', 'ACB', '3382', '200000', 'Naptien 3222 GD 778320-051223 13:26:04', '2023-05-12 13:27:04'),
(1178, 'Nguyenbaba', 'ACB', '3384', '20000', 'naptien 3222 GD 267590-051223 15:24:58', '2023-05-12 15:27:03'),
(1179, 'KhanhNguyenhihi', 'MOMO', '39806533065', '10000', 'naptien 11567', '2023-05-12 22:44:17'),
(1180, 'GGMANHDAT06209', 'THESIEURE', 'ab402e8', '80000', 'naptien 19155', '2023-05-13 17:05:04'),
(1181, 'hopdz1', 'MOMO', '39841550497', '100000', 'naptien 17527', '2023-05-13 20:35:04'),
(1182, 'quocviet2009', 'MOMO', '39841960593', '72000', 'naptien 16654', '2023-05-13 20:44:06'),
(1183, 'GGBAOVPS247', 'ACB', '3393', '110000', 'naptien 18134 GD 017105-051323 23:17:19', '2023-05-13 23:19:03'),
(1184, 'thienhoang05', 'MOMO', '39847282500', '50000', 'naptien 3499', '2023-05-13 23:31:02'),
(1185, 'GGBAOVPS247', 'MOMO', '39847683338', '40000', 'naptien 18134', '2023-05-13 23:50:03'),
(1186, 'GGMANHDAT06209', 'THESIEURE', '136460a', '100000', 'naptien 19155', '2023-05-14 13:29:03'),
(1187, 'GG489975287', 'MOMO', '39869880840', '46800', 'naptien 14434', '2023-05-14 15:48:02'),
(1188, 'GGSUKAVIP102', 'ACB', '3395', '340000', 'ACB;28349817;naptien 19497 GD 228958-051423 19:37:33', '2023-05-14 19:38:03'),
(1189, 'GGSUKAVIP102', 'ACB', '3396', '50000', 'ACB;28349817;naptien 19497 GD 321867-051523 11:56:44', '2023-05-15 11:57:03'),
(1190, 'GGSUKAVIP102', 'ACB', '3397', '25000', 'ACB;28349817;naptien 19497 GD 568108-051523 12:09:37', '2023-05-15 12:10:03'),
(1191, 'Thaovan03', 'ACB', '3398', '90000', 'naptien 19514 GD 632315-051523 13:00:53', '2023-05-15 13:01:03'),
(1192, 'ngduc2k', 'MOMO', '39962091545', '50000', 'naptien 19545', '2023-05-16 17:10:03'),
(1193, 'Lqkhuong1', 'ACB', '3401', '200000', 'naptien 19561 GD 634331-051623 22:41:14', '2023-05-16 22:42:03'),
(1194, 'dungvip01', 'MOMO', '39981700140', '170000', 'naptien 19505', '2023-05-17 06:54:02'),
(1195, 'GGTTAN2290', 'MOMO', '40005079417', '250000', 'naptien 18553', '2023-05-17 17:54:04'),
(1196, 'cuongdat2k3', 'ACB', '3405', '190000', 'naptien 19579 GD 168734-051823 04:47:18', '2023-05-18 04:48:02'),
(1197, 'cuongdat2k3', 'ACB', '3406', '41000', 'naptien 19579 GD 657132-051823 09:16:26', '2023-05-18 09:17:03'),
(1198, 'Minhvanced', 'MOMO', '40045523172', '50000', 'naptien 9441', '2023-05-18 17:32:02'),
(1199, 'hung28112006', 'ACB', '3410', '220000', 'naptien 10647 GD 078732-051923 14:59:46', '2023-05-19 14:59:44'),
(1200, 'hung28112006', 'ACB', '3411', '30000', 'naptien 10647 GD 231147-051923 16:38:09', '2023-05-19 16:39:03'),
(1201, 'tdd037211', 'ACB', '3416', '10000', 'naptien 19621 GD 205974-052023 15:46:34', '2023-05-20 15:47:03'),
(1202, 'bubu07', 'ACB', '3419', '400000', 'MoMoT0981505212T40154087694T970416Tnaptien 19644 GD 268297-052123 14:42:37', '2023-05-21 14:43:03'),
(1203, 'nguyentranngoc', 'MOMO', '40169252745', '595000', 'naptien 19133', '2023-05-21 21:13:03'),
(1204, 'nguyenpipihot', 'MOMO', '40170111790', '20000', 'naptien 17092', '2023-05-21 21:39:04'),
(1205, 'GGHOPUPLUONG1', 'ACB', '3422', '140000', 'naptien 18317 GD 702374-052223 11:37:39', '2023-05-22 11:38:03'),
(1206, 'huyhuyhuy1212', 'MOMO', '40199172543', '150000', 'naptien 7261', '2023-05-22 17:08:03'),
(1207, 'tuyenkute1555', 'ACB', '3426', '50000', 'naptien 18943 GD 121287-052323 17:05:24', '2023-05-23 17:07:10'),
(1208, 'ngduc2k', 'MOMO', '40243303336', '50000', 'naptien 19545', '2023-05-23 19:44:24'),
(1209, 'tuyenkute1555', 'THESIEURE', '7a7db16', '250000', 'naptien 18943', '2023-05-24 15:09:04'),
(1210, 'Tuan123987', 'ACB', '3430', '250000', 'naptien 1043 GD 652866-052423 17:19:35', '2023-05-24 17:21:05'),
(1211, 'GGLYMINHTHUWZZ', 'ACB', '3432', '550000', 'SACOMBANK-GD 837082-2023-05-24T19:28:32-970403-/CTR/IBFT naptien 19750/MAC/44F97B1AC26DF9AF', '2023-05-24 19:30:05'),
(1212, 'GG719310264', 'MOMO', '40290135222', '20000', 'naptien 16414', '2023-05-25 00:56:03'),
(1213, 'GGLYMINHTHUWZZ', 'ACB', '3435', '150000', 'SACOMBANK-GD 149865-2023-05-25T09:15:26-970403-/CTR/IBFT naptien 19750/MAC/E0E7E09C2994E743', '2023-05-25 09:51:03'),
(1214, 'GGNIEMLOCUONGD', 'MOMO', '40389538550', '400000', 'naptien 19849', '2023-05-27 15:34:03'),
(1215, 'Toanori', 'ACB', '3437', '11000', 'naptien 3106 GD 478692-052723 17:57:38', '2023-05-27 17:59:49'),
(1216, 'Toanori', 'ACB', '3439', '10000', 'naptien 3106 GD 673263-052823 09:39:41', '2023-05-28 09:40:03'),
(1217, 'ducanh7532', 'ACB', '3440', '150000', 'naptien 19880 FT23149356102689 GD 987365-052823 15:49:47', '2023-05-28 15:50:03'),
(1218, 'ducanh7532', 'ACB', '3441', '30000', 'naptien 19880 FT23149675873555 GD 301235-052823 18:13:13', '2023-05-28 18:14:03'),
(1219, 'GGNGUYENTHENAM14052002', 'ACB', '3442', '19000', 'naptien 19736 GD 053522-052823 21:43:19', '2023-05-28 21:44:03'),
(1220, 'lamthai', 'ACB', '3444', '114000', 'SHBMB-GD 235455-2023-05-29T11:43:29-970443-/CTR/naptien 19900/MAC/1316F5DBB53AFBD0', '2023-05-29 11:45:03'),
(1221, 'GGSAIDAKAI94', 'THESIEURE', 'd5eddf4', '100000', 'naptien 19068', '2023-05-29 11:55:03'),
(1222, 'GGSAIDAKAI94', 'THESIEURE', 'e65579b', '30000', 'naptien 19068', '2023-05-29 12:11:03'),
(1223, 'lamthai', 'ACB', '3446', '30000', 'SHBMB-GD 979824-2023-05-29T13:19:17-970443-/CTR/naptien 19900/MAC/96AAE568AEFE2377', '2023-05-29 13:21:03'),
(1224, 'GGBAOVPS247', 'ACB', '3452', '200000', 'naptien 18134 GD 373596-053123 14:13:34', '2023-05-31 14:14:03'),
(1225, 'GGBAOVPS247', 'ACB', '3454', '30000', 'naptien 18134 GD 512272-053123 15:50:26', '2023-05-31 15:51:03'),
(1226, 'FBNGUYENBAODEPTRAI123456', 'THESIEURE', 'c0d0337', '42000', 'naptien 17498', '2023-06-01 13:26:03'),
(1227, 'GG1427031227', 'ACB', '3456', '74900', 'naptien 11969 GD 304271-060123 22:51:34', '2023-06-01 22:52:03'),
(1228, 'thuongnt19a', 'ACB', '3459', '1200000', 'naptien 19780 GD 950836-060223 17:22:44', '2023-06-02 17:23:03'),
(1229, 'ANONTOKEN', 'ACB', '3462', '26500', 'naptien 9278 GD 112596-060323 11:37:01', '2023-06-03 11:37:03'),
(1230, 'viciyoc224', 'MOMO', '40657460602', '50000', 'naptien 19314', '2023-06-03 13:15:03'),
(1231, 'FBNGUYENBAODEPTRAI123456', 'THESIEURE', 'c076519', '45000', 'naptien 17498', '2023-06-05 15:17:14'),
(1232, 'GGARTDISTANTGUY', 'MOMO', '40750985107', '500000', 'naptien 20112', '2023-06-05 17:30:32'),
(1233, 'Tuan123987', 'ACB', '3466', '50000', 'naptien 1043 GD 645408-060523 21:02:39', '2023-06-05 21:02:05'),
(1234, 'tkhackao15', 'MOMO', '40781810746', '28800', 'naptien 17238', '2023-06-06 10:57:10'),
(1235, 'Sinhhocpl168', 'ACB', '3470', '50000', 'naptien 19939 GD 377816-060723 23:14:53', '2023-06-07 23:17:05'),
(1236, 'GGDODUCQUANGPMT', 'ACB', '3472', '520000', 'naptien 18006 GD 303222-060823 07:35:11', '2023-06-08 07:35:04'),
(1237, 'GGDODUCQUANGPMT', 'ACB', '3473', '30000', 'naptien 18006 GD 436151-060823 08:10:59', '2023-06-08 08:11:05'),
(1238, 'GGGIAHUYHUY2007', 'ACB', '3486', '97000', 'naptien 20288 GD 872056-061123 20:37:32', '2023-06-11 20:39:08'),
(1239, 'GGPTKVCUTE', 'MOMO', '41030596670', '180000', 'naptien 20302', '2023-06-12 08:57:02'),
(1240, 'tuanvy', 'MOMO', '41086130193', '50000', 'naptien 20335', '2023-06-13 14:32:18'),
(1241, 'GGNGONGUYEN2021VG', 'GACHTHE1S', 'T202306144572284', '16000', 'naptien 20347', '2023-06-14 23:31:50'),
(1242, 'Hoangmai780ttn', 'ACB', '3495', '80000', 'MBVCB.3690574595.058753.naptien 20272.CT tu 1037893990 HUA VAN TOAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 058753-061523 02:37:35', '2023-06-15 02:38:03'),
(1243, 'Hoangmai780ttn', 'ACB', '3496', '220000', 'MBVCB.3690585500.059655.naptien 20272.CT tu 1037893990 HUA VAN TOAN toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 059655-061523 02:40:54', '2023-06-15 02:41:02'),
(1244, 'chillwithhuiz', 'MOMO', '41164418375', '800000', 'naptien 16025', '2023-06-15 07:08:03'),
(1245, 'hackon247', 'ACB', '3497', '150000', 'naptien 20412 GD 968466-061523 10:33:52', '2023-06-15 10:34:03'),
(1246, 'Doanminhtruc', 'ACB', '3499', '77000', 'naptien 16485 GD 692744-061523 19:04:40', '2023-06-15 19:05:03'),
(1247, 'Doanminhtruc', 'ACB', '3500', '50000', 'naptien 16485 GD 090454-061523 20:20:02', '2023-06-15 20:20:03'),
(1248, 'GGNGONGUYEN2021VG', 'MOMO', '41202131843', '10000', 'naptien 20347', '2023-06-15 22:28:03'),
(1249, 'GGDUOCDZGAMING', 'ACB', '3507', '130000', 'naptien 20460 GD 976738-061623 23:05:51', '2023-06-16 23:06:03'),
(1250, 'sontran184', 'ACB', '3509', '10000', 'naptien 13059 GD 173795-061723 11:10:34', '2023-06-17 11:11:03'),
(1251, 'tranhieuvn', 'ACB', '3510', '50000', 'naptien 8081 GD 054399-061723 14:55:03', '2023-06-17 14:55:31'),
(1252, 'GGSHEWPT', 'MOMO', '41284373946', '40000', 'naptien 20427', '2023-06-17 20:18:02'),
(1253, 'GG1201685375', 'ACB', '3511', '800000', 'naptien 11716 GD 302631-061723 23:44:01', '2023-06-17 23:44:02'),
(1254, 'barryanh', 'MOMO', '41308007245', '24500', 'naptien 3232', '2023-06-18 13:04:03'),
(1255, 'barryanh', 'MOMO', '41316243645', '60000', 'naptien 3232', '2023-06-18 17:12:03'),
(1256, 'GGPKIET8622', 'MOMO', '41345823993', '50000', 'naptien 20415', '2023-06-19 12:23:09'),
(1257, 'GGHOPUPLUONG1', 'ACB', '3513', '30000', 'naptien 18317 GD 201334-061923 15:22:53', '2023-06-19 15:24:07'),
(1258, 'Doanminhtruc', 'ACB', '3515', '130000', 'naptien 16485 GD 959149-062023 01:01:25', '2023-06-20 01:03:32'),
(1259, 'Tieptocon', 'ACB', '3516', '100000', 'naptien 17414 GD 388163-062023 18:40:26', '2023-06-20 18:41:06'),
(1260, 'Doanminhtruc', 'ACB', '3517', '30000', 'naptien 16485 GD 709950-062123 06:28:51', '2023-06-21 06:30:05'),
(1261, 'GGPHUNGMANHHAI7777', 'ACB', '3521', '80000', 'naptien 20573 GD 241764-062123 20:46:49', '2023-06-21 20:48:05'),
(1262, 'GGMINHTHOJ27', 'ACB', '3526', '15000', 'naptien 20592 GD 492942-062223 16:14:36', '2023-06-22 16:16:03'),
(1263, 'lamthanhhuy1', 'ACB', '3528', '20000', 'naptien 20635 GD 112979-062423 10:59:52', '2023-06-24 11:01:03'),
(1264, 'Duongnam', 'ACB', '3530', '170000', 'naptien 20603 GD 312808-062523 12:35:57', '2023-06-25 12:36:03'),
(1265, 'Duongnam', 'ACB', '3532', '30000', 'naptien 20603 GD 326699-062523 13:35:30', '2023-06-25 13:36:03'),
(1266, 'GGVANCHAUCT37', 'MOMO', '41658179007', '760000', 'naptien 20738', '2023-06-26 18:51:05'),
(1267, 'HuyG', 'MOMO', '41671982259', '800000', 'naptien 20716', '2023-06-27 02:33:03'),
(1268, 'hopdz1', 'ACB', '3534', '230000', 'naptien 17527 GD 572238-062723 12:49:47', '2023-06-27 12:50:06'),
(1269, 'banh0309', 'ACB', '3535', '70000', 'naptien 16220 GD 512264-062723 13:18:13', '2023-06-27 13:18:05'),
(1270, 'lamthai', 'ACB', '3538', '30000', 'naptien 19900 GD 097521-062723 20:44:42', '2023-06-27 20:46:05'),
(1271, 'bibeo', 'ACB', '3539', '200000', 'naptien 20816 GD 100231-062823 16:05:09', '2023-06-28 16:05:05'),
(1272, 'GG1836054443', 'MOMO', '41747270721', '1000000', 'naptien 15024', '2023-06-28 22:41:07'),
(1273, 'Tieptocon', 'ACB', '3542', '427500', 'naptien 17414 GD 371095-062923 07:52:27', '2023-06-29 07:52:04'),
(1274, 'Tieptocon', 'ACB', '3543', '22500', 'naptien 17414 GD 340841-062923 07:53:54', '2023-06-29 07:54:07'),
(1275, 'manh1811', 'ACB', '3548', '70000', 'naptien 16324 GD 433215-062923 19:59:10', '2023-06-29 20:00:03'),
(1276, 'GG939646414', 'ACB', '3549', '250000', 'naptien 15204 GD 475804-062923 20:08:55', '2023-06-29 20:09:03'),
(1277, 'Tieptocon', 'ACB', '3550', '30000', 'naptien 17414 GD 459801-063023 08:35:42', '2023-06-30 08:36:05'),
(1278, 'GGVIYEUGIANG1', 'ACB', '3551', '300000', 'naptien 20877 GD 453236-063023 12:46:56', '2023-06-30 12:47:05'),
(1279, 'GGNGUYENTHICUTEO298', 'MOMO', '41829646597', '100000', 'naptien 20893', '2023-06-30 21:28:08'),
(1280, 'GGTTAN2290', 'MOMO', '41844806980', '250000', 'naptien 18553', '2023-07-01 09:28:08'),
(1281, 'GGNGUYENTHICUTEO298', 'MOMO', '41846542528', '80000', 'naptien 20893', '2023-07-01 10:03:05'),
(1282, 'Toanori', 'ACB', '3555', '50000', 'naptien 3106 GD 003620-070123 18:59:53', '2023-07-01 19:00:05'),
(1283, 'GG1569204126', 'ACB', '3557', '20000', 'MBVCB.3781379638.033990.naptien 15970.CT tu 1027262547 HUYNH MINH ANH toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 033990-070223 07:28:09', '2023-07-02 07:29:05'),
(1284, 'GGHI7622427', 'ACB', '3558', '250000', 'naptien 20639 GD 462746-070223 08:39:52', '2023-07-02 08:40:04'),
(1285, 'GGTHANHCONGINFOPROFILE', 'ACB', '3559', '50000', 'naptien 20718 GD 662186-070223 09:20:37', '2023-07-02 09:20:05'),
(1286, 'GG1982HACKERFACEBOOK', 'ACB', '3560', '720000', 'naptien 20610 GD 138036-070223 11:16:44', '2023-07-02 11:17:05'),
(1287, 'GGTHANHKPZ18', 'ACB', '3566', '120000', 'naptien 20293 GD 970075-070423 14:55:39', '2023-07-04 14:56:03'),
(1288, 'GGTHANHKPZ18', 'ACB', '3567', '741000', 'naptien 20293 GD 332849-070423 18:13:15', '2023-07-04 18:13:05'),
(1289, 'congtai1221', 'MOMO', '42037209189', '150000', 'naptien 14234', '2023-07-05 12:44:05'),
(1290, 'congtai1221', 'MOMO', '42037464541', '30000', 'naptien 14234', '2023-07-05 12:58:04'),
(1291, 'NQHhuy', 'GACHTHE1S', 'T202307054771346', '14500', 'naptien 9225', '2023-07-05 13:21:04'),
(1292, 'GGMRPYT24', 'ACB', '3572', '20000', 'IBFT naptien 20256 GD 909263-070523 23:14:35', '2023-07-05 23:14:06'),
(1293, 'GGMRPYT24', 'ACB', '3573', '40000', 'IBFT naptien 20256 GD 918216-070523 23:56:56', '2023-07-05 23:57:06'),
(1294, 'The2003', 'ACB', '3578', '100000', 'naptien 3614 GD 869590-070723 10:26:16', '2023-07-07 10:26:05'),
(1295, 'GGTRUONGVU281125', 'ACB', '3579', '50000', 'naptien 21131 GD 378234-070723 19:38:13', '2023-07-07 19:38:04'),
(1296, 'Tuan123987', 'ACB', '3580', '250000', 'naptien 1043 GD 197691-070823 12:28:42', '2023-07-08 12:28:05'),
(1297, 'xuankhai2k3', 'ACB', '3581', '160000', 'naptien 21150 GD 435968-070823 16:10:54', '2023-07-08 16:10:04'),
(1298, 'xuankhai2k3', 'ACB', '3582', '40000', 'naptien 21150 GD 504665-070823 16:58:00', '2023-07-08 16:58:05'),
(1299, 'GGTRUONGVU281125', 'ACB', '3587', '15000', 'naptien 21131 GD 377416-070923 14:50:56', '2023-07-09 14:51:21'),
(1300, 'Onmynghi99', 'MOMO', '42255595230', '180000', 'naptien 16651', '2023-07-10 09:13:04'),
(1301, 'Onmynghi99', 'MOMO', '42256576598', '41000', 'naptien 16651', '2023-07-10 09:40:06'),
(1302, 'levansinh144', 'ACB', '3592', '77000', 'naptien 14346 GD 707143-071023 16:11:01', '2023-07-10 16:11:12'),
(1303, 'ThanhHa', 'ACB', '3593', '320000', 'naptien 20723 GD 777519-071023 18:19:13', '2023-07-10 18:20:04'),
(1304, 'ThanhHa', 'ACB', '3594', '14000', 'naptien 20723 GD 898448-071023 18:37:12', '2023-07-10 18:38:14'),
(1305, 'GGTHOBUI2109', 'MOMO', '42298135533', '80000', 'naptien 21199', '2023-07-10 23:25:16'),
(1306, 'GGLINHDINH063', 'ACB', '3597', '70000', 'naptien 21272 GD 596274-071123 20:33:29', '2023-07-11 20:34:03'),
(1307, 'Doanminhtruc', 'ACB', '3601', '150000', 'naptien 16485 GD 031343-071223 10:11:54', '2023-07-12 10:12:02'),
(1308, 'GGPHMAIINO3152011', 'MOMO', '42386383573', '200000', 'naptien 21295', '2023-07-12 19:18:12'),
(1309, 'Thanhtuit', 'MOMO', '42388029055', '80000', 'naptien 21301', '2023-07-12 19:57:10'),
(1310, 'GGLINHDINH063', 'ACB', '3607', '100000', 'naptien 21272 GD 268205-071323 11:21:04', '2023-07-13 11:22:03'),
(1311, 'GG875136116', 'ACB', '3609', '700000', 'NGUYEN HUU DUNG-NAPTIEN 11660 TAI A CHAU CN QUANG NGAI', '2023-07-13 13:27:02'),
(1312, 'trensong01', 'ACB', '3612', '500000', 'naptien 21324 GD 595222-071323 22:30:31', '2023-07-13 22:30:03'),
(1313, 'quocviet2009', 'MOMO', '42529508639', '430000', 'naptien 16654', '2023-07-15 20:29:07'),
(1314, 'GGHI7622427', 'ACB', '3618', '800000', 'naptien 20639 GD 235725-071623 20:22:07', '2023-07-16 20:22:03'),
(1315, 'GGLINHDINH063', 'ACB', '3619', '100000', 'MBVCB.3866110019.031984.naptien 21272.CT tu 0341007214192 NGUYEN DINH LINH toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 031984-071723 00:28:05', '2023-07-17 00:27:06'),
(1316, 'GGPHAMANHTUAN1304207', 'MOMO', '42583586003', '90000', 'naptien 21454', '2023-07-17 03:21:05'),
(1317, 'duongvanvn11111', 'MOMO', '42592882186', '70000', 'naptien 20901', '2023-07-17 10:24:06'),
(1318, 'duongvanvn11111', 'MOMO', '42592941989', '20000', 'naptien 20901', '2023-07-17 10:26:06'),
(1319, 'duongvanvn11111', 'MOMO', '42593208454', '80000', 'naptien 20901', '2023-07-17 10:29:03'),
(1320, 'duongvanvn11111', 'MOMO', '42593343759', '350000', 'naptien 20901', '2023-07-17 10:38:08'),
(1321, 'hoanghuyff', 'MOMO', '42613601394', '80000', 'naptien 9474', '2023-07-17 18:34:07'),
(1322, 'GGQUOCANH51103', 'MOMO', '42615618957', '700000', 'naptien 21463', '2023-07-17 19:19:03'),
(1323, 'GGPHAMANHTUAN1304207', 'ACB', '3622', '30000', 'naptien 21454 GD 067903-071723 20:27:21', '2023-07-17 20:27:02'),
(1324, 'Biin999', 'MOMO', '42651538554', '80000', 'naptien 12556', '2023-07-18 15:41:08'),
(1325, 'Biin999', 'MOMO', '42660275675', '30000', 'naptien 12556', '2023-07-18 18:53:03'),
(1326, 'nguyenvantam', 'ACB', '3625', '10000', 'naptien 1796 GD 170143-071823 19:50:12', '2023-07-18 19:50:03'),
(1327, 'Toanori', 'ACB', '3631', '50000', 'naptien 3106 GD 304927-072023 12:45:25', '2023-07-20 12:45:03'),
(1328, 'GGSADBOIZ2007ZX', 'ACB', '3632', '30000', 'naptien 19654 GD 104262-072023 22:25:51', '2023-07-20 22:25:03'),
(1329, '0837913129', 'ACB', '3636', '50000', 'MBVCB.3898417152.028934.naptien 9987.CT tu 9398218945 PHAM QUANG SANG toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 028934-072223 18:07:23', '2023-07-22 18:07:02'),
(1330, 'FBTRANHUONGLOP12', 'MOMO', '42843583224', '500000', 'naptien 17452', '2023-07-23 00:59:04'),
(1331, 'nghigok4', 'MOMO', '42845101888', '220000', 'naptien 21641', '2023-07-23 02:40:05'),
(1332, 'GGTHELONMA87', 'ACB', '3640', '50000', 'naptien 18075 GD 099401-072323 13:04:49', '2023-07-23 13:04:06'),
(1333, 'GG1124393610', 'MOMO', '42862472913', '60000', 'naptien 10181', '2023-07-23 15:21:05'),
(1334, 'nghigok4', 'MOMO', '42862954634', '29000', 'naptien 21641', '2023-07-23 15:39:02'),
(1335, '0837913129', 'ACB', '3642', '140000', 'MBVCB.3904333992.085344.naptien 9987.CT tu 9398218945 PHAM QUANG SANG toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 085344-072323 21:21:18', '2023-07-23 21:21:03'),
(1336, 'quocthangtran0', 'ACB', '3645', '80000', 'MBVCB.3907836424.058921.naptien 5346.CT tu 1019274412 TRAN QUOC THANG toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 058921-072423 15:37:21', '2023-07-24 15:37:10'),
(1337, 'Sangdz', 'ACB', '3647', '50000', 'naptien 12728 GD 516936-072423 22:47:34', '2023-07-24 22:48:03'),
(1338, 'GGDODUCQUANGPMT', 'ACB', '3649', '150000', 'naptien 18006 FT23206134571244 GD 142084-072523 20:05:52', '2023-07-25 20:05:06'),
(1339, 'GGHOANGLEE1207', 'ACB', '3650', '210000', 'naptien 21754 GD 457004-072623 13:27:52', '2023-07-26 13:27:03'),
(1340, 'GGHOANGLEE1207', 'ACB', '3651', '30000', 'naptien 21754 FT23207442044541 GD 057162-072623 16:59:16', '2023-07-26 16:58:07'),
(1341, 'GGSANGRACER', 'MOMO', '43000359596', '300000', 'naptien 21718', '2023-07-27 01:08:06'),
(1342, '0837913129', 'ACB', '3655', '50000', 'MBVCB.3929683422.056769.naptien 9987.CT tu 9398218945 PHAM QUANG SANG toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 056769-072823 15:03:22', '2023-07-28 15:02:05'),
(1343, 'Duytan1111', 'MOMO', '43067279019', '70000', 'naptien 18209', '2023-07-28 17:19:02'),
(1344, 'GGVANCHAUCT37', 'MOMO', '43069869206', '60000', 'naptien 20738', '2023-07-28 18:27:03'),
(1345, 'lamthai', 'ACB', '3661', '30000', 'naptien 19900 GD 129082-073023 10:03:33', '2023-07-30 10:02:14'),
(1346, 'tuanotis', 'MOMO', '43167845627', '100000', 'naptien 20619', '2023-07-31 10:59:03'),
(1347, 'bando', 'ACB', '3665', '170000', 'naptien 18788 GD 076173-073123 21:14:44', '2023-07-31 21:14:05'),
(1348, 'GGHI7622427', 'ACB', '3666', '50000', 'naptien 20639 GD 451252-080123 12:19:14', '2023-08-01 12:19:03'),
(1349, 'videptraik7', 'ACB', '3668', '50000', 'naptien 21971 GD 236824-080123 15:05:19', '2023-08-01 15:05:03'),
(1350, 'lamthai', 'ACB', '3669', '250000', 'naptien 19900 GD 136516-080123 17:13:29', '2023-08-01 17:13:03'),
(1351, 'lamthai', 'ACB', '3670', '684000', 'naptien 19900 GD 154694-080123 17:25:35', '2023-08-01 17:25:04'),
(1352, 'Duytan1111', 'MOMO', '43235936845', '120000', 'naptien 18209', '2023-08-01 19:06:15'),
(1353, 'GGNTRUC126A', 'ACB', '3672', '100000', 'naptien 21979 GD 714746-080123 19:50:58', '2023-08-01 19:50:03'),
(1354, 'anhanh88', 'ACB', '3677', '742000', 'MBVCB.3962894991.035658.Naptien 20548.CT tu 0071001215503 DO ANH SON toi 28349817 PHAM HOANG TUAN Ngan hang A Chau (ACB) GD 035658-080323 14:50:42', '2023-08-03 14:49:03'),
(1355, 'GGGIAHUY10KFL', 'ACB', '3678', '150000', 'naptien 22012 GD 099793-080323 15:04:54', '2023-08-03 15:03:03'),
(1356, 'ngduc2k', 'MOMO', '43335384232', '250000', 'naptien 19545', '2023-08-03 23:39:05'),
(1357, 'bucacanhdi', 'MOMO', '43362641351', '10000', 'naptien 13971', '2023-08-04 15:37:06'),
(1358, 'GG1427031227', 'MOMO', '43380733870', '250000', 'naptien 11969', '2023-08-04 22:45:06'),
(1359, 'Boyyk07', 'ACB', '3683', '20000', 'ACB;28349817;naptien 18457 GD 196868-080523 18:52:40', '2023-08-05 18:51:03'),
(1360, 'binh12345haha', 'MOMO', '43428782473', '10000', 'naptien 14857', '2023-08-05 23:38:06'),
(1361, 'GGVVBDUONG', 'MOMO', '43431724318', '50000', 'naptien 22133', '2023-08-06 01:50:05'),
(1362, 'thanhkomom123', 'ACB', '3685', '15000', 'naptien 21964 GD 800863-080623 14:04:50', '2023-08-06 14:03:06'),
(1363, 'GGTRUONGVU28110205', 'ACB', '3688', '200000', 'naptien 22122 GD 960968-080623 19:46:08', '2023-08-06 19:45:03'),
(1364, 'Duytan1111', 'ACB', '3689', '620000', 'naptien 18209 GD 031408-080723 00:25:48', '2023-08-07 00:24:02'),
(1365, 'GG209418831', 'MOMO', '43476375860', '150000', 'naptien 10202', '2023-08-07 05:39:06'),
(1366, 'havuongvn', 'ACB', '3697', '250000', 'naptien 22250 GD 140060-080923 03:14:36', '2023-08-09 03:13:05'),
(1367, 'trinhvy2112', 'ACB', '3700', '100000', 'naptien 22255 GD 078745-080923 09:50:36', '2023-08-09 09:50:06'),
(1368, 'GG875136116', 'MOMO', '43584260584', '60000', 'naptien 11660', '2023-08-09 13:28:08'),
(1369, 'VuQuangHai', 'ACB', '3702', '25000', 'naptien 7038 GD 227811-080923 16:28:06', '2023-08-09 16:27:06'),
(1370, 'trinhvy2112', 'ACB', '3704', '30000', 'naptien 22255 GD 061347-080923 23:27:21', '2023-08-09 23:25:13'),
(1371, 'Manh5169', 'ACB', '3705', '200000', 'naptien 22275 GD 704462-081023 09:51:00', '2023-08-10 09:49:04'),
(1372, 'giaosumaytinh', 'ACB', '3708', '150000', 'naptien 20695 GD 500535-081023 16:56:37', '2023-08-10 16:55:09'),
(1373, 'Manh5169', 'ACB', '3710', '50000', 'naptien 22275 GD 291277-081023 21:02:56', '2023-08-10 21:02:08'),
(1374, 'GGCUONG', 'MOMO', '43665760831', '300000', 'naptien 22321', '2023-08-11 01:11:08'),
(1375, 'GG1427031227', 'MOMO', '43691715074', '250000', 'naptien 11969', '2023-08-11 15:21:05'),
(1376, 'GGVANHLEGEND2K6', 'ACB', '3717', '50000', 'naptien 22419 GD 591779-081323 18:17:31', '2023-08-13 18:19:03'),
(1377, 'trensong01', 'MOMO', '43834125961', '24000', 'naptien 21324', '2023-08-14 17:39:06'),
(1378, 'videptraik7', 'ACB', '3725', '50000', 'naptien 21971 GD 699191-081623 18:42:14', '2023-08-16 18:43:03'),
(1379, 'shoplo99', 'MOMO', '43946233955', '50000', 'naptien 22540', '2023-08-17 00:12:06'),
(1380, 'nhanpymedia', 'ACB', '3728', '100000', 'MBVCB.4046998075.037394.naptien 22543.CT tu 9569056747 NGUYEN HUU NHAN toi 28349817 PHAM HOANG TUAN tai ACB GD 037394-081723 09:22:27', '2023-08-17 09:23:02'),
(1381, 'GGTHIENTUYETREMOT1', 'ACB', '3732', '150000', 'naptien 22585 GD 723163-081823 10:11:42', '2023-08-18 10:13:03'),
(1382, 'GG1928248962', 'ACB', '3734', '126000', 'IB TRAN DUY DAI NGHIA NAPTIEN 9889', '2023-08-18 17:01:03'),
(1383, 'procombow', 'MOMO', '44053062893', '15000', 'naptien 22282', '2023-08-19 10:09:06'),
(1384, 'GGTHIENTUYETREMOT1', 'ACB', '3736', '100000', 'naptien 22585 GD 030838-081923 15:38:04', '2023-08-19 15:41:02'),
(1385, 'lailasangday', 'MOMO', '44084956020', '74000', 'naptien 14686', '2023-08-19 23:45:05'),
(1386, 'GGHOPUPLUONG1', 'ACB', '3740', '220000', 'MBVCB.4067343820.052902.naptien 18317.CT tu 1033017457 HA QUANG HOP toi 28349817 PHAM HOANG TUAN tai ACB GD 052902-082023 18:19:49', '2023-08-20 18:20:04'),
(1387, 'GGHOPUPLUONG1', 'ACB', '3741', '30000', 'MBVCB.4067407646.091208.naptien 18317.CT tu 1033017457 HA QUANG HOP toi 28349817 PHAM HOANG TUAN tai ACB GD 091208-082023 18:30:31', '2023-08-20 18:31:03'),
(1388, 'sang088', 'ACB', '3744', '100000', 'MBVCB.4068942142.041900.naptien 22673.CT tu 1033616102 TRAN QUOC SANG toi 28349817 PHAM HOANG TUAN tai ACB GD 041900-082123 00:29:15', '2023-08-21 00:30:03'),
(1389, 'GGTPHAT20810', 'MOMO', '44138132791', '50000', 'naptien 20166', '2023-08-21 09:06:08'),
(1390, 'nguyen7777', 'ACB', '3749', '420000', 'naptien 22723 GD 581072-082123 22:31:13', '2023-08-21 22:32:03'),
(1391, 'GGKAOVODIC', 'ACB', '3750', '180000', 'MBVCB.4078022864.099243.naptien 22434.CT tu 1020222771 NGO THE CAO toi 28349817 PHAM HOANG TUAN tai ACB GD 099243-082223 14:25:40', '2023-08-22 14:26:02'),
(1392, 'GGKAOVODIC', 'ACB', '3751', '30000', 'MBVCB.4078177754.020782.naptien 22434.CT tu 1020222771 NGO THE CAO toi 28349817 PHAM HOANG TUAN tai ACB GD 020782-082223 14:51:36', '2023-08-22 14:53:03'),
(1393, 'GGNAMPC456', 'ACB', '3762', '80000', 'naptien 22835 GD 024083-082523 00:21:44', '2023-08-25 00:22:03'),
(1394, 'GGDATD11735', 'MOMO', '44331499733', '90000', 'naptien 22856', '2023-08-25 14:14:06'),
(1395, 'thehau', 'ACB', '3768', '150000', 'naptien 2431 GD 316834-082523 18:15:57', '2023-08-25 18:16:03'),
(1396, 'GG875136116', 'MOMO', '44413345096', '250000', 'naptien 11660', '2023-08-27 11:34:03'),
(1397, 'GGNGHIEMQUYEN52', 'ACB', '3774', '50000', 'naptien 19539 FT23240006036008 GD 010119-082723 12:06:58', '2023-08-27 12:07:07'),
(1398, 'sang088', 'MOMO', '44427743485', '45000', 'naptien 22673', '2023-08-27 17:58:06'),
(1399, 'GGBIHUYNH199X', 'MOMO', '44462096202', '2934000', 'naptien 22947', '2023-08-28 14:02:05'),
(1400, 'GGBIHUYNH199X', 'MOMO', '44462188062', '50000', 'naptien 22947', '2023-08-28 14:07:04'),
(1401, 'awesomeice99', 'MOMO', '44465124668', '699000', 'naptien 22898', '2023-08-28 15:20:06'),
(1402, 'GGBIGHITRAN1905', 'ACB', '3777', '900000', 'Naptien 22995 FT23241608737013 GD 136766-082923 17:17:39', '2023-08-29 17:17:07'),
(1403, 'GGTUANANH282009', 'ACB', '3778', '70000', 'naptien 22996 FT23242052038053 GD 994577-083023 12:00:07', '2023-08-30 12:00:17'),
(1404, 'GGTUANANH282009', 'ACB', '3779', '30000', 'naptien 22996 FT23242854694469 GD 003948-083023 12:03:29', '2023-08-30 12:03:14'),
(1405, 'GGTUANANH282009', 'ACB', '3780', '20000', 'naptien 22996 FT23242120706203 GD 026110-083023 12:11:13', '2023-08-30 12:11:07'),
(1406, 'GGKIRITOC201', 'MOMO', '44572494958', '20000', 'naptien 23038', '2023-08-30 23:19:05'),
(1407, 'GGKIRITOC201', 'MOMO', '44572808880', '100000', 'naptien 23038', '2023-08-30 23:23:07'),
(1408, 'GGKIRITOC201', 'MOMO', '44573563211', '100000', 'naptien 23038', '2023-08-31 00:02:03'),
(1409, 'GGKIRITOC201', 'MOMO', '44593063522', '30000', 'naptien 23038', '2023-08-31 12:44:07'),
(1410, 'lamthai', 'MOMO', '44594009310', '30000', 'naptien 19900', '2023-08-31 13:06:03'),
(1411, 'lamthai', 'MOMO', '44744155116', '770000', 'naptien 19900', '2023-09-03 12:27:04'),
(1412, 'lamthai', 'MOMO', '44747665363', '20000', 'naptien 19900', '2023-09-03 14:17:08'),
(1413, '005019218290', 'ACB', '3787', '30000', 'naptien 10093 GD 918645-090423 11:14:50', '2023-09-04 11:16:04'),
(1414, 'Edmen2005', 'MOMO', '44835365960', '100000', 'naptien 3648', '2023-09-05 11:31:11'),
(1415, 'Edmen2005', 'MOMO', '44839522473', '25000', 'naptien 3648', '2023-09-05 12:49:08'),
(1416, 'luongbe20022000', 'ACB', '3791', '50000', 'naptien 23200 GD 408107-090523 20:55:18', '2023-09-05 20:57:03'),
(1417, '000thienvoi12', 'ACB', '3792', '70000', 'naptien 23203 GD 049151-090523 21:05:19', '2023-09-05 21:07:03'),
(1418, '000thienvoi12', 'ACB', '3793', '80000', 'naptien 23203 GD 463245-090523 21:10:01', '2023-09-05 21:11:03'),
(1419, 'Hockhd', 'MOMO', '45014570204', '80000', 'naptien 23263', '2023-09-08 20:49:03'),
(1420, 'quanghuy20966', 'MOMO', '45200959875', '600000', 'naptien 23346', '2023-09-12 11:39:05'),
(1421, 'thuyencac2004t', 'ACB', '3811', '30000', 'naptien 23391 GD 278199-091323 11:31:28', '2023-09-13 11:33:03'),
(1422, 'thienhoang05', 'MOMO', '45266008469', '50000', 'naptien 3499', '2023-09-13 16:29:02'),
(1423, 'truongvu281125', 'ACB', '3815', '2000000', 'naptien 23432 GD 889339-091423 20:14:13', '2023-09-14 20:14:12'),
(1424, 'quocan120605', 'MOMO', '45506254261', '67000', 'naptien 23520', '2023-09-18 11:30:24'),
(1425, 'quocan120605', 'MOMO', '45511273725', '47000', 'naptien 23520', '2023-09-18 13:12:27'),
(1426, 'GGANHKHMER2001', 'ACB', '3828', '150000', 'MBVCB.4250452088.052217.Naptien 23570.CT tu 9392178116 NGUYEN VAN ANH toi 28349817 PHAM HOANG TUAN tai ACB GD 052217-091923 17:04:30', '2023-09-19 17:05:12'),
(1427, 'GGANHKHMER2001', 'ACB', '3829', '30000', 'MBVCB.4251050133.094083.Naptien 23570.CT tu 9392178116 NGUYEN VAN ANH toi 28349817 PHAM HOANG TUAN tai ACB GD 094083-091923 18:24:23', '2023-09-19 18:29:04'),
(1428, 'GGVANQ4714', 'ACB', '3830', '35000', 'naptien 23574 GD 026045-092023 00:13:45', '2023-09-20 00:14:06'),
(1429, 'chancon', 'ACB', '3831', '2900000', 'naptien 23585 GD 067111-092023 01:07:00', '2023-09-20 01:07:08'),
(1430, 'kea1126', 'ACB', '3832', '150000', 'naptien 23586 GD 003987-092023 01:44:57', '2023-09-20 01:48:06'),
(1431, 'kea1126', 'ACB', '3834', '45000', 'naptien 23586 GD 016438-092023 02:14:33', '2023-09-20 02:16:03'),
(1432, 'lamthai', 'MOMO', '45641300453', '300000', 'naptien 19900', '2023-09-20 22:37:06'),
(1433, 'GGHOANGLEE1207', 'ACB', '3845', '30000', 'naptien 21754 FT23268150390035 GD 492786-092423 06:17:57', '2023-09-24 06:19:10'),
(1434, 'hoawnglowg', 'MOMO', '45798932912', '86000', 'naptien 23095', '2023-09-24 11:00:15'),
(1435, 'huynhanhthang', 'MOMO', '45827830298', '110000', 'naptien 3308', '2023-09-24 22:56:16'),
(1436, 'huynhanhthang', 'MOMO', '45836539281', '30000', 'naptien 3308', '2023-09-25 07:42:16'),
(1437, 'GGTTAN2290', 'MOMO', '45842028118', '300000', 'naptien 18553', '2023-09-25 10:12:21'),
(1438, 'huynhanhthang', 'MOMO', '45879244268', '830000', 'naptien 3308', '2023-09-25 22:57:03'),
(1439, 'Phat12341234', 'MOMO', '45911308600', '20000', 'naptien 20113', '2023-09-26 17:04:17'),
(1440, 'chuduuu', 'ACB', '3850', '20000', 'Naptien 23744 GD 048038-092623 17:22:54', '2023-09-26 17:24:04'),
(1441, 'nhatlinh281199', 'MOMO', '45953408135', '120000', 'naptien 23783', '2023-09-27 15:49:09'),
(1442, 'nhatlinh281199', 'MOMO', '45955128161', '30000', 'naptien 23783', '2023-09-27 16:35:04'),
(1443, 'Phat12341234', 'MOMO', '45968330032', '33000', 'naptien 20113', '2023-09-27 21:26:02'),
(1444, 'h0xu0ng', 'ACB', '3855', '500000', 'MBVCB.4305308418.056755.naptien 23809.CT tu 0381000451256 LE THAI HOC toi 28349817 PHAM HOANG TUAN tai ACB GD 056755-092823 12:02:36', '2023-09-28 12:04:03'),
(1445, 'Cuong2k7', 'MOMO', '46058929896', '20000', 'naptien 23687', '2023-09-29 19:08:04'),
(1446, 'havietcuong2008', 'MOMO', '46094349026', '800000', 'naptien 23279', '2023-09-30 15:22:04');
INSERT INTO `napatm` (`id`, `username`, `hinhthuc`, `magd`, `sotien`, `ndnaptien`, `thoigian`) VALUES
(1447, 'minh nguyễn', 'MOMO', '46132782526', '20000', 'naptien 1768', '2023-10-01 11:16:04'),
(1448, 'tuanotis', 'MOMO', '46197909863', '220000', 'naptien 20619', '2023-10-02 16:17:04'),
(1449, 'brolaanh01', 'ACB', '3866', '150000', 'naptien 14901 GD 128167-100423 11:09:41', '2023-10-04 11:10:08'),
(1450, 'thangfotos', 'ACB', '3867', '300000', 'MBVCB.4346940342.075131.naptien 23768.CT tu 9843212345 NGUYEN DANG THANG toi 28349817 PHAM HOANG TUAN tai ACB GD 075131-100423 20:05:10', '2023-10-04 20:05:06'),
(1451, 'mrkent1107', 'ACB', '3868', '1000000', 'naptien 14719 GD 533351-100523 19:18:27', '2023-10-05 19:15:03'),
(1452, 'GGHIEUGIANGHO257', 'ACB', '3869', '100000', 'MBVCB.4355403226.038313.naptien 23924.CT tu 1040141528 TRUONG VAN HIEU toi 28349817 PHAM HOANG TUAN tai ACB GD 038313-100623 06:57:26', '2023-10-06 06:54:03'),
(1453, 'GGPHUNGMANHHAI7777', 'ACB', '3875', '50000', 'naptien 20573 GD 353781-100723 02:10:31', '2023-10-07 02:07:03'),
(1454, 'GGPHUNGMANHHAI7777', 'ACB', '3876', '64000', 'naptien 20573 GD 158012-100723 12:17:46', '2023-10-07 12:18:03'),
(1455, 'GGPHUNGMANHHAI7777', 'ACB', '3877', '12000', 'naptien 20573 GD 562920-100723 12:23:24', '2023-10-07 12:20:02'),
(1456, 'Scvno1', 'MOMO', '46561658206', '50000', 'naptien 24061', '2023-10-09 18:40:03'),
(1457, 'LNENDERMANVN', 'MOMO', '46630781604', '50000', 'naptien 12345', '2023-10-10 19:32:09'),
(1458, 'GGDATNGUYENVAN17111996', 'ACB', '3883', '600000', 'naptien 16990 GD 424889-101123 01:23:16', '2023-10-11 01:23:03'),
(1459, 'GGDATNGUYENVAN17111996', 'MOMO', '46646778220', '100000', 'naptien 16990', '2023-10-11 02:00:09'),
(1460, 'sang088', 'MOMO', '46798726567', '50000', 'naptien 22673', '2023-10-13 20:31:09'),
(1461, 'Hoan721', 'MOMO', '46924309311', '150000', 'naptien 24188', '2023-10-16 10:34:28'),
(1462, 'GGNAMPC456', 'ACB', '3893', '135000', 'naptien 22835 GD 970276-101723 21:01:19', '2023-10-17 21:16:23'),
(1463, 'Votu912', 'ACB', '3896', '60000', 'naptien 24258 GD 177979-101823 09:58:54', '2023-10-18 09:59:31'),
(1464, 'huynhhoa', 'MOMO', '47060343693', '20000', 'naptien 24105', '2023-10-18 21:43:17'),
(1465, 'Duytan1111', 'MOMO', '47092222723', '150000', 'naptien 18209', '2023-10-19 16:01:37'),
(1466, 'trumcuoibongtoi', 'ACB', '3902', '2900000', 'MBVCB.4457002151.072888.naptien 24296.CT tu 0381000543340 NGUYEN DUC DAT toi 28349817 PHAM HOANG TUAN tai ACB GD 072888-102023 16:28:43', '2023-10-20 16:30:14'),
(1467, 'GGHACKON247HACKING', 'ACB', '3910', '300000', 'naptien 24374 GD 585161-102323 10:41:07', '2023-10-23 10:42:12'),
(1468, 'GGTHIENTRAN1111999', 'ACB', '3912', '150000', 'IBFT naptien 23400 GD 907902-102423 11:27:36', '2023-10-24 11:29:27'),
(1469, 'nguyenxuanba88', 'ACB', '3914', '50000', 'naptien 23909 GD 087194-102423 20:13:25', '2023-10-24 20:14:17'),
(1470, 'GGHOANGLEE1207', 'ACB', '3915', '30000', 'naptien 21754 GD 164567-102423 20:50:45', '2023-10-24 20:51:17'),
(1471, 'havietcuong2008', 'ACB', '3917', '50000', 'naptien 23279 GD 363431-102523 08:51:32', '2023-10-25 08:57:04'),
(1472, '0978283203', 'ACB', '3925', '50000', 'naptien 24474 GD 848201-102823 13:30:44', '2023-10-28 13:32:17'),
(1473, '0978283203', 'ACB', '3927', '40000', 'naptien 24474 GD 899360-102823 14:28:55', '2023-10-28 14:29:42'),
(1474, '0978283203', 'ACB', '3928', '230000', 'naptien 24474 GD 934205-102823 15:04:58', '2023-10-28 15:06:20'),
(1475, 'GGPNTD1907', 'ACB', '3932', '89000', 'naptien 24060 GD 149372-102923 16:31:37', '2023-10-29 16:32:15'),
(1476, 'GGPNTD1907', 'ACB', '3933', '89000', 'naptien 24060 GD 204461-102923 16:43:15', '2023-10-29 16:44:14'),
(1477, 'GGPNTD1907', 'ACB', '3934', '25550', 'naptien 24060 GD 362249-102923 17:15:41', '2023-10-29 17:16:25'),
(1478, 'NguyenKhoi', 'ACB', '3935', '70000', 'MBVCB.4516397249.072103.naptien 24522.CT tu 1035761756 NGUYEN ANH KHOI toi 28349817 PHAM HOANG TUAN tai ACB GD 072103-102923 18:35:02', '2023-10-29 18:36:19'),
(1479, 'NguyenKhoi', 'ACB', '3936', '30000', 'MBVCB.4517052088.072946.naptien 24522.CT tu 1035761756 NGUYEN ANH KHOI toi 28349817 PHAM HOANG TUAN tai ACB GD 072946-102923 20:19:50', '2023-10-29 20:20:22'),
(1480, 'GGHOAIBAO0957', 'MOMO', '47779182937', '89000', 'naptien 22958', '2023-11-02 14:21:36'),
(1481, 'GGHOAIBAO0957', 'MOMO', '47780211031', '11000', 'naptien 22958', '2023-11-02 14:43:29'),
(1482, 'vukien2007', 'ACB', '3948', '50000', 'naptien 20414 GD 849789-110423 04:50:29', '2023-11-04 04:51:11'),
(1483, 'nhutbiu281201', 'MOMO', '47878107191', '20000', 'naptien 24584', '2023-11-04 11:09:36'),
(1484, 'khanhlinhne0101', 'MOMO', '47879967835', '110000', 'naptien 24585', '2023-11-04 11:47:30'),
(1485, 'GGTIEUTAVP1', 'MOMO', '47884475625', '80000', 'naptien 24555', '2023-11-04 13:14:26'),
(1486, 'GGNGUYENXUANTHINH12022', 'MOMO', '47965408484', '20000', 'naptien 24547', '2023-11-06 01:16:18'),
(1487, 'solomon1412', 'MOMO', '47994564827', '50000', 'naptien 24634', '2023-11-06 15:40:41'),
(1488, 'GGLPHU0238', 'MOMO', '48061124124', '80000', 'naptien 24671', '2023-11-07 19:46:43'),
(1489, 'phap9999', 'ACB', '3954', '100000', 'naptien 11503 GD 274555-110823 21:25:13', '2023-11-08 21:27:03'),
(1490, 'GGDANGBAONAM227', 'MOMO', '48117845515', '70000', 'naptien 24355', '2023-11-08 21:50:46'),
(1491, 'Hockhd', 'MOMO', '48123213728', '76000', 'naptien 23263', '2023-11-09 00:46:28'),
(1492, 'Hockhd', 'MOMO', '48134899639', '60000', 'naptien 23263', '2023-11-09 09:34:38'),
(1493, 'daoquyenanh2202', 'MOMO', '48542940054', '86000', 'naptien 24783', '2023-11-16 16:11:08'),
(1494, 'GG1545102978', 'MOMO', '49064840136', '30000', 'naptien 13294', '2023-11-26 23:30:09'),
(1495, 'Hoangmai780ttn', 'MOMO', '49722539163', '210000', 'naptien 20272', '2023-12-09 01:01:12'),
(1496, 'linhluu', 'MOMO', '49722640093', '50000', 'naptien 2027', '2023-12-09 01:05:06'),
(1497, 'Hoangmai780ttn', 'MOMO', '49744445046', '160000', 'naptien 20272', '2023-12-09 13:27:06'),
(1498, 'GGBACHNAM39', 'MOMO', '49791127019', '684000', 'naptien 25366', '2023-12-10 11:49:07'),
(1499, 'GGBACHNAM39', 'MOMO', '49801009389', '30000', 'naptien 25366', '2023-12-10 15:23:09'),
(1500, 'lephat', 'MOMO', '49936374471', '90000', 'naptien 25394', '2023-12-12 22:25:07'),
(1501, 'lephat', 'MOMO', '49936963268', '24000', 'naptien 25394', '2023-12-12 22:39:07'),
(1502, 'lephat', 'MOMO', '49939954490', '30000', 'naptien 25394', '2023-12-13 00:05:07'),
(1503, 'Hoangmai780ttn', 'MOMO', '50019426097', '10000', 'naptien 20272', '2023-12-14 16:03:11'),
(1504, 'khoikon43', 'MOMO', '50288882312', '60000', 'naptien 25568', '2023-12-19 21:43:08'),
(1505, 'GGGAYMONCUT', 'MOMO', '50388490388', '50000', 'naptien 25609', '2023-12-21 20:48:24'),
(1506, 'Laithuong26', 'MOMO', '50433470687', '18000', 'naptien 25420', '2023-12-22 19:32:19'),
(1507, 'Laithuong26', 'MOMO', '50433817356', '6000', 'naptien 25420', '2023-12-22 19:40:17'),
(1508, 'Laithuong26', 'MOMO', '50434053365', '40000', 'naptien 25420', '2023-12-22 19:44:16'),
(1509, 'Laithuong26', 'MOMO', '50434938210', '43000', 'naptien 25420', '2023-12-22 20:02:21'),
(1510, 'Laithuong26', 'MOMO', '50478440150', '80000', 'naptien 25420', '2023-12-23 18:46:14'),
(1511, 'GGTAINGUYEN28042007', 'MOMO', '50572079907', '84000', 'naptien 25642', '2023-12-25 19:08:11'),
(1512, 'GGMKTHUC', 'MOMO', '50988097128', '150000', 'naptien 16826', '2024-01-02 20:57:04'),
(1513, 'locprokuaceku', 'MOMO', '51318379894', '19000', 'naptien 24599', '2024-01-09 01:45:06'),
(1514, 'GGHMQCOLEN2019', 'MOMO', '52067959884', '50000', 'naptien 26303', '2024-01-22 22:13:06'),
(1515, 'GG851348229', 'MOMO', '52395853629', '685000', 'naptien 16156', '2024-01-29 10:18:06'),
(1516, 'GG851348229', 'MOMO', '52397197393', '30000', 'naptien 16156', '2024-01-29 10:54:05'),
(1517, 'daianvn', 'THESIEURE', '153e413', '80000', 'naptien 26234', '2024-02-01 00:29:03'),
(1518, 'lephat', 'THESIEURE', '82f6c4d', '13000', 'naptien 25394', '2024-02-01 00:29:05'),
(1519, 'tm7214', 'THESIEURE', '51677cd', '42000', 'naptien 25970', '2024-02-01 00:29:06'),
(1520, 'tm7214', 'THESIEURE', '743ffe2', '170000', 'naptien 25970', '2024-02-01 00:29:08'),
(1521, 'GGNHATPHAT8811', 'THESIEURE', '10106b8', '10000', 'naptien 24438', '2024-02-01 00:29:10'),
(1522, 'tamff168', 'THESIEURE', 'cb1cb7a', '15000', 'naptien 8660', '2024-02-01 00:29:12'),
(1523, '99provn02@gmail.com', 'THESIEURE', 'dd9a5e1', '150000', 'naptien 2293', '2024-02-01 00:29:13'),
(1524, 'PhuonggAnhh', 'ACB', '4116', '0', 'naptien 21651 GD 873620-013124 12:45:34', '2024-02-01 00:48:27'),
(1525, 'GGDVCDVC555', 'ACB', '4111', '0', 'DINH VAN CUONG chuyen khoan naptien 26434 GD 874114-012924 23:16:28', '2024-02-01 00:48:29'),
(1526, 'GGDVCDVC555', 'ACB', '4110', '0', 'DINH VAN CUONG chuyen khoan naptien 26434 GD 883249-012924 17:15:36', '2024-02-01 00:48:31'),
(1527, 'GGCHAUVAN52DUY', 'ACB', '4108', '0', 'naptien 20538 GD 857868-012624 08:25:08', '2024-02-01 00:48:33'),
(1528, 'Toanori', 'ACB', '4104', '0', 'naptien 3106 GD 347753-012124 18:11:45', '2024-02-01 00:48:35'),
(1529, 'darkboy', 'ACB', '4101', '0', 'naptien 20013 GD 496988-011924 20:37:03', '2024-02-01 00:48:36'),
(1530, 'gadingperson', 'ACB', '4099', '0', 'naptien 26209 FT24018423109207 GD 881998-011824 10:38:27', '2024-02-01 00:48:38'),
(1531, 'shopcuachinh', 'ACB', '4098', '0', ' naptien 1955 GD 396858-011424 10:47:31', '2024-02-01 00:48:40'),
(1532, 'thotran', 'ACB', '4097', '0', 'naptien 26106 GD 403431-011324 20:08:00', '2024-02-01 00:48:43'),
(1533, 'anhlasadboi', 'ACB', '4095', '0', 'naptien 24822 GD 481484-010824 12:43:49', '2024-02-01 00:48:45'),
(1534, 'trinhvy2112', 'MOMO', '52572091972', '30000', 'naptien 22255', '2024-02-01 13:49:06'),
(1535, 'LeTrong', 'ACB', '4120', '150000', 'naptien 4746 GD 802995-020224 09:45:11', '2024-02-02 11:55:32'),
(1536, 'Huydz03bao', 'ACB', '4119', '67000', 'naptien 25775 GD 145358-020224 08:51:41', '2024-02-02 11:55:34'),
(1537, 'GGHOQUOCKHANG00', 'MOMO', '52637097352', '100000', 'naptien 26516', '2024-02-02 13:34:06'),
(1538, 'hoang0quan1', 'MOMO', '52647040713', '50000', 'naptien 26270', '2024-02-02 15:46:05'),
(1539, 'GGTHIENDZ210505', 'MOMO', '52646373580', '3097000', 'naptien 26518', '2024-02-02 16:06:06'),
(1540, 'GGTHIENDZ210505', 'MOMO', '52648938423', '120000', 'naptien 26518', '2024-02-02 16:34:06'),
(1541, 'GGHOQUOCKHANG00', 'MOMO', '52674989946', '80000', 'naptien 26516', '2024-02-02 23:46:06'),
(1542, 'anhkhoabay', 'MOMO', '52706404087', '50000', 'naptien 12042', '2024-02-03 14:30:07'),
(1543, 'anhkhoabay', 'MOMO', '52707615429', '30000', 'naptien 12042', '2024-02-03 14:58:08'),
(1544, 'anhkhoabay', 'MOMO', '52742435987', '80000', 'naptien 12042', '2024-02-04 07:48:07'),
(1545, 'dungtanzdepzai', 'THESIEURE', 'cf7c69d', '15000', 'naptien 25300', '2024-02-04 12:27:03'),
(1546, 'GGPHUNGMANHHAI7777', 'MBBANK', 'FT24036102994080\\B82', '170000', 'CUSTOMER naptien 20573. TU: PHUNG MANH HAI', '2024-02-04 17:44:03'),
(1547, 'GGPHUNGMANHHAI7777', 'MBBANK', 'FT24036102994080\\B82', '170000', 'CUSTOMER naptien 20573. TU: PHUNG MANH HAI', '2024-02-04 17:45:04'),
(1548, 'GGPHUNGMANHHAI7777', 'MBBANK', 'FT24036102994080\\B82', '170000', 'CUSTOMER naptien 20573. TU: PHUNG MANH HAI', '2024-02-04 17:46:03'),
(1549, 'GGPHUNGMANHHAI7777', 'MBBANK', 'FT24036102994080\\B82', '170000', 'CUSTOMER naptien 20573. TU: PHUNG MANH HAI', '2024-02-04 17:47:03'),
(1550, 'GGPHUNGMANHHAI7777', 'MBBANK', 'FT24036102994080\\B82', '170000', 'CUSTOMER naptien 20573. TU: PHUNG MANH HAI', '2024-02-04 17:48:04'),
(1551, 'GGPHUNGMANHHAI7777', 'MBBANK', 'FT24036102994080\\B82', '170000', 'CUSTOMER naptien 20573. TU: PHUNG MANH HAI', '2024-02-04 17:49:03'),
(1552, 'nhathaobxcy', 'MOMO', '52790485619', '800000', 'naptien 16135', '2024-02-05 00:44:06'),
(1553, 'dovanhuy', 'MBBANK', 'FT24044920380068', '3500000', 'CUSTOMER naptien 26676. TU: DO VAN HUY', '2024-02-13 20:15:02'),
(1554, 'Huydz03bao', 'MBBANK', 'FT24044040538832', '50000', 'CUSTOMER naptien 25775- Ma GD ACSP FK139621', '2024-02-13 20:15:03'),
(1555, 'adminori', 'MBBANK', 'FT24045498904730', '20000', 'CUSTOMER MBVCB.5305909631.024342.naptien 16. CT tu 1027236393 PHAM HOANG TUAN to i 259876543210 PHAM HOANG TUAN tai  MB- Ma GD ACSP xb024342', '2024-02-13 20:38:02'),
(1556, 'tuanori', 'MBBANK', 'FT24045032805266', '110000', 'CUSTOMER Thanh toan QR-naptien 26698. TU: TONG PHU DOANH', '2024-02-14 11:53:03'),
(1557, 'NeyoshiHD', 'MBBANK', 'FT24045100756004', '90000', 'CUSTOMER Thanh toan QR-naptien 26708. TU: NGUYEN VIET HOANG', '2024-02-14 18:18:03'),
(1558, 'NeyoshiHD', 'MBBANK', 'FT24045270214713', '115500', 'CUSTOMER Thanh toan QR-naptien 26708. TU: NGUYEN VIET HOANG', '2024-02-14 18:25:02'),
(1559, 'tuanorivdtest', 'MBBANK', 'FT24046747892673', '200000', 'CUSTOMER MBVCB.5309609073.068002.naptien 26711.CT tu 1027236393 PHAM HOANG TUAN  toi 259876543210 PHAM HOANG TUAN t ai MB- Ma GD ACSP fz068002', '2024-02-14 19:33:11'),
(1560, 'Zipcodevip', 'MBBANK', 'FT24046900592673', '50000', 'CUSTOMER MBVCB.5309972372.039098.naptien2671 4.CT tu 1027236393 PHAM HOANG TUAN  toi 259876543210 PHAM HOANG TUAN ta i MB- Ma GD ACSP qp039098', '2024-02-14 20:50:02'),
(1561, 'ekkomain', 'MOMO', '53300570828', '50000', 'NAP25141', '2024-02-14 21:33:05'),
(1562, 'NeyoshiHD', 'MBBANK', 'FT24046290511199', '400000', 'CUSTOMER Thanh toan QR-NAP26708. TU: NGUYEN VIET HOANG', '2024-02-15 12:31:02'),
(1563, 'NeyoshiHD', 'MBBANK', 'FT24046510850332', '135000', 'CUSTOMER Thanh toan QR-NAP26708. TU: NGUYEN VIET HOANG', '2024-02-15 15:32:02'),
(1564, 'GGVIETGOSSIP2209', 'MBBANK', 'FT24047609467094', '20000', 'CUSTOMER Thanh toan QR-NAP26723. TU: HOANG VIET ANH', '2024-02-16 10:25:02'),
(1565, 'tuanori', 'MOMO', '18505998875', '100000', 'naptien 1', '2024-02-19 00:03:51'),
(1566, 'tuanori', 'MBBANK', 'FT21154769354320', '10000', 'naptien 1', '2024-02-19 00:07:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `napcard`
--

CREATE TABLE `napcard` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `loaithe` varchar(250) DEFAULT NULL,
  `menhgia` varchar(250) DEFAULT NULL,
  `pin` varchar(250) DEFAULT NULL,
  `seri` varchar(250) DEFAULT NULL,
  `thucnhan` varchar(250) NOT NULL,
  `requestid` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `uptime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `napcard`
--

INSERT INTO `napcard` (`id`, `username`, `loaithe`, `menhgia`, `pin`, `seri`, `thucnhan`, `requestid`, `status`, `thoigian`, `uptime`) VALUES
(1, 'tuanori', 'VIETTEL', '50000', '658978954652122', '65897895465212', '43000', '26309869521', 'thanhcong', '2024-02-16 01:02:18', '2024-02-17 22:45:57'),
(2, 'tuanori', 'VIETTEL', '100001111', '789546587989823', '78954658798981', '86002323', '16789427576', 'thatbai', '2024-02-16 01:03:36', '2024-02-17 16:11:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `key` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `key`, `value`) VALUES
(1, 'title', 'TUANORI.COM- Chuyên thiết kế website Bán Acc Game, chuẩn SEO, chuyên nghiệp, tích hợp công nghệ CHỐNG CLICK TẶC ADWORD ✅. Đội ngũ hỗ trợ nhiệt tình nhất'),
(2, 'mota', 'Dịch vụ thiết kế website theo yêu cầu, mua bán mã nguồn, dịch vụ uy tín, hỗ trợ nhiệt tình. Đội ngũ chăm sóc khách hàng 24/24'),
(3, 'tukhoa', 'hack pubg mobile | hack pubg android | hack tốc chiến | tool pubg | tool pubg mobile | hack pubg ios | undetected pc hacks | aimbot esp radar cheats | hack pubg mobile | hack pubg mb | hack pubg | tool pubg | thue hackpubg | thue tool pubg | pubg mobile | pubg mobile giả lập | hack ring of eysium | ring of eysium esp | thuê hack roe'),
(4, 'logo', 'https://i.imgur.com/hZtJSf2.png'),
(5, 'email', 'cskh@tuanori.vn'),
(6, 'pass_email', 'Tuan2019@'),
(7, 'noidung_naptien', 'naptien '),
(8, 'thongbao', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><img src=\"https://i.imgur.com/HNj8Njk.gif\" style=\"width:30px\"></span><span style=\"font-size:22px\"><strong><span style=\"color:#ff0000\">ẤN </span>\r\n                                        </strong>\r\n                                        </span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:20.0pt\"><span style=\"color:red\">NẠP : <a href=\"dangnhap.html\" style=\"color:blue; text-decoration:underline\"><span style=\"color:red\">TH</span><span style=\"color:red\">Ẻ</span><span style=\"color:red\"> CÀO</span>\r\n                                        </a> | <a href=\"/\" style=\"color:blue; text-decoration:underline\"><span style=\"color:red\">ATM T</span><span style=\"color:red\">Ự</span><span style=\"color:red\"> Đ</span><span style=\"color:red\">Ộ</span><span style=\"color:red\">NG</span></a> | <a href=\"/\" style=\"color:blue; text-decoration:underline\"><span style=\"color:red\">MOMO</span></a>\r\n                                        </span>\r\n                                        </span>\r\n                                        </strong>\r\n                                        </span>\r\n                                        </span><span style=\"font-size:20px\"><img src=\"https://i.imgur.com/HNj8Njk.gif\" style=\"width:30px\"></span>\r\n                                    </p>\r\n\r\n                                    <p style=\"text-align:center\"><span style=\"font-size:26px\"><strong><a href=\"category/hax-pubg-mobile.html\"><span style=\"color:#ff9933\">PUBG MOBILE</span>\r\n                                        </a><span style=\"color:#ff9933\"> - </span><a href=\"category/hax-lien-quan-mobile.html\"><span style=\"color:#ff9933\">LIÊN QUÂN</span></a><span style=\"color:#ff9933\"> - </span><a href=\"category/hax-game-pc.html\"><span style=\"color:#ff9933\">GAME PC</span></a>\r\n                                        </strong>\r\n                                        </span>\r\n                                    </p>\r\n\r\n                                    <p style=\"text-align:center\"><span style=\"font-size:26px\"><strong><img src=\"https://i.imgur.com/wB2HMTy.gif\" style=\"height:30px; width:30px\"> <span style=\"font-family:Calibri,sans-serif\"><span style=\"color:red\">NHÓM SUPPORT</span></span> : <a href=\"https://zalo.me/g/rmldxe858\">JOIN ZALO</a> - <a href=\"https://discord.gg/4fgpnwTq\">JOIN DISCORD</a>\r\n                                        </strong>\r\n                                        </span>\r\n                                    </p>\r\n\r\n                                    <p style=\"text-align:center\"><span style=\"font-size:26px\"><strong><img src=\"https://i.imgur.com/wB2HMTy.gif\" style=\"width:30px\"> <span style=\"font-family:Calibri,sans-serif\"><span style=\"color:red\">GIAO LƯU - CỘNG ĐỒNG</span></span> : <a href=\"https://zalo.me/g/xqpyin839\"><span style=\"color:#2ecc71\">ZALO</span></a><span style=\"color:#2ecc71\"> - </span><a href=\"https://www.facebook.com/groups/310248023534230\"><span style=\"color:#2ecc71\">FACEBOOK</span></a><span style=\"color:#2ecc71\"> - </span><a href=\"https://t.me/r90hax\"><span style=\"color:#2ecc71\">TELE</span></a>\r\n                                        </strong>\r\n                                        </span>\r\n                                    </p>\r\n\r\n                                    <p style=\"text-align:center\"><span style=\"font-size:26px\"><strong><a href=\"https://www.tiktok.com/@r90haxreview\">CHANEL TIKTOK</a> - <a href=\"https://www.youtube.com/channel/UChAu2YgLcdJZfXIt-YDNfGA\">CHANEL YOUTBE</a></strong></span>\r\n                                    </p>'),
(9, 'anhbia', 'https://i.imgur.com/74qInK4.jpg'),
(10, 'banner1', 'https://i.imgur.com/2F8fuAi.png'),
(11, 'tiengiahan', '30000'),
(12, 'fbadmin', 'https://facebook.com/phamhoangtuan.ytb'),
(13, 'ytbadmin', 'https://www.youtube.com/@TuanOriITv2'),
(14, 'partner_id', '1'),
(15, 'partner_key', '2'),
(16, 'ckcard', '30'),
(17, 'token_momo', '2'),
(18, 'token_bank', '1'),
(19, 'stk_bank', '2'),
(20, 'user_bank', 'TUANDZPRO'),
(21, 'mk_bank', '3'),
(22, 'loaibank', 'MBBANK'),
(23, 'favicon', 'https://tuanori.com/assets/img/favicon.ico'),
(24, 'stk_bank', '2'),
(25, 'mk_bank', '3'),
(26, 'status_napmomo', 'ON'),
(27, 'status_napbank', 'ON'),
(28, 'status_card', 'ON'),
(29, 'script_live_chat', ''),
(30, 'phone', '0812665001'),
(31, 'status_tele', 'OFF'),
(32, 'id_tele', '1'),
(33, 'key_tele', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `passwordc2` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(23) DEFAULT NULL,
  `money` bigint(20) DEFAULT 0,
  `total_money` bigint(20) DEFAULT 0,
  `level` varchar(20) DEFAULT NULL,
  `tokenlog` varchar(250) DEFAULT NULL,
  `timereg` datetime DEFAULT NULL,
  `timeon` datetime DEFAULT NULL,
  `online` varchar(250) DEFAULT 'OFFLINE',
  `banned` varchar(250) DEFAULT 'ON',
  `ip` varchar(250) DEFAULT NULL,
  `user_agent` varchar(250) DEFAULT NULL,
  `token_resetpas` varchar(250) DEFAULT NULL,
  `reason_banned` text DEFAULT NULL,
  `discount` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `passwordc2`, `email`, `phone`, `money`, `total_money`, `level`, `tokenlog`, `timereg`, `timeon`, `online`, `banned`, `ip`, `user_agent`, `token_resetpas`, `reason_banned`, `discount`) VALUES
(1, 'tuanori', '8be9afa4ac293015623c5711cccbf30f', '8be9afa4ac293015623c5711cccbf30f', 'anhquat644@gmail.com', NULL, 573000, 653000, 'admin', 'cc7243d7d7d230aea01ec4f5dad71dc64fd6d88d0b9d355a61', '2024-02-16 22:36:38', '2024-02-19 00:28:23', 'ONLINE', 'ON', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '54f3af9070bd17a535aeed23998bbd7de286b3d0ff549d89c5', '', 0),
(2, 'phttuan', '4f7b8dd2e843c26d7904636ce391e8ef', NULL, 'phttuan@gmail.com', '0812665001', 30000, 0, 'member', 'c407a780ad0398e61ee3136076fcb292d36832f515328936da', '2024-02-17 23:41:56', '2024-02-17 23:42:47', 'ONLINE', 'ON', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `biendongsodu`
--
ALTER TABLE `biendongsodu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blockip`
--
ALTER TABLE `blockip`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories_sp`
--
ALTER TABLE `categories_sp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_goi`
--
ALTER TABLE `category_goi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ck_card`
--
ALTER TABLE `ck_card`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listbank`
--
ALTER TABLE `listbank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_key`
--
ALTER TABLE `list_key`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ls_mua`
--
ALTER TABLE `ls_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `napatm`
--
ALTER TABLE `napatm`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `napcard`
--
ALTER TABLE `napcard`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `biendongsodu`
--
ALTER TABLE `biendongsodu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `blockip`
--
ALTER TABLE `blockip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories_sp`
--
ALTER TABLE `categories_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `category_goi`
--
ALTER TABLE `category_goi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ck_card`
--
ALTER TABLE `ck_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `listbank`
--
ALTER TABLE `listbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `list_key`
--
ALTER TABLE `list_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ls_mua`
--
ALTER TABLE `ls_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `napatm`
--
ALTER TABLE `napatm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1567;

--
-- AUTO_INCREMENT cho bảng `napcard`
--
ALTER TABLE `napcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
