-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 05:08 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_p1`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `aadhar` char(12) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `aadhar` char(12) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `phone_no` char(10) NOT NULL,
  `mail_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`first_name`, `middle_name`, `last_name`, `aadhar`, `gender`, `dob`, `phone_no`, `mail_id`) VALUES
('darshan', 't', 'm', '1234567', 'm', '1999-09-24', '9110290767', 'haridharshan2321@gmail.com'),
('abhishek', 'p', 'm', '34343', 'm', '1999-11-16', '9876545678', '123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `aadhar` char(12) NOT NULL,
  `cdate` date NOT NULL,
  `cdesc` text NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dl`
--

CREATE TABLE `dl` (
  `aadhar` char(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cov` varchar(20) NOT NULL,
  `edate` date NOT NULL,
  `eid` varchar(20) NOT NULL,
  `dl_id` int(11) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `dl_status` int(11) NOT NULL,
  `dl_issue_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dl`
--

INSERT INTO `dl` (`aadhar`, `name`, `cov`, `edate`, `eid`, `dl_id`, `passwd`, `mail_id`, `dl_status`, `dl_issue_date`) VALUES
('1234567', 'darshan t m', 'MCWG', '2019-11-30', 'e1', 1, 'qwerty', 'haridharshan2321@gmail.com', 1, '2019-11-23'),
('34343', 'abhishek p m', 'MCWG', '2019-12-10', 'e2', 2, 'qw', '123@gmail.com', 1, '2019-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `inspector`
--

CREATE TABLE `inspector` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `privilege` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inspector`
--

INSERT INTO `inspector` (`id`, `username`, `password`, `privilege`) VALUES
(1, 'admin', 'admin', 'llr'),
(2, 'admin2', 'admin2', 'dl'),
(3, 'admin3', 'admin3', 'reg');

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `id` int(11) NOT NULL,
  `aadhar` char(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `license_no` varchar(20) NOT NULL,
  `cov` varchar(20) NOT NULL,
  `license_issue_date` date NOT NULL,
  `license_expiry_date` date NOT NULL,
  `mail_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`id`, `aadhar`, `name`, `license_no`, `cov`, `license_issue_date`, `license_expiry_date`, `mail_id`) VALUES
(0, '1234567', 'darshan t m', 'KA1', 'MCWG', '2019-11-23', '2021-11-23', 'haridharshan2321@gmail.com'),
(0, '34343', 'abhishek p m', 'KA1', 'MCWG', '2019-12-03', '2021-12-03', '123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `llr`
--

CREATE TABLE `llr` (
  `aadhar` char(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cov` varchar(20) NOT NULL,
  `edate` date NOT NULL,
  `eid` varchar(10) NOT NULL,
  `llr_id` int(11) NOT NULL,
  `epwd` char(10) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `llr_status` int(11) NOT NULL,
  `llr_issue_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llr`
--

INSERT INTO `llr` (`aadhar`, `name`, `cov`, `edate`, `eid`, `llr_id`, `epwd`, `passwd`, `mail_id`, `llr_status`, `llr_issue_date`) VALUES
('1234567', 'darshan t m', 'MCWG', '2019-11-30', 'e1', 4, '__________', 'qwerty', 'haridharshan2321@gmail.com', 1, '2019-09-23'),
('34343', 'abhishek p m', 'MCWG', '2019-09-10', 'e2', 5, '__________', 'qw', '123@gmail.com', 1, '2019-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `district` varchar(30) NOT NULL,
  `rto_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`district`, `rto_address`) VALUES
('kodagu', 'madikeri');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `aadhar` char(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cov` varchar(30) NOT NULL,
  `model` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `rdate` date NOT NULL,
  `rid` int(11) NOT NULL,
  `passwd` varchar(30) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `reg_status` int(11) NOT NULL,
  `reg_issue_date` date NOT NULL,
  `vno` varchar(20) NOT NULL,
  `reg_expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`aadhar`, `name`, `cov`, `model`, `company`, `rdate`, `rid`, `passwd`, `mail_id`, `reg_status`, `reg_issue_date`, `vno`, `reg_expiry_date`) VALUES
('1234567', 'darshan t m', 'MCWG', 'rx100', 'yamaha', '2019-11-30', 10, 'qwerty', 'haridharshan2321@gmail.com', -1, '2019-11-24', 'KA12Q9890', '2021-11-24'),
('34343', 'abhishek p m', 'MCWG', '', '', '2019-12-10', 11, 'qw', '123@gmail.com', 1, '2019-12-03', 'ka121551', '2021-12-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`aadhar`);

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`aadhar`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `aadhar` (`aadhar`);

--
-- Indexes for table `dl`
--
ALTER TABLE `dl`
  ADD PRIMARY KEY (`dl_id`),
  ADD KEY `aadhar` (`aadhar`);

--
-- Indexes for table `inspector`
--
ALTER TABLE `inspector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD KEY `license_ibfk_1` (`aadhar`);

--
-- Indexes for table `llr`
--
ALTER TABLE `llr`
  ADD PRIMARY KEY (`llr_id`),
  ADD KEY `aadhar` (`aadhar`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`district`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `aadhar` (`aadhar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dl`
--
ALTER TABLE `dl`
  MODIFY `dl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `llr`
--
ALTER TABLE `llr`
  MODIFY `llr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
