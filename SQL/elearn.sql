-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 07:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `course_id` varchar(200) NOT NULL,
  `hash` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `user_id`, `course_id`, `hash`) VALUES
(1, '7', '1', '3h1XD5zWyw6bFlh');

-- --------------------------------------------------------

--
-- Table structure for table `completion`
--

CREATE TABLE `completion` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course` varchar(1000) NOT NULL,
  `lessons` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `completion`
--

INSERT INTO `completion` (`id`, `user_id`, `course`, `lessons`) VALUES
(1, 1, '', ' 11    1  1  1 '),
(2, 7, '', '   1  2 ');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `tags` varchar(500) NOT NULL,
  `enrolls` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `image`, `tags`, `enrolls`) VALUES
(1, 'Problem Solving using Python', 'Learn Python for free. Learn Python for free. Learn Python for free. Learn Python for free. Learn Python for free. Learn Python for free.', '/projects/elearn/images/courses/python.png', 'Python Programming', 0),
(2, 'Game Designing using Unity', 'Learn Python for free. Learn Python for free. Learn Python for free. Learn Python for free. Learn Python for free. Learn Python for free.', '/projects/elearn/images/courses/ruby.png', 'Unity Game-Designing', 0),
(3, 'Responsive Web Design', 'Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. ', '/projects/elearn/images/courses/html.png', 'HTML, Web Design', 0),
(4, 'C++ Tutorials with Projects', 'Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. Learn coding. ', '/projects/elearn/images/courses/cpp.png', 'C++', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_verification`
--

CREATE TABLE `email_verification` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `video` varchar(100) NOT NULL,
  `topic` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `description`, `video`, `topic`) VALUES
(1, 'Variables', 'This is Desc.', '/projects/elearn/videos/python/1.mp4', 1),
(2, 'Functions', 'This is Desc.', '/projects/elearn/videos/python/1.mp4', 1),
(3, '3D Object Modelling', 'This is dEsc.', '/projects/elearn/videos/unity/1.mp4', 2),
(4, 'WireFrame in UNITY', 'This is dEsc.', '/projects/elearn/videos/unity/1.mp4', 2),
(5, 'Learn HTML', 'This is dEsc.', '/projects/elearn/videos/html/1.mp4', 3),
(6, 'Learn CSS', 'This is dEsc.', '/projects/elearn/videos/html/1.mp4', 3),
(7, 'Variable sin C#', 'Variable sin C#', '/projects/elearn/videos/cpp/1.mp4', 4),
(8, 'Function sin C#', 'Variable sin C#', '/projects/elearn/videos/cpp/1.mp4', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `email`, `password`) VALUES
(1, 'Rithaya', 'rithanya', 'rithanyachammu@gmail.com', 'rithanya'),
(7, 'Fazil', 'fazil', 'fazilfazil462003@gmail.com', 'fazil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completion`
--
ALTER TABLE `completion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verification`
--
ALTER TABLE `email_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `completion`
--
ALTER TABLE `completion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_verification`
--
ALTER TABLE `email_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
