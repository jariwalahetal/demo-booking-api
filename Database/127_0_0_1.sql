-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2018 at 02:31 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookingsystem`
--
CREATE DATABASE IF NOT EXISTS `bookingsystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookingsystem`;
--
-- Database: `mywebsite`
--
CREATE DATABASE IF NOT EXISTS `mywebsite` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mywebsite`;

-- --------------------------------------------------------

--
-- Table structure for table `ads_categories`
--

CREATE TABLE `ads_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_categories`
--

INSERT INTO `ads_categories` (`id`, `name`, `image`, `created_id`, `updated_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ads    ', '66940.jpg', 1, 1, 1, 0, '2017-07-19 13:04:23', '2017-07-26 06:28:47', '2017-07-26 06:28:47'),
(2, 'ads 2', '31114.png', 1, 1, 1, 0, '2017-07-19 13:04:32', '2017-07-20 04:05:59', '2017-07-20 04:05:59'),
(3, 'new one', '98185.jpg', 1, 1, 1, 0, '2017-07-21 02:19:19', '2017-08-25 20:40:44', '2017-08-25 20:40:44'),
(4, 'new one', '35104.jpg', 1, 0, 1, 0, '2017-07-21 07:57:04', '2017-07-24 01:52:56', '2017-07-24 01:52:56'),
(5, 'new one', '78274.jpg', 1, 0, 1, 0, '2017-07-24 01:56:22', '2017-07-24 01:56:30', '2017-07-24 01:56:30'),
(6, 'Local Ads', '45703.png', 1, 0, 1, 0, '2017-08-25 20:41:15', '2017-09-19 04:47:04', '2017-09-19 04:47:04'),
(7, 'Virutal Ads', '39583.png', 1, 0, 1, 0, '2017-08-25 20:41:36', '2017-09-19 04:47:06', '2017-09-19 04:47:06'),
(8, 'Activities', '23900.png', 1, 0, 1, 0, '2017-09-19 04:47:47', '2017-09-19 04:47:47', NULL),
(9, 'Automotive', '64172.png', 1, 0, 1, 0, '2017-09-19 04:48:00', '2017-09-19 04:48:00', NULL),
(10, 'Beauty', '61956.png', 1, 0, 1, 0, '2017-09-19 04:48:17', '2017-09-19 04:48:17', NULL),
(11, 'Charities', '31748.png', 1, 0, 1, 0, '2017-09-19 04:48:28', '2017-09-19 04:48:28', NULL),
(12, 'Fashion', '24968.png', 1, 0, 1, 0, '2017-09-19 04:48:42', '2017-09-19 04:48:42', NULL),
(13, 'Food and Beverage', '34023.png', 1, 0, 1, 0, '2017-09-19 04:49:02', '2017-09-19 04:49:02', NULL),
(14, 'Home decor', '46614.png', 1, 0, 1, 0, '2017-09-19 04:49:18', '2017-09-19 04:49:18', NULL),
(15, 'Insurance', '47822.png', 1, 0, 1, 0, '2017-09-19 04:49:31', '2017-09-19 04:49:31', NULL),
(16, 'Leisure', '91695.png', 1, 0, 1, 0, '2017-09-19 04:49:45', '2017-09-19 04:49:45', NULL),
(17, 'Medical', '39125.png', 1, 0, 1, 0, '2017-09-19 04:49:59', '2017-09-19 04:49:59', NULL),
(18, 'New Ads', '27292.png', 1, 0, 1, 0, '2017-09-19 04:50:13', '2017-09-19 04:50:13', NULL),
(19, 'Other', '82186.png', 1, 0, 1, 0, '2017-09-19 04:50:25', '2017-09-19 04:50:25', NULL),
(20, 'Public Services', '25841.png', 1, 0, 1, 0, '2017-09-19 04:50:40', '2017-09-19 04:50:40', NULL),
(21, 'Restaurants', '56744.png', 1, 0, 1, 0, '2017-09-19 04:51:30', '2017-09-19 04:51:30', NULL),
(22, 'Retail', '36138.png', 1, 0, 1, 0, '2017-09-19 04:51:42', '2017-09-19 04:51:42', NULL),
(23, 'Sports', '71652.png', 1, 0, 1, 0, '2017-09-19 04:51:57', '2017-09-19 04:51:57', NULL),
(24, 'Technology', '25284.png', 1, 0, 1, 0, '2017-09-19 04:52:13', '2017-09-19 04:52:13', NULL),
(25, 'Travel', '71485.png', 1, 0, 1, 0, '2017-09-19 04:52:24', '2017-09-19 04:52:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_masters`
--

CREATE TABLE `ads_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `video_url` text COLLATE utf8_unicode_ci NOT NULL,
  `video_type` enum('embed','uploaded') COLLATE utf8_unicode_ci NOT NULL,
  `ads_credit` double NOT NULL,
  `ads_category_id` int(11) NOT NULL,
  `ad_views` int(10) UNSIGNED NOT NULL,
  `is_spotlight` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ads_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_masters`
--

INSERT INTO `ads_masters` (`id`, `user_id`, `description`, `video_url`, `video_type`, `ads_credit`, `ads_category_id`, `ad_views`, `is_spotlight`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`, `ads_title`) VALUES
(1, 1, 'This is a test demo', 'http://lufuu.net/public/uploads/adsvideo/85551-1509379045.mp4', 'uploaded', 50, 8, 0, 0, 0, 0, '2017-10-30 22:57:25', '2017-10-30 23:30:52', NULL, 'Activities Ad1');

-- --------------------------------------------------------

--
-- Table structure for table `ads_surveys`
--

CREATE TABLE `ads_surveys` (
  `id` int(10) UNSIGNED NOT NULL,
  `ads_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_surveys`
--

INSERT INTO `ads_surveys` (`id`, `ads_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2017-10-30 22:57:25', '2017-10-30 22:57:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charity_cat_rels`
--

CREATE TABLE `charity_cat_rels` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `charity_cat_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `charity_cat_rels`
--

INSERT INTO `charity_cat_rels` (`id`, `user_id`, `charity_cat_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 17, 1, 1, 0, '2017-08-26 02:56:44', '2017-08-26 02:56:44'),
(2, 18, 1, 1, 0, '2017-08-26 03:04:04', '2017-08-26 03:04:04'),
(3, 19, 1, 1, 0, '2017-08-26 03:08:16', '2017-08-26 03:08:16'),
(4, 20, 1, 1, 0, '2017-08-26 03:11:44', '2017-08-26 03:11:44'),
(5, 22, 1, 1, 0, '2017-08-27 01:45:09', '2017-08-27 01:45:09'),
(6, 23, 1, 1, 0, '2017-08-27 01:46:22', '2017-08-27 01:46:22'),
(7, 26, 1, 1, 0, '2017-08-27 14:57:53', '2017-08-27 14:57:53'),
(8, 27, 1, 1, 0, '2017-08-27 15:59:12', '2017-08-27 15:59:12'),
(9, 29, 1, 1, 0, '2017-08-27 16:49:15', '2017-08-27 16:49:15'),
(10, 35, 1, 1, 0, '2017-08-28 23:57:44', '2017-08-28 23:57:44'),
(11, 37, 1, 1, 0, '2017-08-29 08:51:22', '2017-08-29 08:51:22'),
(12, 40, 1, 1, 0, '2017-08-29 09:04:22', '2017-08-29 09:04:22'),
(13, 43, 1, 1, 0, '2017-08-29 10:28:24', '2017-08-29 10:28:24'),
(14, 44, 1, 1, 0, '2017-08-29 21:24:24', '2017-08-29 21:24:24'),
(15, 45, 1, 1, 0, '2017-08-29 23:21:37', '2017-08-29 23:21:37'),
(16, 47, 1, 1, 0, '2017-08-30 10:52:46', '2017-08-30 10:52:46'),
(17, 53, 1, 1, 0, '2017-09-01 16:33:31', '2017-09-01 16:33:31'),
(18, 56, 1, 1, 0, '2017-09-03 15:26:13', '2017-09-03 15:26:13'),
(19, 59, 1, 1, 0, '2017-09-05 21:39:51', '2017-09-05 21:39:51'),
(20, 62, 1, 1, 0, '2017-09-12 09:14:00', '2017-09-12 09:14:00'),
(21, 64, 1, 1, 0, '2017-09-12 12:08:55', '2017-09-12 12:08:55'),
(23, 72, 1, 1, 0, '2017-09-23 18:53:15', '2017-09-23 18:53:15'),
(25, 77, 8, 1, 0, '2017-10-16 15:36:58', '2017-10-16 15:36:58'),
(26, 77, 9, 1, 0, '2017-10-16 15:36:58', '2017-10-16 15:36:58'),
(27, 78, 9, 1, 0, '2017-10-26 00:43:06', '2017-10-26 00:43:06'),
(28, 78, 11, 1, 0, '2017-10-26 00:43:06', '2017-10-26 00:43:06'),
(29, 78, 14, 1, 0, '2017-10-26 00:43:06', '2017-10-26 00:43:06'),
(30, 78, 16, 1, 0, '2017-10-26 00:43:06', '2017-10-26 00:43:06'),
(31, 80, 9, 1, 0, '2017-10-26 22:49:18', '2017-10-26 22:49:18'),
(32, 80, 10, 1, 0, '2017-10-26 22:49:18', '2017-10-26 22:49:18'),
(33, 80, 11, 1, 0, '2017-10-26 22:49:18', '2017-10-26 22:49:18'),
(36, 81, 6, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(37, 81, 7, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(38, 81, 8, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(39, 81, 9, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(40, 81, 10, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(41, 81, 11, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(42, 81, 12, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(43, 81, 13, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(44, 81, 14, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(45, 81, 15, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(46, 81, 16, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(47, 81, 17, 1, 0, '2017-10-27 02:54:24', '2017-10-27 02:54:24'),
(58, 71, 9, 1, 0, '2017-10-29 01:00:40', '2017-10-29 01:00:40'),
(59, 71, 10, 1, 0, '2017-10-29 01:00:40', '2017-10-29 01:00:40'),
(60, 71, 11, 1, 0, '2017-10-29 01:00:40', '2017-10-29 01:00:40'),
(61, 73, 10, 1, 0, '2017-11-01 19:51:22', '2017-11-01 19:51:22'),
(62, 73, 11, 1, 0, '2017-11-01 19:51:22', '2017-11-01 19:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `charity_categories`
--

CREATE TABLE `charity_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `charity_categories`
--

INSERT INTO `charity_categories` (`id`, `name`, `image`, `created_id`, `updated_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'New charity', '24942.jpg', 1, 1, 1, 0, '2017-07-19 07:04:22', '2017-08-25 20:22:44', '2017-08-25 20:22:44'),
(2, 'This New Category', '66967.jpg', 1, 1, 1, 0, '2017-07-19 07:17:39', '2017-07-20 04:00:22', '2017-07-20 04:00:22'),
(3, 'new one', '71313.jpg', 1, 1, 1, 0, '2017-07-21 07:44:58', '2017-07-24 01:35:19', '2017-07-24 01:35:19'),
(4, 'This New Category', '17881.jpg', 1, 1, 1, 0, '2017-07-24 01:35:31', '2017-07-24 01:55:10', '2017-07-24 01:55:10'),
(5, 'This New Category', '27302.jpg', 1, 1, 1, 0, '2017-07-24 01:54:20', '2017-08-25 20:22:42', '2017-08-25 20:22:42'),
(6, 'Animal', '42866.png', 1, 0, 1, 0, '2017-08-25 20:23:50', '2017-08-25 20:23:50', NULL),
(7, 'Arts, Cultureand humanities', '63756.png', 1, 0, 1, 0, '2017-08-25 20:24:36', '2017-08-25 20:24:36', NULL),
(8, 'Children', '40773.png', 1, 0, 1, 0, '2017-08-25 20:24:45', '2017-08-25 20:24:45', NULL),
(9, 'Crime Prevention', '94837.png', 1, 0, 1, 0, '2017-08-25 20:25:07', '2017-08-25 20:25:07', NULL),
(10, 'Education', '78193.png', 1, 0, 1, 0, '2017-08-25 20:25:15', '2017-08-25 20:25:15', NULL),
(11, 'Environment', '93293.png', 1, 0, 1, 0, '2017-08-25 20:25:25', '2017-08-25 20:25:25', NULL),
(12, 'Health', '97898.png', 1, 0, 1, 0, '2017-08-25 20:25:44', '2017-08-25 20:25:44', NULL),
(13, 'Homelessness & Housing', '16138.png', 1, 0, 1, 0, '2017-08-25 20:26:03', '2017-08-25 20:26:03', NULL),
(14, 'Human rights and Services', '27630.png', 1, 0, 1, 0, '2017-08-25 20:26:20', '2017-08-25 20:26:20', NULL),
(15, 'Hunger', '27871.png', 1, 0, 1, 0, '2017-08-25 20:26:29', '2017-08-25 20:26:29', NULL),
(16, 'Internatinal Relief and Development', '36911.png', 1, 0, 1, 0, '2017-08-25 20:27:06', '2017-08-25 20:27:06', NULL),
(17, 'Religion', '79370.png', 1, 0, 1, 0, '2017-08-25 20:27:19', '2017-08-25 20:27:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charity_details`
--

CREATE TABLE `charity_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_founded` int(11) DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bridge_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `charity_details`
--

INSERT INTO `charity_details` (`id`, `user_id`, `contact_number`, `year_founded`, `bio`, `registration_number`, `bridge_number`, `country_id`, `province_id`, `city`, `profile_img`, `created_at`, `updated_at`) VALUES
(1, 9, ' 9198989878998', 2000, 'sadasdfasdfasdfasdfasdweacvcdavaerasdrfasef', 'asdf', NULL, 2, 1, 'AMERICA', '', '2017-08-20 07:25:24', '2017-08-20 07:25:24'),
(4, 12, '+9198989878998', 2000, 'sadasdfasdfasdfasdfasdweacvcdavaerasdrfasef', 'asdf', 'asdfasdfasdf', 2, 1, 'AMERICA', '', '2017-08-20 07:38:44', '2017-08-20 07:38:44'),
(5, 17, '123456789', 1989, 'Please helpPlease helpPlease helpPlease helpPlease helpPlease helpPlease helpPlease helpPlease helpPlease helpPlease helpPlease help', '123456789', '123456789', 2, 61, 'Sas', '', '2017-08-26 02:56:44', '2017-08-26 02:56:44'),
(6, 18, '1234567890', 1989, 'qwqwefiqegnqergw nogqnrg qnrg qgnru qnrg qilrgn qrg ilqrg ilqrbg qrg iqrgb qirgbh qhgrbqr jkgb qrgbqirng qgbliqrbg qlergbhqer gbqrg q', '123456789', '123456789', 2, 52, 'Alb', '', '2017-08-26 03:04:04', '2017-08-26 03:04:04'),
(7, 19, '1234567890', 1989, 'regrwlegnj wgrn wrgnwkrgn wilrgn wnh wrkthn klwnth wnth wlnth klwnth wnhtlwn khn wlhtn lwrn wlnb l', '123456789', '123456789', 2, 52, 'Alb', '', '2017-08-26 03:08:16', '2017-08-26 03:08:16'),
(8, 20, '1234567890', 1989, 'n grn grn ng lrqg wlnhwrtn rwhjt wrtnhwrktjh wrnth wrnht wrnh wrknh wthwnhwklrn wr nltret,kb ', '329013501345-8174350', '34917351947513457', 2, 52, 'alb', 'http://lufuu.net/lufu_admin/public/uploads/profile_img/20-38636-1503691909.', '2017-08-26 03:11:44', '2017-08-26 03:11:50'),
(9, 22, '1234567890', 1929, 'wqeqefqeqe qrgu qgrqrug qrgh qrg lqrgqhugr qhrg qhegr lqigrh qlergh qlergiqergh qergh qelrgihq ergueqr gqhegr qelier', 'rerrerer', 'rretrrttr', 2, 52, 'qwertt', '', '2017-08-27 01:45:09', '2017-08-27 01:45:09'),
(10, 23, '1234567890', 1929, 'regergwe ruwk nlw wer glwehergbhe rgbkwejhrg webekrg kejrg ekjrg bwekrgh ergkekrghwegrkhbg k', 'ergwergwergwer', 'rwhgwrtrthwrth', 2, 52, 'rgwgwrgregwregwreg', '', '2017-08-27 01:46:22', '2017-08-27 01:46:22'),
(11, 26, '12345678990', 1929, 'erg wgriu wrgh wrigh wihg wrth wrti t wirh wughru wiht wht wlthiw htu wth wrihwurr wtwrhuit thrwhru', '12345678990', '1234567890', 2, 52, 'Alba', '', '2017-08-27 14:57:53', '2017-08-27 14:57:53'),
(12, 27, '122333333333', 1970, '124gl k4g kjgwrug lwkrg wkrjg nwrkl wrhj whkljwnkw wlkrht wrjn wlkrhtn wrhnwrljnwrnwkrnwthkl wnwlht', 'ergergerg', 'regewrgerg', 2, 52, '1234444444444', '', '2017-08-27 15:59:12', '2017-08-27 15:59:12'),
(13, 29, '11122445556', 1992, 'yyyhhhhhttffjjffrghjjj ghkkkjjjhhhhhhhhyhhy ghghhhhhhhhhhhh', 'qqqwwerttttty', 'rrrgbbhhhjjj', 2, 59, 'qwerty', 'http://lufuu.net/lufu_admin/public/uploads/profile_img/29-20901-1503827359.', '2017-08-27 16:49:15', '2017-08-27 16:49:19'),
(14, 35, '1234567890', 2012, 'erewrg wrg wrg wrg werg wrg wrg wrg wg wrg wegr werg werg wer gwe gwe gw gw gwerg werg werg werg we gwgwer wg g ewe g', '123454556666666', '12222222222222', 2, 52, '1233333', '', '2017-08-28 23:57:44', '2017-08-28 23:57:44'),
(15, 37, '7048588392', 2016, 'no comment nkjijfi.  nijijkjojo. nojojojojojn jojdojofjejfoekjfkejfoef. njojojojoj', '123456', '123456', 1, 52, 'New York', '', '2017-08-29 08:51:22', '2017-08-29 08:51:22'),
(16, 40, '7048588392', 2015, 'milqn gorakhia hjkkmbshjsjsksbbagahnahajanaja', 'vabannnaa', '123456', 2, 53, 'fhna', '', '2017-08-29 09:04:22', '2017-08-29 09:04:22'),
(17, 43, '5678978787', 2012, 'test dhebe hsheb hebehe hejeb', 'test', 'hesheb', 2, 60, 'Montreal', '', '2017-08-29 10:28:24', '2017-08-29 10:28:24'),
(18, 44, '62827382929', 2015, 'nxbdbdb hshdh hahah hshsbd', 'hshshsn sjens', 'jdjdb', 1, 31, 'jshsbs', 'http://lufuu.net/lufu_admin/public/uploads/profile_img/44-35109-1504016665.', '2017-08-29 21:24:24', '2017-08-29 21:24:25'),
(19, 45, '1234567890', 2016, 'Ref week werg werg werg werg werg who wer werg e.g. Werg we\'ve grwergwergwegwergwegewrgewrgergrgw', '123456789', 'ewrwergwerg', 2, 52, '123445555111', '', '2017-08-29 23:21:37', '2017-08-29 23:21:37'),
(20, 47, '5145724828', 2015, 'Test test test test test test ', '567994336699', 'jshsb jshsb', 2, 60, 'Montreal', '', '2017-08-30 10:52:46', '2017-08-30 10:52:46'),
(21, 53, '+1-xxx-xxx-xxx', 1986, 'Longdsfsd ds fds fsdfsd fsdfdsfdsfdsfs text can come here', 'aaaaa', 'ABCD', 1, 2, 'Montreal', '', '2017-09-01 16:33:31', '2017-09-01 16:33:31'),
(22, 56, '1234567890', 2010, 'Erg werg erg werg rg werg we wer he erg ergewrg rg erg whew rg wegr werg werg grew erg wergwegr erg werg ', '12345678', '1234567', 2, 52, 'AB', '', '2017-09-03 15:26:13', '2017-09-03 15:26:13'),
(23, 59, '7048588392', 2001, 'Hi bankroll hi. Bijkjkjo. Hijojojojoj. Hojojohohojkbgdrdgcrseatguoyijoiukng. Drench futile,no hdtdtdhftwrsx vgjbknhknm mumbling fyfuhknkjojojhkn. Bihonkjojojoyufyddjbknjctxg hihinknknkn. Hihinknknkn binknknkN. Khkjkhknknnknkn. BinknknkN hinknknknkjo hinknknknkjo trudging\n BinknknkN. Known. Known', '7048588392', '123456', 2, 53, 'surat', '', '2017-09-05 21:39:51', '2017-09-05 21:39:51'),
(24, 62, '7048588392', 2015, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ips', '12345678', '12345678', 1, 52, 'surat', 'http://lufuu.net/lufu_admin/public/uploads/profile_img/62-45486-1505182443.', '2017-09-12 09:14:00', '2017-09-12 09:14:03'),
(25, 64, '5145724828', 2012, 'Test', '548964375489', 'test', 2, 60, 'Montreal', '', '2017-09-12 12:08:55', '2017-09-12 12:08:55'),
(26, 71, '1234567890', 1995, 'Gwerg negkqjegnq ergjh rkgnq k now rgjnq engine qnrg qrgjne John qkrgjn wergn when ehh reef wergn qjgrnrrqerg qegqeg', '23453234523452345234523', '1234567890', 2, 52, 'Ahmedabad', 'http://lufuu.net/lufu_admin/public/uploads/profile_img/71-80249-1506147496.jpeg', '2017-09-23 13:18:14', '2017-10-26 22:56:56'),
(27, 72, '1234567890', 2000, 'Quick question for the kids to go home to get my car ready to get home from the house I have a couple minutes of ', '1234567890', 'qwertyuiop', 2, 52, 'qwerty', '', '2017-09-23 18:53:15', '2017-09-23 18:53:15'),
(28, 73, '5145724828', 2012, 'This is long bio content for charity', '51427845698', '527663963783683', 2, 52, 'Montreal', 'http://lufuu.net/public/uploads/profile_img/73-82719-1509540683.jpeg', '2017-09-24 06:54:03', '2017-11-01 19:51:23'),
(29, 77, '+912424235489', 2016, 'asdfasdfasdfasdf', '4567a8fsd68sd4f5sd4', '', 1, 1, 'America', '', '2017-10-16 15:36:58', '2017-10-16 15:36:58'),
(30, 78, '1234567890', 2014, '12121212	', '1234567890', '1234567890', 2, 52, 'qwerty', '', '2017-10-26 00:43:06', '2017-10-26 00:43:06'),
(31, 80, '1234567890', 2009, '1234rv34t g ', '1234567890', '1234567890', 2, 52, 'Qwerty', '', '2017-10-26 22:49:18', '2017-10-26 22:49:18'),
(32, 81, '5145724828', 2014, 'Test', '5148756458', 'testing', 2, 60, 'Montreal', '', '2017-10-27 02:54:24', '2017-10-27 02:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `charity_validations`
--

CREATE TABLE `charity_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `countries_id` int(10) UNSIGNED NOT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validations` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `charity_validations`
--

INSERT INTO `charity_validations` (`id`, `countries_id`, `field_name`, `validations`, `label`, `created_at`, `updated_at`) VALUES
(1, 1, 'RegistrationNumber', 'required', 'EIN Number', '2017-08-19 18:30:00', '2017-08-19 18:30:00'),
(2, 2, 'RegistrationNumber', 'required', 'Registration Number', '2017-08-19 18:30:00', '2017-08-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `last_activity` datetime NOT NULL,
  `no_of_member` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `last_activity`, `no_of_member`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2017-09-27 18:33:36', 2, '2017-09-28 01:33:36', '2017-09-28 01:33:36', '0000-00-00 00:00:00'),
(2, '2017-11-01 19:08:21', 2, '2017-11-02 02:08:21', '2017-11-02 02:08:21', '0000-00-00 00:00:00'),
(3, '2017-11-01 19:37:29', 2, '2017-11-02 02:37:29', '2017-11-02 02:37:29', '0000-00-00 00:00:00'),
(4, '2017-11-01 19:39:01', 2, '2017-11-02 02:39:01', '2017-11-02 02:39:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'United States', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(2, 'Canada', '2017-08-18 18:30:00', '2017-08-18 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `logged_devices`
--

CREATE TABLE `logged_devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `device_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logged_devices`
--

INSERT INTO `logged_devices` (`id`, `user_id`, `device_type`, `device_token`, `created_at`, `updated_at`) VALUES
(6, 12, 'Android', 'asdfa68v18a83er416aef', '2017-08-20 07:38:44', '2017-08-20 07:38:44'),
(8, 9, 'iOS', '5454684asdf4a6e46a4sef54a6sef', '2017-08-20 08:54:37', '2017-08-20 08:56:42'),
(59, 53, 'iOS', 'XXXXXXXXXXXXXXX', '2017-09-01 16:33:31', '2017-09-01 16:33:31'),
(80, 5, 'iOS', '12345646a8sd4f68a4sd646as4df8asdf546as8e', '2017-09-06 04:20:35', '2017-10-10 23:04:01'),
(99, 13, 'iOS', 'sdfasdf', '2017-09-16 21:22:24', '2017-09-20 02:21:48'),
(198, 77, 'Android', 'sadfasdaefadfga', '2017-10-16 15:36:58', '2017-10-16 15:36:58'),
(252, 82, 'iOS', '123456', '2017-11-03 00:15:17', '2017-11-03 00:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(150) NOT NULL,
  `last_seen` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `conversation_id`, `user_id`, `user_role`, `last_seen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 'USER', '0000-00-00 00:00:00', '2017-09-28 01:33:36', '2017-09-28 01:33:36', '0000-00-00 00:00:00'),
(2, 1, 6, 'USER', '2017-09-27 19:02:01', '2017-09-28 01:33:36', '2017-09-28 02:02:01', '0000-00-00 00:00:00'),
(3, 2, 82, 'USER', '2017-11-02 17:54:55', '2017-11-02 02:08:21', '2017-11-03 00:54:55', '0000-00-00 00:00:00'),
(4, 2, 13, 'USER', '0000-00-00 00:00:00', '2017-11-02 02:08:21', '2017-11-02 02:08:21', '0000-00-00 00:00:00'),
(5, 3, 1, 'ADMIN', '0000-00-00 00:00:00', '2017-11-02 02:37:29', '2017-11-02 02:37:29', '0000-00-00 00:00:00'),
(6, 3, 5, 'USER', '0000-00-00 00:00:00', '2017-11-02 02:37:29', '2017-11-02 02:37:29', '0000-00-00 00:00:00'),
(7, 4, 5, 'USER', '0000-00-00 00:00:00', '2017-11-02 02:39:01', '2017-11-02 02:39:01', '0000-00-00 00:00:00'),
(8, 4, 66, 'USER', '0000-00-00 00:00:00', '2017-11-02 02:39:01', '2017-11-02 02:39:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender_role` varchar(150) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `receiver_role` varchar(150) NOT NULL,
  `msg_type` enum('text','media') NOT NULL,
  `description` text NOT NULL,
  `media_url` varchar(255) NOT NULL,
  `media_type` varchar(150) DEFAULT NULL,
  `receiver_seen` enum('0','1') NOT NULL,
  `seen_at` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `sender_id`, `sender_role`, `receiver_id`, `receiver_role`, `msg_type`, `description`, `media_url`, `media_type`, `receiver_seen`, `seen_at`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 'USER', 6, 'USER', 'text', 'Hello', '', NULL, '1', '2017-09-27 19:02:01', 1, '2017-09-28 01:33:36', '2017-09-28 02:02:01', '0000-00-00 00:00:00'),
(2, 1, 5, 'USER', 6, 'USER', 'text', 'Hello', '', NULL, '1', '2017-09-27 19:02:01', 1, '2017-09-28 01:52:25', '2017-09-28 02:02:01', '0000-00-00 00:00:00'),
(3, 1, 5, 'USER', 6, 'USER', 'text', 'Description', '', 'image', '0', '0000-00-00 00:00:00', 1, '2017-09-29 21:08:44', '2017-09-29 21:08:44', '0000-00-00 00:00:00'),
(4, 1, 5, 'USER', 6, 'USER', 'text', 'Description', '', 'image', '0', '0000-00-00 00:00:00', 1, '2017-09-29 21:11:10', '2017-09-29 21:11:10', '0000-00-00 00:00:00'),
(5, 1, 5, 'USER', 6, 'USER', 'text', 'Description', '', 'image', '0', '0000-00-00 00:00:00', 1, '2017-09-29 21:11:16', '2017-09-29 21:11:16', '0000-00-00 00:00:00'),
(6, 1, 5, 'USER', 6, 'USER', 'text', 'Description', '', 'image', '0', '0000-00-00 00:00:00', 1, '2017-09-29 21:11:17', '2017-09-29 21:11:17', '0000-00-00 00:00:00'),
(7, 1, 5, 'USER', 6, 'USER', 'text', 'Description', '', 'image', '0', '0000-00-00 00:00:00', 1, '2017-09-29 21:11:18', '2017-09-29 21:11:18', '0000-00-00 00:00:00'),
(8, 1, 5, 'USER', 6, 'USER', 'text', 'Description', '', 'image', '0', '0000-00-00 00:00:00', 1, '2017-09-29 21:11:43', '2017-09-29 21:11:43', '0000-00-00 00:00:00'),
(9, 2, 82, 'USER', 13, 'USER', 'text', '\"hi\"', '', '', '0', '0000-00-00 00:00:00', 1, '2017-11-02 02:38:57', '2017-11-02 02:38:57', '0000-00-00 00:00:00'),
(10, 4, 5, 'USER', 66, 'USER', 'text', 'Hello', '', '', '0', '0000-00-00 00:00:00', 1, '2017-11-02 02:39:01', '2017-11-02 02:39:01', '0000-00-00 00:00:00'),
(11, 2, 13, 'USER', 82, 'USER', 'text', '\"hello\"', '', '', '1', '2017-11-02 17:54:55', 1, '2017-11-03 00:54:23', '2017-11-03 00:54:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_07_17_160711_create_charity_categories_table', 2),
('2017_07_17_160652_create_user_details_table', 3),
('2017_07_17_160729_create_ads_categories_table', 4),
('2017_07_24_081724_add_columns_to_users_table', 5),
('2017_07_17_160920_create_ads_masters_table', 6),
('2017_07_17_160934_create_ads_surveys_table', 6),
('2017_07_17_160955_create_survey_questions_table', 6),
('2017_07_17_161008_create_survey_answers_table', 6),
('2017_07_25_094828_add_foreignkey_to_ads_survey', 7),
('2017_07_25_095246_add_foreignkey_to_survey_questions', 7),
('2017_07_25_095406_add_foreignkey_to_survey_answers', 7),
('2017_08_01_120919_add_field_to_ads_master', 8),
('2017_08_19_104154_create_countries_table', 9),
('2017_08_19_104623_create_provinces_table', 9),
('2017_08_19_105020_create_charity_validations_table', 9),
('2017_08_19_122611_add_fields_to_user_details_table', 10),
('2017_08_19_123117_create_logged_devices_table', 10),
('2017_08_19_123407_modify_fields_to_users_table', 10),
('2017_07_17_160743_create_charity_cat_rels_table', 11),
('2017_08_20_115629_create_chartiy_details_table', 11),
('2017_07_17_161329_create_user_followers_table', 12),
('2017_07_17_160807_create_user_posts_table', 13),
('2017_07_17_160822_create_post_media_table', 13),
('2017_07_17_160840_create_post_likes_table', 13),
('2017_07_17_160852_create_post_comments_table', 13),
('2017_08_27_102829_add_columns_to_user_followers', 14),
('2017_09_05_233233_add_columns_to_survey_questions_', 15),
('2017_09_05_233654_add_columns_to_ads_masters', 15),
('2017_09_05_233949_add_columns_to_user_posts_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity_user_id` int(10) UNSIGNED NOT NULL,
  `activity_user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activity_type` enum('post','comment','like','follow','survey','donate') COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `notify_user_id` int(10) UNSIGNED NOT NULL,
  `notify_user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `activity_user_id`, `activity_user_type`, `activity_type`, `reference_id`, `reference_type`, `description`, `notify_user_id`, `notify_user_type`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 13, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 13, 'USER', 1, '2017-10-04 00:54:47', '2017-11-01 00:45:14'),
(2, 55, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 55, 'USER', 1, '2017-10-04 01:13:28', '2017-10-30 23:25:32'),
(3, 25, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 25, 'USER', 0, '2017-10-04 01:27:03', '2017-10-04 01:27:03'),
(4, 25, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 25, 'USER', 0, '2017-10-04 01:29:24', '2017-10-04 01:29:24'),
(5, 25, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 25, 'USER', 0, '2017-10-04 01:31:26', '2017-10-04 01:31:26'),
(6, 25, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 25, 'USER', 0, '2017-10-04 01:39:06', '2017-10-04 01:39:06'),
(7, 5, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 5, 'USER', 1, '2017-10-04 01:39:49', '2017-10-29 17:35:14'),
(8, 5, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 5, 'USER', 1, '2017-10-04 01:44:00', '2017-10-29 17:35:14'),
(9, 25, 'USER', 'survey', 0, 'survey', '50 point credited to your account\"', 25, 'USER', 0, '2017-10-04 01:48:59', '2017-10-04 01:48:59'),
(10, 55, 'USER', 'survey', 0, 'survey', '50 point credited to your account\"', 55, 'USER', 1, '2017-10-05 02:27:52', '2017-10-30 23:25:32'),
(11, 70, 'USER', 'follow', 0, 'follow', 'Jean doe followed You', 66, 'USER', 0, '2017-10-05 08:11:02', '2017-10-05 08:11:02'),
(12, 65, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 65, 'USER', 1, '2017-10-05 23:02:03', '2017-11-15 08:59:09'),
(13, 65, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 65, 'USER', 1, '2017-10-05 23:02:31', '2017-11-15 08:59:09'),
(14, 70, 'USER', 'survey', 0, 'survey', '25 point credited to your account\"', 70, 'USER', 0, '2017-10-05 23:05:36', '2017-10-05 23:05:36'),
(15, 55, 'USER', 'follow', 0, 'follow', 'Parth Domadiya Foundation loved You', 9, 'CHARITY', 0, '2017-10-08 01:51:42', '2017-10-08 01:51:42'),
(16, 70, 'USER', 'follow', 0, 'follow', 'Dhaval new followed You', 5, 'USER', 1, '2017-10-08 02:17:24', '2017-10-29 17:35:14'),
(17, 70, 'USER', 'follow', 0, 'follow', 'Parth Domadiya Foundation loved You', 9, 'CHARITY', 0, '2017-10-08 02:21:03', '2017-10-08 02:21:03'),
(18, 70, 'USER', 'follow', 0, 'follow', 'Test Charity loved You', 18, 'CHARITY', 0, '2017-10-08 02:21:11', '2017-10-08 02:21:11'),
(19, 65, 'USER', 'follow', 0, 'follow', 'Health First loved You', 73, 'CHARITY', 1, '2017-10-08 10:21:57', '2017-11-01 20:50:32'),
(20, 73, 'CHARITY', 'follow', 0, 'follow', 'John doe followed You', 65, 'USER', 1, '2017-10-08 23:30:07', '2017-11-15 08:59:09'),
(21, 73, 'CHARITY', 'follow', 0, 'follow', 'Hetal jariwala followed You', 41, 'USER', 0, '2017-10-10 00:51:20', '2017-10-10 00:51:20'),
(22, 38, 'USER', 'follow', 0, 'follow', 'Dhaval new followed You', 5, 'USER', 1, '2017-10-10 01:02:18', '2017-10-29 17:35:14'),
(23, 13, 'USER', 'follow', 0, 'follow', 'Andhjan Mandal loved You', 71, 'CHARITY', 1, '2017-10-13 01:04:38', '2017-11-01 00:44:21'),
(24, 65, 'USER', 'follow', 0, 'follow', 'Jean doe followed You', 66, 'USER', 0, '2017-10-13 20:36:50', '2017-10-13 20:36:50'),
(25, 65, 'USER', 'follow', 0, 'follow', 'Amy Dow followed You', 67, 'USER', 0, '2017-10-13 20:36:51', '2017-10-13 20:36:51'),
(26, 73, 'CHARITY', 'follow', 0, 'follow', 'Andhjan Mandal followed You', 71, 'CHARITY', 1, '2017-10-16 03:20:09', '2017-11-01 00:44:21'),
(27, 65, 'USER', 'follow', 0, 'follow', 'Health First loved You', 73, 'CHARITY', 1, '2017-10-22 06:17:02', '2017-11-01 20:50:32'),
(28, 71, 'CHARITY', 'follow', 0, 'follow', 'D Charity Firm followed You', 77, 'CHARITY', 0, '2017-10-26 23:07:13', '2017-10-26 23:07:13'),
(29, 65, 'USER', 'follow', 0, 'follow', 'D Charity Firm loved You', 77, 'CHARITY', 0, '2017-10-27 02:50:47', '2017-10-27 02:50:47'),
(30, 65, 'USER', 'follow', 0, 'follow', 'BJP loved You', 78, 'CHARITY', 0, '2017-10-27 02:50:56', '2017-10-27 02:50:56'),
(31, 5, 'USER', 'post', 55, 'post', 'Dhaval new posted post', 13, 'USER', 1, '2017-10-27 06:32:20', '2017-11-01 00:45:14'),
(32, 5, 'USER', 'post', 55, 'post', 'Dhaval new posted post', 38, 'USER', 0, '2017-10-27 06:32:20', '2017-10-27 06:32:20'),
(33, 65, 'USER', 'follow', 0, 'follow', 'Children Help loved You', 81, 'CHARITY', 0, '2017-10-27 19:44:28', '2017-10-27 19:44:28'),
(34, 65, 'USER', 'post', 56, 'post', 'John doe1 posted post', 66, 'USER', 0, '2017-10-27 21:13:56', '2017-10-27 21:13:56'),
(35, 65, 'USER', 'post', 56, 'post', 'John doe1 posted post', 67, 'USER', 0, '2017-10-27 21:13:56', '2017-10-27 21:13:56'),
(36, 65, 'USER', 'post', 56, 'post', 'John doe1 posted post', 70, 'USER', 0, '2017-10-27 21:13:56', '2017-10-27 21:13:56'),
(37, 65, 'USER', 'post', 56, 'post', 'John doe1 posted post', 73, 'CHARITY', 1, '2017-10-27 21:13:56', '2017-11-01 20:50:32'),
(38, 65, 'USER', 'post', 56, 'post', 'John doe1 posted video', 66, 'USER', 0, '2017-10-27 21:13:59', '2017-10-27 21:13:59'),
(39, 65, 'USER', 'post', 56, 'post', 'John doe1 posted video', 67, 'USER', 0, '2017-10-27 21:13:59', '2017-10-27 21:13:59'),
(40, 65, 'USER', 'post', 56, 'post', 'John doe1 posted video', 70, 'USER', 0, '2017-10-27 21:13:59', '2017-10-27 21:13:59'),
(41, 65, 'USER', 'post', 56, 'post', 'John doe1 posted video', 73, 'CHARITY', 1, '2017-10-27 21:13:59', '2017-11-01 20:50:32'),
(42, 55, 'USER', 'like', 14, 'like', 'Ramos like your post', 55, 'USER', 1, '2017-10-28 12:17:46', '2017-10-30 23:25:32'),
(43, 83, 'USER', 'like', 59, 'like', 'Hetal Jariwala like your post', 83, 'USER', 1, '2017-10-30 01:55:32', '2017-11-03 02:16:10'),
(44, 83, 'USER', 'like', 59, 'like', 'Hetal Jariwala like your post', 83, 'USER', 1, '2017-10-30 01:58:55', '2017-11-03 02:16:10'),
(45, 83, 'USER', 'follow', 0, 'follow', 'John doe1 followed You', 65, 'USER', 1, '2017-10-30 21:46:41', '2017-11-15 08:59:09'),
(46, 83, 'USER', 'like', 56, 'like', 'Hetal Jariwala like your post', 65, 'USER', 1, '2017-10-30 21:48:07', '2017-11-15 08:59:09'),
(47, 83, 'USER', 'like', 49, 'like', 'Hetal Jariwala like your post', 65, 'USER', 1, '2017-10-30 21:48:09', '2017-11-15 08:59:06'),
(48, 83, 'USER', 'like', 48, 'like', 'Hetal Jariwala like your post', 65, 'USER', 1, '2017-10-30 21:48:10', '2017-11-15 08:59:06'),
(49, 83, 'USER', 'like', 47, 'like', 'Hetal Jariwala like your post', 65, 'USER', 1, '2017-10-30 21:48:12', '2017-11-15 08:59:06'),
(50, 83, 'USER', 'follow', 0, 'follow', 'Health First loved You', 73, 'CHARITY', 1, '2017-10-30 21:49:04', '2017-11-01 20:50:32'),
(51, 83, 'USER', 'comment', 25, 'comment', 'Hetal Jariwala comment on your post', 73, 'CHARITY', 1, '2017-10-30 21:49:31', '2017-11-01 20:50:32'),
(52, 55, 'USER', 'like', 1, 'like', 'Ramos like your post', 55, 'USER', 1, '2017-10-30 22:30:53', '2017-10-30 23:25:32'),
(53, 55, 'USER', 'like', 2, 'like', 'Ramos like your post', 55, 'USER', 1, '2017-10-30 22:30:56', '2017-10-30 23:25:32'),
(54, 55, 'USER', 'follow', 0, 'follow', 'Ramos followed You', 85, 'USER', 1, '2017-10-30 22:36:48', '2017-11-01 00:19:55'),
(55, 55, 'USER', 'post', 62, 'post', 'Ramos posted post', 13, 'USER', 1, '2017-10-30 22:42:00', '2017-11-01 00:45:14'),
(56, 55, 'USER', 'post', 62, 'post', 'Ramos posted image', 13, 'USER', 1, '2017-10-30 22:42:00', '2017-11-01 00:45:14'),
(57, 55, 'USER', 'post', 63, 'post', 'Ramos posted post', 13, 'USER', 1, '2017-10-30 22:42:43', '2017-11-01 00:45:14'),
(58, 55, 'USER', 'post', 63, 'post', 'Ramos posted image', 13, 'USER', 1, '2017-10-30 22:42:43', '2017-11-01 00:45:14'),
(59, 85, 'USER', 'follow', 0, 'follow', 'Ramos followed You', 55, 'USER', 1, '2017-10-30 22:47:30', '2017-10-30 23:25:32'),
(60, 55, 'USER', 'comment', 61, 'comment', 'Ramos comment on your post', 85, 'USER', 1, '2017-10-30 22:52:04', '2017-11-01 00:19:55'),
(61, 85, 'USER', 'comment', 61, 'comment', 'Lily shah comment on your post', 85, 'USER', 1, '2017-10-30 22:52:34', '2017-11-01 00:19:55'),
(62, 85, 'USER', 'survey', 0, 'survey', '50 point credited to your account\"', 85, 'USER', 1, '2017-10-30 22:59:30', '2017-11-01 00:19:55'),
(63, 85, 'USER', 'follow', 0, 'follow', 'Lily shah loved You', 73, 'CHARITY', 1, '2017-10-30 23:07:02', '2017-11-01 20:50:32'),
(64, 55, 'USER', 'survey', 0, 'survey', '50 point credited to your account\"', 55, 'USER', 0, '2017-10-30 23:25:54', '2017-10-30 23:25:54'),
(65, 83, 'USER', 'survey', 0, 'survey', '50 point credited to your account\"', 83, 'USER', 1, '2017-10-30 23:28:41', '2017-11-03 02:16:10'),
(66, 83, 'USER', 'follow', 0, 'follow', 'Hetal Jariwala loved You', 81, 'CHARITY', 0, '2017-10-31 05:14:03', '2017-10-31 05:14:03'),
(67, 83, 'USER', 'comment', 59, 'comment', 'Hetal Jariwala comment on your post', 83, 'USER', 1, '2017-10-31 05:14:25', '2017-11-03 02:16:10'),
(68, 83, 'USER', 'follow', 0, 'follow', 'Hetal Jariwala loved You', 81, 'CHARITY', 0, '2017-10-31 05:20:06', '2017-10-31 05:20:06'),
(69, 85, 'USER', 'post', 64, 'post', 'Lily shah posted post', 55, 'USER', 0, '2017-10-31 23:22:00', '2017-10-31 23:22:00'),
(70, 85, 'USER', 'post', 65, 'post', 'Lily shah posted post', 55, 'USER', 0, '2017-10-31 23:28:55', '2017-10-31 23:28:55'),
(71, 13, 'USER', 'follow', 0, 'follow', 'Nishith Sheth1 loved You', 73, 'CHARITY', 1, '2017-11-01 00:45:09', '2017-11-01 20:50:32'),
(72, 65, 'USER', 'follow', 0, 'follow', 'John doe1 loved You', 78, 'CHARITY', 0, '2017-11-01 04:39:36', '2017-11-01 04:39:36'),
(73, 65, 'USER', 'follow', 0, 'follow', 'John doe1 followed You', 83, 'USER', 1, '2017-11-01 04:39:57', '2017-11-03 02:16:10'),
(74, 65, 'USER', 'like', 40, 'like', 'John doe1 like your post', 70, 'USER', 0, '2017-11-01 05:09:15', '2017-11-01 05:09:15'),
(75, 65, 'USER', 'like', 38, 'like', 'John doe1 like your post', 66, 'USER', 0, '2017-11-01 05:09:21', '2017-11-01 05:09:21'),
(76, 65, 'USER', 'like', 35, 'like', 'John doe1 like your post', 66, 'USER', 0, '2017-11-01 05:09:24', '2017-11-01 05:09:24'),
(77, 65, 'USER', 'comment', 29, 'comment', 'John doe1 comment on your post', 66, 'USER', 0, '2017-11-01 05:09:36', '2017-11-01 05:09:36'),
(78, 65, 'USER', 'like', 60, 'like', 'John doe1 like your post', 83, 'USER', 1, '2017-11-01 05:10:29', '2017-11-03 02:16:10'),
(79, 65, 'USER', 'like', 59, 'like', 'John doe1 like your post', 83, 'USER', 1, '2017-11-01 05:10:32', '2017-11-03 02:16:10'),
(80, 65, 'USER', 'like', 60, 'like', 'John doe1 like your post', 83, 'USER', 1, '2017-11-01 05:42:25', '2017-11-03 02:16:10'),
(81, 65, 'USER', 'post', 66, 'post', 'John doe1 posted post', 66, 'USER', 0, '2017-11-01 08:54:07', '2017-11-01 08:54:07'),
(82, 65, 'USER', 'post', 66, 'post', 'John doe1 posted post', 67, 'USER', 0, '2017-11-01 08:54:07', '2017-11-01 08:54:07'),
(83, 65, 'USER', 'post', 66, 'post', 'John doe1 posted post', 70, 'USER', 0, '2017-11-01 08:54:07', '2017-11-01 08:54:07'),
(84, 65, 'USER', 'post', 66, 'post', 'John doe1 posted post', 73, 'CHARITY', 1, '2017-11-01 08:54:07', '2017-11-01 20:50:32'),
(85, 65, 'USER', 'post', 66, 'post', 'John doe1 posted post', 83, 'USER', 1, '2017-11-01 08:54:07', '2017-11-03 02:16:10'),
(86, 65, 'USER', 'post', 66, 'post', 'John doe1 posted image', 66, 'USER', 0, '2017-11-01 08:54:08', '2017-11-01 08:54:08'),
(87, 65, 'USER', 'post', 66, 'post', 'John doe1 posted image', 67, 'USER', 0, '2017-11-01 08:54:08', '2017-11-01 08:54:08'),
(88, 65, 'USER', 'post', 66, 'post', 'John doe1 posted image', 70, 'USER', 0, '2017-11-01 08:54:08', '2017-11-01 08:54:08'),
(89, 65, 'USER', 'post', 66, 'post', 'John doe1 posted image', 73, 'CHARITY', 1, '2017-11-01 08:54:08', '2017-11-01 20:50:32'),
(90, 65, 'USER', 'post', 66, 'post', 'John doe1 posted image', 83, 'USER', 1, '2017-11-01 08:54:08', '2017-11-03 02:16:10'),
(91, 65, 'USER', 'like', 66, 'like', 'John doe1 like your post', 65, 'USER', 1, '2017-11-01 08:54:24', '2017-11-15 08:59:06'),
(92, 83, 'USER', 'like', 66, 'like', 'Hetal Jariwala like your post', 65, 'USER', 1, '2017-11-01 08:55:59', '2017-11-15 08:59:06'),
(93, 83, 'USER', 'like', 66, 'like', 'Hetal Jariwala like your post', 65, 'USER', 1, '2017-11-01 11:31:26', '2017-11-15 08:59:06'),
(94, 83, 'USER', 'post', 67, 'post', 'Hetal Jariwala posted post', 65, 'USER', 1, '2017-11-01 19:46:18', '2017-11-15 08:59:06'),
(95, 83, 'USER', 'post', 67, 'post', 'Hetal Jariwala posted image', 65, 'USER', 1, '2017-11-01 19:46:29', '2017-11-15 08:59:06'),
(96, 73, 'CHARITY', 'like', 66, 'like', 'Health First like your post', 65, 'USER', 1, '2017-11-01 19:51:31', '2017-11-15 08:59:06'),
(97, 73, 'CHARITY', 'like', 47, 'like', 'Health First like your post', 65, 'USER', 1, '2017-11-01 19:51:39', '2017-11-15 08:59:06'),
(98, 73, 'CHARITY', 'follow', 0, 'follow', 'Health First followed You', 13, 'USER', 0, '2017-11-01 19:52:05', '2017-11-01 19:52:05'),
(99, 73, 'CHARITY', 'follow', 0, 'follow', 'Health First followed You', 83, 'USER', 1, '2017-11-01 19:53:50', '2017-11-03 02:16:10'),
(100, 73, 'CHARITY', 'follow', 0, 'follow', 'Health First followed You', 85, 'USER', 0, '2017-11-01 19:53:57', '2017-11-01 19:53:57'),
(101, 65, 'USER', 'like', 60, 'like', 'John doe1 like your post', 83, 'USER', 1, '2017-11-01 22:45:48', '2017-11-03 02:16:10'),
(102, 65, 'USER', 'like', 60, 'like', 'John doe1 like your post', 83, 'USER', 1, '2017-11-01 22:45:50', '2017-11-03 02:16:10'),
(103, 65, 'USER', 'comment', 59, 'comment', 'John doe1 comment on your post', 83, 'USER', 1, '2017-11-01 23:18:40', '2017-11-03 02:16:10'),
(104, 65, 'USER', 'like', 59, 'like', 'John doe1 like your post', 83, 'USER', 1, '2017-11-01 23:18:50', '2017-11-03 02:16:10'),
(105, 65, 'USER', 'comment', 60, 'comment', 'John doe1 comment on your post', 83, 'USER', 1, '2017-11-01 23:19:49', '2017-11-03 02:16:10'),
(106, 65, 'USER', 'follow', 0, 'follow', 'John doe1 loved You', 81, 'CHARITY', 0, '2017-11-02 02:02:39', '2017-11-02 02:02:39'),
(107, 65, 'USER', 'post', 68, 'post', 'John doe1 posted post', 66, 'USER', 0, '2017-11-02 03:31:53', '2017-11-02 03:31:53'),
(108, 65, 'USER', 'post', 68, 'post', 'John doe1 posted post', 67, 'USER', 0, '2017-11-02 03:31:53', '2017-11-02 03:31:53'),
(109, 65, 'USER', 'post', 68, 'post', 'John doe1 posted post', 70, 'USER', 0, '2017-11-02 03:31:53', '2017-11-02 03:31:53'),
(110, 65, 'USER', 'post', 68, 'post', 'John doe1 posted post', 73, 'CHARITY', 0, '2017-11-02 03:31:53', '2017-11-02 03:31:53'),
(111, 65, 'USER', 'post', 68, 'post', 'John doe1 posted post', 83, 'USER', 1, '2017-11-02 03:31:53', '2017-11-03 02:16:10'),
(112, 65, 'USER', 'post', 68, 'post', 'John doe1 posted image', 66, 'USER', 0, '2017-11-02 03:31:54', '2017-11-02 03:31:54'),
(113, 65, 'USER', 'post', 68, 'post', 'John doe1 posted image', 67, 'USER', 0, '2017-11-02 03:31:54', '2017-11-02 03:31:54'),
(114, 65, 'USER', 'post', 68, 'post', 'John doe1 posted image', 70, 'USER', 0, '2017-11-02 03:31:54', '2017-11-02 03:31:54'),
(115, 65, 'USER', 'post', 68, 'post', 'John doe1 posted image', 73, 'CHARITY', 0, '2017-11-02 03:31:54', '2017-11-02 03:31:54'),
(116, 65, 'USER', 'post', 68, 'post', 'John doe1 posted image', 83, 'USER', 1, '2017-11-02 03:31:54', '2017-11-03 02:16:10'),
(117, 65, 'USER', 'post', 69, 'post', 'John doe1 posted post', 66, 'USER', 0, '2017-11-02 03:32:47', '2017-11-02 03:32:47'),
(118, 65, 'USER', 'post', 69, 'post', 'John doe1 posted post', 67, 'USER', 0, '2017-11-02 03:32:47', '2017-11-02 03:32:47'),
(119, 65, 'USER', 'post', 69, 'post', 'John doe1 posted post', 70, 'USER', 0, '2017-11-02 03:32:47', '2017-11-02 03:32:47'),
(120, 65, 'USER', 'post', 69, 'post', 'John doe1 posted post', 73, 'CHARITY', 0, '2017-11-02 03:32:47', '2017-11-02 03:32:47'),
(121, 65, 'USER', 'post', 69, 'post', 'John doe1 posted post', 83, 'USER', 1, '2017-11-02 03:32:47', '2017-11-03 02:16:10'),
(122, 65, 'USER', 'post', 69, 'post', 'John doe1 posted image', 66, 'USER', 0, '2017-11-02 03:32:48', '2017-11-02 03:32:48'),
(123, 65, 'USER', 'post', 69, 'post', 'John doe1 posted image', 67, 'USER', 0, '2017-11-02 03:32:48', '2017-11-02 03:32:48'),
(124, 65, 'USER', 'post', 69, 'post', 'John doe1 posted image', 70, 'USER', 0, '2017-11-02 03:32:48', '2017-11-02 03:32:48'),
(125, 65, 'USER', 'post', 69, 'post', 'John doe1 posted image', 73, 'CHARITY', 0, '2017-11-02 03:32:48', '2017-11-02 03:32:48'),
(126, 65, 'USER', 'post', 69, 'post', 'John doe1 posted image', 83, 'USER', 1, '2017-11-02 03:32:48', '2017-11-03 02:16:10'),
(127, 65, 'USER', 'follow', 0, 'follow', 'John doe1 loved You', 71, 'CHARITY', 0, '2017-11-02 10:00:06', '2017-11-02 10:00:06'),
(128, 65, 'USER', 'like', 60, 'like', 'John doe1 like your post', 83, 'USER', 1, '2017-11-03 01:34:17', '2017-11-03 02:16:10'),
(129, 65, 'USER', 'like', 60, 'like', 'John doe1 like your post', 83, 'USER', 1, '2017-11-03 01:34:18', '2017-11-03 02:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `update_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `user_id`, `comment`, `update_status`, `created_at`, `updated_at`) VALUES
(1, 25, 65, 'Hello', 0, '2017-09-28 06:30:31', '2017-09-28 06:30:31'),
(2, 39, 70, 'qwerrrr', 0, '2017-10-07 19:49:45', '2017-10-07 19:49:45'),
(3, 39, 70, 'qqqq', 0, '2017-10-07 19:49:48', '2017-10-07 19:49:48'),
(4, 39, 70, 'qqqw', 0, '2017-10-07 19:49:50', '2017-10-07 19:49:50'),
(5, 39, 70, 'qqqqq', 0, '2017-10-07 19:49:53', '2017-10-07 19:49:53'),
(6, 39, 70, 'aassd', 0, '2017-10-07 19:49:59', '2017-10-07 19:49:59'),
(7, 39, 70, 'sssssss', 0, '2017-10-07 19:50:03', '2017-10-07 19:50:03'),
(8, 25, 65, 'Test', 0, '2017-10-08 10:22:57', '2017-10-08 10:22:57'),
(9, 27, 38, 'Jmmjhjjiiijjjj', 0, '2017-10-10 01:01:44', '2017-10-10 01:01:44'),
(10, 27, 38, 'Jmmjhjjiiijjjj', 0, '2017-10-10 01:01:49', '2017-10-10 01:01:49'),
(11, 27, 38, 'Jmmjhjjiiijjjj', 0, '2017-10-10 01:01:53', '2017-10-10 01:01:53'),
(12, 25, 65, 'Helllo test', 0, '2017-10-27 01:27:20', '2017-10-27 01:27:20'),
(13, 25, 65, 'Test comments ', 0, '2017-10-27 01:27:35', '2017-10-27 01:27:35'),
(14, 25, 83, 'Comment by hj test', 0, '2017-10-30 21:49:31', '2017-10-30 21:49:31'),
(15, 61, 55, 'Comment by ramos', 0, '2017-10-30 22:52:04', '2017-10-30 22:52:04'),
(16, 61, 85, 'Comment by lily', 0, '2017-10-30 22:52:34', '2017-10-30 22:52:34'),
(17, 59, 83, 'Comment 1', 0, '2017-10-31 05:14:25', '2017-10-31 05:14:25'),
(18, 29, 65, 'Test', 0, '2017-11-01 05:09:36', '2017-11-01 05:09:36'),
(19, 59, 65, 'Hello', 0, '2017-11-01 23:18:40', '2017-11-01 23:18:40'),
(20, 60, 65, 'Milan Test', 0, '2017-11-01 23:19:49', '2017-11-01 23:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 12, 55, '2017-09-23 17:56:22', '2017-09-23 17:56:22'),
(12, 6, 55, '2017-09-23 17:56:33', '2017-09-23 17:56:33'),
(13, 5, 55, '2017-09-23 17:56:37', '2017-09-23 17:56:37'),
(14, 11, 55, '2017-09-23 17:58:01', '2017-09-23 17:58:01'),
(15, 10, 55, '2017-09-23 17:58:03', '2017-09-23 17:58:03'),
(16, 8, 55, '2017-09-23 17:58:07', '2017-09-23 17:58:07'),
(17, 7, 55, '2017-09-23 17:58:09', '2017-09-23 17:58:09'),
(18, 18, 65, '2017-09-24 06:51:01', '2017-09-24 06:51:01'),
(21, 6, 13, '2017-09-24 18:40:57', '2017-09-24 18:40:57'),
(27, 27, 38, '2017-09-25 10:39:03', '2017-09-25 10:39:03'),
(28, 21, 65, '2017-09-25 11:13:13', '2017-09-25 11:13:13'),
(29, 30, 13, '2017-09-27 00:05:21', '2017-09-27 00:05:21'),
(30, 19, 71, '2017-09-27 23:14:46', '2017-09-27 23:14:46'),
(31, 25, 71, '2017-09-27 23:18:37', '2017-09-27 23:18:37'),
(33, 21, 66, '2017-09-28 05:18:04', '2017-09-28 05:18:04'),
(34, 34, 66, '2017-09-28 05:18:11', '2017-09-28 05:18:11'),
(39, 37, 66, '2017-10-05 08:07:58', '2017-10-05 08:07:58'),
(40, 38, 66, '2017-10-05 08:09:01', '2017-10-05 08:09:01'),
(44, 35, 70, '2017-10-05 08:11:27', '2017-10-05 08:11:27'),
(45, 29, 70, '2017-10-05 08:11:32', '2017-10-05 08:11:32'),
(46, 21, 70, '2017-10-05 08:11:35', '2017-10-05 08:11:35'),
(48, 38, 70, '2017-10-05 23:30:32', '2017-10-05 23:30:32'),
(74, 15, 13, '2017-10-10 01:34:02', '2017-10-10 01:34:02'),
(77, 3, 13, '2017-10-10 01:38:48', '2017-10-10 01:38:48'),
(78, 2, 13, '2017-10-10 01:38:54', '2017-10-10 01:38:54'),
(79, 1, 13, '2017-10-10 01:38:57', '2017-10-10 01:38:57'),
(80, 16, 13, '2017-10-10 01:39:20', '2017-10-10 01:39:20'),
(81, 17, 13, '2017-10-10 01:39:25', '2017-10-10 01:39:25'),
(82, 24, 13, '2017-10-10 01:39:36', '2017-10-10 01:39:36'),
(93, 18, 73, '2017-10-10 01:47:02', '2017-10-10 01:47:02'),
(101, 19, 73, '2017-10-10 02:03:05', '2017-10-10 02:03:05'),
(102, 41, 73, '2017-10-10 23:05:26', '2017-10-10 23:05:26'),
(103, 37, 73, '2017-10-10 23:05:28', '2017-10-10 23:05:28'),
(104, 36, 73, '2017-10-10 23:05:30', '2017-10-10 23:05:30'),
(106, 28, 38, '2017-10-12 23:13:27', '2017-10-12 23:13:27'),
(107, 43, 38, '2017-10-12 23:19:37', '2017-10-12 23:19:37'),
(108, 8, 13, '2017-10-13 01:04:45', '2017-10-13 01:04:45'),
(109, 11, 13, '2017-10-13 01:04:47', '2017-10-13 01:04:47'),
(110, 10, 13, '2017-10-13 01:04:51', '2017-10-13 01:04:51'),
(111, 9, 13, '2017-10-13 01:04:55', '2017-10-13 01:04:55'),
(112, 7, 13, '2017-10-13 01:05:04', '2017-10-13 01:05:04'),
(113, 42, 65, '2017-10-13 21:21:52', '2017-10-13 21:21:52'),
(117, 20, 65, '2017-10-13 21:22:04', '2017-10-13 21:22:04'),
(121, 39, 65, '2017-10-25 22:59:34', '2017-10-25 22:59:34'),
(125, 46, 65, '2017-10-26 06:02:21', '2017-10-26 06:02:21'),
(126, 45, 65, '2017-10-26 06:02:24', '2017-10-26 06:02:24'),
(127, 41, 65, '2017-10-26 06:02:28', '2017-10-26 06:02:28'),
(132, 34, 65, '2017-10-26 06:02:47', '2017-10-26 06:02:47'),
(133, 25, 65, '2017-10-27 01:27:47', '2017-10-27 01:27:47'),
(134, 19, 65, '2017-10-27 01:27:55', '2017-10-27 01:27:55'),
(137, 59, 83, '2017-10-30 01:58:55', '2017-10-30 01:58:55'),
(139, 49, 83, '2017-10-30 21:48:09', '2017-10-30 21:48:09'),
(140, 48, 83, '2017-10-30 21:48:10', '2017-10-30 21:48:10'),
(141, 47, 83, '2017-10-30 21:48:12', '2017-10-30 21:48:12'),
(142, 1, 55, '2017-10-30 22:30:53', '2017-10-30 22:30:53'),
(143, 2, 55, '2017-10-30 22:30:56', '2017-10-30 22:30:56'),
(144, 40, 65, '2017-11-01 05:09:15', '2017-11-01 05:09:15'),
(145, 38, 65, '2017-11-01 05:09:21', '2017-11-01 05:09:21'),
(146, 35, 65, '2017-11-01 05:09:24', '2017-11-01 05:09:24'),
(150, 66, 65, '2017-11-01 08:54:24', '2017-11-01 08:54:24'),
(152, 66, 83, '2017-11-01 11:31:26', '2017-11-01 11:31:26'),
(153, 66, 73, '2017-11-01 19:51:31', '2017-11-01 19:51:31'),
(154, 47, 73, '2017-11-01 19:51:39', '2017-11-01 19:51:39'),
(157, 59, 65, '2017-11-01 23:18:50', '2017-11-01 23:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `post_media`
--

CREATE TABLE `post_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('image','video') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_media`
--

INSERT INTO `post_media` (`id`, `post_id`, `url`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://lufuu.net/public/uploads/postmedia/41502-1506013186.jpeg', 'image', '2017-09-21 23:59:46', '2017-09-21 23:59:46'),
(2, 2, 'http://lufuu.net/public/uploads/postmedia/15567-1506013203.jpeg', 'image', '2017-09-22 00:00:03', '2017-09-22 00:00:03'),
(3, 3, 'http://lufuu.net/public/uploads/postmedia/14108-1506013219.jpeg', 'image', '2017-09-22 00:00:19', '2017-09-22 00:00:19'),
(4, 4, 'http://lufuu.net/public/uploads/postmedia/73429-1506013235.jpeg', 'image', '2017-09-22 00:00:35', '2017-09-22 00:00:35'),
(5, 5, 'http://lufuu.net/public/uploads/postmedia/94974-1506013260.jpeg', 'image', '2017-09-22 00:01:00', '2017-09-22 00:01:00'),
(6, 6, 'http://lufuu.net/public/uploads/postmedia/56831-1506013281.jpeg', 'image', '2017-09-22 00:01:21', '2017-09-22 00:01:21'),
(7, 7, 'http://lufuu.net/public/uploads/postmedia/70922-1506151187.jpeg', 'image', '2017-09-23 14:19:47', '2017-09-23 14:19:47'),
(8, 8, 'http://lufuu.net/public/uploads/postmedia/74154-1506151207.jpeg', 'image', '2017-09-23 14:20:07', '2017-09-23 14:20:07'),
(9, 9, 'http://lufuu.net/public/uploads/postmedia/77425-1506151223.jpeg', 'image', '2017-09-23 14:20:23', '2017-09-23 14:20:23'),
(10, 10, 'http://lufuu.net/public/uploads/postmedia/94463-1506151240.jpeg', 'image', '2017-09-23 14:20:40', '2017-09-23 14:20:40'),
(11, 11, 'http://lufuu.net/public/uploads/postmedia/42524-1506151259.jpeg', 'image', '2017-09-23 14:20:59', '2017-09-23 14:20:59'),
(12, 16, 'http://lufuu.net/public/uploads/postmedia/69772-1506165434.mp4', 'video', '2017-09-23 18:17:14', '2017-09-23 18:17:14'),
(13, 17, 'http://lufuu.net/public/uploads/postmedia/69267-1506166456.mp4', 'video', '2017-09-23 18:34:16', '2017-09-23 18:34:16'),
(14, 18, 'http://lufuu.net/public/uploads/postmedia/45036-1506210584.jpeg', 'image', '2017-09-24 06:49:44', '2017-09-24 06:49:44'),
(15, 19, 'http://lufuu.net/public/uploads/postmedia/50032-1506210866.jpeg', 'image', '2017-09-24 06:54:26', '2017-09-24 06:54:26'),
(16, 20, 'http://lufuu.net/public/uploads/postmedia/89347-1506226913.mp4', 'video', '2017-09-24 11:21:53', '2017-09-24 11:21:53'),
(17, 22, 'http://lufuu.net/public/uploads/postmedia/34952-1506278378.jpeg', 'image', '2017-09-25 01:39:38', '2017-09-25 01:39:38'),
(18, 23, 'http://lufuu.net/public/uploads/postmedia/46369-1506278414.mp4', 'video', '2017-09-25 01:40:14', '2017-09-25 01:40:14'),
(19, 24, 'http://lufuu.net/public/uploads/postmedia/81457-1506280098.jpeg', 'image', '2017-09-25 02:08:18', '2017-09-25 02:08:18'),
(20, 24, 'http://lufuu.net/public/uploads/postmedia/51384-1506280099.jpeg', 'image', '2017-09-25 02:08:19', '2017-09-25 02:08:19'),
(21, 25, 'http://lufuu.net/public/uploads/postmedia/72397-1506285748.jpeg', 'image', '2017-09-25 03:42:28', '2017-09-25 03:42:28'),
(22, 25, 'http://lufuu.net/public/uploads/postmedia/60554-1506285748.jpeg', 'image', '2017-09-25 03:42:28', '2017-09-25 03:42:28'),
(23, 25, 'http://lufuu.net/public/uploads/postmedia/62558-1506285748.jpeg', 'image', '2017-09-25 03:42:28', '2017-09-25 03:42:28'),
(24, 25, 'http://lufuu.net/public/uploads/postmedia/51645-1506285748.jpeg', 'image', '2017-09-25 03:42:28', '2017-09-25 03:42:28'),
(25, 29, 'http://lufuu.net/public/uploads/postmedia/18647-1506430100.jpeg', 'image', '2017-09-26 19:48:20', '2017-09-26 19:48:20'),
(26, 29, 'http://lufuu.net/public/uploads/postmedia/20994-1506430101.jpeg', 'image', '2017-09-26 19:48:21', '2017-09-26 19:48:21'),
(27, 29, 'http://lufuu.net/public/uploads/postmedia/93588-1506430101.jpeg', 'image', '2017-09-26 19:48:21', '2017-09-26 19:48:21'),
(28, 30, 'http://lufuu.net/public/uploads/postmedia/76204-1506445371.mp4', 'video', '2017-09-27 00:02:51', '2017-09-27 00:02:51'),
(29, 31, 'http://lufuu.net/public/uploads/postmedia/47302-1506528987.jpeg', 'image', '2017-09-27 23:16:27', '2017-09-27 23:16:27'),
(30, 31, 'http://lufuu.net/public/uploads/postmedia/77180-1506528987.jpeg', 'image', '2017-09-27 23:16:27', '2017-09-27 23:16:27'),
(31, 31, 'http://lufuu.net/public/uploads/postmedia/29625-1506528990.jpeg', 'image', '2017-09-27 23:16:30', '2017-09-27 23:16:30'),
(32, 31, 'http://lufuu.net/public/uploads/postmedia/71057-1506528991.jpeg', 'image', '2017-09-27 23:16:31', '2017-09-27 23:16:31'),
(33, 31, 'http://lufuu.net/public/uploads/postmedia/15290-1506528992.jpeg', 'image', '2017-09-27 23:16:32', '2017-09-27 23:16:32'),
(34, 31, 'http://lufuu.net/public/uploads/postmedia/71977-1506528993.jpeg', 'image', '2017-09-27 23:16:33', '2017-09-27 23:16:33'),
(35, 32, 'http://lufuu.net/public/uploads/postmedia/29267-1506529025.jpeg', 'image', '2017-09-27 23:17:05', '2017-09-27 23:17:05'),
(36, 32, 'http://lufuu.net/public/uploads/postmedia/92807-1506529027.jpeg', 'image', '2017-09-27 23:17:07', '2017-09-27 23:17:07'),
(37, 33, 'http://lufuu.net/public/uploads/postmedia/38300-1506529105.jpeg', 'image', '2017-09-27 23:18:25', '2017-09-27 23:18:25'),
(38, 35, 'http://lufuu.net/public/uploads/postmedia/64944-1506550711.jpeg', 'image', '2017-09-28 05:18:31', '2017-09-28 05:18:31'),
(39, 37, 'http://lufuu.net/public/uploads/postmedia/17365-1507165656.jpeg', 'image', '2017-10-05 08:07:36', '2017-10-05 08:07:36'),
(40, 37, 'http://lufuu.net/public/uploads/postmedia/87087-1507165656.jpeg', 'image', '2017-10-05 08:07:38', '2017-10-05 08:07:38'),
(41, 38, 'http://lufuu.net/public/uploads/postmedia/95186-1507165734.mp4', 'video', '2017-10-05 08:08:54', '2017-10-05 08:08:54'),
(42, 39, 'http://lufuu.net/public/uploads/postmedia/96482-1507165775.jpeg', 'image', '2017-10-05 08:09:35', '2017-10-05 08:09:35'),
(43, 39, 'http://lufuu.net/public/uploads/postmedia/25144-1507165776.jpeg', 'image', '2017-10-05 08:09:36', '2017-10-05 08:09:36'),
(44, 41, 'http://lufuu.net/public/uploads/postmedia/93735-1507480105.jpeg', 'image', '2017-10-08 23:28:25', '2017-10-08 23:28:25'),
(45, 41, 'http://lufuu.net/public/uploads/postmedia/53934-1507480105.jpeg', 'image', '2017-10-08 23:28:25', '2017-10-08 23:28:25'),
(46, 46, 'http://lufuu.net/public/uploads/postmedia/83039-1508972525.jpeg', 'image', '2017-10-26 06:02:05', '2017-10-26 06:02:05'),
(47, 56, 'http://lufuu.net/public/uploads/postmedia/40377-1509113639.mp4', 'video', '2017-10-27 21:13:59', '2017-10-27 21:13:59'),
(48, 59, 'http://lufuu.net/public/uploads/postmedia/80324-1509303316.jpeg', 'image', '2017-10-30 01:55:16', '2017-10-30 01:55:16'),
(49, 61, 'http://lufuu.net/public/uploads/postmedia/67884-1509377739.jpeg', 'image', '2017-10-30 22:35:39', '2017-10-30 22:35:39'),
(50, 61, 'http://lufuu.net/public/uploads/postmedia/57624-1509377739.jpeg', 'image', '2017-10-30 22:35:39', '2017-10-30 22:35:39'),
(51, 62, 'http://lufuu.net/public/uploads/postmedia/87807-1509378120.jpeg', 'image', '2017-10-30 22:42:00', '2017-10-30 22:42:00'),
(52, 63, 'http://lufuu.net/public/uploads/postmedia/78365-1509378163.jpeg', 'image', '2017-10-30 22:42:43', '2017-10-30 22:42:43'),
(53, 66, 'http://lufuu.net/public/uploads/postmedia/12612-1509501248.jpeg', 'image', '2017-11-01 08:54:08', '2017-11-01 08:54:08'),
(54, 67, 'http://lufuu.net/public/uploads/postmedia/65353-1509540389.jpeg', 'image', '2017-11-01 19:46:29', '2017-11-01 19:46:29'),
(55, 68, 'http://lufuu.net/public/uploads/postmedia/44321-1509568314.jpeg', 'image', '2017-11-02 03:31:54', '2017-11-02 03:31:54'),
(56, 69, 'http://lufuu.net/public/uploads/postmedia/26042-1509568368.jpeg', 'image', '2017-11-02 03:32:48', '2017-11-02 03:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `countries_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `countries_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alabama', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(2, 1, 'Alaska', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(3, 1, 'Arizona', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(4, 1, 'Arkansas', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(5, 1, 'California', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(6, 1, 'Colorado', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(7, 1, 'Connecticut', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(8, 1, 'Delaware', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(9, 1, 'Florida', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(10, 1, 'Georgia', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(11, 1, 'Hawaii', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(12, 1, 'Idaho', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(13, 1, 'Illinois', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(14, 1, 'Indiana', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(15, 1, 'Iowa', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(16, 1, 'Kansas', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(17, 1, 'Kentucky', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(18, 1, 'Louisiana', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(19, 1, 'Maine', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(20, 1, 'Maryland', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(21, 1, 'Massachusetts', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(22, 1, 'Michigan', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(23, 1, 'Minnesota', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(24, 1, 'Mississippi', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(25, 1, 'Missouri', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(26, 1, 'Montana', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(27, 1, 'Nebraska', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(28, 1, 'Nevada', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(29, 1, 'New Hampshire', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(30, 1, 'New Jersey', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(31, 1, 'New Mexico', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(32, 1, 'New York', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(33, 1, 'North Carolina', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(34, 1, 'North Dakota', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(35, 1, 'Ohio', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(36, 1, 'Oklahoma', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(37, 1, 'Oregon', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(38, 1, 'Pennsylvania', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(39, 1, 'Rhode Island', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(40, 1, 'South Carolina', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(41, 1, 'South Dakota', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(42, 1, 'Tennessee', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(43, 1, 'Texas', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(44, 1, 'Utah', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(45, 1, 'Vermont', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(46, 1, 'Virginia', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(47, 1, 'Washington', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(48, 1, 'West Virginia', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(49, 1, 'Wisconsin', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(50, 1, 'Wyoming', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(51, 1, 'Washington DC', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(52, 2, 'Alberta', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(53, 2, 'British Columbia', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(54, 2, 'Manitoba', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(55, 2, 'New Brunswick', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(56, 2, 'Newfoundland and Labrador', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(57, 2, 'Nova Scotia', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(58, 2, 'Ontario', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(59, 2, 'Prince Edward Island', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(60, 2, 'Quebec', '2017-08-18 18:30:00', '2017-08-18 18:30:00'),
(61, 2, 'Saskatchewan', '2017-08-18 18:30:00', '2017-08-18 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `spotlight_videos`
--

CREATE TABLE `spotlight_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `spotlight_type` int(11) NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spotlight_videos`
--

INSERT INTO `spotlight_videos` (`id`, `user_id`, `title`, `description`, `video_url`, `views`, `is_active`, `spotlight_type`, `image_url`, `created_at`, `updated_at`) VALUES
(5, 1, 'About Lufuu', 'Lufuu is a social media application that facilitates charitable giving to make a positive difference in the world.\r\n  \r\nLufuu allows users to donate to their favorite charities by watching ads catered to their interests. Following the ad, users must answer a couple of brief questions correctly to receive monetary credits, allowing them to donate to the charities.\r\nGIVING BACK EASIER FOR ALL\r\n\r\nWe understand that not everyone can afford to donate to charity, or wish that they can donate more. With Lufuu, we are re-thinking the traditional donation method and making giving back easier. ', 'http://lufuu.net/public/uploads/spotlight_videos/30479-1509040085.mp4', 0, 1, 1, 'we', '2017-10-27 00:48:09', '2017-10-27 00:48:09'),
(6, 1, 'Test content with image', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc massa quam, maximus eu nunc id, pharetra venenatis odio. Cras non nisl ut massa venenatis malesuada. Integer molestie efficitur egestas. Phasellus vestibulum eu diam semper imperdiet. Vestibulum elit lorem, porta ut ante a, rhoncus tempus magna. Donec ut efficitur neque, vel lobortis velit. Phasellus sed placerat mi. Nam sit amet ullamcorper sapien.\r\n\r\nNulla et mi auctor, posuere justo scelerisque, ultricies lorem. Donec ultricies neque augue, tempus aliquam sapien porta sed. Aliquam sit amet iaculis sem, a fringilla nibh. Vivamus bibendum justo ut felis facilisis viverra. Morbi non eros tincidunt, convallis risus in, tempor turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu interdum mi, at iaculis quam.', '', 0, 1, 2, 'http://lufuu.net/public/uploads/spotlight_videos/91516-1509040162.png', '2017-10-27 00:49:22', '2017-10-27 00:49:22'),
(7, 1, 'Test content with image and video', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc massa quam, maximus eu nunc id, pharetra venenatis odio. Cras non nisl ut massa venenatis malesuada. Integer molestie efficitur egestas. Phasellus vestibulum eu diam semper imperdiet. Vestibulum elit lorem, porta ut ante a, rhoncus tempus magna. Donec ut efficitur neque, vel lobortis velit. Phasellus sed placerat mi. Nam sit amet ullamcorper sapien.\r\n\r\nNulla et mi auctor, posuere justo scelerisque, ultricies lorem. Donec ultricies neque augue, tempus aliquam sapien porta sed. Aliquam sit amet iaculis sem, a fringilla nibh. Vivamus bibendum justo ut felis facilisis viverra. Morbi non eros tincidunt, convallis risus in, tempor turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu interdum mi, at iaculis quam.', 'http://lufuu.net/public/uploads/spotlight_videos/59983-1509040193.mp4', 0, 1, 3, 'http://lufuu.net/public/uploads/spotlight_videos/91516-1509040162.png', '2017-10-27 00:49:53', '2017-10-27 00:49:53'),
(8, 1, 'About lufuu ', 'Lufuu is a social media application that facilitates charitable giving to make a positive difference in the world.\r\n  \r\nLufuu allows users to donate to their favorite charities by watching ads catered to their interests. Following the ad, users must answer a couple of brief questions correctly to receive monetary credits, allowing them to donate to the charities.\r\nGIVING BACK EASIER FOR ALL\r\n\r\nWe understand that not everyone can afford to donate to charity, or wish that they can donate more. With Lufuu, we are re-thinking the traditional donation method and making giving back easier. ', '', 0, 1, 2, 'http://lufuu.net/public/uploads/spotlight_videos/91516-1509040162.png', '2017-10-27 00:50:59', '2017-10-27 00:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `survey_answers`
--

CREATE TABLE `survey_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `answer_text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `survey_answers`
--

INSERT INTO `survey_answers` (`id`, `question_id`, `answer_text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Correct', '2017-10-30 22:57:25', '2017-10-30 22:57:25', NULL),
(2, 3, 'Incorrect', '2017-10-30 22:57:25', '2017-10-30 22:57:25', NULL),
(3, 3, 'Correct', '2017-10-30 22:57:25', '2017-10-30 22:57:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE `survey_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `survey_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_title` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_type` enum('text','fixed','multiple','single') COLLATE utf8_unicode_ci NOT NULL,
  `true_ans` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`id`, `survey_id`, `user_id`, `question_title`, `answer_type`, `true_ans`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Open text question', 'text', '', '2017-10-30 22:57:25', '2017-10-30 22:57:25', NULL),
(2, 1, 1, 'Fixed answer question', 'fixed', 'ans', '2017-10-30 22:57:25', '2017-10-30 22:57:25', NULL),
(3, 1, 1, 'Multiple answer question', 'multiple', '[\"Correct\",\"Correct\"]', '2017-10-30 22:57:25', '2017-10-30 22:57:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_charity_point_transaction`
--

CREATE TABLE `user_charity_point_transaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `before_point` int(10) UNSIGNED NOT NULL,
  `after_point` int(10) UNSIGNED NOT NULL,
  `point` int(10) UNSIGNED NOT NULL,
  `transaction_type` enum('AdsView','DonateByUser') COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_charity_point_transaction`
--

INSERT INTO `user_charity_point_transaction` (`id`, `user_id`, `before_point`, `after_point`, `point`, `transaction_type`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 13, 0, 25, 25, 'AdsView', 7, '2017-10-04 00:54:47', '2017-10-04 00:54:47'),
(2, 55, 0, 25, 25, 'AdsView', 7, '2017-10-04 01:13:28', '2017-10-04 01:13:28'),
(3, 25, 0, 25, 25, 'AdsView', 7, '2017-10-04 01:27:03', '2017-10-04 01:27:03'),
(4, 25, 25, 50, 25, 'AdsView', 7, '2017-10-04 01:29:24', '2017-10-04 01:29:24'),
(5, 25, 50, 75, 25, 'AdsView', 7, '2017-10-04 01:31:26', '2017-10-04 01:31:26'),
(6, 25, 75, 100, 25, 'AdsView', 7, '2017-10-04 01:39:06', '2017-10-04 01:39:06'),
(7, 5, 0, 25, 25, 'AdsView', 7, '2017-10-04 01:39:49', '2017-10-04 01:39:49'),
(8, 5, 25, 50, 25, 'AdsView', 7, '2017-10-04 01:44:00', '2017-10-04 01:44:00'),
(9, 25, 100, 150, 50, 'AdsView', 8, '2017-10-04 01:48:59', '2017-10-04 01:48:59'),
(10, 55, 25, 75, 50, 'AdsView', 8, '2017-10-05 02:27:52', '2017-10-05 02:27:52'),
(11, 65, 0, 25, 25, 'AdsView', 7, '2017-10-05 23:02:03', '2017-10-05 23:02:03'),
(12, 65, 25, 50, 25, 'AdsView', 7, '2017-10-05 23:02:31', '2017-10-05 23:02:31'),
(13, 70, 0, 25, 25, 'AdsView', 7, '2017-10-05 23:05:36', '2017-10-05 23:05:36'),
(14, 85, 0, 50, 50, 'AdsView', 1, '2017-10-30 22:59:30', '2017-10-30 22:59:30'),
(15, 55, 75, 125, 50, 'AdsView', 1, '2017-10-30 23:25:54', '2017-10-30 23:25:54'),
(16, 83, 0, 50, 50, 'AdsView', 1, '2017-10-30 23:28:41', '2017-10-30 23:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `profile_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `user_credit` double DEFAULT NULL,
  `gender` enum('M','F','O') COLLATE utf8_unicode_ci DEFAULT 'M',
  `bio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `profile_img`, `dob`, `user_credit`, `gender`, `bio`, `country_id`, `province_id`, `city`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, '72327.jpg', '0000-00-00', 0, 'M', NULL, 0, 0, '', '2017-07-21 02:37:02', '2017-07-21 02:37:02', NULL),
(2, 4, '79467.jpg', '0000-00-00', 0, 'M', NULL, 0, 0, '', '2017-07-21 03:41:20', '2017-07-21 03:41:39', NULL),
(3, 5, 'http://localhost/lufu_admin/public/uploads/profile_img/5-60603-1503237984.jpg', '1990-07-24', 50, 'M', NULL, 1, 1, 'new city', '2017-08-19 08:16:35', '2017-10-04 01:44:00', NULL),
(4, 6, NULL, '1991-07-24', 0, 'M', NULL, 1, 1, 'AMERICA', '2017-08-19 08:21:37', '2017-08-19 08:21:37', NULL),
(5, 13, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/13-45710-1505923425.jpeg', '1990-07-05', 25, 'M', 'Testing bio update grew teeth were ergo erg whew whew', 1, 1, 'New York', '2017-08-25 01:11:51', '2017-10-27 01:27:09', NULL),
(6, 14, '', '2002-07-25', 0, 'M', NULL, 1, 1, 'ABA', '2017-08-25 02:19:58', '2017-08-25 02:19:58', NULL),
(7, 15, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/15-82426-1503602591.', '1992-08-25', 0, 'M', NULL, 1, 1, 'ABA', '2017-08-25 02:22:26', '2017-08-25 02:23:11', NULL),
(8, 16, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/16-73044-1503603160.', '1997-08-25', 0, 'M', NULL, 1, 2, 'AB', '2017-08-25 02:32:26', '2017-08-25 02:32:40', NULL),
(9, 21, '', '1987-08-13', 0, 'M', NULL, 1, 2, 'NYC', '2017-08-26 18:35:58', '2017-08-26 18:35:58', NULL),
(10, 24, '', '2010-11-30', 0, 'M', NULL, 1, 2, 'Montreal', '2017-08-27 12:34:48', '2017-08-27 12:34:48', NULL),
(11, 25, '', '2010-02-26', 150, 'M', NULL, 1, 1, 'Test', '2017-08-27 14:43:15', '2017-10-04 01:48:59', NULL),
(12, 28, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/28-70275-1503827138.', '2008-06-27', 0, 'M', NULL, 1, 32, 'New york', '2017-08-27 16:45:30', '2017-08-27 16:45:38', NULL),
(13, 30, '', '2015-08-27', 0, 'F', NULL, 1, 1, 'Surat', '2017-08-28 01:48:40', '2017-08-28 01:48:40', NULL),
(14, 31, '', '2012-08-28', 0, 'F', NULL, 2, 60, 'Montreal', '2017-08-28 22:36:29', '2017-08-28 22:36:29', NULL),
(15, 32, '', '1995-04-09', 0, 'F', NULL, 2, 60, 'laval', '2017-08-28 22:49:00', '2017-08-28 22:49:00', NULL),
(16, 33, '', '2017-07-28', 0, 'M', NULL, 1, 1, 'Test', '2017-08-28 23:36:31', '2017-08-28 23:36:31', NULL),
(17, 34, '', '2015-09-26', 0, 'M', NULL, 1, 1, 'Test', '2017-08-28 23:55:27', '2017-08-28 23:55:27', NULL),
(18, 36, '', '1987-12-13', 0, 'M', NULL, 2, 53, 'Mumbai', '2017-08-29 08:47:07', '2017-08-29 08:47:07', NULL),
(19, 38, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/38-68097-1507571988.jpeg', '2003-08-28', 0, 'M', NULL, 1, 1, 'mumabi', '2017-08-29 08:56:31', '2017-10-10 00:59:48', NULL),
(20, 39, '', '2009-08-29', 0, 'M', NULL, 1, 2, 'yhjka', '2017-08-29 09:01:49', '2017-08-29 09:01:49', NULL),
(21, 41, '', '2009-08-28', 0, 'F', NULL, 2, 60, 'Montreal', '2017-08-29 10:24:45', '2017-08-29 10:24:45', NULL),
(22, 42, '', '2014-08-28', 0, 'F', NULL, 2, 60, 'Montreal', '2017-08-29 10:26:09', '2017-08-29 10:26:09', NULL),
(23, 46, '', '1989-08-30', 0, 'F', NULL, 2, 60, 'Montreal', '2017-08-30 10:49:45', '2017-08-30 10:49:45', NULL),
(24, 48, '', '1989-08-30', 0, 'M', NULL, 2, 1, 'tests', '2017-08-31 04:53:30', '2017-08-31 04:53:30', NULL),
(25, 49, '', '1995-04-09', 0, 'F', NULL, 2, 60, 'laval', '2017-08-31 05:08:43', '2017-08-31 05:08:43', NULL),
(26, 50, '', '1996-12-25', 0, 'F', NULL, 2, 60, 'Laval', '2017-08-31 21:47:36', '2017-08-31 21:47:36', NULL),
(27, 51, '', '2010-05-05', 0, 'F', NULL, 1, 2, 'Montreal', '2017-09-01 15:44:44', '2017-09-01 15:44:44', NULL),
(28, 52, '', '2010-05-05', 0, 'F', NULL, 1, 2, 'Montreal', '2017-09-01 15:49:09', '2017-09-01 15:49:09', NULL),
(29, 54, '', '2017-05-03', 0, 'F', NULL, 1, 1, 'AB', '2017-09-03 15:20:32', '2017-09-03 15:20:32', NULL),
(30, 55, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/55-84558-1506149738.jpeg', '2007-11-03', 125, 'M', NULL, 1, 1, 'AB', '2017-09-03 15:23:20', '2017-10-30 23:25:54', NULL),
(31, 57, '', '2001-09-04', 0, 'F', NULL, 2, 60, 'Montreal', '2017-09-05 02:48:05', '2017-09-05 02:48:05', NULL),
(32, 58, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/58-53205-1504622082.', '1994-09-05', 0, 'M', NULL, 2, 53, 'surat', '2017-09-05 21:34:41', '2017-09-05 21:34:42', NULL),
(33, 60, '', '1997-09-11', 0, 'F', NULL, 2, 60, 'montreal', '2017-09-12 02:24:08', '2017-09-12 02:24:08', NULL),
(34, 61, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/61-75901-1505182100.', '2003-09-12', 0, 'M', NULL, 1, 1, 'surat', '2017-09-12 09:08:19', '2017-09-12 09:08:20', NULL),
(35, 63, '', '2017-09-11', 0, 'M', NULL, 2, 60, 'Montreal', '2017-09-12 11:40:46', '2017-09-12 11:40:46', NULL),
(36, 65, 'http://lufuu.net/public/uploads/profile_img/65-41857-1509485837.jpeg', '2011-09-12', 50, 'F', 'Reef WiFi whgrwierg werguhw Wright Sergio’s ergot wgrwehgr ethers wrg erg we’ve wgr hearth that reth', 1, 1, 'Montreal', '2017-09-12 19:50:23', '2017-11-01 04:37:17', NULL),
(37, 66, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/66-91724-1506550752.jpeg', '2007-09-12', 0, 'F', NULL, 1, 1, 'montreal', '2017-09-12 19:54:41', '2017-09-28 05:19:12', NULL),
(38, 67, '', '1998-09-17', 0, 'F', NULL, 2, 1, 'Montreal', '2017-09-18 07:30:18', '2017-09-18 07:30:18', NULL),
(39, 68, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/68-11438-1505841119.', '1987-09-19', 0, 'M', NULL, 1, 1, 'France', '2017-09-20 00:11:54', '2017-09-20 00:11:59', NULL),
(40, 69, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/69-67774-1505841589.', '1996-09-19', 0, 'M', NULL, 1, 1, 'Mexico', '2017-09-20 00:19:42', '2017-09-20 00:19:49', NULL),
(41, 70, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/70-99097-1505877989.', '2007-09-19', 25, 'F', NULL, 2, 60, 'Montreal', '2017-09-20 10:14:51', '2017-10-05 23:05:36', NULL),
(42, 74, '', '1993-10-14', 0, 'M', 'erfe rwrgi wergu ewirg werighuewig wihgwi', 1, 1, 'Ontario', '2017-10-15 00:47:28', '2017-10-15 00:47:28', NULL),
(43, 75, 'http://lufuu.net/lufu_admin/public/uploads/profile_img/75-68641-1508099104.jpeg', '2015-10-15', 0, 'F', 'Test bio content for new user1', 1, 1, 'Montreal', '2017-10-16 03:23:23', '2017-10-16 03:25:04', NULL),
(44, 76, '', '1991-07-24', 0, 'M', 'asdfasdfasdfasdf', 1, 1, 'America', '2017-10-16 15:33:12', '2017-10-16 15:33:12', NULL),
(45, 79, '', '1989-11-13', 0, 'F', 'Test content for bio can be a long text file', 2, 60, 'Montreal', '2017-10-26 06:05:07', '2017-10-26 06:05:07', NULL),
(46, 82, '', '1988-10-29', 0, 'M', 'QWERTY qwerty qwerty qwerty ', 1, 1, 'Qwerty', '2017-10-30 00:10:12', '2017-10-30 00:10:12', NULL),
(47, 83, 'http://lufuu.net/public/uploads/profile_img/83-44522-1509485894.jpeg', '2010-10-29', 50, 'F', 'Some thinng about user', 2, 60, 'Montreal', '2017-10-30 01:50:01', '2017-11-01 04:38:48', NULL),
(48, 84, '', '2008-10-30', 0, 'F', 'Test', 2, 60, 'Montreal', '2017-10-30 22:33:46', '2017-10-30 22:33:46', NULL),
(49, 85, 'http://lufuu.net/public/uploads/profile_img/85-32202-1509377699.jpeg', '2012-10-30', 50, 'F', 'Test', 2, 60, '123456', '2017-10-30 22:34:58', '2017-10-30 22:59:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_followers`
--

CREATE TABLE `user_followers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `following_id` int(10) UNSIGNED NOT NULL,
  `following_type` enum('follow','love') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `f_user_role` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_followers`
--

INSERT INTO `user_followers` (`id`, `user_id`, `following_id`, `following_type`, `created_at`, `updated_at`, `user_role`, `f_user_role`) VALUES
(4, 5, 12, 'love', '2017-08-21 08:45:48', '2017-08-21 08:45:48', 'USER', 'CHARITY'),
(5, 5, 6, 'follow', '2017-08-21 08:47:36', '2017-08-21 08:47:36', 'USER', 'USER'),
(6, 5, 9, 'love', '2017-08-21 08:54:38', '2017-08-21 08:54:38', 'USER', 'CHARITY'),
(7, 5, 13, 'follow', '2017-09-01 15:20:00', '2017-09-01 15:20:00', 'USER', 'USER'),
(8, 5, 52, 'follow', '2017-09-01 15:52:09', '2017-09-01 15:52:09', 'USER', 'USER'),
(9, 5, 38, 'follow', '2017-09-06 00:02:09', '2017-09-06 00:02:09', 'USER', 'USER'),
(10, 13, 56, 'love', '2017-09-12 01:15:46', '2017-09-12 01:15:46', 'USER', 'CHARITY'),
(12, 13, 15, 'follow', '2017-09-12 01:27:10', '2017-09-12 01:27:10', 'USER', 'USER'),
(14, 59, 15, 'follow', '2017-09-12 08:19:35', '2017-09-12 08:19:35', 'CHARITY', 'USER'),
(15, 59, 52, 'follow', '2017-09-12 08:45:09', '2017-09-12 08:45:09', 'CHARITY', 'USER'),
(16, 59, 57, 'follow', '2017-09-12 09:03:40', '2017-09-12 09:03:40', 'CHARITY', 'USER'),
(17, 59, 51, 'follow', '2017-09-12 09:03:46', '2017-09-12 09:03:46', 'CHARITY', 'USER'),
(18, 59, 48, 'follow', '2017-09-12 09:03:53', '2017-09-12 09:03:53', 'CHARITY', 'USER'),
(19, 59, 42, 'follow', '2017-09-12 09:03:59', '2017-09-12 09:03:59', 'CHARITY', 'USER'),
(20, 59, 41, 'follow', '2017-09-12 09:04:03', '2017-09-12 09:04:03', 'CHARITY', 'USER'),
(21, 59, 16, 'follow', '2017-09-12 09:04:08', '2017-09-12 09:04:08', 'CHARITY', 'USER'),
(22, 62, 61, 'follow', '2017-09-12 09:14:25', '2017-09-12 09:14:25', 'CHARITY', 'USER'),
(23, 61, 62, 'love', '2017-09-12 09:18:15', '2017-09-12 09:18:15', 'USER', 'CHARITY'),
(24, 63, 41, 'follow', '2017-09-12 11:44:13', '2017-09-12 11:44:13', 'USER', 'USER'),
(25, 63, 42, 'follow', '2017-09-12 11:44:20', '2017-09-12 11:44:20', 'USER', 'USER'),
(26, 64, 57, 'follow', '2017-09-12 12:09:07', '2017-09-12 12:09:07', 'CHARITY', 'USER'),
(27, 64, 63, 'follow', '2017-09-12 12:09:14', '2017-09-12 12:09:14', 'CHARITY', 'USER'),
(28, 64, 29, 'follow', '2017-09-12 12:09:20', '2017-09-12 12:09:20', 'CHARITY', 'CHARITY'),
(30, 66, 65, 'follow', '2017-09-12 19:54:55', '2017-09-12 19:54:55', 'USER', 'USER'),
(35, 67, 65, 'follow', '2017-09-18 07:30:28', '2017-09-18 07:30:28', 'USER', 'USER'),
(36, 67, 66, 'follow', '2017-09-18 07:30:35', '2017-09-18 07:30:35', 'USER', 'USER'),
(37, 70, 65, 'follow', '2017-09-20 10:15:13', '2017-09-20 10:15:13', 'USER', 'USER'),
(39, 13, 9, 'love', '2017-09-21 23:57:51', '2017-09-21 23:57:51', 'USER', 'CHARITY'),
(40, 13, 55, 'follow', '2017-09-22 00:04:26', '2017-09-22 00:04:26', 'USER', 'USER'),
(41, 55, 71, 'love', '2017-09-23 14:10:20', '2017-09-23 14:10:20', 'USER', 'CHARITY'),
(45, 13, 5, 'follow', '2017-09-24 18:40:11', '2017-09-24 18:40:11', 'USER', 'USER'),
(49, 65, 70, 'follow', '2017-09-25 21:25:20', '2017-09-25 21:25:20', 'USER', 'USER'),
(53, 71, 73, 'follow', '2017-09-27 23:14:50', '2017-09-27 23:14:50', 'CHARITY', 'CHARITY'),
(54, 70, 66, 'follow', '2017-10-05 08:11:02', '2017-10-05 08:11:02', 'USER', 'USER'),
(58, 70, 18, 'love', '2017-10-08 02:21:11', '2017-10-08 02:21:11', 'USER', 'CHARITY'),
(60, 73, 65, 'follow', '2017-10-08 23:30:07', '2017-10-08 23:30:07', 'CHARITY', 'USER'),
(61, 73, 41, 'follow', '2017-10-10 00:51:20', '2017-10-10 00:51:20', 'CHARITY', 'USER'),
(62, 38, 5, 'follow', '2017-10-10 01:02:18', '2017-10-10 01:02:18', 'USER', 'USER'),
(63, 13, 71, 'love', '2017-10-13 01:04:38', '2017-10-13 01:04:38', 'USER', 'CHARITY'),
(64, 65, 66, 'follow', '2017-10-13 20:36:50', '2017-10-13 20:36:50', 'USER', 'USER'),
(65, 65, 67, 'follow', '2017-10-13 20:36:51', '2017-10-13 20:36:51', 'USER', 'USER'),
(66, 73, 71, 'follow', '2017-10-16 03:20:09', '2017-10-16 03:20:09', 'CHARITY', 'CHARITY'),
(67, 65, 73, 'love', '2017-10-22 06:17:02', '2017-10-22 06:17:02', 'USER', 'CHARITY'),
(68, 71, 77, 'follow', '2017-10-26 23:07:13', '2017-10-26 23:07:13', 'CHARITY', 'CHARITY'),
(69, 65, 77, 'love', '2017-10-27 02:50:47', '2017-10-27 02:50:47', 'USER', 'CHARITY'),
(72, 83, 65, 'follow', '2017-10-30 21:46:41', '2017-10-30 21:46:41', 'USER', 'USER'),
(73, 83, 73, 'love', '2017-10-30 21:49:04', '2017-10-30 21:49:04', 'USER', 'CHARITY'),
(74, 55, 85, 'follow', '2017-10-30 22:36:48', '2017-10-30 22:36:48', 'USER', 'USER'),
(75, 85, 55, 'follow', '2017-10-30 22:47:30', '2017-10-30 22:47:30', 'USER', 'USER'),
(76, 85, 73, 'love', '2017-10-30 23:07:02', '2017-10-30 23:07:02', 'USER', 'CHARITY'),
(78, 83, 81, 'love', '2017-10-31 05:20:06', '2017-10-31 05:20:06', 'USER', 'CHARITY'),
(79, 13, 73, 'love', '2017-11-01 00:45:09', '2017-11-01 00:45:09', 'USER', 'CHARITY'),
(80, 65, 78, 'love', '2017-11-01 04:39:36', '2017-11-01 04:39:36', 'USER', 'CHARITY'),
(81, 65, 83, 'follow', '2017-11-01 04:39:57', '2017-11-01 04:39:57', 'USER', 'USER'),
(83, 73, 83, 'follow', '2017-11-01 19:53:50', '2017-11-01 19:53:50', 'CHARITY', 'USER'),
(84, 73, 85, 'follow', '2017-11-01 19:53:57', '2017-11-01 19:53:57', 'CHARITY', 'USER'),
(85, 65, 81, 'love', '2017-11-02 02:02:39', '2017-11-02 02:02:39', 'USER', 'CHARITY');

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

CREATE TABLE `user_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_type` enum('simple','shared','schedule') COLLATE utf8_unicode_ci NOT NULL,
  `shared_post_id` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `schedule_datetime` datetime NOT NULL,
  `comment_allow` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_posts`
--

INSERT INTO `user_posts` (`id`, `user_id`, `post_type`, `shared_post_id`, `description`, `schedule_datetime`, `comment_allow`, `created_at`, `updated_at`) VALUES
(1, 55, 'simple', 0, 'Nature Flower.', '0000-00-00 00:00:00', 1, '2017-09-21 23:59:44', '2017-09-21 23:59:44'),
(2, 55, 'simple', 0, 'Leaf...', '0000-00-00 00:00:00', 1, '2017-09-22 00:00:01', '2017-09-22 00:00:01'),
(3, 55, 'simple', 0, 'Waterfall....', '0000-00-00 00:00:00', 1, '2017-09-22 00:00:17', '2017-09-22 00:00:17'),
(4, 55, 'simple', 0, 'Nature...', '0000-00-00 00:00:00', 1, '2017-09-22 00:00:33', '2017-09-22 00:00:33'),
(5, 55, 'simple', 0, 'Blisss..', '0000-00-00 00:00:00', 1, '2017-09-22 00:00:59', '2017-09-22 00:00:59'),
(6, 55, 'simple', 0, 'Cavani....', '0000-00-00 00:00:00', 1, '2017-09-22 00:01:20', '2017-09-22 00:01:20'),
(7, 71, 'simple', 0, 'Wwwwww', '0000-00-00 00:00:00', 1, '2017-09-23 14:19:45', '2017-09-23 14:19:45'),
(8, 71, 'simple', 0, 'Yyyyyyyyyy', '0000-00-00 00:00:00', 1, '2017-09-23 14:20:05', '2017-09-23 14:20:05'),
(9, 71, 'simple', 0, 'Tyyyyyyyy', '0000-00-00 00:00:00', 1, '2017-09-23 14:20:21', '2017-09-23 14:20:21'),
(10, 71, 'simple', 0, 'Ooooooo', '0000-00-00 00:00:00', 1, '2017-09-23 14:20:38', '2017-09-23 14:20:38'),
(11, 71, 'simple', 0, 'Rrrrrrrrrrrrrrrrrrrrrrrrrr', '0000-00-00 00:00:00', 1, '2017-09-23 14:20:58', '2017-09-23 14:20:58'),
(12, 55, 'shared', 11, 'shared ', '0000-00-00 00:00:00', 1, '2017-09-23 16:18:15', '2017-09-23 16:18:15'),
(13, 55, 'shared', 10, 'qwerty', '0000-00-00 00:00:00', 1, '2017-09-23 17:57:37', '2017-09-23 17:57:37'),
(14, 55, 'simple', 0, 'Posting video...', '0000-00-00 00:00:00', 1, '2017-09-23 18:11:09', '2017-09-23 18:11:09'),
(15, 55, 'simple', 0, 'videos123', '0000-00-00 00:00:00', 1, '2017-09-23 18:14:45', '2017-09-23 18:14:45'),
(16, 55, 'simple', 0, 'videoqwerty', '0000-00-00 00:00:00', 1, '2017-09-23 18:17:13', '2017-09-23 18:17:13'),
(17, 55, 'simple', 0, 'video456', '0000-00-00 00:00:00', 1, '2017-09-23 18:34:14', '2017-09-23 18:34:14'),
(18, 65, 'simple', 0, 'This is my first post - johndoe', '0000-00-00 00:00:00', 1, '2017-09-24 06:49:38', '2017-09-24 06:49:38'),
(19, 73, 'simple', 0, 'This is first post - healthfirst', '0000-00-00 00:00:00', 1, '2017-09-24 06:54:26', '2017-09-24 06:54:26'),
(20, 65, 'simple', 0, 'Tesr video', '0000-00-00 00:00:00', 1, '2017-09-24 11:21:43', '2017-09-24 11:21:43'),
(21, 65, 'shared', 19, 'this is test', '0000-00-00 00:00:00', 1, '2017-09-24 22:18:20', '2017-09-24 22:18:20'),
(22, 55, 'simple', 0, 'testing', '0000-00-00 00:00:00', 1, '2017-09-25 01:39:34', '2017-09-25 01:39:34'),
(23, 55, 'simple', 0, 'video1', '0000-00-00 00:00:00', 1, '2017-09-25 01:40:13', '2017-09-25 01:40:13'),
(24, 55, 'simple', 0, 'multiple times', '0000-00-00 00:00:00', 1, '2017-09-25 02:08:15', '2017-09-25 02:08:15'),
(25, 73, 'simple', 0, 'Test multiple images', '0000-00-00 00:00:00', 1, '2017-09-25 03:42:26', '2017-09-25 03:42:26'),
(26, 65, 'shared', 25, 'test content', '0000-00-00 00:00:00', 1, '2017-09-25 03:43:34', '2017-09-25 03:43:34'),
(27, 38, 'simple', 0, 'Hi', '0000-00-00 00:00:00', 1, '2017-09-25 10:38:56', '2017-09-25 10:38:56'),
(28, 38, 'shared', 27, 'shared from milan', '0000-00-00 00:00:00', 1, '2017-09-25 10:39:19', '2017-09-25 10:39:19'),
(29, 66, 'simple', 0, 'Jean’s first post. multiple images should be display all here', '0000-00-00 00:00:00', 1, '2017-09-26 19:48:19', '2017-09-26 19:48:19'),
(30, 13, 'simple', 0, 'That hhththththtjtntntnhtjjjtnntngntnttnnnnj', '0000-00-00 00:00:00', 1, '2017-09-27 00:02:49', '2017-09-27 00:02:49'),
(31, 13, 'simple', 0, 'Hi', '0000-00-00 00:00:00', 1, '2017-09-27 23:16:25', '2017-09-27 23:16:25'),
(32, 13, 'simple', 0, 'Vshnsjsjsjjsnsjjss', '0000-00-00 00:00:00', 1, '2017-09-27 23:17:03', '2017-09-27 23:17:03'),
(33, 13, 'simple', 0, 'Hey Milan', '0000-00-00 00:00:00', 1, '2017-09-27 23:18:22', '2017-09-27 23:18:22'),
(34, 65, 'simple', 0, 'Hello', '0000-00-00 00:00:00', 1, '2017-09-28 05:09:39', '2017-09-28 05:09:39'),
(35, 66, 'simple', 0, 'Jean’s firsr post', '0000-00-00 00:00:00', 1, '2017-09-28 05:18:31', '2017-09-28 05:18:31'),
(36, 65, 'shared', 34, 'test', '0000-00-00 00:00:00', 1, '2017-10-04 11:21:51', '2017-10-04 11:21:51'),
(37, 65, 'simple', 0, 'John post on 10.4.2017 - 1', '0000-00-00 00:00:00', 1, '2017-10-05 08:07:31', '2017-10-05 08:07:31'),
(38, 66, 'simple', 0, 'Jean doe post 10.04.2017 - post one', '0000-00-00 00:00:00', 1, '2017-10-05 08:08:54', '2017-10-05 08:08:54'),
(39, 66, 'simple', 0, 'Jean post 10.04.2017 - image post 2', '0000-00-00 00:00:00', 1, '2017-10-05 08:09:34', '2017-10-05 08:09:34'),
(40, 70, 'shared', 39, 'tesr alice', '0000-00-00 00:00:00', 1, '2017-10-05 08:17:05', '2017-10-05 08:17:05'),
(41, 65, 'simple', 0, 'Test', '0000-00-00 00:00:00', 1, '2017-10-08 23:28:24', '2017-10-08 23:28:24'),
(42, 65, 'simple', 0, 'This is test contrnt', '0000-00-00 00:00:00', 1, '2017-10-10 23:59:11', '2017-10-10 23:59:11'),
(43, 38, 'simple', 0, 'Then tbbrbrvdf fbrbtbtbtbrbbdvxdwerberb tbbrbrvdf tne recent. Then rrbtbbrrbrfbnhnfn. Fbrbtbtbtbrbbdvxdwerberb. Fbrbtbtbtbrbbdvxdwerberb fbrbtbtbtbrbbdvxdwerberb fbrbtbtbtbrbbdvxdwerberb fbrbtbtbtbrbbdvxdwerberb fbrbtbtbtbrbbdvxdwerberb tbbrbrvdf fbrbtbtbtbrbbdvxdwerberb fbrbtbtbtbrbbdvxdwerberb rhthtntb rbrbtn', '0000-00-00 00:00:00', 1, '2017-10-12 23:19:21', '2017-10-12 23:19:21'),
(44, 38, 'shared', 43, 'my own', '0000-00-00 00:00:00', 1, '2017-10-12 23:54:52', '2017-10-12 23:54:52'),
(45, 65, 'shared', 38, 'test', '0000-00-00 00:00:00', 1, '2017-10-15 12:49:11', '2017-10-15 12:49:11'),
(46, 65, 'simple', 0, 'Snap chat detail', '0000-00-00 00:00:00', 1, '2017-10-26 06:02:04', '2017-10-26 06:02:04'),
(47, 65, 'simple', 0, 'My post', '0000-00-00 00:00:00', 1, '2017-10-27 01:28:51', '2017-10-27 01:28:51'),
(48, 65, 'simple', 0, 'First post', '0000-00-00 00:00:00', 1, '2017-10-27 01:30:53', '2017-10-27 01:30:53'),
(49, 65, 'schedule', 0, 'First post', '2017-10-28 00:00:00', 1, '2017-10-27 01:31:01', '2017-10-27 01:31:01'),
(50, 5, 'schedule', 0, 'hello', '2017-10-27 04:49:00', 1, '2017-10-27 06:30:32', '2017-10-27 06:30:32'),
(51, 5, 'schedule', 0, 'hello', '2017-10-27 04:49:00', 1, '2017-10-27 06:31:02', '2017-10-27 06:31:02'),
(52, 5, 'schedule', 0, 'hello', '2017-10-27 04:49:00', 1, '2017-10-27 06:31:13', '2017-10-27 06:31:13'),
(53, 5, 'schedule', 0, 'hello', '2017-10-27 04:49:00', 1, '2017-10-27 06:31:16', '2017-10-27 06:31:16'),
(54, 5, 'schedule', 0, 'hello', '2017-10-27 04:49:00', 1, '2017-10-27 06:31:19', '2017-10-27 06:31:19'),
(55, 5, 'simple', 0, 'hello', '2017-10-27 04:49:00', 0, '2017-10-27 06:32:20', '2017-10-27 06:35:26'),
(56, 65, 'simple', 0, 'Hello new video', '0000-00-00 00:00:00', 1, '2017-10-27 21:13:56', '2017-10-27 21:13:56'),
(57, 13, 'shared', 30, 'Shared', '0000-00-00 00:00:00', 1, '2017-10-29 02:06:27', '2017-10-29 02:06:27'),
(58, 13, 'shared', 22, 'test', '0000-00-00 00:00:00', 1, '2017-10-29 03:20:23', '2017-10-29 03:20:23'),
(59, 83, 'simple', 0, 'Rainy day', '0000-00-00 00:00:00', 1, '2017-10-30 01:55:13', '2017-10-30 01:55:13'),
(60, 83, 'shared', 59, 'share 1', '0000-00-00 00:00:00', 1, '2017-10-30 21:47:49', '2017-10-30 21:47:49'),
(61, 85, 'simple', 0, 'Test', '0000-00-00 00:00:00', 1, '2017-10-30 22:35:38', '2017-10-30 22:35:38'),
(62, 55, 'simple', 0, 'Test by ramos', '0000-00-00 00:00:00', 1, '2017-10-30 22:42:00', '2017-10-30 22:42:00'),
(63, 55, 'simple', 0, 'Test', '0000-00-00 00:00:00', 1, '2017-10-30 22:42:42', '2017-10-30 22:42:42'),
(64, 85, 'schedule', 0, 'Test for schedule post...', '2017-11-01 16:21:01', 1, '2017-10-31 23:21:59', '2017-10-31 23:21:59'),
(65, 85, 'simple', 0, 'Post with don’t allow comment...', '0000-00-00 00:00:00', 0, '2017-10-31 23:28:55', '2017-10-31 23:28:55'),
(66, 65, 'schedule', 0, 'Scheduled post', '2017-11-01 01:53:41', 0, '2017-11-01 08:54:07', '2017-11-01 08:54:07'),
(67, 83, 'schedule', 0, 'Scheduled post2 by HJ', '2017-11-03 03:16:33', 1, '2017-11-01 19:46:18', '2017-11-01 19:46:18'),
(68, 65, 'schedule', 0, 'Show post on friday', '2017-11-03 20:31:17', 1, '2017-11-02 03:31:53', '2017-11-02 03:31:53'),
(69, 65, 'schedule', 0, 'Show on Saturday', '2017-11-04 20:32:27', 1, '2017-11-02 03:32:47', '2017-11-02 03:32:47'),
(70, 65, 'simple', 0, 'This is post from web 1', '0000-00-00 00:00:00', 1, '2017-11-06 00:55:15', '2017-11-06 00:55:15'),
(71, 83, 'shared', 69, 'This is shared content from johndoe shared by HJ', '0000-00-00 00:00:00', 1, '2017-11-07 06:05:26', '2017-11-07 06:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_serveys`
--

CREATE TABLE `user_serveys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `ads_id` int(11) NOT NULL,
  `ans_details` text COLLATE utf8_unicode_ci NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_serveys`
--

INSERT INTO `user_serveys` (`id`, `user_id`, `survey_id`, `ads_id`, `ans_details`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 13, 7, 7, '[{\"id\":14,\"answer_type\":\"single\",\"answer\":\"Option1\"},{\"id\":13,\"answer_type\":\"multiple\",\"answer\":[\"Option1\",\"Option2\"]},{\"id\":15,\"answer_type\":\"fixed\",\"answer\":\"no\"}]', 0, '2017-10-04 00:11:17', '2017-10-04 01:18:28'),
(2, 55, 7, 7, '[{\"id\":13,\"answer_type\":\"multiple\",\"answer\":[\"Option2\",\"Option3\"]},{\"id\":14,\"answer_type\":\"single\",\"answer\":\"Option2\"},{\"id\":15,\"answer_type\":\"fixed\",\"answer\":\"Yes\"}]', 1, '2017-10-04 01:13:28', '2017-10-04 01:13:28'),
(3, 25, 7, 7, '[{\"id\":13,\"answer_type\":\"multiple\",\"answer\":[\"Option2\",\"Option3\"]},{\"id\":14,\"answer_type\":\"single\",\"answer\":\"Option2\"},{\"id\":15,\"answer_type\":\"fixed\",\"answer\":\"Yes\"}]', 1, '2017-10-04 01:16:15', '2017-10-04 01:39:06'),
(4, 5, 7, 7, '[{\"id\":14,\"answer_type\":\"single\",\"answer\":\"Option2\"},{\"id\":13,\"answer_type\":\"multiple\",\"answer\":[\"Option2\",\"Option3\"]},{\"id\":15,\"answer_type\":\"fixed\",\"answer\":\"yes\"}]', 1, '2017-10-04 01:18:50', '2017-10-04 01:39:49'),
(5, 25, 8, 8, '[{\"id\":16,\"answer_type\":\"single\",\"answer\":\"2\"},{\"id\":17,\"answer_type\":\"multiple\",\"answer\":[\"xyz\",\"123\"]},{\"id\":18,\"answer_type\":\"fixed\",\"answer\":\"Yes\"},{\"id\":19,\"answer_type\":\"text\",\"answer\":\"No\"}]', 1, '2017-10-04 01:45:34', '2017-10-04 01:48:59'),
(6, 65, 7, 7, '[{\"id\":13,\"answer_type\":\"multiple\",\"answer\":[\"Option1\",\"Option2\",\"Option3\",\"Option4\"]},{\"id\":14,\"answer_type\":\"single\",\"answer\":\"Option3\"},{\"id\":15,\"answer_type\":\"fixed\",\"answer\":\"tesr\"}]', 0, '2017-10-04 04:12:02', '2017-10-08 10:19:22'),
(7, 38, 8, 8, '[{\"id\":16,\"answer_type\":\"single\",\"answer\":\"2\"},{\"id\":17,\"answer_type\":\"multiple\",\"answer\":[\"abc\",\"xyz\",\"123\"]},{\"id\":18,\"answer_type\":\"fixed\",\"answer\":\"Deere\"},{\"id\":19,\"answer_type\":\"text\",\"answer\":\"seeded\"}]', 0, '2017-10-04 09:42:56', '2017-10-12 23:54:10'),
(8, 38, 7, 7, '[{\"answer\":[\"Option1\",\"Option2\"],\"answer_type\":\"multiple\",\"id\":13},{\"answer\":\"Option1\",\"answer_type\":\"single\",\"id\":14},{\"answer\":\"ft thinks\",\"answer_type\":\"fixed\",\"id\":15}]', 0, '2017-10-04 09:44:09', '2017-10-04 09:44:09'),
(9, 55, 8, 8, '[{\"id\":16,\"answer_type\":\"single\",\"answer\":\"2\"},{\"id\":17,\"answer_type\":\"multiple\",\"answer\":[\"xyz\",\"123\"]},{\"id\":18,\"answer_type\":\"fixed\",\"answer\":\"yes\"},{\"id\":19,\"answer_type\":\"text\",\"answer\":\"true or false\"}]', 1, '2017-10-05 02:27:52', '2017-10-05 02:27:52'),
(10, 70, 7, 7, '[{\"id\":13,\"answer_type\":\"multiple\",\"answer\":[\"Option2\",\"Option3\"]},{\"id\":14,\"answer_type\":\"single\",\"answer\":\"Option2\"},{\"id\":15,\"answer_type\":\"fixed\",\"answer\":\"yes\"}]', 1, '2017-10-05 08:16:11', '2017-10-05 23:05:36'),
(11, 65, 8, 8, '[{\"id\":16,\"answer_type\":\"single\",\"answer\":\"1\"},{\"id\":17,\"answer_type\":\"multiple\",\"answer\":[\"abc\",\"xyz\"]},{\"id\":18,\"answer_type\":\"fixed\",\"answer\":\"yes\"},{\"id\":19,\"answer_type\":\"text\",\"answer\":\"yes\"}]', 0, '2017-10-05 23:02:43', '2017-10-05 23:02:43'),
(12, 70, 8, 8, '[{\"id\":16,\"answer_type\":\"single\",\"answer\":\"1\"},{\"id\":17,\"answer_type\":\"multiple\",\"answer\":[\"abc\",\"xyz\"]},{\"id\":18,\"answer_type\":\"fixed\",\"answer\":\"No\"},{\"id\":19,\"answer_type\":\"text\",\"answer\":\"no\"}]', 0, '2017-10-07 20:56:01', '2017-10-08 03:00:01'),
(13, 85, 1, 1, '[{\"id\":1,\"answer_type\":\"text\",\"answer\":\"text\"},{\"id\":2,\"answer_type\":\"fixed\",\"answer\":\"ans\"},{\"id\":3,\"answer_type\":\"multiple\",\"answer\":[\"Correct\",\"Correct\"]}]', 1, '2017-10-30 22:59:30', '2017-10-30 22:59:30'),
(14, 55, 1, 1, '[{\"id\":1,\"answer_type\":\"text\",\"answer\":\"text\"},{\"id\":2,\"answer_type\":\"fixed\",\"answer\":\"ans\"},{\"id\":3,\"answer_type\":\"multiple\",\"answer\":[\"Correct\",\"Correct\"]}]', 1, '2017-10-30 23:23:19', '2017-10-30 23:25:54'),
(15, 83, 1, 1, '[{\"id\":1,\"answer_type\":\"text\",\"answer\":\"answer 1234\"},{\"id\":2,\"answer_type\":\"fixed\",\"answer\":\"ans\"},{\"id\":3,\"answer_type\":\"multiple\",\"answer\":[\"Correct\",\"Correct\"]}]', 1, '2017-10-30 23:27:22', '2017-10-30 23:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgot_otp` int(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `country`, `role`, `is_active`, `is_deleted`, `remember_token`, `forgot_otp`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'Admin', 'admin@lufu.com', '$2y$10$T98qKVWzDXdvr7WiIaxQBOcPsx0wINiiA7v6mChEEArY7dKWgM0w6', '', 'ADMIN', 0, 0, '44l1CRhFXQsnp6NR8Itm20Ht2Qr2If3zUSt2hkrH1H6QGQCgCybaWgfqMXLC', 0, '2017-07-17 10:34:09', '2017-10-28 13:57:33', NULL),
(3, '', 'Advertizer', 'advertizer@lufu.com', '$2y$10$qNzf9PCpRgwSMfx7lmmhX.Up5XlWabV4zDisqHClC6P2KZxdaDsPq', 'India', 'ADVERTIZER', 1, 0, '2yDygYP8QCimjKRDATQCG3h9MuKyGEzXMWMLpCYoBoZBKIYC6vNOH0k7DqFf', 0, '2017-07-21 02:37:02', '2017-07-25 05:06:50', NULL),
(4, '', 'Advertizer_2', 'advertizer2@lufu.com', '$2y$10$ybU5edNkeDukNerLH.GOd.vwlgMY3.0A0l6/AZcbOTp3cJKGIhXcm', 'us', 'ADVERTIZER', 1, 0, NULL, 0, '2017-07-21 03:24:25', '2017-07-24 02:52:41', '2017-07-24 02:52:41'),
(5, 'dhaval247', 'Dhaval new', 'dhaval.purohit4@gmail.com', '$2y$10$OEpJRiwrCZZeasYUVvqIOefBrVuxXa1WfGEVfAT0JXkJD7OJSi9ry', NULL, 'USER', 1, 0, 's3Zi6j3A6e6dtpXya7uZc9nZ40p7W06jJs7VfzKoteZ4Z054UOPBHP1mHWeI', 222278, '2017-08-19 08:16:35', '2017-11-03 04:03:43', NULL),
(6, 'parth007', 'Parth Domadiya', 'parthpatel0409@gmail.com', '$2y$10$FZL/wJSFXasnd44i6KF3TeJjefk7IblOa69SdZvXMOxqMMX8aFTUq', NULL, 'USER', 1, 0, NULL, 0, '2017-08-19 08:21:37', '2017-08-19 08:21:37', NULL),
(9, 'parth006', 'Parth Domadiya Foundation', 'parthpatel@gmail.com', '$2y$10$znZzF.AJRbCHdT6gb6sHJ.1/0/Fpubv46bJk4X139/1KZ9DxopR1a', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-20 07:25:24', '2017-10-19 23:29:52', NULL),
(12, 'parth006123', 'Parth Domadiya Foundation', 'parthpatel123@gmail.com', '$2y$10$Xlj1T3xp/WqdR4fof6aUu.K0N4Hwsu3ALWuMB6OtkrxzIJDd8RGXu', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-20 07:38:43', '2017-08-20 07:38:43', NULL),
(13, 'nishlufuu', 'Nishith Sheth1', 'nish@mail.com', '$2y$10$lQhZWpql7Th/zgQ5vwaEyeJlk2CyUQL7SZST7u4CmMTAaAkYcyRpS', NULL, 'USER', 1, 0, NULL, 0, '2017-08-25 01:11:51', '2017-09-25 00:26:24', NULL),
(14, 'nish123', 'Nishith Sheth', 'nish1@mail.com', '$2y$10$sUcZAgBYBZBTKyrLbsZDTu5nh0H3R300yjFIPKAZqE872Ch9qQbk6', NULL, 'USER', 1, 0, NULL, 0, '2017-08-25 02:19:58', '2017-08-25 02:19:58', NULL),
(15, 'nishqwert', 'Nishith Sheth', 'nish2@mail.com', '$2y$10$WWbW1DM6cPZRDmxtXRH5XeZU27Yzmjx/BJ4pjK3uHFlzwmpjT2SwW', NULL, 'USER', 1, 0, NULL, 0, '2017-08-25 02:22:26', '2017-08-25 02:22:26', NULL),
(16, 'nish231', 'Nishith Sheth', 'nish3@mail.com', '$2y$10$lsrI/BCdC4J/m5yEAWaxuOb9sMLwyKqV/QSQ8I8.lywLg1v2LgJXi', NULL, 'USER', 1, 0, NULL, 0, '2017-08-25 02:32:26', '2017-08-25 02:32:26', NULL),
(17, 'Charity', 'Pray', 'pray@mail.com', '$2y$10$D4z.QP8a.MfZwKHchxUlfepBA3CqIDIH3At7yfbFWav97kZgSgWPK', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-26 02:56:44', '2017-08-26 02:56:44', NULL),
(18, 'Test1', 'Test Charity', 'test@one.com', '$2y$10$Y481Y6RW6eOEuVp3DHCmV.u1K.EGrm48XbXLV0klnqd3jctj1oOZi', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-26 03:04:04', '2017-08-26 03:04:04', NULL),
(19, 'qwerty1', 'qwerty', '123@456.com', '$2y$10$bLLXRSQuEn0doA2SBsVzCuqDZJ7RL4UtfTIyaVm8eYF7mKCVD2Ga2', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-26 03:08:16', '2017-10-14 20:37:51', NULL),
(20, 'qweiqrqer', 'eriqoe jqrg ', 'qwr@qwe.com', '$2y$10$b4Q2POBw1AEP3lub.xU/k.FAPiHRUWFZ7.8F8abYHaTnNzFxXfCs6', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-26 03:11:44', '2017-08-26 03:11:44', NULL),
(21, 'milan', 'milangorakhia', 'milangorakhiait@gmail.com', '$2y$10$n6Cc8s1km7VW.b868qJ3yenKfeUD.pvzyGZvIWDYCRaJHUwTkypha', NULL, 'USER', 1, 0, NULL, 0, '2017-08-26 18:35:58', '2017-08-26 18:35:58', NULL),
(22, 'ergwegwe', 'eereerre', 't@t.com', '$2y$10$A2nDz56LS1ZMpfHq7A7tLuj9MDZXvPr1BXupyQu7rzT5uDne9trGC', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-27 01:45:09', '2017-08-27 01:45:09', NULL),
(23, 'erwgergergwerg', 'regwregwerger', 'r@r.com', '$2y$10$05ATazooCjOJ5v4narjqk.o9Z/x/UQSLXWUIzGOARuiJogpsaKts.', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-27 01:46:22', '2017-08-27 01:46:22', NULL),
(24, 'Milan1312', 'Milan Gorakhia', 'milan123@lufuu.com', '$2y$10$372XAOeiRqk.KzJduoE.wO50vwE2HNvj9VkMBBabyZgeJyG5Zbvqy', NULL, 'USER', 1, 0, NULL, 0, '2017-08-27 12:34:48', '2017-08-27 12:34:48', NULL),
(25, 'vihu123', 'Vihana', 'vihu@mail.com', '$2y$10$dzrfrFU1/XgVIz48JeZtHurtRUOLryOZzo/ITcb7zc0gzwCrfxJlC', NULL, 'USER', 1, 0, NULL, 0, '2017-08-27 14:43:15', '2017-08-27 14:43:15', NULL),
(26, 'testcharity', 'test', 'testcharity@mail.com', '$2y$10$xOTt9EIKCulqJOwMITkhhenBVXU5g71FQB4isRQOQOJdyNDGWoVG.', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-27 14:57:53', '2017-08-27 14:57:53', NULL),
(27, 'rgergrg', 'ergegrwrg', 'ergwergwerg@mail.com', '$2y$10$aojM19ndFmfu74JsUUaVm.K70AA1lXZ/L6b7AjvhUWyTdH7heAR32', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-27 15:59:12', '2017-08-27 15:59:12', NULL),
(28, 'testuser1', 'test user', 'test@test1.com', '$2y$10$DQA8ctPrvAHnawWKEnzHyOPUYQaKC/VCAvCOYjoawdekhe3bBhG4q', NULL, 'USER', 1, 0, NULL, 0, '2017-08-27 16:45:30', '2017-08-27 16:45:30', NULL),
(29, 'test1charity', 'test charity', 'test@charity1.com', '$2y$10$nvjA7h3qFdeP5SUvRq1oCuNZ/g3eco6YSrQJxY3uqQ77t3/f252t2', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-27 16:49:15', '2017-08-27 16:49:15', NULL),
(31, 'hjtest01', 'test', 'hjtest01@gmail.com', '$2y$10$voVKmUPlR4xEsDK9f.baBujYVbXO9nTx.i9I5AC5F9N3NpHpbC3Ce', NULL, 'USER', 1, 0, NULL, 0, '2017-08-28 22:36:29', '2017-08-28 22:36:29', NULL),
(33, 'Test123', 'Test 5', 'test5@mail.com', '$2y$10$qNm5cVjp1wCU9Blkn/e3KuZ6SB4.VnBSoarkeXAYx1GRhJU01dyOy', NULL, 'USER', 1, 0, NULL, 0, '2017-08-28 23:36:31', '2017-08-28 23:36:31', NULL),
(34, 'Test6', 'Test 6', 'test6@mail.com', '$2y$10$T1EKEBr0Nyl0PgAS/hB//eR8UpISV9.WElWkrLIh458tslJNU13eG', NULL, 'USER', 1, 0, NULL, 0, '2017-08-28 23:55:27', '2017-08-28 23:55:27', NULL),
(35, 'Test7', 'Test 7', 'test7@mail.com', '$2y$10$cZ0/TGVDWFb2lZXItYjfoudlpjoGNT1Zgi4Ho0Dl8yV9vKmHW30FK', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-28 23:57:44', '2017-08-28 23:57:44', NULL),
(36, 'willy', 'willy kansara', 'william.kansara@outlook.com', '$2y$10$U.PvGSqrj/ts43TzSVOnG.WSOgp//I8zH1h1u1BfbJ0j9o5UtdyYe', NULL, 'USER', 1, 0, NULL, 0, '2017-08-29 08:47:07', '2017-08-29 08:47:07', NULL),
(37, 'willycharity', 'Education', 'willilam.kansara@outlook.com', '$2y$10$JMkLEF8CA6DLMFVaJhGRnuQipASTl.K9DrZQP0d2ZoU6g.zsC.89q', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-29 08:51:22', '2017-08-29 08:51:22', NULL),
(38, 'testone', 'test one', 'test@gmail.com', '$2y$10$naxiSa2UiRvOLOe2q2NYa.mQAMG/hjS5EIHChuAk8.MQzbG/Wls.O', NULL, 'USER', 1, 0, 'UD6YPCuZjoDZzQkLgdDQjGM6rSQjzz7pwqVJ521HBGK202ueQpOZlM1NGFwH', 0, '2017-08-29 08:56:31', '2017-11-01 23:23:54', NULL),
(39, 'milan1', 'milan1', 'milan1@gmail.com', '$2y$10$NJkkWhVp3hgHqrM93C0dteh3hf3j8nITzVDxr53LNiqTGUxpIZkbK', NULL, 'USER', 1, 0, NULL, 0, '2017-08-29 09:01:49', '2017-08-29 09:01:49', NULL),
(40, 'milanc1', 'milanc1', 'milanc1@gmail.com', '$2y$10$7DFqYoLwawkza8/wxwwq/essV2X65uBRpZhOyQl6g30l5LejdMXsi', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-29 09:04:22', '2017-08-29 09:04:22', NULL),
(41, 'hetaljariwala03', 'hetal jariwala', 'hetal03@nomail.com', '$2y$10$Fxj0xTpbtyZ6mJHOV.66leKcU6fXxfDNNbpjmx7ZktPHoB75D/J6K', NULL, 'USER', 1, 0, NULL, 0, '2017-08-29 10:24:45', '2017-08-29 10:24:45', NULL),
(42, 'hetal03', 'hetal jariwala', 'hetal04@nomail.com', '$2y$10$c3h82ZgLccvxiPH3w1IiL.PNX.lIUe.Uz6E66xbnAb2UnOeUPrnxy', NULL, 'USER', 1, 0, NULL, 0, '2017-08-29 10:26:09', '2017-08-29 10:26:09', NULL),
(43, 'test01', 'testing', 'test@nomqil.com', '$2y$10$utKjEF4wJlo0vcJN/vVt9ONHVIWF8z8ReqtAwoP5yo8o4/fUXyVRy', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-29 10:28:24', '2017-08-29 10:28:24', NULL),
(44, 'test03', 'test03', 'hjtest03@nomail.com', '$2y$10$TduSRKyogYICm.Tae9183OtRptBsNAZqbuDlV60M3WiRarhcwtpHG', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-29 21:24:24', '2017-08-29 21:24:24', NULL),
(45, 'Test8', 'Test 7', 'test8@mail.com', '$2y$10$zLcWEMc5S42JwhAeNZgzhOkqaqB98GLounIBj1zhyp2EE2PKIpgHW', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-29 23:21:37', '2017-08-29 23:21:37', NULL),
(46, 'test05', 'Test data', 'test05@nomail.com', '$2y$10$FM1AMqEfMMi/7NKLOcHe5uNin.iYvjWsj5X/Wo74C1QK17kPtvIgG', NULL, 'USER', 1, 0, NULL, 0, '2017-08-30 10:49:45', '2017-08-30 10:49:45', NULL),
(47, 'test06', 'test charity', 'test06@nomail.com', '$2y$10$6mQi5U2uRDMd.yKWFk6jVuCECqgwfiWP6ssisYYVdPDORJYn8a272', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-08-30 10:52:46', '2017-08-30 10:52:46', NULL),
(48, 'hetal', 'hetaljariwala', 'hetal.h.jariwala@gmail.com', '$2y$10$9.zVQw0AsvCSrwHvWrjBE.0OWfgRTwjSxdMX6rVy.QhWDFi1aGqL6', NULL, 'USER', 1, 0, NULL, 0, '2017-08-31 04:53:30', '2017-08-31 04:53:30', NULL),
(49, 'tianadv', 'Tiana Di Valerio', 'tiana.divalerio@gmail.com', '$2y$10$GT7sJqyCSp0qHKOFdsdA2.AqMGOJuJ9jEjRSJOduPf70L.Tk.zccm', NULL, 'USER', 1, 0, NULL, 0, '2017-08-31 05:08:43', '2017-08-31 05:08:43', NULL),
(50, 'alyssadivalerio', 'Alyssa Di Valerio', 'alyssa.divalerio@lufuu.com', '$2y$10$Bqx.aikKNbZOJ/ahpX6kUuhQigdQRWq2ahL4hpr6kWKhTkwmsJgUW', NULL, 'USER', 1, 0, NULL, 0, '2017-08-31 21:47:36', '2017-08-31 21:47:36', NULL),
(51, 'lufuuUsername', 'Hetal Jariwala', 'test@lufuu.com', '$2y$10$bCzL2Zl/a2OAes6bmBL2jeuHr0bu7fxum.abIX1hjJJ3vrQ4Ww1YW', NULL, 'USER', 1, 0, NULL, 0, '2017-09-01 15:44:44', '2017-09-01 15:44:44', NULL),
(52, 'milantest', 'Mialn Test', 'mialntest@lufuu.com', '$2y$10$roWvf/bG5Rl97OsP09kFUeUq4sscBW11A3.MPtpEW1qiyy.587Fr2', NULL, 'USER', 1, 0, NULL, 0, '2017-09-01 15:49:09', '2017-09-01 15:49:09', NULL),
(53, 'lufuuUsername1312', 'ABCD', 'test1312@lufuu.com', '$2y$10$dVxNkbn8dqmNNS7fPtZfzuxO4w20G7HKX2oCwjJzpSVRTlHXRpEa.', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-09-01 16:33:31', '2017-09-01 16:33:31', NULL),
(54, 'vihu1234', 'Vihana', 'vihu1@mail.com', '$2y$10$GfgowaWouCmp8Wk1hj55yemhrJQEDG76QwnUGRtPUV6BGcyoE/OXW', NULL, 'USER', 1, 0, NULL, 0, '2017-09-03 15:20:32', '2017-09-03 15:20:32', NULL),
(55, 'ramos', 'Ramos', 'ramos@mail.com', '$2y$10$hzpzb6oRJ/KcqK9nDV7EIeUwQgCQM4Xbe5AUmMkWrvibtckJlD5XW', NULL, 'USER', 1, 0, '7NSLEWGuPQc0LMqRaE0djbHda0Rf01bfloruUhXbKrqwvdl67KdBZyiyEQar', 0, '2017-09-03 15:23:20', '2017-10-31 22:50:43', NULL),
(56, 'ramoscharity', 'Ramos', 'ramos@charity.com', '$2y$10$cWgLTqdwp5krEL3PzmaQ6u./SpJfqsHLUJe1gmEFbsZeRFJLbB9r6', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-09-03 15:26:13', '2017-09-03 15:26:13', NULL),
(57, 'hetaltest2017090401', 'hetal jariwala', 'hetal2017090401@gmail.com', '$2y$10$g/iKCuCjPrzoxDVOEqc4fuuijtiyEJmh0oMzHnOB9r0vHk3ALi0qm', NULL, 'USER', 1, 0, NULL, 0, '2017-09-05 02:48:05', '2017-09-05 02:48:05', NULL),
(58, 'milantest1', 'test1', 'milantest1@gmail.com', '$2y$10$.MMeq0dJnBnRmXn8X4z3DOYXbTvDbUYG4a8f2k6ESAL6rRD/DN5SC', NULL, 'USER', 1, 0, NULL, 0, '2017-09-05 21:34:41', '2017-09-05 21:34:41', NULL),
(59, 'charity1', 'c', 'c@gmail.com', '$2y$10$QNhgFbtFl3CLerFDuQFMBuEwzIHPcxatlhPUFPIz5pgpuZP9sRrBG', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-09-05 21:39:51', '2017-09-05 21:39:51', NULL),
(60, 'montreal', 'hetaljariwala', 'hetal.h.jariwala05@gmail.com', '$2y$10$ZTO3jZevzC/BTwEUfasfR.RKNIFdz.PPINyg1FX7TJQ/THfdBZ2Vu', NULL, 'USER', 1, 0, NULL, 0, '2017-09-12 02:24:08', '2017-09-12 02:24:08', NULL),
(61, 'valmikuser', 'valmik', 'valmik@gmail.com', '$2y$10$Gb6F8mlcdbfRx.TVzHFfQOfn5JKhKxC4o0kiOLehpi8TUpa1P1DYa', NULL, 'USER', 1, 0, NULL, 0, '2017-09-12 09:08:19', '2017-09-12 09:08:19', NULL),
(62, 'tusharcharity', 'tushar', 'tushar@gmail.com', '$2y$10$xtjVdp0XKFUlYayXNXelN.hvRA.uRcmstakN1NRcMvq6cg6Zm8vu.', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-09-12 09:14:00', '2017-09-12 09:14:00', NULL),
(63, 'testuser10', 'testuser10', 'testuser10@gmail.com', '$2y$10$GpyZoZpKoB3UKGW.8iDoee/lHp0I7lCr7V7LFT6xIYbMmDcpKBXbq', NULL, 'USER', 1, 0, NULL, 0, '2017-09-12 11:40:46', '2017-09-12 11:40:46', NULL),
(64, 'charity01', 'test', 'test@nomaoln.com', '$2y$10$BR/EiazAqpqmlJnw6LDzhOcZTPQOmxZ0.j15twq9nI5JfyMiMJhVq', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-09-12 12:08:55', '2017-09-12 12:08:55', NULL),
(65, 'johndoe', 'john doe1', 'john@nomail.com', '$2y$10$NDGvTnMD/TjqYSQ4QsLRyeEPh9ZCSJjwgc42NA8Pdq8ngzjWaJOq6', NULL, 'USER', 1, 0, 'wvgwNkQYP3AAFFNlilOA6v7FZ5VAFUzEY0lVnJ5Fqf7lgwfvUykGXgBv8aMf', 0, '2017-09-12 19:50:23', '2017-11-02 14:31:12', NULL),
(66, 'jeandoe', 'jean doe', 'jean@nomail.com', '$2y$10$Y5p3Q866k8adrCZaviPNwO972R5OXrwAJ3ZhXlwSkaMgedDUX7/U2', NULL, 'USER', 1, 0, NULL, 0, '2017-09-12 19:54:41', '2017-09-12 19:54:41', NULL),
(67, 'amydoe', 'Amy Dow', 'amydoe@nomail.com', '$2y$10$M1TjBBCv5XnsbhHHHC7bU.nkksrv7AHGvoN31dLAPNEiLRCJy3mRW', NULL, 'USER', 1, 0, NULL, 0, '2017-09-18 07:30:18', '2017-09-18 07:30:18', NULL),
(68, 'Griezman', 'Antonio Griezman', 'griezman@mail.com', '$2y$10$6ROa7cac8pky77T9YLFzFe/fXNGSIey1bQfRu0met//fo.BdyOc/C', NULL, 'USER', 1, 0, NULL, 0, '2017-09-20 00:11:54', '2017-09-20 00:11:54', NULL),
(69, 'Braga', 'Braga', 'braga@mail.com', '$2y$10$220FEEPKdUCt2VST7TuaGuSuc4.OtVyrjTBDaM4izlopxoNjzvYl6', NULL, 'USER', 1, 0, NULL, 0, '2017-09-20 00:19:42', '2017-09-20 00:19:42', NULL),
(70, 'alicedoe', 'alice doe', 'alicedoe@gmail.com', '$2y$10$N.yJWckQhEdK9PZtfoxeK.xfJSKWNFnPlM0iIarpl8hKxZ.bnfmRu', NULL, 'USER', 1, 0, NULL, 0, '2017-09-20 10:14:51', '2017-09-20 10:14:51', NULL),
(71, 'Ahmedabad', 'Andhjan Mandal', 'amb@mail.com', '$2y$10$.AvB/nbHdcUKBvDL1m095.GN.Jj59k1mQvWZeiEGVTDnuhxSbyFxG', NULL, 'CHARITY', 1, 0, NULL, 309940, '2017-09-23 13:18:14', '2017-10-28 01:07:27', NULL),
(72, 'testqwe', 'qwer', 'qwe@mail.com', '$2y$10$t9mGrYTdEI166TNvcC4QWezvHGu0ie5zSdLF6BsQsuXzT35yXrmYi', NULL, 'CHARITY', 1, 0, NULL, 0, '2017-09-23 18:53:15', '2017-09-23 18:53:15', NULL),
(73, 'healthfirst', 'Health First', 'healthfirst@gmail.com', '$2y$10$I0Gq4TJrySzMTKfP0hhiXeY1/MZ9yMzTOYW0jOs/1tFn5KvH9Piv2', NULL, 'CHARITY', 1, 0, 'XoS0FiNKJxmCvBQqPnxIRbShsiaz4CEWDWoQ5uIhrb9MICmq7Uimfbo4dMY7', 0, '2017-09-24 06:54:03', '2017-10-29 00:35:53', NULL),
(74, 'newone', 'New One', 'new@mail.com', '$2y$10$DmMnkyDNtP6Bb2WDDJMxtuDXdHle329rg9pVxPLTOOlpneWriKksC', NULL, 'USER', 1, 0, NULL, 0, '2017-10-15 00:47:28', '2017-10-15 00:47:28', NULL),
(75, 'mikedoe', 'Mike Doe', 'mikedow@nomail.con', '$2y$10$TcteSwtuVsPTitITmPefEuw0TQhlYA2Q.r3r1wW5MF02v1KZDXHmK', NULL, 'USER', 1, 0, NULL, 0, '2017-10-16 03:23:23', '2017-10-16 03:23:23', NULL),
(76, 'd0247', 'Dhaval Purohit', 'd@d.com', '$2y$10$WjbIgVA8xJIekmLg1YFEWOC0jiJ2quhs28IhyqEn4ao9xvXiXNlBW', NULL, 'USER', 1, 0, NULL, 0, '2017-10-16 15:33:12', '2017-10-16 15:33:12', NULL),
(77, 'c0247', 'D Charity Firm', 'c@c.com', '$2y$10$94v.glOSqyedT4qEq0u0rObBcGypQM.849jR00AFC/C..Ub.u1nz6', NULL, 'CHARITY', 0, 0, NULL, 0, '2017-10-16 15:36:58', '2017-10-16 15:36:58', NULL),
(78, 'bjpforindia', 'BJP', 'bjp@mail.com', '$2y$10$MFI1OXZ40V40St.u9B0WCe.GRkenXsDOy0C/4H.jxY3/mpZojfCMi', NULL, 'CHARITY', 0, 0, NULL, 0, '2017-10-26 00:43:06', '2017-10-26 00:43:06', NULL),
(79, 'johnroe', 'John Roe', 'johnroe@gmail.com', '$2y$10$DX6ViDiqYn8Sa8/pVbMup.GbUklwv7/pKjyYUEPBcgrj/XBGiPWOC', NULL, 'USER', 1, 0, NULL, 0, '2017-10-26 06:05:07', '2017-10-26 06:05:07', NULL),
(80, 'bjpforindia1', 'BJP', 'bjp1@mail.com', '$2y$10$t7ltevyPeZb5efHOK9y1AuUKQxtL8RAYHdgLIoTQWC4Iq8Qsoibay', NULL, 'CHARITY', 0, 0, NULL, 0, '2017-10-26 22:49:18', '2017-10-26 22:49:18', NULL),
(81, 'childhelp', 'Children Help', 'childhel@nomail.com', '$2y$10$cVo9.893S5VnRHKQsIDPduUyEWbNp/NO8qbmw4AbvHYBOBAviNj6a', NULL, 'CHARITY', 0, 0, NULL, 0, '2017-10-27 02:54:24', '2017-10-27 03:25:48', NULL),
(82, 'jigo123', 'jigo', 'jigo@mail.com', '$2y$10$CrSqzzp/cFNGCwq.gmR9ZOx.Vaz6HM2Lr52QKhwnZJtvqcyg4Ke6y', NULL, 'USER', 1, 0, NULL, 0, '2017-10-30 00:10:12', '2017-10-30 00:10:12', NULL),
(83, 'hetaljariwala', 'Hetal Jariwala', 'jhetal_89@yahoo.in', '$2y$10$Ab9Q1kj5E7mVOa/8CmijUerhj7OF97OXD0mYSt599WZcX5VMtPkaG', NULL, 'USER', 1, 0, NULL, 0, '2017-10-30 01:50:01', '2017-10-30 22:50:20', NULL),
(84, 'cary123', 'Cary Tinnin', 'cary@nomail.com', '$2y$10$LGD98pons9miOWZ5C4TwWOMO5QVthr.ztoObiTq5rKgHnL7FJ4D6m', NULL, 'USER', 1, 0, NULL, 0, '2017-10-30 22:33:46', '2017-10-30 22:33:46', NULL),
(85, 'Lily123', 'Lily shah', 'lily@nomail.com', '$2y$10$pt.b6Nvwex2zwh2GPwhqqOjh22k.EHZTYKG1OkQJrMUNvx2IUXAe2', NULL, 'USER', 1, 0, NULL, 0, '2017-10-30 22:34:58', '2017-10-30 22:34:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads_categories`
--
ALTER TABLE `ads_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_masters`
--
ALTER TABLE `ads_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_surveys`
--
ALTER TABLE `ads_surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_surveys_ads_id_foreign` (`ads_id`);

--
-- Indexes for table `charity_cat_rels`
--
ALTER TABLE `charity_cat_rels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charity_categories`
--
ALTER TABLE `charity_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charity_details`
--
ALTER TABLE `charity_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charity_validations`
--
ALTER TABLE `charity_validations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charity_validations_countries_id_foreign` (`countries_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logged_devices`
--
ALTER TABLE `logged_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_media`
--
ALTER TABLE `post_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_media_post_id_foreign` (`post_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinces_countries_id_foreign` (`countries_id`);

--
-- Indexes for table `spotlight_videos`
--
ALTER TABLE `spotlight_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_answers`
--
ALTER TABLE `survey_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survey_answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survey_questions_survey_id_foreign` (`survey_id`);

--
-- Indexes for table `user_charity_point_transaction`
--
ALTER TABLE `user_charity_point_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_followers`
--
ALTER TABLE `user_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_serveys`
--
ALTER TABLE `user_serveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads_categories`
--
ALTER TABLE `ads_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ads_masters`
--
ALTER TABLE `ads_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ads_surveys`
--
ALTER TABLE `ads_surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `charity_cat_rels`
--
ALTER TABLE `charity_cat_rels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `charity_categories`
--
ALTER TABLE `charity_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `charity_details`
--
ALTER TABLE `charity_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `charity_validations`
--
ALTER TABLE `charity_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `logged_devices`
--
ALTER TABLE `logged_devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `post_media`
--
ALTER TABLE `post_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `spotlight_videos`
--
ALTER TABLE `spotlight_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `survey_answers`
--
ALTER TABLE `survey_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_charity_point_transaction`
--
ALTER TABLE `user_charity_point_transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `user_followers`
--
ALTER TABLE `user_followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `user_posts`
--
ALTER TABLE `user_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `user_serveys`
--
ALTER TABLE `user_serveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads_surveys`
--
ALTER TABLE `ads_surveys`
  ADD CONSTRAINT `ads_surveys_ads_id_foreign` FOREIGN KEY (`ads_id`) REFERENCES `ads_masters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `charity_validations`
--
ALTER TABLE `charity_validations`
  ADD CONSTRAINT `charity_validations_countries_id_foreign` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `user_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `user_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_media`
--
ALTER TABLE `post_media`
  ADD CONSTRAINT `post_media_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `user_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_countries_id_foreign` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `survey_answers`
--
ALTER TABLE `survey_answers`
  ADD CONSTRAINT `survey_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `survey_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD CONSTRAINT `survey_questions_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `ads_surveys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"reservation\",\"table\":\"rooms\"},{\"db\":\"reservation\",\"table\":\"bookings\"},{\"db\":\"reservation\",\"table\":\"users\"},{\"db\":\"reservation\",\"table\":\"room_types\"},{\"db\":\"mywebsite\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-11-02 22:21:23', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `reservation`
--
CREATE DATABASE IF NOT EXISTS `reservation` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `reservation`;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_time` varchar(11) NOT NULL,
  `end_time` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `room_id`, `date`, `start_time`, `end_time`, `status`) VALUES
(5, 1, 1, '2018-06-28', '09:00', '10:00', 0),
(6, 1, 1, '2018-06-28', '09:00', '10:00', 0),
(7, 1, 1, '2018-06-28', '09:00', '10:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`) VALUES
(1, 'Teaching Rooms'),
(2, 'Labs'),
(3, 'Conference Rooms');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `start_time` varchar(5) NOT NULL,
  `end_time` varchar(5) NOT NULL,
  `booking_interval` int(11) NOT NULL,
  `booking_capacity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `type_id`, `name`, `start_time`, `end_time`, `booking_interval`, `booking_capacity`, `status`, `created_by`) VALUES
(1, 1, 'TR-01', '09:00', '17:00', 60, 1, 1, 3),
(2, 1, 'TR-02', '09:00', '17:00', 60, 1, 1, 3),
(3, 2, 'LB-01', '09:00', '23:00', 30, 50, 1, 3),
(4, 2, 'LB-05', '09:00', '23:00', 60, 100, 1, 3),
(5, 3, 'CONF-01', '09:00', '18:00', 60, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`) VALUES
(1, 'Jay Geeth', 'jgpwick@live.com', 'inseproject', 0, 1),
(2, 'Kashif', 'Rizwee', 'inseproject', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
