-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2017 at 12:07 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wufo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad', 'Abu Musa', 'sheikhfarhan98@gmail.com', '2017-08-10 13:28:16', '2017-08-10 13:28:16'),
(2, 'Mohammad', 'Abu Musa', 'sheikhfarhan98@gmail.com', '2017-08-10 13:30:32', '2017-08-10 13:30:32'),
(3, 'Mohammad', 'Abu Musa', 'sheikhfarhan98@gmail.com', '2017-08-10 13:56:23', '2017-08-10 13:56:23'),
(4, 'Mohammad', 'Abu Musa', 'farhanuddinfu@hotmail.com', '2017-08-10 13:57:33', '2017-08-10 13:57:33'),
(5, 'Mohammad', 'Abu Musa', 'farhanuddinfu@hotmail.com', '2017-08-10 14:03:08', '2017-08-10 14:03:08'),
(6, 'Mohammad', 'Abu Musa', 'farhanuddinfu@hotmail.com', '2017-08-10 14:05:00', '2017-08-10 14:05:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
