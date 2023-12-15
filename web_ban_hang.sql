-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 11:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_ban_hang_thoi_trang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `number_phone` varchar(11) NOT NULL,
  `level_admin` int(1) NOT NULL,
  `banned` int(1) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `cookie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`id`, `user_name`, `pass_word`, `full_name`, `email`, `address`, `number_phone`, `level_admin`, `banned`, `create_date`, `cookie`) VALUES
(1, 'admin1', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Thành Đạt', 'dat123@gmail.com', 'Cầu Giấy', '0317231823', 1, 0, '2023-11-01 11:09:26', 'fq&TT@nIu4WLQ6kWtTzc7#X&Wxj^HTjIO5OAdd2Z1775@o%Pxvplcs1iD#Dr$3xW4xg4uYvz7##uHbVclk#lD3ynwS%%I4HA5s1R%KcwYbg&j&mD^l%M2lMv$xToQh&YKaNptenM3tLtacskHrw&bu;1;1'),
(2, 'admin2', 'c4ca4238a0b923820dcc509a6f75849b', 'Trần Bình Minh', 'Minh@gmail.com', 'Cầu Giấy', '0128317211', 0, 0, '2023-10-30 23:00:19', '6XwE@j8Zms%toby5J$nCzPSnBKHf4RYOUZD@f22rpzaJeWyVedH%rtjgWEKEd$PcSXSUakxEgjHIOwGVqb3dFd32zBPLEG4N$yxjknnbyaOx%LJXWWuXl&Cicf6r5fYdyGGDiM&Kl&LVFYNCol3A3g;2;0'),
(3, 'admin3', 'c4ca4238a0b923820dcc509a6f75849b', 'Tạ Hải An', 'an1@gmail.com', 'Cầu Giấy', '0182318277', 0, 0, '2023-11-02 14:00:00', 'xA$heOMJV99dTQnejk1FZB9FGqTK^ekutXUAr8d37SYYiR8NLMTFopk75SJQIpdSDCSX%KtaaFdyw7x8X^2jSe@S&e%gMdjr8WVPNHtIMnX&yYAWSM8wD%5oGZIFJvgOot$1zNZklgyAP4@zaS9c%eUp#k1G5%zHH#&oS$$6kLmULtupneCScLMOJBU@9%&X6xi3nond');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `status`, `create_at`, `update_at`, `status_delete`) VALUES
(112, 'Quần Jean Nam', 'Quan-Jean-Nam', 'Hiển Thị', '2023-10-16 10:26:44', '0000-00-00 00:00:00', 1),
(113, 'Áo Thun Nam', 'Ao-Thun-Nam', 'Hiển Thị', '2023-10-16 10:27:00', '0000-00-00 00:00:00', 0),
(114, 'Áo Sơ Mi Nam', 'Ao-So-Mi-Nam', 'Hiển Thị', '2023-10-16 10:27:19', '0000-00-00 00:00:00', 0),
(115, 'Quần KaKi Nam', 'Quan-KaKi-Nam', 'Hiển Thị', '2023-10-16 10:27:37', '0000-00-00 00:00:00', 0),
(116, 'Quần Short', 'Quan-Short', 'Hiển Thị', '2023-10-16 10:28:08', '0000-00-00 00:00:00', 0),
(117, 'Đồ Gia Đình', 'Do-Gia-Dinh', 'Hiển Thị', '2023-10-16 10:28:50', '0000-00-00 00:00:00', 0),
(118, 'Áo Thun Nữ', 'Ao-Thun-Nu', 'Hiển Thị', '2023-10-16 10:30:17', '0000-00-00 00:00:00', 1),
(119, 'Áo Sơ Mi Nữ', 'Ao-So-Mi-Nu', 'Hiển Thị', '2023-10-16 11:16:12', '0000-00-00 00:00:00', 0),
(120, 'Đầm, Váy', 'Dam,-Vay', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 0),
(122, 'Đồ Thể Thao', 'Do-The-Thao', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 0),
(123, 'Áo Ấm', 'Ao-Am', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 0),
(124, 'Áo Khoác', 'Ao-Khoac', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 0),
(125, 'Áo Phông', 'Ao-Phong', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 0),
(126, 'Phước', 'Phuoc', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 1),
(127, 'TEST', 'TEST', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 1),
(128, 'áo đá banh', 'ao-da-banh', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 1),
(129, 'áo đá banh', 'ao-da-banh', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 1),
(130, 'áo đá banh', 'ao-da-banh', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 1),
(131, 'áo đá banh', 'ao-da-banh', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 1),
(132, 'Sharecode.vn', 'Sharecode-vn', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 1),
(138, 'Áo Thun Nam', 'ao-thun-nam', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 0),
(139, 'test', 'test', 'Hiển Thị', '2023-10-16 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment_product`
--

