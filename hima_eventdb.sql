-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2023 at 09:07 PM
-- Server version: 8.0.33
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hima_eventdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ContactUs`
--

CREATE TABLE `ContactUs` (
  `Id` int NOT NULL,
  `FullName` varchar(500) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Intestion` varchar(100) NOT NULL,
  `Body` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `Id` int NOT NULL,
  `StageId` int NOT NULL,
  `PerformareId` int NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FAQs`
--

CREATE TABLE `FAQs` (
  `Id` int NOT NULL,
  `Question` varchar(5000) NOT NULL,
  `Answer` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Performers`
--

CREATE TABLE `Performers` (
  `Id` int NOT NULL,
  `Name` varchar(256) NOT NULL,
  `ImageUrl` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Stages`
--

CREATE TABLE `Stages` (
  `Id` int NOT NULL,
  `Name` varchar(500) NOT NULL,
  `ImageUrl` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ContactUs`
--
ALTER TABLE `ContactUs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `FAQs`
--
ALTER TABLE `FAQs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Performers`
--
ALTER TABLE `Performers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Stages`
--
ALTER TABLE `Stages`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ContactUs`
--
ALTER TABLE `ContactUs`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
