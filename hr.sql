-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2020 at 03:09 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `important_details`
--

CREATE TABLE `important_details` (
  `secret_msg` varchar(100) NOT NULL,
  `label` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `important_details`
--

INSERT INTO `important_details` (`secret_msg`, `label`) VALUES
('xyz', 1),
('pqr', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `userid` varchar(16) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `dtob` date DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `user_rating` varchar(20) DEFAULT NULL,
  `emailid` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`userid`, `password`, `fname`, `lname`, `gender`, `dtob`, `country`, `user_rating`, `emailid`) VALUES
('abiali123', 'ali@123', 'Abiali', 'Husain', 'M', '1998-03-23', 'India', '80', 'abiali.husain5152@gmail.com'),
('andrew123', 'andrew', 'Andrew', 'Kamble', 'M', '1999-04-01', 'India', '1000', 'andrew@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
