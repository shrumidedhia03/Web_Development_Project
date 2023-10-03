-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2020 at 08:43 PM
-- Server version: 10.3.18-MariaDB
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
-- Database: `id15478546_database123`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `userid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `query` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`userid`, `email`, `query`) VALUES
('Shrumi', 'shrumi.dedhia@gmail.com', 'Suggest a dermat'),
('Anita', 'anita.dedhia@gmail.com', 'Acne problem'),
('AjaySingh', 'ajaysingh@gmaul.com', 'Wrinkles Problem'),
('Heneelgala', 'heneelgala@gmail.com', 'What is the age for using anti ageing cream');

-- --------------------------------------------------------

--
-- Table structure for table `entry_details`
--

CREATE TABLE `entry_details` (
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_code` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entry_details`
--

INSERT INTO `entry_details` (`user_id`, `password`, `name`, `address`, `country`, `zip_code`, `email`, `sex`, `language`, `about`) VALUES
('Shrumi03', 'hellothere', 'ShrumiDedhia', '315Wallmart', 'ind', 400103, 'shrumi.dedhia@gmail.com', 'Female', 'en', 'Acne Problems'),
('Jay123', 'password', 'JayShah', '216vidyamandir', 'ind', 400092, 'jayshah@gmail.com', 'Male', 'en', ''),
('Meet17', 'meetrocks', 'MeetJoshi', '107Rustomjee', 'aus', 90087, 'meetjoshi@yahoo.com', 'Male', 'en', ''),
('Kashyap1', 'welcome123', 'Kashyaptalati', 'escort', 'aus', 1234, 'kashyaptalati@gmail.com', 'Male', 'en', ''),
('kash12', 'kash1234', 'Kashyap', 'Miraroad', 'ind', 401107, 'talatikashyap@gmail.com', 'Male', 'en', 'hello :)'),
('hrutiknaik', 'hrutiknaik', 'Hrutiknaik', 'sddddddddddsssssssssssseeeeeeeeeewww', 'russ', 1516516, 'hrutupn@gmail.com', 'Male', 'en', ''),
('181013', 'asdfghjkl', 'dion', 'galaxychs', 'ind', 400067, 'dionchettiar3@gmail.com', 'Male', 'en', 'adssfssdasd'),
('Flemi123', 'gocorona', 'Flemig', '802laburnum', 'can', 20003, 'flemigala@gmail.com', 'Female', 'en', ''),
('hrutik7', 'hrutiknaik', 'hhh', 'ssssss', 'aus', 1516516, 'hrutupn@gmail.com', 'Male', 'en', ''),
('Royce', 'Shrumidd', 'Royce', 'a', 'ind', 400069, 'shrumidd@gmail.com', 'Male', 'en', 'Ye kaunse ecomm site mein hota hai?');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `userid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`userid`, `email`, `experience`, `message`) VALUES
('ritadesai', 'ritadesai@gmail.com', 'bad', 'Very Informative Website');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(1, 'Vitamin C Glow Boosting Moisturizer', 'Capture1.jpg', 795),
(2, 'Tea Tree Night Lotion', 'Capture2.jpg', 995),
(3, 'Vitamin E Gel Moisture Cream', 'Capture3.jpg', 895),
(4, 'Carrot Cream Nature Rich Daily Moisturizer', 'Capture4.jpg', 849),
(5, 'Vitamin E Cream Cleanzer', 'Capture5.jpg', 849),
(6, 'Seaweed Cleansing Facial Wash', 'Capture6.jpg', 749),
(7, 'Camomile Gentle Eye Makeup Remover', 'Capture7.jpg', 949),
(8, 'British Rose Petal-Soft Gel Toner', 'Capture8.jpg', 1095),
(9, 'Mediterranean Almond Milk with Oats instant Soothing Mask', 'Capture9.jpg', 1249),
(10, 'Vitamin C Glow Sheet Mask', 'Capture10.jpg', 375),
(11, 'Hemp Overnight Nourishing Rescue Mask', 'Capture11.jpg', 1149),
(12, 'Nicaraguan Coffee Intense Awakening Mask', 'Capture12.jpg', 1349),
(13, 'Himalayan Charcoal Purifying Glow Mask 15ML', 'Capture13.jpg', 649),
(14, 'British Rose Fresh Plumping Mask', 'Capture14.jpg', 849),
(15, 'Aloe Calm Hydration Sheet Mask', 'Capture15.jpg', 349),
(16, 'Tea Tree Anti-Imperfection Night Mask', 'Capture16.jpg', 1049);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
