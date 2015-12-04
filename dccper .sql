-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2015 at 05:07 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dccper`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `profile_pic`) VALUES
(1331, 'Basker', 'uploads/Bhaskar_S.jpg'),
(1332, 'Jeremy L', 'uploads/Jeremy_L.jpg'),
(1333, 'Joel Q', 'uploads/Joel_Q.jpg'),
(1334, 'John B', 'uploads/John_B.jpg'),
(1335, 'Juliana M', 'uploads/Juliana_M.jpg'),
(1336, 'Karlene J', 'uploads/Karlene_J.jpg'),
(1432, 'Kathrin B', 'uploads/Kathrin_B.jpg'),
(1433, 'Luke S', 'uploads/Luke_S.jpg'),
(1501, 'Mark H', 'uploads/Mark_H.jpg'),
(1502, 'Martin D', 'uploads/Martin_D.jpg'),
(1503, 'Matthew K', 'uploads/Matthew_K.jpg'),
(1504, 'Peter M', 'uploads/Peter_M.jpg'),
(1505, 'Robert D', 'uploads/Robert_D.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `task_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `estimated_hours` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours_spent` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `member_id`, `task_name`, `start_date`, `end_date`, `estimated_hours`, `hours_spent`) VALUES
(1, 1332, 'Desighn UI', '2015-11-20', '2015-11-22', '12', '11'),
(2, 1332, 'Design Architecture', '2015-11-20', '2015-11-22', '2.5', '3'),
(3, 1332, 'Design Database', '2015-11-20', '2015-11-22', '3', '3.5'),
(4, 1332, 'Write SQL Queries for login', '2015-11-20', '2015-11-22', '5', '4.5'),
(5, 1332, 'Integrate login & registration into project', '2015-11-20', '2015-11-22', '6', '8'),
(6, 1332, 'Create user profile +session', '2015-11-20', '2015-11-22', '2.5', '3'),
(7, 1332, 'Handle business logic', '2015-11-20', '2015-11-22', '4', '4.5'),
(8, 1332, 'Design Database', '2015-11-20', '2015-11-22', '6', '8'),
(9, 1332, 'Draft Design Document', '2015-11-20', '2015-11-22', '8', '9'),
(10, 1332, 'Review Concept', '2015-11-20', '2015-11-22', '4', '9'),
(11, 1332, 'Finalise Design Concept', '2015-11-20', '2015-11-22', '8', '7'),
(12, 1332, 'Prototype Design', '2015-11-20', '2015-11-22', '6', '5'),
(13, 1332, 'Develop Concept Model', '2015-11-20', '2015-11-22', '8', '9'),
(14, 1332, 'Review Concept', '2015-11-20', '2015-11-22', '10', '11'),
(15, 1332, 'Perform Survey', '2015-11-20', '2015-11-22', '24', '28'),
(16, 1332, 'Performa Analysis', '2015-11-20', '2015-11-22', '24', '28'),
(17, 1332, 'Revise Initial Prototype', '2015-11-20', '2015-11-22', '24', '28'),
(18, 1332, 'Test Prototype', '2015-11-20', '2015-11-22', '24', '28'),
(19, 1333, 'Design Production Process', '2015-11-04', '2015-11-07', '40', '29'),
(20, 1333, 'Design Production Process', '2015-11-04', '2015-11-07', '40', '29'),
(21, 1333, 'Create Architectural Prototype', '2015-11-08', '2015-11-10', '12', '13'),
(22, 1333, 'Task1', '2015-11-03', '2015-11-04', '8', '7'),
(23, 1333, 'Task2', '2015-11-01', '2015-11-01', '5', '4.5'),
(24, 1333, 'Task3', '2015-11-02', '2015-12-03', '12', '10'),
(25, 1333, 'Task4', '2015-11-03', '2015-11-03', '6', '7'),
(26, 1333, 'Task5', '2015-10-01', '2015-10-02', '16', '14.5'),
(27, 1333, 'Task6', '2015-11-11', '2015-11-12', '15', '8'),
(28, 1334, 'Task7', '2015-11-12', '2015-11-12', '', ''),
(29, 1333, 'Task8', '2015-10-14', '2015-10-15', '', ''),
(30, 1334, 'Task1', '2015-11-16', '2015-11-17', '', ''),
(31, 1334, 'Task2', '2015-10-20', '2015-10-22', '', ''),
(32, 1334, 'Task3', '2015-11-03', '2015-12-04', '', ''),
(33, 1334, 'Task4', '2015-11-11', '2015-11-12', '', ''),
(34, 1334, 'Task5', '2015-11-13', '2015-11-15', '', ''),
(35, 1334, 'Task6', '2015-11-17', '2015-11-18', '', ''),
(36, 1334, 'Task7', '2015-11-04', '2015-11-04', '', ''),
(37, 1335, 'Task1', '2015-10-06', '2015-10-07', '', ''),
(38, 1335, 'Task2', '2015-10-08', '2015-10-08', '', ''),
(39, 1335, 'Task3', '2015-10-13', '2015-10-14', '', ''),
(40, 1335, 'Task4', '2015-10-15', '2015-10-15', '', ''),
(41, 1335, 'Task5', '2015-10-16', '2015-12-17', '', ''),
(42, 1335, 'Task6', '2015-10-22', '2015-10-23', '', ''),
(43, 1335, 'Task7', '2015-11-02', '2015-11-04', '', ''),
(44, 1335, 'Task8', '2015-11-17', '2015-12-18', '', ''),
(45, 1335, 'Task9', '0000-00-00', '0000-00-00', '', ''),
(46, 1335, 'Task10', '0000-00-00', '0000-00-00', '', ''),
(47, 1335, 'Task11', '0000-00-00', '0000-00-00', '', ''),
(48, 1335, 'Task12', '0000-00-00', '0000-00-00', '', ''),
(49, 1336, 'Task1', '0000-00-00', '0000-00-00', '', ''),
(50, 1336, 'Task2', '0000-00-00', '0000-00-00', '', ''),
(51, 1336, 'Task3', '2015-10-26', '2015-12-27', '', ''),
(52, 1336, 'Task4', '2015-10-20', '2015-10-27', '', ''),
(53, 1336, 'Task5', '2015-11-10', '2015-11-12', '', ''),
(54, 1336, 'Task6', '2015-11-13', '2015-11-11', '', ''),
(55, 1336, 'Task7', '2015-11-27', '2015-11-28', '', ''),
(56, 1336, 'Task8', '2015-11-01', '2015-11-02', '', ''),
(57, 1336, 'Task9', '2015-11-28', '2015-11-28', '', ''),
(58, 1336, 'Task10', '2015-11-29', '2015-12-30', '', ''),
(59, 1336, 'Task11', '2015-12-01', '2015-12-01', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
