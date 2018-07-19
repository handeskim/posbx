-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2018 at 11:43 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tlshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tec_categories`
--

CREATE TABLE `tec_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(100) DEFAULT 'no_image.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_categories`
--

INSERT INTO `tec_categories` (`id`, `code`, `name`, `image`) VALUES
(172, '1', 'ABL 2006', 'no_image.png'),
(173, '2', 'Atila', 'no_image.png'),
(174, '3', 'Click', 'no_image.png'),
(175, '4', 'Dream Thái', 'no_image.png'),
(176, '5', 'Dream Việt', 'no_image.png'),
(177, '6', 'Enzo', 'no_image.png'),
(178, '7', 'Exiter 150', 'no_image.png'),
(179, '8', 'Exiter 4 số', 'no_image.png'),
(180, '9', 'Exiter 5 số', 'no_image.png'),
(181, '10', 'Fox', 'no_image.png'),
(182, '11', 'Future 1', 'no_image.png'),
(183, '12', 'Future 2', 'no_image.png'),
(184, '13', 'Future Neo', 'no_image.png'),
(185, '14', 'Future R', 'no_image.png'),
(186, '15', 'Harate', 'no_image.png'),
(187, '16', 'Honda', 'no_image.png'),
(188, '17', 'Jupiter MX + V', 'no_image.png'),
(189, '18', 'Lead', 'no_image.png'),
(190, '19', 'MHC', 'no_image.png'),
(191, '20', 'Miu ô', 'no_image.png'),
(192, '21', 'Nouvo LX', 'no_image.png'),
(193, '22', 'Nouvo thường', 'no_image.png'),
(194, '23', 'Nozza', 'no_image.png'),
(195, '24', 'PCX', 'no_image.png'),
(196, '25', 'Piagio', 'no_image.png'),
(197, '26', 'Sap SYM', 'no_image.png'),
(198, '27', 'Saphia', 'no_image.png'),
(199, '28', 'SCR', 'no_image.png'),
(200, '29', 'SH - PS', 'no_image.png'),
(201, '30', 'Sirius', 'no_image.png'),
(202, '31', 'Sirius RC', 'no_image.png'),
(203, '32', 'Siriut 4T', 'no_image.png'),
(204, '33', 'Spacy', 'no_image.png'),
(205, '34', 'Spacy nhập', 'no_image.png'),
(206, '35', 'Spacy việt', 'no_image.png'),
(207, '36', 'Tauruts', 'no_image.png'),
(208, '37', 'Vision', 'no_image.png'),
(209, '38', 'Wave RSX', 'no_image.png'),
(210, '39', 'Wave S + RS', 'no_image.png'),
(211, '40', 'Wave S110', 'no_image.png'),
(212, '41', 'Wave tàu', 'no_image.png'),
(213, '42', 'Wave ZX', 'no_image.png'),
(214, '43', 'Xe ga', 'no_image.png'),
(215, '44', 'Xe ga - SYM', 'no_image.png'),
(216, '45', 'Xe ga - YA', 'no_image.png'),
(217, '46', 'Xe số', 'no_image.png'),
(218, '47', 'Xe số - Honda', 'no_image.png'),
(219, '48', 'Xe số - YA', 'no_image.png'),
(220, '49', 'Yamha', 'no_image.png'),
(221, '56', 'Piagio - LX', 'no_image.png'),
(222, '57', 'SH2006', 'no_image.png'),
(223, '58', 'SH2012', 'no_image.png'),
(224, '59', 'SH2013', 'no_image.png'),
(225, '60', 'Viva + Bets', 'no_image.png'),
(226, '52', 'ABL 125 + Lead mới', 'no_image.png'),
(227, '53', 'Exciter 4 + 5', 'no_image.png'),
(228, '55', 'Piagio - LI', 'no_image.png'),
(229, 'COMBO', 'COMBO', 'no_image.png');

-- --------------------------------------------------------

--
-- Table structure for table `tec_combo_items`
--

CREATE TABLE `tec_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `price` decimal(25,4) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_combo_items`
--

