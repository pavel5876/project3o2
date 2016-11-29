-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2016 at 10:45 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `upl_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `upl_last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `gender` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ocupation` text COLLATE utf8_unicode_ci NOT NULL,
  `videoname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `videotype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `upl_first_name`, `upl_last_name`, `birthdate`, `gender`, `email`, `ocupation`, `videoname`, `videotype`, `link`, `description`) VALUES
(1, 'Mihai', 'Morar', '0000-00-00', 'Male', 'bluemadja@gmail.com', 'Student', 'Aarhus 2017', 'Trailer', 'https://youtu.be/2NGibS0Tg1I', 'This is a trailer for Aarhus European Capital of Culture in 2017. This is a default video and we do not own any rights over this video. It''s purpose is solely educational.'),
(2, 'dsadawdsadsad', 'dsada', '2016-11-16', 'Male', 'bluemadja@gmail.com', 'dsas', 'fdfsd', 'Animation', 'https://www.youtube.com/watch?v=IbP7lZji3ho', 'dsfdgfdgrdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
