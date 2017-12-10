-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2017 at 02:46 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myforum`
--

-- --------------------------------------------------------

--
-- Table structure for table `fanswer`
--

CREATE TABLE IF NOT EXISTS `fanswer` (
  `question_id` int(4) NOT NULL DEFAULT '0',
  `a_id` int(4) NOT NULL DEFAULT '0',
  `a_name` varchar(65) NOT NULL DEFAULT '',
  `a_email` varchar(65) NOT NULL DEFAULT '',
  `a_answer` longtext NOT NULL,
  `a_datetime` varchar(25) NOT NULL DEFAULT '',
  KEY `a_id` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fanswer`
--

INSERT INTO `fanswer` (`question_id`, `a_id`, `a_name`, `a_email`, `a_answer`, `a_datetime`) VALUES
(2, 1, 'hi2', 'email2@email.com', 'reply', '04/12/17 07:22:44'),
(2, 2, '', '', '', '04/12/17 07:22:52'),
(3, 1, 'jessica', 'email2@email.com', 'Hi', '04/12/17 07:31:53'),
(3, 2, 'hi2', 'email@email.com', 'hi', '04/12/17 07:37:44'),
(3, 3, 'jessica', 'email@email.com', 'hi', '04/12/17 07:39:51'),
(4, 1, 'dillon', 'email2@email.com', 'testing2', '04/12/17 22:31:21'),
(8, 1, 'Dillon ', 'dill@gmail.com', 'hello', '07/12/17 23:07:35'),
(8, 2, '', '', '', '07/12/17 23:07:42'),
(8, 3, '', '', '', '07/12/17 23:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `fquestions`
--

CREATE TABLE IF NOT EXISTS `fquestions` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  `name` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL DEFAULT '',
  `datetime` varchar(25) NOT NULL DEFAULT '',
  `view` int(4) NOT NULL DEFAULT '0',
  `reply` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `fquestions`
--

INSERT INTO `fquestions` (`id`, `topic`, `detail`, `name`, `email`, `datetime`, `view`, `reply`) VALUES
(2, 'Hi', 'Testing', 'Thomas', 'email@email.com', '04/12/17 07:22:10', 5, 2),
(3, 'bye2', 'testing3', 'tom', 'hotmail@email.com', '04/12/17 07:25:28', 20, 3),
(4, 'Hi3', 'testng3', 'tom', 'email@email.com', '04/12/17 07:26:45', 3, 1),
(5, 'Hi', 'testing', 'jessica', 'email@email.com', '04/12/17 07:32:11', 0, 0),
(6, 'hi', 'testing', 'dillon', 'email@email.com', '12/04/17', 0, 0),
(7, 'hi', 'bye', 'dillon', 'email@email.com', '12/04/17', 2, 0),
(8, 'hi', 'hi', 'hi', 'ihi', '12/07/17', 14, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
