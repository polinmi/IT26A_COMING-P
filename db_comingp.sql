-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2025 at 03:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_comingp`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `number_of_complaints` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email_address`, `number_of_complaints`) VALUES
(1010, 'Katelyn', 'Do', 'dokatya@email.com', 8),
(1012, 'Pau', 'Byun', 'byunie@email.com', 8),
(1016, 'Polinmi', 'Lee', 'leelin@email.com', 4),
(1018, 'Israel', 'Arancon', 'israel@email.com', 7),
(1020, 'Peter', 'Ranario', 'pets@email.com', 5),
(1022, 'Andrei', 'Subesa', 'elay@email.com', 2),
(1024, 'Joeroz', 'Vicariato', 'joerengs@email.com', 3),
(1026, 'Oskarji', 'Simbalante', 'oskar@email.com', 2),
(1028, 'Joshua', 'Eviota', 'josh@email.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `purchase_number` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `date_of_purchase` date DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`purchase_number`, `order_id`, `date_of_purchase`, `customer_id`) VALUES
(1, 1010, '2025-05-01', 1030),
(2, 1012, '2025-05-01', 1021),
(3, 1014, '2025-05-02', 1032),
(4, 1016, '2025-05-02', 1022),
(5, 1018, '2025-05-03', 1034),
(6, 1020, '2025-05-03', 1023),
(7, 1022, '2025-05-04', 1036),
(8, 1024, '2025-05-04', 1024),
(9, 1026, '2025-05-05', 1038),
(10, 1028, '2025-05-05', 1025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`purchase_number`,`order_id`),
  ADD KEY `fk_customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
