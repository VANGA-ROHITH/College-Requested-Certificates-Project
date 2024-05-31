-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 08:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mainproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `name`, `username`, `password`, `designation`, `email`) VALUES
('A_2710738', 'VANGA ROHITH', 'administrator', 'administrator', 'Manager', 'rohithvanga24@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `reqcer`
--

CREATE TABLE `reqcer` (
  `id` int(11) NOT NULL,
  `reqcer` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `resfrom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reqcer`
--

INSERT INTO `reqcer` (`id`, `reqcer`, `name`, `purpose`, `status`, `resfrom`) VALUES
(5, 'Bona', 'SRESTA', 'Education', 'Approved', 'admin'),
(6, 'all certificates', 'supriya', 'Schorlarship', 'Approved', 'admin'),
(7, 'Custodian', 'Rohith', 'Passport', 'Approved', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(25) NOT NULL,
  `htno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `htno`, `name`, `gender`, `email`, `mobile`, `year`, `branch`, `sem`, `username`, `password`) VALUES
('S_9227090', '19B41A0503', 'Sanjeev', 'male', '01dell786@gmail.com', '9959351525', '4', 'CIV', '1', 'sanjeev', 'sanjeev'),
('S_4261987', '19B41A0522', 'Supriya', 'female', 'supriya@gmail.com', '9440864077', '4', 'CSE', '1', 'supriya', 'supriya'),
('S_5858950', '19B41A0510', 'SRESTA', 'female', 'vangarohith6092@gmail.com', '9705592820', '4', 'EEE', '1', 'sresta', 'sresta'),
('S_6392570', '19B41A0577', 'VANGA ROHITH', 'male', 'vangarohith60@gmail.com', '9705597826', '4', 'CSE', '1', 'Rohith', 'rohith');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reqcer`
--
ALTER TABLE `reqcer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reqcer`
--
ALTER TABLE `reqcer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
