-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 02, 2023 lúc 06:19 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `res`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `date`) VALUES
(1, 'admin', '4297f44b13955235245b2497399d7a93', '2023-11-29 07:45:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 2, 'Pink Spaghetti Gamberoni', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 21.00, '606d7491a9d13.jpg'),
(2, 1, 'Stuffed Jacket Potatoes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 8.00, '62908d393465b.jpg'),
(3, 4, 'Chicken Madeira', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 23.00, '62908bdf2f581.jpg'),
(4, 3, 'Manchurian Chicken', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 11.00, '606d7600dc54c.jpg'),
(5, 1, 'Lobster Thermidor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 36.00, '629089fee52b9.jpg'),
(6, 2, 'Cheesy Mashed Potato', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 5.00, '606d74c416da5.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 8.00, '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 11.00, '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 5.00, '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 7.00, '606d75a7e21ec.jpg'),
(11, 3, 'Spring Rolls', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 6.00, '606d75ce105d0.jpg'),
(12, 1, 'Yorkshire Lamb Patties', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 14.00, '62908867a48e4.jpg'),
(13, 4, ' Buffalo Wings', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 11.00, '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 9.00, '606d768a1b2a1.jpg'),
(15, 4, 'Signature Potato Twisters', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis malesuada augue, vitae finibus felis fringilla sed.', 6.00, '606d76ad0c0cb.jpg'),
(20, 1, 'kiet123123', 'abc123', 32.00, '656b607ee1339.jpg'),
(21, 3, 'tra chanh gia tay', 'ngon', 1.00, '656b60b39f80a.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_details`
--

CREATE TABLE `orders_details` (
  `Order_id` int(222) NOT NULL,
  `Dish_id` int(222) NOT NULL,
  `Quantity` int(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_details`
--

INSERT INTO `orders_details` (`Order_id`, `Dish_id`, `Quantity`) VALUES
(1, 2, 1),
(1, 5, 1),
(2, 14, 1),
(3, 7, 10),
(4, 2, 10),
(4, 5, 1),
(6, 9, 8),
(8, 9, 1),
(9, 20, 1),
(10, 2, 12),
(10, 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Dutch res', 'nthavern@mail.com', '3547854700', 'www.northstreettavern.com', '8am', '8pm', 'mon-sat', '1128 North St, White Plains', '6290877b473ce.jpg', '2023-12-02 14:00:07'),
(2, 2, 'Italian res', 'eataly@gmail.com', '0557426406', 'www.eataly.com', '11am', '9pm', 'Mon-Sat', '800 Boylston St, Boston', '606d720b5fc71.jpg', '2023-12-02 14:00:31'),
(3, 3, 'china res', 'nanxiangbao45@mail.com', '1458745855', 'www.nanxiangbao45.com', '9am', '8pm', 'mon-sat', 'Queens, New York', '6290860e72d1e.jpg', '2023-12-02 14:00:41'),
(4, 6, 'American res', 'hbg@mail.com', '654568745823', 'www.hbg.com', '7am', '4pm', 'mon-wed', '  812 Walter Street  ', '656b5cce1d4ba.jpg', '2023-12-02 16:35:26'),
(6, 6, 'vietnam1', 'vn@gmail.com', '123123123', 'abc.com', '9am', '6pm', 'mon-thu', '  vietnam  ', '656b5ff805c6d.jpg', '2023-12-02 16:48:56'),
(7, 7, 'use', 'ds@gmail.com', '0123123123', 'use.com', '8am', '4pm', 'Mon-Wed', 'use', '656b6050e5375.jpg', '2023-12-02 16:50:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Dutch', '2023-12-02 13:49:45'),
(2, 'Italian', '2021-04-07 08:45:23'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(6, 'VietNamese', '2023-12-02 15:23:35'),
(7, 'USA', '2023-12-02 16:49:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `date`) VALUES
(1, 'kiet1', 'kiet1', 'le1', 'kietle1@gmail.com', '09123123123', '4297f44b13955235245b2497399d7a93', 'vietnam', '2023-12-02 14:06:02'),
(2, 'kiet2', 'kiet2', 'le2', 'kietle2@gmail.com', '009123123123123', '4297f44b13955235245b2497399d7a93', 'vietnam', '2023-12-02 14:09:36'),
(3, 'kietle', 'kiet', 'le', 'letuankiet@gmail.com', '09123123233', 'c5aa3124b1adad080927ce4d144c6b33', 'viet nam', '2023-12-02 15:10:56'),
(4, 'kietle123', 'kiet', 'le', 'letuankiet.hn@gmail.com', '07031831233', '46891e503e8d17dda60d0e79966559e8', 'vietnam', '2023-12-02 15:21:54'),
(5, 'kietle12345', 'kiet', 'le123', 'letuesna@gmail.com', '091231232323323', 'c5aa3124b1adad080927ce4d144c6b33', 'viet nam', '2023-12-02 16:47:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL DEFAULT '',
  `quantity` int(222) NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL DEFAULT 1.00,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`, `payment_method`) VALUES
(1, 1, '', 1, 1.00, NULL, '2023-12-02 14:06:30', 'Cash On Delivery'),
(2, 1, '', 1, 1.00, NULL, '2023-12-02 14:08:30', 'PayPal'),
(3, 2, '', 1, 1.00, NULL, '2023-12-02 14:11:22', 'PayPal'),
(4, 1, '', 1, 1.00, NULL, '2023-12-02 14:59:53', 'PayPal'),
(6, 3, '', 1, 1.00, NULL, '2023-12-02 15:07:55', 'Cash On Delivery'),
(8, 4, '', 1, 1.00, 'closed', '2023-12-02 15:27:36', 'Cash On Delivery'),
(9, 4, '', 1, 1.00, NULL, '2023-12-02 15:28:53', 'Cash On Delivery'),
(10, 5, '', 1, 1.00, 'rejected', '2023-12-02 16:52:19', 'PayPal');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Chỉ mục cho bảng `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `fk_rsid` (`rs_id`);

--
-- Chỉ mục cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`Order_id`,`Dish_id`),
  ADD KEY `FK_Dish` (`Dish_id`);

--
-- Chỉ mục cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`),
  ADD KEY `fk_cid` (`c_id`);

--
-- Chỉ mục cho bảng `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Chỉ mục cho bảng `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `fk_userid` (`u_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `fk_rsid` FOREIGN KEY (`rs_id`) REFERENCES `restaurant` (`rs_id`);

--
-- Các ràng buộc cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `FK_Dish` FOREIGN KEY (`Dish_id`) REFERENCES `dishes` (`d_id`),
  ADD CONSTRAINT `FK_Order` FOREIGN KEY (`Order_id`) REFERENCES `users_orders` (`o_id`);

--
-- Các ràng buộc cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `fk_cid` FOREIGN KEY (`c_id`) REFERENCES `res_category` (`c_id`);

--
-- Các ràng buộc cho bảng `users_orders`
--
ALTER TABLE `users_orders`
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
