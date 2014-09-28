-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2014 at 10:15 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_detail`
--

CREATE TABLE IF NOT EXISTS `bank_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_no` varchar(50) NOT NULL,
  `account_type` varchar(20) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `micr_no` varchar(100) NOT NULL,
  `ifsc_code` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bank_detail`
--

INSERT INTO `bank_detail` (`id`, `user_id`, `bank_name`, `account_no`, `account_type`, `branch`, `micr_no`, `ifsc_code`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 'bhoopal', '123456789', 'current', 'kjgyjhgjhg', '66666', '12345', 'active', '2014-08-12 22:20:42', '2014-08-24 11:16:07', '2014-08-24 16:46:07'),
(4, 1, 'HDFC', '1234567890', '', 'Peenya', 'hjgjhghj', 'HDFC8909979', 'inactive', '2014-08-12 22:21:05', '2014-08-29 01:48:38', '0000-00-00 00:00:00'),
(5, 1, 'SBI', '65786876988', 'savings', 'MG ROAD', '6876786', 'SBIN67666009', 'active', '2014-08-12 22:25:52', '2014-08-29 01:49:28', '0000-00-00 00:00:00'),
(6, 1, 'CITI BANK', '87687687699', '', 'COMMERCIAL STREET', 'jhgjg8786', 'CITI00989090', 'active', '2014-08-12 22:26:31', '2014-08-29 01:50:38', '0000-00-00 00:00:00'),
(7, 1, 'ramesh', '12242457', 'current', 'mjgdsdf', '6767', '876876', 'active', '2014-08-12 22:30:54', '2014-08-14 07:13:02', '2014-08-14 12:43:02'),
(8, 1, 'AXIS', '56677667776', 'active', 'Peenya', '', 'AXI5667656666', 'active', '2014-08-24 16:45:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `branch_code` varchar(50) NOT NULL,
  `branch_address` text NOT NULL,
  `branch_city` varchar(100) NOT NULL,
  `branch_state` varchar(100) NOT NULL,
  `branch_pin` int(6) NOT NULL,
  `branch_land_line` varchar(55) NOT NULL,
  `branch_alt_land_line` varchar(55) NOT NULL,
  `branch_fax` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `user_id`, `branch_name`, `branch_code`, `branch_address`, `branch_city`, `branch_state`, `branch_pin`, `branch_land_line`, `branch_alt_land_line`, `branch_fax`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 9, 'nmhb', 'hjgjhg', 'hjgh', 'ghjg', 'jhg', 0, 'hjg', 'ghhj', 'ghj', '2014-08-12 22:56:05', '2014-08-14 06:56:09', '2014-08-14 12:26:09'),
