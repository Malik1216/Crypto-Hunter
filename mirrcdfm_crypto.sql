-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2022 at 02:32 PM
-- Server version: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mirrcdfm_crypto`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `token_2fa` varchar(250) DEFAULT NULL,
  `token_2fa_expiry` varchar(244) DEFAULT NULL,
  `dashboard_style` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(233) DEFAULT NULL,
  `acnt_type_active` varchar(233) DEFAULT NULL,
  `account_verify` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `act_session` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstName`, `lastName`, `email`, `phone`, `token_2fa`, `token_2fa_expiry`, `dashboard_style`, `password`, `remember_token`, `acnt_type_active`, `account_verify`, `status`, `act_session`, `type`, `created_at`, `updated_at`) VALUES
(1, 'frank', 'james', 'super@happ.com', '33444', NULL, NULL, 'dark', '$2y$10$0pt7cxhs5APGN506Lu3u2OMAROINcLnUnPqnkfI..3WS3pjOhrnSK', '7vAtG6kITRcc1TowApOKdnTI1KSjne164xInausSPK1nVJUpcrWUhGufTUqW', 'active', NULL, 'active', NULL, 'Super Admin', '0000-00-00 00:00:00', '2022-01-24 14:22:44'),
(2, 'Testere', 'tester', 'admin@happ.com', '009999334', NULL, NULL, 'dark', '$2y$10$0pt7cxhs5APGN506Lu3u2OMAROINcLnUnPqnkfI..3WS3pjOhrnSK', 'pnCA5Ue9Dunpqv6GHgjK3wJCqa2skL49ugW0YoLoQBVYonrMyZ9pYg76V7jE', 'active', NULL, 'active', NULL, 'Admin', '2020-08-03 12:05:14', '2020-08-20 09:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `agent` varchar(20) NOT NULL,
  `total_refered` varchar(20) NOT NULL DEFAULT '0',
  `total_activated` varchar(20) DEFAULT '0',
  `earnings` varchar(20) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `symbol`, `category`, `created_at`, `updated_at`) VALUES
