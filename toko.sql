-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 10:10 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_ip`, `user_id`, `product_id`, `qty`) VALUES
(2, '', 8, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(1, 'Medical Equipment'),
(3, 'Best Sellers'),
(4, 'Medicine'),
(5, 'Vitamin'),
(6, 'Antiseptic');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `mobile`, `email`, `status`) VALUES
(1, 'James Smith', 'adasdasd asdadasd', '4756463215', 'jsmith@sample.com', 1),
(2, 'James Smith', 'adasdasd asdadasd', '4756463215', 'jsmith@sample.com', 1),
(3, 'Camp Codes', '06106 Capitol Site, Brgy. Washington', '+639079373', 'admin@campcodes.com', 1),
(4, 'Camp Codes', '06106 Capitol Site, Brgy. Washington', '+639079373', 'admin@campcodes.com', 1),
(5, 'Camp Codes', '06106 Capitol Site, Brgy. Washington', '+639079373', 'admin@campcodes.com', 1),
(6, 'Abidul cse.aishaon@gmail.com', 'Durgapur,kathgara,zirabo,Ashulia', '0172238545', 'cse.aishaon@gmail.com', 1),
(7, 'imel imel@gmail.com', 'jalan apa', '0812345678', 'imel@gmail.com', 1),
(8, 'imel imel@gmail.com', 'jalan apa', '0812345678', 'imel@gmail.com', 1),
(9, 'imel imel@gmail.com', 'jalan apa', '0812345678', 'imel@gmail.com', 1),
(10, 'imel imel@gmail.com', 'jalan apa', '0812345678', 'imel@gmail.com', 1),
(11, 'adel lia', 'jalan jalan', '081456789', 'adel@gmail.com', 1),
(12, 'adel lia', 'jalan jalan', '081456789', 'adel@gmail.com', 1),
(13, 'imel imel@gmail.com', 'jalan apa', '0812345678', 'imel@gmail.com', 1),
(14, 'nurul taukid', 'dusun beciro', '0834763273', 'taukidtau@gmail.com', 1),
(15, 'achmad fahmi al hafidz', 'sugihwaras candi surabaya', '0822332540', 'fahmi@gmail.com', 1),
(16, 'imel imel@gmail.com', 'jalan apa', '0812345678', 'imel@gmail.com', 1),
(17, 'imel imel@gmail.com', 'jalan apa', '0812345678', 'imel@gmail.com', 0),
(18, 'diaz prisheila', 'jalan apa ', '0812345678', 'diaz@gmail.com', 0),
(19, 'shinta dwi', 'jalan melati', '0895432', 'shinta@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `qty`) VALUES
(1, 1, 3, 1),
(2, 1, 5, 1),
(3, 1, 3, 1),
(4, 1, 6, 3),
(5, 2, 1, 2),
(6, 3, 6, 2),
(7, 3, 7, 1),
(8, 4, 1, 1),
(9, 4, 4, 1),
(10, 5, 6, 2),
(11, 5, 1, 2),
(12, 6, 4, 5),
(13, 7, 9, 0),
(14, 7, 8, 0),
(15, 7, 7, 1),
(16, 8, 8, 1),
(17, 9, 6, 2),
(18, 10, 3, 1),
(19, 12, 9, 1),
(20, 13, 5, 1),
(21, 13, 6, 2),
(22, 13, 3, 2),
(23, 14, 8, 4),
(24, 15, 1, 5),
(25, 15, 6, 3),
(26, 15, 4, 2),
(27, 15, 9, 1),
(28, 15, 8, 1),
(29, 15, 7, 1),
(30, 15, 3, 1),
(31, 15, 5, 1),
(32, 16, 9, 1),
(33, 17, 4, 1),
(34, 17, 9, 1),
(35, 17, 5, 1),
(36, 17, 4, 1),
(37, 18, 3, 2),
(38, 19, 5, 1),
(39, 19, 7, 1),
(40, 19, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(1, 1, 'Thermometer', 'Body Temperature Thermometer ', 500000, '1696836600_termometer.jpg', 1),
(3, 1, 'Wheelchair', 'Wheelchair for Walker', 900000, '1696836840_kursi roda.jpg', 1),
(4, 3, 'Amoxicillin', 'Antibiotics', 20000, '1696837020_amoxicillin.jpg', 1),
(5, 1, 'Paratusin', 'Paratusin Tablet ', 20000, '1696837320_paratusin.jpg', 1),
(6, 3, 'Hansaplast', 'Hansaplast Elastic', 10000, '1696837500_hansaplast.jpg', 1),
(7, 3, 'NaCl', 'NaCl Infusion Fluid 500 ml', 400000, '1696837860_nacl.jpg', 1),
(8, 1, 'Stethoscope', 'Stethoscope Item for Sale', 500000, '1696835940_stetoskop.jpg', 1),
(9, 1, 'Sphygmomanometer', 'OMRON Sphygmomanometer', 300000, '1696836120_tensi.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'TAK - Toko Alat Kesehatan', 'admin@admin.com', '+639079373999', '1696838640_background.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;h2 style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;Get Website Design and Development Service.&lt;/h2&gt;&lt;p style=&quot;text-align: left; margin-bottom: 15px; padding: 0px;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot; style=&quot;text-align: left; margin-bottom: 15px; padding: 0px;&quot;&gt;Build a Website with Better Strategy, which increases your income.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; margin-bottom: 15px; padding: 0px;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Easy to get premium quality website design and development services. We are ready to help you and solve your problem with our expertise. So don&rsquo;t hesitate to contact us.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(1, 'James', 'Smith', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', '4756463215', 'adasdasd asdadasd'),
(2, 'FreeWebsite', 'Code', 'admin@freewebsitecode.com', '827ccb0eea8a706c4c34a16891f84e7b', '+639079373', '06106 Capitol Site, Brgy. Washington'),
(3, 'Abidul', 'cse.aishaon@gmail.com', 'cse.aishaon@gmail.com', 'dfccf0c79f1b94cd96b7ea0dd360ee06', '0172238545', 'Durgapur,kathgara,zirabo,Ashulia'),
(4, 'imel', 'imel@gmail.com', 'imel@gmail.com', '0337e4275a4b546128aa03ce6562550a', '0812345678', 'jalan apa'),
(5, 'adel', 'lia', 'adel@gmail.com', '9693519a041ae1b4fca8f3f7f3d17234', '081456789', 'jalan jalan'),
(6, 'nurul', 'taukid', 'taukidtau@gmail.com', 'cbd9761dbcba6527ff9e486afd63a8aa', '0834763273', 'dusun beciro'),
(7, 'achmad fahmi', 'al hafidz', 'fahmi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0822332540', 'sugihwaras candi surabaya'),
(8, 'diaz', 'prisheila', 'diaz@gmail.com', '868310c023ef93de5db48a7bf83178a9', '0812345678', 'jalan apa '),
(9, 'shinta', 'dwi', 'shinta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0895432', 'jalan melati');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
