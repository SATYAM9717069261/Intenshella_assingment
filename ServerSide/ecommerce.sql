-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 04, 2021 at 10:37 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `category` enum('book','stationary','other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`) VALUES
(1, 'harry_potter', 'book'),
(2, 'deception_point', 'book'),
(11, 'drunkards_walk', 'book'),
(12, 'the_kite_runner', 'book'),
(13, 'animal_farm', 'book'),
(14, 'night_lamp', 'other'),
(15, 'pencil_box', 'stationary'),
(16, 'fountain_pen', 'stationary'),
(17, 'personal_diary', 'stationary'),
(18, 'study_bed_table', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `products_backup`
--

CREATE TABLE `products_backup` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `category` enum('book','stationary','other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_backup`
--

INSERT INTO `products_backup` (`id`, `name`, `category`) VALUES
(1, 'harry_potter', 'book'),
(2, 'deception_point', 'book'),
(11, 'drunkards_walk', 'book'),
(12, 'the_kite_runner', 'book'),
(13, 'animal_farm', 'book'),
(14, 'night_lamp', 'other'),
(15, 'pencil_box', 'stationary'),
(16, 'fountain_pen', 'stationary'),
(17, 'personal_diary', 'stationary'),
(18, 'study_bed_table', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_id` varchar(20) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `phone` int(10) NOT NULL,
  `registraction_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_id`, `first_name`, `last_name`, `phone`, `registraction_time`) VALUES
(1, 'venu@xyz.com', 'Venu', 'Sharma', 547903927, '2021-06-03 20:44:10'),
(2, 'shubham@xyz.com', 'Shubha', 'NULL', 538915694, '2021-06-03 20:45:08'),
(3, 'disha@xyz.com', 'Disha', 'Kaur', 557825323, '2016-09-29 18:32:14'),
(4, 'ankit@xyz.com', 'Ankit', 'Kumar', 561322116, '2016-09-30 09:35:18'),
(5, 'mrinal@xyz.com', 'Mrinal', 'Joy', 517918670, '2016-10-02 03:38:06'),
(6, 'abhilash@xyz.com', 'Abhilash', 'Jalsani', 509841902, '2016-10-01 05:00:00'),
(25, 'hardik@xyz.com', 'Hardik', 'Arora', 595452568, '2016-09-30 07:50:45'),
(26, 'yesha@xyz.com', 'Yesha', 'Krishna', 534532216, '2016-09-30 07:50:45'),
(27, 'rushit@xyz.com', 'Rushit', 'ABC', 534359370, '2016-09-29 06:16:37'),
(28, 'jessy@xyz.com', 'Jessy', 'Joseph', 591053100, '2016-09-28 18:32:14'),
(29, 'jasper@xyz.com', 'Jaspreet', 'abc', 515078235, '2016-09-29 18:20:12'),
(30, 'prachi@xyz.com', 'Prachi', 'as', 530670640, '2016-09-29 06:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `users_backup`
--

CREATE TABLE `users_backup` (
  `id` int(11) NOT NULL,
  `email_id` varchar(20) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `phone` int(10) NOT NULL,
  `registraction_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_backup`
--

INSERT INTO `users_backup` (`id`, `email_id`, `first_name`, `last_name`, `phone`, `registraction_time`) VALUES
(1, 'venu@xyz.com', 'Venu', 'Sharma', 547903927, '2021-06-03 20:44:10'),
(2, 'shubham@xyz.com', 'Shubha', 'NULL', 538915694, '2021-06-03 20:45:08'),
(3, 'disha@xyz.com', 'Disha', 'Kaur', 557825323, '2016-09-29 18:32:14'),
(4, 'ankit@xyz.com', 'Ankit', 'Kumar', 561322116, '2016-09-30 09:35:18'),
(5, 'mrinal@xyz.com', 'Mrinal', 'Joy', 517918670, '2016-10-02 03:38:06'),
(6, 'abhilash@xyz.com', 'Abhilash', 'Jalsani', 509841902, '2016-10-01 05:00:00'),
(25, 'hardik@xyz.com', 'Hardik', 'Arora', 595452568, '2016-09-30 07:50:45'),
(26, 'yesha@xyz.com', 'Yesha', 'Krishna', 534532216, '2016-09-30 07:50:45'),
(27, 'rushit@xyz.com', 'Rushit', 'ABC', 534359370, '2016-09-29 06:16:37'),
(28, 'jessy@xyz.com', 'Jessy', 'Joseph', 591053100, '2016-09-28 18:32:14'),
(29, 'jasper@xyz.com', 'Jaspreet', 'abc', 515078235, '2016-09-29 18:20:12'),
(30, 'prachi@xyz.com', 'Prachi', 'as', 530670640, '2016-09-29 06:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `users_products`
--

CREATE TABLE `users_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_products`
--

INSERT INTO `users_products` (`id`, `user_id`, `product_id`) VALUES
(1, 6, 1),
(2, 29, 1),
(3, 3, 12),
(4, 2, 12),
(5, 4, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users_products_backup`
--

CREATE TABLE `users_products_backup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_products_backup`
--

INSERT INTO `users_products_backup` (`id`, `user_id`, `product_id`) VALUES
(1, 6, 1),
(2, 29, 1),
(3, 3, 12),
(4, 2, 12),
(5, 4, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_backup`
--
ALTER TABLE `products_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_backup`
--
ALTER TABLE `users_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_products`
--
ALTER TABLE `users_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users_products_backup`
--
ALTER TABLE `users_products_backup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products_backup`
--
ALTER TABLE `products_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users_backup`
--
ALTER TABLE `users_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users_products`
--
ALTER TABLE `users_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_products_backup`
--
ALTER TABLE `users_products_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_products`
--
ALTER TABLE `users_products`
  ADD CONSTRAINT `users_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
