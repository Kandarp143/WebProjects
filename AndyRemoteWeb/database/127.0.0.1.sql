-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2013 at 10:11 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cs`
--
CREATE DATABASE `cs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cs`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `no` int(255) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(100) NOT NULL,
  `com_dis` varchar(10000) NOT NULL,
  `post_id` varchar(1000) NOT NULL,
  `Post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`),
  UNIQUE KEY `no` (`no`),
  UNIQUE KEY `Post_time` (`Post_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`no`, `com_name`, `com_email`, `com_dis`, `post_id`, `Post_time`) VALUES
(37, 'asdasda', 'sadasdasdasdasdsads', 'sadasdasda', '1', '2013-05-02 20:01:40'),
(38, 'sadasd', 'asdasdsad', 'asdsadsadsadsadas', '1', '2013-05-02 22:43:00'),
(39, 'qqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqq', '1', '2013-05-02 22:43:11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
