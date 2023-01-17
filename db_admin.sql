-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 04:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL COMMENT 'role_id',
  `role` varchar(255) DEFAULT NULL COMMENT 'role_text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `birthdate` datetime(6) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `sss_no` int(15) DEFAULT NULL,
  `tin_no` int(15) DEFAULT NULL,
  `philhealth_no` int(15) DEFAULT NULL,
  `roleid` tinyint(4) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `username`, `email`, `password`, `mobile`, `birthdate`, `gender`, `address`, `department`, `sss_no`, `tin_no`, `philhealth_no`, `roleid`, `isActive`, `created_at`, `updated_at`) VALUES
(23, 'christian', 'christian', 'christian@ymail.com', '93e72eb3cc2a4bf24508775dc9c69814c3d70536', '09661234567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, '2023-01-17 00:04:15', '2023-01-17 00:04:15'),
(24, 'Ferdinand', 'ferdyrimando', 'ferdyrimando@ymail.com', 'f3rdinand', '09684122227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-17 01:12:03', '2023-01-17 01:12:03'),
(26, 'justin', 'justin', 'justin@gmail.com', 'just1n', '099100000', '2023-01-17 10:14:18.000000', 'male', 'San Fernando City, La Union', 'ITSM', 1111111, 1111111, 1111111, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'daryl', 'daryl', 'daryl@gmail.com', '1200b854b2e5ec1e74428eb6c2a7c9a36569ce9e', '09122222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, '2023-01-17 02:52:43', '2023-01-17 02:52:43'),
(28, 'michael', 'michael', 'michael@gmail.com', '7e64081df13b56a7adf768d69ab79e1d77a9a6c8', '09222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-17 02:55:45', '2023-01-17 02:55:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'role_id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
