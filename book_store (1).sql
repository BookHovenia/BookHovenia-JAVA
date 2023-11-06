-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 06:02 AM
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
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`) VALUES
(1, 'Romance'),
(2, 'History'),
(3, 'Horror'),
(5, 'Finance'),
(6, 'Self help');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Raj', 'andrewdrake874@gmail.com', 'Testing\r\n', '2023-11-05 03:06:39'),
(2, 'shahil mahato', 'shahilmahato56@gmail.com', 'I wanted to take a moment to provide feedback on the recent demo you presented. Overall, I found the presentation to be informative and well-prepared. Here are some specific points that I\'d like to highlight:', '2023-11-05 04:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `itemName` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemId`, `categoryId`, `itemName`, `price`, `description`, `image`) VALUES
(6, 1, 'BOOK LOVERS', 300, 'novel by - EMILY HENRY', 'Items/book lovers.jpg'),
(7, 1, 'It Ends With Us', 300, 'novel by- COOLEAN HOOVER', 'Items/It ends with us.jpg'),
(9, 1, 'PRIDE AND PREJUDICE', 250, 'novel by- JANE AUSTEN', 'Items/pride and prejudice.jpg'),
(10, 1, 'SUDHA MURTHY', 560, 'book by- Sudha Murthy', 'Items/sudha murthy.jpg'),
(11, 2, 'History of Ancient Egypt', 249, 'John Romer', 'Items/a history ancient egypt from the first farmer to the great pyramid.jpg'),
(12, 3, 'Dracula', 299, 'novel by- Bram Stoker', 'Items/dracula.jpg'),
(14, 6, 'Atomic Habit', 299, 'book by- JAMES CLEAR', 'Items/atomic habit.jpg'),
(15, 5, 'Finance : 7', 379, '', 'Items/finance7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `first_name`, `last_name`, `address`, `country`, `phone_number`, `zip_code`, `city`, `state`) VALUES
(1, 'SHAHIL', 'MAHATO', '15, khudiram pally ghosal para', 'India', NULL, '743165', 'NORTH 24 PARAGANAS', '29'),
(4, 'cilian', 'murphy', 'I just dont know,  below for country my frontend tean just gave one option so its not my mistake', 'India', NULL, '000000', 'LA', '1'),
(8, 'james', 'cameron', 'Hollywood', 'country', NULL, '895623', 'marvel', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_fk` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
