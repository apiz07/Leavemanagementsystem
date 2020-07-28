-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 01:39 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leavemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminleave`
--

CREATE TABLE `adminleave` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `passwords` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminleave`
--

INSERT INTO `adminleave` (`id`, `username`, `passwords`, `updationDate`) VALUES
(1, 'admin', '24875dde38e150471fb7d87123d0a4ae', '2020-07-26 04:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `employeeleave`
--

CREATE TABLE `employeeleave` (
  `id` int(11) NOT NULL,
  `Empid` varchar(100) NOT NULL,
  `F_name` varchar(150) NOT NULL,
  `L_name` varchar(150) NOT NULL,
  `Emailid` varchar(200) NOT NULL,
  `Password_emp` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `dateob` char(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeleave`
--

INSERT INTO `employeeleave` (`id`, `Empid`, `F_name`, `L_name`, `Emailid`, `Password_emp`, `Gender`, `dateob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(3, 'FKI0095', 'Mohd Khairul Hisyam', 'Mohd Amin', 'khairulhisyam@gmail.com', '990034cf7a01817d25bae00df5b87b7a', 'Male', '12 April, 1999', 'Information Technology', '123, Pekan Kunak', 'Kunak', 'Malaysia', '014567892', 1, '2020-07-26 05:19:35'),
(4, 'FKI0047', 'Muhammad Norsafwan', 'Sazali', 'safwansazali@gmail.com', '84f7063a226115179d3d2748b71716d3', 'Male', '8 December, 1999', 'Information Technology', 'Batu 12', 'Sandakan', 'Malaysia', '014778920', 1, '2020-07-26 05:21:27'),
(5, 'FKI106', 'Vialli', 'Joseph', 'vialli@gmail.com', 'c5437f25ebdf473bc5d6f3df929ad72d', 'Male', '28 May, 2020', 'Information Technology', 'Bandar Sierra', 'Kota Kinabalu', 'Malaysia', '014337456', 1, '2020-07-26 05:23:27'),
(6, 'FKI0078', 'Mekhi Marolyne', 'Uju', 'mekhimarolyne@gmail.com', 'ea5c267d73bc8fe70bf032a3b09c17a1', 'Female', '28 February, 1999', 'Information Technology', '189', 'Kota Belud', 'Malaysia', '0198089294', 1, '2020-07-26 11:02:08'),
(7, 'FKAL0069', 'Tiong Li Mei', 'Hiponia', 'limei@gmail.com', '71e390a9bf8af1d5bd877c7cd2dcdbcd', 'Female', '11 January, 1996', 'Marketing', '1212, permy', 'Miri', 'Malaysia', '0119293210', 1, '2020-07-26 11:03:48'),
(8, 'FKJ0084', 'Muhammad Fauzan', 'Jefri', 'fauzan@fkibrotha.com', '75c7f1df727715acd3c85ee1d5f46ab5', 'Male', '22 October, 1999', 'Research and Development', 'Eastern', 'Tawau', 'Malaysia', '0187762345', 1, '2020-07-26 11:21:28'),
(9, 'FKJ118', 'Muhamad Akmal', 'Azmi', 'akmal@fkibrotha.com', '84595183f5c37c247a2cfcd7f89016a2', 'Male', '26 October, 1999', 'Production', '118', 'Papar', 'Malaysia', '0197682345', 1, '2020-07-26 11:23:11'),
(10, 'FKJ147', 'Mohd Zulhairi', 'Abdul Rahman', 'zul@fkibrotha.com', '1a192ce00737f5cbecf69dec3f9083da', 'Male', '15 September, 1999', 'Production', '147', 'Beaufort', 'Malaysia', '0182635463', 1, '2020-07-26 11:26:29'),
(11, 'FPE106', 'Swyne Courtney', 'Gelbert', 'swyne@fkibrotha.com', 'a1b2c9258e0a73287cbf2afe362900bb', 'Female', '22 October, 2000', 'Accounting and Finances', 'no 167 kingfisher', 'Kota Kinabalu', 'Malaysia', '0109298876', 1, '2020-07-26 11:28:31'),
(12, 'FHR174', 'Nurin Ubaidah', 'Bahrin', 'nurinubaidah@fkibrotha.com', 'f38475898b090d03e8a9b0e6122c13d1', 'Female', '18 December, 1999', '', '174, Bukit Sapi', 'Sandakan', 'Malaysia', '0145675396', 1, '2020-07-26 11:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `leavedept`
--

CREATE TABLE `leavedept` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leavedept`
--

INSERT INTO `leavedept` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Information Technology', 'IT', 'IT1001', '2020-07-26 05:00:06'),
(2, 'Human Resource', 'HR', 'HR0101', '2020-07-26 10:53:14'),
(3, 'Accounting and Finances', 'ACF', 'ACF302', '2020-07-26 10:54:26'),
(4, 'Marketing', 'M', 'M3000', '2020-07-26 10:54:42'),
(5, 'Research and Development', 'R&D', 'RD3403', '2020-07-26 10:55:11'),
(6, 'Production', 'P', 'P3430', '2020-07-26 10:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(1, 'Annual', '20/02/2020', '25/02/2020', 'I want', '2020-07-26 10:16:49', 'you should work why want to cuti2', '2020-07-26 15:48:41 ', 2, 1, 3),
(2, 'Annual', '14/09/2019', '31/12/2019', 'i want to calm myself', '2020-07-26 10:51:11', 'Why dont you just stop working from here', '2020-07-26 16:22:02 ', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `leavetypes`
--

CREATE TABLE `leavetypes` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leavetypes`
--

INSERT INTO `leavetypes` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Annual', 'Annual Leave', '2020-07-26 05:07:19'),
(2, 'Sick', 'If fall sick and have MC from panel clinic', '2020-07-26 10:58:03'),
(3, 'Public Holiday', 'Any Public Holiday within Country', '2020-07-26 10:58:44'),
(4, 'Maternity ', '3 Month for pregnant women before labour', '2020-07-26 10:59:15'),
(5, 'Emergency', 'For emergency case only', '2020-07-26 10:59:39'),
(6, 'Casual', 'Leave outside the calendar and not from annual leave', '2020-07-26 11:00:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminleave`
--
ALTER TABLE `adminleave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeeleave`
--
ALTER TABLE `employeeleave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leavedept`
--
ALTER TABLE `leavedept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `leavetypes`
--
ALTER TABLE `leavetypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminleave`
--
ALTER TABLE `adminleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employeeleave`
--
ALTER TABLE `employeeleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `leavedept`
--
ALTER TABLE `leavedept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leavetypes`
--
ALTER TABLE `leavetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
