-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 نوفمبر 2026 الساعة 03:59
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `midad`
--

-- --------------------------------------------------------

--
-- بنية الجدول `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `user_id` int(45) NOT NULL,
  `report_type` varchar(30) NOT NULL,
  `food_type` varchar(50) NOT NULL,
  `food_category` varchar(50) NOT NULL,
  `other_category` varchar(100) DEFAULT NULL,
  `distribution_status` varchar(50) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `pickup_datetime` datetime NOT NULL,
  `food_image` varchar(100) NOT NULL,
  `pickup_latitude` decimal(10,8) DEFAULT NULL,
  `pickup_longitude` decimal(11,8) DEFAULT NULL,
  `cooking_type` varchar(50) NOT NULL DEFAULT 'أخرى',
  `pickup_time_to` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `reports`
--

INSERT INTO `reports` (`report_id`, `user_id`, `report_type`, `food_type`, `food_category`, `other_category`, `distribution_status`, `quantity`, `city`, `description`, `pickup_datetime`, `food_image`, `pickup_latitude`, `pickup_longitude`, `cooking_type`, `pickup_time_to`) VALUES
(1, 7, 'recycle', 'cooked', 'dinner', NULL, 'ready', '60', 'madinah', 'كبسه لحم', '2026-10-11 06:22:00', 'uploads/food/2399949659e10ddc3491663d33164d49.jpg', NULL, NULL, 'سعودي', '07:19:00'),
(2, 7, 'recycle', 'cooked', 'dinner', NULL, 'ready', '60', 'madinah', 'كبسه لحم', '2026-10-11 06:22:00', 'uploads/food/c352c48f3ee80f28311f39d62ab2f596.jpg', NULL, NULL, 'سعودي', '07:19:00'),
(3, 7, 'recycle', 'cooked', 'dinner', NULL, 'ready', '60', 'madinah', 'كبسه لحم', '2026-10-11 06:22:00', 'uploads/food/615c89d1db5b72d7dac2b4f508801fe1.jpg', NULL, NULL, 'سعودي', '07:19:00');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `cr_num` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `password`, `phone`, `cr_num`) VALUES
(7, 'رواق', 'dorargh2001@gmail.com', '$2y$10$I2sZSPwaftcpSZXx.oYfE.5XrCsm6eMh39KxrFQ7vc/Yk/S4qZSGm', 542400155, 1234567);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
