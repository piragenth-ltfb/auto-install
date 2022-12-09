-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 172.18.0.1
-- Generation Time: Dec 09, 2022 at 03:31 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `Dept`
--

CREATE TABLE `Dept` (
  `DNo` varchar(10) NOT NULL,
  `Dname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Dept`
--

INSERT INTO `Dept` (`DNo`, `Dname`) VALUES
('D01', 'Finance'),
('D02', 'Admin'),
('D03', 'Planning'),
('D04', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empno` varchar(10) NOT NULL,
  `Ename` varchar(5) DEFAULT NULL,
  `ContactNo` int DEFAULT NULL,
  `Dept` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empno`, `Ename`, `ContactNo`, `Dept`) VALUES
('e0001', 'A', 2344, 'D01'),
('e0002', 'B', 2424, 'D04'),
('e0003', 'C', 3114, 'D03'),
('e0004', 'D', 9234, 'D01'),
('e0005', 'E', 7568, 'D04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Dept`
--
ALTER TABLE `Dept`
  ADD PRIMARY KEY (`DNo`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
