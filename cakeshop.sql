-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 02:01 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemId` char(5) COLLATE utf16_bin NOT NULL,
  `itemName` varchar(50) COLLATE utf16_bin NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemId`, `itemName`, `quantity`, `price`) VALUES
('ID001', 'Kue Mangkok', 0, 35000),
('ID002', 'Kue Ku', 0, 35000),
('ID003', 'Putu Mayang', 0, 20000),
('ID004', 'Bika Ambon', 0, 15000),
('ID005', 'Talam Campur', 0, 35000),
('ID006', 'Kue Dadar', 0, 20000),
('ID007', 'Kue Getuk', 0, 20000),
('ID008', 'Bakwan', 0, 10000),
('ID009', 'Martabak', 0, 10000),
('ID010', 'Gemblong', 0, 10000),
('ID011', 'Cakwe', 0, 10000),
('ID012', 'Risoles Sayur', 0, 9000),
('ID013', 'Kroket', 0, 9000),
('ID014', 'Risoles Mayones', 0, 9000),
('ID015', 'Tahu', 0, 15000),
('ID016', 'Kolak', 0, 20000),
('ID017', 'Bolu Kukus', 0, 10000),
('ID018', 'Bugis', 0, 15000),
('ID019', 'Nagasari', 0, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffId` char(5) COLLATE utf16_bin NOT NULL,
  `staffName` varchar(50) COLLATE utf16_bin NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffId`, `staffName`, `salary`) VALUES
('YS001', 'Jihad Fa', 30000),
('YS002', 'Mita', 3000000),
('YS003', 'emi', 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` char(5) COLLATE utf16_bin NOT NULL,
  `staffId` char(5) COLLATE utf16_bin NOT NULL,
  `itemId` char(5) COLLATE utf16_bin NOT NULL,
  `quantity` int(11) NOT NULL,
  `transactionDate` date DEFAULT NULL,
  `totalPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `staffId`, `itemId`, `quantity`, `transactionDate`, `totalPrice`) VALUES
('TS001', 'YS001', 'ID001', 2, '2019-12-06', 3000),
('TS002', 'YS001', 'ID001', 2, '2019-12-05', 3000),
('TS003', 'YS001', 'ID002', 3, '2019-12-05', 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`),
  ADD KEY `staffId` (`staffId`),
  ADD KEY `itemId` (`itemId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `staff` (`staffId`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `items` (`itemId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