(1, 'bitcoin', 'BTC', 'Cryptocurrency', '2020-05-06 13:16:23', '2020-05-06 13:19:44'),
(3, 'etherium', 'ETH', 'Cryptocurrency', '2020-05-06 14:55:59', '2020-05-06 14:55:59'),
(4, 'Ripple', 'XRP', 'Cryptocurrency', '2020-05-12 11:14:57', '2020-05-12 11:14:57'),
(5, 'Litcoin', 'LTC', 'Select', '2020-05-12 11:15:09', '2020-05-12 11:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(255) NOT NULL,
  `ref_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `ref_key`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, 'SMsJr1', 'Why People Choice Crypto 2 Hunter', '1- We Have a team of professional Expert Which Trade on Their Experties and Study Market Fundamental , Technical and Have a Acess of Inside news About Market So We are in Profit Always.\r\n2-Many People Say How You Give The Huge Profit So Answer Is Simple if you a knowledge About World Largest Market Ocrypto , stocks and Forex So this Profit is Not a big Deal \r\nWe Show You some Previous Results of Crypto Market \r\nPrice Growth of Top cryptocurrencies 2021 to 2022\r\ni) BTC up 62% (your 1$ into 62$)\r\nii) ETH up 400% (your 10$ into 400$)\r\niii) BNB up 1277% (your 10$ convert into 1277$)\r\niv)SOl up 10500% (your 10$ convert into 10500$)\r\nv) ADA up 625%  (your 10$ into 625$)\r\nvi) LUNA up 138005 (your 10$ into 13800$) \r\nits a result of some coin our Expert Trade on these coin and generate a huge Profit for Clients', '2020-08-22 11:13:00', '2022-01-15 20:40:14'),
(6, 'toe3Ew', 'Trade in the Moment', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:29:36', '2020-08-22 11:29:36'),
(7, 'jJwh78', 'We process withdrawal request Promptly', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:30:22', '2020-08-22 11:30:22'),
(8, 'SLxaB2', 'Invest in the future', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:30:55', '2020-08-22 11:30:55'),
(9, 'BkP8pH', 'Trade on the Go', 'Trading on the go has be simplified and easy to go', '2020-08-22 11:31:38', '2020-08-22 11:31:38'),
(10, 'W6gTBN', 'Buy,sell,trade,invest has been simplified', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:31:55', '2020-08-22 11:31:55'),
(11, 'anvs8c', 'About', 'online trade is your no1 cryptocurrency investment portfolio management system', '2020-08-22 11:32:29', '2020-08-22 11:32:29'),
(12, 'epJ4LI', 'Our Mission and Goal', 'Our Mission is in 2022 Create a Network in 50 countries and 1Million user from All World.\r\nand create 500000 trader', '2020-08-22 11:33:32', '2022-01-16 21:19:38'),
(13, '5hbB6X', 'REGISTER COMPANY', 'The official registered company in the UK. CRYPTO2FUTURE LIMITED, Company Number : #138684420', '2020-08-22 11:33:55', '2022-01-16 21:35:38'),
(14, 'Zrhm3I', 'WE ARE PROFESSIONAL', 'Our Professional Expert Have a Experience in Trading Of 8 -10 Year So generate a Huge Profit on the Basis Of experience', '2020-08-22 11:34:11', '2022-01-15 21:49:12'),
(15, 'yTKhlt', 'Experience & Experties', 'Our Expert Have a experience of  8-10 year .So We use our Experience with Experties to generate a huge profit.', '2020-08-22 11:34:26', '2022-01-15 22:10:44'),
(16, 'u0Ervr', 'OUR SERVICES', 'Why you should Choose us', '2020-08-22 11:34:56', '2020-08-22 11:34:56'),
(17, 'Dwu6Bv', 'STABLE AND PROFITABLE', 'Our Expert Trade In This Market On the basis Of Proper Study on Technical and Fundamental  of Market and Also Follow Risk Management  So Our Trade are Always in Profit.', '2020-08-22 11:35:22', '2022-01-15 20:48:08'),
(18, 'eMo1d2', 'INSTANT AND SECURE WITHDRAWALS', 'All payouts are automated. We use fast and fault-tolerant server solutions. There are no delays in our system.', '2020-08-22 11:35:42', '2022-01-16 21:38:04'),
(19, 'kEJPm3', 'REFERRALS PROGRAM', 'By Joining the Referals program  You Get High Commissions and Life time salaries and Incentives and Promotions', '2020-08-22 11:35:59', '2022-01-16 21:49:14'),
(20, 'bBSnFV', 'Trading Education', 'Our Expert Provides a Weekly class Through Webinar ,Youtube Livestreem , facebook page and Telegram chanel', '2020-08-22 11:36:17', '2022-01-15 21:22:00'),
(21, 'DUK9pc', '24/7 CUSTOMER SUPPORT', 'Our Support is Live 24/7 Send us a message and we\'ll respond as soon as possible', '2020-08-22 11:36:31', '2022-01-15 21:24:46'),
(22, 'VaeiMW', 'ULTIMATE SECURITY', 'Our experts Trade to follow Risk management and when you follow Risk mangement  then Your capital funds Are Always  Secure', '2020-08-22 11:36:49', '2022-01-15 21:31:53'),
(23, 'vr6Xw0', 'OUR INVESTMENT PLAN', 'Choose how you want to invest with us', '2020-08-22 11:37:43', '2020-08-22 11:37:43'),
(25, 'OtEicb', 'LATEST TRANSACTIONS', 'We place a very high value on transparency. At you can monitor and follow all deposits and payouts of any user in real-time at any time.', '2020-08-22 11:38:06', '2022-01-16 21:41:24'),
(26, 'OLZt1I', 'OUR TRADING EXPERIENCE', 'Since 2013 We Start Trading and after 3Year of experience  in Forex ,stocks and Crypto Market in 2018 We start to mange the funds of banks like Virgin Money VMUK. L and Secure Trust STBS etc , small institutes  like Abbey DLD College and  Al-Maktoum College of Higher Education , and different companies which are working on small Level like  Better & Smarter at ZapMeta and Antiques Trade. and Now finely we start a Work in whole world our vision is to spread the knowledge about digital market like forex ,stock ,and crypto market and generate the profit for public', '2020-08-22 11:38:56', '2022-01-15 19:47:41'),
(27, 'U7zpEj', 'WE ACCEPT', 'we accept', '2020-08-22 11:39:43', '2022-01-22 18:28:13'),
(29, '9sNF7G', 'CONTACT US', 'If you have any problems or additional questions, you can contact us by e-mail.', '2020-08-22 11:40:06', '2022-01-16 21:44:49'),
(30, '52GPRA', 'ADDRESS', 'One Churchill place , London E14 5HN , UK', '2020-08-22 11:40:19', '2022-01-15 11:00:24'),
(31, '0EXbji', 'PHONE NUMBER', '+44 87 3409 1163', '2020-08-22 11:40:36', '2022-01-15 11:16:35'),
(32, 'HLgyaQ', 'jacicacrypto@gmail.com', 'Welcome to Crypto Hunter Support \r\nPlease Leave your Queries \r\nWe will Response as Soon as Possible', '2020-08-22 11:41:14', '2022-01-15 10:34:15'),
(33, 'ETsdbc', 'Website Description in Footer', 'Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.', '2020-08-22 11:42:05', '2020-08-22 11:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `cp_transactions`
--

CREATE TABLE `cp_transactions` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `amount_paid` varchar(100) DEFAULT NULL,
  `user_plan` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `user_tele_id` varchar(200) DEFAULT NULL,
  `amount1` varchar(100) DEFAULT NULL,
  `amount2` varchar(100) DEFAULT NULL,
  `currency1` varchar(100) DEFAULT NULL,
  `currency2` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_text` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cp_p_key` varchar(255) DEFAULT NULL,
  `cp_pv_key` varchar(255) DEFAULT NULL,
  `cp_m_id` varchar(255) DEFAULT NULL,
  `cp_ipn_secret` varchar(255) DEFAULT NULL,
  `cp_debug_email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_transactions`
--

INSERT INTO `cp_transactions` (`id`, `txn_id`, `item_name`, `item_number`, `amount_paid`, `user_plan`, `user_id`, `user_tele_id`, `amount1`, `amount2`, `currency1`, `currency2`, `status`, `status_text`, `type`, `created_at`, `updated_at`, `cp_p_key`, `cp_pv_key`, `cp_m_id`, `cp_ipn_secret`, `cp_debug_email`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2018-08-05 00:00:00', '2022-01-12 12:37:20', '2571592c42770beda62fff58fb57baaf7b2f9067a73936b51fa353a08905169b', 'aD8876afd15D8C8f6a38ad747D1E3BaD20743660e1e7307dC2dE682B7474fDF0', 'ed72d7bb05b6c32b6b47ef42e33222dc', 'CMahar$1020', 'shahnawazmahar777@gmail.com'),
(565, 'CPGA54JTRWT1D6SLAF6DXMK4QP', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'USDT', NULL, NULL, 'Deposit', '2022-01-12 18:35:22', '2022-01-12 18:35:22', NULL, NULL, NULL, NULL, NULL),
(566, 'CPGA68GHSZNVC4G7C8IBEBVIDT', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'USDT', NULL, NULL, 'Deposit', '2022-01-12 18:39:46', '2022-01-12 18:39:46', NULL, NULL, NULL, NULL, NULL),
(567, 'CPGA2VK6CHVALNQCMHKVDJ6FNS', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 18:39:58', '2022-01-12 18:39:58', NULL, NULL, NULL, NULL, NULL),
(568, 'CPGA5MXIUQVCGDK1DBU7JOUJF7', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 18:48:48', '2022-01-12 18:48:48', NULL, NULL, NULL, NULL, NULL),
(569, 'CPGA18GPSK5KTY9P5JCI5Z74XI', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'USDT', NULL, NULL, 'Deposit', '2022-01-12 18:49:07', '2022-01-12 18:49:07', NULL, NULL, NULL, NULL, NULL),
(570, 'CPGA4EVGN87IVBXNK3YG8HLR1P', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 18:55:31', '2022-01-12 18:55:31', NULL, NULL, NULL, NULL, NULL),
(571, 'CPGA3D3QYBTUNZ8PZRPVVL4GZ9', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 18:55:39', '2022-01-12 18:55:39', NULL, NULL, NULL, NULL, NULL),
(572, 'CPGA3LVHYY7YOVIHIJML7WG3OS', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 19:08:13', '2022-01-12 19:08:13', NULL, NULL, NULL, NULL, NULL),
(573, 'CPGA7EBJXFUFHNIHEE7SXRSAGR', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 19:09:59', '2022-01-12 19:09:59', NULL, NULL, NULL, NULL, NULL),
(574, 'CPGA0O6U6XPQ34JYZMZHHQH0C9', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 19:15:14', '2022-01-12 19:15:14', NULL, NULL, NULL, NULL, NULL),
(575, 'CPGA2HVQ0GMMCAEY03VIBLAW1E', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 19:18:00', '2022-01-12 19:18:00', NULL, NULL, NULL, NULL, NULL),
(576, 'CPGA69W9NAOWLQW5BS4UGBZ2HJ', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 19:28:49', '2022-01-12 19:28:49', NULL, NULL, NULL, NULL, NULL),
(577, 'CPGA3USWDC32HYO4DO0VLZKH0X', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 19:29:36', '2022-01-12 19:29:36', NULL, NULL, NULL, NULL, NULL),
(578, 'CPGA3NOA2ON2GLXESC5S9HLZ0H', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 19:41:19', '2022-01-12 19:41:19', NULL, NULL, NULL, NULL, NULL),
(579, 'CPGA0N5ZFXOAREEY0RKEZVUUZM', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-12 19:51:39', '2022-01-12 19:51:39', NULL, NULL, NULL, NULL, NULL),
(580, 'CPGA54SFPHP8A1LU42N2NRECBQ', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-13 12:48:54', '2022-01-13 12:48:54', NULL, NULL, NULL, NULL, NULL),
(581, 'CPGA0AKVKQ1TENOLQK2KN5TA7P', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'USDT', NULL, NULL, 'Deposit', '2022-01-13 12:49:14', '2022-01-13 12:49:14', NULL, NULL, NULL, NULL, NULL),
(582, 'CPGA0OTR3T53XMTL7DGVRPM584', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-13 13:47:18', '2022-01-13 13:47:18', NULL, NULL, NULL, NULL, NULL),
(583, 'CPGA2JGRUL1JZWRUB0SZLDPS8D', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-13 13:53:16', '2022-01-13 13:53:16', NULL, NULL, NULL, NULL, NULL),
(584, 'CPGA1SCY2FQFRHPUZV40CRT3C8', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-13 13:56:38', '2022-01-13 13:56:38', NULL, NULL, NULL, NULL, NULL),
(585, 'CPGA0BFCSCQXTBOBNFK4YGCMBR', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-13 13:57:35', '2022-01-13 13:57:35', NULL, NULL, NULL, NULL, NULL),
(586, 'CPGA1YSCTDYEDEFPOI9KH2EFX2', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-13 13:57:52', '2022-01-13 13:57:52', NULL, NULL, NULL, NULL, NULL),
(587, 'CPGA2KLZZV8I8KYZ61HELGO23N', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-13 14:02:52', '2022-01-13 14:02:52', NULL, NULL, NULL, NULL, NULL),
(588, 'CPGA4I2OVHJAXJ0HZFMJGQNY3G', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 02:56:19', '2022-01-14 02:56:19', NULL, NULL, NULL, NULL, NULL),
(589, 'CPGA10QJ6AKSPE8GHTEMOXYXXC', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:07:04', '2022-01-14 03:07:04', NULL, NULL, NULL, NULL, NULL),
(590, 'CPGA4HIS7TQK6XADRM3DMDWPRE', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:10:31', '2022-01-14 03:10:31', NULL, NULL, NULL, NULL, NULL),
(591, 'CPGA0JZJOEPV4WHECHFQMW5QKO', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:11:08', '2022-01-14 03:11:08', NULL, NULL, NULL, NULL, NULL),
(592, 'CPGA2Q6KOA9P7VA7XHHHVQGJP7', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:13:41', '2022-01-14 03:13:41', NULL, NULL, NULL, NULL, NULL),
(593, 'CPGA1DNOTQLVHSQ0PZVKDVQXZX', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:15:40', '2022-01-14 03:15:40', NULL, NULL, NULL, NULL, NULL),
(594, 'CPGA7UFP7MGKXVUUAZOLIYEOKC', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:39:22', '2022-01-14 03:39:22', NULL, NULL, NULL, NULL, NULL),
(595, 'CPGA2LOTXUE5JZUWAJSQACLUDK', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:43:55', '2022-01-14 03:43:55', NULL, NULL, NULL, NULL, NULL),
(596, 'CPGA02CL13ZIY80TSKF4MUTHIN', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:44:50', '2022-01-14 03:44:50', NULL, NULL, NULL, NULL, NULL),
(597, 'CPGA5SPQHN1TJH7VHW8X1NSIF2', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:51:17', '2022-01-14 03:51:17', NULL, NULL, NULL, NULL, NULL),
(598, 'CPGA1CXTEA5OVGDDDUKASNQOWF', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:52:32', '2022-01-14 03:52:32', NULL, NULL, NULL, NULL, NULL),
(599, 'CPGA0OWHBOPB6XZFAJ7GVOMYQR', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:52:38', '2022-01-14 03:52:38', NULL, NULL, NULL, NULL, NULL),
(600, 'CPGA2VZ4AKJDTK6FSUN7OWH2HZ', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:53:06', '2022-01-14 03:53:06', NULL, NULL, NULL, NULL, NULL),
(601, 'CPGA6YAKSGPUJCGL1VRII0ETUH', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:53:12', '2022-01-14 03:53:12', NULL, NULL, NULL, NULL, NULL),
(602, 'CPGA6XJ8LH2P9N35QIYRA0DXKE', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:55:09', '2022-01-14 03:55:09', NULL, NULL, NULL, NULL, NULL),
(603, 'CPGA2NCPQCK5JFQ0BYAVAMPCW1', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:56:37', '2022-01-14 03:56:37', NULL, NULL, NULL, NULL, NULL),
(604, 'CPGA4YCWDGEBQVFW6Z7JNMQ0Y7', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:57:26', '2022-01-14 03:57:26', NULL, NULL, NULL, NULL, NULL),
(605, 'CPGA1F3RCQHNO7HGVFJAE4MZWN', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 03:57:52', '2022-01-14 03:57:52', NULL, NULL, NULL, NULL, NULL),
(606, 'CPGA0QAUZJBVQ7GJOM2SU5DVBS', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 04:00:30', '2022-01-14 04:00:30', NULL, NULL, NULL, NULL, NULL),
(607, 'CPGA4HJMKLOPKQFZMUSSVBNXFL', 'Account deposit', NULL, '100', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 04:02:04', '2022-01-14 04:02:04', NULL, NULL, NULL, NULL, NULL),
(608, 'CPGA2OPCTYKVT8BN72TCQA5PBA', 'Account deposit', NULL, '1000', NULL, '1', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-14 07:57:23', '2022-01-14 07:57:23', NULL, NULL, NULL, NULL, NULL),
(609, 'CPGA2W2KWTX6KQXTQU5XPHAZVA', 'Account deposit', NULL, '100', NULL, '36', NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', '2022-01-23 18:03:26', '2022-01-23 18:03:26', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(200) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `plan` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `txn_id`, `user`, `uname`, `amount`, `payment_mode`, `plan`, `status`, `proof`, `created_at`, `updated_at`) VALUES
(1, NULL, '25', NULL, '10', 'USDT.TRC20', '23', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-13 22:18:36', '2022-01-13 22:19:49'),
(13, NULL, '26', NULL, '1200', 'Bitcoin', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-17 01:28:59', '2022-01-17 01:29:24'),
(3, NULL, '26', NULL, '5500', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:01:37', '2022-01-15 02:02:27'),
(4, NULL, '27', NULL, '7450', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:06:09', '2022-01-15 02:06:55'),
(5, NULL, '28', NULL, '3200', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:13:45', '2022-01-15 02:14:37'),
(6, NULL, '29', NULL, '2720', 'Bitcoin', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:17:50', '2022-01-15 02:34:59'),
(7, NULL, '30', NULL, '1125', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:20:39', '2022-01-15 02:35:00'),
(8, NULL, '31', NULL, '850', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:23:05', '2022-01-15 02:35:01'),
(9, NULL, '32', NULL, '14517', 'Bitcoin', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:25:21', '2022-01-15 02:35:03'),
(10, NULL, '33', NULL, '20100', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:27:41', '2022-01-15 02:35:04'),
(11, NULL, '34', NULL, '29500', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:29:48', '2022-01-15 02:35:07'),
(12, NULL, '35', NULL, '13200', 'Bitcoin', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-15 02:31:38', '2022-01-15 02:35:16'),
(14, NULL, '33', NULL, '3500', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-17 01:31:09', '2022-01-17 01:35:04'),
(15, NULL, '28', NULL, '4500', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-17 01:32:06', '2022-01-17 01:35:12'),
(16, NULL, '29', NULL, '6000', 'Bitcoin', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-17 01:33:52', '2022-01-17 01:34:55'),
(17, NULL, '31', NULL, '6700', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-17 01:36:25', '2022-01-17 01:38:22'),
(18, NULL, '34', NULL, '7000', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-17 01:37:26', '2022-01-17 01:38:29'),
(19, NULL, '27', NULL, '2740', 'USDT.TRC20', '0', 'Processed', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', '2022-01-17 01:40:04', '2022-01-17 01:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(255) NOT NULL,
  `ref_key` varchar(255) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `ref_key`, `question`, `answer`, `updated_at`, `created_at`) VALUES
(12, 'OMPQE5', 'How can i do a withdrawal', 'You can withdraw money from bank and not in the system , thank you.', '2020-08-22 10:09:27', '2020-08-17 15:24:03'),
(13, 'j2MnAV', 'How can i deposit money', 'To deposit, you need two things, one is the duet', '2020-08-17 15:30:30', '2020-08-17 15:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(255) NOT NULL,
  `ref_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `ref_key`, `title`, `description`, `img_path`, `created_at`, `updated_at`) VALUES
