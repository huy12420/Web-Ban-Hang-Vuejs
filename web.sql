-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220510.314f251104
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 14, 2022 lúc 09:39 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetails`
--

CREATE TABLE `billdetails` (
  `bill_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billstatus`
--

CREATE TABLE `billstatus` (
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bill_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill_when` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill_discount` int(11) DEFAULT NULL,
  `bill_delivery` int(11) DEFAULT NULL,
  `bill_total` int(11) DEFAULT NULL,
  `bill_paid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `TOTAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`ID`, `UID`, `TOTAL`) VALUES
(1, 1, 6037);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_detail`
--

CREATE TABLE `cart_detail` (
  `CID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `QUANLITY` int(11) NOT NULL,
  `TOTAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`CID`, `PID`, `QUANLITY`, `TOTAL`) VALUES
(1, 1, 2, 6000),
(1, 2, 2, 30),
(1, 19, 1, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_src` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_price`, `item_desc`, `item_type`, `item_category`, `item_src`) VALUES
(1, 'Gucci Snake', '1800', 'Luxury Snake bag', 'Bag', 'Bag', 'taco/item1.jpg'),
(2, 'Gucci Shoulder Bag', '999', 'Horsebit 1955 GG Mini shoulder bag', 'Bag', 'Bag', 'taco/item5.jpg'),
(3, 'Gucci Shoulder Bag', '988', 'Gucci Blondie Small shoulder bag', 'Bag', 'Bag', 'taco/item4.jpg'),
(4, 'Gucci Big Bag', '2999', 'ELEMENTAL earth bag', 'bag', 'bag', 'taco/item6.jpg'),
(5, 'Gucci Supreme', '1999', 'Supreme Colab BackPack', 'Bag', 'Bag', 'taco/item7.jpg'),
(6, 'Gucci Neutrals Bag', '9999', 'L\'Aveugle Par Amour Embroidered Double Buckle Backpack', 'bag', 'bag', 'taco/item8.jpg'),
(7, 'Snake Shirt', '799', 'Snake Collection', 'Shirt', 'Shirt', 'taco/shirt1.jpg\r\n'),
(8, 'SSenS Shirt ', '999', 'Gucci Bird Of Prey', 'Shirt', 'Shirt', 'taco/Shirt2.jpg'),
(9, 'Gucci Flora Snake', '699', 'FLora Snake Collection', 'Shirt', 'Shirt ', 'taco/shirt3.jpg'),
(10, 'Gucci Silk Bowling', '899', 'Gucci Silk Bowling ', 'shirt', 'shirt', 'taco/shirt4.jpg'),
(11, 'Snake Polo', '699', 'Snake Collection', 'Polo', 'Polo', 'taco/shirt5.jpg'),
(12, 'Basic Light Blue Shirt', '499', 'Basic Light Blue Shirt', 'Shirt', 'Shirt', 'taco/shirt6.jpg'),
(13, 'Women Flora Shirt ', '899', 'Flora Collection', 'Shirt', 'shirt', 'taco/women1.jpg'),
(14, 'Black Women Shirt', '799', 'Stride Black Shirt', 'Shirt', 'Shirt', 'taco/women2.jpg'),
(15, 'Women Cardigan', '1099', 'Gucci Standard Cardigan', 'Cardigan', 'Cardigan', 'taco/women3.jpg'),
(16, 'Gucci Monogram Cardigan', '2999', 'Reversible Interlocking G Cardigan', 'Cardigan', 'Cardigan', 'taco/women4.jpg'),
(17, 'Gucci Black Jacket ', '8999', 'Women Black Jacket', 'jacket', 'jacket', 'taco/women5.jpg'),
(18, 'SSenS Women Jacket ', '10000', 'SSenS Collection Jacket', 'jacket', 'jacket', 'taco/women6.jpg'),
(19, 'Gucci Standard Shoes', '1999', 'Basic Shoes From Gucci', 'Shoes', 'Shoes', 'taco/shoe1.jpg'),
(20, 'Gucci Tiger Mullet ', '1999', 'Tiger Collection Mullet', 'Mullet', 'Mullet', 'taco/shoe2.jpg'),
(21, 'Gucci High Basic Sneaker', '899', 'Basic Shoes From Gucci', 'Shoe', 'Shoe', 'taco/shoe3.jpg'),
(22, 'Black Sneaker', '399', 'Basic Black Sneaker', 'Shoes', 'Shoes', 'taco/shoe4.jpg'),
(23, 'Gucci Monogram Sandle', '399', 'Gucci Monogram Collection', 'Sandle', 'Sandle', 'taco/shoe5.jpg'),
(24, 'Gucci High Monogram Sneaker', '599', 'Gucci High Monogram Sneaker', 'Shoes', 'Shoes', 'taco/shoe6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_password`, `user_birth`, `user_gender`) VALUES
(1, 'Pham VI', 'vi@gmail.com', '842112001222', 'Giahuy211@', '2000-10-31', 'female');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `billdetails`
--
ALTER TABLE `billdetails`
  ADD PRIMARY KEY (`bill_id`,`item_id`);

--
-- Chỉ mục cho bảng `billstatus`
--
ALTER TABLE `billstatus`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`CID`,`PID`);

--
-- Chỉ mục cho bảng `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



