-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 31, 2017 at 01:54 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Test`
--

-- --------------------------------------------------------

--
-- Table structure for table `CON_COURSE_MODULE`
--

CREATE TABLE `CON_COURSE_MODULE` (
  `CourseID` varchar(10) NOT NULL,
  `MODULEID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CON_COURSE_MODULE`
--

INSERT INTO `CON_COURSE_MODULE` (`CourseID`, `MODULEID`) VALUES
('COU1', 'MOD1'),
('COU1', 'MOD1'),
('COU1', 'MOD2'),
('COU1', 'MOD3'),
('COU1', 'MOD4'),
('COU1', 'MOD5'),
('COU2', 'MOD6'),
('COU2', 'MOD7'),
('COU2', 'MOD8'),
('COU2', 'MOD9'),
('COU2', 'MOD10'),
('COU3', 'MOD1'),
('COU3', 'MOD2'),
('COU3', 'MOD3'),
('COU3', 'MOD4'),
('COU3', 'MOD5'),
('COU1', 'MOD6'),
('COU3', 'MOD7');

-- --------------------------------------------------------

--
-- Table structure for table `COURSE`
--

CREATE TABLE `COURSE` (
  `CourseID` varchar(10) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COURSE`
--

INSERT INTO `COURSE` (`CourseID`, `Name`) VALUES
('COU1', 'CourseName1'),
('COU2', 'CourseName2'),
('COU3', 'CourseName3');

-- --------------------------------------------------------

--
-- Table structure for table `LECTURER`
--

CREATE TABLE `LECTURER` (
  `LecID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Surname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LECTURER`
--

INSERT INTO `LECTURER` (`LecID`, `Name`, `Surname`) VALUES
(1, 'LecturerName1', 'LecturerSurname1'),
(2, 'LecturerName2', 'LecturerSurname2'),
(3, 'LecturerName3', 'LecturerSurname3'),
(4, 'LecturerName4', 'LecturerSurname4'),
(5, 'LecturerName5', 'LecturerSurname5'),
(6, 'LecturerName6', 'LecturerSurname6'),
(7, 'LecturerName7', 'LecturerSurname7'),
(8, 'LecturerName8', 'LecturerSurname8'),
(9, 'LecturerName9', 'LecturerSurname9'),
(10, 'LecturerName10', 'LecturerSurname10');

-- --------------------------------------------------------

--
-- Table structure for table `MODULE`
--

CREATE TABLE `MODULE` (
  `ModuleID` varchar(6) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `LecturerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MODULE`
--

INSERT INTO `MODULE` (`ModuleID`, `Name`, `LecturerID`) VALUES
('MOD1', 'ModuleName1', 1),
('MOD10', 'ModuleName10', 1),
('MOD2', 'ModuleName2', 5),
('MOD3', 'ModuleName3', 7),
('MOD4', 'ModuleName4', 8),
('MOD5', 'ModuleName5', 10),
('MOD6', 'ModuleName6', 4),
('MOD7', 'ModuleName7', 6),
('MOD8', 'ModuleName8', 2),
('MOD9', 'ModuleName9', 7);

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `StudentID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Name` varchar(20) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `CourseID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`StudentID`, `Name`, `Surname`, `CourseID`) VALUES
(100, 'StudentName1', 'StudentSurname1', 'COU1'),
(101, 'StudentName1', 'StudentSurname1', 'COU1'),
(102, 'StudentName2', 'StudentSurname2', 'COU2'),
(103, 'StudentName3', 'StudentSurname3', 'COU3'),
(104, 'StudentName4', 'StudentSurname4', 'COU1'),
(105, 'StudentName5', 'StudentSurname5', 'COU2'),
(106, 'StudentName6', 'StudentSurname6', 'COU3'),
(107, 'StudentName7', 'StudentSurname7', 'COU3'),
(108, 'StudentName8', 'StudentSurname8', 'COU3'),
(109, 'StudentName9', 'StudentSurname9', 'COU1'),
(110, 'StudentName10', 'StudentSurname10', 'COU1'),
(111, 'StudentName11', 'StudentSurname11', 'COU2'),
(112, 'StudentName12', 'StudentSurname12', 'COU1'),
(113, 'StudentName13', 'StudentSurname13', 'COU1'),
(114, 'StudentName14', 'StudentSurname14', 'COU2'),
(115, 'StudentName15', 'StudentSurname15', 'COU3'),
(116, 'StudentName16', 'StudentSurname16', 'COU3'),
(117, 'StudentName17', 'StudentSurname17', 'COU1'),
(118, 'StudentName18', 'StudentSurname18', 'COU1'),
(119, 'StudentName19', 'StudentSurname19', 'COU3'),
(120, 'StudentName20', 'StudentSurname20', 'COU1'),
(121, 'StudentName21', 'StudentSurname21', 'COU2'),
(122, 'StudentName22', 'StudentSurname22', 'COU1'),
(123, 'StudentName23', 'StudentSurname23', 'COU1'),
(124, 'StudentName24', 'StudentSurname24', 'COU3'),
(125, 'StudentName25', 'StudentSurname25', 'COU2'),
(126, 'StudentName26', 'StudentSurname26', 'COU2'),
(127, 'StudentName27', 'StudentSurname27', 'COU2'),
(128, 'StudentName28', 'StudentSurname28', 'COU1'),
(129, 'StudentName29', 'StudentSurname29', 'COU3'),
(130, 'StudentName30', 'StudentSurname30', 'COU3'),
(131, 'StudentName31', 'StudentSurname31', 'COU1'),
(132, 'StudentName32', 'StudentSurname32', 'COU1'),
(133, 'StudentName33', 'StudentSurname33', 'COU1'),
(134, 'StudentName34', 'StudentSurname34', 'COU1'),
(135, 'StudentName35', 'StudentSurname35', 'COU1'),
(136, 'StudentName36', 'StudentSurname36', 'COU3'),
(137, 'StudentName37', 'StudentSurname37', 'COU3'),
(138, 'StudentName38', 'StudentSurname38', 'COU3'),
(139, 'StudentName39', 'StudentSurname39', 'COU1'),
(140, 'StudentName40', 'StudentSurname40', 'COU1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `COURSE`
--
ALTER TABLE `COURSE`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `LECTURER`
--
ALTER TABLE `LECTURER`
  ADD PRIMARY KEY (`LecID`);

--
-- Indexes for table `MODULE`
--
ALTER TABLE `MODULE`
  ADD PRIMARY KEY (`ModuleID`),
  ADD KEY `IDX_LecturerID` (`LecturerID`);

--
-- Indexes for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD KEY `IDX_CourseID` (`CourseID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `MODULE`
--
ALTER TABLE `MODULE`
  ADD CONSTRAINT `FK_LecturerID` FOREIGN KEY (`LecturerID`) REFERENCES `LECTURER` (`LecID`);

--
-- Constraints for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD CONSTRAINT `FK_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `COURSE` (`CourseID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
