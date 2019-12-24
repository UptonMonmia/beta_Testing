-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2019 at 06:03 AM
-- Server version: 5.6.46-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riskcomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `announcement_title` varchar(255) NOT NULL,
  `announcement_detail` text,
  `createdBy` int(4) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(5) NOT NULL,
  `updatedDtm` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `announcement_title`, `announcement_detail`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`, `status`) VALUES
(1, 'test 111', '<p>fsdfgdfgfdgdfdssdfdg</p>', 1, '2019-11-15 13:13:50', 0, '0000-00-00 00:00:00', 1),
(2, 'Coding this Announcement', '<p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">I love this text editor so much</font></p>', 18, '2019-11-15 13:41:43', 0, '0000-00-00 00:00:00', 1),
(3, 'Tested By Hari', '<p>Hari</p>', 19, '2019-11-15 13:43:52', 0, '0000-00-00 00:00:00', 1),
(4, 'Oh My God', '<p>You\'re so great Mr. Hari</p>', 18, '2019-11-15 13:45:22', 0, '0000-00-00 00:00:00', 1),
(5, 'Hello Can I delete', '<p>dadf</p>', 17, '2019-11-15 13:46:19', 0, '0000-00-00 00:00:00', 1),
(6, 'Web Lunch', '<p>Hi we are going to lunch website  on 1 December 2019</p>', 19, '2019-11-16 13:30:48', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL COMMENT '0:-Pending,1:-Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `created_date`, `modify_date`, `status`) VALUES
(1, 'About Us', '2019-12-05 01:30:00', '2019-12-05 01:30:00', 1),
(2, 'Discease & Awareness', '2019-12-05 01:30:00', '2019-12-05 01:30:00', 1),
(3, 'News Room', '2019-12-05 01:30:00', '2019-12-05 01:30:00', 1),
(4, 'Outbreak', '2019-12-10 07:00:00', '2019-12-10 07:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(0, 19, 1, 'Hi', '2019-11-24 11:46:46', 2),
(0, 19, 1, 'Hello', '2019-11-24 11:48:51', 2),
(0, 19, 1, 'Hello', '2019-11-24 11:50:09', 2),
(0, 1, 19, 'yes', '2019-11-24 11:50:24', 2),
(0, 19, 1, 'Please go Ahead', '2019-11-24 11:50:50', 2),
(0, 1, 19, 'ok dear', '2019-11-24 11:50:58', 2),
(0, 18, 1, 'test', '2019-11-25 02:00:30', 2),
(0, 18, 1, 'Hello, how are you?', '2019-11-25 08:32:00', 2),
(0, 18, 1, 'Hello, how are you?', '2019-11-25 08:35:16', 2),
(0, 17, 1, 'Hi', '2019-11-27 11:59:08', 2),
(0, 20, 1, 'How are you?', '2019-11-28 06:18:28', 2),
(0, 17, 1, 'How was your night?', '2019-11-28 06:25:28', 2),
(0, 1, 17, 'I\'m fine and you?', '2019-11-28 06:35:31', 2),
(0, 1, 17, 'ji', '2019-11-28 08:02:17', 2),
(0, 17, 1, 'Testing Logic', '2019-11-28 08:03:13', 2),
(0, 1, 17, 'Hey what\'s up??', '2019-11-28 08:04:06', 2),
(0, 17, 1, 'I\'m fine, testing Logic', '2019-11-28 08:04:34', 2),
(0, 1, 17, 'Hey what\'s up??', '2019-11-28 08:05:58', 2),
(0, 1, 17, 'Hey what\'s up??', '2019-11-28 08:06:03', 2),
(0, 1, 17, 'Hey what\'s up??', '2019-11-28 08:06:06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_name` varchar(200) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `country_id`, `city_name`, `created_date`, `modify_date`, `status`) VALUES
(3, 1, 'New Delhi', '2019-10-30 15:02:41', '2019-10-30 00:00:00', 1),
(4, 2, 'Monrovia', '2019-10-30 15:02:41', '2019-10-30 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `contry_name` varchar(200) NOT NULL,
  `region` varchar(200) NOT NULL COMMENT 'West Africa, South Africa, Asia, Erupe',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL COMMENT '0:-Pending,1:-Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `contry_name`, `region`, `created_date`, `modify_date`, `status`) VALUES
(1, 'India', 'Asia', '2019-10-30 14:55:14', '2019-10-30 14:55:14', 1),
(2, 'Liberia', 'Western Africa', '2019-10-30 14:55:14', '2019-10-30 14:55:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_desc` text NOT NULL,
  `event_image` varchar(255) NOT NULL,
  `event_date_time` varchar(200) NOT NULL,
  `createdBy` int(4) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(4) NOT NULL,
  `updatedDtm` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `event_desc`, `event_image`, `event_date_time`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`, `status`) VALUES
(2, 'Up coming Event ', '                            <p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\">The Culture in the Schools </span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\">program</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\"> is designed to produce citizens who are actively involved in </span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\">cultural</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\"> life by increasing the number of </span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\">cultural</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\"> experiences offered to students. ... </span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\">cultural</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\"> organizations (including science culture)</span><br></p>                          ', '1573660391-beautiful.jpg', '03/19/2020 9:22 PM', 1, '2019-11-13 15:56:48', 0, '0000-00-00 00:00:00', 1),
(3, 'Coding Camp', '<p>Testing</p>', '1573660778-42525081_1104516009723119_6274221211069186048_n.jpg', '11/21/2019 8:58 PM', 1, '2019-11-13 15:59:38', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `front_cms`
--

CREATE TABLE `front_cms` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file_type` int(5) NOT NULL,
  `file` varchar(255) NOT NULL,
  `ext` varchar(70) NOT NULL,
  `createdBy` int(4) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(5) NOT NULL,
  `updatedDtm` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `front_cms`
--

INSERT INTO `front_cms` (`id`, `cat_id`, `title`, `description`, `file_type`, `file`, `ext`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`, `status`) VALUES
(5, 3, 'US Peace Corps hit by Liberia cash crisis', 'Quick sample text to create the card title and make up the body of the card\'s content\r\n\r\n', 0, '1575891309-dollar.jpg', 'jpg', 1, '2019-12-09 18:20:23', 0, 0, 1),
(6, 4, 'Golden Rules for Buying', 'Quick sample text to create the card title and make up the body of the card\'s content\r\n\r\n', 0, '1575894844-hiv.jpg', 'jpg', 1, '2019-12-09 18:18:48', 0, 0, 1),
(7, 2, 'Golden Rules for Buying', 'Quick sample text to create the card title and make up the body of the card\'s content', 0, '1575894908-hiv.jpg', 'jpg', 1, '2019-12-09 18:12:38', 0, 0, 1),
(8, 3, 'Golden Rules for Buying', 'Quick sample text to create the card title and make up the body of the card\'s content', 0, '1575895469-2.jpg', 'jpg', 1, '2019-12-09 18:14:29', 0, 0, 1),
(9, 4, 'Golden Rules for Buying', 'Quick sample text to create the card title and make up the body of the card\'s content ', 0, '1575895525-8.jpg', 'jpg', 1, '2019-12-09 18:17:32', 0, 0, 1),
(10, 2, 'Golden Rules for Buying', 'Quick sample text to create the card title and make up the body of the card\'s content', 0, '1575895599-1.jpg', 'jpg', 1, '2019-12-09 18:16:39', 0, 0, 1),
(11, 3, 'Golden Rules for Buying', 'Quick sample text to create the card title and make up the body of the card\'s content\r\n\r\n', 0, '1575895864-hiv.jpg', 'jpg', 1, '2019-12-09 18:21:04', 0, 0, 1),
(12, 4, 'Golden Rules for Buying', '', 0, '1575895905-8.jpg', 'jpg', 1, '2019-12-09 18:21:45', 0, 0, 1),
(13, 2, 'Golden Rules for Buying', '', 0, '1575895959-2.jpg', 'jpg', 1, '2019-12-09 18:22:39', 0, 0, 1),
(14, 1, 'Template built with Twitter Bootstrap', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque</p><p>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque </p>', 0, '1575954351-about.jpg', 'jpg', 1, '2019-12-10 10:42:49', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 19, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 17, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 19, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 17, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 17, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 21, '2019-12-24 19:15:24', 'yes'),
(0, 21, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'yes'),
(0, 17, '2019-12-24 19:15:24', 'yes'),
(0, 1, '2019-12-24 19:15:24', 'no'),
(0, 22, '2019-12-24 19:15:24', 'no'),
(0, 23, '2019-12-24 19:15:24', 'no'),
(0, 1, '2019-12-24 19:15:24', 'no'),
(0, 24, '2019-12-24 19:15:24', 'no'),
(0, 25, '2019-12-24 19:15:24', 'no'),
(0, 1, '2019-12-24 19:15:24', 'no'),
(0, 25, '2019-12-24 12:15:27', 'no'),
(0, 1, '2019-12-24 12:21:02', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `report_title` varchar(255) NOT NULL,
  `file_type` int(5) NOT NULL,
  `file` varchar(255) NOT NULL,
  `ext` varchar(70) NOT NULL,
  `createdBy` int(4) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(5) NOT NULL,
  `updatedDtm` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `report_title`, `file_type`, `file`, `ext`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`, `status`) VALUES
(1, 'this is first test report', 0, '1573736818-test.ppt', 'ppt', 1, '2019-11-14 13:06:58', 0, 0, 1),
(3, 'Testing the Report Module', 0, '1573738909-Full_Document.docx', 'docx', 1, '2019-11-14 13:41:49', 0, 0, 1),
(5, 'This isset function is code', 0, '1573807256-Bootstrap.pdf', 'pdf', 1, '2019-11-15 08:40:56', 0, 0, 1),
(6, 'Nice Try', 0, '1573808698-jQuery.UI.pdf', 'pdf', 17, '2019-11-15 09:05:13', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `resources_title` varchar(255) NOT NULL,
  `file_type` int(5) NOT NULL,
  `file` varchar(255) NOT NULL,
  `ext` varchar(70) NOT NULL,
  `createdBy` int(4) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(5) NOT NULL,
  `updatedDtm` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `resources_title`, `file_type`, `file`, `ext`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`, `status`) VALUES
(1, 'test', 0, '1573570198-test.ppt', 'ppt', 1, '2019-11-12 14:49:58', 0, 0, 1),
(2, 'For Doc ', 0, '1573570221-Romurs.docx', 'docx', 1, '2019-11-12 14:50:21', 0, 0, 1),
(4, 'Testing Resources Module', 0, '1573574947-GreatManTheory.pdf', 'pdf', 1, '2019-11-12 16:09:07', 0, 0, 1),
(5, 'Resurces', 2, '1573636224-August-Alsina-Lonely-CDQ.mp3', 'mp3', 1, '2019-11-13 09:10:30', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rumours`
--

CREATE TABLE `rumours` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `rumours` text NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedDtm` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rumours`
--

INSERT INTO `rumours` (`id`, `country_id`, `city_id`, `rumours`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`, `status`) VALUES
(4, 2, 4, '<p>Testing these Rumors Module</p>', 1, '2019-11-04 14:52:26', 0, '0000-00-00 00:00:00', 0),
(6, 1, 3, '<p>dfgg</p>', 1, '2019-11-16 13:24:26', 0, '0000-00-00 00:00:00', 0),
(7, 1, 3, '<p>tee</p>', 1, '2019-11-16 13:25:57', 0, '0000-00-00 00:00:00', 0),
(8, 1, 3, '<p>tttt</p>', 1, '2019-11-16 13:29:05', 0, '0000-00-00 00:00:00', 0),
(9, 2, 4, '<p>Outbreak in Liberia.</p>', 23, '2019-12-24 11:37:17', 0, '0000-00-00 00:00:00', 0),
(10, 1, 3, '<p>Testing rumors&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 23, '2019-12-24 11:41:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `task_details` text NOT NULL,
  `asign_to` int(11) NOT NULL,
  `assign_date` datetime NOT NULL,
  `target_date` varchar(255) NOT NULL,
  `complete_date` datetime NOT NULL,
  `createdBy` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `task_status` int(1) NOT NULL COMMENT '0:- Penditng, 1:- Active,3:-Complete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `task`, `task_details`, `asign_to`, `assign_date`, `target_date`, `complete_date`, `createdBy`, `updatedBy`, `task_status`) VALUES
(2, 'Task', 'Task Detail', 17, '2019-11-15 13:43:31', '19/05/2019', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, 0),
(3, 'Task2', 'Task Detail 3', 16, '2019-11-04 10:54:26', '02/02/2019', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Patner'),
(3, 'Member'),
(4, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `role_id` tinyint(4) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `institution` varchar(200) NOT NULL,
  `profile_image` varchar(200) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `loged_in` int(11) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `mobile`, `role_id`, `country_id`, `city_id`, `institution`, `profile_image`, `isDeleted`, `loged_in`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@repp.org', '$2y$10$RKjwyUAw3LY8jCzGQm.RQekO/uT2gHoXd0SSwvCPropf8rA5oooh.', 'System Administrator', '9890098900', 1, 2, 0, '0', 'noimage.png\r\n', 0, 0, 0, '2015-07-01 18:56:49', 1, '2018-12-28 16:33:44'),
(19, 'h.hariy2k@gmail.com', '$2y$10$xwPoE68dcOxDC4feRgVKduNG2OMoLr1g.05ngNCQlbYJvFaPC5pUO', 'Hari Yadav', '9572284988', 2, 1, 3, 'MCA', 'noimage.png', 0, 0, 1, '2019-11-15 13:43:10', NULL, NULL),
(15, 'xyz@gmail.com', '$2y$10$FNx09nxk2dkeTBptLg0FV.91anAhqRyHOlNhzcV3b7A0Dl5Yz0s2a', 'XYZ', '9572284988', 3, 2, 4, 'Test', 'noimage.png', 0, 0, 1, '2019-11-02 09:54:26', NULL, NULL),
(23, 'julius@gmail.com', '$2y$10$ifzp/yCcfR3FD4rEQuxtTuF85j7sCjb3vQn8eTLduuh.3PumiUkiq', 'Julius Kanneh', '', 1, 2, 4, '', 'sponer.png', 0, 0, 1, '2019-12-24 11:10:23', 23, '2019-12-24 11:40:25'),
(17, 'johndoe@gmail.com', '$2y$10$SaINs1S23uDsIrzvWX1C5.2v5CGp/J63bwNosIcAfUiBKc3xVBYZ6', 'John Doe', '0778625732', 3, 2, 4, 'M', '1.png', 0, 0, 1, '2019-11-15 08:57:28', 1, '2019-11-15 08:59:36'),
(25, 'kamarajames@outlook.com', '$2y$10$ZrBzMSym0gl5k4BmWh4eL.wDRoO3O3TTPkvuXGIoJMN6JPi1aNsbq', 'Kamara James', '089809990', 2, 1, 3, 'Partners in health', 'Screenshot (4).png', 0, 0, 23, '2019-12-24 12:00:57', NULL, NULL),
(24, 'ousman@gmail.com', '$2y$10$CoIuHrtB1IjGc9IL2o5hqOF7gY1tkq9nxlVlfp1zvj9.XRA5mKF3.', 'Ousman Kallay', '', 1, 2, 4, '', 'ASP.Net-512.png', 0, 0, 1, '2019-12-24 11:12:34', NULL, NULL),
(22, 'upton@gmail.com', '$2y$10$QiN7tZNPY1vGfTxJgQ0H8OrslSDu5xgNIDOXnyYat.RgnPjmUhr8C', 'Upton D. Monmia', '', 1, 2, 4, 'TEST', 'atom.png', 0, 0, 1, '2019-12-24 11:08:07', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms`
--
ALTER TABLE `front_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumours`
--
ALTER TABLE `rumours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `front_cms`
--
ALTER TABLE `front_cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rumours`
--
ALTER TABLE `rumours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
