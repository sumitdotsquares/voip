-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 20, 2022 at 01:57 PM
-- Server version: 5.7.37
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vmcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `vm_custom_recording`
--

CREATE TABLE `vm_custom_recording` (
  `id` int(11) NOT NULL,
  `BillRate` text,
  `CallStatus` text,
  `CallUUID` text,
  `CallerName` text,
  `Digits` text,
  `Direction` text,
  `Event` text,
  `From` text,
  `ParentAuthID` text,
  `RecordFile` text,
  `RecordUrl` text,
  `RecordingDuration` text,
  `RecordingDurationMs` text,
  `RecordingEndMs` text,
  `RecordingID` text,
  `RecordingStartMs` text,
  `SessionStart` text,
  `To` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vm_custom_recording`
--

INSERT INTO `vm_custom_recording` (`id`, `BillRate`, `CallStatus`, `CallUUID`, `CallerName`, `Digits`, `Direction`, `Event`, `From`, `ParentAuthID`, `RecordFile`, `RecordUrl`, `RecordingDuration`, `RecordingDurationMs`, `RecordingEndMs`, `RecordingID`, `RecordingStartMs`, `SessionStart`, `To`) VALUES
(4, '0.0055', 'completed', 'f3d85bba-2054-11ed-b91a-1b6863b951bd', '+441273286850', '', 'inbound', 'Redirect', '441273286850', 'MAMGZKNZA0YJIZY2ZJMZ', 'https://media.plivo.com/v1/Account/MAMGZKNZA0YJIZY2ZJMZ/Recording/d2dcad17-3b49-47c7-92d5-b1f72cd80b1e.mp3', 'https://media.plivo.com/v1/Account/MAMGZKNZA0YJIZY2ZJMZ/Recording/d2dcad17-3b49-47c7-92d5-b1f72cd80b1e.mp3', '4', '4720', '1660978487684', 'd2dcad17-3b49-47c7-92d5-b1f72cd80b1e', '1660978482964', '2022-08-20 06:54:36.062550', '442037586836');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vm_custom_recording`
--
ALTER TABLE `vm_custom_recording`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vm_custom_recording`
--
ALTER TABLE `vm_custom_recording`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
