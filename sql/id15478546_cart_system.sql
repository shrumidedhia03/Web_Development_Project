-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2020 at 08:43 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15478546_cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(12, 'Shrumi', 'shrumi.dedhia@gmail.com', '09920957933', '315/E,SITA PARK,OPP. BHAGWATI HOSPITAL\r\nSVP ROAD\r\nBORIVALI(WEST)', 'cod', 'Tea Tree Night Lotion(1), Camomile Eye Makeup Remover(1)', '1944'),
(13, 'Flemi', 'flemigala@gmail.com', '9833879355', '802/Laburnum Tower,Goregaon (w)', 'netbanking', 'Vitamin C Glow Moisturizer(1), Vitamin E Gel Moisture Cream(1), Tea Tree Night Lotion(1)', '2685'),
(14, 'Kashyap', 'talatikashyap@gmail.com', '08655679544', 'Janhavi palace -002 , Pleasant park , Miraroad east', 'cards', 'Tea Tree Night Lotion(1), Vitamin E Gel Moisture Cream(1), Vitamin C Glow Moisturizer(1), Carrot Cream Daily Moisturizer(1)', '3534'),
(15, 'Hrutik Naik', 'hrutupn@gmail.com', '7208090456', 'sdsd', 'cod', 'Vitamin C Glow Moisturizer(1), Tea Tree Night Lotion(1)', '1790'),
(16, 'Dion Chettiar', 'dionchettiar3@gmail.com', '7400219529', '46/405, EKTA NAGAR', 'cod', 'Vitamin C Glow Moisturizer(1)', '795'),
(17, 'Shrumi', 'shrumi.dedhia@gmail.com', '09920957933', '315/E,SITA PARK,OPP. BHAGWATI HOSPITAL\r\nSVP ROAD\r\nBORIVALI(WEST)', 'netbanking', 'Tea Tree Night Lotion(1), Vitamin E Gel Moisture Cream(1)', '1890'),
(18, 'Flemigala', 'flemigala@gmail.com', '9833879355', '802/Laburnum', 'cod', 'Vitamin C Glow Moisturizer(1), Tea Tree Night Lotion(1), Seaweed Cleansing Facial Wash(1), Vitamin C Glow Sheet Mask(1)', '2914'),
(19, 'Royce', 'rollslobo@gmail.com', '9757236077', 'Hello', 'cards', 'Vitamin C Glow Moisturizer(1)', '795');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Vitamin C Glow Moisturizer', '795', 1, 'Capture1.jpg', 'p1000'),
(2, 'Tea Tree Night Lotion', '995', 1, 'Capture2.jpg', 'p1001'),
(3, 'Vitamin E Gel Moisture Cream', '895', 1, 'Capture3.jpg', 'p1002'),
(4, 'Carrot Cream Daily Moisturizer', '849', 1, 'Capture4.jpg', 'p1003'),
(5, 'Vitamin E Cream Cleanzer', '849', 1, 'Capture5.jpg', 'p1004'),
(6, 'Seaweed Cleansing Facial Wash', '749', 1, 'Capture6.jpg', 'p1005'),
(7, 'Camomile Eye Makeup Remover', '949', 1, 'Capture7.jpg', 'p1006'),
(8, 'British Rose Petal-Soft Gel Toner', '1095', 1, 'Capture8.jpg', 'p1007'),
(9, 'Mediterranean Almond Milk Mask', '1249', 1, 'Capture9.jpg', 'p1008'),
(10, 'Vitamin C Glow Sheet Mask', '375', 1, 'Capture10.jpg', 'p1009'),
(11, 'Hemp Overnight Mask', '1149', 1, 'Capture11.jpg', 'p1010'),
(12, 'Nicaraguan Coffee Mask', '1349', 1, 'Capture12.jpg', 'p1011'),
(13, 'Himalayan Charcoal Mask ', '649', 1, 'Capture13.jpg', 'p1012'),
(14, 'British Rose Fresh Plumping Mask', '849', 1, 'Capture14.jpg', 'p1013'),
(15, 'Aloe Calm Hydration Sheet Mask', '349', 1, 'Capture15.jpg', 'p1014'),
(16, 'Tea Tree Night Mask', '1049', 1, 'Capture16.jpg', 'p1015');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