CREATE TABLE `comment_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name_user` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `name_product`, `product_id`, `quantity`, `unit_price`) VALUES
(123, 'Áo Khoác nữ hoodie', 56, 1, 124000);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_mony` double DEFAULT NULL,
  `status_recieve` varchar(20) NOT NULL,
  `cancel_order` int(11) NOT NULL,
  `delete_order` int(11) NOT NULL,
  `id_personnel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `user_id`, `create_at`, `name`, `address`, `phone_number`, `status`, `total_mony`, `status_recieve`, `cancel_order`, `delete_order`, `id_personnel`) VALUES
(123, 1, '2023-11-29 21:40:19', 'Lê Thành Đạt', 'Cầu Giấy', '0813721781', 'Đã Nhận Hàng', 159000, 'true', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img_product` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `descrip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `production_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name_category` varchar(255) NOT NULL,
  `pay` int(11) NOT NULL,
  `sale_product` int(10) NOT NULL,
  `status_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `img_product`, `quantity`, `descrip`, `production_company`, `create_at`, `update_at`, `category_id`, `name_category`, `pay`, `sale_product`, `status_delete`) VALUES
(53, 'Quần Jean Nam', 199999, '4.jpg', 49, 'Chất liệu vải tốt, đẹp thể hiện đẳng cấp đàn ông', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 37, 15, 1),
(55, 'Áo ấm nam lông cừu', 400000, 'ao-am-nam-long-cuu.jpg', 60, 'Áo khoác nam quân sự hàng xịn chuẩn quân đội', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 123, 'Áo Ấm', 10, 5, 0),
(56, 'Áo Khoác nữ hoodie', 155000, 'ao-khoac-ni-hoodie.jpg', 59, 'Chất liệu vải mềm, rất ấm', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 124, 'Áo Khoác', 9, 20, 0),
(57, 'Áo thun nữ', 35000, '1.jpg', 60, 'Chất liệu vải tốt, rộng thoáng mát', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 2, 25, 1),
(58, 'Áo thun nữ', 39000, 'ao-thun-ao-phong-nu-eiffel-ca-tinh-msat28-1m4G3-LpJZdC_simg_d0daf0_800x1200_max.jpg', 60, 'Mặc rộng thoáng mát', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 15, 50, 1),
(59, 'Áo thun nữ', 50000, 'ao-thu-ngua-mini-1m4G3-57c588_simg_d0daf0_800x1200_max.jpg', 50, 'Chống nắng', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 3, 10, 1),
(61, 'Quần KaKi Nam', 50000, 'cu-cai-quan-kaki-thun-jogger-thoi-trang-mau-kem-qg06-1m4G3-7ec3c2_simg_d0daf0_800x1200_max.jpg', 50, 'đẹp', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 2, 50, 0),
(63, 'Quần Jean Nam', 200000, 'quan-jean-nam1.png', 49, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG ', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 10, 10, 1),
(64, 'Quần Jean Nam', 210000, 'quan-jean-nam2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG ', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 0, 10, 1),
(65, 'Quần Jean Nam', 250000, 'quan-jean-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG ', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 0, 10, 1),
(66, 'Quần Jean Nam', 500000, 'quan-jean-nam5.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 112, 'Quần Jean Nam', 1, 25, 1),
(67, 'Áo Thun Nam', 60000, 'ao-thun-nam1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(68, 'Áo Thun Nam', 70000, 'ao-thun-nam2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(69, 'Áo Thun Nam', 80000, 'ao-thun-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(70, 'Áo Thun Nam', 90000, 'ao-thun-nam4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(71, 'Áo Thun Nam', 50000, 'ao-thun-nam5.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(72, 'Áo Thun Nam', 55000, 'ao-thun-nam6.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 113, 'Áo Thun Nam', 0, 10, 0),
(73, 'Áo Sơ Mi Nam', 55000, 'ao-so-mi-nam1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(74, 'Áo Sơ Mi Nam', 65000, 'ao-so-mi-nam2.jpeg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 1, 10, 0),
(75, 'Áo Sơ Mi Nam', 75000, 'ao-so-mi-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(76, 'Áo Sơ Mi Nam', 85000, 'ao-so-mi-nam4.jpeg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(77, 'Áo Sơ Mi Nam', 95000, 'ao-so-mi-nam5.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(78, 'Áo Sơ Mi Nam', 45000, 'ao-so-mi-nam-phong-cach-phoi-mau-1m4G3-BSZiod.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 114, 'Áo Sơ Mi Nam', 0, 10, 0),
(79, 'Quần KaKi Nam', 450000, 'quan-kaki-nam-lich-lam-1m4G3-NvjQo7_simg_d0daf0_800x1200_max.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 0, 10, 0),
(80, 'Quần KaKi Nam', 460000, 'quan-kaki-nam2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 1, 10, 0),
(81, 'Quần KaKi Nam', 470000, 'quan-kaki-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 0, 10, 0),
(82, 'Quần KaKi Nam', 480000, 'quan-kaki-nam4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 115, 'Quần KaKi Nam', 0, 10, 0),
(83, 'Quần Short', 52000, 'quan-short-nam1.jpeg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(84, 'Quần Short', 62000, 'quan-short-nam2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(85, 'Quần Short', 72000, 'quan-short-nam3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(86, 'Quần Short', 82000, 'quan-short-nam4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(87, 'Quần Short', 92000, 'quan-short-nam5.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 116, 'Quần Short', 0, 10, 0),
(95, 'Áo Sơ Mi Nữ', 205000, 'ao-so-mi-nu-vien-co-hoa-31.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '2022-01-16 20:34:41', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(96, 'Áo Sơ Mi Nữ', 215000, 'ao-so-mi-nu1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '2022-01-16 20:34:11', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(97, 'Áo Sơ Mi Nữ', 255000, 'ao-so-mi-nu4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(98, 'Đồ Gia Đình', 59000, 'do-gia-dinh1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 117, 'Đồ Gia Đình', 0, 10, 0),
(99, 'Đồ Gia Đình', 69000, 'do-gia-dinh1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 117, 'Đồ Gia Đình', 0, 10, 0),
(100, 'Đồ Gia Đình', 79000, 'do-gia-dinh2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 117, 'Đồ Gia Đình', 0, 10, 0),
(101, 'Áo Thun Nữ', 79000, 'ao-thun-nu1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 0, 10, 1),
(102, 'Áo Thun Nữ', 89000, 'do-gia-dinh2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 118, 'Áo Thun Nữ', 0, 10, 1),
(103, 'Áo Sơ Mi Nữ', 89000, 'ao-so-mi-nu1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(104, 'Áo Sơ Mi Nữ', 99000, 'ao-so-mi-nu2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 119, 'Áo Sơ Mi Nữ', 0, 10, 0),
(106, 'Váy', 199000, 'dam-vay-nu1.jpg', 60, 'Chất liệu vải đẹp', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(107, 'Váy', 299999, 'dam-vay-nu2.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(108, 'Váy', 255000, 'dam-vay-nu1.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(109, 'Váy', 265000, 'dam-vay-nu3.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(110, 'Váy', 275000, 'dam-vay-nu4.jpg', 60, 'Chất liệu vải tốt', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 120, 'Đầm, Váy', 0, 10, 0),
(111, 'Áo Len Nữ', 200000, 'ao-len-nu.jpg', 60, '11', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 125, 'Áo Phông', 1, 10, 0),
(112, 'áo dài', 200000, 'conong.png', 60, '.ccc', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '2022-01-20 22:32:31', 113, 'Áo Thun Nam', 0, 10, 1),
(113, 'TEST1', 200000, 'tien1.jpg', 60, 'kjkmmk', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 127, 'TEST', 0, 10, 1),
(114, 'TEST2', 500000, 'tien2.jpg', 60, 'huhuhuhu', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 127, 'TEST', 0, 10, 1),
(115, 'quần thun', 200000, '6.jpg', 60, 'èooe', 'phước', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 125, 'Áo Phông', 0, 10, 1),
(116, 'quần thun', 200000, 'h1.png', 60, 'ìeiejeije', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 125, 'Áo Phông', 0, 10, 1),
(117, 'Quần Short', 500000, '5.jpg', 60, 'kk', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 1, '', 0, 10, 0),
(118, 'Quần Short', 500000, '246824978_3013829235559521_1342044413971316351_n.jpg', 60, 'knknnk', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 1, '', 0, 1000, 1),
(119, 'Sharecode.vn', 10000, 'login.png', 60, 'sharecode.vn', 'Công Ty TNHH PHUOCMG', '2023-10-20 00:00:00', '0000-00-00 00:00:00', 132, 'Sharecode.vn', 0, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name_slider` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `slider_img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name_slider`, `slider_img`, `create_at`, `update_at`, `status`) VALUES
(12, '1', '1.jpg', '2023-11-10 15:33:22', '0000-00-00 00:00:00', 'Hiển Thị'),
(13, '2', '2.jpg', '2023-11-12 15:33:33', '0000-00-00 00:00:00', 'Hiển Thị');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email_account` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `active_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`id`, `name`, `email_account`, `pass_word`, `phone_number`, `address_user`, `create_at`, `update_at`, `active_status`) VALUES
(1, 'Lê Thành Đạt', 'dat123@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0813721781', 'Cầu Giấy', '2023-11-04 19:55:43', '0000-00-00 00:00:00', 'Hoạt Động'),
(2, 'Trần Bình Minh', 'Minh@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0845151117', 'Cầu Giấy', '2023-11-07 09:34:58', '0000-00-00 00:00:00', 'Hoạt Động'),
(3, 'An', 'an1@gmail.com', '202cb962ac59075b964b07152d234b70', '0845151117', 'Cầu Giấy', '2023-11-15 09:39:58', '0000-00-00 00:00:00', 'Hoạt Động');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_product`
--
ALTER TABLE `comment_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_personnel` (`id_personnel`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_product`
--
ALTER TABLE `comment_product`
  ADD CONSTRAINT `comment_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_product_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_account` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`id_personnel`) REFERENCES `admin_account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
