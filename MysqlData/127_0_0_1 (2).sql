-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 10:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_db`
--
CREATE DATABASE IF NOT EXISTS `hotel_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hotel_db`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `p_id` int(3) NOT NULL,
  `p_title` varchar(50) NOT NULL,
  `p_category` varchar(20) NOT NULL,
  `p_pic` varchar(50) NOT NULL,
  `p_details` varchar(100) NOT NULL,
  `p_comments` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`p_id`, `p_title`, `p_category`, `p_pic`, `p_details`, `p_comments`, `datetime`) VALUES
(1, 'Google inks pact for new 35-storey office', ' Travel, Lifestyle', '2020-08-02-08-16.png', '<p>That dominion stars lights dominion divide years for fourth have don&#39;t stars is that he earth', 'comments', '2020-08-02 17:27:16'),
(2, 'Second divided from form fish beast made every of ', 'hotel', '2020-08-02-08-13.png', '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you sho', 'comments', '2020-08-02 17:30:13'),
(3, 'Google inks pact for new 35-storey office', 'hotel', '2020-08-02-08-30.png', '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you sho', 'comment', '2020-08-02 17:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `booking_id` varchar(20) NOT NULL,
  `g_adult` varchar(10) NOT NULL,
  `g_child` varchar(10) NOT NULL,
  `g_total` varchar(10) NOT NULL,
  `g_checkin` varchar(20) NOT NULL,
  `g_checkout` varchar(20) NOT NULL,
  `g_name` varchar(20) NOT NULL,
  `g_email` varchar(30) NOT NULL,
  `g_address` varchar(50) NOT NULL,
  `g_city` varchar(20) NOT NULL,
  `g_country` varchar(20) NOT NULL,
  `g_request` varchar(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `g_id`, `booking_id`, `g_adult`, `g_child`, `g_total`, `g_checkin`, `g_checkout`, `g_name`, `g_email`, `g_address`, `g_city`, `g_country`, `g_request`, `datetime`) VALUES
(0, 1, '3206', '5', '4', '9', '0000-00-00', '0000-00-00', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'g_requestg_requestg_requestg_requestg_requestg_req', '2020-07-26 06:33:08'),
(0, 2, '19200', '3', '3', '6', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '2020-07-26 06:35:06'),
(0, 3, '22855', '3', '3', '6', '0000-00-00', '0000-00-00', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'g_requestg_requestg_requestg_request', '2020-07-26 06:37:41'),
(0, 4, '21876', '3', '3', '6', '0000-00-00', '0000-00-00', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'g_requestg_requestg_requestg_request', '2020-07-26 06:38:03'),
(0, 5, '16579', '3', '3', '6', '0000-00-00', '0000-00-00', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'g_requestg_requestg_requestg_request', '2020-07-26 06:38:37'),
(0, 6, '27293', '3', '3', '6', '0000-00-00', '0000-00-00', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'http://localhost:8080/server/00/server/marian/inde', '2020-07-26 06:41:18'),
(0, 7, '11584', '3', '3', '6', '0000-00-00', '0000-00-00', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'http://localhost:8080/server/00/server/marian/inde', '2020-07-26 06:43:37'),
(0, 8, '2181', '3', '3', '6', '0000-00-00', '0000-00-00', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'http://localhost:8080/server/00/server/marian/inde', '2020-07-26 06:43:41'),
(0, 9, '29817', '3', '3', '6', '0000-00-00', '0000-00-00', 'Moaref Billah', 'hasbul_hasan@hotmail', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'http://localhost:8080/server/00/server/marian/inde', '2020-07-26 06:43:50'),
(0, 10, '27410', '3', '3', '6', '0000-00-00', '0000-00-00', 'Moaref Billah', 'hasbul_hasan@hotmail', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'http://localhost:8080/server/00/server/marian/inde', '2020-07-26 06:45:30'),
(0, 11, '20136', '4', '1', '5', '0000-00-00', '0000-00-00', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Check Out :\r\n07/17/2020\r\n\r\nTotal length of stay :\r', '2020-07-26 08:46:59'),
(0, 12, '28084', '4', '1', '5', '07/24/2020', '07/17/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Check Out :\r\n07/17/2020\r\n\r\nTotal length of stay :\r', '2020-07-26 08:57:45'),
(0, 13, '15837', '4', '1', '5', '07/24/2020', '07/17/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Check Out :\r\n07/17/2020\r\n\r\nTotal length of stay :\r', '2020-07-26 09:02:29'),
(0, 14, '23890', '4', '1', '5', '07/24/2020', '07/17/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Check Out :\r\n07/17/2020\r\n\r\nTotal length of stay :\r', '2020-07-26 09:04:29'),
(0, 15, '26659', '4', '1', '5', '07/24/2020', '07/17/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Check Out :\r\n07/17/2020\r\n\r\nTotal length of stay :\r', '2020-07-26 09:05:35'),
(0, 16, '2485', '3', '3', '6', '07/17/2020', '07/27/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'ESERVATION DETAILS\r\n\r\nCheck In :\r\n07/17/2020\r\n\r\nCh', '2020-07-26 09:10:17'),
(0, 17, '29809', '3', '3', '6', '07/17/2020', '07/27/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'ESERVATION DETAILS\r\n\r\nCheck In :\r\n07/17/2020\r\n\r\nCh', '2020-07-26 09:16:43'),
(0, 18, '5563', '3', '3', '6', '07/17/2020', '07/27/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'ESERVATION DETAILS\r\n\r\nCheck In :\r\n07/17/2020\r\n\r\nCh', '2020-07-26 09:17:22'),
(0, 19, '27247', '3', '3', '6', '07/17/2020', '07/27/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'ESERVATION DETAILS\r\n\r\nCheck In :\r\n07/17/2020\r\n\r\nCh', '2020-07-26 09:17:48'),
(0, 20, '12261', '3', '3', '6', '07/17/2020', '07/27/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'ESERVATION DETAILS\r\n\r\nCheck In :\r\n07/17/2020\r\n\r\nCh', '2020-07-26 09:18:35'),
(0, 21, '26982', '3', '3', '6', '07/17/2020', '07/27/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'ESERVATION DETAILS\r\n\r\nCheck In :\r\n07/17/2020\r\n\r\nCh', '2020-07-26 09:36:33'),
(0, 22, '20704', '3', '3', '6', '07/17/2020', '07/27/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', '7/17/2020\r\n\r\nCheck Out :\r\n07/27/2020\r\n\r\nTotal leng', '2020-07-26 09:36:58'),
(0, 23, '24473', '3', '3', '6', '07/17/2020', '07/27/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', '7/17/2020\r\n\r\nCheck Out :\r\n07/27/2020\r\n\r\nTotal leng', '2020-07-26 09:37:44'),
(0, 24, '23257', '1', '0', '1', '02/11/2022', '02/26/2022', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:03:47'),
(0, 25, '30794', '1', '0', '1', '02/11/2022', '02/26/2022', '', '', '', '', '', '', '2020-07-26 14:06:16'),
(0, 26, '21372', '1', '0', '1', '02/11/2022', '02/26/2022', '', '', '', '', '', '', '2020-07-26 14:06:35'),
(0, 27, '31902', '1', '0', '1', '02/11/2022', '02/26/2022', '', '', '', '', '', '', '2020-07-26 14:07:04'),
(0, 28, '29627', '1', '0', '1', '02/11/2022', '02/26/2022', '', '', '', '', '', '', '2020-07-26 14:07:20'),
(0, 29, '1029', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:13:11'),
(0, 30, '12886', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:18:40'),
(0, 31, '27352', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:23:39'),
(0, 32, '606', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:23:57'),
(0, 33, '28888', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:25:45'),
(0, 34, '25471', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:26:30'),
(0, 35, '16204', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:27:33'),
(0, 36, '32305', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:28:05'),
(0, 37, '21207', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:28:24'),
(0, 38, '9383', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:28:48'),
(0, 39, '30660', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:32:34'),
(0, 40, '22079', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:32:56'),
(0, 41, '11604', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:34:38'),
(0, 42, '26285', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:36:09'),
(0, 43, '7650', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:36:34'),
(0, 44, '17779', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:37:44'),
(0, 45, '22806', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:37:50'),
(0, 46, '19349', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:38:29'),
(0, 47, '17578', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:39:13'),
(0, 48, '21143', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:40:04'),
(0, 49, '23684', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:41:11'),
(0, 50, '19565', '1', '0', '1', '07/31/2020', '08/28/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n02/11/2022\r\n\r\nC', '2020-07-26 14:42:05'),
(0, 51, '19504', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'col-sm-12col-sm-12col-sm-12col-sm-12col-sm-12col-s', '2020-07-26 16:54:15'),
(0, 52, '16553', '4', '3', '7', '07/27/2020', '07/30/2020', '', '', '', '', '', '', '2020-07-26 16:54:38'),
(0, 53, '5373', '4', '3', '7', '07/27/2020', '07/30/2020', '', '', '', '', '', '', '2020-07-26 16:54:46'),
(0, 54, '17871', '4', '3', '7', '07/27/2020', '07/30/2020', '', '', '', '', '', '', '2020-07-26 19:59:25'),
(0, 55, '27738', '4', '3', '7', '07/27/2020', '07/30/2020', '', '', '', '', '', '', '2020-07-26 20:08:22'),
(0, 56, '31580', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'https://www.youtube.com/watch?v=vDJqKMaQS3ohttps:/', '2020-07-26 20:08:40'),
(0, 57, '14491', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'https://www.youtube.com/watch?v=vDJqKMaQS3ohttps:/', '2020-07-26 20:38:39'),
(0, 58, '13810', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'https://www.youtube.com/watch?v=vDJqKMaQS3ohttps:/', '2020-07-26 20:42:09'),
(0, 59, '3121', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'https://www.youtube.com/watch?v=vDJqKMaQS3ohttps:/', '2020-07-26 20:42:28'),
(0, 60, '20246', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'https://www.youtube.com/watch?v=vDJqKMaQS3ohttps:/', '2020-07-26 20:42:44'),
(0, 61, '4247', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'https://www.youtube.com/watch?v=vDJqKMaQS3ohttps:/', '2020-07-26 20:44:06'),
(0, 62, '25667', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'col-sm-12col-sm-12col-sm-12col-sm-12col-sm-12col-s', '2020-07-26 20:47:45'),
(0, 63, '19136', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'col-sm-12col-sm-12col-sm-12col-sm-12col-sm-12col-s', '2020-07-26 20:47:54'),
(0, 64, '1017', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'col-sm-12col-sm-12col-sm-12col-sm-12col-sm-12col-s', '2020-07-26 20:48:00'),
(0, 65, '17028', '4', '3', '7', '07/27/2020', '07/30/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'col-sm-12col-sm-12col-sm-12col-sm-12col-sm-12col-s', '2020-07-26 20:49:49'),
(0, 66, '374', '1', '0', '1', '07/26/2020', '07/26/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Check Out :\r\n07/26/2020\r\n\r\nTotal length of stay :\r', '2020-07-26 20:59:47'),
(0, 67, '17271', '1', '0', '1', '07/26/2020', '07/26/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Check Out :\r\n07/26/2020\r\n\r\nTotal length of stay :\r', '2020-07-26 20:59:57'),
(0, 68, '11236', '1', '0', '1', '07/26/2020', '07/26/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Check Out :\r\n07/26/2020\r\n\r\nTotal length of stay :\r', '2020-07-26 21:00:11'),
(0, 69, '22605', '1', '0', '1', '07/26/2020', '07/26/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Check Out :\r\n07/26/2020\r\n\r\nTotal length of stay :\r', '2020-07-26 21:00:39'),
(0, 70, '20782', '5', '4', '9', '07/31/2020', '08/13/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n07/31/2020\r\n\r\nC', '2020-07-31 14:48:12'),
(0, 71, '29336', '1', '0', '1', '07/31/2020', '07/31/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n07/31/2020\r\n\r\nC', '2020-07-31 19:29:06'),
(0, 72, '23002', '1', '0', '1', '07/31/2020', '07/31/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n07/31/2020\r\n\r\nC', '2020-07-31 19:35:43'),
(0, 73, '24075', '1', '0', '1', '07/31/2020', '07/31/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n07/31/2020\r\n\r\nC', '2020-07-31 19:36:32'),
(0, 74, '20014', '1', '0', '1', '07/31/2020', '07/31/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n07/31/2020\r\n\r\nC', '2020-07-31 19:36:56'),
(0, 75, '23988', '1', '0', '1', '07/31/2020', '07/31/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', '12345678wertyui', '2020-07-31 19:39:20'),
(0, 76, '32207', '1', '0', '1', '07/31/2020', '07/31/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', '12345678wertyui', '2020-07-31 19:44:57'),
(0, 77, '1750', '1', '0', '1', '07/31/2020', '07/31/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', '', '2020-07-31 20:05:53'),
(0, 78, '12706', '1', '0', '1', '08/01/2020', '08/22/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n08/01/2020\r\n\r\nC', '2020-08-01 19:24:14'),
(0, 79, '11827', '1', '0', '1', '08/01/2020', '08/22/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n08/01/2020\r\n\r\nC', '2020-08-01 19:26:46'),
(0, 80, '2817', '1', '0', '1', '08/01/2020', '08/22/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n08/01/2020\r\n\r\nC', '2020-08-01 19:27:03'),
(0, 81, '26096', '1', '0', '1', '08/01/2020', '08/22/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n08/01/2020\r\n\r\nC', '2020-08-01 19:28:51'),
(0, 82, '13372', '1', '0', '1', '08/02/2020', '08/27/2020', 'Moaref Billah', 'moarefbillah@gmail.c', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'RESERVATION DETAILS\r\n\r\nCheck In :\r\n08/02/2020\r\n\r\nC', '2020-08-02 15:00:45'),
(0, 83, '10055', '1', '0', '1', '08/10/2020', '08/10/2020', 'Moaref Billah', 'moarefbillah@gmail.com', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', '234567890sdfghjk', '2020-08-10 09:04:35'),
(0, 84, '11555', '2', '0', '2', '08/11/2020', '08/12/2020', 'Moaref Billah', 'moarefbillah@gmail.com', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Hot water. No smoking room. Quite a room', '2020-08-11 10:12:20'),
(0, 85, '15020', '2', '0', '2', '08/12/2020', '08/13/2020', 'Moaref Billah', 'moarefbillah@gmail.com', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'Hot water.\r\nQuite  room\r\nNo smoking room\r\n', '2020-08-12 09:31:37'),
(0, 86, '261302252', '4', '0', '4', '01/18/2021', '01/22/2021', 'Moaref Billah', 'minar@gmail.com', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'jkljlkj', '2021-01-18 21:31:05'),
(0, 87, '398213040', '4', '0', '4', '01/18/2021', '01/22/2021', 'Moaref Billah', 'minar@gmail.com', 'Ramdi, Ward no- 6, Bhuiyanhat, Kabirhat, Noakhali', 'Noakhali', 'Bangladesh', 'jkljlkj', '2021-01-18 21:34:27');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `r_id` int(11) NOT NULL,
  `r_type` varchar(50) NOT NULL,
  `r_rent` int(20) NOT NULL,
  `r_pic` varchar(50) NOT NULL,
  `r_details` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`r_id`, `r_type`, `r_rent`, `r_pic`, `r_details`, `datetime`) VALUES
(1, 'Single Queenbed Room', 500000, '2020-07-25-07-59.jpg', '<h2 style=\"font-style:italic;\">Include with room</h2>\n\n<p>1. Breakfast</p>\n\n<p>2. Wifi free</p>\n', '2020-07-25 11:23:10'),
(4, 'Single Kingbed Room', 4000, '2020-07-25-07-42.jpg', '<h2 style=\"font-style:italic;\">Include with room</h2>\r\n\r\n<p>1. Breakfast</p>\r\n\r\n<p>2. Wifi free</p>', '2020-07-25 11:27:42'),
(5, 'Super Deluxe Twin', 6000, '2020-07-25-07-08.jpg', '<h2 style=\"font-style:italic;\">Include with room</h2>\r\n\r\n<p>1. Breakfast</p>\r\n\r\n<p>2. Wifi free</p>', '2020-07-25 11:28:08'),
(6, 'Family Room', 7000, '2020-07-25-07-26.jpg', '<h2 style=\"font-style:italic;\">Include with room</h2>\r\n\r\n<p>1. Breakfast</p>\r\n\r\n<p>2. Wifi free</p>', '2020-07-25 11:28:26'),
(7, 'Couple Bed Room', 5500, '2020-07-25-07-47.jpg', '<h2 style=\"font-style:italic;\">Include with room</h2>\r\n\r\n<p>1. Breakfast</p>\r\n\r\n<p>2. Wifi free</p>', '2020-07-25 11:28:47'),
(8, 'Join Room', 4500, '2020-07-25-07-13.jpg', '<h2 style=\"font-style:italic;\">Include with room</h2>\r\n\r\n<p>1. Breakfast</p>\r\n\r\n<p>2. Wifi free</p>', '2020-07-25 11:29:13'),
(9, 'Single Non A/C room', 7500, '2020-07-25-07-50.jpg', '<h2 style=\"font-style:italic;\">Include with room</h2>\r\n\r\n<p>1. Breakfast</p>\r\n\r\n<p>2. Wifi free</p>', '2020-07-25 11:29:50'),
(10, 'Family Room', 3500, '2020-07-31-07-21.jpg', '<p>40 m&sup2;&nbsp;City view&nbsp;Air conditioning&nbsp;Ensuite bathroom&nbsp;Flat-screen TV&nbsp;So', '2020-07-31 14:44:21'),
(11, 'Family Room', 50000, '2020-08-11-08-04.jpeg', '<p>detailes</p>\r\n', '2020-08-11 10:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `roll` int(6) NOT NULL,
  `class` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `pcontact` varchar(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `name`, `roll`, `class`, `city`, `pcontact`, `photo`, `datetime`) VALUES
(41, 'Ajharul Islam', 444433, '1st', 'House#15, Ward#', '01944444444', '4444332020-06-06-06-58.jpg', '2020-06-06 16:17:58'),
(43, 'Majhar Rakib', 444439, '2nd', 'House#1eww', '01812888858', '4444392020-06-06-06-53.jpg', '2020-06-06 16:18:53'),
(44, 'kutub ussin', 443322, '4th', 'Dhaka, Banglade', '01797159600', '4433222020-06-06-06-28.jpg', '2020-06-06 16:19:28'),
(45, 'Shirin Akter', 443342, '2nd', 'Dhaka, Banglade', '01797159600', '4433422020-06-06-06-51.jpg', '2020-06-06 16:19:51'),
(47, 'utfol kumar das', 443353, '2nd', 'Dhaka, Banglade', '01814270541', '4433532020-06-06-06-32.jpg', '2020-06-06 16:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(50) NOT NULL,
  `t_designation` int(50) NOT NULL,
  `t_comment` int(100) NOT NULL,
  `t_pic` int(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `status` varchar(12) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `photo`, `status`, `datetime`) VALUES
(10, 'Ajharul Islam', 'dedke@gmail.com', 'mk', 'f5ad8d079e09589dc3efc0d4cdfd5106be2205e1', 'sdsdq2323ee23.jpg', 'active', '2020-06-08 11:49:10'),
(14, 'Majhar Rakib', 'ded222ke@gmail.com', 'yescablessdwwewe', '618e02fc80fa3a0bd41d65f5b54a11fc50426d12', 'yescablessdwwewe.jpg', 'inactive', '2020-06-08 11:49:10'),
(15, 'Ajharul Islam', 'sdsdsdsdsdsd@gmail.com', 'mdrashed38', '618e02fc80fa3a0bd41d65f5b54a11fc50426d12', 'mdrashed38.jpg', 'inactive', '2020-06-08 11:49:10'),
(16, 'Ajharul Islam', 'rajrashed42s1@gmail.com', 'yescablessasasas', '618e02fc80fa3a0bd41d65f5b54a11fc50426d12', 'yescablessasasas.jpg', 'inactive', '2020-06-08 11:49:10'),
(17, 'Ajharul Islam', 'rajrashed42sdsd1@gmail.com', 'yescables133232323', '618e02fc80fa3a0bd41d65f5b54a11fc50426d12', 'yescables133232323.jpg', 'inactive', '2020-06-08 11:49:10'),
(18, 'Ajharul Islam', 'djforhad@gmail.com', 'rasheddd', '618e02fc80fa3a0bd41d65f5b54a11fc50426d12', 'rasheddd21-06-20-06-2020steo.jpg', 'active', '2020-06-08 11:49:10'),
(19, 'kus', 'kus@gmail.com', 'kus12345', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', 'kus12345.jpg', 'inactive', '2020-06-08 11:49:10'),
(20, 'Ajharul Islam', 'janatakumar@gmail.com', 'kumarkosl', '618e02fc80fa3a0bd41d65f5b54a11fc50426d12', 'kumarkosl.jpg', 'inactive', '2020-06-08 11:49:10'),
(21, 'Monir Hossain', 'monir@gmail.com', 'monirhossain', '0c2a4f0cf0e4a62c9476b0834b4738a4aa9df515', 'monirhossain.jpg', 'active', '2020-07-23 09:45:08'),
(22, 'Moaref Billah', 'moarefbillah@gmail.com', 'minarkhan', 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', 'minarkhan.jpg', 'active', '2020-07-23 10:43:13'),
(23, 'Moaref Billah', 'kkkkkkkkk@gmail.com', 'minar550', '56186424f01ebf8c5fc4fd5cbadfd1cee7bd84c6', 'minar550.jpg', 'active', '2020-08-11 03:02:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `p_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