(3, '57VnOE', 'Slider1', 'This is carosel 1', 'slide1.jpeg', '2020-08-23 12:08:38', '2022-01-20 11:15:57'),
(4, 'dC6ZaA', 'Slider2', 'This is slider 2', 'slide2.jpeg', '2020-08-23 12:09:00', '2022-01-20 11:42:24'),
(5, '9kHash', 'Slider3', 'This is slider 3', '3.jpg', '2020-08-23 12:09:16', '2020-08-23 12:09:16'),
(6, 'CcW52g', 'Slider4', 'This is Slider 4', '4.jpg', '2020-08-23 12:09:38', '2020-08-23 12:09:38'),
(7, '96i7xH', 'Slider5', 'This is slider 5', '5.jpg', '2020-08-23 12:09:55', '2020-08-23 12:09:55'),
(8, 'DPd1Kn', 'Testimonial 1', 'Testimonial 1', 'testimonial-1.jpg', '2020-08-23 12:24:52', '2020-08-23 12:24:52'),
(9, 'ZqCgDz', 'Testimonial 2', 'Testimonial 2', 'testimonial-2.jpg', '2020-08-23 12:25:07', '2020-08-23 12:25:07'),
(10, 'zNNAgD', 'Testimonial 3', 'Testimonial 3', 'testimonial-3.jpg', '2020-08-23 12:25:22', '2020-08-23 12:25:22'),
(11, '2v0Ut5', 'Testimonial 4', 'Testimonial 4', 'testimonial-4.jpg', '2020-08-23 12:25:37', '2020-08-23 12:25:37'),
(12, '4Rp9Wz', 'Testimonial 5', 'Testimonial 5', 'testimonial-5.jpg', '2020-08-23 12:25:54', '2020-08-23 12:25:54'),
(13, '33Z8z3', 'Live Trade Results', 'our Live Trade Weekly Results', 'bitcoin.jpg', '2022-01-15 20:03:51', '2022-01-15 20:03:51'),
(14, 'F8dWj2', 'Statisctis Live', 'Their is Live Stattisctis', 'investing-in-stocks-for-beginners.jpg', '2022-01-21 13:37:59', '2022-01-21 13:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int(11) NOT NULL,
  `market` varchar(50) DEFAULT NULL,
  `base_curr` varchar(50) DEFAULT NULL,
  `quote_curr` varchar(50) DEFAULT NULL,
  `current_pair` varchar(50) DEFAULT NULL,
  `default_mark` varchar(50) DEFAULT NULL,
  `commission_type` varchar(50) DEFAULT NULL,
  `commission_fee` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `market`, `base_curr`, `quote_curr`, `current_pair`, `default_mark`, `commission_type`, `commission_fee`, `created_at`, `updated_at`) VALUES