INSERT INTO `tec_combo_items` (`id`, `product_id`, `item_code`, `quantity`, `price`, `cost`) VALUES
(3, 200, 'Xemay', '1.0000', NULL, NULL),
(4, 201, 'Xemay', '1.0000', NULL, NULL),
(7, 4379, 'CO1111', '1.0000', NULL, NULL),
(8, 4380, 'CO1111', '1.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tec_customers`
--

CREATE TABLE `tec_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cf1` varchar(255) NOT NULL,
  `cf2` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_customers`
--

INSERT INTO `tec_customers` (`id`, `name`, `cf1`, `cf2`, `phone`, `email`, `store_id`) VALUES
(1, 'Walk-in Client', '', '', '012345678', 'customer@tecdiary.com', NULL),
(2, 'edfkdjkfk', '', '', '03945496594', 'kfked@gffkg.fofo', NULL),
(3, 'quân', '', '', '', '', NULL),
(4, 'quang', '', '', '', '', NULL),
(5, 'anh', '', '', '', '', NULL),
(6, 'quân', '', '', '', '', NULL),
(7, 'tuấn', 'hb', 'nadnh-32', '094374737', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tec_expenses`
--

CREATE TABLE `tec_expenses` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference` varchar(50) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_expenses`
--

INSERT INTO `tec_expenses` (`id`, `date`, `reference`, `amount`, `note`, `created_by`, `attachment`, `store_id`) VALUES
(1, '2018-05-14 01:05:00', '12', '200000.0000', 'anw uong,;;;', '1', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tec_gift_cards`
--

CREATE TABLE `tec_gift_cards` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,4) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `balance` decimal(25,4) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_gift_cards`
--

INSERT INTO `tec_gift_cards` (`id`, `date`, `card_no`, `value`, `customer_id`, `balance`, `expiry`, `created_by`, `store_id`) VALUES
(1, '2018-04-18 17:09:13', '1520 5471 6198 1521', '1000.0000', NULL, '1000.0000', NULL, 1, NULL),
(2, '2018-04-18 17:17:34', '0281 5595 6445 1508', '200000.0000', NULL, '-2241483.1000', NULL, 1, NULL),
(3, '2018-04-18 17:18:40', '0270 9457 4329 1811', '10.0000', NULL, '10.0000', NULL, 1, NULL),
(4, '2018-04-18 17:24:00', '8245 9752 0814 6909', '20000.0000', NULL, '20000.0000', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tec_groups`
--

CREATE TABLE `tec_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_groups`
--

INSERT INTO `tec_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'staff', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `tec_login_attempts`
--

CREATE TABLE `tec_login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tec_payments`
--

CREATE TABLE `tec_payments` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,4) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,4) DEFAULT '0.0000',
  `pos_balance` decimal(25,4) DEFAULT '0.0000',
  `gc_no` varchar(20) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_payments`
--

INSERT INTO `tec_payments` (`id`, `date`, `sale_id`, `customer_id`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `note`, `pos_paid`, `pos_balance`, `gc_no`, `reference`, `updated_by`, `updated_at`, `store_id`) VALUES
(23, '2018-05-14 00:50:07', 24, 3, NULL, 'cash', '', '', '', '', '', '', '725197.0000', NULL, 1, NULL, '', '725197.0000', '0.0000', '', NULL, NULL, NULL, 1),
(24, '2018-05-14 00:51:48', 25, 3, NULL, 'cash', '', '', '', '', '', '', '1280000.0000', NULL, 1, NULL, '', '1280000.0000', '0.0000', '', NULL, NULL, NULL, 1),
(25, '2018-07-02 17:17:49', 27, 3, NULL, 'cash', '', '', '', '', '', '', '320000.0000', NULL, 1, NULL, '', '320000.0000', '0.0000', '', NULL, NULL, NULL, 1),
(26, '2018-07-17 22:35:23', 28, 3, NULL, 'cash', '', '', '', '', '', '', '320000.0000', NULL, 1, NULL, 'cvvcbvn', '320000.0000', '0.0000', '', NULL, NULL, NULL, 1),
(27, '2018-07-18 00:58:07', 29, 3, NULL, 'cash', '', '', '', '', '', '', '1595000.0000', NULL, 1, NULL, 's', '1595000.0000', '0.0000', '', NULL, NULL, NULL, 3),
(28, '2018-07-18 00:59:32', 30, 3, NULL, 'cash', '', '', '', '', '', '', '320000.0000', NULL, 1, NULL, '', '320000.0000', '0.0000', '', NULL, NULL, NULL, 3),
(29, '2018-07-18 01:00:17', 31, 3, NULL, 'cash', '', '', '', '', '', '', '1662500.0000', NULL, 1, NULL, '12132424', '1662500.0000', '0.0000', '', NULL, NULL, NULL, 3),
(30, '2018-07-18 01:06:19', 32, 3, NULL, 'cash', '', '', '', '', '', '', '1211250.0000', NULL, 1, NULL, '', '1211250.0000', '0.0000', '', NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tec_printers`
--

CREATE TABLE `tec_printers` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `type` varchar(25) NOT NULL,
  `profile` varchar(25) NOT NULL,
  `char_per_line` tinyint(3) UNSIGNED DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_printers`
--

INSERT INTO `tec_printers` (`id`, `title`, `type`, `profile`, `char_per_line`, `path`, `ip_address`, `port`) VALUES
(1, 'XPrinter', 'network', 'default', 45, '', 0x3139322e3136382e312e323030, '9100');

-- --------------------------------------------------------

--
-- Table structure for table `tec_products`
--

CREATE TABLE `tec_products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` char(255) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `price` decimal(25,4) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.png',
  `tax` varchar(20) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `tax_method` tinyint(1) DEFAULT '1',
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `barcode_symbology` varchar(20) NOT NULL DEFAULT 'code39',
  `type` varchar(20) NOT NULL DEFAULT 'standard',
  `details` text,
  `alert_quantity` decimal(10,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_products`
--

INSERT INTO `tec_products` (`id`, `code`, `name`, `category_id`, `price`, `image`, `tax`, `cost`, `tax_method`, `quantity`, `barcode_symbology`, `type`, `details`, `alert_quantity`) VALUES
(1884, 'A111', 'Phớt và trục nước mát', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '8.0000', 'code39', 'standard', '', '1.0000'),
(1885, 'A112', 'Le nhiệt', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1886, 'A113', 'Dây le', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '112.0000', 'code39', 'standard', NULL, '0.0000'),
(1887, 'A114', 'Dây ăng - ten', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1888, 'A115', 'Bạc máy', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1889, 'A116', 'Phớt và trục nước mát', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1890, 'A117', 'Phớt và trục nước mát', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1891, 'A118', 'Le nhiệt', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1892, 'A119', 'Dây le', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1893, 'A120', 'Dây ăng - ten', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1894, 'A121', 'Bơm xăng', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1895, 'A122', 'Bạc máy', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1896, 'A123', 'Má đĩa', 175, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1897, 'A124', 'Má đĩa', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1898, 'A125', 'Phớt và trục nước mát', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1899, 'A126', 'Phớt và trục nước mát', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1900, 'A127', 'Le nhiệt', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1901, 'A128', 'Dây phun xăng điện tử', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1902, 'A129', 'Dây le', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1903, 'A130', 'Dây ăng - ten', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1904, 'A131', 'Bơm xăng', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1905, 'A132', 'Má đĩa', 182, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1906, 'A133', 'Phớt và trục nước mát', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1907, 'A134', 'Phớt và trục nước mát', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1908, 'A135', 'Dây phun xăng điện tử', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1909, 'A136', 'Dây le', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1910, 'A137', 'Dây ăng - ten', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1911, 'A138', 'Bơm xăng', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1912, 'A139', 'Trục két nước', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1913, 'A140', 'Phớt két nước', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1914, 'A141', 'Phay rà mặt quy lát', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1915, 'A142', 'Dây le', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1916, 'A143', 'Dây ăng - ten', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1917, 'A144', 'Bốn Sup pap', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1918, 'A145', 'Bạc máy', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1919, 'A146', 'Phớt và trục nước mát', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1920, 'A147', 'Dây phun xăng điện tử', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1921, 'A148', 'Dây le', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1922, 'A149', 'Dây ăng - ten', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1923, 'A150', 'Bơm xăng', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1924, 'A151', 'Dây phun xăng điện tử', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1925, 'A152', 'Dây le', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1926, 'A153', 'Dây ăng - ten', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1927, 'A154', 'Bơm xăng', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1928, 'A155', 'Bạc máy', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1929, 'A156', 'Phớt và trục nước mát', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1930, 'A157', 'Dây phun xăng điện tử', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1931, 'A158', 'Dây ăng - ten', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1932, 'A159', 'Bơm xăng', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1933, 'A160', 'Phớt và trục nước mát', 195, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1934, 'A161', 'Phớt và trục nước mát', 195, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1935, 'A162', 'Trục két nước', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1936, 'A163', 'Phớt và trục nước mát', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1937, 'A164', 'Phớt két nước', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1938, 'A165', 'Phay rà mặt quy lát', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1939, 'A166', 'Dây le', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1940, 'A167', 'Bốn Sup pap', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1941, 'A168', 'Phớt và trục nước mát', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1942, 'A169', 'Phớt và trục nước mát', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1943, 'A170', 'Le nhiệt', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1944, 'A171', 'Dây phun xăng điện tử', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1945, 'A172', 'Dây le', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1946, 'A173', 'Dây ăng - ten', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1947, 'A174', 'Bơm xăng', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1948, 'A175', 'Dây le', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1949, 'A176', 'Dây ăng - ten', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1950, 'A177', 'Bạc máy', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1951, 'A178', 'Dây le', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1952, 'A179', 'Dây ăng - ten', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1953, 'A180', 'Bốn Sup pap', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1954, 'A181', 'Bộ ECU điều khiển không từ', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1955, 'A182', 'Phớt và trục nước mát', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1956, 'A183', 'Phớt và trục nước mát', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1957, 'A184', 'Dây le', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1958, 'A185', 'Dây ăng - ten', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1959, 'A186', 'Bơm xăng', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1960, 'A187', 'Trục két nước', 204, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1961, 'A188', 'Phớt két nước', 204, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1962, 'A189', 'Phay rà mặt quy lát', 204, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1963, 'A190', 'Bốn Sup pap', 204, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1964, 'A191', 'Phớt và trục nước mát', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1965, 'A192', 'Le nhiệt', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1966, 'A193', 'Dây phun xăng điện tử', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1967, 'A194', 'Dây le', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1968, 'A195', 'Dây ăng - ten', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1969, 'A196', 'Bơm xăng', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1970, 'A197', 'Bộ ECU điều khiển FI', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1971, 'A198', 'Bộ ECU điều khiển có từ', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1972, 'A199', 'Phớt và trục nước mát', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1973, 'A200', 'Le nhiệt', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1974, 'A201', 'Dây phun xăng điện tử', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1975, 'A202', 'Dây le', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1976, 'A203', 'Dây ăng - ten', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1977, 'A204', 'Bơm xăng', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1978, 'A205', 'Dây le', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1979, 'A206', 'Dây ăng - ten', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1980, 'A207', 'Bạc máy', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1981, 'A208', 'Bóng táp lô', 172, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1982, 'A209', 'Bóng táp lô', 173, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1983, 'A210', 'Bóng táp lô', 174, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1984, 'A211', 'Bóng táp lô', 181, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1985, 'A212', 'Bóng táp lô', 186, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1986, 'A213', 'Bóng táp lô', 189, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1987, 'A214', 'Bóng táp lô', 191, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1988, 'A215', 'Bóng táp lô', 192, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1989, 'A216', 'Bóng táp lô', 193, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1990, 'A217', 'Bóng táp lô', 198, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1991, 'A218', 'Bóng táp lô', 199, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1992, 'A219', 'Bóng táp lô', 203, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1993, 'A220', 'Bóng táp lô', 206, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1994, 'A221', 'Bóng táp lô', 208, '10000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1995, 'A222', 'Vá xe XS', 190, '15000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1996, 'A223', 'Rửa xe', 190, '15000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1997, 'A224', 'Bóng táp lô', 196, '15000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1998, 'A225', 'Bóng táp lô', 200, '15000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(1999, 'A226', 'Bóng táp lô', 205, '15000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2000, 'A227', 'Bóng xin nhan', 172, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2001, 'A228', 'Bóng xin nhan', 173, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2002, 'A229', 'Bóng xin nhan', 174, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2003, 'A230', 'Bóng xin nhan', 181, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2004, 'A231', 'Bóng xin nhan', 186, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2005, 'A232', 'Bóng xin nhan', 189, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2006, 'A233', 'Bóng xin nhan', 191, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2007, 'A234', 'Bóng xin nhan', 192, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2008, 'A235', 'Bóng xin nhan', 193, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2009, 'A236', 'Bóng xin nhan', 198, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2010, 'A237', 'Bóng xin nhan', 199, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2011, 'A238', 'Bóng xin nhan', 203, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2012, 'A239', 'Bóng xin nhan', 206, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2013, 'A240', 'Bóng xin nhan', 208, '25000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2014, 'A241', 'Bóng hậu ( 1 quả)', 172, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2015, 'A242', 'Bóng hậu ( 1 quả)', 173, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2016, 'A243', 'Bóng hậu ( 1 quả)', 174, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2017, 'A244', 'Bóng hậu ( 1 quả)', 181, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2018, 'A245', 'Bóng hậu ( 1 quả)', 186, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2019, 'A246', 'Bóng hậu ( 1 quả)', 189, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2020, 'A247', 'Vá xe XG', 190, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2021, 'A248', 'Phớt bi bánh trước', 190, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2022, 'A249', 'Bóng hậu ( 1 quả)', 191, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2023, 'A250', 'Bóng hậu ( 1 quả)', 192, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2024, 'A251', 'Bóng hậu ( 1 quả)', 193, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2025, 'A252', 'Bóng hậu ( 1 quả)', 198, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2026, 'A253', 'Bóng hậu ( 1 quả)', 199, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2027, 'A254', 'Bóng hậu ( 1 quả)', 203, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2028, 'A255', 'Bóng hậu ( 1 quả)', 206, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2029, 'A256', 'Bóng hậu ( 1 quả)', 208, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2030, 'A257', 'Dầu phanh', 209, '30000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2031, 'A258', 'Rà vét miệng CE', 172, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2032, 'A259', 'Bóng hậu', 175, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2033, 'A260', 'Bóng hậu', 176, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2034, 'A261', 'Bóng đèn pha', 176, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2035, 'A262', 'Bóng hậu', 177, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2036, 'A263', 'Bóng hậu', 179, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2037, 'A264', 'Bóng hậu', 180, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2038, 'A265', 'Bóng hậu', 182, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2039, 'A266', 'Bóng hậu', 183, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2040, 'A267', 'Mài cam cò', 184, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2041, 'A268', 'Bóng hậu', 184, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2042, 'A269', 'Bóng hậu', 185, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2043, 'A270', 'Bóng hậu', 188, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2044, 'A271', 'Bóng hậu', 201, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2045, 'A272', 'Bóng hậu', 202, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2046, 'A273', 'Bóng hậu', 207, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2047, 'A274', 'Bóng hậu', 209, '40000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2048, 'A275', 'Lọc gió', 175, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2049, 'A276', 'Bi nhông', 175, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2050, 'A277', 'Lọc gió', 176, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2051, 'A278', 'Đui đèn', 176, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2052, 'A279', 'Bi nhông', 176, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2053, 'A280', 'Bi nhông', 177, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2054, 'A281', 'Lọc gió', 182, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2055, 'A282', 'Bi nhông', 182, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2056, 'A283', 'Lọc gió', 183, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2057, 'A284', 'Bi nhông', 183, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2058, 'A285', 'Lọc gió', 184, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2059, 'A286', 'Bi nhông', 184, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2060, 'A287', 'Lọc dầu nhỏ', 190, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2061, 'A288', 'Căn bánh trước', 190, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2062, 'A289', 'Bi 203 ( vòng)', 190, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2063, 'A290', 'Bóng xin nhan', 200, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2064, 'A291', 'Bi nhông', 209, '45000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2065, 'A292', 'Công tắc Đề', 172, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2066, 'A293', 'Công tắc Còi', 172, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2067, 'A294', 'Công tắc Còi', 173, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2068, 'A295', 'Công tắc Còi', 181, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2069, 'A296', 'Công tắc Còi', 186, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2070, 'A297', 'Công tắc Còi', 189, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2071, 'A298', 'Ép vành nan', 190, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2072, 'A299', 'Công tắc Còi', 191, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2073, 'A300', 'Công tắc Còi', 192, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2074, 'A301', 'Công tắc Còi', 193, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2075, 'A302', 'Công tắc Còi', 198, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2076, 'A303', 'Công tắc Còi', 199, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2077, 'A304', 'Công tắc Còi', 203, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2078, 'A305', 'Công tắc Đề', 206, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2079, 'A306', 'Công tắc Còi', 206, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2080, 'A307', 'Công tắc Còi', 208, '50000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2081, 'A308', 'Dây Ga', 175, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2082, 'A309', 'Dây công tơ mét', 175, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2083, 'A310', 'Dây Ga', 176, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2084, 'A311', 'Dây công tơ mét', 176, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2085, 'A312', 'Dây Ga', 177, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2086, 'A313', 'Dây công tơ mét', 177, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2087, 'A314', 'Bi nhông', 179, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2088, 'A315', 'Bi nhông', 185, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2089, 'A316', 'Bi nhông', 188, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2090, 'A317', 'Buzzi CN', 190, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2091, 'A318', 'Bi 6004 ( vòng)', 190, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2092, 'A319', 'Bi nhông', 201, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2093, 'A320', 'Bi nhông', 202, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2094, 'A321', 'Bi nhông', 207, '55000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2095, 'A322', 'Bóng đèn pha', 175, '60000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2096, 'A323', 'Phớt nhông', 180, '60000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2097, 'A324', 'Bóng đèn pha', 182, '60000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2098, 'A325', 'Bóng đèn pha', 183, '60000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2099, 'A326', 'Bóng đèn pha', 185, '60000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2100, 'A327', 'Bóng xin nhan', 196, '60000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2101, 'A328', 'Bóng đèn pha', 201, '60000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2102, 'A329', 'Má cơ', 175, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2103, 'A330', 'Dây phanh', 175, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2104, 'A331', 'Má đĩa', 176, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2105, 'A332', 'Má cơ', 176, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2106, 'A333', 'Dây phanh', 176, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2107, 'A334', 'Bi đề Wase Dream', 176, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2108, 'A335', 'Má cơ', 177, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2109, 'A336', 'Giảm giật bánh sau', 177, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2110, 'A337', 'Má cơ', 182, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2111, 'A338', 'Dây phanh', 182, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2112, 'A339', 'Dây Ga', 182, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2113, 'A340', 'Dây công tơ mét', 182, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2114, 'A341', 'Má cơ', 183, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2115, 'A342', 'Dây phanh', 183, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2116, 'A343', 'Dây Ga', 183, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2117, 'A344', 'Dây công tơ mét', 183, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2118, 'A345', 'Má cơ', 184, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2119, 'A346', 'Dây phanh', 184, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2120, 'A347', 'Dây Ga', 184, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2121, 'A348', 'Dây công tơ mét', 184, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2122, 'A349', 'Má cơ', 185, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2123, 'A350', 'Dây phanh', 185, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2124, 'A351', 'Dây Ga', 185, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2125, 'A352', 'Dây công tơ mét', 185, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2126, 'A353', 'Dây phanh', 188, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2127, 'A354', 'Dây Ga', 188, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2128, 'A355', 'Dây công tơ mét', 188, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2129, 'A356', 'Săm 225/250-17', 190, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2130, 'A357', 'Dây phanh', 201, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2131, 'A358', 'Dây Ga', 201, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2132, 'A359', 'Dây công tơ mét', 201, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2133, 'A360', 'Dây công tơ mét', 202, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2134, 'A361', 'Má cơ', 209, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2135, 'A362', 'Dây phanh', 209, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2136, 'A363', 'Dây Ga', 209, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2137, 'A364', 'Dây công tơ mét', 209, '65000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2138, 'A365', 'Bánh tỳ trung gian', 184, '70000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2139, 'A366', 'Bóng hậu ( 1 quả)', 200, '70000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2140, 'A367', 'Giảm giật bánh sau', 175, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2141, 'A368', 'Tay phanh', 176, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2142, 'A369', 'Giảm giật bánh sau', 176, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2143, 'A370', 'Để chân trước', 176, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2144, 'A371', 'Chổi Than', 176, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2145, 'A372', 'Bát bi đề', 176, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2146, 'A373', 'Dây công tơ mét', 179, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2147, 'A374', 'Dây công tơ mét', 180, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2655, 'A376', 'Giảm giật bánh sau', 183, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2656, 'A377', 'Giảm giật bánh sau', 184, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2657, 'A378', 'Giảm giật bánh sau', 184, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2658, 'A379', 'Má đĩa', 188, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2659, 'A380', 'Tay phanh', 201, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2660, 'A381', 'Má đĩa', 201, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2661, 'A382', 'Má đĩa', 202, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2662, 'A383', 'Dây công tơ mét', 207, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2663, 'A384', 'Giảm giật bánh sau', 209, '75000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2664, 'A385', 'Công tắc Phanh tay', 172, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2665, 'A386', 'Công tắc Pha cốt', 172, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2666, 'A387', 'Công tắc Đèn', 172, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2667, 'A388', 'Công tắc Phanh tay', 173, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2668, 'A389', 'Công tắc Pha cốt', 173, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2669, 'A390', 'Bi banh', 175, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2670, 'A391', 'Bi banh', 176, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2671, 'A392', 'Bi banh', 177, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2672, 'A393', 'Bi banh', 179, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2673, 'A394', 'Bi nhông 6004', 180, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2674, 'A395', 'Bi banh', 180, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2675, 'A396', 'Công tắc Phanh tay', 181, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2676, 'A397', 'Công tắc Pha cốt', 181, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2677, 'A398', 'Bi banh', 182, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2678, 'A399', 'Bi banh', 183, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2679, 'A400', 'Phot git', 184, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2680, 'A401', 'Bi banh', 184, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2681, 'A402', 'Bi banh', 185, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2682, 'A403', 'Công tắc Phanh tay', 186, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2683, 'A404', 'Công tắc Pha cốt', 186, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2684, 'A405', 'Bi banh', 188, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2685, 'A406', 'Công tắc Phanh tay', 189, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2686, 'A407', 'Công tắc Pha cốt', 189, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2687, 'A408', 'Công tắc Đèn', 189, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2688, 'A409', 'Săm 275-17', 190, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2689, 'A410', 'Săm -14', 190, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2690, 'A411', 'Ép biển', 190, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2691, 'A412', 'Công tắc Phanh tay', 191, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2692, 'A413', 'Công tắc Pha cốt', 191, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2693, 'A414', 'Công tắc Phanh tay', 192, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2694, 'A415', 'Công tắc Phanh đĩa', 192, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2695, 'A416', 'Công tắc Pha cốt', 192, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2696, 'A417', 'Công tắc Đề', 192, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2697, 'A418', 'Công tắc Đèn', 192, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2698, 'A419', 'Công tắc Phanh tay', 193, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2699, 'A420', 'Công tắc Pha cốt', 193, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2700, 'A421', 'Bóng hậu ( 1 quả)', 196, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2701, 'A422', 'Công tắc Phanh tay', 198, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2702, 'A423', 'Công tắc Pha cốt', 198, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2703, 'A424', 'Công tắc Phanh tay', 199, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2704, 'A425', 'Công tắc Pha cốt', 199, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2705, 'A426', 'Công tắc Đèn', 199, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2706, 'A427', 'Công tắc Phanh tay', 200, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2707, 'A428', 'Bi banh', 201, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2708, 'A429', 'Bi banh', 202, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2709, 'A430', 'Công tắc Phanh tay', 203, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2710, 'A431', 'Công tắc Pha cốt', 203, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2711, 'A432', 'Công tắc Phanh tay', 205, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2712, 'A433', 'Bóng xin nhan', 205, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2713, 'A434', 'Công tắc Phanh tay', 206, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2714, 'A435', 'Công tắc Pha cốt', 206, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2715, 'A436', 'Công tắc Đèn', 206, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2716, 'A437', 'Bi banh', 207, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2717, 'A438', 'Công tắc Phanh tay', 208, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2718, 'A439', 'Công tắc Pha cốt', 208, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2719, 'A440', 'Đóng ca bi', 209, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2720, 'A441', 'Bi banh', 209, '80000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2721, 'A442', 'Giảm giật bánh sau', 179, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2722, 'A443', 'Giảm giật bánh sau', 180, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2723, 'A444', 'Giảm giật bánh sau', 185, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2724, 'A445', 'Giảm giật bánh sau', 188, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2725, 'A446', 'Công tơ met', 193, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2726, 'A447', 'Giảm giật bánh sau', 201, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2727, 'A448', 'Giảm giật bánh sau', 202, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2728, 'A449', 'Giảm giật bánh sau', 207, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2729, 'A450', 'Má đĩa', 209, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2730, 'A451', 'Lọc gió', 209, '85000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2731, 'A452', 'Chân vanĐồng', 172, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2732, 'A453', 'Chân vanĐồng', 173, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2733, 'A454', 'Chân vanĐồng', 181, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2734, 'A455', 'Chân vanĐồng', 186, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2735, 'A456', 'Chân vanĐồng', 189, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2736, 'A457', 'Thay cổ bô XS ngắn', 190, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2737, 'A458', 'Săm -16', 190, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2738, 'A459', 'Chân vanĐồng', 191, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2739, 'A460', 'Chân vanĐồng', 192, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2740, 'A461', 'Chân vanĐồng', 193, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2741, 'A462', 'Chân vanĐồng', 196, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2742, 'A463', 'Chân vanĐồng', 198, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2743, 'A464', 'Chân vanĐồng', 199, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2744, 'A465', 'Chân vanĐồng', 200, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2745, 'A466', 'Chân vanĐồng', 203, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2746, 'A467', 'Chân vanĐồng', 205, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2747, 'A468', 'Bóng hậu ( 1 quả)', 205, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2748, 'A469', 'Chân vanĐồng', 206, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2749, 'A470', 'Chân vanĐồng', 208, '90000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2750, 'A471', 'Má phanh đĩa', 172, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2751, 'A472', 'Dây cong-to-met Thường', 172, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2752, 'A473', 'Dây cong-to-met Thường', 173, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2753, 'A474', 'Buzzi', 173, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2754, 'A475', 'Sâu công tơ mét', 175, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2755, 'A476', 'Sâu công tơ mét', 176, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2756, 'A477', 'Để chân sau', 176, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2757, 'A478', 'Dây cong-to-met Thường', 181, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2758, 'A479', 'Buzzi', 181, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2759, 'A480', 'Má đĩa', 183, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2760, 'A481', 'Má đĩa', 184, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2761, 'A482', 'Láng bát côn', 184, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2762, 'A483', 'Lọc gió', 185, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2763, 'A484', 'Má phanh đĩa', 186, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2764, 'A485', 'Lọc gió', 188, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2765, 'A486', 'Dây cong-to-met Thường', 189, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2766, 'A487', 'Dây cong-to-met Thường', 191, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2767, 'A488', 'Buzzi', 191, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2768, 'A489', 'Dây cong-to-met Thường', 192, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2769, 'A490', 'Buzzi', 192, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2770, 'A491', 'Dây cong-to-met Thường', 193, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2771, 'A492', 'Buzzi', 193, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2772, 'A493', 'Dây cong-to-met Thường', 199, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000');
INSERT INTO `tec_products` (`id`, `code`, `name`, `category_id`, `price`, `image`, `tax`, `cost`, `tax_method`, `quantity`, `barcode_symbology`, `type`, `details`, `alert_quantity`) VALUES
(2773, 'A494', 'Lọc gió', 201, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2774, 'A495', 'Lọc gió', 202, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2775, 'A496', 'Dây cong-to-met Thường', 203, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2776, 'A497', 'Buzzi', 203, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2777, 'A498', 'Má phanh đĩa', 206, '95000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2778, 'A499', 'Bi 300 ( đôi)', 190, '110000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2779, 'A500', 'Bi 201 ( đôi)', 190, '110000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2780, 'A501', 'Bi 200 (đôi)', 190, '110000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2781, 'A502', 'Bi  301 (đôi)', 190, '110000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2782, 'A503', 'Lọc gió', 172, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2783, 'A504', 'Lọc gió', 173, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2784, 'A505', 'Má phanh đĩa', 174, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2785, 'A506', 'Lọc gió', 174, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2786, 'A507', 'Lọc gió', 179, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2787, 'A508', 'Lọc gió', 180, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2788, 'A509', 'Lọc gió', 181, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2789, 'A510', 'Lọc gió', 189, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2790, 'A511', 'Lọc gió', 191, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2791, 'A512', 'Lọc gió', 193, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2792, 'A513', 'Lọc gió', 199, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2793, 'A514', 'Lọc gió', 205, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2794, 'A515', 'Lọc gió', 206, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2795, 'A516', 'Sâu công tơ mét', 207, '115000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2796, 'A517', 'Tay phanh cơ', 172, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2797, 'A518', 'Phớt trục lap', 172, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2798, 'A519', 'Công tắc Xin nhan', 172, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2799, 'A520', 'Công tắc Phanh đĩa', 172, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2800, 'A521', 'Buzzi', 172, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2801, 'A522', ' Rơ le xi nhan', 172, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2802, 'A523', 'Tay phanh đĩa', 173, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2803, 'A524', 'Tay phanh cơ', 173, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2804, 'A525', 'Phớt trục lap', 173, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2805, 'A526', 'Phớt trục lap', 173, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2806, 'A527', 'Công tắc Xin nhan', 173, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2807, 'A528', 'Công tắc Phanh đĩa', 173, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2808, 'A529', 'Công tắc Đề', 173, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2809, 'A530', 'Công tắc Đèn', 173, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2810, 'A531', ' Rơ le xi nhan', 173, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2811, 'A532', 'Tay phanh cơ', 174, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2812, 'A533', 'Phớt trục lap', 174, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2813, 'A534', 'Phớt trục lap', 174, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2814, 'A535', 'Buzzi', 174, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2815, 'A536', ' Rơ le xi nhan', 174, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2816, 'A537', 'Sơn dè', 176, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2817, 'A538', 'Đôi nắp xin nhan', 176, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2818, 'A539', 'Bóng đèn pha', 177, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2819, 'A540', 'Bóng đèn pha', 179, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2820, 'A541', 'Bóng đèn pha', 180, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2821, 'A542', 'Tay phanh đĩa', 181, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2822, 'A543', 'Tay phanh cơ', 181, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2823, 'A544', 'Phớt trục lap', 181, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2824, 'A545', 'Phớt trục lap', 181, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2825, 'A546', 'Công tắc Xin nhan', 181, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2826, 'A547', 'Công tắc Phanh đĩa', 181, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2827, 'A548', 'Công tắc Đề', 181, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2828, 'A549', 'Công tắc Đèn', 181, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2829, 'A550', ' Rơ le xi nhan', 181, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2830, 'A551', 'Bộ phớt máy', 184, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2831, 'A552', 'Bóng đèn pha', 184, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2832, 'A553', 'Tay phanh đĩa', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2833, 'A554', 'Tay phanh cơ', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2834, 'A555', 'Phớt trục lap', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2835, 'A556', 'Phớt trục lap', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2836, 'A557', 'Công tắc Xin nhan', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2837, 'A558', 'Công tắc Phanh đĩa', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2838, 'A559', 'Công tắc Đề', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2839, 'A560', 'Công tắc Đèn', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2840, 'A561', 'Buzzi', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2841, 'A562', ' Rơ le xi nhan', 186, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2842, 'A563', 'Bóng đèn pha', 188, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2843, 'A564', 'Phớt trục lap', 189, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2844, 'A565', 'Mài cam cò', 189, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2845, 'A566', 'Công tắc Xin nhan', 189, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2846, 'A567', 'Công tắc Phanh đĩa', 189, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2847, 'A568', 'Công tắc Đề', 189, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2848, 'A569', 'Buzzi', 189, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2849, 'A570', 'Ắc pittong', 189, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2850, 'A571', 'Thay cổ bô XS dài', 190, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2851, 'A572', 'Phot giảm sóc XS', 190, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2852, 'A573', 'Lọc dầu to', 190, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2853, 'A574', 'Dầu máy 1 lít', 190, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2854, 'A575', 'Buzzi CD', 190, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2855, 'A576', 'Tay phanh đĩa', 191, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2856, 'A577', 'Tay phanh cơ', 191, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2857, 'A578', 'Rơ le xi nhan', 191, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2858, 'A579', 'Phớt trục lap', 191, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2859, 'A580', 'Công tắc Xin nhan', 191, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2860, 'A581', 'Công tắc Phanh đĩa', 191, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2861, 'A582', 'Công tắc Đề', 191, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2862, 'A583', 'Công tắc Đèn', 191, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2863, 'A584', 'Tay phanh cơ', 192, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2864, 'A585', 'Phớt trục lap', 192, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2865, 'A586', 'Phớt trục lap', 192, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2866, 'A587', 'Công tắc Xin nhan', 192, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2867, 'A588', ' Rơ le xi nhan', 192, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2868, 'A589', 'Tay phanh đĩa', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2869, 'A590', 'Tay phanh cơ', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2870, 'A591', 'Rơ le xi nhan', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2871, 'A592', 'Phớt trục lap', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2872, 'A593', 'Phớt trục lap', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2873, 'A594', 'Phớt trục lap', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2874, 'A595', 'Công tắc Xin nhan', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2875, 'A596', 'Công tắc Phanh đĩa', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2876, 'A597', 'Công tắc Đề', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2877, 'A598', 'Công tắc Đèn', 193, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2878, 'A599', 'Già vét bẹ xe', 194, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2879, 'A600', 'Tay phanh đĩa', 195, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2880, 'A601', 'Tay phanh cơ', 195, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2881, 'A602', 'Phớt trục lap', 195, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2882, 'A603', 'Phớt trục lap', 195, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2883, 'A604', ' Rơ le xi nhan', 195, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2884, 'A605', 'Rơ le bơm xăng', 196, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2885, 'A606', 'Mài cam cò', 196, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2886, 'A607', 'Dây cong-to-met Thường', 196, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2887, 'A608', 'Công tắc Phanh tay', 196, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2888, 'A609', 'Công tắc Phanh đĩa', 196, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2889, 'A610', 'Tay phanh đĩa', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2890, 'A611', 'Tay phanh cơ', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2891, 'A612', 'Phớt trục lap', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2892, 'A613', 'Phớt trục lap', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2893, 'A614', 'Công tắc Xin nhan', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2894, 'A615', 'Công tắc Phanh đĩa', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2895, 'A616', 'Công tắc Đề', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2896, 'A617', 'Công tắc Đèn', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2897, 'A618', 'Buzzi', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2898, 'A619', ' Rơ le xi nhan', 198, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2899, 'A620', 'Tay phanh cơ', 199, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2900, 'A621', 'Phớt trục lap', 199, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2901, 'A622', 'Phớt trục lap', 199, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2902, 'A623', 'Công tắc Xin nhan', 199, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2903, 'A624', 'Công tắc Phanh đĩa', 199, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2904, 'A625', 'Công tắc Đề', 199, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2905, 'A626', 'Buzzi', 199, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2906, 'A627', ' Rơ le xi nhan', 199, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2907, 'A628', 'Doong láp', 200, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2908, 'A629', 'Dây cong-to-met Thường', 200, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2909, 'A630', 'Công tắc Phanh đĩa', 200, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2910, 'A631', 'Bóng đèn pha', 202, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2911, 'A632', 'Tay phanh đĩa', 203, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2912, 'A633', 'Tay phanh cơ', 203, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2913, 'A634', 'Phớt trục lap', 203, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2914, 'A635', 'Phớt trục lap', 203, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2915, 'A636', 'Công tắc Xin nhan', 203, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2916, 'A637', 'Công tắc Phanh đĩa', 203, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2917, 'A638', 'Công tắc Đề', 203, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2918, 'A639', 'Công tắc Đèn', 203, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2919, 'A640', ' Rơ le xi nhan', 203, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2920, 'A641', 'Mài cam cò', 204, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2921, 'A642', 'Ắc pittong', 204, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2922, 'A643', 'Tay phanh đĩa', 205, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2923, 'A644', 'Tay phanh cơ', 205, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2924, 'A645', 'Phớt trục lap', 205, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2925, 'A646', 'Phớt trục lap', 205, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2926, 'A647', 'Công tắc Phanh đĩa', 205, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2927, 'A648', 'Buzzi', 205, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2928, 'A649', 'Tay phanh đĩa', 206, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2929, 'A650', 'Tay phanh cơ', 206, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2930, 'A651', 'Phớt trục lap', 206, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2931, 'A652', 'Phớt trục lap', 206, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2932, 'A653', 'Dây mở khóa cốp', 206, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2933, 'A654', 'Công tắc Xin nhan', 206, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2934, 'A655', 'Công tắc Phanh đĩa', 206, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2935, 'A656', 'Buzzi', 206, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2936, 'A657', 'Bóng đèn pha', 207, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2937, 'A658', 'Tay phanh cơ', 208, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2938, 'A659', 'Phớt trục lap', 208, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2939, 'A660', 'Phớt trục lap', 208, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2940, 'A661', 'Công tắc Xin nhan', 208, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2941, 'A662', 'Công tắc Phanh đĩa', 208, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2942, 'A663', 'Công tắc Đề', 208, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2943, 'A664', 'Công tắc Đèn', 208, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2944, 'A665', 'Buzzi', 208, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2945, 'A666', ' Rơ le xi nhan', 208, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2946, 'A667', 'Phớt giám sóc trước', 209, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2947, 'A668', 'Bóng đèn pha', 209, '120000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2948, 'A669', 'Má phanh trước', 178, '125000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2949, 'A670', 'Má đĩa', 179, '125000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2950, 'A671', 'Má đĩa', 207, '125000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2951, 'A672', 'Ổ khóa có từ', 196, '130000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2952, 'A673', 'Yc thường', 176, '135000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2953, 'A674', 'Tay nắm', 176, '135000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2954, 'A675', 'Doong láp', 172, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2955, 'A676', 'Doong láp', 173, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2956, 'A677', 'Má cơ', 179, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2957, 'A678', 'Má cơ', 180, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2958, 'A679', 'Doong láp', 181, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2959, 'A680', 'Doong láp', 186, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2960, 'A681', 'Má cơ', 188, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2961, 'A682', 'Doong láp', 189, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2962, 'A683', 'Doong láp', 191, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2963, 'A684', 'Doong láp', 192, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2964, 'A685', 'Doong láp', 193, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2965, 'A686', 'Lọc gió', 198, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2966, 'A687', 'Doong láp', 198, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2967, 'A688', 'Doong láp', 199, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2968, 'A689', 'Má cơ', 201, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2969, 'A690', 'Má cơ', 202, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2970, 'A691', 'Doong láp', 203, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2971, 'A692', 'Doong láp', 205, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2972, 'A693', 'Doong láp', 206, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2973, 'A694', 'Má cơ', 207, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2974, 'A695', 'Doong láp', 208, '140000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2975, 'A696', 'Má phanh đĩa', 173, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2976, 'A697', 'Má đĩa', 180, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2977, 'A698', 'Má phanh đĩa', 181, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2978, 'A699', 'Đóng lại giảm giật', 184, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2979, 'A700', 'Má phanh đĩa', 189, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2980, 'A701', 'Má phanh đĩa', 191, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2981, 'A702', 'Má phanh đĩa', 192, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2982, 'A703', 'Má phanh đĩa', 193, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2983, 'A704', 'Má phanh đĩa', 194, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2984, 'A705', 'Má phanh đĩa', 195, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2985, 'A706', 'Má phanh đĩa', 197, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2986, 'A707', 'Má phanh đĩa', 198, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2987, 'A708', 'Má phanh đĩa', 199, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2988, 'A709', 'Má phanh đĩa', 203, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2989, 'A710', 'Lọc gió', 203, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2990, 'A711', 'Dây mở khóa cốp', 205, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2991, 'A712', 'Dây cong-to-met Thường', 206, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2992, 'A713', 'Má phanh đĩa', 208, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2993, 'A714', 'Đóng ca phanh sau', 209, '145000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2994, 'A715', 'Công tắc Xin nhan', 196, '150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2995, 'A716', 'Công tắc Đề', 196, '150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2996, 'A717', 'Công tắc Còi', 196, '150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2997, 'A718', 'Công tắc Xin nhan', 200, '150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2998, 'A719', 'Công tắc Đề', 200, '150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(2999, 'A720', 'Công tắc Còi', 200, '150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3000, 'A721', 'Công tắc Xin nhan', 205, '150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3001, 'A722', 'Công tắc Đề', 205, '150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3002, 'A723', 'Công tắc Còi', 205, '150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3003, 'A724', 'Má phanh sau', 178, '155000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3004, 'A725', 'Má phanh đĩa', 200, '155000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3005, 'A726', 'Dây dẫn xăng', 172, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3006, 'A727', 'Dây dẫn xăng', 173, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3007, 'A728', 'Phớt giảm sóc trước', 180, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3008, 'A729', 'Dây dẫn xăng', 181, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3009, 'A730', 'Bi trục cam', 184, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3010, 'A731', 'Lọc gió', 186, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3011, 'A732', 'Dây dẫn xăng', 186, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3012, 'A733', 'Dây cong-to-met Thường', 186, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3013, 'A734', 'Dây dẫn xăng', 189, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3014, 'A735', 'Dây dẫn xăng', 191, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3015, 'A736', 'Tay phanh đĩa', 192, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3016, 'A737', 'Dây dẫn xăng', 192, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3017, 'A738', 'Dây dẫn xăng', 193, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3018, 'A739', 'Hai phớt gít', 194, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3019, 'A740', 'Lọc gió', 195, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3020, 'A741', 'Tay phanh cơ', 196, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3021, 'A742', 'Phớt trục lap', 196, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3022, 'A743', 'Doong láp', 196, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3023, 'A744', 'Dây dẫn xăng', 196, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3024, 'A745', 'Lọc gió', 197, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3025, 'A746', 'Dây dẫn xăng', 198, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3026, 'A747', 'Dây cong-to-met Thường', 198, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3027, 'A748', 'Dây dẫn xăng', 199, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3028, 'A749', 'Dây dẫn xăng', 200, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3029, 'A750', 'Dây dẫn xăng', 203, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3030, 'A751', 'Dây dẫn xăng', 205, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3031, 'A752', 'Dây cong-to-met Thường', 205, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3032, 'A753', 'Dây dẫn xăng', 206, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3033, 'A754', 'Dây dẫn xăng', 208, '160000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3034, 'A755', 'Má phanh cơ', 173, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3035, 'A756', 'Sâu công tơ mét', 177, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3036, 'A757', 'Sâu công tơ mét', 179, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3037, 'A758', 'Sâu công tơ mét', 180, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3038, 'A759', 'Sâu công tơ mét', 182, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3039, 'A760', 'Sâu công tơ mét', 183, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3040, 'A761', 'Sâu công tơ mét', 184, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3041, 'A762', 'Sâu công tơ mét', 185, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3042, 'A763', 'Sâu công tơ mét', 188, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3043, 'A764', 'Lọc gió', 192, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3044, 'A765', 'Má phanh trước', 196, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3045, 'A766', 'Sâu công tơ mét', 201, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3046, 'A767', 'Sâu công tơ mét', 202, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3047, 'A768', 'Lọc gió', 208, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3048, 'A769', 'Sâu công tơ mét', 209, '165000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3049, 'A770', 'Tay phanh đĩa', 172, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3050, 'A771', 'Phớt trục cơ', 172, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3051, 'A772', 'Má phanh cơ', 172, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3052, 'A773', 'Củ Chân chống', 172, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3053, 'A774', 'Bóng pha', 172, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3054, 'A775', 'Bạc Côn', 172, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3055, 'A776', 'Phớt trục cơ', 173, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3056, 'A777', 'Phớt trục cơ', 173, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3057, 'A778', 'Củ Chân chống', 173, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3058, 'A779', 'Bóng pha', 173, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3059, 'A780', 'Tay phanh đĩa', 174, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3060, 'A781', 'Phớt trục cơ', 174, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3061, 'A782', 'Phớt trục cơ', 174, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3062, 'A783', 'Má phanh cơ', 174, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3063, 'A784', 'Bóng pha', 174, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3064, 'A785', 'Ổ khóa', 175, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3065, 'A786', 'Pha đèn', 176, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3066, 'A787', 'Ổ khóa', 176, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3067, 'A788', 'Ổ khóa', 177, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3068, 'A789', 'Phớt trục cơ', 181, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3069, 'A790', 'Phớt trục cơ', 181, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3070, 'A791', 'Má phanh cơ', 181, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3071, 'A792', 'Củ Chân chống', 181, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3072, 'A793', 'Bóng pha', 181, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3073, 'A794', 'Xu ly dau bo', 184, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3074, 'A795', 'Bộ Doong', 184, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3075, 'A796', 'Phớt trục cơ', 186, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3076, 'A797', 'Phớt trục cơ', 186, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3077, 'A798', 'Củ Chân chống', 186, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3078, 'A799', 'Bóng pha', 186, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3079, 'A800', 'Phớt trục cơ', 189, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3080, 'A801', 'Doong đầu', 189, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3081, 'A802', 'Củ Chân chống', 189, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3082, 'A803', 'Bóng pha', 189, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3083, 'A804', 'Thay cổ bô XG', 190, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3084, 'A805', 'Phot giảm sóc XG', 190, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3085, 'A806', 'Phớt trục cơ', 191, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3086, 'A807', 'Củ Chân chống', 191, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3087, 'A808', 'Bóng pha', 191, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3088, 'A809', 'Phớt trục cơ', 192, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3089, 'A810', 'Phớt trục cơ', 192, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3090, 'A811', 'Củ Chân chống', 192, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3091, 'A812', 'Bóng pha', 192, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3092, 'A813', 'Phớt trục cơ', 193, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3093, 'A814', 'Phớt trục cơ', 193, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3094, 'A815', 'Phớt trục cơ', 193, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3095, 'A816', 'Dây le', 193, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3096, 'A817', 'Củ Chân chống', 193, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3097, 'A818', 'Bóng pha', 193, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3098, 'A819', 'Lọc gió', 194, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3099, 'A820', 'Phớt trục cơ', 195, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3100, 'A821', 'Phớt trục cơ', 195, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3101, 'A822', 'Tay phanh đĩa', 196, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3102, 'A823', 'Phớt trục lap', 196, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3103, 'A824', 'Phớt trục cơ', 196, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3104, 'A825', 'Lọc gió', 196, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3105, 'A826', 'Công tắc Pha cốt', 196, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3106, 'A827', 'Công tắc Đèn', 196, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3107, 'A828', 'Bóng pha', 196, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3108, 'A829', 'Ắc pittong', 196, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3109, 'A830', 'Phớt trục cơ', 198, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3110, 'A831', 'Phớt trục cơ', 198, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3111, 'A832', 'Má phanh cơ', 198, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3112, 'A833', 'Củ Chân chống', 198, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3113, 'A834', 'Bóng pha', 198, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3114, 'A835', 'Tay phanh đĩa', 199, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3115, 'A836', 'Phớt trục cơ', 199, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3116, 'A837', 'Phớt trục cơ', 199, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3117, 'A838', 'Củ Chân chống', 199, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3118, 'A839', 'Bóng pha', 199, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3119, 'A840', 'Tay phanh cơ', 200, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3120, 'A841', 'Phớt trục lap', 200, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3121, 'A842', 'Phớt trục lap', 200, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3122, 'A843', 'Mài cam cò', 200, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3123, 'A844', 'Công tắc Đèn', 200, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3124, 'A845', 'Buzzi', 200, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3125, 'A846', 'Ắc pittong', 200, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3126, 'A847', 'Phớt trục cơ', 203, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3127, 'A848', 'Phớt trục cơ', 203, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3128, 'A849', 'Củ Chân chống', 203, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3129, 'A850', 'Bóng pha', 203, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3130, 'A851', 'Doong đầu', 204, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3131, 'A852', 'Phớt trục cơ', 205, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3132, 'A853', 'Phớt trục cơ', 205, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3133, 'A854', 'Củ Chân chống', 205, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3134, 'A855', 'Công tắc Pha cốt', 205, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3135, 'A856', 'Công tắc Đèn', 205, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3136, 'A857', 'Bóng pha', 205, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3137, 'A858', 'Phớt trục cơ', 206, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3138, 'A859', 'Phớt trục cơ', 206, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3139, 'A860', 'Má phanh cơ', 206, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3140, 'A861', 'Củ Chân chống', 206, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3141, 'A862', 'Bóng pha', 206, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3142, 'A863', 'Tay phanh đĩa', 208, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3143, 'A864', 'Phớt trục cơ', 208, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3144, 'A865', 'Phớt trục cơ', 208, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3145, 'A866', 'Củ Chân chống', 208, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3146, 'A867', 'Bóng pha', 208, '180000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3147, 'A868', 'Khóa 2 cạnh', 176, '185000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3148, 'A869', 'Lọc gió', 200, '185000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3149, 'A870', 'Pha đèn', 175, '195000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000');
INSERT INTO `tec_products` (`id`, `code`, `name`, `category_id`, `price`, `image`, `tax`, `cost`, `tax_method`, `quantity`, `barcode_symbology`, `type`, `details`, `alert_quantity`) VALUES
(3150, 'A871', 'Ép vành đúc HĐ', 187, '200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3151, 'A872', 'Doa đánh bóng nòng', 184, '215000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3152, 'A873', 'Tay phanh nắm', 172, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3153, 'A874', 'Dây ga', 172, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3154, 'A875', 'Dây ga', 173, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3155, 'A876', 'Dây ga', 181, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3156, 'A877', 'Má phanh cơ', 186, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3157, 'A878', 'Má phanh cơ', 189, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3158, 'A879', 'Dây ga', 189, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3159, 'A880', 'Bi trục cam', 189, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3160, 'A881', 'Dây ga', 191, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3161, 'A882', 'Dây ga', 192, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3162, 'A883', 'Dây ga', 193, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3163, 'A884', 'Má phanh cơ', 194, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3164, 'A885', 'Phớt trục cơ', 196, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3165, 'A886', 'Má phanh sau', 196, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3166, 'A887', 'Dây mở khóa cốp', 196, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3167, 'A888', 'Dây ga', 198, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3168, 'A889', 'Má phanh cơ', 199, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3169, 'A890', 'Dây ga', 199, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3170, 'A891', 'Tay phanh đĩa', 200, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3171, 'A892', 'Phớt trục cơ', 200, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3172, 'A893', 'Phớt trục cơ', 200, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3173, 'A894', 'Má phanh cơ', 200, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3174, 'A895', 'Công tắc Pha cốt', 200, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3175, 'A896', 'Bóng pha', 200, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3176, 'A897', 'Dây ga', 203, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3177, 'A898', 'Bi trục cam', 204, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3178, 'A899', 'Má phanh cơ', 205, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3179, 'A900', 'Dây ga', 205, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3180, 'A901', 'Dây ga', 206, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3181, 'A902', 'Má phanh cơ', 208, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3182, 'A903', 'Dây ga', 208, '220000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3183, 'A904', 'Khóa 4 cạnh', 176, '225000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3184, 'A905', 'YC xịn', 176, '230000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3185, 'A906', 'Cuộn điện dế Dream tau', 176, '230000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3186, 'A907', 'Hai phớt gít', 172, '240000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3187, 'A908', 'Má phanh cơ', 191, '240000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3188, 'A909', 'Má phanh cơ', 192, '240000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3189, 'A910', 'Má phanh cơ', 193, '240000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3190, 'A911', 'Buzzi', 196, '240000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3191, 'A912', 'Bat phot', 175, '245000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3192, 'A913', 'Bat phot', 176, '245000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3193, 'A914', 'Bat phot', 177, '245000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3194, 'A915', 'Bat phot', 182, '245000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3195, 'A916', 'Bat phot', 183, '245000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3196, 'A917', 'Bộ xec-măng', 184, '245000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3197, 'A918', 'Bat phot', 184, '245000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3198, 'A919', 'Bat phot', 209, '245000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3199, 'A920', 'Cài đặt bộ điều hành', 190, '250000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3200, 'A921', 'Má phanh cơ', 197, '250000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3201, 'A922', 'Má phanh cơ', 203, '250000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3202, 'A923', 'Lốp trước 225 - 17', 175, '255000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3203, 'A924', 'Lốp trước 225 - 17', 176, '255000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3204, 'A925', 'Lốp trước 225 - 17', 177, '255000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3205, 'A926', 'Quả pittong', 184, '265000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3206, 'A927', 'Nhông xích', 175, '275000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3207, 'A928', 'Nhông xích', 176, '275000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3208, 'A929', 'Nhông xích', 177, '275000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3209, 'A930', 'Rơ le bơm xăng', 172, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3210, 'A931', 'Gương', 172, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3211, 'A932', 'Dây phanh', 172, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3212, 'A933', 'Dây phanh', 173, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3213, 'A934', 'Bi côn', 173, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3214, 'A935', 'Gương', 174, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3215, 'A936', 'Ty sóc sau', 175, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3216, 'A937', 'Điot sạc', 175, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3217, 'A938', 'Cuộn điện', 175, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3218, 'A939', 'Ty sóc sau', 176, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3219, 'A940', 'Điot sạc', 176, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3220, 'A941', 'Ty sóc sau', 177, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3221, 'A942', 'Điot sạc', 177, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3222, 'A943', 'Dây phanh', 181, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3223, 'A944', 'Điot sạc', 182, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3224, 'A945', 'Sup pap', 184, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3225, 'A946', 'Gương', 186, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3226, 'A947', 'Dây phanh', 186, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3227, 'A948', 'Dây ga', 186, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3228, 'A949', 'Gương', 189, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3229, 'A950', 'Dây phanh', 189, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3230, 'A951', 'Dây phanh', 191, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3231, 'A952', 'Bi côn', 191, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3232, 'A953', 'Gương', 192, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3233, 'A954', 'Dây phanh', 192, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3234, 'A955', 'Gương', 193, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3235, 'A956', 'Dây phanh', 193, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3236, 'A957', 'Bi côn', 193, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3237, 'A958', 'Doong đầu', 196, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3238, 'A959', 'Gương', 198, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3239, 'A960', 'Dây phanh', 198, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3240, 'A961', 'Gương', 199, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3241, 'A962', 'Dây phanh', 199, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3242, 'A963', 'Rơ le xi nhan', 200, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3243, 'A964', 'Rơ le bơm xăng', 200, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3244, 'A965', 'Phớt két nước', 200, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3245, 'A966', 'Phay rà mặt quy lát', 200, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3246, 'A967', 'Dây phanh', 203, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3247, 'A968', 'Rơ le bơm xăng', 205, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3248, 'A969', 'Dây phanh', 205, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3249, 'A970', ' Rơ le xi nhan', 205, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3250, 'A971', 'Rơ le bơm xăng', 206, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3251, 'A972', 'Dây phanh', 206, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3252, 'A973', ' Rơ le xi nhan', 206, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3253, 'A974', 'Dây phanh', 208, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3254, 'A975', 'Điot sạc', 209, '280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3255, 'A976', 'Lốp sau 250 - 17', 175, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3256, 'A977', 'Lốp sau 250 - 17', 176, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3257, 'A978', 'Khóa 6 cạnh', 176, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3258, 'A979', 'Lốp sau 250 - 17', 177, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3259, 'A980', 'Bat phot', 179, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3260, 'A981', 'Bat phot', 180, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3263, 'A984', 'Bat phot', 185, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3265, 'A986', 'Bat phot', 188, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3267, 'A988', 'Lốp trước 70/90-17', 201, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3268, 'A989', 'Bat phot', 201, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3269, 'A990', 'Bat phot', 202, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3271, 'A992', 'Lốp trước 70/90-17', 207, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3272, 'A993', 'Bat phot', 207, '285000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3273, 'A994', 'Nhông xích', 182, '295000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3274, 'A995', 'Nhông xích', 183, '295000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3275, 'A996', 'Nhông xích', 184, '295000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3276, 'A997', 'Nhông xích', 185, '295000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3277, 'A998', 'Nhông xích', 188, '295000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3278, 'A999', 'Nhông xích', 201, '295000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3279, 'A1000', 'Nhông xích', 202, '295000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3280, 'A1001', 'Nhông xích', 209, '295000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3281, 'A1002', 'Lốp trước 70/90-17', 209, '295000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3284, 'A1005', 'Lốp trước 70/90-17', 184, '315000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3285, 'A1006', 'Lốp sau 80/90-17', 184, '315000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3286, 'A1007', 'Dóng nòng', 184, '315000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3289, 'A1010', 'Ác quy 5A lùn', 190, '315000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3290, 'A1011', 'Ac quy 4A', 190, '315000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3291, 'A1012', 'Lốp trước 80/90-14', 191, '315000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3292, 'A1013', 'Lốp sau 80/90-17', 201, '315000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3294, 'A1015', 'Lốp sau 80/90-17', 209, '315000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3295, 'A1016', 'Bi côn', 172, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3296, 'A1017', 'Gương', 173, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3297, 'A1018', 'Dây mở khóa cốp', 173, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3298, 'A1019', 'Bi côn', 174, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3299, 'A1020', 'Ty sóc sau', 179, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3300, 'A1021', 'Ty sóc sau', 180, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3301, 'A1022', 'Bi côn', 181, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3302, 'A1023', 'Xích cam', 184, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3303, 'A1024', 'Dán cồn', 184, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3304, 'A1025', 'Ty sóc sau', 185, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3305, 'A1026', 'Bi côn', 186, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3306, 'A1027', 'Ty sóc sau', 188, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3307, 'A1028', 'Doa đánh bóng nòng', 189, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3308, 'A1029', 'Bộ phớt điện', 189, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3309, 'A1030', 'Bi côn', 189, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3310, 'A1031', 'Dây mở khóa cốp', 191, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3311, 'A1032', 'Bi côn', 192, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3312, 'A1033', 'Dây mở khóa cốp', 193, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3313, 'A1034', 'Rơ le đề', 196, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3314, 'A1035', 'Bi côn', 198, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3315, 'A1036', 'Bi côn', 199, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3316, 'A1037', 'Doong đầu', 200, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3317, 'A1038', 'Dây phanh', 200, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3318, 'A1039', 'Dây ga', 200, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3319, 'A1040', 'Ty sóc sau', 201, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3320, 'A1041', 'Ty sóc sau', 202, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3321, 'A1042', 'Bi côn', 203, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3322, 'A1043', 'Doa đánh bóng nòng', 204, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3323, 'A1044', 'Bộ phớt điện', 204, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3324, 'A1045', 'Bi côn', 206, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3325, 'A1046', 'Ty sóc sau', 207, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3326, 'A1048', 'Bi côn', 208, '320000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3327, 'A1049', 'Lốp trước 70/90-17', 179, '325000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3328, 'A1050', 'Lốp sau 80/90-17', 207, '325000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3329, 'A1051', 'Lốp trước 70/90-14', 174, '335000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3330, 'A1052', 'Nhông xích', 179, '335000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3331, 'A1053', 'Củ đề', 185, '335000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3332, 'A1054', 'Củ đề', 188, '335000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3333, 'A1055', 'Ác quy 5A cao', 190, '335000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3334, 'A1056', 'Củ đề', 201, '335000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3335, 'A1057', 'Củ đề', 202, '335000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3336, 'A1058', 'Nhông xích', 207, '335000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3337, 'A1059', 'Pha đèn', 182, '345000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3338, 'A1060', 'Tổng bơm dầu', 184, '345000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3339, 'A1061', 'Lốp sau 90/90-14', 191, '345000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3340, 'A1062', 'Doa đánh bóng nòng', 196, '350000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3341, 'A1063', 'Doa đánh bóng nòng', 200, '350000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3342, 'A1064', 'Lốp sau 80/90-14', 174, '360000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3343, 'A1065', 'Ty sóc sau', 182, '360000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3344, 'A1066', 'Ty sóc sau', 183, '360000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3345, 'A1067', 'Ty sóc sau', 184, '360000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3346, 'A1068', 'Chế hòa khí', 184, '360000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3347, 'A1069', 'Dây phanh', 196, '360000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3348, 'A1070', 'Ty sóc sau', 209, '360000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3349, 'A1071', 'Lốp trước 80/90 - 14', 172, '365000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3350, 'A1072', 'Lốp sau 80/90-17', 179, '365000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3351, 'A1073', 'Lốp trước 80/90 - 14', 206, '365000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3352, 'A1074', 'Rơ le đề', 172, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3353, 'A1075', 'Rơ le đề', 173, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3354, 'A1076', 'Bộ bat phot', 173, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3355, 'A1077', 'Rơ le đề', 174, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3356, 'A1078', 'IC', 175, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3357, 'A1079', 'Củ đề', 175, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3358, 'A1080', 'IC', 176, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3359, 'A1081', 'Củ đề', 176, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3360, 'A1082', 'Củ đề', 176, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3361, 'A1083', 'Bộ Bô Đểu', 176, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3362, 'A1084', 'Điot sạc', 179, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3363, 'A1085', 'Điot sạc', 180, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3364, 'A1086', 'Rơ le đề', 181, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3365, 'A1087', 'IC', 182, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3366, 'A1088', 'Củ đề', 182, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3367, 'A1089', 'Ty giảm sóc', 184, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3368, 'A1090', 'Bộ lá côn tải', 184, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3369, 'A1091', 'Điot sạc', 185, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3370, 'A1092', 'Điot sạc', 188, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3371, 'A1093', 'Rơ le đề', 191, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3372, 'A1094', 'Bộ bat phot', 191, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3373, 'A1095', 'Rơ le đề', 192, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3374, 'A1096', 'Bộ bat phot', 192, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3375, 'A1097', 'Sạc', 193, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3376, 'A1098', 'Rơ le đề', 193, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3377, 'A1099', 'Bộ bat phot', 193, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3378, 'A1100', 'Dây ga', 196, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3379, 'A1101', 'Bi trục cam', 196, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3380, 'A1102', 'Rơ le đề', 199, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3381, 'A1103', 'Củ Chân chống SH-PS', 200, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3382, 'A1104', 'Bi trục cam', 200, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3383, 'A1105', 'Điot sạc', 201, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3384, 'A1106', 'Điot sạc', 202, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3385, 'A1107', 'Rơ le đề', 203, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3386, 'A1108', 'Rơ le đề', 205, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3387, 'A1109', 'Rơ le đề', 206, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3388, 'A1110', 'Đĩa', 206, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3389, 'A1111', 'Bộ bat phot', 206, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3390, 'A1112', 'Điot sạc', 207, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3391, 'A1113', 'Rơ le đề', 208, '380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3392, 'A1114', 'Lốp sau 90/90 - 14', 172, '385000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3393, 'A1115', 'Nhông xích', 180, '385000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3394, 'A1116', 'Lốp trước 70/90-16( k săm )', 193, '385000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3395, 'A1117', 'Lốp sau 90/90 - 10', 206, '385000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3396, 'A1118', 'Bi cơ', 184, '390000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3397, 'A1119', 'Khóa xăng', 172, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3398, 'A1120', 'Đĩa', 172, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3399, 'A1121', 'Bộ bat phot', 172, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3400, 'A1122', 'Khóa xăng', 173, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3401, 'A1123', 'Đĩa', 173, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3402, 'A1124', 'Bộ bat phot', 174, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3403, 'A1125', 'Bát đề', 179, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3404, 'A1126', 'Bát đề', 180, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3405, 'A1127', 'Khóa xăng', 181, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3406, 'A1128', 'Đĩa', 181, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3407, 'A1129', 'Bộ bat phot', 181, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3408, 'A1130', 'Ép biên', 184, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3409, 'A1131', 'Rơ le đề', 186, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3410, 'A1132', 'Khóa xăng', 186, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3411, 'A1133', 'Bộ bat phot', 186, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3412, 'A1134', 'Tay biên', 189, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3413, 'A1135', 'Khóa xăng', 189, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3414, 'A1136', 'Đĩa', 189, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3415, 'A1137', 'Bộ bat phot', 189, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3416, 'A1138', 'Le nhiệt', 191, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3417, 'A1139', 'Khóa xăng', 191, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3418, 'A1140', 'Đĩa', 191, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3419, 'A1141', 'Bát côn sau', 191, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3420, 'A1142', 'Le nhiệt', 192, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3421, 'A1143', 'Khóa xăng', 192, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3422, 'A1144', 'Đĩa', 192, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3423, 'A1145', 'Le nhiệt', 193, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3424, 'A1146', 'Khóa xăng', 193, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3425, 'A1147', 'Đĩa', 193, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3426, 'A1148', 'Bát côn sau', 193, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3427, 'A1149', 'Le nhiệt', 194, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3428, 'A1150', 'Rơ le đề', 195, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3429, 'A1151', 'Le nhiệt', 195, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3430, 'A1152', 'Củ Chân chống', 196, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3431, 'A1153', 'Bi côn', 196, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3432, 'A1154', 'Rơ le đề', 198, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3433, 'A1155', 'Khóa xăng', 198, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3434, 'A1156', 'Bộ bat phot', 198, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3435, 'A1157', 'Khóa xăng', 199, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3436, 'A1158', 'Đĩa', 199, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3437, 'A1159', 'Bộ bat phot', 199, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3438, 'A1160', 'Le nhiệt', 203, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3439, 'A1161', 'Khóa xăng', 203, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3440, 'A1162', 'Đĩa', 203, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3441, 'A1163', 'Bộ bat phot', 203, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3442, 'A1164', 'Tay biên', 204, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3443, 'A1165', 'Khóa xăng', 205, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3444, 'A1166', 'Bộ bat phot', 205, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3445, 'A1167', 'Khóa xăng', 206, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3446, 'A1168', 'Khóa xăng', 208, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3447, 'A1169', 'Bộ bat phot', 208, '420000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3448, 'A1170', 'Lốp sau 80/90-16 ( k săm)', 193, '435000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3449, 'A1171', 'Lốp trước 80/80-14', 208, '435000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3450, 'A1172', 'Mặt nạ trước', 209, '435000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3451, 'A1173', 'Đóng thay giảm giật côn', 178, '445000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3452, 'A1174', 'Lốp trước 100/90-10', 173, '450000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3453, 'A1175', 'Lốp sau 100/90-10', 173, '450000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3454, 'A1176', 'Dây mở khóa cốp', 172, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3455, 'A1177', 'Đĩa phanh', 180, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3456, 'A1178', 'Dây mở khóa cốp', 181, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3457, 'A1179', 'Dây mở khóa cốp', 186, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3458, 'A1180', 'Xích cam', 189, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3459, 'A1181', 'Dây phun xăng điện tử', 189, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3460, 'A1182', 'Dây mở khóa cốp', 189, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3461, 'A1183', 'Dây curoa', 191, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3462, 'A1184', 'Dây mở khóa cốp', 192, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3463, 'A1185', 'Dây curoa', 193, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3464, 'A1186', 'Dây mở khóa cốp', 198, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3465, 'A1187', 'Dây curoa', 198, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3466, 'A1188', 'Dây phun xăng điện tử', 199, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3467, 'A1189', 'Dây mở khóa cốp', 199, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3468, 'A1190', 'Dây mở khóa cốp', 203, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3469, 'A1191', 'Xích cam', 204, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3470, 'A1192', 'Dây mở khóa cốp', 208, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3471, 'A1193', 'Củ đề', 209, '460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3472, 'A1194', 'Lốp sau 100/90 - 10', 189, '465000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3473, 'A1195', 'Lốp trước', 192, '465000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3474, 'A1196', 'Lốp sau', 192, '465000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3475, 'A1197', 'Lốp sau 90/90-14', 208, '465000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3476, 'A1198', 'Lốp trước 100/90 - 10', 205, '475000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3477, 'A1199', 'Lốp sau 100/90 - 10', 205, '475000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3478, 'A1200', 'Dây phun xăng điện tử', 172, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3479, 'A1201', 'Bi lap', 172, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3480, 'A1202', 'Dây phun xăng điện tử', 173, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3481, 'A1203', 'Dây curoa', 173, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3482, 'A1204', 'Bi lap', 173, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3483, 'A1205', 'Sạc xịn', 174, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3484, 'A1206', 'Phớt và trục nước mát', 174, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3485, 'A1207', 'Phớt và trục nước mát', 174, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3486, 'A1208', 'Bi lap', 174, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3487, 'A1209', 'Cuộn điện', 177, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3488, 'A1210', 'Dây curoa', 181, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3489, 'A1211', 'Bi lap', 181, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3490, 'A1212', 'Sạc', 186, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3491, 'A1213', 'Lốp sau', 186, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3492, 'A1214', 'Dây curoa', 186, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3493, 'A1215', 'Bi lap', 186, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3494, 'A1216', 'Phớt và trục nước mát', 189, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3495, 'A1217', 'Lốp trước 90/90 - 12', 189, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3496, 'A1218', 'Hai Sup pap', 189, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3497, 'A1219', 'Dây curoa', 189, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3498, 'A1220', 'Bi lap', 189, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3499, 'A1221', 'Ac quy 6A', 190, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3500, 'A1222', 'Sạc', 191, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3501, 'A1223', 'Bi lap', 191, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3502, 'A1224', 'Phớt và trục nước mát', 192, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3503, 'A1225', 'Phớt và trục nước mát', 192, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3504, 'A1226', 'Bi lap', 192, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3505, 'A1227', 'Phớt và trục nước mát', 193, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3506, 'A1228', 'Phớt và trục nước mát', 193, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3507, 'A1229', 'Bi lap', 193, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3508, 'A1230', 'Bộ phớt điện', 196, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3509, 'A1231', 'Lốp trước', 198, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3510, 'A1232', 'Lốp sau', 198, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3511, 'A1233', 'Bi lap', 198, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3512, 'A1234', 'Quây trước', 199, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3513, 'A1235', 'Phớt và trục nước mát', 199, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3514, 'A1236', 'Phớt và trục nước mát', 199, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3515, 'A1237', 'Lốp trước 100/90 - 12', 199, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3516, 'A1238', 'Dây curoa', 199, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3517, 'A1239', 'Bi lap', 199, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3518, 'A1240', 'Rơ le đề', 200, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3519, 'A1241', 'Khóa xăng', 200, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3520, 'A1242', 'Dây mở khóa cốp SH-PS', 200, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3521, 'A1243', 'Bộ phớt điện', 200, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3522, 'A1244', 'Bi côn', 200, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3523, 'A1245', 'IC', 201, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3524, 'A1246', 'Cuộn điện', 201, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3525, 'A1247', 'Dây curoa', 203, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3526, 'A1248', 'Bi lap', 203, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3527, 'A1249', 'Hai Sup pap', 204, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3528, 'A1250', 'Phớt và trục nước mát', 205, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3529, 'A1251', 'Bi lap', 205, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3530, 'A1252', 'Bi côn', 205, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3531, 'A1253', 'Phớt và trục nước mát', 206, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3532, 'A1254', 'Dây curoa', 206, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3533, 'A1255', 'Bi lap', 206, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3534, 'A1256', 'Củ đề', 207, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3535, 'A1257', 'Sạc', 208, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3536, 'A1258', 'Phớt và trục nước mát', 208, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3537, 'A1259', 'Phớt và trục nước mát', 208, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3538, 'A1260', 'Bi lap', 208, '480000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3539, 'A1261', 'Nhông xích', 178, '485000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000');
INSERT INTO `tec_products` (`id`, `code`, `name`, `category_id`, `price`, `image`, `tax`, `cost`, `tax_method`, `quantity`, `barcode_symbology`, `type`, `details`, `alert_quantity`) VALUES
(3540, 'A1262', 'Lốp sau 90/90 - 14', 199, '490000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3541, 'A1263', 'Mô bin', 172, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3542, 'A1264', 'Dây curoa', 172, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3543, 'A1265', 'Mô bin', 173, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3544, 'A1266', 'Củ đề', 173, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3545, 'A1267', 'Mô bin', 174, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3546, 'A1268', 'Chế hòa khí', 175, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3547, 'A1269', 'Cuộn điện dế Dream xịn', 176, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3548, 'A1270', 'Cuộn điện', 176, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3549, 'A1271', 'Chế hòa khí', 177, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3550, 'A1272', 'Mô bin', 181, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3551, 'A1273', 'Củ đề', 181, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3552, 'A1274', 'Bát côn sau', 181, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3553, 'A1275', 'Chế hòa khí', 182, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3554, 'A1276', 'Cuộn điện', 182, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3555, 'A1277', 'Củ đề', 183, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3556, 'A1278', 'Củ đề', 184, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3557, 'A1279', 'Mô bin', 186, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3558, 'A1280', 'Tăng cam', 189, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3559, 'A1281', 'Mô bin', 189, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3560, 'A1282', 'Ác quy Novo', 190, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3561, 'A1283', 'Mô bin', 191, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3562, 'A1284', 'Dây curoa', 192, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3563, 'A1285', 'Mô bin', 193, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3564, 'A1286', 'Mô bin', 194, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3565, 'A1287', 'Mô bin', 195, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3566, 'A1288', 'Dây ăng - ten', 196, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3567, 'A1289', 'Mô bin', 197, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3568, 'A1290', 'Mô bin', 198, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3569, 'A1291', 'Đĩa', 198, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3570, 'A1292', 'Mô bin', 199, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3571, 'A1293', 'Mô bin', 203, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3572, 'A1294', 'Bát côn sau', 203, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3573, 'A1295', 'Tăng cam', 204, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3574, 'A1296', 'Mô bin', 205, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3575, 'A1297', 'Đĩa', 205, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3576, 'A1298', 'Mô bin', 206, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3577, 'A1299', 'Đĩa', 208, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3578, 'A1300', 'Dây curoa', 208, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3579, 'A1301', 'Ổ khóa', 209, '520000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3580, 'A1302', 'Bộ xec-măng', 189, '530000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3581, 'A1303', 'Củ đề', 191, '530000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3582, 'A1304', 'Củ đề', 193, '530000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3583, 'A1305', 'Bi lap', 196, '530000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3584, 'A1306', 'Củ đề', 203, '530000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3585, 'A1307', 'Bộ xec-măng', 204, '530000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3586, 'A1308', 'Dây phun xăng điện tử', 208, '530000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3587, 'A1309', 'Sạc thường', 172, '550000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3588, 'A1310', 'Sạc bãi', 173, '550000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3589, 'A1311', 'Bạc máy', 173, '550000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3590, 'A1312', 'Khóa càng', 189, '550000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3591, 'A1313', 'Khóa càng', 199, '550000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3592, 'A1314', 'Củ đề', 206, '565000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3593, 'A1315', 'Búa côn', 172, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3594, 'A1316', 'Búa côn', 173, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3595, 'A1317', 'Búa côn', 174, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3596, 'A1318', 'Lốp trước 70/90-17', 180, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3597, 'A1319', 'Búa côn', 181, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3598, 'A1320', 'Búa côn', 184, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3599, 'A1321', 'Đĩa', 186, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3600, 'A1322', 'Búa côn', 186, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3601, 'A1323', 'Búa côn', 189, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3602, 'A1324', 'Búa côn', 191, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3603, 'A1325', 'Búa côn', 192, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3604, 'A1326', 'Búa côn', 193, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3605, 'A1327', 'Xích cam', 196, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3606, 'A1328', 'Khóa xăng', 196, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3607, 'A1329', 'Búa côn', 198, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3608, 'A1330', 'Búa côn', 199, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3609, 'A1331', 'Bi lap SH-PS', 200, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3610, 'A1332', 'Lốp trước 100/90-12', 203, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3611, 'A1333', 'Lốp sau 120/90-12', 203, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3612, 'A1334', 'Búa côn', 203, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3613, 'A1335', 'Dây curoa', 205, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3614, 'A1336', 'Búa côn', 206, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3615, 'A1337', 'Búa côn', 208, '580000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3616, 'A1338', 'Pha đèn', 184, '595000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3617, 'A1339', 'Cuộn điện', 179, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3618, 'A1340', 'Cuộn điện', 180, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3619, 'A1341', 'IC', 185, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3620, 'A1342', 'Cuộn điện', 185, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3621, 'A1343', 'Củ đề', 186, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3622, 'A1344', 'IC', 188, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3623, 'A1345', 'Cuộn điện', 188, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3624, 'A1346', 'Ac quy 7A  lùn', 190, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3625, 'A1347', 'Củ đề', 192, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3626, 'A1348', 'Công tơ met', 192, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3627, 'A1349', 'IC', 202, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3628, 'A1350', 'Cuộn điện', 202, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3629, 'A1351', 'Cuộn điện', 207, '620000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3630, 'A1352', 'Trục két nước', 200, '630000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3631, 'A1353', 'Củ đề', 189, '645000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3632, 'A1354', 'Củ đề', 199, '645000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3633, 'A1355', 'Bát côn sau', 192, '650000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3634, 'A1356', 'Bộ bat phot', 200, '650000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3635, 'A1357', 'Củ đề', 208, '650000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3636, 'A1358', 'Bát côn sau', 172, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3637, 'A1359', 'Le nhiệt', 174, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3638, 'A1360', 'Bát côn sau', 174, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3639, 'A1361', 'Lốp sau 100/70-17', 180, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3640, 'A1362', 'Bạc máy', 181, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3641, 'A1363', 'Bát côn sau', 186, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3642, 'A1364', 'Bạc máy', 186, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3643, 'A1365', 'Tì cam', 189, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3644, 'A1366', 'Quả pittong', 189, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3645, 'A1367', 'Le nhiệt', 189, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3646, 'A1368', 'Bát côn sau', 189, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3647, 'A1369', 'Ác quy 7A cao', 190, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3648, 'A1370', 'Bạc máy', 191, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3649, 'A1371', 'Mô bin', 192, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3650, 'A1372', 'Bạc máy', 193, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3651, 'A1373', 'Tăng cam', 196, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3652, 'A1374', 'Đĩa', 196, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3653, 'A1375', 'Bộ bat phot', 196, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3654, 'A1376', 'Le nhiệt', 197, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3655, 'A1377', 'Củ đề', 198, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3656, 'A1378', 'Bát côn sau', 198, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3657, 'A1379', 'Bạc máy', 198, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3658, 'A1380', 'Le nhiệt', 199, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3659, 'A1381', 'Bát côn sau', 199, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3660, 'A1382', 'Xích cam', 200, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3661, 'A1383', 'Bạc máy', 203, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3662, 'A1384', 'Tì cam', 204, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3663, 'A1385', 'Quả pittong', 204, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3664, 'A1386', 'Bát côn sau', 206, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3665, 'A1387', 'Mô bin', 208, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3666, 'A1388', 'Bát côn sau', 208, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3667, 'A1389', 'Củ đề', 172, '685000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3668, 'A1390', 'Củ đề', 179, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3669, 'A1391', 'Củ đề', 180, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3670, 'A1392', 'Bi cơ', 189, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3671, 'A1393', 'Ác quy 9A lùn', 190, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3672, 'A1394', 'Bộ ECU điều khiển không từ', 191, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3673, 'A1395', 'Bộ ECU điều khiển không từ', 193, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3674, 'A1396', 'Tăng cam', 200, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3675, 'A1397', 'Bi cơ', 204, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3676, 'A1398', 'Búa côn', 205, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3677, 'A1399', 'Dóng nòng', 172, '750000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3678, 'A1400', 'Chế hòa khí', 176, '750000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3679, 'A1401', 'Đóng nòng', 189, '750000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3680, 'A1402', 'Đĩa SH-PS', 200, '750000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3681, 'A1403', 'Đóng nòng', 204, '750000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3682, 'A1404', 'Bộ xec-măng', 200, '820000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3683, 'A1405', 'Sạc xịn', 173, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3684, 'A1406', 'Cuộn điện', 173, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3685, 'A1407', 'Bộ ECU điều khiển không từ', 173, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3686, 'A1408', 'Pha đèn', 179, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3687, 'A1409', 'Phớt và trục nước mát', 180, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3688, 'A1410', 'Sạc', 181, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3689, 'A1411', 'Cuộn điện', 181, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3690, 'A1412', 'Cuộn điện', 183, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3691, 'A1413', 'Cuộn điện', 184, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3692, 'A1414', 'Le nhiệt', 186, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3693, 'A1415', 'Cuộn điện', 186, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3694, 'A1416', 'Bộ cảm biến bướm ga', 189, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3695, 'A1417', 'Ác quy 9A cao', 190, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3696, 'A1418', 'Cuộn điện', 191, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3697, 'A1419', 'Dây cong-to-met Từ', 192, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3698, 'A1420', 'Cuộn điện', 192, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3699, 'A1421', 'Cuộn điện', 193, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3700, 'A1422', 'Tì cam', 196, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3701, 'A1423', 'Tay biên', 196, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3702, 'A1424', 'Phớt và trục nước mát', 196, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3703, 'A1425', 'Hai Sup pap', 196, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3704, 'A1426', 'Bộ xec-măng', 196, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3705, 'A1427', 'Sạc', 198, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3706, 'A1428', 'Cuộn điện', 198, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3707, 'A1429', 'Sạc xịn', 199, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3708, 'A1430', 'Quả pittong', 200, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3709, 'A1431', 'Phớt và trục nước mát', 200, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3710, 'A1432', 'Phớt và trục nước mát', 200, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3711, 'A1433', 'Le nhiệt', 200, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3712, 'A1434', 'Hai Sup pap', 200, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3713, 'A1435', 'Bát côn sau', 200, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3714, 'A1436', 'Sạc', 203, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3715, 'A1437', 'Cuộn điện', 203, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3716, 'A1438', 'Sạc xịn', 205, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3717, 'A1439', 'Ổ khóa không từ', 205, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3718, 'A1440', 'Củ đề', 205, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3719, 'A1441', 'Bát côn sau', 205, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3720, 'A1442', 'Sạc xịn', 206, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3721, 'A1443', 'Cuộn điện', 206, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3722, 'A1444', 'Bạc máy', 206, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3723, 'A1445', 'Le nhiệt', 208, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3724, 'A1446', 'Cuộn điện', 209, '850000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3725, 'A1447', 'Ép biên', 189, '860000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3726, 'A1448', 'Đóng nòng', 196, '860000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'service', '', '0.0000'),
(3727, 'A1449', 'Bi cơ', 196, '860000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3728, 'A1450', 'Ép biên', 204, '860000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3729, 'A1451', 'Bát côn sau', 173, '920000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3730, 'A1452', 'Quả pittong', 196, '920000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3731, 'A1453', 'Ép biên', 196, '920000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3732, 'A1454', 'Sạc FI', 172, '950000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3733, 'A1455', 'Bộ Bô', 176, '950000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3734, 'A1456', 'Pha đèn', 180, '950000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3735, 'A1457', 'Ác quy 10A', 190, '950000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3736, 'A1458', 'Sạc', 192, '950000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3737, 'A1459', 'Mô bin SH-PS', 200, '950000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3738, 'A1460', 'Lốp trước 100/80 - 16', 200, '950000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3739, 'A1461', 'IC', 179, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3740, 'A1462', 'IC', 180, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3741, 'A1463', 'Chế hòa khí', 183, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3742, 'A1464', 'Chế hòa khí', 184, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3743, 'A1465', 'Trục cam mới', 189, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3744, 'A1466', 'Dây phun xăng điện tử', 196, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3745, 'A1467', 'Dây curoa', 196, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3746, 'A1468', 'Bát côn sau', 196, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3747, 'A1469', 'Tì cam', 200, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3748, 'A1470', 'Tay biên', 200, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3749, 'A1471', 'Đóng nòng', 200, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3750, 'A1472', 'Búa côn', 200, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3751, 'A1473', 'Bi cơ', 200, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3752, 'A1474', 'Trục cam mới', 204, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3753, 'A1475', 'Chế hòa khí', 209, '980000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3754, 'A1476', 'Bộ láp', 193, '1050000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3755, 'A1477', 'Bộ côn trước', 191, '1100000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3756, 'A1478', 'Bộ láp', 193, '1100000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3757, 'A1479', 'Bộ côn trước', 193, '1100000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3758, 'A1480', 'Khóa chống trộm', 172, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3759, 'A1481', 'Khóa chống trộm', 173, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3760, 'A1482', 'Khóa chống trộm', 174, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3761, 'A1483', 'Khóa chống trộm', 181, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3762, 'A1484', 'Khóa chống trộm', 186, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3763, 'A1485', 'Khóa chống trộm', 189, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3764, 'A1486', 'Khóa chống trộm', 191, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3765, 'A1487', 'Khóa chống trộm', 192, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3766, 'A1488', 'Khóa chống trộm', 193, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3767, 'A1489', 'Khóa chống trộm', 195, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3768, 'A1490', 'Sạc rắc', 196, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3769, 'A1491', 'Sạc dây', 196, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3770, 'A1492', 'Khóa chống trộm', 196, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3771, 'A1493', 'Củ đề', 196, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3772, 'A1494', 'Bạc máy', 196, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3773, 'A1495', 'Khóa chống trộm', 198, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3774, 'A1496', 'Khóa chống trộm', 199, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3775, 'A1497', 'Lốp sau 120/80 - 16', 200, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3776, 'A1498', 'Khóa chống trộm', 200, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3777, 'A1499', 'Bạc máy', 200, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3778, 'A1500', 'Khóa chống trộm', 203, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3779, 'A1501', 'Khóa chống trộm', 205, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3780, 'A1502', 'Bạc máy', 205, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3781, 'A1503', 'Khóa chống trộm', 206, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3782, 'A1504', 'Khóa chống trộm', 208, '1150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3783, 'A1505', 'Cuộn điện', 172, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3784, 'A1506', 'Bộ côn trước', 172, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3785, 'A1507', 'Bộ láp', 173, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3786, 'A1508', 'Bộ côn trước', 173, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3787, 'A1509', 'Bộ côn trước', 174, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3788, 'A1510', 'Chế hòa khí', 185, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3789, 'A1511', 'Chế hòa khí', 188, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3790, 'A1512', 'Cuộn điện', 189, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3791, 'A1513', 'Bộ côn trước', 189, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3792, 'A1514', 'Bộ láp', 191, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3793, 'A1515', 'Cuộn điện', 199, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3794, 'A1516', 'Bộ côn trước', 199, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3795, 'A1517', 'Ép biên', 200, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3796, 'A1518', 'Chế hòa khí', 201, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3797, 'A1519', 'Chế hòa khí', 202, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3798, 'A1520', 'Cuộn điện', 208, '1200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3799, 'A1521', 'Bộ lá côn tải', 178, '1250000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3800, 'A1522', 'Trục cam mới', 196, '1280000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3801, 'A1523', 'Bộ láp', 191, '1300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3802, 'A1524', 'Bộ côn sau', 191, '1300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3803, 'A1525', 'Bộ côn sau', 193, '1300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3804, 'A1526', 'Bộ côn trước', 196, '1350000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3805, 'A1527', 'Dây curoa', 200, '1350000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3806, 'A1528', 'trục cam cò', 189, '1400000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3807, 'A1529', 'Cuộn điện', 196, '1400000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3808, 'A1530', 'Bộ côn trước', 198, '1400000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3809, 'A1531', 'Trục cam mới', 200, '1400000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3810, 'A1532', 'trục cam cò', 204, '1400000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3811, 'A1533', 'Cuộn điện', 205, '1400000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3812, 'A1534', 'Dây phun xăng điện tử', 200, '1450000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3813, 'A1535', 'Bộ côn sau', 173, '1600000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3814, 'A1536', 'Bộ côn sau', 186, '1600000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3815, 'A1537', 'Bộ côn sau', 198, '1600000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3816, 'A1538', 'Bộ côn trước', 206, '1600000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3817, 'A1539', 'Bộ láp', 173, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3818, 'A1540', 'Vành sau', 180, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3819, 'A1541', 'Bộ láp', 181, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3820, 'A1542', 'Bộ láp', 181, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3821, 'A1543', 'Bộ côn trước', 181, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3822, 'A1544', 'Bộ côn sau', 181, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3823, 'A1545', 'Bộ côn trước', 186, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3824, 'A1546', 'Bộ láp', 192, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3825, 'A1547', 'Bộ láp', 192, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3826, 'A1548', 'Bộ láp', 198, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3827, 'A1549', 'Bộ côn trước L2', 200, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3828, 'A1550', 'Bộ láp', 203, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3829, 'A1551', 'Bộ láp', 203, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3830, 'A1552', 'Bộ côn trước', 203, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3831, 'A1553', 'Bộ côn sau', 203, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3832, 'A1554', 'Bộ ECU điều khiển không từ', 205, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3833, 'A1555', 'Bộ ECU điều khiển không từ', 206, '1800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3834, 'A1556', 'Bộ láp', 186, '2000000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3835, 'A1557', 'Bộ côn trước', 205, '2100000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3836, 'A1558', 'Sạc bãi', 200, '2150000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3837, 'A1559', 'Bộ láp', 189, '2200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3838, 'A1560', 'Bộ láp', 198, '2200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3839, 'A1561', 'Bộ láp', 199, '2200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3840, 'A1562', 'Ổ khóa không từ', 200, '2200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3841, 'A1563', 'Bộ láp', 206, '2200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3842, 'A1564', 'Bộ láp', 206, '2200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3843, 'A1565', 'Bộ láp', 174, '2300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3844, 'A1566', 'Bộ côn sau', 174, '2300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3845, 'A1567', 'Bộ láp', 189, '2300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3846, 'A1568', 'Bộ côn trước', 192, '2300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3847, 'A1569', 'Bộ côn sau', 192, '2300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3848, 'A1570', 'Bộ láp', 199, '2300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3849, 'A1571', 'Bộ côn sau', 206, '2300000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3850, 'A1572', 'Bơm xăng', 173, '2350000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3851, 'A1573', 'Sạc xịn', 200, '2350000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3852, 'A1574', 'trục cam cò', 196, '2380000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3853, 'A1575', 'Bơm xăng', 172, '2460000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3854, 'A1576', 'Bộ côn sau', 172, '2500000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3855, 'A1577', 'Bộ côn sau', 189, '2500000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3856, 'A1578', 'Bộ côn sau', 199, '2500000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3857, 'A1579', 'Bộ côn trước', 208, '2500000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3858, 'A1580', 'Bơm xăng', 189, '2530000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3859, 'A1581', 'Bơm xăng', 199, '2530000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3860, 'A1582', 'Bộ láp', 186, '2600000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3861, 'A1583', 'Củ đề SH - PS', 200, '2600000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3862, 'A1584', 'Bộ láp', 172, '2800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3863, 'A1585', 'Bộ láp', 172, '2800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3864, 'A1586', 'trục cam cò', 200, '2800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3865, 'A1587', 'Cuộn điện', 200, '2800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3866, 'A1588', 'Bộ láp', 208, '2800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3867, 'A1589', 'Bộ côn sau', 208, '2800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3868, 'A1590', 'Bơm xăng', 196, '2860000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3869, 'A1591', 'Bộ côn sau', 205, '3100000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3870, 'A1592', 'IC', 189, '3200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3871, 'A1593', 'Bộ côn sau', 196, '3200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3872, 'A1594', 'Bộ côn trước', 200, '3200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3873, 'A1595', 'Bộ láp', 205, '3200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3874, 'A1596', 'Bộ láp', 208, '3200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3875, 'A1597', 'Bộ côn sau', 200, '3400000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3876, 'A1598', 'Bộ ECU điều khiển không từ', 196, '3500000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3877, 'A1599', 'Bơm xăng SH-PS', 200, '3680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3878, 'A1600', 'Bộ ECU điều khiển FI', 172, '3800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3879, 'A1601', 'Bộ ECU điều khiển FI', 189, '3800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3880, 'A1602', 'Bộ ECU điều khiển FI', 199, '3800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3881, 'A1603', 'Bộ láp', 205, '4500000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3882, 'A1604', 'Bộ ECU điều khiển có từ', 196, '4800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3883, 'A1605', 'Bộ láp', 196, '5200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3884, 'A1606', 'Bộ ECU điều khiển có từ', 200, '5200000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3885, 'A1607', 'Bộ ECU điều khiển FI', 196, '7800000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3886, 'A1608', 'Bộ láp SH-PS', 200, '8500000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3887, 'A1609', 'Bộ ECU điều khiển FI', 200, '8500000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3888, 'A1610', 'Bộ láp', 200, '9500000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3889, 'A1611', 'IC', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3890, 'A1612', 'Củ đề', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3891, 'A1613', 'Khóa xăng', 201, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3893, 'A1615', 'Quây trước', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3894, 'A1616', 'Phot trục lap', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3895, 'A1617', 'Ổ khóa không từ', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3896, 'A1618', 'Ổ khóa có từ', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3897, 'A1619', 'Khóa càng', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3898, 'A1620', 'Dây cong-to-met Từ', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3899, 'A1621', 'Chế  phun xăng', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3900, 'A1622', 'Chế', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3901, 'A1623', 'Công tơ met', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3902, 'A1624', 'Bộ ECU điều khiển không từ', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3903, 'A1625', 'Bộ ECU điều khiển có từ', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3904, 'A1626', 'Bô', 172, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3905, 'A1627', 'Rơ le bơm xăng', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3906, 'A1628', 'Quây trước', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3907, 'A1629', 'Phot trục lap', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3908, 'A1630', 'Ổ khóa không từ', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3909, 'A1631', 'Ổ khóa có từ', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3910, 'A1632', 'Khóa càng', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3911, 'A1633', 'Dây cong-to-met Từ', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3912, 'A1634', 'Chế  phun xăng', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3913, 'A1635', 'Chế', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3914, 'A1636', 'Công tơ met', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3915, 'A1637', 'Bộ ECU điều khiển FI', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3916, 'A1638', 'Bộ ECU điều khiển có từ', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3917, 'A1639', 'Bô', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3918, 'A1640', 'Bạc Côn', 173, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3919, 'A1641', 'Sạc bãi', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3920, 'A1642', 'Rơ le bơm xăng', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000');
INSERT INTO `tec_products` (`id`, `code`, `name`, `category_id`, `price`, `image`, `tax`, `cost`, `tax_method`, `quantity`, `barcode_symbology`, `type`, `details`, `alert_quantity`) VALUES
(3921, 'A1643', 'Quây trước', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3922, 'A1644', 'Phot trục lap', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3923, 'A1645', 'Khóa càng', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3924, 'A1646', 'Bộ láp', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3925, 'A1647', 'Bô', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3926, 'A1648', 'Bạc Côn', 174, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3927, 'A1649', 'Khóa xăng', 175, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3928, 'A1650', 'Giảm sóc sau', 175, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3929, 'A1651', 'Bô', 175, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3930, 'A1652', 'Bát đề', 175, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3931, 'A1653', 'Khoá xăng', 176, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3932, 'A1654', 'Giảm sóc sau', 176, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3933, 'A1655', 'Bô', 176, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3934, 'A1656', 'Bát đề', 176, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3935, 'A1657', 'Pha đèn', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3936, 'A1658', 'Lọc gió', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3937, 'A1659', 'Khóa xăng', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3938, 'A1660', 'Giảm sóc sau', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3939, 'A1661', 'Dây phanh', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3940, 'A1662', 'Bô', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3941, 'A1663', 'Bát đề', 177, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3942, 'A1664', 'Ổ khóa', 179, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3943, 'A1665', 'Khóa xăng', 179, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3944, 'A1666', 'Giảm sóc sau', 179, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3945, 'A1667', 'Dây phanh', 179, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3946, 'A1668', 'Dây Ga', 179, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3947, 'A1669', 'Chế hòa khí', 179, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3948, 'A1670', 'Bô', 179, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3949, 'A1671', 'Ổ khóa', 180, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3950, 'A1672', 'Khóa xăng', 180, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3951, 'A1673', 'Giảm sóc sau', 180, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3952, 'A1674', 'Dây phanh', 180, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3953, 'A1675', 'Dây Ga', 180, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3954, 'A1676', 'Chế hòa khí', 180, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3955, 'A1677', 'Bô', 180, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3956, 'A1678', 'Rơ le bơm xăng', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3957, 'A1679', 'Quây trước', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3958, 'A1680', 'Phot trục lap', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3959, 'A1681', 'Ổ khóa không từ', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3960, 'A1682', 'Ổ khóa có từ', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3961, 'A1683', 'Lốp trước', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3962, 'A1684', 'Lốp sau', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3963, 'A1685', 'Khóa càng', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3964, 'A1686', 'Gương', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3965, 'A1687', 'Dây cong-to-met Từ', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3966, 'A1688', 'Chế  phun xăng', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3967, 'A1689', 'Chế', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3968, 'A1690', 'Công tơ met', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3969, 'A1691', 'Bộ ECU điều khiển không từ', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3970, 'A1692', 'Bộ ECU điều khiển FI', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3971, 'A1693', 'Bộ ECU điều khiển có từ', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3972, 'A1694', 'Bô', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3973, 'A1695', 'Bạc Côn', 181, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3976, 'A1698', 'Ổ khóa', 182, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3977, 'A1699', 'Lốp trước', 182, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3978, 'A1700', 'Lốp sau', 182, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3979, 'A1701', 'Khóa xăng', 182, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3980, 'A1702', 'Giảm sóc sau', 182, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3981, 'A1703', 'Bô', 182, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3982, 'A1704', 'Bát đề', 182, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3983, 'A1705', 'Pha đèn', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3984, 'A1706', 'Ổ khóa', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3985, 'A1707', 'Lốp trước', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3986, 'A1708', 'Lốp sau', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3987, 'A1709', 'Khóa xăng', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3988, 'A1710', 'IC', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3989, 'A1711', 'Giảm sóc sau', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3990, 'A1712', 'Điot sạc', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3991, 'A1713', 'Bô', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3992, 'A1714', 'Bát đề', 183, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3993, 'A1715', 'Ổ khóa', 184, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3994, 'A1716', 'Khóa xăng', 184, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3995, 'A1717', 'IC', 184, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3996, 'A1718', 'Giảm sóc sau', 184, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3997, 'A1719', 'Điot sạc', 184, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3998, 'A1720', 'Dau bo', 184, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(3999, 'A1721', 'Bô', 184, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4000, 'A1722', 'Bát đề', 184, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4001, 'A1723', 'Ác pittong', 184, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4002, 'A1724', 'Pha đèn', 185, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4003, 'A1725', 'Ổ khóa', 185, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4004, 'A1726', 'Má đĩa', 185, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4005, 'A1727', 'Lốp trước', 185, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4006, 'A1728', 'Lốp sau', 185, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4007, 'A1729', 'Khóa xăng', 185, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4008, 'A1730', 'Giảm sóc sau', 185, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4009, 'A1731', 'Bô', 185, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4010, 'A1732', 'Bát đề', 185, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4011, 'A1733', 'Rơ le bơm xăng', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4012, 'A1734', 'Quây trước', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4013, 'A1735', 'Phot trục lap', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4014, 'A1736', 'Ổ khóa không từ', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4015, 'A1737', 'Ổ khóa có từ', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4016, 'A1738', 'Lốp trước', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4017, 'A1739', 'Khóa càng', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4018, 'A1740', 'Dây cong-to-met Từ', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4019, 'A1741', 'Chế  phun xăng', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4020, 'A1742', 'Chế', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4021, 'A1743', 'Công tơ met', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4022, 'A1744', 'Bộ ECU điều khiển không từ', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4023, 'A1745', 'Bộ ECU điều khiển FI', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4024, 'A1746', 'Bộ ECU điều khiển có từ', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4025, 'A1747', 'Bô', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4026, 'A1748', 'Bạc Côn', 186, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4027, 'A1749', 'Pha đèn', 188, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4028, 'A1750', 'Ổ khóa', 188, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4029, 'A1751', 'Lốp trước = lốp Sirius', 188, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4030, 'A1752', 'Lốp sau = lốp Sirius', 188, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4031, 'A1753', 'Khóa xăng', 188, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4032, 'A1754', 'Giảm sóc sau', 188, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4033, 'A1755', 'Bô', 188, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4034, 'A1756', 'Bát đề', 188, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4035, 'A1757', 'Ổ khóa không từ', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4036, 'A1758', 'Ổ khóa có từ', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4037, 'A1759', 'Dây cong-to-met Từ', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4038, 'A1760', 'Chế  phun xăng', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4039, 'A1761', 'Chế', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4040, 'A1762', 'Công tơ met', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4041, 'A1763', 'Bộ ECU điều khiển không từ', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4042, 'A1764', 'Bộ ECU điều khiển có từ', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4043, 'A1765', 'Bô', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4044, 'A1766', 'Bạc Côn', 189, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4045, 'A1767', 'Khuyến mại phụ tùng 10%', 190, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4046, 'A1768', 'Dịch vụ sửa chữa khác', 190, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4047, 'A1769', 'Rơ le bơm xăng', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4048, 'A1770', 'Quây trước', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4049, 'A1771', 'Phot trục lap', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4050, 'A1772', 'Ổ khóa không từ', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4051, 'A1773', 'Ổ khóa có từ', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4052, 'A1774', 'Khóa càng', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4053, 'A1775', 'Gương', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4054, 'A1776', 'Dây cong-to-met Từ', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4055, 'A1777', 'Chế  phun xăng', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4056, 'A1778', 'Chế', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4057, 'A1779', 'Công tơ met', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4058, 'A1780', 'Bộ ECU điều khiển FI', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4059, 'A1781', 'Bộ ECU điều khiển có từ', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4060, 'A1782', 'Bô', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4061, 'A1783', 'Bạc Côn', 191, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4062, 'A1784', 'Rơ le bơm xăng', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4063, 'A1785', 'Quây trước', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4064, 'A1786', 'Phot trục lap', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4065, 'A1787', 'Ổ khóa không từ', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4066, 'A1788', 'Ổ khóa có từ', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4067, 'A1789', 'Khóa càng', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4068, 'A1790', 'Chế  phun xăng', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4069, 'A1791', 'Chế', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4070, 'A1792', 'Bộ ECU điều khiển không từ', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4071, 'A1793', 'Bộ ECU điều khiển FI', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4072, 'A1794', 'Bộ ECU điều khiển có từ', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4073, 'A1795', 'Bô', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4074, 'A1796', 'Bạc Côn', 192, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4075, 'A1797', 'Rơ le bơm xăng', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4076, 'A1798', 'Quây trước', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4077, 'A1799', 'Phot trục lap', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4078, 'A1800', 'Ổ khóa không từ', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4079, 'A1801', 'Ổ khóa có từ', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4080, 'A1802', 'Khóa càng', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4081, 'A1803', 'Dây cong-to-met Từ', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4082, 'A1804', 'Chế  phun xăng', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4083, 'A1805', 'Chế', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4084, 'A1806', 'Bộ ECU điều khiển FI', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4085, 'A1807', 'Bộ ECU điều khiển có từ', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4086, 'A1808', 'Bô', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4087, 'A1809', 'Bạc Côn', 193, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4088, 'A1810', 'Sạc', 195, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4089, 'A1811', 'Rơ le bơm xăng', 195, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4090, 'A1812', 'Quây trước', 195, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4091, 'A1813', 'Phot trục lap', 195, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4092, 'A1814', 'Má phanh cơ', 195, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4093, 'A1815', 'Khóa càng', 195, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4094, 'A1816', 'Gương', 195, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4095, 'A1817', 'Quây trước', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4096, 'A1818', 'Phot trục lap', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4097, 'A1819', 'Ổ khóa không từ', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4098, 'A1820', 'Khóa càng', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4099, 'A1821', 'Gương', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4100, 'A1822', 'Dây cong-to-met Từ', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4101, 'A1823', 'Chế  phun xăng', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4102, 'A1824', 'Chế', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4103, 'A1825', 'Công tơ met', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4104, 'A1826', 'Bô', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4105, 'A1827', 'Bạc Côn', 196, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4106, 'A1828', 'Rơ le bơm xăng', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4107, 'A1829', 'Quây trước', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4108, 'A1830', 'Phot trục lap', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4109, 'A1831', 'Ổ khóa không từ', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4110, 'A1832', 'Ổ khóa có từ', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4111, 'A1833', 'Khóa càng', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4112, 'A1834', 'Dây cong-to-met Từ', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4113, 'A1835', 'Chế  phun xăng', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4114, 'A1836', 'Chế', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4115, 'A1837', 'Công tơ met', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4116, 'A1838', 'Bộ ECU điều khiển không từ', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4117, 'A1839', 'Bộ ECU điều khiển FI', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4118, 'A1840', 'Bộ ECU điều khiển có từ', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4119, 'A1841', 'Bô', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4120, 'A1842', 'Bạc Côn', 198, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4121, 'A1843', 'Sạc bãi', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4122, 'A1844', 'Rơ le bơm xăng', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4123, 'A1845', 'Phot trục lap', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4124, 'A1846', 'Ổ khóa không từ', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4125, 'A1847', 'Ổ khóa có từ', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4126, 'A1848', 'Dây cong-to-met Từ', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4127, 'A1849', 'Chế  phun xăng', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4128, 'A1850', 'Chế', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4129, 'A1851', 'Công tơ met', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4130, 'A1852', 'Bộ ECU điều khiển không từ', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4131, 'A1853', 'Bộ ECU điều khiển có từ', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4132, 'A1854', 'Bô', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4133, 'A1855', 'Bạc Côn', 199, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4134, 'A1856', 'Quây trước', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4135, 'A1857', 'Phot trục lap', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4136, 'A1858', 'Ổ khóa có từ', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4137, 'A1859', 'Khóa càng', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4138, 'A1860', 'Gương', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4139, 'A1861', 'Dây cong-to-met Từ', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4140, 'A1862', 'Chế  phun xăng', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4141, 'A1863', 'Chế', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4142, 'A1864', 'Công tơ met', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4143, 'A1865', 'Bô', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4144, 'A1866', 'Bạc Côn', 200, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4145, 'A1867', 'Pha đèn', 201, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4146, 'A1868', 'Ổ khóa', 201, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4147, 'A1869', 'Giảm sóc sau', 201, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4148, 'A1870', 'Bô', 201, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4149, 'A1871', 'Bát đề', 201, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4150, 'A1872', 'Pha đèn', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4151, 'A1873', 'Ổ khóa', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4152, 'A1874', 'Lốp trước', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4153, 'A1875', 'Lốp sau', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4154, 'A1876', 'Khóa xăng', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4155, 'A1877', 'Giảm sóc sau', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4156, 'A1878', 'Dây phanh', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4157, 'A1879', 'Dây Ga', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4158, 'A1880', 'Bô', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4159, 'A1881', 'Bát đề', 202, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4160, 'A1882', 'Rơ le bơm xăng', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4161, 'A1883', 'Quây trước', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4162, 'A1884', 'Phot trục lap', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4163, 'A1885', 'Ổ khóa không từ', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4164, 'A1886', 'Ổ khóa có từ', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4165, 'A1887', 'Khóa càng', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4166, 'A1888', 'Gương', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4167, 'A1889', 'Dây phun xăng điện tử', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4168, 'A1890', 'Dây cong-to-met Từ', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4169, 'A1891', 'Chế  phun xăng', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4170, 'A1892', 'Chế', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4171, 'A1893', 'Công tơ met', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4172, 'A1894', 'Bộ ECU điều khiển không từ', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4173, 'A1895', 'Bộ ECU điều khiển FI', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4174, 'A1896', 'Bộ ECU điều khiển có từ', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4175, 'A1897', 'Bô', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4176, 'A1898', 'Bạc Côn', 203, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4177, 'A1899', 'Sạc bãi', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4178, 'A1900', 'Quây trước', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4179, 'A1901', 'Phot trục lap', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4180, 'A1902', 'Ổ khóa có từ', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4181, 'A1903', 'Má phanh đĩa', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4182, 'A1904', 'Khóa càng', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4183, 'A1905', 'Gương', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4184, 'A1906', 'Dây cong-to-met Từ', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4185, 'A1907', 'Chế  phun xăng', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4186, 'A1908', 'Chế', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4187, 'A1909', 'Công tơ met', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4188, 'A1910', 'Bô', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4189, 'A1911', 'Bạc Côn', 205, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4190, 'A1912', 'Sạc bãi', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4191, 'A1913', 'Quây trước', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4192, 'A1914', 'Phot trục lap', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4193, 'A1915', 'Ổ khóa không từ', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4194, 'A1916', 'Ổ khóa có từ', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4195, 'A1917', 'Khóa càng', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4196, 'A1918', 'Gương', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4197, 'A1919', 'Dây cong-to-met Từ', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4198, 'A1920', 'Chế  phun xăng', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4199, 'A1921', 'Chế', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4200, 'A1922', 'Công tơ met', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4201, 'A1923', 'Bộ ECU điều khiển FI', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4202, 'A1924', 'Bộ ECU điều khiển có từ', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4203, 'A1925', 'Bô', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4204, 'A1926', 'Bạc Côn', 206, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4205, 'A1927', 'Pha đèn', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4206, 'A1928', 'Ổ khóa', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4207, 'A1929', 'Lọc gió', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4208, 'A1930', 'Khóa xăng', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4209, 'A1931', 'IC', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4210, 'A1932', 'Giảm sóc sau', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4211, 'A1933', 'Dây phanh', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4212, 'A1934', 'Dây Ga', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4213, 'A1935', 'Chế hòa khí', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4214, 'A1936', 'Bô', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4215, 'A1937', 'Bát đề', 207, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4216, 'A1938', 'Rơ le bơm xăng', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4217, 'A1939', 'Quây trước', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4218, 'A1940', 'Phot trục lap', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4219, 'A1941', 'Ổ khóa không từ', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4220, 'A1942', 'Ổ khóa có từ', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4221, 'A1943', 'Khóa càng', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4222, 'A1944', 'Chế  phun xăng', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4223, 'A1945', 'Chế', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4224, 'A1946', 'Công tơ met', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4225, 'A1947', 'Bơm xăng', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4226, 'A1948', 'Bộ ECU điều khiển không từ', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4227, 'A1949', 'Bộ ECU điều khiển FI', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4228, 'A1950', 'Bộ ECU điều khiển có từ', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4229, 'A1951', 'Bô', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4230, 'A1952', 'Bạc Côn', 208, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4231, 'A1953', 'Pha đèn', 209, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4232, 'A1954', 'Khóa xăng', 209, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4233, 'A1955', 'IC', 209, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4234, 'A1956', 'Giảm sóc sau', 209, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4237, 'A1958', 'Sạc bãi', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4238, 'A1959', 'Quây trước', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4239, 'A1960', 'Dây le', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4240, 'A1961', 'Dây ăng - ten', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4241, 'A1962', 'Bạc máy', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4242, 'A1963', 'Bóng táp lô', 226, '10000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4243, 'A1964', 'Bóng xin nhan', 226, '25000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4244, 'A1965', 'Bóng hậu ( 1 quả)', 226, '30000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4245, 'A1967', 'Công tắc Còi', 226, '50000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4246, 'A1974', 'Công tắc Phanh tay', 226, '80000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4247, 'A1975', 'Công tắc Pha cốt', 226, '80000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4248, 'A1976', 'Công tắc Đèn', 226, '80000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4249, 'A1979', 'Chân vanĐồng', 226, '85000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4250, 'A1981', 'Dây cong-to-met Thường', 226, '95000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4251, 'A1984', 'Vòng bi gối', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4252, 'A1985', 'Tay phanh cơ', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4253, 'A1986', 'Rơ le bơm xăng', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4254, 'A1987', 'Phớt trục lap', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4255, 'A1988', 'Phớt trục lap', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4256, 'A1989', 'Công tắc Xin nhan', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4257, 'A1990', 'Công tắc Phanh đĩa', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4258, 'A1991', 'Công tắc Đề', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4259, 'A1992', 'Buzzi', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4260, 'A1993', ' Rơ le xi nhan', 226, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4261, 'A1997', 'Doong láp', 226, '140000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4262, 'A1998', 'Má phanh đĩa', 226, '145000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4263, 'A2000', 'Dây dẫn xăng', 226, '160000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4264, 'A2001', 'Lọc gió', 226, '165000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4265, 'A2003', 'Tay phanh đĩa', 226, '180000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4266, 'A2004', 'Phớt trục cơ', 226, '180000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4267, 'A2005', 'Phớt trục cơ', 226, '180000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4268, 'A2006', 'Củ Chân chống', 226, '180000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4269, 'A2007', 'Bóng pha', 226, '180000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4270, 'A2008', 'Bạc Côn', 226, '180000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4271, 'A2010', 'Tay nắm', 226, '220000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4272, 'A2011', 'Má phanh cơ', 226, '220000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4273, 'A2012', 'Dây ga', 226, '220000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4274, 'A2014', 'Gương', 226, '280000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4275, 'A2015', 'Dây phanh', 226, '280000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4276, 'A2022', 'Bi giọ côn sau', 226, '320000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4277, 'A2026', 'Rơ le đề', 226, '380000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4278, 'A2030', 'Khóa xăng', 226, '420000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4279, 'A2031', 'Đĩa', 226, '420000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4280, 'A2032', 'Bộ bat phot', 226, '420000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4281, 'A2033', 'Bi côn', 226, '420000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4282, 'A2035', 'Lốp trước 80/90 - 14', 226, '435000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4283, 'A2036', 'Dây mở khóa cốp', 226, '460000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4284, 'A2038', 'Lốp sau 90/90 - 14', 226, '465000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4285, 'A2039', 'Phớt và trục nước mát', 226, '480000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4286, 'A2040', 'Phớt và trục nước mát', 226, '480000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4287, 'A2041', 'Bi lap', 226, '480000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4288, 'A2044', 'Dây phun xăng điện tử', 226, '520000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4289, 'A2050', 'Dây curoa', 226, '620000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4290, 'A2051', 'Búa côn', 226, '650000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4291, 'A2052', 'Mô bin', 226, '680000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4292, 'A2053', 'Bát côn sau', 226, '680000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4293, 'A2055', 'Củ đề', 226, '685000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4294, 'A2056', 'Le nhiệt', 226, '720000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4295, 'A2063', 'Khóa chống trộm', 226, '1150000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4296, 'A2064', 'Cuộn điện', 226, '1400000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4297, 'A2066', 'Bơm xăng', 226, '2460000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4298, 'A2067', 'Bộ côn trước', 226, '2800000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4299, 'A2068', 'Bộ côn sau', 226, '2800000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4300, 'A2069', 'Bộ láp', 226, '3200000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4301, 'A2071', 'Bộ láp', 226, '3800000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4302, 'A2076', 'Bộ ECU điều khiển FI', 226, '8200000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4303, 'A2077', 'Phot trục lap', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4304, 'A2078', 'Ổ khóa không từ', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4305, 'A2079', 'Ổ khóa có từ', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4306, 'A2080', 'Khóa càng', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4307, 'A2081', 'Dây cong-to-met Từ', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4308, 'A2082', 'Chế  phun xăng', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4309, 'A2083', 'Chế', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4310, 'A2084', 'Công tơ met', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4311, 'A2085', 'Bộ ECU điều khiển không từ', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4312, 'A2086', 'Bộ ECU điều khiển có từ', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4313, 'A2087', 'Bô', 226, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4314, 'A1973', 'Giảm giật bánh sau', 227, '75000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000');
INSERT INTO `tec_products` (`id`, `code`, `name`, `category_id`, `price`, `image`, `tax`, `cost`, `tax_method`, `quantity`, `barcode_symbology`, `type`, `details`, `alert_quantity`) VALUES
(4315, 'A1977', 'Phot git', 227, '80000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4316, 'A1983', 'Láng bát côn', 227, '115000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4317, 'A1994', 'Mài cam cò', 227, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4318, 'A1999', 'Già nấm', 227, '145000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4319, 'A2002', 'Sup pap', 227, '170000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4320, 'A2013', 'Doa đánh bóng nòng', 227, '235000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4321, 'A2016', 'Bộ Doong', 227, '280000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4322, 'A2025', 'Đóng lại giảm giật', 227, '345000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4323, 'A2027', 'Xích cam', 227, '380000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4324, 'A2028', 'Dán búa côn', 227, '380000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4325, 'A2029', 'Bi trục cam', 227, '380000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4326, 'A2037', 'Bộ xec-măng', 227, '460000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4327, 'A2042', 'Thanh ty cam', 227, '480000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4328, 'A2043', 'Quả pittong', 227, '480000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4329, 'A2045', 'Tổng bơm dầu', 227, '550000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4330, 'A2047', 'Bộ phớt máy', 227, '566603.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4331, 'A2048', 'Dóng nòng', 227, '580000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4332, 'A2049', 'Búa côn', 227, '580000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4333, 'A2057', 'Bi cơ', 227, '720000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4334, 'A2058', 'Ép biên', 227, '760000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4335, 'A2017', 'Rơ le xin nhan LI', 228, '280000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4336, 'A2059', 'Búa côn LI', 228, '780000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4337, 'A2073', 'Bộ láp LI 150', 228, '4500000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4338, 'A2074', 'Bộ láp LI 3 van', 228, '4800000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4339, 'A1995', 'Rơ le xin nhan LX', 221, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4340, 'A2060', 'Búa côn LX', 221, '850000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4341, 'A2072', 'Bộ láp LX', 221, '4200000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4342, 'A2009', 'Dây mở khóa cốp SH2006', 222, '185000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4343, 'A2034', 'Đĩa SH2006', 222, '420000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4344, 'A2061', 'Mô bin SH2006', 222, '850000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4345, 'A2018', 'Củ Chân chống SH2012', 223, '280000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4346, 'A2070', 'Củ đề SH2012', 223, '3200000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4347, 'A2046', 'Bi lap SH2013', 224, '550000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4348, 'A2065', 'Bơm xăng SH2013', 224, '2350000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4349, 'A2075', 'Bộ láp SH2013', 224, '7500000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4350, 'A1966', 'Bóng hậu', 225, '40000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4351, 'A1968', 'Dây công tơ mét', 225, '55000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4352, 'A1969', 'Bi nhông', 225, '55000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4353, 'A1970', 'Má đĩa', 225, '65000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4354, 'A1971', 'Dây Ga', 225, '65000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4355, 'A1972', 'Má cơ', 225, '70000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4356, 'A1978', 'Bi banh', 225, '80000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4357, 'A1980', 'Giảm giật bánh sau', 225, '85000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4358, 'A1982', 'Sâu công tơ mét', 225, '95000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4359, 'A1996', 'Bóng đèn pha', 225, '120000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4360, 'A2019', 'Điot sạc', 225, '280000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4361, 'A2020', 'Bat phot', 225, '285000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4362, 'A2021', 'Nhông xích', 225, '295000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4363, 'A2023', 'Ty sóc sau', 225, '320000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4364, 'A2024', 'Củ đề', 225, '320000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4365, 'A2062', 'IC', 225, '850000.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4366, 'A2088', 'Pha đèn', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4367, 'A2089', 'Ổ khóa', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4368, 'A2090', 'Lốp trước', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4369, 'A2091', 'Lốp sau', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4370, 'A2092', 'Lọc gió', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4371, 'A2093', 'Khóa xăng', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4372, 'A2094', 'Giảm sóc sau', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4373, 'A2095', 'Dây phanh', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4374, 'A2096', 'Chế hòa khí', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4375, 'A2097', 'Cuộn điện', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4376, 'A2098', 'Bô', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code39', 'standard', NULL, '0.0000'),
(4377, 'A2099', 'Bát đề', 225, '0.0000', 'no_image.png', '0', '0.0000', 1, '0.0000', 'code128', 'standard', '', '0.0000'),
(4378, 'CO1111', 'Bộ lá côn tải', 229, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code128', 'standard', '', '1.0000'),
(4379, 'CO111EX5', 'Bộ lá côn tải', 180, '720000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code128', 'combo', '', '0.0000'),
(4380, 'CO111EX4', 'Bộ lá côn tải', 179, '680000.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code39', 'combo', '', '0.0000'),
(4381, 'HUYHOADON', 'HUYHOADON', 229, '0.0000', 'no_image.png', '0', '0.0000', 0, '0.0000', 'code128', 'service', '', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `tec_product_store_qty`
--

CREATE TABLE `tec_product_store_qty` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_product_store_qty`
--

INSERT INTO `tec_product_store_qty` (`id`, `product_id`, `store_id`, `quantity`, `price`) VALUES
(1, 1, 1, '-1.0000', '2323.0000'),
(2, 2, 1, '-22.0000', '4545.0000'),
(3, 198, 1, '995.0000', '12.0000'),
(4, 197, 1, '-7.0000', '0.0000'),
(5, 197, 2, '0.0000', '0.0000'),
(6, 197, 3, '0.0000', '0.0000'),
(7, 199, 1, '0.0000', '0.0000'),
(8, 199, 2, '0.0000', '0.0000'),
(9, 199, 3, '0.0000', '0.0000'),
(10, 200, 1, '0.0000', '0.0000'),
(11, 200, 2, '0.0000', '0.0000'),
(12, 200, 3, '0.0000', '0.0000'),
(13, 201, 1, '0.0000', '0.0000'),
(14, 201, 2, '0.0000', '0.0000'),
(15, 201, 3, '0.0000', '0.0000'),
(16, 198, 2, '0.0000', '12.0000'),
(17, 198, 3, '0.0000', '12.0000'),
(18, 312, 1, '0.0000', '0.0000'),
(19, 312, 2, '0.0000', '0.0000'),
(20, 312, 3, '0.0000', '0.0000'),
(21, 4236, 1, '0.0000', '0.0000'),
(22, 4236, 2, '0.0000', '0.0000'),
(23, 4236, 3, '0.0000', '0.0000'),
(24, 4378, 1, '0.0000', '0.0000'),
(25, 4378, 2, '0.0000', '0.0000'),
(26, 4378, 3, '0.0000', '0.0000'),
(27, 4379, 1, '0.0000', '0.0000'),
(28, 4379, 2, '0.0000', '0.0000'),
(29, 4379, 3, '0.0000', '0.0000'),
(30, 4380, 1, '0.0000', '0.0000'),
(31, 4380, 2, '0.0000', '0.0000'),
(32, 4380, 3, '0.0000', '0.0000'),
(33, 4377, 1, '0.0000', '0.0000'),
(34, 4377, 2, '0.0000', '0.0000'),
(35, 4377, 3, '0.0000', '0.0000'),
(36, 3726, 1, '0.0000', '0.0000'),
(37, 3726, 2, '0.0000', '0.0000'),
(38, 3726, 3, '0.0000', '0.0000'),
(39, 4381, 1, '0.0000', '0.0000'),
(40, 4381, 2, '0.0000', '0.0000'),
(41, 4381, 3, '0.0000', '0.0000'),
(42, 1884, 1, '1.0000', '0.0000'),
(43, 1886, 1, '56.0000', NULL),
(44, 1884, 2, '0.0000', '0.0000'),
(45, 1884, 3, '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `tec_purchases`
--

CREATE TABLE `tec_purchases` (
  `id` int(11) NOT NULL,
  `reference` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,4) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `received` tinyint(1) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_purchases`
--

INSERT INTO `tec_purchases` (`id`, `reference`, `date`, `note`, `total`, `attachment`, `supplier_id`, `received`, `created_by`, `store_id`) VALUES
(1, '', '2018-04-18 17:31:00', '', '70870.0000', NULL, NULL, NULL, 1, 1),
(2, '', '2018-05-14 01:06:00', '', '14360000.0000', NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tec_purchase_items`
--

CREATE TABLE `tec_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `cost` decimal(25,4) NOT NULL,
  `subtotal` decimal(25,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_purchase_items`
--

INSERT INTO `tec_purchase_items` (`id`, `purchase_id`, `product_id`, `quantity`, `cost`, `subtotal`) VALUES
(1, 1, 2, '2.0000', '35435.0000', '70870.0000'),
(4, 2, 1884, '4.0000', '230000.0000', '920000.0000'),
(5, 2, 1886, '56.0000', '240000.0000', '13440000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `tec_registers`
--

CREATE TABLE `tec_registers` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,4) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,4) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_registers`
--

INSERT INTO `tec_registers` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`, `store_id`) VALUES
(1, '2018-04-18 13:20:23', 1, '1000000000.0000', 'close', '1000123942.5500', 0, 0, '1000123942.5500', 0, 0, '', '2018-04-21 16:47:12', '0', 1, 1),
(2, '2018-04-21 16:47:24', 1, '200000.0000', 'close', '200000.0000', 0, 0, '200000.0000', 0, 0, '', '2018-05-12 16:28:52', '0', 1, 1),
(3, '2018-05-12 21:15:02', 1, '2000000.0000', 'close', '2000000.0000', 0, 0, '2000000.0000', 0, 0, '', '2018-05-12 21:26:37', '0', 1, 1),
(4, '2018-05-12 21:32:10', 1, '2000000.0000', 'close', '2002449.1500', 0, 0, '2002449.1500', 0, 0, '', '2018-05-13 00:57:21', NULL, 1, 1),
(5, '2018-05-13 00:51:06', 4, '200000.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, '2018-05-13 00:57:55', 1, '2000000.0000', 'close', '108680666.0000', 0, 0, '108680666.0000', 0, 0, '', '2018-05-13 01:00:27', NULL, 1, 1),
(7, '2018-05-13 01:00:56', 1, '200000.0000', 'close', '200000.0000', 0, 0, '200000.0000', 0, 0, '', '2018-05-14 00:14:42', '0', 1, 1),
(8, '2018-05-14 00:15:49', 1, '600000.0000', 'close', '600000.0000', 0, 0, '600000.0000', 0, 0, '', '2018-05-14 00:25:33', NULL, 1, 1),
(9, '2018-05-14 00:49:58', 1, '500000.0000', 'close', '1225197.0000', 0, 0, '1225197.0000', 0, 0, '', '2018-05-14 00:50:58', NULL, 1, 1),
(10, '2018-05-14 00:51:39', 1, '300000.0000', 'close', '2020000.0000', 0, 0, '2020000.0000', 0, 0, '', '2018-07-17 22:45:22', NULL, 1, 1),
(11, '2018-07-17 22:46:44', 1, '200000.0000', 'close', '200000.0000', 0, 0, '200000.0000', 0, 0, '', '2018-07-17 22:53:40', NULL, 1, 1),
(12, '2018-07-18 00:57:19', 1, '12333333.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tec_sales`
--

CREATE TABLE `tec_sales` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT NULL,
  `product_tax` decimal(25,4) DEFAULT NULL,
  `order_tax_id` varchar(20) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) NOT NULL,
  `total_items` int(11) DEFAULT NULL,
  `total_quantity` decimal(15,4) DEFAULT NULL,
  `paid` decimal(25,4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `rounding` decimal(10,4) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '1',
  `hold_ref` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_sales`
--

INSERT INTO `tec_sales` (`id`, `date`, `customer_id`, `customer_name`, `total`, `product_discount`, `order_discount_id`, `order_discount`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `grand_total`, `total_items`, `total_quantity`, `paid`, `created_by`, `updated_by`, `updated_at`, `note`, `status`, `rounding`, `store_id`, `hold_ref`) VALUES
(24, '2018-05-13 17:50:07', 3, 'quân', '690664.0000', '0.0000', '0%', '0.0000', '0.0000', '0.0000', '5%', '34533.2000', '34533.2000', '725197.2000', 6, '10.0000', '725197.0000', 1, NULL, NULL, '', 'paid', '0.0000', 1, ''),
(25, '2018-05-13 17:51:48', 3, 'quân', '1280000.0000', '0.0000', '0%', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '1280000.0000', 4, '4.0000', '1280000.0000', 1, 1, '2018-05-13 17:52:25', '', 'partial', '0.0000', 1, '111'),
(26, '2018-05-13 18:01:45', 3, 'quân', '0.0000', '0.0000', '0%', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '1.0000', '0.0000', 1, NULL, NULL, '', 'due', '0.0000', 1, ''),
(27, '2018-07-02 10:17:49', 3, 'quân', '320000.0000', '0.0000', '0%', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '320000.0000', 1, '1.0000', '320000.0000', 1, NULL, NULL, '', 'paid', '0.0000', 1, ''),
(28, '2018-07-17 15:35:23', 3, 'quân', '320000.0000', '0.0000', '0%', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '320000.0000', 2, '2.0000', '320000.0000', 1, NULL, NULL, 'cxxcvvcgc', 'paid', '0.0000', 1, ''),
(29, '2018-07-17 17:58:07', 3, 'quân', '1595000.0000', '0.0000', '0%', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '1595000.0000', 5, '5.0000', '1595000.0000', 1, NULL, NULL, '', 'paid', '0.0000', 3, ''),
(30, '2018-07-17 17:59:32', 3, 'quân', '320000.0000', '0.0000', '0%', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '320000.0000', 1, '1.0000', '320000.0000', 1, NULL, NULL, '', 'paid', '0.0000', 3, '454545'),
(31, '2018-07-17 18:00:17', 3, 'quân', '1750000.0000', '0.0000', '5%', '87500.0000', '87500.0000', '0.0000', NULL, '0.0000', '0.0000', '1662500.0000', 5, '5.0000', '1662500.0000', 1, NULL, NULL, '', 'paid', '0.0000', 3, '123243434'),
(32, '2018-07-17 18:06:19', 3, 'quân', '0.0000', '0.0000', '5%', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '1.0000', '1211250.0000', 1, 1, '2018-07-17 22:55:00', '', 'partial', '0.0000', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tec_sale_items`
--

CREATE TABLE `tec_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `tax` int(20) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT '0.0000',
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `comment2` text,
  `remove_qty` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_sale_items`
--

INSERT INTO `tec_sale_items` (`id`, `sale_id`, `product_id`, `quantity`, `unit_price`, `net_unit_price`, `discount`, `item_discount`, `tax`, `item_tax`, `subtotal`, `real_unit_price`, `cost`, `product_code`, `product_name`, `comment`, `comment2`, `remove_qty`) VALUES
(54, 24, 197, '2.0000', '666.0000', '666.0000', '0', '0.0000', 0, '0.0000', '1332.0000', '666.0000', '0.0000', 'Code', 'Name', '', '', 1),
(55, 24, 198, '2.0000', '12000.0000', '12000.0000', '0', '0.0000', 0, '0.0000', '24000.0000', '12000.0000', '0.0000', 'Xemay', 'Uueie', '', '', 1),
(56, 24, 197, '2.0000', '666.0000', '666.0000', '0', '0.0000', 0, '0.0000', '1332.0000', '666.0000', '0.0000', 'Code', 'Name', '', '', 1),
(57, 24, 198, '2.0000', '12000.0000', '12000.0000', '0', '0.0000', 0, '0.0000', '24000.0000', '12000.0000', '0.0000', 'Xemay', 'Uueie', '', '', 1),
(58, 24, 3308, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1029', 'Bộ phớt điện', '', '', 1),
(59, 24, 3309, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1030', 'Bi côn', '', '', 1),
(64, 25, 3320, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1041', 'Ty sóc sau', '', '', 1),
(65, 25, 3321, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1042', 'Bi côn', '', '', 1),
(66, 25, 3310, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1031', 'Dây mở khóa cốp', '', '', 1),
(67, 25, 3309, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1030', 'Bi côn', '', '', 1),
(68, 26, 4381, '1.0000', '0.0000', '0.0000', '0', '0.0000', 0, '0.0000', '0.0000', '0.0000', '0.0000', 'HUYHOADON', 'HUYHOADON', '', '', 0),
(69, 27, 3317, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1038', 'Dây phanh', '', '', 1),
(70, 28, 3958, '1.0000', '0.0000', '0.0000', '0', '0.0000', 0, '0.0000', '0.0000', '0.0000', '0.0000', 'A1680', 'Phot trục lap', '', '', 1),
(71, 28, 3319, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1040', 'Ty sóc sau', '', '', 1),
(72, 29, 3290, '1.0000', '315000.0000', '315000.0000', '0', '0.0000', 0, '0.0000', '315000.0000', '315000.0000', '0.0000', 'A1011', 'Ac quy 4A', '', '', 1),
(73, 29, 3298, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1019', 'Bi côn', '', '', 1),
(74, 29, 3305, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1026', 'Bi côn', '', '', 1),
(75, 29, 3312, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1033', 'Dây mở khóa cốp', '', '', 1),
(76, 29, 3319, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1040', 'Ty sóc sau', '', '', 1),
(77, 30, 3320, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1041', 'Ty sóc sau', '', '', 1),
(78, 31, 3307, '1.0000', '320000.0000', '320000.0000', '0', '0.0000', 0, '0.0000', '320000.0000', '320000.0000', '0.0000', 'A1028', 'Doa đánh bóng nòng', '', '', 1),
(79, 31, 3330, '1.0000', '335000.0000', '335000.0000', '0', '0.0000', 0, '0.0000', '335000.0000', '335000.0000', '0.0000', 'A1052', 'Nhông xích', '', '', 1),
(80, 31, 3333, '1.0000', '335000.0000', '335000.0000', '0', '0.0000', 0, '0.0000', '335000.0000', '335000.0000', '0.0000', 'A1055', 'Ác quy 5A cao', '', '', 1),
(81, 31, 3352, '1.0000', '380000.0000', '380000.0000', '0', '0.0000', 0, '0.0000', '380000.0000', '380000.0000', '0.0000', 'A1074', 'Rơ le đề', '', '', 1),
(82, 31, 3366, '1.0000', '380000.0000', '380000.0000', '0', '0.0000', 0, '0.0000', '380000.0000', '380000.0000', '0.0000', 'A1088', 'Củ đề', '', '', 1),
(87, 32, 4381, '1.0000', '0.0000', '0.0000', '0', '0.0000', 0, '0.0000', '0.0000', '0.0000', '0.0000', 'HUYHOADON', 'HUYHOADON', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tec_sessions`
--

CREATE TABLE `tec_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_sessions`
--

INSERT INTO `tec_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('03dprjeaqmgis43v0iskhb77kr6vlre7', '14.188.166.87', 1526183713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138333631343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('06qknrl33d1ddhnkk23gh6nn0i9a5k2q', '52.114.6.38', 1531910096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303039363b),
('0akrsnlql64kthl2vepuco30kbvah4do', '66.249.92.207', 1531909984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393938343b),
('0dscbktfa3i5qa5rb1o3dcl7l5rem8p4', '14.188.166.87', 1526207693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230373431383b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b),
('11fi09iggfnqgt9b9d26q8919fplaqpn', '66.249.92.207', 1531824355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343335353b),
('1chbn9po0dh9g7me5hmaa4d43i8t62qg', '42.112.133.99', 1531816453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313831363136343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353031323539223b6c6173745f69707c733a31343a2231342e3137372e3231322e323137223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b),
('1m6p3mufnmn98v0udefpqdpak4r2o660', '66.249.92.205', 1531909991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393939313b),
('244oa129ebmeqdusna4h6qrfm9vbqmi7', '14.188.166.87', 1526195265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139353030353b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b6572726f727c733a36373a22567569206cc3b26e67206b69e1bb836d2074726120746875e1babf2073e1baa36e207068e1baa96d2028292e20546875e1babf207068e1baa369206cc3a02073e1bb91223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('29rvn5atnkqms0q545os188jqrsh99hj', '52.114.14.102', 1531910028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303032383b),
('2e9coemdbengijjhi4bc54rsedn55p23', '14.188.166.87', 1526188823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138383636333b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('31faen9dta9nhedjcsnilc6h4oob4evd', '66.249.92.207', 1531826902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363930323b),
('34aseclc28dfef3vu394on1ah468qrh2', '66.249.92.205', 1531826910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363931303b),
('443b90bn013ahje13fb0ibpk9oioop6a', '66.249.92.205', 1531826900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363930303b),
('4ac665nsq69nhspe21nkcepdpnpbkoa4', '13.76.241.210', 1527487548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373438373534383b),
('4ga3brrsk5mfbis5c1tfssb87jkh1amv', '66.249.92.205', 1531826899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363839393b),
('4kb2vhjsrda0umgf3f8tooe6dadolsv2', '14.188.166.87', 1526207019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230363639323b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2238223b636173685f696e5f68616e647c733a31313a223630303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a31353a3439223b),
('4p88mejn1kn0r45ev2tunstve61r1m43', '183.81.49.139', 1531826509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363335383b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383234343831223b6c6173745f69707c733a31333a2234322e3131322e3133332e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2233223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223132223b636173685f696e5f68616e647c733a31333a2231323333333333332e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30372d31372031373a35373a3139223b),
('4quq6tpja2ss977ud9uc7hn0c1506u94', '66.249.92.205', 1531826903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363930333b),
('54jidl8ngjsbfafhlrfghc9k5visg0h2', '14.188.166.87', 1526205142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230343834373b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('58oummo3klqlr2m30aqg5nnbkrc6611t', '66.249.92.209', 1531826898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363839383b),
('5fg3m9ovepa44f5tm9msc3fh06nf3bs4', '52.114.6.38', 1531910096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303039363b),
('5mj2n46mp5o7av6m4lk1vu4l9bj6eseb', '66.102.6.42', 1531861850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313836313835303b),
('5svsf2pcuvr7qet8pj7e090l8sagu0ol', '14.188.166.87', 1526209796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230393533353b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323035303031223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b726d73706f737c693a313b),
('5trsg724m5675pbv6usbn7n2ojj6gti2', '66.249.92.205', 1531826904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363930343b),
('6109cprukg9g61nkc3vpvev3o9i48m2d', '66.249.92.205', 1531826912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363931323b),
('62bl2q2ndso1u6tde2a1qgr37hat1c2f', '14.177.212.217', 1530502540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303530323430333b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323038353733223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b),
('6aamm97t6f7rhtq08tqcjpppebd6va2s', '66.249.92.205', 1531909989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393938393b),
('6mhnjcjgb03o3tnd4p1ip01duo4488hp', '14.188.166.87', 1526193451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139333232303b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b6572726f727c733a36373a22567569206cc3b26e67206b69e1bb836d2074726120746875e1babf2073e1baa36e207068e1baa96d2028292e20546875e1babf207068e1baa369206cc3a02073e1bb91223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('72n17l9psgi2f9g13h83rr9ooh50p0ks', '14.188.166.87', 1526190144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138393930303b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('73h8qrc8ddttvidlv3bpkqr8qanlfn2n', '14.177.212.217', 1530502136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303530323039383b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323038353733223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b),
('795ipnin2qhe8c1k4fmje8mtm6s2tb7u', '14.188.166.87', 1526185228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138343932333b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323935223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('7fjp0mdrebg4m8vvlndg43go81v3oi5j', '14.188.166.87', 1526188838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138383833383b),
('7gv364fdv7bvfljiomfvg2i0brqojb35', '66.102.6.42', 1526570369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363537303336393b),
('7v4icg54pn68jtaenp9ngeq1kbtr5826', '14.188.166.87', 1526197361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139373234323b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b6572726f727c733a36373a22567569206cc3b26e67206b69e1bb836d2074726120746875e1babf2073e1baa36e207068e1baa96d2028292e20546875e1babf207068e1baa369206cc3a02073e1bb91223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('84u4o7kvdn2n2jikj832d41tstatk480', '52.114.14.102', 1531910028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303032383b),
('85k0slnagfnau4ji7qhu22te07bocbrp', '14.177.212.217', 1530503118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303530333035373b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323038353733223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b),
('8dn8lii9dnab24q5eonolpgdb59scms3', '14.188.166.87', 1526184923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138343632313b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323935223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('8krt598fog21j6bj30t96hl1ef1h1f2r', '66.249.92.205', 1531826911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363931313b),
('8o5tee459ub8d9nijk63sg52s7k3dh5t', '66.249.92.205', 1531826910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363931303b),
('8teik1t80gepqrru4abtmfakkiui893q', '14.188.166.87', 1526209511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230393231313b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323035303031223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b726d73706f737c693a313b),
('9c1k812b06lsvloqhjptv8q7a9blg0tq', '66.249.92.205', 1531909980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393938303b),
('9ggb1gc72lkg32a8fn9f5b3nrmjfmb48', '52.114.14.102', 1531910028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303032383b),
('9kj4t0g6er13anfe6a28lfvh7p9t96jv', '14.188.166.87', 1526199521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139393231343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('9qovgg1amv91jn6nb1k04aprbcfvo82l', '42.112.133.99', 1531816770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313831363438323b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353031323539223b6c6173745f69707c733a31343a2231342e3137372e3231322e323137223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b),
('9t83alf2jqdies62cenptqqbnluppjj6', '183.81.49.139', 1531825852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832353537393b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383234343831223b6c6173745f69707c733a31333a2234322e3131322e3133332e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2233223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223132223b636173685f696e5f68616e647c733a31333a2231323333333333332e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30372d31372031373a35373a3139223b),
('9tjm6pcc480j103i2bduujdh17gdomae', '14.188.166.87', 1526188838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138383833383b),
('a0pmqj5k46md4eg5dvl5f1kfu7cunoke', '14.188.166.87', 1526184346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138343236363b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('af78kng3j1sa4jirn5hg18f20pjsbodu', '183.81.49.139', 1531826282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363031333b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383234343831223b6c6173745f69707c733a31333a2234322e3131322e3133332e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2233223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223132223b636173685f696e5f68616e647c733a31333a2231323333333333332e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30372d31372031373a35373a3139223b),
('afgscmrsa92qm3nv4oo2prnglejgvfss', '14.188.166.87', 1526209130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230383837393b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323035303031223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b),
('aid2fgnnp88fllorcapqrj0dp1av3lo8', '42.112.133.99', 1531825252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832353136313b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383132333533223b6c6173745f69707c733a31333a2234322e3131322e3133332e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2233223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223132223b636173685f696e5f68616e647c733a31333a2231323333333333332e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30372d31372031373a35373a3139223b),
('ao915bfe586v7k5u76o30lcsk9jqjtk7', '59.153.255.3', 1526249700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363234393639393b),
('aronfbv204ijm76jjnnehgchkkeqn5af', '42.112.133.99', 1531824697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343639373b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383132333533223b6c6173745f69707c733a31333a2234322e3131322e3133332e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c4e3b6861735f73746f72655f69647c4e3b),
('arvafoe0ja0i1l6e15749gbhtggclcav', '14.188.166.87', 1526197124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139363934303b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b6572726f727c733a36373a22567569206cc3b26e67206b69e1bb836d2074726120746875e1babf2073e1baa36e207068e1baa96d2028292e20546875e1babf207068e1baa369206cc3a02073e1bb91223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('bc9v0de7kon2f0spjqi3ffgpbd18cjic', '14.188.166.87', 1526185916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138353232383b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323935223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('be8421rk637ja9i3a94ba1dipg11sdmc', '14.171.203.151', 1526372266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363337323236363b),
('bhe5b13iflkrotfpm5eapkdjm5599s6b', '66.249.92.205', 1531909994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393939343b),
('c0l1luddsj6ba3683pjrvmapoanir8qi', '52.114.6.38', 1531910095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303039353b),
('c1p2ahq0eomgak9ua6oni6ovbcn49h1s', '64.233.172.235', 1530622182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632323138323b),
('d0uiq757pmqtn7ckjuaqp45mujhhmmck', '14.188.166.87', 1526208831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230383536373b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323035303031223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b726d73706f737c693a313b),
('d1igkrg6jf9ipt3vem83144m58ggf9oj', '52.114.14.102', 1531910028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303032383b),
('d2323o9oiqipj7bqd2cn5t157gtv4o24', '66.102.6.44', 1526747302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363734373330323b),
('dftcdrqvj9cl6mmg70npofdcqgml7h02', '14.188.166.87', 1526187956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138373931343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('dhumjnl962mrqt51epsu6f42ig0f6051', '66.249.92.205', 1531909989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393938393b),
('divvorsvf5hc156oj6atcstnu417td7p', '66.102.6.44', 1531861851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313836313835313b),
('dr6vap38up2ih2utcslvlmrqf8jviptr', '14.188.166.87', 1526207861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230373736343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b),
('e0bg1s58s71j5ml9p9egbh2nei76gk48', '183.81.49.139', 1531912537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931323533373b),
('e1oj3e2f5iqkk3id7pgmgc9brd07lemm', '66.249.92.205', 1531824358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343335383b),
('e2stp9if53sguj3uk12iirr7846cuehf', '66.102.6.46', 1531734974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313733343937343b),
('eaj7umbt1m6r2fmjbba0v6sfkpueq5lt', '66.249.92.205', 1531909990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393939303b),
('eh87q1usa8a3ppqn536i7q9i1i7a0i33', '14.188.166.87', 1526205423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230353134383b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('ejr5r5qlh8f2irfck08h85tvr5n7so5n', '14.188.166.87', 1526206684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230363338343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2238223b636173685f696e5f68616e647c733a31313a223630303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a31353a3439223b6d6573736167657c733a33373a2243e1baad70206e68e1baad742063c3a06920c491e1bab774207468c3a06e682063c3b46e67223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('evm6vefdas9orr53t3mau1q9ekbgas7h', '14.188.166.87', 1526210173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363231303137333b),
('f4gaet8e25nm1i951u6d7hcsahjokclh', '14.188.166.87', 1526195626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139353439323b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b6572726f727c733a36373a22567569206cc3b26e67206b69e1bb836d2074726120746875e1babf2073e1baa36e207068e1baa96d2028292e20546875e1babf207068e1baa369206cc3a02073e1bb91223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('f65d73joocqoc9s72oedf1lt33vtigku', '66.249.92.205', 1531824359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343335393b),
('f734kreaj8grii4ao24vm9meigm0ajuk', '14.188.166.87', 1526187150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138373135303b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('f7l0qo6n2otpc3fm6ptd0hi0padmuf0t', '14.188.166.87', 1526188395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138383039343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323935223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('fakr40883ur4lcvfme460c8rek8g5ggn', '13.76.241.210', 1527487547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373438373534373b),
('fn6pomlh2h4kjtsn5db297qct5ov4aq0', '14.177.212.217', 1530502098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303530323039383b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323038353733223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b),
('fq978bfrp7kd3hljhvihdgk3h8sqc7bv', '66.249.92.205', 1531909985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393938353b),
('frnahsih0sdg0pl289ps6cmhq118phdv', '66.249.92.205', 1531826911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363931313b),
('fv971pm3sfod7vjvu0bjmh6g01rj4cro', '66.249.92.205', 1531909993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393939333b),
('gp1d05jq2d4335qr8j9kr555g9mrii3o', '118.68.253.149', 1526569495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363536393439353b),
('gtn0erlhdstrprfdgsalj91npjbtvkeg', '52.114.14.102', 1531910028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303032383b),
('gvbhoqc1i1bqu05994m7ju5fsotecehg', '14.188.166.87', 1526198352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139383236373b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('h3g2jld0nnr487erd3urc4e9obcaqnge', '14.188.166.87', 1526184180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138333931393b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b6572726f727c733a36373a22567569206cc3b26e67206b69e1bb836d2074726120746875e1babf2073e1baa36e207068e1baa96d2028292e20546875e1babf207068e1baa369206cc3a02073e1bb91223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('hruhqsd7ia8ivctfjfd3j2klb75417eu', '42.112.133.99', 1531817574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313831373231353b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353031323539223b6c6173745f69707c733a31343a2231342e3137372e3231322e323137223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223131223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30372d31372031353a34363a3434223b),
('httb9qdvpoo8u1dl4ci0c1sk9sua2e2h', '183.81.49.139', 1531825002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343732333b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383234343831223b6c6173745f69707c733a31333a2234322e3131322e3133332e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2233223b6861735f73746f72655f69647c4e3b),
('i2kkpbfpg7mcf602u0cp2v6jnu0rt4at', '14.188.166.87', 1526203673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230333239353b6964656e746974797c733a373a22686f6e67687565223b757365726e616d657c733a373a22686f6e67687565223b656d61696c7c733a31373a22686f6e676875654061646d696e2e636f6d223b757365725f69647c733a313a2234223b66697273745f6e616d657c733a363a2248e1bb936e67223b6c6173745f6e616d657c733a353a224875e1bb87223b637265617465645f6f6e7c733a32343a22536174203132204d617920323031382030353a353020504d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323633223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2232223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c733a313a2231223b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031373a35313a3036223b);
INSERT INTO `tec_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('i529a99qh51m7htl92bq0lfutrgi9rtn', '14.188.166.87', 1526188649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138383339353b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323935223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('ijvi5q2rgm9svglduo28o3g0veapeovu', '66.249.92.205', 1531909982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393938323b),
('ikv6c570k3g61q81nu998drrk2gb75ql', '66.249.92.205', 1531826908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363930373b),
('iuf5kjpmr6vilt43qkd8q1nrtr8og5n3', '52.114.14.102', 1531910028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303032383b),
('j1hpfim9h0uu7609svlcqq6sb2k4sct3', '66.249.92.207', 1531826905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363930353b),
('jpk871k1mjgcpsnrq56ega7qht3qtbda', '66.249.92.205', 1531909981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393938313b),
('jslebi6kjbfne9m2ioaforu1fgv8e3c9', '66.249.92.205', 1531909990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393939303b),
('k6flqt01jgq0f2mg2e5m69hpim768jvd', '42.112.133.99', 1531818282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313831383237353b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353031323539223b6c6173745f69707c733a31343a2231342e3137372e3231322e323137223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2232223b6861735f73746f72655f69647c4e3b),
('kcm8qhfmtamik8029ude2hfcbqh4vljf', '66.249.92.205', 1531826908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363930383b),
('kgna9b35t067nsgqk6q9o483ba16paj1', '14.188.166.87', 1526188092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138373738393b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323935223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('kmmje0q1sv1col9bsrk494au9aplq7aq', '66.249.92.205', 1531824361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343336313b),
('ksgaj8qc409d993bf9181e0o579pccgc', '42.112.133.99', 1531826358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363335343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383132333533223b6c6173745f69707c733a31333a2234322e3131322e3133332e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2233223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223132223b636173685f696e5f68616e647c733a31333a2231323333333333332e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30372d31372031373a35373a3139223b),
('ksnobun8dsci0800attesndssebhge3t', '66.249.92.207', 1531824356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343335363b),
('kt8mb26api2v0ub67um04hmgkeo4pdir', '66.249.92.205', 1531826909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363930383b),
('l2tkht9lmqensrptci2ke54uioahtd18', '14.188.166.87', 1526196044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139353834353b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b6572726f727c733a36373a22567569206cc3b26e67206b69e1bb836d2074726120746875e1babf2073e1baa36e207068e1baa96d2028292e20546875e1babf207068e1baa369206cc3a02073e1bb91223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('l8gdkp1813rneth3390836trgs8jocj9', '14.188.166.87', 1526198603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139383538373b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('lbb6e6460m1f9vgqkej9b13krltihbn1', '14.188.166.87', 1526204202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230333938393b6964656e746974797c733a373a22686f6e67687565223b757365726e616d657c733a373a22686f6e67687565223b656d61696c7c733a31373a22686f6e676875654061646d696e2e636f6d223b757365725f69647c733a313a2234223b66697273745f6e616d657c733a363a2248e1bb936e67223b6c6173745f6e616d657c733a353a224875e1bb87223b637265617465645f6f6e7c733a32343a22536174203132204d617920323031382030353a353020504d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323033353137223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2232223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c733a313a2231223b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031373a35313a3036223b),
('lkb6j0t14chbsgpeia60tujpdbmu6uih', '183.81.49.139', 1531825555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832353032393b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383234343831223b6c6173745f69707c733a31333a2234322e3131322e3133332e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2233223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223132223b636173685f696e5f68616e647c733a31333a2231323333333333332e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30372d31372031373a35373a3139223b),
('lmk4483n0ve0rba5chotlv3e1d5pru4s', '52.114.6.38', 1531910096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303039363b),
('lpi1832qf8nq1en0asn3hh6vf7diprt0', '14.188.166.87', 1526209729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230393732393b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b),
('lsbgenopsi6gl19inuiha3prhk7k46ok', '14.177.212.217', 1530501469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303530313235353b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236323038353733223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b726d73706f737c693a313b6d6573736167657c733a32393a2242c3a16e2068c3a06e67207468c3aa6d207468c3a06e682063c3b46e67223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('m36r8e149jdjtiagd3hb25d51282gbdb', '113.185.11.140', 1526268956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363236383935363b),
('m3sevocksu1ujidl37dgicpch9h326q1', '42.112.133.99', 1531824481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343335353b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383132333533223b6c6173745f69707c733a31333a2234322e3131322e3133332e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c4e3b6861735f73746f72655f69647c4e3b6d6573736167657c733a34353a223c703e42e1baa16e20c491c3a320c491c4836e67206e68e1baad70207468c3a06e682063c3b46e672e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('m91pfet99nndqrch74hqqgknojos2c5o', '14.188.166.87', 1526211574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363231313536303b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b),
('ma66d9ocll0a3rvu6bp8ap95gtqd626a', '66.249.92.205', 1531826905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832363930353b),
('md4obilijo04tafaf3r7m67eu17up52u', '66.249.92.205', 1531824360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343336303b),
('mitd22voqljpvjvu1ur5vik4eq1bgspi', '42.112.133.99', 1531817879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313831373537393b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353031323539223b6c6173745f69707c733a31343a2231342e3137372e3231322e323137223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2232223b6861735f73746f72655f69647c4e3b),
('mp09n4jj308ugsfojb11itsrh9hnpi63', '66.102.6.44', 1531734974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313733343937343b),
('mp0tkap1tm04j7p0tnsqb6p4qi85529k', '42.112.220.96', 1526270139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363237303133393b),
('msoos0615p9p8k0ktqg0ank52ik45s4e', '14.188.166.87', 1526201775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230313737353b),
('n0ett5vbh69ikgi5ovo7g8g1h4aoht0a', '14.188.166.87', 1526206008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230353434393b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('nbt9jhfoh818igsi3ct0dtkv3356846f', '14.188.166.87', 1526189225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138393031383b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323935223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('nrh64f8jh3qs1hjd601gf7jskppl5t9i', '14.188.166.87', 1526203976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230333638313b6964656e746974797c733a373a22686f6e67687565223b757365726e616d657c733a373a22686f6e67687565223b656d61696c7c733a31373a22686f6e676875654061646d696e2e636f6d223b757365725f69647c733a313a2234223b66697273745f6e616d657c733a363a2248e1bb936e67223b6c6173745f6e616d657c733a353a224875e1bb87223b637265617465645f6f6e7c733a32343a22536174203132204d617920323031382030353a353020504d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323633223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2232223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c733a313a2231223b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031373a35313a3036223b),
('oc8dkqtqq1n0ps1d0clbcktqvl6f7bbj', '14.188.166.87', 1526196425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139363233353b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('p443rfhbtt8k78upnf6ouddbdui6pvln', '52.114.6.38', 1531910096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303039363b),
('pd0sti5ej0vk4n4s1cg0e7de8sbhfk3e', '52.114.14.102', 1531910028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303032383b),
('pf7qpp9o592gte44o92epksonc8m3e4n', '14.188.166.87', 1526188328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138383332363b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('pf8npcke15163klb8mohnbdr6qpppgpl', '52.114.6.38', 1531910096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303039363b),
('pgsraqe31o73pdqhh1ce973rrjeck59p', '66.249.92.205', 1531824361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343336313b),
('pr0oe48ujropnjr8501tn89apqvnnmvs', '66.249.92.207', 1531824359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313832343335393b),
('qbuspq9kr83tucd93nig43ji7ganfr23', '66.102.6.42', 1526570369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363537303336393b),
('qdb2ve8fl3l1ebhqst8smq0ctprrknil', '66.102.6.42', 1531639031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313633393033313b),
('qepue1gib5cmdd8hb7620gpn2rec4e9n', '14.188.166.87', 1526206283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230363034363b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('qmqd68f0kpfpmj1vesulpklcq7cerjlh', '66.220.148.193', 1526202906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230323930363b),
('qpe04od91l4k7c0p61iv5hjup5jtmvks', '14.188.166.87', 1526207336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230373034373b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313834363630223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b),
('r0abqr3j12sjtenthmm1dphjfti49pkf', '66.249.92.205', 1531909992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393939323b),
('r3ftq1ps018i9vu474rlj0ivl0i28ov3', '14.188.166.87', 1526185979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138353932343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323935223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('rjq9ak9vd23e4qvdkl0qarrabvv9fgmr', '66.249.92.205', 1531909988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393938383b),
('rncpume2fs7ffndtl81gm3q4hn4qn257', '52.114.6.38', 1531910096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303039363b),
('rqthrr4p3re6u7schhrhjp5a5jo088im', '14.188.166.87', 1526189018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138383730373b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313833323935223b6c6173745f69707c733a31333a2231342e3138382e3136362e3837223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('s2248a267v8coi9v3ik3nbnf5d2tsl2p', '66.102.6.46', 1531639032, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313633393033323b),
('s42ntdml7gkeqqc3rkr4u9iihcnl4ach', '66.102.6.46', 1526641331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363634313333303b),
('shh3k4eo3ekokkb4l06toncfi3971go5', '14.188.166.87', 1526197908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139373635333b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('slkv7tpbvo9u38eu0di7n8h471lgoelb', '42.112.133.99', 1531817206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313831363931303b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353031323539223b6c6173745f69707c733a31343a2231342e3137372e3231322e323137223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223131223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30372d31372031353a34363a3434223b),
('sllagn7cp5cou6kdahk9vtcf864mo2f1', '42.112.133.99', 1531812452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313831323334323b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353031323539223b6c6173745f69707c733a31343a2231342e3137372e3231322e323137223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223130223b636173685f696e5f68616e647c733a31313a223330303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31332031373a35313a3339223b),
('t0mkmp1r7aea0dt9flr4gmf5dcrrfn1j', '66.249.92.205', 1531909993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393939333b),
('t2jrvc43b8gc1glbsjqnkj475eslbbv0', '42.112.133.99', 1531843039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313834323835303b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353331383234373335223b6c6173745f69707c733a31333a223138332e38312e34392e313339223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2233223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a323a223132223b636173685f696e5f68616e647c733a31333a2231323333333333332e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30372d31372031373a35373a3139223b726d73706f737c693a313b),
('tfgvrdkm09g7pv2aunioma7491jpcp5o', '52.114.14.102', 1531910028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313931303032383b),
('tjesd5cto4fvpuv5ivhviu659esb44a3', '66.102.6.42', 1526688422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363638383432323b),
('tul6d0v1v3oj9e82k2q82ifkrq90h0j6', '14.188.166.87', 1526184595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138343536373b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('tvpbvi7sa3m7n7i1ellj8kl5680kfdgc', '66.249.92.205', 1531909988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313930393938383b),
('uau4oert75ondbvavtbab9kcji5r2842', '14.188.166.87', 1526196865, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139363631303b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b6572726f727c733a36373a22567569206cc3b26e67206b69e1bb836d2074726120746875e1babf2073e1baa36e207068e1baa96d2028292e20546875e1babf207068e1baa369206cc3a02073e1bb91223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('ubeailril5r06vp57o5qmj29mh8ctdru', '64.233.172.239', 1530622182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632323138323b),
('v68fv4kp4a652usofcsn8d1moqrggeeb', '14.188.166.87', 1526183330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138333239303b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('v6i10b6e6nfi6g998vr365gpc3fb5hme', '14.188.166.87', 1526199207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363139383839343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('v73ugto53ttsn29tr2ek1qn9pb111fbs', '14.188.166.87', 1526189259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363138393131343b6964656e746974797c733a31383a2261646d696e4074656364696172792e636f6d223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31383a2261646d696e4074656364696172792e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a353a2241646d696e223b6c6173745f6e616d657c733a353a2241646d696e223b637265617465645f6f6e7c733a32343a22546875203235204a756e20323031352031303a353920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353236313430303938223b6c6173745f69707c733a31343a2235392e3135332e3235322e313734223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b73746f72655f69647c733a313a2231223b6861735f73746f72655f69647c4e3b72656769737465725f69647c733a313a2237223b636173685f696e5f68616e647c733a31313a223230303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d30352d31322031383a30303a3536223b),
('vid8p0lchg6khvra8vvhrarcue47q53i', '66.220.151.241', 1526202907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532363230323930363b);

-- --------------------------------------------------------

--
-- Table structure for table `tec_settings`
--

CREATE TABLE `tec_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `dateformat` varchar(20) DEFAULT NULL,
  `timeformat` varchar(20) DEFAULT NULL,
  `default_email` varchar(100) NOT NULL,
  `language` varchar(20) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `theme` varchar(20) NOT NULL,
  `timezone` varchar(255) NOT NULL DEFAULT '0',
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(5) DEFAULT NULL,
  `mmode` tinyint(1) NOT NULL,
  `captcha` tinyint(1) NOT NULL DEFAULT '1',
  `mailpath` varchar(55) DEFAULT NULL,
  `currency_prefix` varchar(3) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_tax_rate` varchar(20) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `total_rows` int(2) NOT NULL,
  `header` varchar(1000) DEFAULT NULL,
  `footer` varchar(1000) DEFAULT NULL,
  `bsty` tinyint(4) NOT NULL,
  `display_kb` tinyint(4) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_discount` varchar(20) NOT NULL,
  `item_addition` tinyint(1) NOT NULL,
  `barcode_symbology` varchar(55) DEFAULT NULL,
  `pro_limit` tinyint(4) NOT NULL,
  `decimals` tinyint(1) NOT NULL DEFAULT '2',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_order` varchar(55) DEFAULT NULL,
  `print_bill` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `char_per_line` tinyint(4) DEFAULT '42',
  `rounding` tinyint(1) DEFAULT '0',
  `pin_code` varchar(20) DEFAULT NULL,
  `stripe` tinyint(1) DEFAULT NULL,
  `stripe_secret_key` varchar(100) DEFAULT NULL,
  `stripe_publishable_key` varchar(100) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `theme_style` varchar(25) DEFAULT 'green',
  `after_sale_page` tinyint(1) DEFAULT NULL,
  `overselling` tinyint(1) DEFAULT '1',
  `multi_store` tinyint(1) DEFAULT NULL,
  `qty_decimals` tinyint(1) DEFAULT '2',
  `symbol` varchar(55) DEFAULT NULL,
  `sac` tinyint(1) DEFAULT '0',
  `display_symbol` tinyint(1) DEFAULT NULL,
  `remote_printing` tinyint(1) DEFAULT '1',
  `printer` int(11) DEFAULT NULL,
  `order_printers` varchar(55) DEFAULT NULL,
  `auto_print` tinyint(1) DEFAULT '0',
  `local_printers` tinyint(1) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT NULL,
  `print_img` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_settings`
--

INSERT INTO `tec_settings` (`setting_id`, `logo`, `site_name`, `tel`, `dateformat`, `timeformat`, `default_email`, `language`, `version`, `theme`, `timezone`, `protocol`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `mmode`, `captcha`, `mailpath`, `currency_prefix`, `default_customer`, `default_tax_rate`, `rows_per_page`, `total_rows`, `header`, `footer`, `bsty`, `display_kb`, `default_category`, `default_discount`, `item_addition`, `barcode_symbology`, `pro_limit`, `decimals`, `thousands_sep`, `decimals_sep`, `focus_add_item`, `add_customer`, `toggle_category_slider`, `cancel_sale`, `suspend_sale`, `print_order`, `print_bill`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `java_applet`, `receipt_printer`, `pos_printers`, `cash_drawer_codes`, `char_per_line`, `rounding`, `pin_code`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `purchase_code`, `envato_username`, `theme_style`, `after_sale_page`, `overselling`, `multi_store`, `qty_decimals`, `symbol`, `sac`, `display_symbol`, `remote_printing`, `printer`, `order_printers`, `auto_print`, `local_printers`, `rtl`, `print_img`) VALUES
(1, 'logo1.png', 'Điểm bán hàng', '0105292122', 'D j M Y', 'h:i A', 'noreply@spos.tecdiary.my', 'english', '4.0.19', 'default', 'Asia/Kuala_Lumpur', 'mail', 'pop.gmail.com', 'noreply@spos.tecdiary.my', '', '25', '', 0, 0, NULL, 'VNĐ', 3, '0', 10, 30, NULL, NULL, 1, 0, 0, '0', 1, NULL, 127, 0, ',', '.', 'ALT+F1', 'F2', 'F10', 'ALT+F5', 'ALT+F6', 'ALT+F11', 'ALT+F12', 'ALT+F8', 'Ctrl+F1', 'Ctrl+F2', 'ALT+F7', 0, '', '', '', 42, 1, '2122', 0, '', '', 'a219dfd2-8b9e-42f3-8a72-6261f256aebc', 'jackyphuong', 'green', 0, 1, 1, 0, '', 0, 2, 1, 1, 'null', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tec_stores`
--

CREATE TABLE `tec_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL,
  `logo` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `receipt_header` text,
  `receipt_footer` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_stores`
--

INSERT INTO `tec_stores` (`id`, `name`, `code`, `logo`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `postal_code`, `country`, `currency_code`, `receipt_header`, `receipt_footer`) VALUES
(1, 'Chi nhánh ấp đồn', 'POS', 'logo.png', 'store@tecdiary.com', '012345678', 'Address Line 1', '', 'Petaling Jaya', 'Selangor', '46000', 'Malaysia', 'MYR', '', 'This is receipt footer for store'),
(2, 'Chi nhánh samsung', 'B2', NULL, '', '0916634588', '', '', '', '', '', '', NULL, '', ''),
(3, 'Chi nhánh 3', 'B1', NULL, '', '0916634588', '', '', '', '', '', '', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tec_suppliers`
--

CREATE TABLE `tec_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cf1` varchar(255) NOT NULL,
  `cf2` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_suppliers`
--

INSERT INTO `tec_suppliers` (`id`, `name`, `cf1`, `cf2`, `phone`, `email`) VALUES
(1, 'Test Supplier', '1', '2', '0123456789', 'supplier@tecdairy.com');

-- --------------------------------------------------------

--
-- Table structure for table `tec_suspended_items`
--

CREATE TABLE `tec_suspended_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `tax` int(20) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tec_suspended_sales`
--

CREATE TABLE `tec_suspended_sales` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT NULL,
  `product_tax` decimal(25,4) DEFAULT NULL,
  `order_tax_id` varchar(20) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) NOT NULL,
  `total_items` int(11) DEFAULT NULL,
  `total_quantity` decimal(15,4) DEFAULT NULL,
  `paid` decimal(25,4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `hold_ref` varchar(255) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tec_users`
--

CREATE TABLE `tec_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '2',
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_users`
--

INSERT INTO `tec_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`, `store_id`) VALUES
(1, 0x34322e3131322e3133332e3939, 0x3132372e302e302e31, 'admin', '80d6756eac76c0adae5714bc2d91d1d347fdfb19', NULL, 'admin@tecdiary.com', NULL, NULL, NULL, '93225b4bd36a499826c3a030001a22feb448c566', 1435204774, 1531842850, 1, 'Admin', 'Admin', 'Tecdiary', '012345678', NULL, 'male', 1, NULL),
(4, 0x31342e3138382e3136362e3837, 0x31342e3136332e3138322e3930, 'honghue', '278d50d4ae58facbb625c72157718bc5c57523ef', NULL, 'honghue@admin.com', NULL, NULL, NULL, 'ad6308d61a936fe7924f9b40174e369c62cd2b47', 1526122233, 1526204167, 1, 'Hồng', 'Huệ', NULL, '0999999999', NULL, 'female', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tec_user_logins`
--

CREATE TABLE `tec_user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tec_user_logins`
--

INSERT INTO `tec_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
(1, 1, NULL, 0x3a3a31, 'admin@tecdiary.com', '2018-04-18 13:18:56'),
(2, 1, NULL, 0x3132372e302e302e31, 'admin@tecdiary.com', '2018-04-19 03:46:49'),
(3, 1, NULL, 0x3132372e302e302e31, 'admin@tecdiary.com', '2018-04-21 12:22:15'),
(4, 3, NULL, 0x3132372e302e302e31, 'xxx', '2018-04-21 17:17:21'),
(5, 1, NULL, 0x3132372e302e302e31, 'admin@tecdiary.com', '2018-04-21 17:18:24'),
(6, 1, NULL, 0x34322e3131342e3235312e3232, 'admin@tecdiary.com', '2018-04-22 03:46:54'),
(7, 1, NULL, 0x34322e3131322e38362e3731, 'admin@tecdiary.com', '2018-04-23 06:36:27'),
(8, 1, NULL, 0x34322e3131322e39342e313531, 'admin@tecdiary.com', '2018-04-25 05:24:30'),
(9, 1, NULL, 0x34322e3131322e39342e313531, 'admin@tecdiary.com', '2018-04-26 11:53:02'),
(10, 1, NULL, 0x312e35332e3130312e3832, 'admin@tecdiary.com', '2018-05-09 08:35:32'),
(11, 1, NULL, 0x312e35332e3130312e3832, 'admin@tecdiary.com', '2018-05-10 01:16:02'),
(12, 1, NULL, 0x32372e36372e3138332e323438, 'admin@tecdiary.com', '2018-05-12 02:28:22'),
(13, 1, NULL, 0x31342e3136332e3138322e3930, 'admin@tecdiary.com', '2018-05-12 07:22:27'),
(14, 1, NULL, 0x31342e3136332e3138322e3930, 'admin@tecdiary.com', '2018-05-12 07:29:02'),
(15, 1, NULL, 0x31342e3136332e3138322e3930, 'admin@tecdiary.com', '2018-05-12 08:15:34'),
(16, 1, NULL, 0x31342e3136332e3138322e3930, 'admin@tecdiary.com', '2018-05-12 08:29:15'),
(17, 4, NULL, 0x31342e3136332e3138322e3930, 'honghue', '2018-05-12 10:50:58'),
(18, 4, NULL, 0x31342e3136332e3138322e3930, 'honghue', '2018-05-12 10:50:58'),
(19, 4, NULL, 0x31342e3138382e3136362e3837, 'honghue', '2018-05-13 03:47:43'),
(20, 1, NULL, 0x31342e3138382e3136362e3837, 'admin@tecdiary.com', '2018-05-13 03:48:15'),
(21, 1, NULL, 0x31342e3138382e3136362e3837, 'admin@tecdiary.com', '2018-05-13 04:11:00'),
(22, 4, NULL, 0x31342e3138382e3136362e3837, 'honghue', '2018-05-13 09:25:17'),
(23, 4, NULL, 0x31342e3138382e3136362e3837, 'honghue', '2018-05-13 09:36:07'),
(24, 1, NULL, 0x31342e3138382e3136362e3837, 'admin@tecdiary.com', '2018-05-13 09:50:01'),
(25, 1, NULL, 0x31342e3138382e3136362e3837, 'admin@tecdiary.com', '2018-05-13 10:49:33'),
(26, 1, NULL, 0x31342e3137372e3231322e323137, 'admin@tecdiary.com', '2018-07-02 03:14:19'),
(27, 1, NULL, 0x34322e3131322e3133332e3939, 'admin@tecdiary.com', '2018-07-17 07:25:53'),
(28, 1, NULL, 0x34322e3131322e3133332e3939, 'admin@tecdiary.com', '2018-07-17 10:48:01'),
(29, 1, NULL, 0x3138332e38312e34392e313339, 'admin@tecdiary.com', '2018-07-17 10:52:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tec_categories`
--
ALTER TABLE `tec_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_combo_items`
--
ALTER TABLE `tec_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_customers`
--
ALTER TABLE `tec_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_expenses`
--
ALTER TABLE `tec_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_gift_cards`
--
ALTER TABLE `tec_gift_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_no` (`card_no`);

--
-- Indexes for table `tec_groups`
--
ALTER TABLE `tec_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_login_attempts`
--
ALTER TABLE `tec_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_payments`
--
ALTER TABLE `tec_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_printers`
--
ALTER TABLE `tec_printers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_products`
--
ALTER TABLE `tec_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tec_product_store_qty`
--
ALTER TABLE `tec_product_store_qty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `tec_purchases`
--
ALTER TABLE `tec_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_purchase_items`
--
ALTER TABLE `tec_purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_registers`
--
ALTER TABLE `tec_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_sales`
--
ALTER TABLE `tec_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_sale_items`
--
ALTER TABLE `tec_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_sessions`
--
ALTER TABLE `tec_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tec_settings`
--
ALTER TABLE `tec_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `tec_stores`
--
ALTER TABLE `tec_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_suppliers`
--
ALTER TABLE `tec_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_suspended_items`
--
ALTER TABLE `tec_suspended_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_suspended_sales`
--
ALTER TABLE `tec_suspended_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_users`
--
ALTER TABLE `tec_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tec_user_logins`
--
ALTER TABLE `tec_user_logins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tec_categories`
--
ALTER TABLE `tec_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `tec_combo_items`
--
ALTER TABLE `tec_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tec_customers`
--
ALTER TABLE `tec_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tec_expenses`
--
ALTER TABLE `tec_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tec_gift_cards`
--
ALTER TABLE `tec_gift_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tec_groups`
--
ALTER TABLE `tec_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tec_login_attempts`
--
ALTER TABLE `tec_login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tec_payments`
--
ALTER TABLE `tec_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tec_printers`
--
ALTER TABLE `tec_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tec_products`
--
ALTER TABLE `tec_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4382;

--
-- AUTO_INCREMENT for table `tec_product_store_qty`
--
ALTER TABLE `tec_product_store_qty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tec_purchases`
--
ALTER TABLE `tec_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tec_purchase_items`
--
ALTER TABLE `tec_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tec_registers`
--
ALTER TABLE `tec_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tec_sales`
--
ALTER TABLE `tec_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tec_sale_items`
--
ALTER TABLE `tec_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tec_stores`
--
ALTER TABLE `tec_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tec_suppliers`
--
ALTER TABLE `tec_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tec_suspended_items`
--
ALTER TABLE `tec_suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tec_suspended_sales`
--
ALTER TABLE `tec_suspended_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tec_users`
--
ALTER TABLE `tec_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tec_user_logins`
--
ALTER TABLE `tec_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