(13, 11, 'Bangalore', 'sdfds', 'sdfdsf', 'Bangalore', '', 0, '', '', '', '2014-08-14 12:28:31', '2014-08-14 07:07:45', '2014-08-14 12:37:45'),
(14, 12, 'Bangalore', 'sdfds', 'sdfdsf', 'Bangalore', '', 0, '', '', '', '2014-08-14 12:33:43', '2014-08-14 06:58:09', '2014-08-14 12:28:09'),
(15, 13, 'Bangalore', 'Banrad', 'ad', '', '', 0, '', '', '', '2014-08-14 12:30:21', '2014-08-14 06:56:37', '2014-08-14 12:26:37'),
(16, 14, 'sd', 'vcfvh', 'yhjf', 'yf', 'ghfh', 0, 'fgh', 'fhgfgh', 'fgh', '2014-08-14 12:28:42', '2014-08-14 07:09:29', '2014-08-14 12:39:29'),
(17, 15, 'sd', 'vcfvh', 'yhjf', 'yf', 'ghfh', 0, 'fgh', 'fhgfgh', 'fgh', '2014-08-14 12:29:13', '2014-08-14 07:00:12', '2014-08-14 12:30:12'),
(18, 16, 'sd', 'vcfvh', 'yhjf', 'yf', 'ghfh', 0, 'fgh', 'fhgfgh', 'fgh', '2014-08-14 12:29:47', '2014-08-14 07:00:07', '2014-08-14 12:30:07'),
(19, 17, 'Bangalore', 'BAN01', 'sdfdsf', 'sdff', 'sdfdf', 0, 'dsfd', 'sdf', 'dfsf', '2014-08-14 12:38:56', '2014-08-14 07:09:43', '2014-08-14 12:39:43'),
(21, 71, 'bnh', 'Bang', 'kjhk,\r\nfdfd,\r\ndfd', 'man', 'ka', 123456, '', '', '', '2014-08-15 20:10:43', '2014-08-29 01:43:53', '0000-00-00 00:00:00'),
(22, 34, 'mnm', '', '', '', '', 0, '', '', '', '2014-08-21 14:20:36', '2014-08-21 08:51:15', '2014-08-21 14:21:15'),
(23, 36, 'Bangalore', 'Bang01', '', '', '', 0, '', '', '', '2014-08-23 07:21:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 18, 'Hyderabad', 'HYD', 'sdfsdf', '', '', 0, '', '', '', '2014-08-24 16:47:06', '2014-09-09 14:17:49', '0000-00-00 00:00:00'),
(25, 98, 'Test', 'tes', '', '', '', 0, '', '', '', '2014-09-09 19:24:10', '2014-09-09 14:37:18', '2014-09-09 20:07:18'),
(26, 99, 'Test', 'Tes', '', '', '', 0, '', '', '', '2014-09-09 19:29:50', '2014-09-09 14:37:11', '2014-09-09 20:07:11'),
(27, 100, 'Tset', 'tes', '', '', '', 0, '', '', '', '2014-09-09 19:30:35', '2014-09-09 14:20:24', '2014-09-09 19:50:24'),
(28, 101, 'my barab', '5ttre', 'hgfdghf', 'ghfghdfgh', 'fhgdfghdfgh', 0, 'gfdgfd', 'dsdf', '', '2014-09-09 20:05:27', '2014-09-09 14:20:31', '2014-09-09 19:50:31'),
(29, 102, 'Test', 'tes', '', '', '', 0, '', '', '', '2014-09-09 19:50:51', '2014-09-09 14:25:13', '2014-09-09 19:55:13'),
(30, 103, 'Test', 'Test', '', '', '', 0, '', '', '', '2014-09-09 19:55:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `branch_contact`
--

CREATE TABLE IF NOT EXISTS `branch_contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `branch_head` varchar(100) NOT NULL,
  `p_mobile_no` varchar(55) NOT NULL,
  `p_alt_mobile_no` varchar(55) NOT NULL,
  `p_email` varchar(100) NOT NULL,
  `p_alt_email` varchar(100) NOT NULL,
  `s_contact_person` varchar(100) NOT NULL,
  `s_mobile_no` varchar(55) NOT NULL,
  `s_alt_mobile_no` varchar(55) NOT NULL,
  `s_email` varchar(100) NOT NULL,
  `s_alt_email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `branch_contact`
--

INSERT INTO `branch_contact` (`id`, `user_id`, `branch_id`, `branch_head`, `p_mobile_no`, `p_alt_mobile_no`, `p_email`, `p_alt_email`, `s_contact_person`, `s_mobile_no`, `s_alt_mobile_no`, `s_email`, `s_alt_email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 9, 11, 'nbvgnf', 'ghfghfgh', 'fghfghf', 'bhoopal10@gmail.com', 'jhgjhgfhjg', 'gjhgjhg', 'hjgjhgjhghj', 'ghjg', 'hjgjh', 'ghjghj', '2014-08-12 22:56:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, 12, 'raman', 'gfhjghj', 'ghjghghjg', 'bhoopal10@gmaiil.com', 'hfhjgfhj', 'gfhjg', 'hjgj', 'ghjg', 'hjg', 'hjg', '2014-08-12 23:06:50', '2014-08-14 07:35:52', '0000-00-00 00:00:00'),
(11, 11, 13, 'Bhoopla', '', '', '', '', '', '', '', '', '', '2014-08-14 12:28:31', '2014-08-14 07:07:45', '2014-08-14 12:37:45'),
(13, 13, 15, 'Bhoopal', '', '', 'anirbanbanerjee077@gmail.com', '', '', '', '', '', '', '2014-08-14 12:30:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 14, 16, 'njhg', 'fyh', 'gfgh', 'fghf', 'ghf', 'ghf', 'ghfgh', 'fghf', 'ghf', 'ghfgh', '2014-08-14 12:28:42', '2014-08-14 07:09:29', '0000-00-00 00:00:00'),
(15, 15, 17, 'njhg', 'fyh', 'gfgh', 'fghf', 'ghf', 'ghf', 'ghfgh', 'fghf', 'ghf', 'ghfgh', '2014-08-14 12:29:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 18, 'njhg', 'fyh', 'gfgh', 'fghf@gmail.com', 'ghf', 'ghf', 'ghfgh', 'fghf', 'ghf', 'ghfgh', '2014-08-14 12:29:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 17, 19, 'Bhoopal', 'dsd', 'sdsd', 'bhoopal10@gmail.com', '', '', '', '', '', '', '2014-08-14 12:38:56', '2014-08-14 07:09:43', '2014-08-14 12:39:43'),
(18, 18, 20, '', '', '', '', '', '', '', '', '', '', '2014-08-14 12:29:37', '2014-08-14 07:01:11', '0000-00-00 00:00:00'),
(19, 71, 21, 'ccccc', '234234', '234234', 'tbhoopal@ymail.com', '', '', '12345', '123434', 'bhoo@gmail.com', 'boopal@gmail.com', '2014-08-15 20:10:43', '2014-08-29 01:43:12', '0000-00-00 00:00:00'),
(20, 34, 22, 'nmn', '', '', ' bvnbv@fds.jh', '', '', '', '', '', '', '2014-08-21 14:20:36', '2014-08-21 08:51:15', '2014-08-21 14:21:15'),
(21, 36, 23, 'Bhoopal', '', '', 'bhoopal10@gmail.com', '', '', '', '', '', '', '2014-08-23 07:21:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 70, 24, 'Bhoopal', '', '', 'anirbanbanerjee077@gmail.com', '', '', '', '', '', '', '2014-08-24 16:47:06', '2014-09-02 03:04:17', '0000-00-00 00:00:00'),
(23, 98, 25, 'shri', '', '', 'shenoy575@gmail.com', '', '', '', '', '', '', '2014-09-09 19:24:10', '2014-09-09 14:37:18', '2014-09-09 20:07:18'),
(24, 99, 26, 'Shri', '', '', 'shenoy575@gmail.com', '', '', '', '', '', '', '2014-09-09 19:29:50', '2014-09-09 14:37:11', '2014-09-09 20:07:11'),
(25, 100, 27, 'Shri', '', '', 'shenoy575@gmail.com', '', '', '', '', '', '', '2014-09-09 19:30:35', '2014-09-09 14:20:24', '2014-09-09 19:50:24'),
(26, 101, 28, 'bans', '1233333', '', 'bhoo@hhsjd.sd', 'dssd', 'sds', '', '', '', '', '2014-09-09 20:05:27', '2014-09-09 14:20:31', '2014-09-09 19:50:31'),
(27, 102, 29, 'shri', '', '', 'shenoy575@gmail.com', '', '', '', '', '', '', '2014-09-09 19:50:51', '2014-09-09 14:25:13', '2014-09-09 19:55:13'),
(28, 103, 30, 'Shri', '', '', 'shenoy575@gmail.com', '', '', '', '', '', '', '2014-09-09 19:55:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `branch_emp`
--

CREATE TABLE IF NOT EXISTS `branch_emp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `branch_emp`
--

INSERT INTO `branch_emp` (`id`, `branch_id`, `emp_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(32, 18, 68, '2014-08-23 23:24:23', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(33, 18, 69, '2014-08-23 22:41:27', '2014-08-23 17:12:59', '2014-08-23 22:42:59'),
(34, 18, 70, '2014-08-23 22:56:20', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(36, 18, 73, '2014-08-26 22:26:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 18, 75, '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 18, 76, '2014-08-29 06:58:21', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(40, 18, 77, '2014-08-29 07:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 36, 79, '2014-09-02 08:46:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 18, 93, '2014-09-06 10:04:05', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(56, 18, 94, '2014-09-06 10:04:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 18, 95, '2014-09-06 10:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 18, 96, '2014-09-06 10:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 18, 106, '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 18, 107, '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 18, 108, '2014-09-18 02:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 18, 109, '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` text NOT NULL,
  `company_city` varchar(100) NOT NULL,
  `company_state` varchar(100) NOT NULL,
  `company_pin` int(6) NOT NULL,
  `company_country` varchar(50) NOT NULL,
  `company_phone` varchar(55) NOT NULL,
  `company_alt_phone` varchar(55) NOT NULL,
  `company_fax` varchar(55) NOT NULL,
  `company_email` varchar(500) NOT NULL,
  `company_alt_email` varchar(500) NOT NULL,
  `company_website` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `user_id`, `company_name`, `company_address`, `company_city`, `company_state`, `company_pin`, `company_country`, `company_phone`, `company_alt_phone`, `company_fax`, `company_email`, `company_alt_email`, `company_website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 'abcdpvt', 'jhgfhgfh', 'fgddfgdfg', '4dfgdfg', 5435, 'dfgdfg', '345345', '8435345', '', 'bhoopal10@gmail.com', 'ewerew@FGF', 'http://www.google.com', '2014-08-12 22:32:40', '2014-08-29 01:13:13', '0000-00-00 00:00:00'),
(8, 22, 'vjhghj', 'hjg', 'hjghj', 'ghjg', 0, '', 'ghj', 'ghjg', 'hjghjg', '', '', 'hjg', '2014-08-15 21:15:38', '2014-08-15 15:28:17', '2014-08-15 20:58:17'),
(10, 24, 'jhghjg', 'hjghjgh', 'jghjgjhg', 'hjghjghjg', 0, '', 'ghjghjg', 'hjghj', 'ghjghj', '', '', 'g', '2014-08-15 20:59:12', '2014-08-15 15:32:27', '2014-08-15 21:02:27'),
(11, 25, 'sds', 'asdasd', 'dasd', 'sdas', 0, '', '', 'asdasd', '', '', '', '', '2014-08-15 20:59:43', '2014-08-15 15:32:33', '2014-08-15 21:02:33'),
(12, 26, 'sdfdsf', 'dsfds', '', '', 0, '', '', '', '', '', '', '', '2014-08-15 21:03:36', '2014-08-15 15:33:48', '2014-08-15 21:03:48'),
(13, 27, 'compamymane1', 'adrrekjhkjh\r\ndsjfkjds;sd\r\nsfs.fsdsdf\r\n', 'bangalore', 'ap', 123456, '', '1342143243234', '4324242443w243', '543543543', '', '', 'http://www.google.com/gmail/12', '2014-08-15 21:32:19', '2014-08-21 05:48:03', '2014-08-21 11:18:03'),
(14, 30, 'vbhfj', 'gfjfgjfg', 'jfgjgjfgj', 'fgjfgj', 453453, '', '346346', '346346', '346346', '', '', 'sdfdsf', '2014-08-20 17:18:36', '2014-08-21 05:24:04', '2014-08-21 10:54:04'),
(15, 31, 'AIRTEL', '', '', '', 0, '', '', '', '', '', '', '', '2014-08-21 10:25:58', '2014-08-21 05:47:57', '2014-08-21 11:17:57'),
(16, 32, 'abc', 'dgdfgf\r\nhjfhgf\r\n', 'bvdfgvd', 'gfdgfd', 1234, '', '534543543', '34535323', '43543', '', '', 'gfdcgdf', '2014-08-21 11:20:21', '2014-09-09 14:12:00', '0000-00-00 00:00:00'),
(17, 33, 'zxy', 'hgf', 'ghfhg', 'f', 0, '', '', '', '', '', '', '', '2014-08-21 11:27:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 35, 'AIRTEL', '', '', '', 0, '', '', '', '', '', '', '', '2014-08-21 13:56:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 80, 'mycomp', 'sdsfas', 'fasf', 'asfasf', 0, '', '234234', '234234', '23423', '', '', '', '2014-09-02 08:57:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 97, 'sdfgsd', 'fdgdg', 'dfgdfg', 'dfgdfg', 123456, '', '346346', '56465467546', '543543543', '', '', 'http://www.google.com', '2014-09-09 20:04:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_contact`
--

CREATE TABLE IF NOT EXISTS `company_contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `primary_contact_person` varchar(100) NOT NULL,
  `primary_phone` varchar(55) NOT NULL,
  `primary_alt_phone` varchar(55) NOT NULL,
  `primary_email` varchar(250) NOT NULL,
  `primary_alt_email` varchar(250) NOT NULL,
  `secondary_contact_person` varchar(100) NOT NULL,
  `secondary_phone` varchar(55) NOT NULL,
  `secondary_alt_phone` varchar(55) NOT NULL,
  `secondary_email` varchar(250) NOT NULL,
  `secondary_alt_email` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `company_contact`
--

INSERT INTO `company_contact` (`id`, `user_id`, `company_id`, `primary_contact_person`, `primary_phone`, `primary_alt_phone`, `primary_email`, `primary_alt_email`, `secondary_contact_person`, `secondary_phone`, `secondary_alt_phone`, `secondary_email`, `secondary_alt_email`, `created_at`, `updated_at`) VALUES
(2, 1, 4, 'fsdfsd', 'sdfdsf', 'dsfdsf', '5', '6', '7', '8', '9', '0', '1', '2014-08-12 22:32:40', '2014-08-29 01:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `company_esi`
--

CREATE TABLE IF NOT EXISTS `company_esi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `esi_registration_date` date NOT NULL,
  `esi_signatory_name` varchar(100) NOT NULL,
  `esi_signatory_desgnation` varchar(100) NOT NULL,
  `esi_signatory_father_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company_esi`
--

INSERT INTO `company_esi` (`id`, `user_id`, `company_id`, `esi`, `esi_registration_date`, `esi_signatory_name`, `esi_signatory_desgnation`, `esi_signatory_father_name`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '1', '2014-08-22', '3', '5', '4', '2014-08-29 06:48:46', '2014-08-29 01:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `company_income_tax`
--

CREATE TABLE IF NOT EXISTS `company_income_tax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `itax_signatory_name` varchar(100) NOT NULL,
  `itax_signatory_desgnation` varchar(100) NOT NULL,
  `itax_signatory_father_name` varchar(100) NOT NULL,
  `cit` varchar(20) NOT NULL,
  `itax_address` text NOT NULL,
  `itax_city` varchar(100) NOT NULL,
  `itax_pin` int(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company_income_tax`
--

INSERT INTO `company_income_tax` (`id`, `user_id`, `company_id`, `itax_signatory_name`, `itax_signatory_desgnation`, `itax_signatory_father_name`, `cit`, `itax_address`, `itax_city`, `itax_pin`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '1', '2', '3', '54', 'ewdfwaer', '7', 87, '0000-00-00 00:00:00', '2014-08-29 01:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `company_professional_tax`
--

CREATE TABLE IF NOT EXISTS `company_professional_tax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `pt` varchar(100) NOT NULL,
  `pt_registration_date` date NOT NULL,
  `pt_signatory_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `company_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company_professional_tax`
--

INSERT INTO `company_professional_tax` (`id`, `user_id`, `pt`, `pt_registration_date`, `pt_signatory_name`, `created_at`, `updated_at`, `company_id`) VALUES
(1, 1, '2', '2014-08-20', '2', '2014-08-12 22:32:40', '2014-08-29 01:23:26', 4);

-- --------------------------------------------------------

--
-- Table structure for table `company_provident`
--

CREATE TABLE IF NOT EXISTS `company_provident` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `provident_fund` varchar(100) NOT NULL,
  `provident_registration_date` date NOT NULL,
  `provident_signatory_name` varchar(100) NOT NULL,
  `provident_signatory_designation` varchar(100) NOT NULL,
  `provident_signatory_father_name` varchar(100) NOT NULL,
  `provident_company_level_pf` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company_provident`
--

INSERT INTO `company_provident` (`id`, `user_id`, `company_id`, `provident_fund`, `provident_registration_date`, `provident_signatory_name`, `provident_signatory_designation`, `provident_signatory_father_name`, `provident_company_level_pf`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '1', '0000-00-00', '1', '2', '3', 'no', '2014-08-12 22:32:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_registration`
--

CREATE TABLE IF NOT EXISTS `company_registration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `reg_pan` varchar(100) NOT NULL,
  `reg_tan` varchar(100) NOT NULL,
  `reg_incorporation_date` date NOT NULL,
  `reg_tan_circle` varchar(100) NOT NULL,
  `reg_cin` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company_registration`
--

INSERT INTO `company_registration` (`id`, `user_id`, `company_id`, `reg_pan`, `reg_tan`, `reg_incorporation_date`, `reg_tan_circle`, `reg_cin`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '1kjkljk', '2', '2014-08-16', '4', '5', '2014-08-12 22:32:40', '2014-08-29 01:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `ctc_component`
--

CREATE TABLE IF NOT EXISTS `ctc_component` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `component_name` varchar(100) NOT NULL,
  `component_code` varchar(100) NOT NULL,
  `effective_date` date NOT NULL,
  `component_type` enum('earning','deduction','statutory') NOT NULL,
  `calculation_type` enum('flat','formula') NOT NULL,
  `formula` varchar(100) NOT NULL,
  `show_pay_slip` enum('yes','no') NOT NULL,
  `attendance_dependant` enum('yes','no') NOT NULL,
  `show_default` enum('no','yes') NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `ctc_component`
--

INSERT INTO `ctc_component` (`id`, `component_name`, `component_code`, `effective_date`, `component_type`, `calculation_type`, `formula`, `show_pay_slip`, `attendance_dependant`, `show_default`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 'BASIC', 'BASIC', '2014-01-01', 'earning', 'flat', '', 'yes', 'yes', 'yes', 'yes', '2014-09-15 19:06:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'CONVEYANCE_ALLOWANCE', 'CA', '2014-01-01', 'earning', 'flat', '', 'yes', 'yes', 'yes', 'yes', '2014-09-15 19:07:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'HRA', 'HRA', '2014-01-01', 'earning', 'flat', '', 'yes', 'yes', 'yes', 'yes', '2014-09-15 19:07:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'OTHERS', 'OTHERS', '2014-01-01', 'earning', 'flat', '', 'yes', 'yes', 'yes', 'yes', '2014-09-15 19:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'OVER_TIME', 'OT', '2014-01-01', 'earning', 'flat', '', 'yes', 'no', 'yes', 'yes', '2014-09-15 19:08:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'PROVIDENT_FUND', 'PF', '2014-01-01', 'statutory', 'formula', 'BASIC*12%', 'yes', 'no', 'no', 'yes', '2014-09-15 19:09:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'PROVIDENT_FUND_EMPLOYER_CONTRIBUTION', 'PFEC', '2014-01-01', 'statutory', 'formula', 'BASIC*13.61%', 'no', 'no', 'no', 'yes', '2014-09-15 19:09:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'EMPLOYEE_STATE_INSURANCE', 'ESI', '2014-01-01', 'statutory', 'formula', 'BASIC*1.75%', 'yes', 'no', 'no', 'yes', '2014-09-15 19:10:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'EMPLOYEE_STATE_INSURANCE_EMPLOYER_CONTRIBUTION', 'ESIEC', '2014-01-01', 'statutory', 'formula', 'BASIC*4.75%', 'no', 'no', 'no', 'yes', '2014-09-15 19:10:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'MOBILE_REIMBURSEMENT', 'MR', '2014-01-01', 'earning', 'flat', '', 'yes', 'no', 'no', 'yes', '2014-09-15 20:23:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'CANTEEN_BILL', 'CB', '2014-01-01', 'earning', 'flat', '', 'yes', 'no', 'no', 'yes', '2014-09-15 20:25:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'zc', 'ITBIT2', '2014-08-29 07:24:34', '2014-08-29 01:06:29', '0000-00-00 00:00:00'),
(2, '112kk', 'ITBIT3', '2014-08-29 07:34:06', '2014-08-29 01:15:52', '2014-08-29 06:45:52'),
(3, 'bncvn', 'hjfjf', '2014-08-29 06:40:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'xcvxcv', 'xcvxcv', '2014-08-29 07:17:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'dfsdf', 'ITBIT', '2014-08-29 07:28:45', '2014-08-29 01:15:44', '2014-08-29 06:45:44'),
(6, 'FIN', 'Finance', '2014-08-29 06:58:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '....', '...', '2014-08-29 07:03:17', '2014-08-29 01:33:26', '2014-08-29 07:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `fathername` varchar(100) NOT NULL,
  `mothermaiden` varchar(100) NOT NULL,
  `dateofbirth` date NOT NULL,
  `maritialstatus` varchar(20) NOT NULL,
  `spousename` varchar(100) NOT NULL,
  `sibling` varchar(50) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `image` text NOT NULL,
  `signature` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `user_id`, `firstname`, `middlename`, `lastname`, `fathername`, `mothermaiden`, `dateofbirth`, `maritialstatus`, `spousename`, `sibling`, `bloodgroup`, `image`, `signature`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, '65', 'czxc', 'czxczx', 'czxc', 'zxczx', 'czxcz', '0000-00-00', 'married', 'xzczxczx', '', 'AB+ve', '_1408230215Image(20).jpg', '_1408230215Image(19).jpg', '2014-08-23 22:02:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '66', 'sdfsd', 'fdsfdsf', 'sdfsd', 'fsdf', 'fsdf', '2014-12-08', 'married', 'sdfsdf', '', 'B-ve', '_1408233843Photo-0067.jpg', '_1408233843Image(19).jpg', '2014-08-23 22:38:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '68', 'bhkkkk', 'middle', 'lasr', 'jhghjghj', 'wewe', '2014-08-29', 'married', 'qw', 'rt', 'B-ve', '_1408232423photo.jpg', '_1408232423sign.jpg', '2014-08-23 23:24:23', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(18, '69', 'hkjhk', 'jhkjh', 'kjhkj', 'hkjhkj', 'sdgsdg', '0000-00-00', 'divorced', '', '', 'B+ve', '_1408234127Image(20).jpg', '_1408234127photo.jpg', '2014-08-23 22:41:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '70', 'ngfh', 'gfhg', 'fhgj', 'hg', 'fghfhgfh', '2014-08-27', 'married', 'sadasd', '', 'O+ve', '_1408235620Image(20).jpg', '_1408235620Image(20).jpg', '2014-08-23 22:56:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '73', 'yuht', '', '', '', '', '2014-08-25', 'married', 'as', '', '', '_1408262623hacked.png', '_1408262623Screenshot(1).png', '2014-08-26 22:26:23', '2014-08-26 16:58:44', '0000-00-00 00:00:00'),
(23, '75', 'dsfsdf', 'sdfsdf', 'fsdf', 'sdf', '', '0000-00-00', 'divorced', '', '', '', '_1408295239Bhoopal.jpg', '_1408295239sign.jpg', '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '76', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '2014-08-29 06:58:22', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(25, '77', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '2014-08-29 07:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '79', 'fgsdg', 'dsgsd', 'sdgsdg', 'sdgsdg', 'sdf', '2014-09-30', 'married', 'sdfsdf', 'sdf', 'O+ve', '_1409024656Image(4).jpg', '_1409024656sign.JPG', '2014-09-02 08:46:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '93', 'First Name', 'Middle Name', 'Last Name', 'Father''s Name', 'Mother Maiden Name', '0000-00-00', 'Maritial Status', 'Spouse Name', 'Mother Maiden Name', 'Blood Grou', '', '', '2014-09-06 10:04:05', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(39, '94', 'sa', 'sa', 'sa', 'sa', 'ghj', '0000-00-00', 'jh', 'gjg', 'ghj', 'ghjg', '', '', '2014-09-06 10:04:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '95', 'First Name', 'Middle Name', 'Last Name', 'Father''s Name', 'Mother Maiden Name', '0000-00-00', 'Maritial Status', 'Spouse Name', 'Mother Maiden Name', 'Blood Grou', '', '', '2014-09-06 10:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '96', 'sa', 'sa', 'sa', 'sa', 'ghj', '0000-00-00', 'jh', 'gjg', 'ghj', 'ghjg', '', '', '2014-09-06 10:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '106', 'rwee', 'we', 'wewe', 'weweew', 'ewwe', '2014-09-29', 'married', 'wewe', 'weewe', 'O-ve', '_1409153143sign.JPG', '_1409153143sign.JPG', '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '107', 'dsdfssd', 'fsdfsd', 'fsdfsdf', 'sdfsdf', 'sdfsdf', '2014-09-10', 'single', '', 'sdfsdf', 'O+ve', '_1409181237sign.JPG', '_1409181237sign.JPG', '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '108', 'RAMU', '', 'ROY', '', '', '1991-07-02', '', '', '', '', '', '', '2014-09-18 02:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '109', 'fds', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', '2014-09-24', 'divorced', '', 'sdfsdf', 'AB+ve', '', '', '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--

CREATE TABLE IF NOT EXISTS `emp_attendance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_id` int(10) NOT NULL,
  `pay_days` int(2) NOT NULL,
  `present_days` int(2) NOT NULL,
  `leave_days` int(2) NOT NULL,
  `lwp` int(2) NOT NULL,
  `attend_date` date NOT NULL,
  `payment_status` enum('N','Y') NOT NULL,
  `paid_status` enum('N','Y') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `emp_attendance`
--

INSERT INTO `emp_attendance` (`id`, `emp_id`, `pay_days`, `present_days`, `leave_days`, `lwp`, `attend_date`, `payment_status`, `paid_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 77, 28, 0, 0, 0, '2001-02-01', 'N', 'N', '2014-09-06 09:51:10', '2014-09-17 21:06:23', '0000-00-00 00:00:00'),
(2, 93, 0, 0, 0, 0, '2001-02-01', 'N', 'N', '2014-09-06 09:51:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 94, 28, 0, 0, 0, '2001-02-01', 'N', 'N', '2014-09-06 09:51:10', '2014-09-17 21:06:23', '0000-00-00 00:00:00'),
(4, 77, 0, 0, 0, 0, '2003-03-01', 'N', 'N', '2014-09-06 09:20:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 93, 0, 0, 0, 0, '2003-03-01', 'N', 'N', '2014-09-06 09:20:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 94, 0, 0, 0, 0, '2003-03-01', 'N', 'N', '2014-09-06 09:20:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 73, 0, 0, 0, 0, '2002-02-01', 'N', 'N', '2014-09-06 09:20:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 75, 0, 0, 0, 0, '2002-02-01', 'N', 'N', '2014-09-06 09:20:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 73, 0, 0, 0, 0, '2003-02-01', 'N', 'N', '2014-09-06 09:25:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 75, 0, 0, 0, 0, '2003-02-01', 'N', 'N', '2014-09-06 09:25:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 77, 31, 0, 0, 0, '2000-01-01', 'N', 'N', '2014-09-06 09:25:53', '2014-09-28 00:42:16', '0000-00-00 00:00:00'),
(12, 93, 0, 0, 0, 0, '2000-01-01', 'N', 'N', '2014-09-06 09:25:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 94, 31, 0, 0, 0, '2000-01-01', 'N', 'N', '2014-09-06 09:25:53', '2014-09-28 00:42:16', '0000-00-00 00:00:00'),
(14, 77, 0, 0, 0, 0, '2008-07-01', 'N', 'N', '2014-09-06 09:30:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 93, 0, 0, 0, 0, '2008-07-01', 'N', 'N', '2014-09-06 09:30:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 94, 0, 0, 0, 0, '2008-07-01', 'N', 'N', '2014-09-06 09:30:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 73, 0, 0, 0, 0, '2008-07-01', 'N', 'N', '2014-09-06 09:31:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 75, 0, 0, 0, 0, '2008-07-01', 'N', 'N', '2014-09-06 09:31:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 76, 0, 0, 0, 0, '2008-07-01', 'N', 'N', '2014-09-06 09:31:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 77, 0, 0, 0, 0, '2002-04-01', 'N', 'N', '2014-09-06 09:57:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 93, 0, 0, 0, 0, '2002-04-01', 'N', 'N', '2014-09-06 09:57:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 94, 0, 0, 0, 0, '2002-04-01', 'N', 'N', '2014-09-06 09:57:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 77, 0, 0, 0, 0, '2002-02-01', 'N', 'N', '2014-09-06 10:01:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 93, 0, 0, 0, 0, '2002-02-01', 'N', 'N', '2014-09-06 10:01:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 94, 0, 0, 0, 0, '2002-02-01', 'N', 'N', '2014-09-06 10:01:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 76, 0, 0, 0, 0, '2003-02-01', 'N', 'N', '2014-09-09 16:35:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 77, 0, 0, 0, 0, '2003-02-01', 'N', 'N', '2014-09-09 16:36:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 93, 0, 0, 0, 0, '2003-02-01', 'N', 'N', '2014-09-09 16:36:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 94, 0, 0, 0, 0, '2003-02-01', 'N', 'N', '2014-09-09 16:36:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 77, 0, 0, 0, 0, '2004-05-01', 'N', 'N', '2014-09-09 19:03:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 93, 0, 0, 0, 0, '2004-05-01', 'N', 'N', '2014-09-09 19:03:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 94, 0, 0, 0, 0, '2004-05-01', 'N', 'N', '2014-09-09 19:03:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 77, 0, 0, 0, 0, '2004-02-01', 'N', 'N', '2014-09-09 19:13:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 93, 0, 0, 0, 0, '2004-02-01', 'N', 'N', '2014-09-09 19:13:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 94, 0, 0, 0, 0, '2004-02-01', 'N', 'N', '2014-09-09 19:13:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 73, 29, 22, 1, 1, '2004-02-01', 'N', 'N', '2014-09-09 19:19:38', '2014-09-09 14:44:26', '0000-00-00 00:00:00'),
(37, 75, 29, 2, 22, 2, '2004-02-01', 'N', 'N', '2014-09-09 19:19:38', '2014-09-09 14:44:26', '0000-00-00 00:00:00'),
(38, 73, 0, 0, 0, 0, '2004-05-01', 'N', 'N', '2014-09-09 19:33:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 75, 0, 0, 0, 0, '2004-05-01', 'N', 'N', '2014-09-09 19:33:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 73, 0, 0, 0, 0, '2001-03-01', 'N', 'N', '2014-09-09 19:30:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 75, 0, 0, 0, 0, '2001-03-01', 'N', 'N', '2014-09-09 19:30:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 73, 0, 0, 0, 0, '2001-02-01', 'N', 'N', '2014-09-09 19:31:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 75, 0, 0, 0, 0, '2001-02-01', 'N', 'N', '2014-09-09 19:31:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 73, 0, 0, 0, 0, '2006-02-01', 'N', 'N', '2014-09-09 19:31:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 75, 0, 0, 0, 0, '2006-02-01', 'N', 'N', '2014-09-09 19:31:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 73, 0, 0, 0, 0, '2008-02-01', 'N', 'N', '2014-09-15 19:46:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 75, 0, 0, 0, 0, '2008-02-01', 'N', 'N', '2014-09-15 19:46:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 73, 0, 0, 0, 0, '2008-01-01', 'N', 'N', '2014-09-15 19:46:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 75, 0, 0, 0, 0, '2008-01-01', 'N', 'N', '2014-09-15 19:46:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 77, 0, 0, 0, 0, '2004-03-01', 'N', 'N', '2014-09-15 20:11:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 93, 0, 0, 0, 0, '2004-03-01', 'N', 'N', '2014-09-15 20:11:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 94, 0, 0, 0, 0, '2004-03-01', 'N', 'N', '2014-09-15 20:11:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 73, 31, 23, 7, 0, '2000-01-01', 'N', 'N', '2014-09-15 20:24:57', '2014-09-15 14:55:16', '0000-00-00 00:00:00'),
(54, 75, 31, 23, 7, 0, '2000-01-01', 'N', 'N', '2014-09-15 20:24:57', '2014-09-15 14:55:16', '0000-00-00 00:00:00'),
(55, 77, 0, 0, 0, 0, '2007-02-01', 'N', 'N', '2014-09-15 19:54:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 93, 0, 0, 0, 0, '2007-02-01', 'N', 'N', '2014-09-15 19:54:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 94, 0, 0, 0, 0, '2007-02-01', 'N', 'N', '2014-09-15 19:54:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 107, 28, 0, 0, 0, '2001-02-01', 'N', 'N', '2014-09-18 02:35:13', '2014-09-17 21:06:23', '0000-00-00 00:00:00'),
(59, 108, 28, 0, 0, 0, '2001-02-01', 'N', 'N', '2014-09-18 02:35:13', '2014-09-17 21:06:23', '0000-00-00 00:00:00'),
(60, 73, 0, 0, 0, 0, '2000-02-01', 'N', 'N', '2014-09-18 02:40:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 75, 0, 0, 0, 0, '2000-02-01', 'Y', 'N', '2014-09-18 02:40:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 73, 0, 0, 0, 0, '2001-01-01', 'N', 'N', '2014-09-18 02:42:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 75, 0, 0, 0, 0, '2001-01-01', 'Y', 'N', '2014-09-18 02:42:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 107, 31, 0, 0, 0, '2000-01-01', 'N', 'N', '2014-09-18 02:44:15', '2014-09-28 00:42:16', '0000-00-00 00:00:00'),
(65, 108, 31, 0, 0, 0, '2000-01-01', 'N', 'N', '2014-09-18 02:44:15', '2014-09-28 00:42:16', '0000-00-00 00:00:00'),
(66, 109, 31, 23, 3, 3, '2000-01-01', 'Y', 'N', '2014-09-18 02:44:15', '2014-09-28 00:42:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emp_bank_detail`
--

CREATE TABLE IF NOT EXISTS `emp_bank_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `account_no` int(50) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `IFSC` varchar(30) NOT NULL,
  `micrno` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `emp_bank_detail`
--

INSERT INTO `emp_bank_detail` (`id`, `user_id`, `account_no`, `bank_name`, `branch`, `IFSC`, `micrno`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 65, 0, 'dsfds', 'fsdf', 'fdsf', 'dsfdsf', '2014-08-23 22:02:15', '2014-08-23 17:47:48', '2014-08-23 23:17:48'),
(12, 66, 235235, 'sdfsdf', 'sdfsdf', '234432', '342234', '2014-08-23 22:38:43', '2014-08-23 17:46:03', '2014-08-23 23:16:03'),
(14, 68, 345345, '34534534', '53453', '45345', '345345345', '2014-08-23 23:24:23', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(15, 69, 234234, 'sdsdfsd', 'sdfsdf', '3423432', '234234', '2014-08-23 22:41:27', '2014-08-23 17:12:59', '2014-08-23 22:42:59'),
(16, 70, 32523532, '34232432', '234234', '234234', '23423424', '2014-08-23 22:56:20', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(18, 73, 0, '', '', '', '', '2014-08-26 22:26:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 75, 0, '', '', '', '', '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 76, 0, '', '', '', '', '2014-08-29 06:58:22', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(22, 77, 0, '', '', '', '', '2014-08-29 07:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 79, 0, '', '', '', '', '2014-09-02 08:46:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 93, 0, 'Bank Name', 'Branch Name', 'IFSC', 'MICR No', '2014-09-06 10:04:05', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(34, 94, 0, 'hjg', 'jhghjg', 'jgjhgjhg', 'jghjgh', '2014-09-06 10:04:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 95, 0, 'Bank Name', 'Branch Name', 'IFSC', 'MICR No', '2014-09-06 10:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 96, 0, 'hjg', 'jhghjg', 'jgjhgjhg', 'jghjgh', '2014-09-06 10:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 106, 2147483647, 'sry', 'trt', 'rrtewe', 'werer', '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 107, 0, 'cvbcv', 'bcvbc', 'vbcvb', 'cvbcvb', '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 108, 0, '', '', '', '', '2014-09-18 02:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 109, 0, 'sdgsdg', 'dsgsdg', 'gsdsd', 'sdgsdg', '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emp_doc`
--

CREATE TABLE IF NOT EXISTS `emp_doc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `document` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `emp_doc`
--

INSERT INTO `emp_doc` (`id`, `user_id`, `doc_name`, `document`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'sdfdsf', '_1408232423Image(20).jpg', '2014-08-23 23:24:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 0, 'sdfsdfdsgfds', '_1408232423Image(19).jpg', '2014-08-23 23:24:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 0, 'dfgdfg', '_1408234127Image(20).jpg', '2014-08-23 22:41:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 68, 'muv', '_1408234127Image(20).jpg', '2014-08-23 22:41:27', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(5, 68, 'degree', '_1408234127Image(19).jpg', '2014-08-23 22:41:27', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(6, 70, 'tgdfgdfg', '_1408235620Image(19).jpg', '2014-08-23 22:56:20', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(7, 70, 'dfgdfg', '_1408235620Image(19).jpg', '2014-08-23 22:56:20', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(8, 73, 'PUC', '_1408262623Untitled.jpg', '2014-08-26 22:26:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 75, 'sdfsdf', '_1408295239Scan_20130505_101159_001.jpg', '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 75, 'gvfhgf', '_1408295239Scan_20130505_101159_002.jpg', '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 75, 'nhghgf', '_1408295239Scan_20130505_101302_003.jpg', '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 106, 'ertert', '_1409153143sign.JPG', '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 107, 'dfgdfg', '_1409181237sign.JPG', '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 109, 'sdfsdf', '_1409183842Untitled.jpg', '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emp_education`
--

CREATE TABLE IF NOT EXISTS `emp_education` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_location` varchar(100) NOT NULL,
  `school_percentage` float NOT NULL,
  `puc_name` varchar(100) NOT NULL,
  `puc_location` varchar(100) NOT NULL,
  `puc_percentage` float NOT NULL,
  `diploma_name` varchar(100) NOT NULL,
  `diploma_location` varchar(100) NOT NULL,
  `diploma_percentage` float NOT NULL,
  `degree_name` varchar(100) NOT NULL,
  `degree_location` varchar(100) NOT NULL,
  `degree_percentage` float NOT NULL,
  `master_name` varchar(100) NOT NULL,
  `master_location` varchar(100) NOT NULL,
  `master_percentage` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `emp_education`
--

INSERT INTO `emp_education` (`id`, `user_id`, `school_name`, `school_location`, `school_percentage`, `puc_name`, `puc_location`, `puc_percentage`, `diploma_name`, `diploma_location`, `diploma_percentage`, `degree_name`, `degree_location`, `degree_percentage`, `master_name`, `master_location`, `master_percentage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 65, 'sdfgdsg', 'dsgsdg', 0, 'gdsg', 'sdgsd', 0, 'dsgdsg', 'sdgsdg', 0, 'sdgds', 'gsdg', 0, 'sdgsd', 'gdsg', 0, '2014-08-23 22:02:15', '2014-08-23 17:47:48', '2014-08-23 23:17:48'),
(10, 66, '23423', '234232', 34234, 'rwesdf', 'sdfsdf', 342, 'sdfsdf', 'dsfsdf', 34, 'sdfsdf', '34', 34, '', '', 0, '2014-08-23 22:38:43', '2014-08-23 17:46:03', '2014-08-23 23:16:03'),
(11, 68, 'dsfsdf', 'sdfsdf', 34, 'sdfsdf', 'sdf', 0, 'sdfdsf', 'sdfsdf', 0, 'sdfsdf', 'sdfdsf', 0, 'sdfsdf', 'sdfsdf', 0, '2014-08-23 23:24:23', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(12, 69, 'fdgdfgdfg', 'dfgdfgdfg', 54, 'bcvbcvbcv', 'cvbcvbc', 45, 'fdgdfgdfg', 'dfgdfgdf', 34, 'dfgdfgdfg', 'dfgdfgdfg', 45, 'dfgdfgdfg', 'fdgdfgdf', 34, '2014-08-23 22:41:27', '2014-08-23 17:12:59', '2014-08-23 22:42:59'),
(13, 70, 'ewrwerw', 'erwer', 0, 'werwer', 'ewrw', 43, 'asdasd', 'asdasd45', 45, 'sdfdsf', 'dfssdf', 45, 'sdfsdf', 'sdfsdf', 45, '2014-08-23 22:56:20', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(15, 73, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '2014-08-26 22:26:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 75, 'fdgd', 'dfgdfg', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 76, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '2014-08-29 06:58:22', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(19, 77, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '2014-08-29 07:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 79, 'sadasd', 'asdas', 0, 'asdas', 'das', 0, 'asdas', 'dfsd', 0, '', '', 0, '', '', 0, '2014-09-02 08:46:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 93, 'SSLC School Name', 'School Place', 0, 'PUC Institution Name', 'Place ', 0, 'Diploma Institution Name', 'Place ', 0, 'Degree Institution Name', 'Place ', 0, 'Master Degree Institution Name', 'Place ', 0, '2014-09-06 10:04:05', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(27, 94, 'ghfhgfgh', 'fhgfhgf', 0, 'gfgh', 'fgh', 0, 'ghjg', 'hjg', 0, 'ghgjfhjg', 'fjh', 0, 'gjh', 'gjghhjg', 0, '2014-09-06 10:04:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 95, 'SSLC School Name', 'School Place', 0, 'PUC Institution Name', 'Place ', 0, 'Diploma Institution Name', 'Place ', 0, 'Degree Institution Name', 'Place ', 0, 'Master Degree Institution Name', 'Place ', 0, '2014-09-06 10:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 96, 'ghfhgfgh', 'fhgfhgf', 0, 'gfgh', 'fgh', 0, 'ghjg', 'hjg', 0, 'ghgjfhjg', 'fjh', 0, 'gjh', 'gjghhjg', 0, '2014-09-06 10:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 106, 'werwer', 'werwer', 44, 'werwerwer', 'werwerwer', 44, 'dfssdfsdf', 'sdfsdfsdf', 45, 'dfdfdfg', 'dgdssdg', 65, 'dfgdfgdfg', 'dfgdfgdf', 56, '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 107, 'sdfdsf', 'sdfsdf', 0, 'sdfsd', 'sdfsdf', 0, 'dfssdfsdf', 'sdfsdf', 0, 'sdfdsf', 'sdfsdf', 0, 'sdfsdf', 'sdfsdf', 0, '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 108, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '2014-09-18 02:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 109, 'yfytry', 'tytft', 45, 'gfdgdf', 'hgfhgdf', 34, 'gdfgfdg', 'fgdgdg', 45, 'hfghfg', 'gfhgfghf', 45, 'gvhjghgfg', 'hgfghf', 78, '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emp_identification`
--

CREATE TABLE IF NOT EXISTS `emp_identification` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `voter_id` varchar(20) NOT NULL,
  `pan` varchar(20) NOT NULL,
  `adhar_no` varchar(20) NOT NULL,
  `passport_no` varchar(100) NOT NULL,
  `driving_licence` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `emp_identification`
--

INSERT INTO `emp_identification` (`id`, `user_id`, `voter_id`, `pan`, `adhar_no`, `passport_no`, `driving_licence`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 65, 'dsf', 'sdfsdf', 'fsdf', 'sdfsd', 'fdsf', '2014-08-23 22:02:15', '2014-08-23 17:47:48', '2014-08-23 23:17:48'),
(13, 66, '23523', '342523', '235235', '235235', '5235235', '2014-08-23 22:38:43', '2014-08-23 17:46:03', '2014-08-23 23:16:03'),
(15, 68, '45345', '4325', '3453453', '345435', '345345345', '2014-08-23 23:24:23', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(16, 69, '34223', '324324', '234234', '324234', '432234', '2014-08-23 22:41:27', '2014-08-23 17:12:59', '2014-08-23 22:42:59'),
(17, 70, 'e343425342', 'werwer', 'rwer', 'ewrew', '5325325', '2014-08-23 22:56:20', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(19, 73, '', '', '', '', '', '2014-08-26 22:26:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 75, '', '46', '', '456', '', '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 76, '', '', '', '', '', '2014-08-29 06:58:22', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(23, 77, '', '', '', '', '', '2014-08-29 07:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 79, '', '', '', '', '', '2014-09-02 08:46:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 93, 'Voter Id No', 'PAN', 'Adhar No', 'Passport No', 'Driving Licesence No', '2014-09-06 10:04:05', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(36, 94, 'khkj', 'hff', 'jgh', 'gfdg', 'gjk', '2014-09-06 10:04:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 95, 'Voter Id No', 'PAN', 'Adhar No', 'Passport No', 'Driving Licesence No', '2014-09-06 10:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 96, 'khkj', 'hff', 'jgh', 'gfdg', 'gjk', '2014-09-06 10:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 106, '23232323', '3232', '32322323', '32323223', '23232323', '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 107, 'bvcb', '67856', 'cvbcv', 'cvcvb', 'cvbc', '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 108, '', '', '', '', '', '2014-09-18 02:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 109, 'sdgsdg', '2424', 'sdg', 'dfsgsd', 'sdgsdg', '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `profilesId` int(10) NOT NULL,
  `child_id` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `profilesId`, `child_id`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 3, 22, 18, '0000-00-00 00:00:00', '2014-08-15 15:28:17', '2014-08-15 20:58:17'),
(6, 3, 24, 18, '2014-08-15 20:59:12', '2014-08-15 15:32:27', '2014-08-15 21:02:27'),
(7, 3, 25, 18, '2014-08-15 20:59:43', '2014-08-15 15:32:33', '2014-08-15 21:02:33'),
(8, 3, 26, 18, '2014-08-15 21:03:36', '2014-08-15 15:33:48', '2014-08-15 21:03:48'),
(9, 3, 27, 18, '2014-08-15 21:32:19', '2014-08-21 05:48:03', '2014-08-21 11:18:03'),
(10, 3, 30, 18, '2014-08-20 17:18:36', '2014-08-21 05:24:04', '2014-08-21 10:54:04'),
(11, 3, 31, 18, '2014-08-21 10:25:58', '2014-08-21 05:47:57', '2014-08-21 11:17:57'),
(12, 3, 32, 18, '2014-08-21 11:20:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 3, 33, 18, '2014-08-21 11:27:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 3, 35, 18, '2014-08-21 13:56:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 3, 80, 36, '2014-09-02 08:57:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 3, 97, 18, '2014-09-09 20:04:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_details`
--

CREATE TABLE IF NOT EXISTS `job_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `joining_date` date NOT NULL,
  `job_type` varchar(20) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `department` int(10) NOT NULL,
  `reporting_manager` varchar(300) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `hr_verification` varchar(20) NOT NULL,
  `police_verification` varchar(20) NOT NULL,
  `emp_type` varchar(100) NOT NULL,
  `place_of_posting` varchar(100) NOT NULL,
  `salary_paid_from` varchar(100) NOT NULL,
  `client_id` int(10) DEFAULT NULL,
  `ctc` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `job_details`
--

INSERT INTO `job_details` (`id`, `user_id`, `joining_date`, `job_type`, `designation`, `department`, `reporting_manager`, `payment_mode`, `hr_verification`, `police_verification`, `emp_type`, `place_of_posting`, `salary_paid_from`, `client_id`, `ctc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 65, '0000-00-00', 'contract', 'fdssdf', 0, 'sdfdsfsd', 'cash', 'no', 'yes', 'outsource', '', '', 35, '43', '2014-08-29 07:06:44', '2014-08-23 17:47:48', '2014-08-23 23:17:48'),
(11, 66, '0000-00-00', 'contract', '324234', 0, '324234', 'cheque', 'yes', 'yes', 'inhouse', '', '', 32, '234234', '2014-08-23 23:16:03', '2014-08-23 17:46:03', '2014-08-23 23:16:03'),
(13, 68, '2014-08-26', 'contract', '25235', 0, '235235', 'cheque', 'no', 'no', 'outsource', '', '', 35, '35', '2014-09-02 10:16:47', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(14, 69, '0000-00-00', 'contract', 'ddsdfgsd', 0, 'dsg', 'cash', 'no', 'yes', 'inhouse', '', '', 32, '53', '2014-08-23 22:42:59', '2014-08-23 17:12:59', '2014-08-23 22:42:59'),
(15, 70, '2014-08-27', 'probation', '234234', 0, '324234', 'cash', 'no', 'yes', 'outsource', '', '', 33, '34', '2014-08-23 23:02:29', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(17, 73, '2014-08-28', 'parmanent', '', 1, '', 'banktransfer', 'yes', 'yes', 'outsource', 'dfgdfg', 'dfgdfg', 35, '', '2014-09-15 20:28:01', '2014-09-15 14:58:01', '0000-00-00 00:00:00'),
(19, 75, '0000-00-00', 'parmanent', '', 1, '', 'banktransfer', 'yes', 'yes', 'outsource', 'fgfg', 'fgfg', 35, '56', '2014-09-15 20:27:43', '2014-09-15 14:57:43', '0000-00-00 00:00:00'),
(20, 76, '0000-00-00', 'parmanent', '', 1, '', 'banktransfer', 'yes', 'yes', 'outsource', '', '', 33, '', '2014-09-18 03:02:25', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(21, 77, '0000-00-00', 'parmanent', '', 4, '', 'banktransfer', 'yes', 'yes', 'inhouse', '', '', 0, '', '2014-09-02 08:02:05', '2014-09-02 02:32:05', '0000-00-00 00:00:00'),
(22, 79, '2014-09-10', 'probation', 'sadasd', 1, 'asdasd', 'cash', 'yes', 'yes', 'outsource', '', '', 80, '34', '2014-09-02 08:58:10', '2014-09-02 03:28:10', '0000-00-00 00:00:00'),
(28, 93, '0000-00-00', 'Job Type', 'Designation', 0, 'Reporting manager', 'Payment Mode', 'HR verification', 'Police Verification', 'inhouse', '', '', 0, '', '2014-09-18 02:58:36', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(29, 94, '0000-00-00', 'jgjhghjg', 'hjghjgjhg', 0, 'hjgjhg', 'hg', 'hjghj', 'ghj', 'inhouse', '', '', 0, '', '2014-09-06 10:05:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 95, '0000-00-00', 'Job Type', 'Designation', 0, 'Reporting manager', 'Payment Mode', 'HR verification', 'Police Verification', 'Employee Type', '', '', 0, '', '2014-09-06 10:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 96, '0000-00-00', 'jgjhghjg', 'hjghjgjhg', 0, 'hjgjhg', 'hg', 'hjghj', 'ghj', 'ghjgj', '', '', 0, '', '2014-09-06 10:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 106, '2014-09-10', 'probation', 'qrqwr', 4, 'wqqwrqwr', 'cash', 'no', 'yes', 'outsource', 'qwrqwr', 'qwrqwr', 32, '2334', '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 107, '2014-09-05', 'contract', 'dfxgx', 1, 'dfgdfg', 'cash', 'yes', 'yes', 'inhouse', 'fdgdfg', 'dfgdfg', 32, '56454', '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 108, '0000-00-00', 'parmanent', '', 1, '', 'banktransfer', 'yes', 'yes', 'inhouse', '', '', 32, '', '2014-09-18 02:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 109, '2014-09-19', 'contract', 'dfgdfg', 6, 'dfgdfg', 'cheque', 'no', 'no', 'inhouse', '45', '556', 32, '', '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_id` int(10) NOT NULL,
  `description` text NOT NULL,
  `earning_amount` double NOT NULL,
  `deducting_amount` double NOT NULL,
  `total_amount` double NOT NULL,
  `pay_date` date NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `paid` enum('N','Y') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `emp_id`, `description`, `earning_amount`, `deducting_amount`, `total_amount`, `pay_date`, `status`, `paid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 108, '{"BASIC":"0","CONVEYANCE_ALLOWANCE":"0","HRA":"0","OTHERS":"0","OVER_TIME":"100","MOBILE_REIMBURSEMENT":"45","CANTEEN_BILL":"240","PROVIDENT_FUND":"1000","PROVIDENT_FUND_EMPLOYER_CONTRIBUTION":"10000","EMPLOYEE_STATE_INSURANCE":"454","EMPLOYEE_STATE_INSURANCE_EMPLOYER_CONTRIBUTION":"45"}', 385, 11499, -11114, '2000-01-01', 'Y', 'N', '2014-09-28 18:27:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 108, '{"BASIC":"0","CONVEYANCE_ALLOWANCE":"0","HRA":"0","OTHERS":"0","OVER_TIME":"100","MOBILE_REIMBURSEMENT":"45","CANTEEN_BILL":"240","PROVIDENT_FUND":"1000","PROVIDENT_FUND_EMPLOYER_CONTRIBUTION":"10000","EMPLOYEE_STATE_INSURANCE":"454","EMPLOYEE_STATE_INSURANCE_EMPLOYER_CONTRIBUTION":"45"}', 385, 11499, -11114, '2001-02-01', 'Y', 'N', '2014-09-28 18:27:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 107, '{"BASIC":"0","CONVEYANCE_ALLOWANCE":"0","HRA":"0","OTHERS":"0","OVER_TIME":"343","CANTEEN_BILL":"34343","PROVIDENT_FUND_EMPLOYER_CONTRIBUTION":"434","EMPLOYEE_STATE_INSURANCE_EMPLOYER_CONTRIBUTION":"23333"}', 34686, 23767, 10919, '2001-02-01', 'Y', 'N', '2014-09-28 18:29:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 107, '{"BASIC":"0","CONVEYANCE_ALLOWANCE":"0","HRA":"0","OTHERS":"0","OVER_TIME":"343","CANTEEN_BILL":"34343","PROVIDENT_FUND_EMPLOYER_CONTRIBUTION":"434","EMPLOYEE_STATE_INSURANCE_EMPLOYER_CONTRIBUTION":"23333"}', 34686, 23767, 10919, '2000-01-01', 'Y', 'N', '2014-09-28 19:38:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pf_esi`
--

CREATE TABLE IF NOT EXISTS `pf_esi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `isPF` enum('YES','NO') NOT NULL,
  `pfno` varchar(100) NOT NULL,
  `pfenno` varchar(100) DEFAULT NULL,
  `epfno` varchar(100) DEFAULT NULL,
  `relationship` varchar(100) NOT NULL,
  `isESI` enum('YES','NO') NOT NULL,
  `esino` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `pf_esi`
--

INSERT INTO `pf_esi` (`id`, `user_id`, `isPF`, `pfno`, `pfenno`, `epfno`, `relationship`, `isESI`, `esino`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 65, 'YES', 'sdfds', 'fdsf', 'sdfdsfs', 'sdfsdf', 'YES', 'sdfsdf', '2014-08-23 22:02:15', '2014-08-23 17:47:48', '2014-08-23 23:17:48'),
(11, 66, 'YES', '342', '234', '324', '', 'NO', '', '2014-08-23 22:38:43', '2014-08-23 17:46:03', '2014-08-23 23:16:03'),
(13, 68, 'NO', '', '', '', '', 'NO', '', '2014-08-23 23:24:23', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(14, 69, 'YES', '324', '234', '324', 'dsfsdf', 'YES', 'sdf234', '2014-08-23 22:41:27', '2014-08-23 17:12:59', '2014-08-23 22:42:59'),
(15, 70, 'YES', '34223423', '423423', '42342', 'dfgdfgdf', 'YES', '324', '2014-08-23 22:56:20', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(17, 73, 'YES', '', '', '', '', 'YES', '', '2014-08-26 22:26:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 75, 'NO', '', '', '', '', 'YES', '54645', '2014-08-29 06:52:39', '2014-08-29 01:15:01', '0000-00-00 00:00:00'),
(20, 76, 'YES', '', '', '', '', 'YES', '', '2014-08-29 06:58:22', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(21, 77, 'YES', '', '', '', '', 'YES', '', '2014-08-29 07:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 79, 'NO', '', '', '', '', 'NO', '', '2014-09-02 08:46:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 93, '', 'PF no', 'PF Enrollment No', 'EPF', 'Relationship to be specified', '', 'ESI No', '2014-09-06 10:04:05', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(31, 94, '', 'hjghj', 'gjhg', 'hjg', 'jhghj', '', 'hjghj', '2014-09-06 10:04:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 95, '', 'PF no', 'PF Enrollment No', 'EPF', 'Relationship to be specified', '', 'ESI No', '2014-09-06 10:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 96, '', 'hjghj', 'gjhg', 'hjg', 'jhghj', '', 'hjghj', '2014-09-06 10:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 106, 'YES', '', 'qrqwr', 'eqwrqr', 'qwrqwr', 'NO', '', '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 107, 'YES', 'cvbcvb', 'cvbcvb', 'cvbcvb', 'cvbcvb', 'NO', '', '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 108, 'YES', '', '', '', '', 'YES', '', '2014-09-18 02:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 109, 'NO', '', '', '', '', 'NO', '', '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'branch'),
(3, 'client'),
(4, 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `salary_package`
--

CREATE TABLE IF NOT EXISTS `salary_package` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `BASIC` float DEFAULT '0',
  `CONVEYANCE_ALLOWANCE` float DEFAULT '0',
  `HRA` float DEFAULT '0',
  `OTHERS` float DEFAULT '0',
  `PROVIDENT_FUND` float DEFAULT '0',
  `EMPLOYEE_STATE_INSURANCE` float DEFAULT '0',
  `PROVIDENT_FUND_EMPLOYER_CONTRIBUTION` float DEFAULT '0',
  `EMPLOYEE_STATE_INSURANCE_EMPLOYER_CONTRIBUTION` float DEFAULT '0',
  `OVER_TIME` float DEFAULT '0',
  `MOBILE_REIMBURSEMENT` float DEFAULT '0',
  `CANTEEN_BILL` float DEFAULT '0',
  `annual_ctc` float NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `salary_package`
--

INSERT INTO `salary_package` (`id`, `user_id`, `BASIC`, `CONVEYANCE_ALLOWANCE`, `HRA`, `OTHERS`, `PROVIDENT_FUND`, `EMPLOYEE_STATE_INSURANCE`, `PROVIDENT_FUND_EMPLOYER_CONTRIBUTION`, `EMPLOYEE_STATE_INSURANCE_EMPLOYER_CONTRIBUTION`, `OVER_TIME`, `MOBILE_REIMBURSEMENT`, `CANTEEN_BILL`, `annual_ctc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 106, 45, 45, 45, 45, NULL, NULL, NULL, 66, 32, NULL, 44, 2334, '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 107, 566, 56543, 34, 343, NULL, NULL, 434, 23333, 343, NULL, 34343, 56454, '2014-09-18 03:12:37', '2014-09-17 21:12:21', '0000-00-00 00:00:00'),
(3, 108, 5000, 1000, 2000, 1000, 1000, 454, 10000, 45, 100, 45, 240, 0, '2014-09-18 02:50:54', '2014-09-17 21:02:40', '0000-00-00 00:00:00'),
(4, 109, 456, 54, 34, 54, 54.72, NULL, 62.0616, NULL, 56, 788, NULL, 0, '2014-09-18 02:38:42', '2014-09-17 21:13:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `displayname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `profilesId` int(11) NOT NULL,
  `tmp_password` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resetcode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `isdel` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=110 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `displayname`, `username`, `email`, `password`, `profilesId`, `tmp_password`, `remember_token`, `resetcode`, `access`, `active`, `isdel`, `last_login`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '$2y$10$Y0NUrZJkRldujyoFA3xsquXEh7exQERGjL7.oHN7nKIuWAM5hMItS', 1, '', 'Uyw0nluRMYGXycapEagbA3UsiEByVbXnYXzLrHjViybhMPA0xFZrgT86SBWk', '', '', 'Y', '', '0000-00-00 00:00:00', '2014-08-05 12:07:58', '2014-09-17 21:32:00', '0000-00-00 00:00:00'),
(11, 'Bang', 'Bang', '', '$2y$10$hyGWiucUUHjtat3CqX5uEOK5O5hqkgJ5qv3Mi0nPLLRFhK7T//r6i', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-14 07:07:45', '2014-08-14 12:37:45'),
(12, 'Bang', 'Bang', 'sgfsd@gmail.com', '$2y$10$PNQaQY0KzvQKwRUAZXoNYeoMQpr7Uc/Hu6fzfEbJc3sp8kyhpWfSK', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1899-11-29 00:00:00'),
(14, 'jgjhg', 'jgjhg', 'fghf', '$2y$10$5RJkI.yJUKZg/q3kX1mCeO4T7l5bkEYPqvcRkj8ZHUFWzENzNE5jm', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-14 07:09:29', '2014-08-14 12:39:29'),
(15, 'jgjhg', 'jgjhg', 'fghf', '$2y$10$lq05aO9owqa79274qNQXAOjlLQv2iRr6/2uejUq1TQAIFg8dwoj8S', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1899-11-15 00:00:00'),
(16, 'jgjhg', 'jgjhg', 'fghf@gmail.com', '$2y$10$w3X0n6Dj5rWo0PUKKW..pOUWm.laLQIA5185FCJDd.ElAzsYAwJ1W', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1899-11-30 00:00:00'),
(17, 'Bhoopal', 'Bhoopal', 'bhoopal101@gmail.com', '$2y$10$.OnCIDsWMGr34Axk7XDYyuGw2OAtYjQwfiMo6aLW46r6y/VWY1WdG', 2, '', 'coyVsrXLBEtXYiciMmYn6CDfjrB8LWMM0dlXjtHSsPOush82ycFJbrsE052m', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-15 14:41:22', '1899-11-22 00:00:00'),
(18, 'Bhopla', 'bhoopal10', 'bhoopal0@gmail.com', '$2y$10$Y0NUrZJkRldujyoFA3xsquXEh7exQERGjL7.oHN7nKIuWAM5hMItS', 2, '', '8O8z3kB5OChcV8QNAFhLWTL5vFVAT19OxfzsyqGk5eh7ojd9qjtDH6JPiKCi', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-17 21:25:19', '0000-00-00 00:00:00'),
(21, 'bhoo', 'bhoo123', 'bhoopal10@ygmail.com', '$2y$10$0HPgqr24aTWWaXx5x4SGZOuxD0viZC9AhKhWzdypN2I3NnquW3m9W', 3, '', NULL, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-15 16:24:06', '0000-00-00 00:00:00'),
(22, 'mhbvnhgjh', 'bhoopal123', 'bhoopal12@gmail.com', '$2y$10$r5udRJPy/B9kQEkpKDdRxekYEHBEE19yqcY0lUgIU/rp3/SNnid22', 3, '', NULL, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-15 15:28:17', '2014-08-15 20:58:17'),
(23, 'hgfhgf', 'sdfdsfs', 'bhs@sd.sd', '$2y$10$TAWOOPHGuNOZhwtV2RcgnOXHqm/c8l0Hus1Ttyre/FbPKEnWNL4Oy', 3, '', NULL, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-15 16:23:05', '2014-08-15 21:53:05'),
(24, 'sdfsdf', 'sdfsf', 'sdfs@dsfds.nm', '$2y$10$CFPwjTOgjCBz9so/9Zg0T.egzUY9F/qKWf/xSBS/bv20Qf45spcXS', 3, '', NULL, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-15 15:32:27', '2014-08-15 21:02:27'),
(25, 'xcvxcv', 'cxvcxv', 'vhfhgf@hnjgj.vb', '$2y$10$QBGjWxTtOA4OS9a4zJ7T3epTk3qT7vw9Qzz7AnRouJjQ112OuZ/Qy', 3, '', NULL, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-15 15:32:33', '2014-08-15 21:02:33'),
(26, 'sfdf', 'sdgdsg', 'sdfsdf@dfdf.cm', '$2y$10$jNhAkTGCjzxr/0/ISz1JNefAqBNPbvU5iLHER14anuTQsQXvXcGEK', 3, '', NULL, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-15 15:33:48', '2014-08-15 21:03:48'),
(27, 'ramu123', 'hotmail', 'bhoopal104@gmail.com', '$2y$10$N9rJnTwhGnUTwtMmRowKZezex2QfyM5k4mqEc7jGwF1joLhrovogS', 3, '', 'fvQBITnTCAEo2O8SzTPS2iH4fmBT5zVWXQAGqyIANSWui6wxaWKcD1zB82TC', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-21 05:48:03', '2014-08-21 11:18:03'),
(30, 'sdfdsf', 'bhoopal10123', 'bhoopal1e0@gmail.com', '$2y$10$Xq0zJp25SrVJSKqjBw3ZD.Bot.3O8XMRhKQNGnHRZC6U9f86TzWW6', 3, '', 'LdCH2tzw8y3GLETekLOpdWpCVEX8QQizXg1xq5EJEC6H5cToECGNX7Oxrn4E', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-21 05:24:04', '2014-08-21 10:54:04'),
(31, 'AIRTEL', 'qwerty', 'bhoopal10@gmail.com', '$2y$10$Y0NUrZJkRldujyoFA3xsquXEh7exQERGjL7.oHN7nKIuWAM5hMItS', 3, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-21 05:47:57', '2014-08-21 11:17:57'),
(32, 'myclient', 'sssaq12', 'bh@gjkal.bn', '$2y$10$SHudfvPkN/8TX3j/CQcRLucSNGCpuFCFfnAa6gCA5wL54rMHgPTpy', 3, '', 'miw93dmCr6TKmqhVmRYKy7l1Jvg4Cr2L7zxaqFvGaq6GvfwcMnuh9fRb6q8T', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-29 01:44:01', '0000-00-00 00:00:00'),
(33, 'ra', 'sdfsdf', 'asdas@dsfdsf.df', '$2y$10$YqLpuau0TKs1JipXJ4HtiOANBaXiOTMD9z0iTqsaN3/.3y716LQmK', 3, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '', '', ' bvnbv@fds.jh', '$2y$10$Zzo7nWI.z5qD3zXvCw6AOelBmYgxLkGi5k3BegXxTp6SPJzeEleMi', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-21 08:51:15', '2014-08-21 14:21:15'),
(35, 'client1', '', 'atharv@iimidr.ac.in', '$2y$10$Y0NUrZJkRldujyoFA3xsquXEh7exQERGjL7.oHN7nKIuWAM5hMItS', 3, '', 'a8nE7H1mqGlgjs56DmYNr6vwad4UvKbRgkpW6NzNCbgwp8V3EtBBxWSz3wPt', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-04 13:23:40', '0000-00-00 00:00:00'),
(36, '', 'bang', 'bhoopal134@gmail.com', '$2y$10$2.c7EE9NNLNn5Gfe30P40eMt5iwJ0/ewrAk0GqiWAqzbsjni4le7m', 2, '', 'xANhFR6NKoYG4quLbwtnqK7zo57o6uThUaOL2HnaO9CLVaYnRxcWZloSPwC2', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-02 04:38:17', '0000-00-00 00:00:00'),
(65, '', '123450001', 'tdbhoopal@ymail.com', '$2y$10$R/1iw1Ms/BK12o1CulSYse4eZ8vr.a4uF5vBQhZIxmFVuFzQ938HS', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-23 17:47:48', '2014-08-23 23:17:48'),
(66, 'sdfsd sdfsd', '123450002', 'tbhoopal@fmail.com', '$2y$10$9J8KgR7ORTAjstw5l5kMcOQ8XixJtPmLdvJHH64yuLlPZw7lSPlTO', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-23 17:46:03', '2014-08-23 23:16:03'),
(68, 'bhopopal', 'Bang0001', 'bhoopal10@hotmail.com', '$2y$10$stVWZZwKv5ZKijJmZn1w.eAf1kWokhVAkhGCooPrnq3JKzFH0TNEC', 4, '', 'YBTGUeypytLCOK5n0VJJ9Fe7nluV0tcbFUZQ4wel1S8cPVMGrluyV1h6h0bg', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(69, 'hkjhk kjhkj', 'Bang0002', 'bhoopal_t@ymail.com', '$2y$10$.u.M84d7uAfvfpLw7qCcy.ULe4qQ7UTdZwis6R886GXeI9FY2op2u', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-23 17:12:59', '2014-08-23 22:42:59'),
(70, 'ngfh fhgj', 'Bang0003', 'bhoopal10@gmail.com', '$2y$10$RZ4pMtAzTrvKm7QHT/r2duoGJFQwMSb61ZlePypeRhaQ4VMgr6M1O', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(73, 'Ram ', 'Bang0004', 'anirbanbanerjee077@gmail.com', '$2y$10$.AfeElOMApgY74SFuzZFguqBEQRmCpxk9lnER2Pg8BRFIyttyeDky', 4, '', 'hZ7Wxofc5lK6WB4Wwo2WYtOCZQ5IRBDDGRBVNL1npygk1DidcIaTFkNQDJsA', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-29 01:13:51', '0000-00-00 00:00:00'),
(75, 'Bhoopal', 'Bang0005', 'bhoopalh@rmail.com', '$2y$10$Y0NUrZJkRldujyoFA3xsquXEh7exQERGjL7.oHN7nKIuWAM5hMItS', 4, '', 'TaMkQXFXW3DnCfLaLkwhjpkFzl4NZMBfqx4RU038gUNWD7ZTwhzgwtPWau9I', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-08-29 01:52:41', '0000-00-00 00:00:00'),
(76, ' ', 'Bang0006', 'bhoopal11@hmail.oc', '$2y$10$n2BGIBIGl2OmffGrkyokJeKdW88wfUNPfLabWjuOyWmcvVekuW4lW', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(77, ' ', 'Bang0007', 'bhooooopap@jk.df', '$2y$10$mVdGfKJL0hHRxpJsXMzfjOAULvFKoWiL.7VKXDotRhOo0oTb4mnUu', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'fgsdg sdgsdg', 'Bang010001', 'bhoopal@ui.com', '$2y$10$Jb0lUptTt3Kl2SFrYc4t5uBO861cvKivPf59WUTbQEdcLwC3hGyKW', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'myclientname', 'myclient123', 'bhoopal10@gmail.com', '$2y$10$X9y4NdueQQkiqpw65poRjurtRYDg9sBfY1I4QqCljZXdenPDmN9.S', 3, '', 'Fc0iDXBl6zROOZP3sN4O7PtRHpD4Oti6O351NjozOAMoSkQzpCpbaooH8bzm', '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-09 14:41:15', '0000-00-00 00:00:00'),
(93, 'Display Name', 'HYD0008', 'dasfdf10@gmail.com', 'OkH9J3dEkP', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(94, 'as', 'HYD0009', 'tbhhgdchgdghoopal@ymail.com', 'qc3L8d42dV', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Display Name', 'HYD0010', 'dassdsldfdf10@gmail.com', 'O3Z7iamoFi', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'as', 'HYD0011', 'tbhoopal@ymail.com', 'TS4sSgeCk7', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '12312', 'comny123', 'bhoopal10@hotmail.com', '$2y$10$nMyPj5eoqFY0zCcWjGYHXuEW/LfqdyWmr/Olq1ut70cBSPa.lpzny', 3, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '', 'tes', 'shenoy575@gmail.com', '$2y$10$g/RbX3/HisijvR.txzfQ/eGi0M9kD520Wz6ZK6vNJTvHRLN1bONi2', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-09 14:37:18', '2014-09-09 20:07:18'),
(99, '', 'Tes', 'shenoy575@gmail.com', '$2y$10$vT5T5/zztQ1Tn8D2A2TRpO7h2.k6nm16R5gYpJOei1sk6ZroBwrdm', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-09 14:37:11', '2014-09-09 20:07:11'),
(100, '', 'tes', 'shenoy575@gmail.com', '$2y$10$UEbPkyp9VP7hNXlv9voi7ubkxjjeulicu/wpgeQnzZi9gOkSFb5Q2', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-09 14:20:24', '2014-09-09 19:50:24'),
(101, 'sds', '5ttre', 'bhoo@hhsjd.sd', '$2y$10$L68VzjO3sLSwFjI7Mu6OIuiPf1VclraG5AhlascvSm.34BOGJWq.a', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-09 14:20:31', '2014-09-09 19:50:31'),
(102, '', 'tes', 'shenoy575@gmail.com', '$2y$10$30afB2haTKEIDt.EmsFiJuBztJEtRag1.R/Uqa9dCxEpP9x/ojnDG', 2, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-09 14:25:13', '2014-09-09 19:55:13'),
(103, '', 'Test', 'shenoy575@gmail.com', '$2y$10$YzLNEgvaJZi8qo.MVS1Gmens2p4r34tcT4FDYIedzZ9X.GVANGO82', 2, '$2y$10$HqbiRlxjdpooV5ayaq7Nkez8fr6Qwgx6RagIwepfO.sG5MvlQ9xz.', 'bsooF5UHjuCHm5ATUHOteUMtdhNI5dDYBSjL2T9nTBzHpofI3nVZ9U0Ii8qW', '0ZkfbtoQ1es4PxjKn9Hu9nFRcilGAhIItRE8Pd2l5heAL0gOOgt4UiBfjbAA', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-09-09 14:09:56', '0000-00-00 00:00:00'),
(106, 'rwee wewe', 'HYD0012', 'bhoopal333@gmail.com', '$2y$10$Xjk85v6YEQ93mxl6Vzj.A.Q5xAdrm31DFyYzmcN1qO8oB.WEMro4q', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'dsdfssd fsdfsdf', 'HYD0013', 'bhoodfpal10@gmail.com', '$2y$10$9piecwhUTiQ0.c1uos7CSevajFyWwd2/TUWrTJIsCaeJFDGG21cRq', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'RAMU ROY', 'HYD0014', 'ravi@gmail.com', '$2y$10$G7di4tDGi4TUuZxWaJGZNuUXI.95kS.cVQ0L6o5NzoB4GYnT63dXy', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'fds sdfsdf', 'HYD0015', 'bhoopal10@gmail.com', '$2y$10$/FglvsfTdyA93o.4n/PPYu3kivzSx6nZvaYKMshuRbBhimiB1BFym', 4, '', NULL, '', '', 'Y', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_contact`
--

CREATE TABLE IF NOT EXISTS `user_contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `alt_email` varchar(150) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `mobile` varchar(55) NOT NULL,
  `alt_mobile` varchar(55) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pin` int(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `p_address` text NOT NULL,
  `p_city` varchar(100) NOT NULL,
  `p_state` varchar(100) NOT NULL,
  `p_pin` int(6) NOT NULL,
  `image` text NOT NULL,
  `signature` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `user_contact`
--

INSERT INTO `user_contact` (`id`, `user_id`, `dob`, `gender`, `alt_email`, `phone`, `mobile`, `alt_mobile`, `address`, `city`, `state`, `pin`, `country`, `p_address`, `p_city`, `p_state`, `p_pin`, `image`, `signature`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, 1, '2014-08-13', 'Male', 'hgffd', '54354354', '435435434', '43543543', 'gfdgfdgf\r\nhgfhgf\r\nbdfgfdg', 'gfdgfd', 'gfdgfd', 0, 'gfdgdfg', '', '', '', 0, '_140814080129photo.jpg', '_081408140129sign.jpg', '2014-08-14 07:39:20', '2014-08-14 07:40:42', '0000-00-00 00:00:00'),
(31, 17, '2014-08-21', 'Male', 'sdsf@dfd.jk', '', '', '', 'jgjh\r\n', '', 'ap', 0, '', '', '', '', 0, '_150814580658photo.jpg', '_581508140658sign.jpg', '2014-08-15 13:27:12', '2014-08-15 13:53:53', '0000-00-00 00:00:00'),
(32, 18, '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '_150814500926photo.jpg', '_471508140901sign.jpg', '2014-08-15 16:14:41', '2014-08-29 01:40:34', '0000-00-00 00:00:00'),
(34, 27, '0000-00-00', '', 'dsfsd@sds.fg', '', '342324234', '234234', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-15 15:39:07', '2014-08-15 15:39:07', '0000-00-00 00:00:00'),
(35, 0, '0000-00-00', '', 'dsfsd@sds.fg', '', '2342345325', '234234324', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-20 17:18:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 30, '2014-08-22', 'Male', 'bhoopal', '765667', '587687687', '687687', '6876', 'bangalore', 'ka', 0, 'india', '', '', '', 0, '_210814470911WIN_20140626_183550.JPG', '_472108140911sign.jpg', '2014-08-21 04:15:51', '2014-08-21 04:17:45', '0000-00-00 00:00:00'),
(37, 0, '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-21 10:25:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 31, '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-21 04:56:59', '2014-08-21 04:56:59', '0000-00-00 00:00:00'),
(39, 0, '0000-00-00', '', '', '', '543543', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-21 11:20:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 0, '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-21 11:27:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 32, '0000-00-00', '', '', '', '123456677', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-21 06:02:50', '2014-08-29 01:44:08', '0000-00-00 00:00:00'),
(42, 0, '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-21 13:56:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 65, '0000-00-00', '', 'dsfsdf@ssdf.jh', 'sdfsdf', 'fsdf', '', 'zfdsf', 'dsfsdf', 'sdfsdf', 0, '', 'sdfsdf', '', '', 0, '', '', '2014-08-23 22:02:15', '2014-08-23 17:47:48', '2014-08-23 23:17:48'),
(55, 66, '0000-00-00', '', 'dsfsdf', '234234', '2342345325', '234324', 'dsfsdf', 'sdfsdfsdsdfdsf', 'dsfsdfdsf', 324234, '', 'sdsdfsdf', 'sdfdsf', 'sdfdsf', 0, '', '', '2014-08-23 22:38:43', '2014-08-23 17:46:03', '2014-08-23 23:16:03'),
(57, 68, '2014-08-20', 'Male', '', '', '', '', 'sfdsfsf', 'gdfgdfgdfg', 'sdfsdf', 324234, '', 'sadasdasda', 'asdasd', 'asdasd', 0, '_260814221031Image(4).jpg', '_222608141031sign.JPG', '2014-08-23 23:24:23', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(58, 69, '0000-00-00', '', '', '235235', '342523', '235235235', 'fdgdfg', 'fdgdfg', 'dfgdfg', 32432, '', 'sdfsdf', 'sdfsdf', 'sdfsdf', 0, '', '', '2014-08-23 22:41:27', '2014-08-23 17:12:59', '2014-08-23 22:42:59'),
(59, 70, '0000-00-00', '', 'ffdsf@sdfs.df', '23423', '324324234', '234234', 'asdasd', 'asdasd', 'asdasd', 0, '', 'dasd', 'asadasd', 'asd', 0, '', '', '2014-08-23 22:56:20', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(61, 73, '0000-00-00', '', '', '', '1234', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-26 22:26:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 35, '0000-00-00', 'Male', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-29 01:17:37', '2014-08-29 01:17:48', '0000-00-00 00:00:00'),
(64, 75, '0000-00-00', '', '', '', '1234567890', '', '', '', '', 5456456, '', '', '', '', 0, '_290814430600photo.jpg', '_192908140747sign.jpg', '2014-08-29 06:52:39', '2014-09-14 10:45:46', '0000-00-00 00:00:00'),
(65, 76, '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-29 06:58:22', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(66, 77, '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-29 07:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 33, '0000-00-00', '', '', '', '1234566', '2344555', '', '', '', 0, '', '', '', '', 0, '', '', '2014-08-29 06:43:41', '2014-08-29 01:14:15', '0000-00-00 00:00:00'),
(69, 79, '0000-00-00', '', '', '', '', '', 'sdfsadf', 'sdfsdf', '', 0, '', '', '', '', 0, '', '', '2014-09-02 08:46:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 0, '0000-00-00', '', '', '', '12344', '213123', '', '', '', 0, '', '', '', '', 0, '', '', '2014-09-02 08:57:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 18, '0000-00-00', '', 'Email Id', 'Phone No', 'Mobile No', 'Alt Mobile No', 'Present Address', 'City ', 'State ', 0, '', 'Permanent Address', 'City ', 'State', 0, '', '', '2014-09-06 09:42:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 18, '0000-00-00', '', 'Alt Email ID', 'Phone No', 'Mobile No', 'Alt Mobile No', 'Present Address', 'City ', 'State ', 0, '', 'Permanent Address', 'City ', 'State', 0, '', '', '2014-09-06 09:45:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 18, '0000-00-00', '', 'Alt Email ID', 'Phone No', 'Mobile No', 'Alt Mobile No', 'Present Address', 'City ', 'State ', 0, '', 'Permanent Address', 'City ', 'State', 0, '', '', '2014-09-06 09:51:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 18, '0000-00-00', '', 'Alt Email ID', 'Phone No', 'Mobile No', 'Alt Mobile No', 'Present Address', 'City ', 'State ', 0, '', 'Permanent Address', 'City ', 'State', 0, '', '', '2014-09-06 09:52:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 18, '0000-00-00', '', 'jhgj', 'gjhg', 'ghj', 'hjg', 'fdgdfg', 'dfgdfg', 'fgdf', 0, '', 'fdgdfg', 'hjg', 'jhgj', 0, '', '', '2014-09-06 09:52:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 93, '0000-00-00', '', 'Alt Email ID', '23232323', '1234567890', 'Alt Mobile No', 'Present Address', 'City ', 'State ', 0, '', 'Permanent Address', 'City ', 'State', 0, '', '', '2014-09-06 10:04:05', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(81, 94, '0000-00-00', '', 'jhgj', 'gjhg', 'ghj', 'hjg', 'fdgdfg', 'dfgdfg', 'fgdf', 0, '', 'fdgdfg', 'hjg', 'jhgj', 0, '', '', '2014-09-06 10:04:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 95, '0000-00-00', '', 'Alt Email ID', 'Phone No', 'Mobile No', 'Alt Mobile No', 'Present Address', 'City ', 'State ', 0, '', 'Permanent Address', 'City ', 'State', 0, '', '', '2014-09-06 10:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 96, '0000-00-00', '', 'jhgj', 'gjhg', 'ghj', 'hjg', 'fdgdfg', 'dfgdfg', 'fgdf', 0, '', 'fdgdfg', 'hjg', 'jhgj', 0, '', '', '2014-09-06 10:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 0, '0000-00-00', '', '', '', '1231231234', '234324', '', '', '', 0, '', '', '', '', 0, '', '', '2014-09-09 20:04:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 106, '0000-00-00', '', 'dsfsdf@ssdf.jh', '23232323', '2323232323', '234234324', 'wewe', 'wewe', 'wewe', 0, '', 'weewwe', 'wewe', 'wewe', 0, '', '', '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 107, '0000-00-00', '', 'bhoopal@gmail.com', '9742623867', '9898989898', '234234324', 'sdfsdf', 'sdfsd', 'fsdfsdf', 123456, '', 'sdfsdsdf', 'wewe', 'wewe', 0, '', '', '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 108, '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, '', '', '2014-09-18 02:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 109, '0000-00-00', '', 'etert@dfdg.dg', '3335353', '453', '3535', 'sdfsdf', 'sdfsdfsdf', 'sdfsdf', 123456, '', 'sdfsdf', 'dfgdfg', 'dfgdfg', 0, '', '', '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `work_experiance`
--

CREATE TABLE IF NOT EXISTS `work_experiance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `location` varchar(250) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `last_ctc` float NOT NULL,
  `join_date` date NOT NULL,
  `leaving_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `work_experiance`
--

INSERT INTO `work_experiance` (`id`, `user_id`, `company_name`, `location`, `designation`, `last_ctc`, `join_date`, `leaving_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 65, 'sdgdsg', 'sdgds', 'sdgds', 23, '0000-00-00', '0000-00-00', '2014-08-23 23:17:48', '2014-08-23 17:47:48', '2014-08-23 23:17:48'),
(10, 65, 'dsfsdf', 'dsfsdf', 'sdfsdf43', 435, '0000-00-00', '2014-12-08', '2014-08-23 22:02:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 66, 'bcvbcvb', 'cvbcv', 'bcvbc', 324234, '0000-00-00', '0000-00-00', '2014-08-23 23:16:03', '2014-08-23 17:46:03', '2014-08-23 23:16:03'),
(12, 66, 'dsfsdf', 'sdfsdf', 'sdf', 0, '0000-00-00', '0000-00-00', '2014-08-23 22:38:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 68, 'fdsfdsfqw', 'sdfsdf', 'sdfsdf', 43345, '2014-08-25', '2014-08-27', '2014-09-02 10:16:47', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(14, 68, 'erwerewr', 'ewrwe', 'rwerewr', 0, '2014-08-28', '2014-08-01', '2014-09-02 10:16:47', '2014-09-02 04:46:47', '2014-09-02 10:16:47'),
(15, 69, 'dfdsfgdf', 'dfgdfgdf', 'dfgfdgdfg', 45, '0000-00-00', '0000-00-00', '2014-08-23 22:42:59', '2014-08-23 17:12:59', '2014-08-23 22:42:59'),
(16, 69, 'dfgdfg', 'dfgdfg', 'dfgdfg', 56, '0000-00-00', '0000-00-00', '2014-08-23 22:41:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 70, 'werwer', 'werwer', 'ewrwe', 45, '2014-08-05', '2014-08-26', '2014-08-23 23:02:29', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(18, 70, 'sdfsdf', 'sdfsdf', 'sdfsdf', 45, '2014-08-19', '2014-08-21', '2014-08-23 23:02:29', '2014-08-23 17:32:29', '2014-08-23 23:02:29'),
(20, 73, 'sdfsdgs', 'sgsdg', 'sdgsg', 34, '2014-08-27', '2014-08-20', '2014-08-29 07:05:16', '2014-08-29 01:35:16', '0000-00-00 00:00:00'),
(23, 75, 'gnamee', 'sdfsdf', 'dsfdf', 54, '2014-08-04', '2014-08-25', '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 75, 'sdfsdf', 'sdfsdf', 'sdfsdf', 45, '2014-08-12', '2014-08-31', '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 75, 'sfsdf', 'sdfsdf', 'sdfsdf', 43, '2014-08-26', '2014-08-31', '2014-08-29 06:52:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 76, '', '', '', 0, '0000-00-00', '0000-00-00', '2014-09-18 03:02:25', '2014-09-17 21:32:25', '2014-09-18 03:02:25'),
(27, 77, '', '', '', 0, '0000-00-00', '0000-00-00', '2014-08-29 07:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 79, 'asdfasfasf', 'asfasf', 'asfas', 0, '2014-09-24', '2014-09-11', '2014-09-02 08:46:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 18, 'Company Name', 'Location', 'Designation', 0, '0000-00-00', '0000-00-00', '2014-09-06 09:42:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 18, 'Company Name', 'Location', 'Designation', 0, '0000-00-00', '0000-00-00', '2014-09-06 09:45:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 18, 'Company Name', 'Location', 'Designation', 0, '0000-00-00', '0000-00-00', '2014-09-06 09:51:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 18, 'Company Name', 'Location', 'Designation', 0, '0000-00-00', '0000-00-00', '2014-09-06 09:52:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 18, 'nbv n', 'bvnv', 'bnv', 0, '0000-00-00', '0000-00-00', '2014-09-06 09:52:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 93, 'Company Name', 'Location', 'Designation', 0, '0000-00-00', '0000-00-00', '2014-09-18 02:58:36', '2014-09-17 21:28:36', '2014-09-18 02:58:36'),
(35, 94, 'nbv n', 'bvnv', 'bnv', 0, '0000-00-00', '0000-00-00', '2014-09-06 10:04:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 95, 'Company Name', 'Location', 'Designation', 0, '0000-00-00', '0000-00-00', '2014-09-06 10:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 96, 'nbv n', 'bvnv', 'bnv', 0, '0000-00-00', '0000-00-00', '2014-09-06 10:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 106, 'retert', 'ertert', 'erter', 0, '2014-09-03', '2014-09-11', '2014-09-15 19:31:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 107, 'dfgdfg', 'dfgdfg', 'dfgdfg', 0, '2014-09-04', '2014-09-13', '2014-09-18 03:12:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 108, '', '', '', 0, '0000-00-00', '0000-00-00', '2014-09-18 02:50:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 109, 'ghjhg', 'hffhg', 'ggd', 67, '2014-09-19', '2014-09-18', '2014-09-18 02:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
