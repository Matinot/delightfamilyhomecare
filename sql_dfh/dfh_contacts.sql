-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 09, 2021 at 10:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ms_consulting`
--

-- --------------------------------------------------------

--
-- Table structure for table `dfh_contacts`
--

CREATE TABLE `dfh_contacts` (
  `id_contacts` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `dfh_contacts` (
  `id_contacts` int(11) UNSIGNED NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id_contacts`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
--
-- Dumping data for table `dfh_contacts`
--

INSERT INTO `dfh_contacts` (`id_contacts`, `name`, `email`, `phone`, `message`, `dates`) VALUES
(7, 'Ed lajwa', 'aelajwa@gmail.com', '+5511234567', 'fjfjthutu', '2021-01-29 03:14:47'),
(8, 'Billy Joseph', 'ingbillyjoseph@gmail.com', '5093456789', 'How do I learn more about Delight', '2021-02-09 09:10:05'),
(9, 'Matinot Saintilus', 'saintilusmatinot05@gmail.com', '5093456789', 'How do I learn about Delight', '2021-02-09 09:31:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dfh_contacts`
--
ALTER TABLE `dfh_contacts`
  ADD PRIMARY KEY (`id_contacts`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dfh_contacts`
--
ALTER TABLE `dfh_contacts`
  MODIFY `id_contacts` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
