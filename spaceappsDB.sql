-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 01, 2022 at 04:04 PM
-- Server version: 8.0.30-0ubuntu0.22.04.1
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spaceappsDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `constellations`
--

CREATE TABLE `constellations` (
  `idconstellations` varchar(30) NOT NULL,
  `info` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `constellations`
--

INSERT INTO `constellations` (`idconstellations`, `info`) VALUES
('adadada', 'adadadad');

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `id` varchar(20) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `size` double NOT NULL,
  `constellation` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` date NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id`, `x`, `y`, `size`, `constellation`, `date`, `info`) VALUES
('adadadaa', 85, 93, 2, 'adadada', '2022-10-01', ''),
('xdcfgvhbjnkm', 8, 9, 1, NULL, '2022-10-01', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `constellations`
--
ALTER TABLE `constellations`
  ADD PRIMARY KEY (`idconstellations`),
  ADD UNIQUE KEY `idconstellations_UNIQUE` (`idconstellations`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_stars_1_idx` (`constellation`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stars`
--
ALTER TABLE `stars`
  ADD CONSTRAINT `fk_stars_1` FOREIGN KEY (`constellation`) REFERENCES `constellations` (`idconstellations`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
