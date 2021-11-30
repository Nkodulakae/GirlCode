-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 03:11 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secure_travelling`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driverId` int(11) NOT NULL,
  `driverName` varchar(50) DEFAULT NULL,
  `driverSurname` varchar(50) DEFAULT NULL,
  `driverPhone` int(10) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverId`, `driverName`, `driverSurname`, `driverPhone`) VALUES
(1, 'a', 'aaa', 0000011111);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passId` int(11) NOT NULL,
  `passName` varchar(50) DEFAULT NULL,
  `passSurname` varchar(50) DEFAULT NULL,
  `passNokPhone` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `passStreet` varchar(50) DEFAULT NULL,
  `passSuburb` varchar(50) DEFAULT NULL,
  `passTown` varchar(50) DEFAULT NULL,
  `passPostalCode` int(4) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passId`, `passName`, `passSurname`, `passNokPhone`, `passStreet`, `passSuburb`, `passTown`, `passPostalCode`) VALUES
(4, 'db', 'zd', 0000000000, 'zDb', 'zbd', 'zD', 0000),
(5, 'gxfn', 'xng', 0000000000, 'xnx', 'xn ', 'nxg', 0000),
(6, 'grz ', ' w', 0000000000, ' w', 'awg', 'gfwa', 0000),
(7, 'RNh', 'DBN', 0000000000, 'cs', 'an', 'sf ', 0000),
(8, 'asd b', 'db', 0000000000, 'baaaa ', 'rnet', 'dtk', 0000),
(9, 'FDSAE', 'BHFDT', 0000000000, 'BUZZARD CRESENT', 'EAST RAND', 'BOKSBURG', 1459),
(10, 'Pretty', 'Siyephu', 0737119552, '1522 buzzard cresent', 'East Rand', 'Boksburg', 1459),
(11, 'Kgau', 'Tshabalala', 0678532691, '14 Mbatha', 'embalenhle', 'Secunda', 2285);

-- --------------------------------------------------------

--
-- Table structure for table `taxi`
--

CREATE TABLE `taxi` (
  `taxi_id` int(11) NOT NULL,
  `taxiRegNo` varchar(15) NOT NULL,
  `taxiModel` varchar(25) DEFAULT NULL,
  `capacity` int(2) NOT NULL,
  `taxiLoadTime` time NOT NULL,
  `taxiLeaveTime` time NOT NULL,
  `taxiDriverId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taxi`
--

INSERT INTO `taxi` (`taxi_id`, `taxiRegNo`, `taxiModel`, `capacity`, `taxiLoadTime`, `taxiLeaveTime`, `taxiDriverId`) VALUES
(1, 'KLM 504 GP', 'QUANTUM', 15, '09:00:00', '12:00:00', NULL),
(2, 'DSA 214 MP', 'SIYAYA', 15, '12:00:00', '15:00:00', NULL),
(3, 'GTR 663 L', 'SIYAYA', 15, '15:00:00', '18:00:00', NULL),
(4, 'YTO 365 FS', 'IVECO', 22, '18:00:00', '21:00:00', NULL),
(5, 'KLM 504 GP', 'QUANTUM', 15, '09:00:00', '12:00:00', NULL),
(6, 'DSA 214 MP', 'SIYAYA', 15, '12:00:00', '15:00:00', NULL),
(7, 'GTR 663 L', 'SIYAYA', 15, '15:00:00', '18:00:00', NULL),
(8, 'YTO 365 FS', 'IVECO', 22, '18:00:00', '21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxi_admin`
--

CREATE TABLE `taxi_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(25) NOT NULL,
  `adminPhone` int(10) UNSIGNED ZEROFILL NOT NULL,
  `adminPassword` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taxi_admin`
--

INSERT INTO `taxi_admin` (`adminId`, `adminName`, `adminPhone`, `adminPassword`) VALUES
(2, 'Aletta', 0781385528, '202cb962ac'),
(3, 'Lele', 0764952823, '81dc9bdb52'),
(4, 'Wazi', 0736699521, '81dc9bdb52'),
(5, 'jkj', 0123456789, '81dc9bdb52'),
(6, 'lolo', 0123456788, 'b0c7ae2316'),
(7, 'pre', 0725694412, 'c2ba1bc54b'),
(8, 'Azola', 0781234567, 'e2fc714c47'),
(9, 'prett', 0676697040, '1def1713eb'),
(10, 'Ado', 0647580566, '81dc9bdb52'),
(11, 'Kooola', 0791234567, '202cb962ac'),
(12, 'ndumiso', 0812345678, '3147da8ab4'),
(13, 'Phumla', 0612345678, '94c7bb58ef'),
(14, 'Carol', 0712345678, '202cb962ac');

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `tripId` int(11) NOT NULL,
  `tripDeparture` varchar(50) DEFAULT NULL,
  `tripDestination` varchar(50) DEFAULT NULL,
  `tripPassId` int(11) NOT NULL,
  `tripTaxi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driverId`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passId`);

--
-- Indexes for table `taxi`
--
ALTER TABLE `taxi`
  ADD PRIMARY KEY (`taxi_id`),
  ADD KEY `cons_driver_id` (`taxiDriverId`);

--
-- Indexes for table `taxi_admin`
--
ALTER TABLE `taxi_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`tripId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driverId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `passId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `taxi`
--
ALTER TABLE `taxi`
  MODIFY `taxi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `taxi_admin`
--
ALTER TABLE `taxi_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `tripId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `taxi`
--
ALTER TABLE `taxi`
  ADD CONSTRAINT `cons_driver_id` FOREIGN KEY (`taxiDriverId`) REFERENCES `driver` (`driverId`),
  ADD CONSTRAINT `cons_owner_id` FOREIGN KEY (`taxiOwnerId`) REFERENCES `owner` (`ownerId`);

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `taxi_regNo` FOREIGN KEY (`tripTaxiRegNo`) REFERENCES `taxi` (`taxiRegNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
