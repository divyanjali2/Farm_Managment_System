-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 02:29 PM
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
-- Database: `sg_farms`
--

-- --------------------------------------------------------

--
-- Table structure for table `birdsmortality`
--

CREATE TABLE `birdsmortality` (
  `BirdsMortality_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Deaths` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `birdsmortality`
--

INSERT INTO `birdsmortality` (`BirdsMortality_ID`, `Date`, `Deaths`) VALUES
(23, '2020-12-15', 3),
(24, '2020-12-15', 9),
(30, '2020-12-14', 19),
(33, '2024-03-08', 3);

-- --------------------------------------------------------

--
-- Table structure for table `birdspurchase`
--

CREATE TABLE `birdspurchase` (
  `BirdsPurchase_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `NumberOfBirds` int(11) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `birdspurchase`
--

INSERT INTO `birdspurchase` (`BirdsPurchase_ID`, `Date`, `NumberOfBirds`, `Price`) VALUES
(5, '2020-12-11', 89, 115),
(8, '2020-12-14', 12, 488),
(9, '2020-12-11', 89, 115),
(10, '2024-03-12', 3, 300);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Job` varchar(50) NOT NULL,
  `Salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `FirstName`, `LastName`, `Phone`, `Job`, `Salary`) VALUES
(146, 'Navodya', 'Divyanjali', '0776902345', 'Owner', 200000),
(160, 'Sanduni', 'Upeksha', '0786756346', 'Manager', 120000);

-- --------------------------------------------------------

--
-- Table structure for table `feedconsumption`
--

CREATE TABLE `feedconsumption` (
  `FeedConsumption_ID` int(11) NOT NULL,
  `ConsDate` date NOT NULL,
  `Quantity` float NOT NULL,
  `Price` float NOT NULL,
  `Employee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedconsumption`
--

INSERT INTO `feedconsumption` (`FeedConsumption_ID`, `ConsDate`, `Quantity`, `Price`, `Employee`) VALUES
(21, '2020-12-18', 100, 34, 146);

-- --------------------------------------------------------

--
-- Table structure for table `feedpurchase`
--

CREATE TABLE `feedpurchase` (
  `FeedPurchase_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Quantity` float NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedpurchase`
--

INSERT INTO `feedpurchase` (`FeedPurchase_ID`, `Date`, `Quantity`, `Price`) VALUES
(5, '2020-12-08', 40, 61700.9),
(6, '2020-12-18', 400, 370000),
(7, '2020-12-12', 3000, 670000),
(8, '2020-12-18', 100, 22),
(9, '2020-12-15', 100, 2000),
(10, '2020-12-12', 12, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `Production_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `NumberOfEggs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`Production_ID`, `Date`, `NumberOfEggs`) VALUES
(10, '2023-05-09', 12),
(11, '2023-10-27', 10),
(12, '0000-00-00', 32);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Sales_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `NumberOfEggs` int(11) NOT NULL,
  `Revenue` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Sales_ID`, `Date`, `NumberOfEggs`, `Revenue`) VALUES
(9, '2023-10-17', 10, 2000),
(11, '2023-05-04', 5, 300),
(12, '2024-03-22', 4, 500),
(13, '2024-03-13', 2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Username`, `Password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `birdsmortality`
--
ALTER TABLE `birdsmortality`
  ADD PRIMARY KEY (`BirdsMortality_ID`);

--
-- Indexes for table `birdspurchase`
--
ALTER TABLE `birdspurchase`
  ADD PRIMARY KEY (`BirdsPurchase_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `feedconsumption`
--
ALTER TABLE `feedconsumption`
  ADD PRIMARY KEY (`FeedConsumption_ID`),
  ADD KEY `Employee` (`Employee`);

--
-- Indexes for table `feedpurchase`
--
ALTER TABLE `feedpurchase`
  ADD PRIMARY KEY (`FeedPurchase_ID`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`Production_ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Sales_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `birdsmortality`
--
ALTER TABLE `birdsmortality`
  MODIFY `BirdsMortality_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `birdspurchase`
--
ALTER TABLE `birdspurchase`
  MODIFY `BirdsPurchase_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `feedconsumption`
--
ALTER TABLE `feedconsumption`
  MODIFY `FeedConsumption_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `feedpurchase`
--
ALTER TABLE `feedpurchase`
  MODIFY `FeedPurchase_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `Production_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Sales_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedconsumption`
--
ALTER TABLE `feedconsumption`
  ADD CONSTRAINT `FeedConsumption_ibfk_1` FOREIGN KEY (`Employee`) REFERENCES `employee` (`Employee_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
