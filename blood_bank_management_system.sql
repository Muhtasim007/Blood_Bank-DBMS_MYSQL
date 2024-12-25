-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 10:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `ID` int(11) NOT NULL,
  `Blood_Type` varchar(3) NOT NULL,
  `Total_Units` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`ID`, `Blood_Type`, `Total_Units`) VALUES
(1, 'A+', 50.00),
(2, 'A-', 30.00),
(3, 'B+', 40.00),
(4, 'B-', 20.00),
(5, 'AB+', 35.00),
(6, 'AB-', 45.00),
(7, 'O+', 25.00),
(8, 'O-', 22.00);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `ID` int(11) NOT NULL,
  `Donor_ID` int(11) DEFAULT NULL,
  `Donation_Date` date DEFAULT NULL,
  `Blood_Amount` double(5,2) DEFAULT NULL,
  `Blood_Type` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`ID`, `Donor_ID`, `Donation_Date`, `Blood_Amount`, `Blood_Type`) VALUES
(1, 1, '2023-01-15', 0.50, 'A+'),
(2, 2, '2022-10-10', 0.45, 'A-'),
(3, 3, '2023-03-22', 0.60, 'B+'),
(4, 4, '2023-04-18', 0.55, 'B-'),
(5, 5, '2022-11-05', 0.40, 'AB+'),
(6, 6, '2023-02-09', 0.50, 'AB-'),
(7, 7, '2023-05-25', 0.65, 'O+'),
(8, 8, '2023-05-28', 0.65, 'O-'),
(9, 9, '2023-05-30', 0.75, 'B+'),
(10, 10, '2023-05-31', 0.70, 'B+'),
(11, 11, '2023-07-01', 0.62, 'AB+');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `Blood_Type` varchar(3) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Last_Donation_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`ID`, `Name`, `Email`, `Mobile`, `Blood_Type`, `Date_of_Birth`, `Last_Donation_Date`) VALUES
(1, 'Muhtasim Shahriar', 'Muhtasim@gmail.com', '1234567890', 'A+', '1985-02-15', '2023-01-15'),
(2, 'Farhan Shahriar', 'farhan@gmail.com', '0987654321', 'A-', '1990-07-23', '2022-10-10'),
(3, 'Fairuz Aman', 'fairuz@gmail.com', '1122334455', 'B+', '1982-05-12', '2023-03-22'),
(4, 'Mobin Islam', 'mobin@gmail.com', '3344556677', 'B-', '1988-11-19', '2022-11-05'),
(5, 'Ishtihad Inan', 'inan@gmail.com', '4455667788', 'AB+', '1992-03-14', '2023-02-09'),
(6, 'Sadek Prince', 'sadek@gmail.com', '5166778899', 'AB+', '1980-09-29', '2023-05-25'),
(7, 'Prince Mamun', 'princemm@gmail.com', '5966778899', 'O+', '1980-09-29', '2023-05-25'),
(8, 'Shorfuddin Nibir', 'nibir@gmail.com', '2233445566', 'O-', '1995-08-30', '2023-04-18'),
(9, 'Hafiz Rafi', 'hafizrafi@yahoo.com', '22334455', 'B+', '0000-00-00', '0000-00-00'),
(10, 'Mamun Mahmud', 'mamunmahmud@yahoo.com', '22334499', 'B+', '0000-00-00', '2023-06-01'),
(11, 'MD Mahmud', 'MDmahmud@yahoo.com', '22334489', 'AB+', '2001-04-12', '2023-07-01'),
(12, 'Irfan Tushar', 'iftushar@yahoo.com', '22334589', 'B+', '2001-02-12', '2023-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `recipients`
--

CREATE TABLE `recipients` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Blood_Type` varchar(3) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Request_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipients`
--

INSERT INTO `recipients` (`ID`, `Name`, `Email`, `Mobile`, `Blood_Type`, `Date_of_Birth`, `Request_Date`) VALUES
(9, 'Arafat Hosen', 'arfat@gmail.com', '9876543210', 'A+', '1975-02-11', '2023-05-01'),
(10, 'Rakib Khan', 'rakib@gmail.com', '8765432109', 'A-', '1965-06-17', '2023-03-15'),
(11, 'Jessiya Islam', 'jessiya@gmail.com', '7654321098', 'B+', '1981-04-25', '2023-04-10'),
(12, 'Dalim Ullah', 'dalimullah@gmail.com', '6543210987', 'AB-', '1999-12-31', '2023-02-20'),
(13, 'Lamisha Islam', 'lamisha@gmail.com', '5432109876', 'O-', '1995-05-05', '2023-01-30'),
(14, 'Harris Rauf', 'harris@gmail.com', '4321098765', 'AB+', '1988-08-22', '2023-05-17'),
(15, 'Sophia khan', 'sophiaarf@gmail.com', '3210987654', 'B-', '1993-09-03', '2023-04-25'),
(16, 'Shafin khan', 'shafinfool@gmail.com', '3210987684', 'O+', '1993-09-03', '2023-04-28'),
(17, 'Mamun Rafi', 'rafi@yahoo.com', '22334455', 'B+', '0000-00-00', '2023-02-01'),
(18, 'Athar Ali', 'ali@gmail.com', '0987654321', 'B-', '1990-02-02', '2024-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `ID` int(11) NOT NULL,
  `Recipient_ID` int(11) NOT NULL,
  `Request_Date` date NOT NULL,
  `Blood_Type` varchar(3) NOT NULL,
  `Blood_Amount` decimal(5,2) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`ID`, `Recipient_ID`, `Request_Date`, `Blood_Type`, `Blood_Amount`, `Status`) VALUES
(17, 9, '2023-05-01', 'A+', 0.30, 'Fulfilled'),
(18, 10, '2023-03-15', 'A-', 0.50, 'Pending'),
(19, 11, '2023-04-10', 'B+', 0.40, 'Fulfilled'),
(20, 12, '2023-02-20', 'B-', 0.60, 'Pending'),
(21, 13, '2023-01-30', 'AB+', 0.20, 'Fulfilled'),
(22, 14, '2023-05-17', 'AB-', 0.45, 'Pending'),
(23, 15, '2023-04-25', 'O+', 0.35, 'Fulfilled'),
(24, 16, '2023-04-28', 'O-', 0.22, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `blood_type` (`Blood_Type`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Donor_ID` (`Donor_ID`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Mobile` (`Mobile`);

--
-- Indexes for table `recipients`
--
ALTER TABLE `recipients`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`Email`),
  ADD UNIQUE KEY `mobile` (`Mobile`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `recipient_id` (`Recipient_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `recipients`
--
ALTER TABLE `recipients`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`Donor_ID`) REFERENCES `donors` (`ID`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `recipients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
