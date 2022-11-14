-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220510.314f251104
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 14, 2022 lúc 07:37 AM
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
(1, 'Gucci Bag', '3000', 'Luxury Bag', 'Bag', 'Bag', 'taco/taco-1.png'),
(2, 'shrimp tacos', '15.00', '03 pieces per serving', 'meat', 'taco', 'taco/taco-2.png'),
(3, 'barbacoa tacos', '12.00', '03 pieces per serving', 'meat', 'taco', 'taco/taco-3.png'),
(4, 'tacos al pastor', '13.00', '03 pieces per serving', 'meat', 'taco', 'taco/taco-4.png'),
(5, 'tinga tacos', '11.00', '03 pieces per serving', 'meat', 'taco', 'taco/taco-5.png'),
(6, 'campechanos tacos', '11.00', '03 pieces per serving', 'meat', 'taco', 'taco/taco-6.png'),
(7, 'carnitas tacos', '14.00', '03 pieces per serving', 'meat', 'taco', 'taco/taco-7.png'),
(8, 'vegan tacos', '9.00', '03 pieces per serving', 'vegan', 'taco', 'taco/taco-8.png'),
(9, 'wet burrito', '14.00', '01 roll per serving', 'meat', 'burrito', 'burrito/burrito-1.png'),
(10, 'poncho burrito', '15.00', '01 roll per serving', 'meat', 'burrito', 'burrito/burrito-2.png'),
(11, 'bean & cheese burrito', '14.00', '01 roll per serving', 'vegan', 'burrito', 'burrito/burrito-3.png'),
(12, 'breakfast burrito', '12.00', '01 roll per serving', 'meat', 'burrito', 'burrito/burrito-4.png'),
(13, 'california burrito', '14.00', '01 roll per serving', 'meat', 'burrito', 'burrito/burrito-5.png'),
(14, 'chimichanga', '12.00', '01 roll per serving', 'meat', 'burrito', 'burrito/burrito-6.png'),
(15, 'nacho tots', '12.00', '01 tray per serving', 'meat', 'nachos', 'nachos/nachos-1.png'),
(16, 'root beer pork nachos', '12.00', '01 tray per serving', 'meat', 'nachos', 'nachos/nachos-2.png'),
(17, 'shrimp nachos', '17.00', '01 tray per serving', 'meat', 'nachos', 'nachos/nachos-3.png'),
(18, 'chicken nachos', '11.00', '01 tray per serving', 'meat', 'nachos', 'nachos/nachos-4.png'),
(19, 'only nachos', '7.00', '01 tray per serving', 'vegan', 'nachos', 'nachos/nachos-5.png'),
(20, 'pico de gallo', '5.00', '01 bowl per serving', 'vegan', 'nachos', 'nachos/salsa-1.png'),
(21, 'salsa guille', '5.00', '01 bowl per serving', 'vegan', 'nachos', 'nachos/salsa-2.png'),
(22, 'tomatillo salsa', '5.00', '01 bowl per serving', 'vegan', 'nachos', 'nachos/salsa-3.png'),
(23, 'roasted tomato salsa', '5.00', '01 bowl per serving', 'vegan', 'nachos', 'nachos/salsa-4.png'),
(24, 'guacamole', '5.00', '01 bowl per serving', 'vegan', 'nachos', 'nachos/salsa-5.png'),
(25, 'corn salad', '5.00', '01 bowl per serving', 'vegan', 'sides', 'side/side-1.png'),
(26, 'keto taquitos', '9.00', '05 pieces per serving', 'meat', 'sides', 'side/side-2.png'),
(27, 'mexican rice', '5.00', '01 bowl per serving', 'vegan', 'sides', 'side/side-3.png'),
(28, 'cilantro lime rice', '5.00', '01 bowl per serving', 'vegan', 'sides', 'side/side-4.png'),
(29, 'chicken tortilla soup', '10.00', '01 bowl per serving', 'meat', 'sides', 'side/side-5.png'),
(30, 'Churros', '7.00', '05 pieces per serving', 'vegan', 'dessert', 'dessert/dessert-1.png'),
(31, 'Fried Ice Cream', '5.00', '01 piece per serving', 'vegan', 'dessert', 'dessert/dessert-2.png'),
(32, 'Dulce de Leche', '4.00', '01 bowl per serving', 'vegan', 'dessert', 'dessert/dessert-3.png'),
(33, 'Sweet Corn Cake', '4.00', '02 pieces per serving', 'vegan', 'dessert', 'dessert/dessert-4.png'),
(34, 'Sopapillas', '4.00', '10 pieces per serving', 'vegan', 'dessert', 'dessert/dessert-5.png'),
(35, 'Conchas', '5.00', '10 pieces per serving', 'vegan', 'dessert', 'dessert/dessert-6.png'),
(36, 'Horchata', '4.00', '01 glass per serving', 'vegan', 'dessert', 'dessert/dessert-7.png'),
(37, 'Margarita', '5.00', '01 glass per serving', 'vegan', 'drink', 'drink/drink-1.png'),
(38, 'Michelada', '5.00', '01 glass per serving', 'vegan', 'drink', 'drink/drink-2.png'),
(39, 'paloma', '5.00', '01 glass per serving', 'vegan', 'drink', 'drink/drink-3.png'),
(40, 'Atole', '5.00', '01 glass per serving', 'vegan', 'drink', 'drink/drink-4.png'),
(41, 'fruit detox', '3.00', '01 glass per serving', 'vegan', 'drink', 'drink/drink-5.png'),
(42, 'Coca cola', '3.00', '01 glass per serving', 'vegan', 'drink', 'drink/drink-6.png');

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



