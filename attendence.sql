-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 10:01 PM
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
-- Database: `attendence`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `role` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `username`, `password`, `email`, `contact`, `status`, `role`) VALUES
(1, 'manish', 'manish1234', 'manish@gmail.com', '8169408988', 'Active', 'Admin'),
(3, 'pratik', 'pratik1234', 'pratik@gmail.com', '9824791388', 'Active', 'User'),
(4, 'krish', 'krish1234', 'krish@gmail.com', '8876345468', 'Active', 'User'),
(5, 'yash', 'yash1234', 'yash@gmail.com', '12836745639', 'Active', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `presente`
--

CREATE TABLE `presente` (
  `id` int(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  `enter_time` varchar(40) NOT NULL,
  `exit_time` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presente`
--

INSERT INTO `presente` (`id`, `username`, `date`, `enter_time`, `exit_time`) VALUES
(1, 'pratik', '2023-11-29', '11:56', '4:00'),
(3, 'pratik', '2023-11-30', '11:30', '4:00'),
(5, 'yash', '2023-12-1', '12:05', '4:0'),
(6, 'pratik', '2023-3-12', '13:38', '16:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presente`
--
ALTER TABLE `presente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `presente`
--
ALTER TABLE `presente`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
