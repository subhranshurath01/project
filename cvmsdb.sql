-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 02:56 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin user', 'admin', 7898799797, 'admin@gmail.com', 'admin', '2022-04-18 06:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`dept_id`, `dept_name`, `status`) VALUES
(1, 'Human Resources', 'Active'),
(3, 'Sales', 'Active'),
(8, 'Developer', 'Active'),
(9, 'Account', 'Active'),
(10, 'Exam Section', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`emp_id`, `emp_name`, `mob`, `email`, `gender`, `dept_id`, `status`) VALUES
(1, 'Samit Dey', '9898990000', 'samit@inss.com', 'Male', 1, 'Active'),
(2, 'Nilam Singh', '9199988887', 'nilam@inss.com', 'Female', 8, 'Active'),
(3, 'Prakash Ray', '8987766544', 'prakash@gmail.in', 'Male', 3, 'Active'),
(4, 'Santanu Sahoo', '9098876666', 'san@inss.com', 'Male', 8, 'Active'),
(5, 'Prajna Bharti Dash', '9887665543', 'prajna@inss.com', 'Male', 8, 'Active'),
(6, 'Radha Kanta Dash', '9888988888', 'dash@gmail.in', 'Male', 9, 'Active'),
(7, 'Chinmay Dey', '9965478955', 'chinmay@inss.com', 'Male', 10, 'Active'),
(8, 'Alisha Mishra', '9888776655', 'alisha@gmail.com', 'Male', 10, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblgate`
--

CREATE TABLE `tblgate` (
  `gate_id` int(11) NOT NULL,
  `gate_name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgate`
--

INSERT INTO `tblgate` (`gate_id`, `gate_name`, `status`) VALUES
(1, 'Gate No - 1', 'Active'),
(2, 'Gate No - 2', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblreason`
--

CREATE TABLE `tblreason` (
  `reason_id` int(11) NOT NULL,
  `Reason` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreason`
--

INSERT INTO `tblreason` (`reason_id`, `Reason`, `status`) VALUES
(1, 'Interview', 'Active'),
(2, 'Meeting', 'Active'),
(3, 'Maintenance', 'Active'),
(4, 'Official', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gate_id` int(11) NOT NULL,
  `joindate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`user_id`, `name`, `mob`, `username`, `password`, `gate_id`, `joindate`, `status`) VALUES
(1, 'Abhi Ram Panda', '9199988887', 'user', 'user@123', 1, '2022-04-18 18:32:19', 'Active'),
(3, 'Ram Dash', '9999988882', 'user1', 'user@123', 2, '2022-04-18 18:39:36', 'Active'),
(4, 'KEDIA RAKSHA', '9199080887', 'gateman', 'user@123', 1, '2022-04-20 13:06:09', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblvisitor`
--

CREATE TABLE `tblvisitor` (
  `ID` int(5) NOT NULL,
  `gate` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `company` varchar(100) NOT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `IdProof` varchar(100) NOT NULL,
  `WhomtoMeet` int(11) NOT NULL,
  `Deptartment` int(11) NOT NULL,
  `ReasontoMeet` int(11) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `no_of_person` int(11) NOT NULL,
  `EnterDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `outtime` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'In',
  `visitorImg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvisitor`
--

INSERT INTO `tblvisitor` (`ID`, `gate`, `FullName`, `Email`, `MobileNumber`, `company`, `Address`, `IdProof`, `WhomtoMeet`, `Deptartment`, `ReasontoMeet`, `purpose`, `no_of_person`, `EnterDate`, `outtime`, `status`, `visitorImg`) VALUES
(1, 1, 'xyz', 'abc@gmail.com', 9365478955, 'INSS', 'Bhubaneswar', '909876765432', 1, 1, 1, 'meeting', 0, '2022-06-13 04:58:58', '2022-06-13 11:38:47', 'In', '1.jpeg'),
(2, 1, 'KEDIA RAKSHA', 'abc@gmail.com', 7765478955, 'Omfed', 'Saheed nager ,\r\nBhubaneswar', '909876765432', 1, 1, 2, 'Project Meeting', 0, '2022-06-13 05:01:18', '2022-06-13 13:14:56', 'Out', '2.jpeg'),
(3, 1, 'VERMA RAMESH KR', 'abc@gmail.com', 9065478955, 'CEB', 'Patia,\r\nBhubaneswar', '919876765432', 2, 8, 2, 'Project Meeting', 0, '2022-06-12 05:02:13', '2022-06-12 12:30:26', 'In', '3.jpeg'),
(4, 1, 'VERMA RAMESH KR', 'abc@gmail.com', 9065478955, 'CEB', 'Patia,\r\nBhubaneswar', '919876765432', 1, 1, 1, 'Interview', 0, '2022-06-02 05:18:18', '2022-06-02 13:14:20', 'In', '4.jpeg'),
(5, 2, 'Madhu Mita Nayak', 'mad@gmail.com', 9965478955, 'Anioin Digital Pvt. Ltd', 'Rupali Square, Saheednagar, Bhubaneswar', 'ANION09RD234', 1, 1, 2, 'Project Meeting', 3, '2022-06-02 05:20:18', '2022-06-02 13:10:56', 'In', '5.jpeg'),
(6, 1, 'Saraswati Patra', 'abc@gmail.com', 7765478955, 'CEB', 'Patia, Bhubaneswar', 'REGD05B132123', 2, 8, 1, 'Job', 0, '2022-05-20 05:21:40', '2022-05-20 12:10:56', 'In', '6.jpeg'),
(7, 1, 'Nilam Singh', 'nilam@123.in', 9876432111, 'CEB', 'Patia bbsr', '900876765432', 1, 1, 2, 'meeting', 0, '2022-05-21 05:30:00', '2022-05-21 12:24:56', 'In', '7.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `tblgate`
--
ALTER TABLE `tblgate`
  ADD PRIMARY KEY (`gate_id`);

--
-- Indexes for table `tblreason`
--
ALTER TABLE `tblreason`
  ADD PRIMARY KEY (`reason_id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gate_id` (`gate_id`);

--
-- Indexes for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Deptartment` (`Deptartment`),
  ADD KEY `ReasontoMeet` (`ReasontoMeet`),
  ADD KEY `WhomtoMeet` (`WhomtoMeet`),
  ADD KEY `gate` (`gate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblgate`
--
ALTER TABLE `tblgate`
  MODIFY `gate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblreason`
--
ALTER TABLE `tblreason`
  MODIFY `reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD CONSTRAINT `tblemployee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbldepartment` (`dept_id`);

--
-- Constraints for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD CONSTRAINT `tbluser_ibfk_1` FOREIGN KEY (`gate_id`) REFERENCES `tblgate` (`gate_id`);

--
-- Constraints for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD CONSTRAINT `tblvisitor_ibfk_1` FOREIGN KEY (`ReasontoMeet`) REFERENCES `tblreason` (`reason_id`),
  ADD CONSTRAINT `tblvisitor_ibfk_2` FOREIGN KEY (`Deptartment`) REFERENCES `tbldepartment` (`dept_id`),
  ADD CONSTRAINT `tblvisitor_ibfk_3` FOREIGN KEY (`WhomtoMeet`) REFERENCES `tblemployee` (`emp_id`),
  ADD CONSTRAINT `tblvisitor_ibfk_4` FOREIGN KEY (`gate`) REFERENCES `tblgate` (`gate_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
