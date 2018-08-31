-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2018 at 03:31 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acams_case`
--

CREATE TABLE `acams_case` (
  `case_id` int(100) NOT NULL,
  `case_name` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `case_desc` text NOT NULL,
  `case_subject` varchar(100) NOT NULL,
  `case_person_involved` varchar(50) NOT NULL,
  `case_date_created` date NOT NULL,
  `case_date_closed` date NOT NULL,
  `case_notes_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acams_case_notes`
--

CREATE TABLE `acams_case_notes` (
  `case_notes_id` int(100) NOT NULL,
  `case_desc` text NOT NULL,
  `case_date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acams_cluster`
--

CREATE TABLE `acams_cluster` (
  `cluster_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acams_setup_subjects`
--

CREATE TABLE `acams_setup_subjects` (
  `subject_id` int(100) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `status` int(3) NOT NULL,
  `subject_sched` varchar(50) NOT NULL,
  `subject_section` varchar(50) NOT NULL,
  `subject_sy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acams_setup_user_access`
--

CREATE TABLE `acams_setup_user_access` (
  `user_access_id` int(100) NOT NULL,
  `actions` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `user_type_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acams_setup_user_type`
--

CREATE TABLE `acams_setup_user_type` (
  `user_type` int(100) NOT NULL,
  `user_type_name` varchar(100) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acams_users`
--

CREATE TABLE `acams_users` (
  `user_id` int(100) NOT NULL,
  `user_type` int(100) NOT NULL,
  `cluster_id` int(100) NOT NULL,
  `subject_id` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `mi` varchar(100) NOT NULL,
  `status` int(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `subjects_enrolled` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acams_case`
--
ALTER TABLE `acams_case`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `case_notes_id` (`case_notes_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `acams_case_notes`
--
ALTER TABLE `acams_case_notes`
  ADD PRIMARY KEY (`case_notes_id`);

--
-- Indexes for table `acams_setup_subjects`
--
ALTER TABLE `acams_setup_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `acams_setup_user_access`
--
ALTER TABLE `acams_setup_user_access`
  ADD PRIMARY KEY (`user_access_id`);

--
-- Indexes for table `acams_setup_user_type`
--
ALTER TABLE `acams_setup_user_type`
  ADD PRIMARY KEY (`user_type`);

--
-- Indexes for table `acams_users`
--
ALTER TABLE `acams_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `cluster_id` (`cluster_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acams_case`
--
ALTER TABLE `acams_case`
  MODIFY `case_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acams_case_notes`
--
ALTER TABLE `acams_case_notes`
  MODIFY `case_notes_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acams_setup_subjects`
--
ALTER TABLE `acams_setup_subjects`
  MODIFY `subject_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acams_setup_user_access`
--
ALTER TABLE `acams_setup_user_access`
  MODIFY `user_access_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acams_setup_user_type`
--
ALTER TABLE `acams_setup_user_type`
  MODIFY `user_type` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