(1, 'Cryptocurrency', 'ETH', 'BTC', NULL, NULL, NULL, NULL, '2020-04-25 18:35:26', '2020-05-06 13:15:06'),
(3, 'Cryptocurrency', 'LTC', 'BTC', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
(4, 'Cryptocurrency', 'BTC', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
(5, 'Cryptocurrency', 'ETH', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
(6, 'Cryptocurrency', 'LTC', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
(7, 'Forex', 'EUR', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
(8, 'Forex', 'GBP', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42');

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
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mt4details`
--

CREATE TABLE `mt4details` (
  `id` int(11) NOT NULL,
  `client_id` int(255) DEFAULT NULL,
  `mt4_id` varchar(255) DEFAULT NULL,
  `mt4_password` varchar(200) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `leverage` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mt4details`
--

INSERT INTO `mt4details` (`id`, `client_id`, `mt4_id`, `mt4_password`, `type`, `account_type`, `currency`, `leverage`, `server`, `options`, `duration`, `created_at`, `updated_at`, `start_date`, `end_date`, `status`) VALUES
(1, 1, '86345679', 'test123456', NULL, 'ECN', 'USD', '1:1000', 'ForexTimeFXTM-FXTM ECN', NULL, 'Quaterly', '2020-08-17 16:00:33', '2020-08-17 16:00:33', NULL, NULL, 'Pending'),
(2, 18, '92637846', 'test123456', NULL, 'ECN', 'USD', '1:1000', 'ForexTimeFXTM-FXTM ECN', NULL, 'Quaterly', '2020-08-18 19:34:19', '2020-08-18 19:34:19', NULL, NULL, 'Pending'),
(3, 25, '78636464', 'mfartf#ttr54', NULL, 'ecn', 'usd', '1;100', 'Mtfxg', NULL, 'Monthly', '2022-01-15 03:30:39', '2022-01-15 03:30:39', NULL, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('Rejoice2017@gmail.com', '1a637489097377dbf21c8a7a7ba973d63a25f2f4ef2c483edb62f104a2182f1c', '2017-02-26 23:29:47'),
('rialebrume@gmail.com', 'd53c6a25865107ac7400f22436e6d37da6721bcdd36e9a67b86afee9c9fc9b7d', '2017-03-09 18:19:02'),
('dynamixng@gmail.com', '$2y$10$nel4xzM2Dvii86czm4YQxuH0nzdDUximHJM3QVkkkRmky1C.48GRy', '2018-08-14 12:44:33'),
('test123@happ.com', '$2y$10$Ue8EEVYbIRIRA0EA7o1aJ.h.K5MZLyip4ZMuiSpbxsq3xUp0DN.cu', '2018-09-11 06:22:04'),
('humble5y@gmail.com', '$2y$10$IM0FlP6UaB7N1rTdGgo04elJiex9bdHYXc2K3IaLWSduq99zTUr3O', '2018-09-15 22:48:32'),
('ranawaseemsajid@outlook.com', '$2y$10$VRnunT6BauJemm2mKqp/N.yXb8C5HHOJGnBOSZYdyAj1otmP.y1Ru', '2018-09-25 21:53:33'),
('test1234@happ.com', '$2y$10$.rvGmEIKCMxwCTMW2Ftlcec77Lv1hUjz/qH/aGdS4tbRVmQKzhVqS', '2018-10-11 08:58:43'),
('johnsteiner530@gmail.com', '$2y$10$V5QsjmZUSymjpNSTIfMTluwTn4bBKE34hKQSu7NZ58unUHRQganH6', '2019-10-17 12:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `w_limit` varchar(50) DEFAULT NULL,
  `price` varchar(20) NOT NULL,
  `min_price` varchar(20) DEFAULT NULL,
  `max_price` varchar(20) DEFAULT NULL,
  `minr` varchar(50) NOT NULL,
  `maxr` varchar(50) NOT NULL,
  `gift` varchar(50) NOT NULL,
  `expected_return` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `increment_interval` varchar(20) NOT NULL,
  `increment_type` varchar(20) NOT NULL,
  `increment_amount` varchar(20) DEFAULT NULL,
  `expiration` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `w_limit`, `price`, `min_price`, `max_price`, `minr`, `maxr`, `gift`, `expected_return`, `type`, `created_at`, `updated_at`, `increment_interval`, `increment_type`, `increment_amount`, `expiration`) VALUES
(23, 'Student package', '100', '10', '10', '500', '100%', '150%', '100% Capital Return in The End of Contract', NULL, 'Main', '2019-11-20 21:29:06', '2022-01-15 22:12:50', 'Daily', 'Percentage', '1%', 'Six months'),
(24, 'Premium package', '300', '50', '50', '5000', '120%', '200%', '100% Capital Return in The End of Contract', NULL, 'Main', '2019-11-22 00:44:46', '2022-01-22 17:59:05', 'Weekly', 'Fixed', '1%', 'Six months'),
(25, 'standard package', NULL, '500', '500', '100000', '250%', '300%', '100% capital Return in the End of Contract', NULL, 'Main', '2022-01-13 15:54:07', '2022-01-22 18:00:32', 'Weekly', 'Fixed', '1%', 'One year');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `total_investors` int(50) NOT NULL DEFAULT 0,
  `active_investors` int(50) NOT NULL DEFAULT 0,
  `contracted_companies` int(50) NOT NULL DEFAULT 0,
  `currency` varchar(100) DEFAULT NULL,
  `s_currency` varchar(20) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `eth_address` varchar(200) DEFAULT NULL,
  `btc_address` varchar(200) DEFAULT NULL,
  `usdt_address` varchar(150) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `s_s_k` varchar(200) DEFAULT NULL,
  `s_p_k` varchar(200) DEFAULT NULL,
  `pp_cs` varchar(200) DEFAULT NULL,
  `pp_ci` varchar(200) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `site_title` varchar(100) NOT NULL,
  `site_address` varchar(100) DEFAULT NULL,
  `bot_link` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `trade_mode` varchar(20) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `referral_commission` varchar(20) DEFAULT NULL,
  `referral_commission1` varchar(10) DEFAULT NULL,
  `referral_commission2` varchar(10) DEFAULT NULL,
  `referral_commission3` varchar(10) DEFAULT NULL,
  `referral_commission4` varchar(10) DEFAULT NULL,
  `referral_commission5` varchar(10) DEFAULT NULL,
  `signup_bonus` varchar(20) DEFAULT NULL,
  `files_key` varchar(50) DEFAULT NULL,
  `tawk_to` text DEFAULT NULL,
  `enable_2fa` varchar(20) NOT NULL DEFAULT 'no',
  `enable_kyc` varchar(20) NOT NULL DEFAULT 'no',
  `enable_verification` varchar(255) NOT NULL DEFAULT 'true',
  `withdrawal_option` varchar(20) NOT NULL DEFAULT 'auto',
  `dashboard_option` varchar(20) DEFAULT NULL,
  `site_preference` varchar(20) DEFAULT NULL,
  `bot_activate` varchar(20) DEFAULT NULL,
  `telegram_token` varchar(255) DEFAULT NULL,
  `bot_group_chat` varchar(200) DEFAULT NULL,
  `bot_channel` varchar(200) DEFAULT NULL,
  `site_colour` varchar(50) DEFAULT NULL,
  `commission_type` varchar(50) DEFAULT NULL,
  `commission_fee` varchar(50) DEFAULT NULL,
  `monthlyfee` varchar(50) DEFAULT NULL,
  `quaterlyfee` varchar(50) DEFAULT NULL,
  `yearlyfee` varchar(50) DEFAULT NULL,
  `update` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `description`, `total_investors`, `active_investors`, `contracted_companies`, `currency`, `s_currency`, `bank_name`, `account_name`, `account_number`, `eth_address`, `btc_address`, `usdt_address`, `ltc_address`, `payment_mode`, `s_s_k`, `s_p_k`, `pp_cs`, `pp_ci`, `keywords`, `site_title`, `site_address`, `bot_link`, `logo`, `favicon`, `trade_mode`, `contact_email`, `referral_commission`, `referral_commission1`, `referral_commission2`, `referral_commission3`, `referral_commission4`, `referral_commission5`, `signup_bonus`, `files_key`, `tawk_to`, `enable_2fa`, `enable_kyc`, `enable_verification`, `withdrawal_option`, `dashboard_option`, `site_preference`, `bot_activate`, `telegram_token`, `bot_group_chat`, `bot_channel`, `site_colour`, `commission_type`, `commission_fee`, `monthlyfee`, `quaterlyfee`, `yearlyfee`, `update`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'Crypto Hunter', 'Dreams can only be succeeded if you work towards them. Even building wealth is no different. Online Trade is here to provide a fast lane of online investment,  risk management and advisory services to both institutional and individual investor around the globe as we are', 7763, 3001, 5, '$', 'USD', 'First International Bank PLC', 'Admin Account name', '2123343493659', NULL, '38ByvrNHrtQeuQErvvpXjgiNXjGjmeB17a', 'TAEFH4hnKTkC9AcCS2oZiu2RLNp4R7V7dk', NULL, '2', 'sk_test_BQokikJOvBiI2HlWgH4olfQ2', 'pk_test_6pRNASCoBOKtIshFeQd4XMUh', NULL, NULL, 'make money online, portfolio management stock, forex, cryptocurrency me pooo', 'Global Online Financial Trading', 'https://crypto2hunter.com', 'https://t.me/onlinetradeofficialbotdd', 'crypto_hunter.png', 'crypto_fav.png', 'on', 'Support@Cryptohunter.com', '10', '6', '3', '2', '1', '1', '0', 'OT_MiHZA', 'hbhlhahihlhlhuAJHO347T8UGQ0U[I9ghp', 'no', 'yes', 'true', 'auto', 'Online Trade', 'Web dashboard only', 'false', 'jhlhgohghgoygynouyoq', 'https://t.me/joinchat/IXw1_UrqB788hd-9Qff', 'https://t.me/OT_Official_channeldd', NULL, 'Percentage', '3', '0', '0', '0', 'It can only get better! Welcome to Crypto Hunter. Hope you are amazed.', '2017-02-27 01:10:03', '2022-01-22 18:21:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` int(11) NOT NULL,
  `trading_deposit` varchar(20) NOT NULL,
  `trading_days` varchar(20) NOT NULL,
  `forex` varchar(20) NOT NULL,
  `crypto` varchar(20) NOT NULL,
  `stock` varchar(20) NOT NULL,
  `profit` varchar(20) NOT NULL,
  `wprofit` varchar(20) NOT NULL,
  `drawdown` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `trading_deposit`, `trading_days`, `forex`, `crypto`, `stock`, `profit`, `wprofit`, `drawdown`, `created_at`, `updated_at`) VALUES
(1, '10000', '15', '0.35%', '0.8%', '0.3%', '1%', '2%', '15%', '2022-01-21 12:33:39', '2022-01-21 19:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `testimonys`
--

CREATE TABLE `testimonys` (
  `id` int(255) NOT NULL,
  `ref_key` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  `what_is_said` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonys`
--

INSERT INTO `testimonys` (`id`, `ref_key`, `name`, `position`, `what_is_said`, `picture`, `created_at`, `updated_at`) VALUES
(3, 'cXv7R7', 'Sara Wilsson', 'Investor', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-2.jpg', '2020-08-18 10:01:35', '2020-08-23 12:26:57'),
(7, 'WXUcna', 'Sara Wilssons', 'principal', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-1.jpg', '2020-08-22 09:14:28', '2020-08-23 12:27:12'),
(8, 'afgcHb', 'Sara Wilssons', 'System user', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-3.jpg', '2020-08-23 12:27:36', '2020-08-23 12:27:36'),
(9, 'UBBZkd', 'Sara Wilssons', 'System user', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-4.jpg', '2020-08-23 12:27:52', '2020-08-23 12:27:52'),
(10, 'MgDO3G', 'Sara Wilssons', 'System user', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-5.jpg', '2020-08-23 12:28:16', '2020-08-23 12:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `tp_transactions`
--

CREATE TABLE `tp_transactions` (
  `id` int(11) NOT NULL,
  `plan` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tp_transactions`
--

INSERT INTO `tp_transactions` (`id`, `plan`, `user`, `amount`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Starter', '1', '10', 'ROI', '2020-08-07 14:15:40', '2020-08-07 14:15:40'),
(2, 'Starter', '1', '100', 'Bonus', '2020-08-07 14:16:03', '2020-08-07 14:16:03'),
(3, 'Credit', '1', '50', 'Profit', '2020-08-07 14:28:15', '2020-08-07 14:28:15'),
(4, 'Credit', '1', '10', 'Ref_Bonus', '2020-08-07 14:30:41', '2020-08-07 14:30:41'),
(5, 'Credit reversal', '1', '3', 'Profit', '2020-08-07 14:31:23', '2020-08-07 14:31:23'),
(6, 'Premium', '1', '1000', 'Plan purchase', '2022-01-12 19:12:01', '2022-01-12 19:12:01'),
(7, 'Starter', '25', '10', 'Plan purchase', '2022-01-13 16:26:49', '2022-01-13 16:26:49'),
(8, 'Starter', '1', '10', 'Plan purchase', '2022-01-14 02:42:04', '2022-01-14 02:42:04'),
(9, 'Credit', '35', '500', 'Profit', '2022-01-14 21:46:34', '2022-01-14 21:46:34'),
(10, 'Credit reversal', '25', '1000', 'Profit', '2022-01-14 21:47:40', '2022-01-14 21:47:40'),
(11, 'Credit', '25', '2000', 'Profit', '2022-01-14 21:48:43', '2022-01-14 21:48:43'),
(12, 'standard', '25', '1000', 'ROI', '2022-01-14 21:51:33', '2022-01-14 21:51:33'),
(13, 'standard', '25', '1500', 'Bonus', '2022-01-14 21:52:58', '2022-01-14 21:52:58'),
(14, 'Starter', '25', '5', 'ROI', '2022-01-14 21:57:30', '2022-01-14 21:57:30'),
(15, 'Starter', '25', '15300', 'Bonus', '2022-01-14 21:58:31', '2022-01-14 21:58:31'),
(16, 'Credit', '25', '5000', 'Ref_Bonus', '2022-01-14 22:02:16', '2022-01-14 22:02:16'),
(17, 'Credit', '25', '20000', 'Profit', '2022-01-14 22:04:20', '2022-01-14 22:04:20'),
(18, 'Credit reversal', '25', '40300', 'Profit', '2022-01-14 22:05:20', '2022-01-14 22:05:20'),
(19, 'Starter', '25', '5', 'ROI', '2022-01-14 22:07:36', '2022-01-14 22:07:36'),
(20, 'Credit', '25', '14378', 'Ref_Bonus', '2022-01-14 22:08:54', '2022-01-14 22:08:54'),
(21, 'Credit', '25', '3546', 'Bonus', '2022-01-14 22:10:03', '2022-01-14 22:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE `userlogs` (
  `id` int(11) NOT NULL,
  `user` int(20) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`id`, `user`, `ip`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'login', '2019-11-27 20:45:09', '2019-11-27 20:45:09'),
(2, 1, '127.0.0.1', 'login', '2019-11-27 21:56:54', '2019-11-27 21:56:54'),
(4, 10, '127.0.0.1', 'login', '2019-11-27 22:16:34', '2019-11-27 22:16:34'),
(5, NULL, '127.0.0.1', 'Register', '2019-11-27 22:17:59', '2019-11-27 22:17:59'),
(6, NULL, '127.0.0.1', 'Register', '2019-11-27 22:18:48', '2019-11-27 22:18:48'),
(7, NULL, '127.0.0.1', 'Register', '2019-11-27 23:24:46', '2019-11-27 23:24:46'),
(8, 15, '127.0.0.1', 'Register', '2019-11-28 01:42:45', '2019-11-28 01:42:45'),
(9, 16, '127.0.0.1', 'Register', '2019-11-28 01:44:09', '2019-11-28 01:44:09'),
(10, 1, '127.0.0.1', 'login', '2019-11-28 17:22:11', '2019-11-28 17:22:11'),
(11, 8, '127.0.0.1', 'login', '2019-11-28 18:36:36', '2019-11-28 18:36:36'),
(12, 1, '127.0.0.1', 'login', '2019-11-28 22:05:00', '2019-11-28 22:05:00'),
(13, 8, '127.0.0.1', 'login', '2019-12-02 17:45:59', '2019-12-02 17:45:59'),
(14, 1, '127.0.0.1', 'login', '2019-12-02 17:47:59', '2019-12-02 17:47:59'),
(15, 8, '127.0.0.1', 'login', '2019-12-02 22:29:35', '2019-12-02 22:29:35'),
(16, 1, '127.0.0.1', 'login', '2019-12-02 22:41:09', '2019-12-02 22:41:09'),
(17, 1, '127.0.0.1', 'login', '2019-12-03 00:58:56', '2019-12-03 00:58:56'),
(18, 1, '127.0.0.1', 'login', '2019-12-03 17:23:26', '2019-12-03 17:23:26'),
(19, 1, '127.0.0.1', 'login', '2019-12-03 23:04:24', '2019-12-03 23:04:24'),
(20, 8, '127.0.0.1', 'login', '2019-12-03 23:24:33', '2019-12-03 23:24:33'),
(21, 8, '127.0.0.1', 'login', '2019-12-04 00:43:41', '2019-12-04 00:43:41'),
(22, 8, '127.0.0.1', 'login', '2019-12-04 01:11:05', '2019-12-04 01:11:05'),
(23, 8, '127.0.0.1', 'login', '2019-12-04 17:35:59', '2019-12-04 17:35:59'),
(24, 1, '127.0.0.1', 'login', '2019-12-04 17:37:26', '2019-12-04 17:37:26'),
(25, 8, '127.0.0.1', 'login', '2019-12-06 01:15:49', '2019-12-06 01:15:49'),
(26, 8, '127.0.0.1', 'login', '2019-12-06 17:53:29', '2019-12-06 17:53:29'),
(27, 8, '127.0.0.1', 'login', '2019-12-06 20:21:45', '2019-12-06 20:21:45'),
(28, 1, '127.0.0.1', 'login', '2019-12-07 00:20:35', '2019-12-07 00:20:35'),
(29, 8, '127.0.0.1', 'login', '2019-12-07 01:02:42', '2019-12-07 01:02:42'),
(30, 1, '127.0.0.1', 'login', '2019-12-07 16:58:46', '2019-12-07 16:58:46'),
(31, 1, '127.0.0.1', 'login', '2019-12-13 00:14:13', '2019-12-13 00:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `tele_id` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `adress` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `areacode` varchar(50) DEFAULT NULL,
  `token_2fa` varchar(255) DEFAULT NULL,
  `token_2fa_expiry` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `dashboard_style` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `acnt_type_active` varchar(255) DEFAULT 'no',
  `account_no` varchar(50) DEFAULT NULL,
  `btc_address` varchar(255) DEFAULT NULL,
  `eth_address` varchar(255) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `plan` varchar(25) DEFAULT '0',
  `user_plan` varchar(20) DEFAULT NULL,
  `promo_plan` varchar(20) NOT NULL DEFAULT '0',
  `confirmed_plan` varchar(25) DEFAULT '0',
  `inv_duration` varchar(100) DEFAULT NULL,
  `account_bal` varchar(20) NOT NULL DEFAULT '0',
  `roi` varchar(50) NOT NULL DEFAULT '0',
  `bonus` varchar(50) DEFAULT NULL,
  `ref_bonus` varchar(20) NOT NULL DEFAULT '0',
  `bonus_matched` varchar(20) DEFAULT NULL,
  `recieve_ref_bonus` varchar(11) NOT NULL DEFAULT 'no',
  `signup_bonus` varchar(20) DEFAULT NULL,
  `auto_trade` varchar(255) DEFAULT NULL,
  `bonus_released` varchar(20) NOT NULL DEFAULT '0',
  `ref_by` varchar(20) DEFAULT NULL,
  `ref_link` varchar(100) DEFAULT NULL,
  `bot_ref_link` varchar(200) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `account_verify` varchar(20) DEFAULT NULL,
  `entered_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT 'blocked',
  `act_session` varchar(255) DEFAULT NULL,
  `trade_mode` varchar(20) NOT NULL DEFAULT 'on',
  `type` varchar(25) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `tele_id`, `name`, `l_name`, `dob`, `adress`, `email`, `phone_number`, `areacode`, `token_2fa`, `token_2fa_expiry`, `photo`, `dashboard_style`, `password`, `remember_token`, `bank_name`, `account_name`, `acnt_type_active`, `account_no`, `btc_address`, `eth_address`, `ltc_address`, `plan`, `user_plan`, `promo_plan`, `confirmed_plan`, `inv_duration`, `account_bal`, `roi`, `bonus`, `ref_bonus`, `bonus_matched`, `recieve_ref_bonus`, `signup_bonus`, `auto_trade`, `bonus_released`, `ref_by`, `ref_link`, `bot_ref_link`, `id_card`, `passport`, `account_verify`, `entered_at`, `activated_at`, `last_growth`, `status`, `act_session`, `trade_mode`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Tester1', 'Test', '2020-07-21', NULL, 'test12345@happ.com', '098567899964', '', '93669', '2022-01-22 19:34:50', 'logo02.png', 'light', '$2y$10$0pt7cxhs5APGN506Lu3u2OMAROINcLnUnPqnkfI..3WS3pjOhrnSK', 'nNTaZVtdpXK4FUejBK5LLIUgi5NTKL0dFHUUFaB67ykJI9vKFAJcuXQhNCA8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23', '6', '0', '0', NULL, '232.06837057072335', '217', '10', '235', NULL, 'no', 'received', 'yes', '0', NULL, 'yoursite.com/ref/1', NULL, 'new update.png', 'new update.png', 'Rejected', '2022-01-14 02:42:04', NULL, NULL, 'active', NULL, 'on', '1', '2019-11-08 14:54:06', '2022-01-22 19:34:50'),
(18, NULL, 'BS Test', 'Test2', NULL, NULL, 'test1234@happ.com', '087656789876', NULL, NULL, '2020-08-18 14:22:42', 'brynamics logo.PNG', 'dark', '$2y$10$y/twEG66kJTzUD1M79w2Eua3InMTW3BOTp6aQPPDFYWDlFn/zhsr2', 'KxCVSVEhxIR8hswApnnhGQoWxU0bRdS1tw9SeUD5OF9QpVdz4lPrrmg9sQ0C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24', '3', '0', '0', NULL, '25.299999999999955', '2000', '183', '25.3', NULL, 'yes', 'received', NULL, '0', NULL, 'yoursiteurl.com/trade/ref/18', NULL, NULL, NULL, NULL, '2020-08-06 12:18:27', NULL, NULL, 'active', 'J6O6fR3NjswzzJD9MDuP649pWorIxcSTdkNbVR4W', 'off', '1', '2020-01-24 10:29:31', '2020-08-18 14:23:46'),
(24, NULL, 'Frank James', 'Tamunokuro', NULL, NULL, 'tj.frankiee@gmail.com', '0818207277', NULL, NULL, '2022-01-04 16:28:26', NULL, NULL, '$2y$10$0pt7cxhs5APGN506Lu3u2OMAROINcLnUnPqnkfI..3WS3pjOhrnSK', NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '20', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://onlinetrade.brynamics.xyz/augupd/ref/24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'vsXCLn3tKHCSbDBcEh9Su0J3cMDQ7KkDBGjqfIBC', 'on', '0', '2022-01-04 13:34:14', '2022-01-04 16:28:26'),
(25, NULL, 'Ahmad', 'Ali', NULL, NULL, 'amjedmuhammad098@gmail.com', '+923037424443', NULL, NULL, '2022-01-24 16:49:48', NULL, NULL, '$2y$10$2QYnynN9mYmCMlmHSMCW6uIma.cxL87PX1QvISjPVgl30cpn6MQ7a', 'ivEdsGYggjaTNgMGKKBDuUJioDRiBT1D0Zcz49AJeLb0kk1SWODTf7UsQbx6', NULL, NULL, 'no', NULL, '1BbeyvmzeMvwq6h8sXpFB5RtSstKGK8n7o', NULL, NULL, '23', '5', '0', '0', NULL, '17916.8', '5', '3546', '14378', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto.beetrade.finance/public//ref/25', NULL, 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', 'Screenshot_2022-01-13-22-15-11-00_ee1cec40dcf6eb3919ecbfc5d87e6719.jpg', 'Verified', '2022-01-13 16:26:49', NULL, NULL, 'active', '1zN3k4QOiicmEOm4Vaeoq31cBXCWrKOHfdxltYth', 'on', '0', '2022-01-13 16:16:47', '2022-01-24 16:49:48'),
(26, NULL, 'john', 'bilz', NULL, NULL, 'johnbilz453@gmail.com', '+175858758654', NULL, NULL, '2022-01-16 20:28:13', NULL, NULL, '$2y$10$en0fOZdaRWM/lKdJUlgUr.lC.4Q0JcDZGniNP1JlWSCxUWJr38BwS', 'eWNA09yWiptu3lVy6NGr1i11Yapt9XISoHetQludZI0er3TOH48yNhXPSYTU', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '6720', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'LGYaYFApc9wTZFSB7WRvfDDwZdhJn7gjT6T0GoV7', 'on', '0', '2022-01-14 21:00:49', '2022-01-16 20:29:19'),
(27, NULL, 'jacica', 'johsz', NULL, NULL, 'jaccicajohnz652@gmail.com', '+654798246654', NULL, NULL, '2022-01-16 20:39:30', NULL, NULL, '$2y$10$PztmqnuhyCGONnmDJ1LsU.te1R6065fVJgNH8JfdmvU7C6X6J1/6K', '5h5CPeMmPurp1ER78VY9cecd1i5DsvcuKKRMZtil3rPzqAzs5Q4nqD8s2Z5j', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '10210', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'sjN9oW0bKglCDETNZG0L4LjuLmkP8UX0rEvYEHy3', 'on', '0', '2022-01-14 21:05:26', '2022-01-16 20:40:48'),
(28, NULL, 'Michael', 'Linda', NULL, NULL, 'michalinda06@gmail.com', '+175858780567', NULL, NULL, '2022-01-16 20:31:37', NULL, NULL, '$2y$10$zUJX9pv7YE./UXxCT1MIXuGjAFuqg0u2EHCqAMBwKmgXzXnrWfJBa', 'NZNoDccreg19u90xKG7cvLq5tsTgvsSyfUGQPIaRM54NJniQJZYZ90epBeCB', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '7720', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'XtxvqVXKzHr5vEmcJzLeBdqTjQSykm76000HOSiy', 'on', '0', '2022-01-14 21:13:01', '2022-01-16 20:35:07'),
(29, NULL, 'william', 'Elizabeth', NULL, NULL, 'walliamelisz653@gmail.com', '+16543958654', NULL, NULL, '2022-01-16 20:33:12', NULL, NULL, '$2y$10$yKq3TcZpminXMcPARCKK7effTvdCTz7zDUIcLY4b/QbHA4VhCd5iW', 'VYtuEwIshRoxFU8HCYHR9xRpTaLVWHCUVk6yILRUkYr1zaDsM5CXKS6YBdBc', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '16900', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'aBTPhjQUkR3ZJS9bkXEeBKvH9qjDBNaASEh36cRm', 'on', '0', '2022-01-14 21:16:57', '2022-01-16 20:34:50'),
(30, NULL, 'Richard', 'susan', NULL, NULL, 'richird125@gmail.com', '+16543790554', NULL, NULL, NULL, NULL, NULL, '$2y$10$lYPw8I0cMp3gfXs1yAEMxO.hXxhphIs1cXms6Y/Ju5hlNYjVoFeUi', 'm8Ak4kEI5v63YtLJGKYFePEI5nO5h9p8GVSvpYpwukBxLEvyNHWBmCXvFnE1', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '1145', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '6UWOF5fjwuk5JrbFX21ipy60Mg3v6asj71ARSneg', 'on', '0', '2022-01-14 21:19:56', '2022-01-14 21:34:55'),
(31, NULL, 'thomas', 'sarah', NULL, NULL, 'thomas533@gmail.com', '+65472778854', NULL, NULL, '2022-01-16 20:35:50', NULL, NULL, '$2y$10$PGmSPqEJhaEAdCcrbmemmObcaut71b6uBRFrc56YnGJ/VAyAWh7Pi', 'QuKq1ro98JiCuA3H4Y7YcnE981S9FFudfz6ZqThJJ65dAbBXlHYPjAfzuTuH', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '7570', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'oXnpdF3OcdxckjJn8RgBWpj43AzB8g7jtaeYgDox', 'on', '0', '2022-01-14 21:22:22', '2022-01-16 20:38:17'),
(32, NULL, 'matthew', 'Betty', NULL, NULL, 'matthew543@gmail.com', '+158780567', NULL, NULL, NULL, NULL, NULL, '$2y$10$WNeQ/AVxSgE.L3nXQ7eClu1sFwmSLTD1mDgAgBFW3UeaAEvMpftvW', '2z1mnW3gqont1p2eE6t0lGSXNssyj8latIIsZKCHY8KqQQyKzh4nu0xJNZRi', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '14537', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'xjy4yyGtHXD79U8AMTJk7wToXOIucY4a8jwzR1rI', 'on', '0', '2022-01-14 21:24:41', '2022-01-14 21:34:59'),
(33, NULL, 'Mark', 'Sandra', NULL, NULL, 'mark5434@gmail.com', '+593648568', NULL, NULL, '2022-01-16 20:30:09', NULL, NULL, '$2y$10$Kl4yze9HL5YNJFHb.BeXke2gjRZhdBIcrGvT8.cViF9txNH9XXf6G', 'UI887Au27Ss7esU4G93q21lUX1FtfkSdRTGqUnuoipMvnwRdOoG9pIfWXmjk', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '23620', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'p51kd4155knSG7aICxAXxR30Cs2Nn3uS8kHtLPPV', 'on', '0', '2022-01-14 21:27:02', '2022-01-16 20:34:59'),
(34, NULL, 'Paul', 'emily', NULL, NULL, 'paol4345@gmail.com', '+17586456654', NULL, NULL, '2022-01-16 20:36:56', NULL, NULL, '$2y$10$zFdNYhH6A3Pv0MiqQtAwseDxysgTA4qP/yzuUxtFWHYORzNDyNLta', 'gMCs6xctbGdUGw8JL0Cf1VxsdZYohjcBDQ7FmfnskE3hxG0G3mmX8y6aLebs', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '36520', '0', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'QU9nzeEhNL6lX8LK6Wb4J5OiGVvaT6MkWbD0PzYa', 'on', '0', '2022-01-14 21:29:11', '2022-01-16 20:38:25'),
(35, NULL, 'kevin', 'brian', NULL, NULL, 'kevin5353@gmail.com', '+1758768567', NULL, NULL, NULL, NULL, NULL, '$2y$10$CRVj.sXoVq876fkeIbP.xe883KRvZi6SEv.1xIKXhO7iGgmostzP.', 'S7nDVFEupQxlDVBiF1Qs3bo1b9fXuuPkiCgCEl9f4eAutsg7r5wof9fu6qv8', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '13720', '500', '20', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'CWB6ahW15U1unxCGvXL2kH24Ui3ROwtrSMkEmINY', 'on', '0', '2022-01-14 21:31:02', '2022-01-14 21:46:34'),
(36, NULL, 'Junaid', 'Iqbal', NULL, NULL, 'im.junaidiqbal.00@gmail.com', '+923209070597', NULL, NULL, '2022-01-24 14:28:00', NULL, NULL, '$2y$10$.c2TOvJ3KASb3IkfQZ5oteGR3bGLTDNAi5dRm4uFDf8J/geZT4ULy', 'Jj0gizhWakZLMozTSLc4QkpQFTugz7GMUMTBrNk8FY82mwKjHIedtA3Uwmmi', NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '0', '0', '0', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'uWWGiVHwtAXdWI6pwKDZjdiyTS2uq63FCLw9eGkQ', 'on', '0', '2022-01-23 16:47:48', '2022-01-24 14:28:00'),
(37, NULL, 'Mehboob', 'Hassan', NULL, NULL, 'mehboob@tcpaas.com', '3404305100', NULL, NULL, '2022-01-24 19:21:16', NULL, NULL, '$2y$10$.3ysoG6/mz69A/leOvy.0ux543eY36MK3RnZnpWW4OMums3LWRRTG', NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '0', '0', '0', '0', NULL, 'no', 'received', NULL, '0', NULL, 'https://crypto2hunter.com/ref/37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'ZCOeQ3q4KOjFht8DbqYYAI8saMeH72ZNSBxP8ozP', 'on', '0', '2022-01-24 19:20:38', '2022-01-24 19:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` int(11) NOT NULL,
  `plan` varchar(20) DEFAULT NULL,
  `w_limit` varchar(50) DEFAULT NULL,
  `amount` varchar(20) DEFAULT '0',
  `user` varchar(20) DEFAULT NULL,
  `active` varchar(20) DEFAULT NULL,
  `inv_duration` varchar(50) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_plans`
--

INSERT INTO `user_plans` (`id`, `plan`, `w_limit`, `amount`, `user`, `active`, `inv_duration`, `expire_date`, `activated_at`, `last_growth`, `created_at`, `updated_at`) VALUES
(1, '24', NULL, '1000', '18', 'yes', 'Three months', '2020-09-08 11:23:11', '2020-06-09 11:23:11', '2020-06-09 11:23:11', '2020-06-09 11:23:11', '2020-06-09 11:23:11'),
(2, '24', NULL, '1000', '18', 'yes', 'Three months', '2020-09-09 11:45:53', '2020-06-10 11:45:53', '2020-06-10 11:45:53', '2020-06-10 11:45:53', '2020-06-10 11:45:53'),
(3, '24', NULL, '1000', '18', 'yes', 'Three months', NULL, '2020-08-06 12:18:27', '2020-08-06 12:18:27', '2020-08-06 12:18:27', '2020-08-06 12:18:27'),
(4, '24', NULL, '1000', '1', 'yes', 'Three months', NULL, '2022-01-12 19:12:01', '2022-01-12 19:12:01', '2022-01-12 19:12:01', '2022-01-12 19:12:01'),
(5, '23', NULL, '10', '25', 'yes', 'Six months', NULL, '2022-01-13 16:26:49', '2022-01-13 16:26:49', '2022-01-13 16:26:49', '2022-01-13 16:26:49'),
(6, '23', NULL, '10', '1', 'yes', 'Six months', NULL, '2022-01-14 02:42:04', '2022-01-14 02:42:04', '2022-01-14 02:42:04', '2022-01-14 02:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `wdmethods`
--

CREATE TABLE `wdmethods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `minimum` varchar(50) NOT NULL,
  `maximum` varchar(50) NOT NULL,
  `charges_fixed` varchar(50) NOT NULL,
  `charges_percentage` varchar(50) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wdmethods`
--

INSERT INTO `wdmethods` (`id`, `name`, `minimum`, `maximum`, `charges_fixed`, `charges_percentage`, `duration`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin', '10', '20000', '2', '2', 'instant', 'withdrawal', 'enabled', '2019-11-09 09:05:00', '2019-11-09 09:05:23'),
(2, 'Ethereum', '5', '10000', '2', '2', 'instant', 'withdrawal', 'enabled', '2019-11-09 09:11:21', '2019-11-09 09:11:21'),
(5, 'Bank transfer', '100', '100000', '2', '2', '2 working days', 'withdrawal', 'enabled', '2019-11-09 11:36:37', '2019-11-09 11:36:37'),
(4, 'Litecoin', '10', '2', '4000', '2', '2', 'withdrawal', 'enabled', '2019-11-09 11:35:35', '2019-11-09 11:35:35'),
(6, 'Credit Card', '10', '100000', '2', '2', '2 working days', 'withdrawal', 'enabled', '2019-12-11 18:51:04', '2019-12-11 18:51:04'),
(7, 'usdt', '100', '1000', '100', '10', '2', 'withdrawal', 'enabled', '2022-01-04 13:48:21', '2022-01-04 13:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(200) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `to_deduct` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `agents` ADD FULLTEXT KEY `agent` (`agent`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_transactions`
--
ALTER TABLE `cp_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt4details`
--
ALTER TABLE `mt4details`
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
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonys`
--
ALTER TABLE `testimonys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_transactions`
--
ALTER TABLE `tp_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogs`
--
ALTER TABLE `userlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users` ADD FULLTEXT KEY `name` (`name`,`email`);
ALTER TABLE `users` ADD FULLTEXT KEY `name_2` (`name`,`l_name`,`email`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wdmethods`
--
ALTER TABLE `wdmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cp_transactions`
--
ALTER TABLE `cp_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mt4details`
--
ALTER TABLE `mt4details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonys`
--
ALTER TABLE `testimonys`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tp_transactions`
--
ALTER TABLE `tp_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userlogs`
--
ALTER TABLE `userlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wdmethods`
--
ALTER TABLE `wdmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
