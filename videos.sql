-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: angelosantoniou.com.mysql:3306
-- Generation Time: Dec 14, 2016 at 11:01 AM
-- Server version: 5.5.53-MariaDB-1~wheezy
-- PHP Version: 5.4.45-0+deb7u5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `angelosantoniou_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upl_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `upl_last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `gender` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ocupation` text COLLATE utf8_unicode_ci NOT NULL,
  `videoname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `videotype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `upl_first_name`, `upl_last_name`, `birthdate`, `gender`, `email`, `ocupation`, `videoname`, `videotype`, `link`, `description`) VALUES
(1, 'Nicolai', 'Hansen', '1982-08-13', 'Male', 'nichans@gmail.com', 'Entreprenour', 'Aarhus 2017', 'Trailer', '/S0emUwUCPMk', 'Overview of some of the many highlights of European Capital of Culture Aarhus 2017.'),
(2, 'Angelos', 'Antoniou', '1991-03-05', 'Male', 'maevios91@gmail.com', 'student', 'Awesome', 'Trailer', '/2NGibS0Tg1I', 'This  is my video for Aarhus 2017');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
