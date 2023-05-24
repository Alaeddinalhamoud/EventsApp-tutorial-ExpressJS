-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 22, 2023 at 10:43 PM
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
  `Email` varchar(100) NOT NULL,
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

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`Id`, `StageId`, `PerformareId`, `Date`, `Time`) VALUES
(1, 1, 1, '2023-05-23', '22:00:50'),
(2, 2, 2, '2023-05-31', '21:00:55'),
(3, 1, 2, '2023-05-27', '22:00:50'),
(4, 2, 1, '2023-06-30', '21:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `FAQs`
--

CREATE TABLE `FAQs` (
  `Id` int NOT NULL,
  `Question` varchar(5000) NOT NULL,
  `Answer` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `FAQs`
--

INSERT INTO `FAQs` (`Id`, `Question`, `Answer`) VALUES
(1, 'Q1', 'A1'),
(2, 'Q2', 'A2');

-- --------------------------------------------------------

--
-- Table structure for table `Performers`
--

CREATE TABLE `Performers` (
  `Id` int NOT NULL,
  `Name` varchar(256) NOT NULL,
  `ImageUrl` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Performers`
--

INSERT INTO `Performers` (`Id`, `Name`, `ImageUrl`) VALUES
(1, 'Actor-1', 'https://cdn.pixabay.com/photo/2018/07/06/19/48/charles-chaplin-3521070_960_720.jpg'),
(2, 'Actor-2', 'https://cdn.pixabay.com/photo/2018/07/06/19/48/charles-chaplin-3521070_960_720.jpg');

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
-- Dumping data for table `Stages`
--

INSERT INTO `Stages` (`Id`, `Name`, `ImageUrl`) VALUES
(1, 'Stage-1', 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_960_720.jpg'),
(2, 'Stage-2', 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_960_720.jpg');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
