-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2026 at 08:32 PM
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
-- Database: `vigil_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `record_id` varchar(100) NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `task_id` varchar(100) DEFAULT NULL,
  `component` varchar(100) DEFAULT NULL,
  `maintenance_type` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `record_id`, `action`, `task_id`, `component`, `maintenance_type`, `status`, `cost`, `timestamp`) VALUES
(346, '2feebc64-2d95-4070-a39f-b36503d8f75f', 'created', '2f0f7722-8c76-4804-9be0-e969eb80578e', 'CPU', 'Dust Cleaning', 'Healthy', 5.00, '2026-07-17 23:49:56'),
(347, 'd871f0bb-a350-4f61-9c88-de43a439e3eb', 'updated', '2f0f7722-8c76-4804-9be0-e969eb80578e', 'CPU', 'Dust Cleaning', 'Healthy', 5.00, '2026-07-17 23:51:10'),
(348, '1b800b04-5f3c-4664-b708-3cae466f0b11', 'deleted', '2f0f7722-8c76-4804-9be0-e969eb80578e', 'CPU', 'Dust Cleaning', 'Healthy', 5.00, '2026-07-17 23:51:30'),
(349, 'eae09d0d-1664-4f6c-ae7b-4b327c2b4118', 'created', '180ffd22-1ddd-407c-8d76-87bb79fd7d2c', 'CPU', 'Dust Cleaning', 'Healthy', 0.00, '2026-07-17 23:52:44'),
(350, 'f53f8f4c-f2a7-42af-8473-49b5f72cc183', 'created', 'cc64986b-3f78-401b-808c-87e1ddf1bb5e', 'CPU', 'SSD Health Check', 'Healthy', 0.00, '2026-07-17 23:53:23'),
(351, 'ad614f1c-7d4f-45a1-9426-9f894a4d5365', 'created', 'ab9bb819-5ceb-4a98-a5aa-ea9af9e290bf', 'CPU', 'BIOS Update', 'Healthy', 0.00, '2026-07-18 00:07:10'),
(352, '4abbdfdf-1faf-4c4c-9dc0-3ae7fd1d919c', 'created', '4705ab1b-049f-4b78-a730-d8c2376306d4', 'RAM', 'Dust Cleaning', 'Healthy', 0.00, '2026-07-18 00:08:47'),
(353, 'c367e20f-e47f-40d8-9b25-733cccfd81c1', 'created', '23c366b0-5acb-434f-99c5-e61de2ad4c5c', 'PSU', 'Dust Cleaning', 'Healthy', 0.00, '2026-07-18 00:16:36'),
(354, 'd71bf771-fe6e-46c6-8d5a-11b90dcbb670', 'created', '3bb09874-bb71-417c-a244-8256f54c54dc', 'Network', 'Backup', 'Healthy', 0.00, '2026-07-18 00:22:57'),
(355, '1a408b63-31f2-4bde-ae16-f2bec780fbe7', 'deleted', 'ab9bb819-5ceb-4a98-a5aa-ea9af9e290bf', 'CPU', 'BIOS Update', 'Healthy', 0.00, '2026-07-18 00:26:59'),
(356, 'a3640c66-3ee0-4d8e-84ba-c06ab944ace7', 'updated', '3bb09874-bb71-417c-a244-8256f54c54dc', 'Network', 'General Inspection', 'Healthy', 0.00, '2026-07-18 00:27:37'),
(357, 'f796869a-71ce-46bf-9557-9b01bc90741c', 'created', 'f8a3c965-5ea1-4e77-b91f-9f5823fbbf1e', 'Cooling', 'Backup', 'Due Soon', 0.00, '2026-07-18 00:34:41'),
(358, 'a6c3998d-d0c4-4cb5-87f2-67604c510b6d', 'created', 'b709fb41-f132-4715-9d07-e340751ae441', 'CPU', 'Dust Cleaning', 'Overdue', 0.00, '2026-07-18 00:37:36'),
(359, '868370a4-89cc-4ea1-8255-9b7aa4ffb569', 'updated', '4705ab1b-049f-4b78-a730-d8c2376306d4', 'RAM', 'Dust Cleaning', 'Overdue', 0.00, '2026-07-18 18:40:38'),
(360, '3c20b3f4-24a4-43aa-9ace-4987058a0b7e', 'created', '992377ab-c6ac-4d70-ab2a-cb42dfc9dc2c', 'SSD', 'Dust Cleaning', 'Healthy', 0.00, '2026-07-18 23:34:29'),
(361, '932cb03b-d9e6-41c0-adee-4153476d67c3', 'created', 'b2823589-fdd0-4ec6-9112-500acdbde0ac', 'HDD', 'General Inspection', 'Healthy', 0.00, '2026-07-18 23:57:06'),
(362, '2fb78878-1759-4925-8a21-07063762afcb', 'deleted', '992377ab-c6ac-4d70-ab2a-cb42dfc9dc2c', 'SSD', 'Dust Cleaning', 'Healthy', 0.00, '2026-07-19 00:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task_id` varchar(100) NOT NULL,
  `component` varchar(100) NOT NULL,
  `maintenance_type` varchar(255) NOT NULL,
  `last_service_date` date DEFAULT NULL,
  `next_service_date` date DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_id`, `component`, `maintenance_type`, `last_service_date`, `next_service_date`, `cost`, `status`, `notes`) VALUES
(176, '180ffd22-1ddd-407c-8d76-87bb79fd7d2c', 'CPU', 'Dust Cleaning', '2026-07-17', '2026-07-30', 0.00, 'Healthy', ''),
(177, 'cc64986b-3f78-401b-808c-87e1ddf1bb5e', 'CPU', 'SSD Health Check', '2026-07-17', '2026-08-30', 0.00, 'Healthy', ''),
(178, '4705ab1b-049f-4b78-a730-d8c2376306d4', 'RAM', 'Dust Cleaning', '2026-07-08', '2026-07-10', 0.00, 'Overdue', ''),
(179, '23c366b0-5acb-434f-99c5-e61de2ad4c5c', 'PSU', 'Dust Cleaning', '2026-07-18', '2026-08-09', 0.00, 'Healthy', ''),
(180, '3bb09874-bb71-417c-a244-8256f54c54dc', 'Network', 'General Inspection', '2026-07-18', '2028-08-29', 0.00, 'Healthy', ''),
(181, 'f8a3c965-5ea1-4e77-b91f-9f5823fbbf1e', 'Cooling', 'Backup', '2026-07-18', '2026-07-19', 0.00, 'Due Soon', ''),
(182, 'b709fb41-f132-4715-9d07-e340751ae441', 'CPU', 'Dust Cleaning', '2026-07-16', '2026-07-17', 0.00, 'Overdue', ''),
(183, 'b2823589-fdd0-4ec6-9112-500acdbde0ac', 'HDD', 'General Inspection', '2026-07-18', '2026-08-01', 0.00, 'Healthy', 'all working properly');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_id` (`record_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_id` (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
