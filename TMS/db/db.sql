-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 09:30 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email`, `userName`, `password`, `gender`, `dob`, `picture`, `type`) VALUES
('Avishek ', 'avishek123@gmail.co', 'saha', '123', 'male', '10/01/1999', 'uploads/IMG_0082 (3) edit pro-min.jpg', ''),
('Daiyan', 'd@gmail.com', 'dk', '123', 'male', '03/07/2000', 'uploads/me.jpeg', 'Admin'),
('naogaon titans', 'dsarker333@gmail.com', 'd', '654', 'male', '11/11/11', '', 'Admin'),
('emon1', 'hackall50351@gmail.com', 'emon1', '', 'male', '2-2-2000', 'uploads/IMG_20170917_104839_650.jpg', 'Admin'),
('emon', 'hackall50351@gmail.com', 'emon', '123', 'male', '2-2-2000', 'uploads/IMG_20170917_104839_650.jpg', 'Admin'),
('d', 'hackall50351@gmail.com', 'd', '654', 'male', '2-2-2000', '', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `oid` bigint(100) NOT NULL,
  `tid` int(50) NOT NULL,
  `eid` int(50) NOT NULL,
  `Done/Not` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`oid`, `tid`, `eid`, `Done/Not`) VALUES
(1, 2, 3, 'Delivery Done');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `order taken` varchar(50) NOT NULL,
  `delivery` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `name`, `gender`, `dob`, `order taken`, `delivery`) VALUES
(1, 'Dipto', 'Male', '31-12-2000', 'yes', 'Done'),
(2, 'Adit', 'Male', '2-9-1999', 'No', 'Not yet'),
(3, 'Ovi', 'Male', '10-2-1998', 'Yes', 'On the way');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `pid` int(50) NOT NULL,
  `tid` int(50) NOT NULL,
  `descr` varchar(200) NOT NULL,
  `order_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `delivered` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `uname`, `pid`, `tid`, `descr`, `order_date`, `delivery_date`, `delivered`) VALUES
(1, 'd', 3, 2, '12', '0000-00-00', '0000-00-00', 1),
(2, 'd', 2, 2, '36', '2020-09-17', '2020-09-24', 0),
(3, 'emon', 3, 2, '32\" 60\"', '2020-09-19', '2020-09-26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `oid` bigint(100) NOT NULL,
  `user_ID` int(50) NOT NULL,
  `oname` varchar(50) NOT NULL,
  `oquantity` mediumint(100) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`oid`, `user_ID`, `oname`, `oquantity`, `order_date`, `delivery_date`, `note`) VALUES
(1, 1, 'S-1', 2, '12/3/2020', '15/3/2020', 'urgently needed'),
(2, 2, 'S-2', 1, '12/4/2019', '15/4/2019', 'Nothing');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` bigint(100) NOT NULL,
  `tid` int(50) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `pquantity` mediumint(100) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `tid`, `pname`, `description`, `pquantity`, `price`) VALUES
(2, 2, 'Kameej', 'h-19\"\r\nW-20\"', 1, 300),
(3, 2, 'Shirt', '36\"', 1, 700);

-- --------------------------------------------------------

--
-- Table structure for table `tailor`
--

CREATE TABLE `tailor` (
  `ID` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tailor`
--

INSERT INTO `tailor` (`ID`, `name`, `email`, `userName`, `password`, `gender`, `dob`, `picture`, `type`) VALUES
(2, 'Naznin', 'n@gmail.com', 'nn', '2345', 'female', '03/11/2000', 'uploads/nn1.jpg', ''),
(3, 'emon', 'shakilajannatul97@gmail.com', 'emon', '123', 'male', '2-2-2001', ' ', 'Tailor'),
(4, '', '', '', '', '', '', ' ', ''),
(5, 'kamal', '', '', '', '', '', ' ', ''),
(6, 'kamal', 'hackall50351@gmail.com', 'kamal', '123', 'female', '2-2-2000', ' ', 'Tailor'),
(7, 'emon', 'hackall50351@gmail.com', 'emon', '123', 'male', '2-2-2000', ' ', 'Tailor');

-- --------------------------------------------------------

--
-- Table structure for table `tailors_order`
--

CREATE TABLE `tailors_order` (
  `oid` bigint(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tailors_order`
--

INSERT INTO `tailors_order` (`oid`, `note`) VALUES
(1, 'Order taken successfully'),
(2, 'Order Taken successfully');

-- --------------------------------------------------------

--
-- Table structure for table `track_order`
--

CREATE TABLE `track_order` (
  `oid` bigint(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `name`, `email`, `userName`, `password`, `gender`, `dob`, `picture`, `type`) VALUES
(1, 'sdfs', 'n@gmail.com', 'saha', '1234', 'male', '07/09/2000', '', 'User'),
(2, 'Naznin', 'nahar@gmail.com', 'naz', '2345', 'female', '12/03/1998', '', 'User'),
(4, 'naogaon titans', 'dsarker333@gmail.com', 'd', '1', 'other', '11/11/11', '', 'User'),
(5, 'emon', 'ontorahmed92@gmail.com', 'emon', '123', 'male', '2-2-2000', '', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tailor`
--
ALTER TABLE `tailor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tailors_order`
--
ALTER TABLE `tailors_order`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `track_order`
--
ALTER TABLE `track_order`
  ADD KEY `oid` (`oid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `oid` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tailor`
--
ALTER TABLE `tailor`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tailors_order`
--
ALTER TABLE `tailors_order`
  MODIFY `oid` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `track_order`
--
ALTER TABLE `track_order`
  ADD CONSTRAINT `track_order_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `products` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
