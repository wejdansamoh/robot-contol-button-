-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31 يوليو 2024 الساعة 19:37
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robot_control`
--

-- --------------------------------------------------------

--
-- بنية الجدول `moves`
--

CREATE TABLE `moves` (
  `id` int(11) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `moves`
--

INSERT INTO `moves` (`id`, `direction`, `timestamp`) VALUES
(1, 'stop', '2024-07-31 17:25:00'),
(2, 'forward', '2024-07-31 17:26:34'),
(3, 'right', '2024-07-31 17:26:37'),
(4, 'backward', '2024-07-31 17:26:40'),
(5, 'left', '2024-07-31 17:26:42'),
(6, 'forward', '2024-07-31 17:28:50'),
(7, 'forward', '2024-07-31 17:29:48'),
(8, 'stop', '2024-07-31 17:29:52'),
(9, 'backward', '2024-07-31 17:29:57'),
(10, 'right', '2024-07-31 17:30:01'),
(11, 'left', '2024-07-31 17:30:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `moves`
--
ALTER TABLE `moves`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moves`
--
ALTER TABLE `moves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
