-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 09, 2025 at 11:33 AM
-- Server version: 8.0.39
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koaliumi_rupturium_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `burst_condition`
--

CREATE TABLE `burst_condition` (
  `ID` int NOT NULL,
  `pressure` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `temprature` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drw`
--

CREATE TABLE `drw` (
  `ID` int NOT NULL,
  `file` mediumblob,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `element`
--

CREATE TABLE `element` (
  `ID` int NOT NULL,
  `name` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `namefa` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` int NOT NULL,
  `subtype` int DEFAULT NULL,
  `prop` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `element_raw_size`
--

CREATE TABLE `element_raw_size` (
  `id` int DEFAULT NULL,
  `element` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(7) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `nsize` varchar(7) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `di` varchar(8) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `do` varchar(8) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `thickness` varchar(8) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `len` varchar(10) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `width` varchar(8) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `height` varchar(8) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `desc` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `element_raw_size`
--

INSERT INTO `element_raw_size` (`id`, `element`, `type`, `size`, `nsize`, `di`, `do`, `thickness`, `len`, `width`, `height`, `desc`, `time`) VALUES
(1, 'rupture', 'flat', '0.5', '12.5', '40', '0', '0', '0', '0', '0', 'desc', ''),
(2, 'rupture', 'flat', '0.75', '19', '50', '0', '0', '0', '0', '0', 'desc', ''),
(3, 'rupture', 'flat', '1', '25', '59', '0', '0', '0', '0', '0', 'desc', ''),
(4, 'rupture', 'flat', '1.5', '36', '51', '0', '0', '0', '0', '0', 'desc', ''),
(5, 'rupture', 'flat', '2', '50', '87', '0', '0', '0', '0', '0', 'desc', ''),
(6, 'rupture', 'flat', '3', '80', '122', '0', '0', '0', '0', '0', 'desc', ''),
(7, 'rupture', 'flat', '4', '100', '158', '0', '0', '0', '0', '0', 'desc', ''),
(8, 'rupture', 'flat', '6', '150', '212', '0', '0', '0', '0', '0', 'desc', ''),
(9, 'rupture', 'flat', '8', '200', '265', '0', '0', '0', '0', '0', 'desc', ''),
(10, 'rupture', 'flat', '10', '250', '320', '0', '0', '0', '0', '0', 'desc', ''),
(11, 'rupture', 'flat', '12', '300', '365', '0', '0', '0', '0', '0', 'desc', ''),
(12, 'rupture', 'flat', '14', '350', '420', '0', '0', '0', '0', '0', 'desc', ''),
(13, 'rupture', 'flat', '16', '400', '470', '0', '0', '0', '0', '0', 'desc', ''),
(14, 'rupture', 'flat', '18', '450', '520', '0', '0', '0', '0', '0', 'desc', ''),
(15, 'rupture', 'flat', '20', '500', '570', '0', '0', '0', '0', '0', 'desc', ''),
(16, 'rupture', 'flat', '22', '550', '620', '0', '0', '0', '0', '0', 'desc', ''),
(17, 'rupture', 'flat', '24', '600', '670', '0', '0', '0', '0', '0', 'desc', ''),
(18, 'rupture', 'flat', '26', '650', '720', '0', '0', '0', '0', '0', 'desc', ''),
(19, 'rupture', 'flat', '28', '700', '770', '0', '0', '0', '0', '0', 'desc', ''),
(20, 'rupture', 'reverse', '0.5', '12.5', '40', '0', '0', '0', '0', '0', 'desc', ''),
(21, 'rupture', 'reverse', '0.75', '19', '50', '0', '0', '0', '0', '0', 'desc', ''),
(22, 'rupture', 'reverse', '1', '25', '59', '0', '0', '0', '0', '0', 'desc', ''),
(23, 'rupture', 'reverse', '1.5', '36', '51', '0', '0', '0', '0', '0', 'desc', ''),
(24, 'rupture', 'reverse', '2', '50', '87', '0', '0', '0', '0', '0', 'desc', ''),
(25, 'rupture', 'reverse', '3', '80', '122', '0', '0', '0', '0', '0', 'desc', ''),
(26, 'rupture', 'reverse', '4', '100', '158', '0', '0', '0', '0', '0', 'desc', ''),
(27, 'rupture', 'reverse', '6', '150', '212', '0', '0', '0', '0', '0', 'desc', ''),
(28, 'rupture', 'reverse', '8', '200', '265', '0', '0', '0', '0', '0', 'desc', ''),
(29, 'rupture', 'reverse', '10', '250', '320', '0', '0', '0', '0', '0', 'desc', ''),
(30, 'rupture', 'reverse', '12', '300', '365', '0', '0', '0', '0', '0', 'desc', ''),
(31, 'rupture', 'reverse', '14', '350', '420', '0', '0', '0', '0', '0', 'desc', ''),
(32, 'rupture', 'reverse', '16', '400', '470', '0', '0', '0', '0', '0', 'desc', ''),
(33, 'rupture', 'reverse', '18', '450', '520', '0', '0', '0', '0', '0', 'desc', ''),
(34, 'rupture', 'reverse', '20', '500', '570', '0', '0', '0', '0', '0', 'desc', ''),
(35, 'rupture', 'reverse', '22', '550', '620', '0', '0', '0', '0', '0', 'desc', ''),
(36, 'rupture', 'reverse', '24', '600', '670', '0', '0', '0', '0', '0', 'desc', ''),
(37, 'rupture', 'reverse', '26', '650', '720', '0', '0', '0', '0', '0', 'desc', ''),
(38, 'rupture', 'reverse', '28', '700', '770', '0', '0', '0', '0', '0', 'desc', ''),
(39, 'rupture', 'forward', '0.5', '12.5', '40', '0', '0', '0', '0', '0', 'desc', ''),
(40, 'rupture', 'forward', '0.75', '19', '50', '0', '0', '0', '0', '0', 'desc', ''),
(41, 'rupture', 'forward', '1', '25', '59', '0', '0', '0', '0', '0', 'desc', ''),
(42, 'rupture', 'forward', '1.5', '36', '51', '0', '0', '0', '0', '0', 'desc', ''),
(43, 'rupture', 'forward', '2', '50', '87', '0', '0', '0', '0', '0', 'desc', ''),
(44, 'rupture', 'forward', '3', '80', '122', '0', '0', '0', '0', '0', 'desc', ''),
(45, 'rupture', 'forward', '4', '100', '158', '0', '0', '0', '0', '0', 'desc', ''),
(46, 'rupture', 'forward', '6', '150', '212', '0', '0', '0', '0', '0', 'desc', ''),
(47, 'rupture', 'forward', '8', '200', '265', '0', '0', '0', '0', '0', 'desc', ''),
(48, 'rupture', 'forward', '10', '250', '320', '0', '0', '0', '0', '0', 'desc', ''),
(49, 'rupture', 'forward', '12', '300', '365', '0', '0', '0', '0', '0', 'desc', ''),
(50, 'rupture', 'forward', '14', '350', '420', '0', '0', '0', '0', '0', 'desc', ''),
(51, 'rupture', 'forward', '16', '400', '470', '0', '0', '0', '0', '0', 'desc', ''),
(52, 'rupture', 'forward', '18', '450', '520', '0', '0', '0', '0', '0', 'desc', ''),
(53, 'rupture', 'forward', '20', '500', '570', '0', '0', '0', '0', '0', 'desc', ''),
(54, 'rupture', 'forward', '22', '550', '620', '0', '0', '0', '0', '0', 'desc', ''),
(55, 'rupture', 'forward', '24', '600', '670', '0', '0', '0', '0', '0', 'desc', ''),
(56, 'rupture', 'forward', '26', '650', '720', '0', '0', '0', '0', '0', 'desc', ''),
(57, 'rupture', 'forward', '28', '700', '770', '0', '0', '0', '0', '0', 'desc', ''),
(58, 'holder', 'forward', '1', '25', '65', '27', '80', '47', '23', '24', 'desc', ''),
(59, 'holder', 'forward', '1.5', '40', '83', '40', '80', '47', '22', '25', 'desc', ''),
(60, 'holder', 'forward', '2', '50', '108', '52', '120', '59', '23', '36', 'desc', ''),
(61, 'holder', 'forward', '3', '80', '135', '80.2', '140', '47', '23', '24', 'desc', ''),
(62, 'holder', 'forward', '4', '100', '180', '100', '180', '47', '22', '25', 'desc', ''),
(63, 'holder', 'forward', '6', '150', '220', '150', '220', '52', '25', '27', 'desc', ''),
(64, 'holder', 'forward', '8', '200', '277', '200', '280', '64', '24', '40', 'desc', ''),
(65, 'holder', 'forward', '10', '250', '337', '250', '350', '79', '29', '50', 'desc', ''),
(66, 'holder', 'forward', '12', '300', '407', '300', '420', '89', '32', '57', 'desc', ''),
(67, 'holder', 'forward', '14', '350', '448', '350', '460', '111', '41', '70', 'desc', ''),
(68, 'holder', 'forward', '16', '400', '512', '400', '520', '121', '41', '80', 'desc', ''),
(69, 'holder', 'reverse', '1', '25', '65', '30.5', '80', '47', '24', '23', 'desc', ''),
(70, 'holder', 'reverse', '1.5', '40', '92', '40', '100', '55', '28', '27', 'desc', ''),
(71, 'holder', 'reverse', '2', '50', '107', '55', '120', '59', '30', '29', 'desc', ''),
(72, 'holder', 'reverse', '3', '80', '146', '80', '150', '71', '41', '30', 'desc', ''),
(73, 'holder', 'reverse', '4', '100', '177', '100', '180', '118', '69', '49', 'desc', ''),
(74, 'holder', 'reverse', '6', '150', '247', '150', '250', '111', '58', '53', 'desc', ''),
(75, 'holder', 'reverse', '8', '200', '276', '200', '280', '115', '57', '58', 'desc', ''),
(76, 'holder', 'reverse', '10', '250', '358', '250', '360', '79', '30', '49', 'desc', ''),
(77, 'holder', 'reverse', '12', '300', '407', '300', '420', '95', '36', '59', 'desc', ''),
(78, 'holder', 'reverse', '14', '350', '483', '350', '500', '110', '41', '69', 'desc', ''),
(79, 'tag', 'small', '0', '0', '0', '0', '0.5', '0.5', '135', '50', 'desc', ''),
(80, 'plate', 'ss', '0', '0', '0', '0', '0', '2000', '1000', '1000', 'desc', ''),
(81, 'tef', 'rol', '0', '0', '0', '0', '0', '0', '1200', '0', 'desc', ''),
(82, 'shaft', 'standard', '0', '0', '0', '0', '0', '0', '0', '0', 'desc', '');

-- --------------------------------------------------------

--
-- Table structure for table `layer`
--

CREATE TABLE `layer` (
  `ID` int NOT NULL,
  `main` int NOT NULL COMMENT 'sheet id',
  `vac` int NOT NULL COMMENT 'sheet id',
  `seal` int NOT NULL COMMENT 'seallayer sheet id',
  `sub` int DEFAULT NULL,
  `extra` int DEFAULT NULL,
  `description` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `ID` int NOT NULL,
  `material` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `thickness` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `name` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `namefa` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `density` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metal` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `layers` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `desc` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`name`, `namefa`, `density`, `price`, `metal`, `layers`, `desc`) VALUES
('aluminium', 'آلومینیوم', '2.70', '2200000', 'y', 'm,v', 'sheet'),
('bras', 'برنج', '8.70', '7320000', 'y', 'm,v', 'sheet'),
('bronze', 'برنز', '8.55', '7560000', 'y', 'm,v', 'sheet'),
('cardboard box', 'جعبه مقوایی', '0.60', '645000', 'n', 'box', 'sheet'),
('chromium', 'کروم', '7.20', '12300000', 'y', 'm,v', 'sheet'),
('cobalt', 'کبالت', '8.66', '4680000', 'y', 'm,v', 'sheet'),
('composite', 'کامپوزیت', '1.00', '1880000', 'n', 's', 'sheet'),
('copper', 'مس', '8.95', '6853000', 'y', 'm,v', 'sheet'),
('cs', 'فولاد کربنی', '8.00', '1080000', 'y', 'm,v', 'sheet'),
('fep', 'تفلون', '4.00', '1500000', 'n', 's', 'sheet'),
('germanium', 'ژرمانیوم', '5.40', '44400000', 'y', 'm,v', 'sheet'),
('glas', 'شیشه', '3.10', '3720000', 'n', 'l', 'sheet'),
('gold', 'طلا', '19.30', '54000000000', 'y', 'm,v', 'sheet'),
('graphite', 'گرافیت', '2.25', '2680000', 'y', 'm,v', 'sheet'),
('hastelloy', 'هستلوی', '8.90', '10100000', 'y', 'm,v', 'sheet'),
('inconel ', 'اینکونل', '8.50', '9990000', 'y', 'm,v', 'sheet'),
('iron', 'آهن', '7.00', '1150000', 'y', 'm,v', 'sheet'),
('klingersil', 'گسکت', '1.20', '3480000', 'n', 'g', 'sheet'),
('lead', 'سرب', '11.40', '6860000', 'y', 'm,v', 'sheet'),
('magnesium', 'منیزیم', '1.74', '21350000', 'y', 'm,v', 'sheet'),
('monel ', 'مونل', '8.80', '8880000', 'y', 'm,v', 'sheet'),
('nickel', 'نیکل', '8.90', '5000000', 'y', 'm,v', 'sheet'),
('paladium', 'پالادیوم', '12.20', '492000000', 'y', 'm,v', 'sheet'),
('plastic', 'پلاستیک', '1.50', '1200000', 'n', 's', 'sheet'),
('pltinum', 'پلاتین', '21.40', '51600000000', 'y', 'm,v', 'sheet'),
('ptfe', 'تفلون', '3.00', '2200000', 'n', 's', 'sheet'),
('pvc', 'پی وی سی', '2.00', '1000000', 'n', 's', 'sheet'),
('rhodium', 'رودیوم', '12.44', '4200000', 'y', 'm,v', 'sheet'),
('rubber', 'لاستیک', '2.00', '1650000', 'n', 'g', 'sheet'),
('silver', 'نقره', '10.50', '684230000', 'y', 'm,v', 'sheet'),
('ss304', 'استیل 304', '8.22', '4000000', 'y', 'm,v', 'sheet'),
('ss316', 'استیل 316', '8.18', '4100000', 'y', 'm,v', 'sheet'),
('st37', 'کربن استیل اس تی 37', '7.70', '1120000', 'y', 'm,v', 'sheet'),
('styrofoam', 'چوب پنبه', '0.30', '895000', 'n', 'box', 'sheet'),
('tef', 'تفلون', '2.50', '1280000', 'n', 's', 'sheet'),
('tin', 'قلع', '6.55', '6120000', 'y', 'm,v', 'sheet'),
('titanium', 'تیتانیوم', '4.70', '8500000', 'y', 'm,v', 'sheet'),
('tungsten', 'تنگستن', '19.30', '56000000', 'y', 'm,v', 'sheet'),
('wooden box ', 'جعبه چوبی', '0.80', '1160000', 'n', 'box', 'sheet'),
('zink', 'روی', '7.00', '7080000', 'y', 'm,v', 'sheet');

-- --------------------------------------------------------

--
-- Table structure for table `mto`
--

CREATE TABLE `mto` (
  `element` varchar(13) DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL,
  `item` varchar(34) DEFAULT NULL,
  `itemf` varchar(34) DEFAULT NULL,
  `unitf` varchar(8) DEFAULT NULL,
  `pr` varchar(8) DEFAULT NULL,
  `p0` varchar(59) DEFAULT NULL,
  `p1` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `mto`
--

INSERT INTO `mto` (`element`, `type`, `item`, `itemf`, `unitf`, `pr`, `p0`, `p1`) VALUES
('rupture', 'rff', 'Sheet', 'ورق ', 'برگ', '3000000', '3000000', '3000000'),
('rupture', 'rff', 'Sheet', 'ورق ', 'برگ', '4000000', 'l', 'w'),
('rupture', 'rff', 'roll', 'رول', 'متر', '1000000', 'l', 't'),
('rupture', 'rff', 'material analysis', 'آنالیز متریال', 'عدد', '18000000', '15000000', 'qty'),
('rupture', 'rff', 'WireCut', 'وایرکات', 'عدد', '38000000', '2400000', 'qty_size'),
('rupture', 'rff', 'Waterjet/Laser', 'واترجت - لیزر', 'عدد', '35000000', '2800000', 'qty_size'),
('rupture', 'rf', 'heat Form', 'شکل دهی حرارتی', 'عدد', '15000000', '2000000', 'qty_size'),
('rupture', 'rf', 'heat Treatment', 'عملیات حرارتی', 'عدد', '29000000', '4200000', 'qty_size'),
('rupture', 'rf', 'hydro Forming', 'فورمینگ', 'عدد', '36000000', '3500000', 'qty_size'),
('rupture', '1', 'Laser Marking', 'مارک', 'عدد', '10000000', '1000000', 'qty'),
('rupture', '1', 'Test', 'تست', 'عدد', '11000000', '2000000', 'qty_size'),
('rupture', '1', 'Styrofoam', 'محافظ', 'عدد', '5000000', '200000', 'qty_size'),
('rupture', '1', 'Cardboard Box', 'کارتن', 'عدد', '5000000', '250000', 'qty_size'),
('rupture', '1', 'boxing', 'بسته بندی', 'عدد', '5000000', '150000', 'qty_size'),
('rupture', '1', 'shipping', 'ارسال', 'عدد', '15000000', '500000', 'qty_size'),
('rupture', '1', 'sensor', 'سنسور', 'عدد', '20000000', '18000000', 'qty_size'),
('holder', '11', 'Vent Side holder', 'گرده', 'عدد', '', 'od', 't'),
('holder', '11', 'Process Side holder', 'گرده', 'عدد', '', 'od', 't'),
('holder', '11', 'Machinery', 'ماشینکاری تراش', 'عدد', '', '.', ''),
('holder', '11', 'Wirecut/Waterjet', 'وایرکات- واترجت', 'عدد', '', '.', ''),
('holder', '11', 'Milling cnc', 'فرز cnc', 'عدد', '', '.', ''),
('holder', '11', 'Wooden Box ', 'جعبه چوبی', 'عدد', '', '.', ''),
('holder', '11', 'Styrofoam', 'محافظ', 'عدد', '', '.', ''),
('vaccumbreaker', '', 'tube', 'لوله 14 اینچ استیل 304', 'عدد', '', 'Mat. s304 - D in = 336.5 mm - D out = 355.6 mm - L = 150 mm', ''),
('vaccumbreaker', '', 'tube', 'لوله ¾ اینچ استیل 304', 'عدد', '', 'Mat. s304 - D in = 20.9 - D out = 26.7 - L = 250 mm', ''),
('vaccumbreaker', '', 'shaft', 'شفت استیل 304 به قطر 20 میل', 'عدد', '', 'Mat. s304 or s316 - D = 20 mm  - L = 350 mm', ''),
('vaccumbreaker', '', 'plate', 'ورق استیل 12 میل', 'عدد', '', 'Mat. s304  - 1500*3000*12 mm³ - ضایعات انبار رو باز ', ''),
('vaccumbreaker', '', 'sheet', 'ورق استیل 6 میل', 'عدد', '', 'Mat. s304  -700*500*6 mm³ ', ''),
('vaccumbreaker', '', 'plate', 'ورق استیل 2 میل', 'عدد', '', 'Mat. s304  -440*440*2 mm³ ', ''),
('vaccumbreaker', '', 'gasket', 'گسکت لاستیکی ', 'عدد', '', 'Mat. Rubber - width = 1 m - THK = 3 mm', ''),
('vaccumbreaker', '', 'mesh', 'توری استیل', 'عدد', '', 'Mat. SS - 430*430 mm²', ''),
('vaccumbreaker', '', 'screw', 'پیچ آلن 4 استیل', 'عدد', '', 'Hex Bolt, M4x30', ''),
('vaccumbreaker', '', 'nut', 'مهره 4 استیل', 'عدد', '', 'Hex Nut, M4', ''),
('vaccumbreaker', '', 'screw', 'پیچ آچاری 12 استیل', 'عدد', '', 'Hex Bolt, M12x30', ''),
('vaccumbreaker', '', 'washer', 'واشر 12 استیل', 'عدد', '', 'Flat Washer, M12', ''),
('vaccumbreaker', '', 'spring washer', 'واشر فنری 12 استیل', 'عدد', '', 'Spring Washer, M12', ''),
('vaccumbreaker', '', 'nut', 'مهره 10 استیل', 'عدد', '', 'Hex Nut, M10', ''),
('vaccumbreaker', '', 'steel washer', 'واشر 10 استیل', 'عدد', '', 'Flat Washer, M10', ''),
('vaccumbreaker', '', 'spring washer', 'واشر فنری 10 استیل', 'عدد', '', 'Spring Washer, M10', ''),
('vaccumbreaker', '', 'material analysis', 'آنالیز متریال', 'عدد', '', '', ''),
('vaccumbreaker', '', 'laser/waterjet', 'برشکاری (لیزر/ واترجت)', 'عدد', '', '', ''),
('vaccumbreaker', '', 'boxing', 'بسته بندی', 'عدد', '', '', ''),
('vaccumbreaker', '', 'shipping', 'ارسال', 'عدد', '', '', ''),
('breathervalve', '', 'بدنه شیر تنفسی  4 اینچ', 'فلنج استیل 1½ اینچ', 'عدد', '', '', ''),
('breathervalve', '', 'ورق آهن 15 میلیمتر ', 'لوله 1½ اینچ استیل', 'عدد', '', '', ''),
('breathervalve', '', 'ورق آهن 10 میلیمتر', 'لوله 3 اینچ استیل', 'عدد', '', '', ''),
('breathervalve', '', 'ورق آهن 2 میلیمتر', 'لوله 5 اینچ استیل', 'عدد', '', '', ''),
('breathervalve', '', 'ورق آلومینیم 2 میلیمتر', 'لوله 3/8 اینچ استیل', 'عدد', '', '', ''),
('breathervalve', '', 'ورق استیل 10 میلیمتر', 'لوله 2 اینچ استیل', 'عدد', '', '', ''),
('breathervalve', '', 'ورق استیل 5 میلیمتر', 'شفت استیل 18 میل', 'عدد', '', '', ''),
('breathervalve', '', 'ورق استیل 12 میلیمتر', 'شفت استیل 10 میل', 'عدد', '', '', ''),
('breathervalve', '', 'ورق استیل 5 میلیمتر', 'شفت استیل 8 میل', 'عدد', '', '', ''),
('breathervalve', '', 'ورق استیل 3 میلیمتر', 'قلاب چشمی استیل ', 'عدد', '', '', ''),
('breathervalve', '', 'ورق استیل 1 میلیمتر', 'پیچ سر آلنی M4x15', 'عدد', '', '', ''),
('breathervalve', '', 'ورق استیل 2 میلیمتر', 'واشر فنری M4', 'عدد', '', '', ''),
('breathervalve', '', 'گسکت لاستیکی 1 میلیمتر', 'واشر تخت M4', 'عدد', '', '', ''),
('breathervalve', '', 'لوله 8 اینچ استیل', 'پیچ سر آلنی M3x15', 'عدد', '', '', ''),
('breathervalve', '', 'لوله 5 اینچ استیل', 'مهره M3', 'عدد', '', '', ''),
('breathervalve', '', 'شفت استیل 25 میلیمتر ', 'مهره M8', 'عدد', '', '', ''),
('breathervalve', '', 'شفت استیل 15 میلیمتر ', 'مهره M6', 'عدد', '', '', ''),
('breathervalve', '', 'شفت آلومینیوم 15 میلیمتر ', 'واشر تخت M6', 'عدد', '', '', ''),
('breathervalve', '', 'رنگ رال 9010  به همراه هاردنر', 'واشر فنری M6', 'عدد', '', '', ''),
('breathervalve', '', 'رنگ لایه اول (زینک ریچ اپوکسی)', 'واشر تخت M8', 'عدد', '', '', ''),
('breathervalve', '', 'رنگ لایه دوم (اپوکسی پلی آمید)', 'واشر فنری M8', 'عدد', '', '', ''),
('breathervalve', '', 'پیچ آلن  استیل M12 بطول 5 سانت', 'گسکت 1 میلیمتر', 'عدد', '', '', ''),
('breathervalve', '', 'مهره  استیل M12', 'مش قسمت وکیوم', 'عدد', '', '', ''),
('breathervalve', '', 'واشر تخت استیل M12', 'ورق 10 یا 12 میل استیل', 'عدد', '', '', ''),
('breathervalve', '', 'واشرفنری  استیل M12', 'ورق 6 میل استیل', 'عدد', '', '', ''),
('breathervalve', '', 'مهره  استیل M10', 'ورق 3 میل استیل', 'عدد', '', '', ''),
('breathervalve', '', 'پیچ آلن استیل M8 بطول 2 سانت', 'ورق 2 میل استیل', 'عدد', '', '', ''),
('breathervalve', '', 'پیچ آلن استیل M8 بطول 2.5 سانت', 'جوشکاری', 'عدد', '', '', ''),
('breathervalve', '', 'واشر تخت  استیل M8', 'خمکاری', 'عدد', '', '', ''),
('breathervalve', '', 'واشرفنری  استیل M8', 'برش لیزر', 'عدد', '', '', ''),
('breathervalve', '', 'پیچ آلن استیل M4 بطول 1 سانت', 'بسته بندی', 'عدد', '', '', ''),
('breathervalve', '', 'مهره M4', 'ارسال', 'عدد', '', '', ''),
('breathervalve', '', 'قلاب چشمی نری M12', 'مش قسمت وکیوم', 'عدد', '', '', ''),
('breathervalve', '', 'نورد', 'ورق 10 یا 12 میل استیل', 'عدد', '', '', ''),
('breathervalve', '', 'خمکاری', 'خمکاری', 'عدد', '', '', ''),
('breathervalve', '', 'آنالیز متریال', 'ورق 6 میل استیل', 'عدد', '', '', ''),
('breathervalve', '', 'برشکاری (لیزر/ واترجت)', 'ورق 3 میل استیل', 'عدد', '', '', ''),
('breathervalve', '', 'بسته بندی', 'ورق 2 میل استیل', 'عدد', '', '', ''),
('breathervalve', '', 'ارسال', 'جوشکاری', 'عدد', '', '', ''),
('breathervalve', '', 'برش لیزر', 'برش لیزر', 'عدد', '', '', ''),
('breathervalve', '', 'بسته بندی', 'بسته بندی', 'عدد', '', '', ''),
('breathervalve', '', 'ارسال', 'ارسال', 'عدد', '', '', ''),
('flamearrestor', '', 'فلنج size_1 اینچ', 'فلنج size_1 اینچ', 'عدد', '24000000', '96000000', 'WN - PN16 - ASTM A105'),
('flamearrestor', '', 'فلنج size_2 اینچ', 'فلنج size_2 اینچ', 'عدد', '48000000', '192000000', 'DN200 - PN16 - ASTM A105'),
('flamearrestor', '', 'ردیوسر size_1 یه size_2 اینچ', 'ردیوسر size_1 یه size_2 اینچ', 'عدد', '15000000', '60000000', 'A234 - WPB'),
('flamearrestor', '', 'ورق استیل ', 'ورق استیل ', 'سانتیمتر', '2600000', '117000000', 'SS420 or SS430 - THK = 15 mm '),
('flamearrestor', '', 'رول ورق استیل', 'رول ورق استیل', 'عدد', '8500000', '74800000', 'SS316L - THK = 0.2 mm - Width = 15mm'),
('flamearrestor', '', 'لوله 10 اینچ به طول 6 سانت ', 'لوله 10 اینچ به طول 6 سانت ', 'عدد', '1200000', '19200000', 'Mat = CS - THK = 15mm - SCH 80 '),
('flamearrestor', '', 'یپچ و مهره 14 ', 'یپچ و مهره 14 ', 'عدد', '650000', '1300000', 'M14 - L = 70 mm - Mat. SS'),
('flamearrestor', '', 'استاد بولت ¾ اینچ', 'استاد بولت ¾ اینچ', 'عدد', '1500000', '24000000', 'Mat. A193 B7 & A194 2H - L = 150mm'),
('flamearrestor', '', 'گسکت رنگی (Klingersil)', 'گسکت رنگی (Klingersil)', 'عدد', '4000000', '16000000', 'Size 8 inch - THK = 1.5 mm '),
('flamearrestor', '', 'رول تفلون 0.5 میل ', 'رول تفلون 0.5 میل ', 'متر', '10000000', '30000000', 'Width = 120 cm'),
('flamearrestor', '', 'توری استیل', 'توری استیل', 'سانتیمتر', '5000000', '5000000', 'Mat. SS'),
('flamearrestor', '', 'آنالیز متریال ', 'آنالیز متریال ', '-', '4000000', '16000000', '-'),
('flamearrestor', '', 'لیزر - واترجت', 'لیزر - واترجت', '-', '30000000', '30000000', '-'),
('flamearrestor', '', 'ماشینکاری', 'ماشینکاری', '-', '30000000', '30000000', '-'),
('flamearrestor', '', 'جوشکاری', 'جوشکاری', '-', '80000000', '80000000', '-'),
('flamearrestor', '', 'رنگ', 'رنگ', '', '15000000', '90000000', 'Ral 3020'),
('flamearrestor', '', 'بسته بندی ', 'بسته بندی ', '-', '7000000', '14000000', 'Wooden Box'),
('flamearrestor', '', 'ارسال ', 'ارسال ', '-', '50000000', '50000000', '-'),
('explosiondoor', '', 'ورق 5 میل (Baffle, Baffle support)', 'ورق 5 میل (Baffle, Baffle support)', 'عدد', '', '', ''),
('explosiondoor', '', 'ورق 15 میل (Baffle)', 'ورق 15 میل (Baffle)', 'عدد', '', '', ''),
('explosiondoor', '', 'ورق 10 میل (Baffle)', 'ورق 10 میل (Baffle)', 'عدد', '', '', ''),
('explosiondoor', '', 'ورق 1 میل( Covere)', 'ورق 1 میل( Covere)', 'عدد', '', '', ''),
('explosiondoor', '', 'ورق 3 میل (Door plate)', 'ورق 3 میل (Door plate)', 'عدد', '', '', ''),
('explosiondoor', '', 'ورق 2 میل (Door mesh )', 'ورق 2 میل (Door mesh )', 'عدد', '', '', ''),
('explosiondoor', '', 'پروفیل با ضخامت 2 میل (Door Frame)', 'پروفیل با ضخامت 2 میل (Door Frame)', 'عدد', '', '', ''),
('explosiondoor', '', 'تسمه (Hinge, Retainer)', 'تسمه (Hinge, Retainer)', 'عدد', '', '', ''),
('explosiondoor', '', 'نبشی با ضخامت 5 میل', 'نبشی با ضخامت 5 میل', 'عدد', '', '', ''),
('explosiondoor', '', 'فنرهای ضربه گیر', 'فنرهای ضربه گیر', 'عدد', '', '', ''),
('explosiondoor', '', 'فنرهای ضامن', 'فنرهای ضامن', 'عدد', '', '', ''),
('explosiondoor', '', 'سیلینگ در', 'سیلینگ در', 'عدد', '', '', ''),
('explosiondoor', '', 'لاستیک ضربه گیر', 'لاستیک ضربه گیر', 'عدد', '', '', ''),
('explosiondoor', '', 'ضامن', 'ضامن', 'عدد', '', '', ''),
('explosiondoor', '', 'سنسور', 'سنسور', 'عدد', '', '', ''),
('explosiondoor', '', 'گسکت', 'گسکت', 'عدد', '', '', ''),
('explosiondoor', '', 'پیچ و مهره و پین', 'پیچ و مهره و پین', 'عدد', '', '', ''),
('explosiondoor', '', 'گسکت کانکشن', 'گسکت کانکشن', 'عدد', '', '', ''),
('explosiondoor', '', 'پیچ و مهره کانکشن - استاد بولت', 'پیچ و مهره کانکشن - استاد بولت', 'عدد', '', '', ''),
('explosiondoor', '', 'لیزر', 'لیزر', 'عدد', '', '', ''),
('explosiondoor', '', 'ماشین کاری', 'ماشین کاری', 'عدد', '', '', ''),
('explosiondoor', '', 'جوشکاری', 'جوشکاری', 'عدد', '', '', ''),
('explosiondoor', '', 'آنالیز متریال و سایر تست ها', 'آنالیز متریال و سایر تست ها', 'عدد', '', '', ''),
('explosiondoor', '', 'رنگ', 'رنگ', 'عدد', '', '', ''),
('explosiondoor', '', 'بسته بندی و ارسال', 'بسته بندی و ارسال', 'عدد', '', '', ''),
('mtoheader', 'header', 'index', 'ردیف', '', '', '', ''),
('mtoheader', 'header', 'element', 'نام قطعه ', '', '', '', ''),
('mtoheader', 'header', 'properties', 'مشخصات', '', '', '', ''),
('mtoheader', 'header', 'Qty', 'مقدار', '', '', '', ''),
('mtoheader', 'header', 'Unit', 'واحد', '', '', '', ''),
('mtoheader', 'header', 'Mass(kg)', 'وزن (کیلوگرم)', '', '', '', ''),
('mtoheader', 'header', 'unit Price', 'قیمت واحد (ريال)', '', '', '', ''),
('mtoheader', 'header', 'Price', 'قیمت کل (ريال)', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mto_item_element`
--

CREATE TABLE `mto_item_element` (
  `ID` int NOT NULL,
  `element` varchar(13) DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL,
  `nominalSize` varchar(34) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `itemf` varchar(34) DEFAULT NULL,
  `unitf` varchar(8) DEFAULT NULL,
  `pr` varchar(8) DEFAULT NULL,
  `p0` varchar(59) DEFAULT NULL,
  `p1` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `mto_item_element`
--

INSERT INTO `mto_item_element` (`ID`, `element`, `type`, `nominalSize`, `itemf`, `unitf`, `pr`, `p0`, `p1`) VALUES
(1, 'rupture', 'rff', 'Sheet', 'ورق ', 'برگ', '3000000', '3000000', '3000000'),
(2, 'rupture', 'rff', 'Sheet', 'ورق ', 'برگ', '4000000', 'l', 'w'),
(3, 'rupture', 'rff', 'roll', 'رول', 'متر', '1000000', 'l', 't'),
(4, 'rupture', 'rff', 'material analysis', 'آنالیز متریال', 'عدد', '18000000', '15000000', 'qty'),
(5, 'rupture', 'rff', 'WireCut', 'وایرکات', 'عدد', '38000000', '2400000', 'qty_size'),
(6, 'rupture', 'rff', 'Waterjet/Laser', 'واترجت - لیزر', 'عدد', '35000000', '2800000', 'qty_size'),
(7, 'rupture', 'rf', 'heat Form', 'شکل دهی حرارتی', 'عدد', '15000000', '2000000', 'qty_size'),
(8, 'rupture', 'rf', 'heat Treatment', 'عملیات حرارتی', 'عدد', '29000000', '4200000', 'qty_size'),
(9, 'rupture', 'rf', 'hydro Forming', 'فورمینگ', 'عدد', '36000000', '3500000', 'qty_size'),
(10, 'rupture', '1', 'Laser Marking', 'مارک', 'عدد', '10000000', '1000000', 'qty'),
(11, 'rupture', '1', 'Test', 'تست', 'عدد', '11000000', '2000000', 'qty_size'),
(12, 'rupture', '1', 'Styrofoam', 'محافظ', 'عدد', '5000000', '200000', 'qty_size'),
(13, 'rupture', '1', 'Cardboard Box', 'کارتن', 'عدد', '5000000', '250000', 'qty_size'),
(14, 'rupture', '1', 'boxing', 'بسته بندی', 'عدد', '5000000', '150000', 'qty_size'),
(15, 'rupture', '1', 'shipping', 'ارسال', 'عدد', '15000000', '500000', 'qty_size'),
(16, 'rupture', '1', 'sensor', 'سنسور', 'عدد', '20000000', '18000000', 'qty_size'),
(17, 'holder', '11', 'Vent Side holder', 'گرده', 'عدد', '', 'od', 't'),
(18, 'holder', '11', 'Process Side holder', 'گرده', 'عدد', '', 'od', 't'),
(19, 'holder', '11', 'Machinery', 'ماشینکاری تراش', 'عدد', '', '.', ''),
(20, 'holder', '11', 'Wirecut/Waterjet', 'وایرکات- واترجت', 'عدد', '', '.', ''),
(21, 'holder', '11', 'Milling cnc', 'فرز cnc', 'عدد', '', '.', ''),
(22, 'holder', '11', 'Wooden Box ', 'جعبه چوبی', 'عدد', '', '.', ''),
(23, 'holder', '11', 'Styrofoam', 'محافظ', 'عدد', '', '.', ''),
(24, 'vaccumbreaker', '', 'tube', 'لوله 14 اینچ استیل 304', 'عدد', '', 'Mat. s304 - D in = 336.5 mm - D out = 355.6 mm - L = 150 mm', ''),
(25, 'vaccumbreaker', '', 'tube', 'لوله ¾ اینچ استیل 304', 'عدد', '', 'Mat. s304 - D in = 20.9 - D out = 26.7 - L = 250 mm', ''),
(26, 'vaccumbreaker', '', 'shaft', 'شفت استیل 304 به قطر 20 میل', 'عدد', '', 'Mat. s304 or s316 - D = 20 mm  - L = 350 mm', ''),
(27, 'vaccumbreaker', '', 'plate', 'ورق استیل 12 میل', 'عدد', '', 'Mat. s304  - 1500*3000*12 mm³ - ضایعات انبار رو باز ', ''),
(28, 'vaccumbreaker', '', 'sheet', 'ورق استیل 6 میل', 'عدد', '', 'Mat. s304  -700*500*6 mm³ ', ''),
(29, 'vaccumbreaker', '', 'plate', 'ورق استیل 2 میل', 'عدد', '', 'Mat. s304  -440*440*2 mm³ ', ''),
(30, 'vaccumbreaker', '', 'gasket', 'گسکت لاستیکی ', 'عدد', '', 'Mat. Rubber - width = 1 m - THK = 3 mm', ''),
(31, 'vaccumbreaker', '', 'mesh', 'توری استیل', 'عدد', '', 'Mat. SS - 430*430 mm²', ''),
(32, 'vaccumbreaker', '', 'screw', 'پیچ آلن 4 استیل', 'عدد', '', 'Hex Bolt, M4x30', ''),
(33, 'vaccumbreaker', '', 'nut', 'مهره 4 استیل', 'عدد', '', 'Hex Nut, M4', ''),
(34, 'vaccumbreaker', '', 'screw', 'پیچ آچاری 12 استیل', 'عدد', '', 'Hex Bolt, M12x30', ''),
(35, 'vaccumbreaker', '', 'washer', 'واشر 12 استیل', 'عدد', '', 'Flat Washer, M12', ''),
(36, 'vaccumbreaker', '', 'spring washer', 'واشر فنری 12 استیل', 'عدد', '', 'Spring Washer, M12', ''),
(37, 'vaccumbreaker', '', 'nut', 'مهره 10 استیل', 'عدد', '', 'Hex Nut, M10', ''),
(38, 'vaccumbreaker', '', 'steel washer', 'واشر 10 استیل', 'عدد', '', 'Flat Washer, M10', ''),
(39, 'vaccumbreaker', '', 'spring washer', 'واشر فنری 10 استیل', 'عدد', '', 'Spring Washer, M10', ''),
(40, 'vaccumbreaker', '', 'material analysis', 'آنالیز متریال', 'عدد', '', '', ''),
(41, 'vaccumbreaker', '', 'laser/waterjet', 'برشکاری (لیزر/ واترجت)', 'عدد', '', '', ''),
(42, 'vaccumbreaker', '', 'boxing', 'بسته بندی', 'عدد', '', '', ''),
(43, 'vaccumbreaker', '', 'shipping', 'ارسال', 'عدد', '', '', ''),
(44, 'breathervalve', '', 'بدنه شیر تنفسی  4 اینچ', 'فلنج استیل 1½ اینچ', 'عدد', '', '', ''),
(45, 'breathervalve', '', 'ورق آهن 15 میلیمتر ', 'لوله 1½ اینچ استیل', 'عدد', '', '', ''),
(46, 'breathervalve', '', 'ورق آهن 10 میلیمتر', 'لوله 3 اینچ استیل', 'عدد', '', '', ''),
(47, 'breathervalve', '', 'ورق آهن 2 میلیمتر', 'لوله 5 اینچ استیل', 'عدد', '', '', ''),
(48, 'breathervalve', '', 'ورق آلومینیم 2 میلیمتر', 'لوله 3/8 اینچ استیل', 'عدد', '', '', ''),
(49, 'breathervalve', '', 'ورق استیل 10 میلیمتر', 'لوله 2 اینچ استیل', 'عدد', '', '', ''),
(50, 'breathervalve', '', 'ورق استیل 5 میلیمتر', 'شفت استیل 18 میل', 'عدد', '', '', ''),
(51, 'breathervalve', '', 'ورق استیل 12 میلیمتر', 'شفت استیل 10 میل', 'عدد', '', '', ''),
(52, 'breathervalve', '', 'ورق استیل 5 میلیمتر', 'شفت استیل 8 میل', 'عدد', '', '', ''),
(53, 'breathervalve', '', 'ورق استیل 3 میلیمتر', 'قلاب چشمی استیل ', 'عدد', '', '', ''),
(54, 'breathervalve', '', 'ورق استیل 1 میلیمتر', 'پیچ سر آلنی M4x15', 'عدد', '', '', ''),
(55, 'breathervalve', '', 'ورق استیل 2 میلیمتر', 'واشر فنری M4', 'عدد', '', '', ''),
(56, 'breathervalve', '', 'گسکت لاستیکی 1 میلیمتر', 'واشر تخت M4', 'عدد', '', '', ''),
(57, 'breathervalve', '', 'لوله 8 اینچ استیل', 'پیچ سر آلنی M3x15', 'عدد', '', '', ''),
(58, 'breathervalve', '', 'لوله 5 اینچ استیل', 'مهره M3', 'عدد', '', '', ''),
(59, 'breathervalve', '', 'شفت استیل 25 میلیمتر ', 'مهره M8', 'عدد', '', '', ''),
(60, 'breathervalve', '', 'شفت استیل 15 میلیمتر ', 'مهره M6', 'عدد', '', '', ''),
(61, 'breathervalve', '', 'شفت آلومینیوم 15 میلیمتر ', 'واشر تخت M6', 'عدد', '', '', ''),
(62, 'breathervalve', '', 'رنگ رال 9010  به همراه هاردنر', 'واشر فنری M6', 'عدد', '', '', ''),
(63, 'breathervalve', '', 'رنگ لایه اول (زینک ریچ اپوکسی)', 'واشر تخت M8', 'عدد', '', '', ''),
(64, 'breathervalve', '', 'رنگ لایه دوم (اپوکسی پلی آمید)', 'واشر فنری M8', 'عدد', '', '', ''),
(65, 'breathervalve', '', 'پیچ آلن  استیل M12 بطول 5 سانت', 'گسکت 1 میلیمتر', 'عدد', '', '', ''),
(66, 'breathervalve', '', 'مهره  استیل M12', 'مش قسمت وکیوم', 'عدد', '', '', ''),
(67, 'breathervalve', '', 'واشر تخت استیل M12', 'ورق 10 یا 12 میل استیل', 'عدد', '', '', ''),
(68, 'breathervalve', '', 'واشرفنری  استیل M12', 'ورق 6 میل استیل', 'عدد', '', '', ''),
(69, 'breathervalve', '', 'مهره  استیل M10', 'ورق 3 میل استیل', 'عدد', '', '', ''),
(70, 'breathervalve', '', 'پیچ آلن استیل M8 بطول 2 سانت', 'ورق 2 میل استیل', 'عدد', '', '', ''),
(71, 'breathervalve', '', 'پیچ آلن استیل M8 بطول 2.5 سانت', 'جوشکاری', 'عدد', '', '', ''),
(72, 'breathervalve', '', 'واشر تخت  استیل M8', 'خمکاری', 'عدد', '', '', ''),
(73, 'breathervalve', '', 'واشرفنری  استیل M8', 'برش لیزر', 'عدد', '', '', ''),
(74, 'breathervalve', '', 'پیچ آلن استیل M4 بطول 1 سانت', 'بسته بندی', 'عدد', '', '', ''),
(75, 'breathervalve', '', 'مهره M4', 'ارسال', 'عدد', '', '', ''),
(76, 'breathervalve', '', 'قلاب چشمی نری M12', 'مش قسمت وکیوم', 'عدد', '', '', ''),
(77, 'breathervalve', '', 'نورد', 'ورق 10 یا 12 میل استیل', 'عدد', '', '', ''),
(78, 'breathervalve', '', 'خمکاری', 'خمکاری', 'عدد', '', '', ''),
(79, 'breathervalve', '', 'آنالیز متریال', 'ورق 6 میل استیل', 'عدد', '', '', ''),
(80, 'breathervalve', '', 'برشکاری (لیزر/ واترجت)', 'ورق 3 میل استیل', 'عدد', '', '', ''),
(81, 'breathervalve', '', 'بسته بندی', 'ورق 2 میل استیل', 'عدد', '', '', ''),
(82, 'breathervalve', '', 'ارسال', 'جوشکاری', 'عدد', '', '', ''),
(83, 'breathervalve', '', 'برش لیزر', 'برش لیزر', 'عدد', '', '', ''),
(84, 'breathervalve', '', 'بسته بندی', 'بسته بندی', 'عدد', '', '', ''),
(85, 'breathervalve', '', 'ارسال', 'ارسال', 'عدد', '', '', ''),
(86, 'flamearrestor', '', 'فلنج size_1 اینچ', 'فلنج size_1 اینچ', 'عدد', '24000000', '96000000', 'WN - PN16 - ASTM A105'),
(87, 'flamearrestor', '', 'فلنج size_2 اینچ', 'فلنج size_2 اینچ', 'عدد', '48000000', '192000000', 'DN200 - PN16 - ASTM A105'),
(88, 'flamearrestor', '', 'ردیوسر size_1 یه size_2 اینچ', 'ردیوسر size_1 یه size_2 اینچ', 'عدد', '15000000', '60000000', 'A234 - WPB'),
(89, 'flamearrestor', '', 'ورق استیل ', 'ورق استیل ', 'سانتیمتر', '2600000', '117000000', 'SS420 or SS430 - THK = 15 mm '),
(90, 'flamearrestor', '', 'رول ورق استیل', 'رول ورق استیل', 'عدد', '8500000', '74800000', 'SS316L - THK = 0.2 mm - Width = 15mm'),
(91, 'flamearrestor', '', 'لوله 10 اینچ به طول 6 سانت ', 'لوله 10 اینچ به طول 6 سانت ', 'عدد', '1200000', '19200000', 'Mat = CS - THK = 15mm - SCH 80 '),
(92, 'flamearrestor', '', 'یپچ و مهره 14 ', 'یپچ و مهره 14 ', 'عدد', '650000', '1300000', 'M14 - L = 70 mm - Mat. SS'),
(93, 'flamearrestor', '', 'استاد بولت ¾ اینچ', 'استاد بولت ¾ اینچ', 'عدد', '1500000', '24000000', 'Mat. A193 B7 & A194 2H - L = 150mm'),
(94, 'flamearrestor', '', 'گسکت رنگی (Klingersil)', 'گسکت رنگی (Klingersil)', 'عدد', '4000000', '16000000', 'Size 8 inch - THK = 1.5 mm '),
(95, 'flamearrestor', '', 'رول تفلون 0.5 میل ', 'رول تفلون 0.5 میل ', 'متر', '10000000', '30000000', 'Width = 120 cm'),
(96, 'flamearrestor', '', 'توری استیل', 'توری استیل', 'سانتیمتر', '5000000', '5000000', 'Mat. SS'),
(97, 'flamearrestor', '', 'آنالیز متریال ', 'آنالیز متریال ', '-', '4000000', '16000000', '-'),
(98, 'flamearrestor', '', 'لیزر - واترجت', 'لیزر - واترجت', '-', '30000000', '30000000', '-'),
(99, 'flamearrestor', '', 'ماشینکاری', 'ماشینکاری', '-', '30000000', '30000000', '-'),
(100, 'flamearrestor', '', 'جوشکاری', 'جوشکاری', '-', '80000000', '80000000', '-'),
(101, 'flamearrestor', '', 'رنگ', 'رنگ', '', '15000000', '90000000', 'Ral 3020'),
(102, 'flamearrestor', '', 'بسته بندی ', 'بسته بندی ', '-', '7000000', '14000000', 'Wooden Box'),
(103, 'flamearrestor', '', 'ارسال ', 'ارسال ', '-', '50000000', '50000000', '-'),
(104, 'explosiondoor', '', 'ورق 5 میل (Baffle, Baffle support)', 'ورق 5 میل (Baffle, Baffle support)', 'عدد', '', '', ''),
(105, 'explosiondoor', '', 'ورق 15 میل (Baffle)', 'ورق 15 میل (Baffle)', 'عدد', '', '', ''),
(106, 'explosiondoor', '', 'ورق 10 میل (Baffle)', 'ورق 10 میل (Baffle)', 'عدد', '', '', ''),
(107, 'explosiondoor', '', 'ورق 1 میل( Covere)', 'ورق 1 میل( Covere)', 'عدد', '', '', ''),
(108, 'explosiondoor', '', 'ورق 3 میل (Door plate)', 'ورق 3 میل (Door plate)', 'عدد', '', '', ''),
(109, 'explosiondoor', '', 'ورق 2 میل (Door mesh )', 'ورق 2 میل (Door mesh )', 'عدد', '', '', ''),
(110, 'explosiondoor', '', 'پروفیل با ضخامت 2 میل (Door Frame)', 'پروفیل با ضخامت 2 میل (Door Frame)', 'عدد', '', '', ''),
(111, 'explosiondoor', '', 'تسمه (Hinge, Retainer)', 'تسمه (Hinge, Retainer)', 'عدد', '', '', ''),
(112, 'explosiondoor', '', 'نبشی با ضخامت 5 میل', 'نبشی با ضخامت 5 میل', 'عدد', '', '', ''),
(113, 'explosiondoor', '', 'فنرهای ضربه گیر', 'فنرهای ضربه گیر', 'عدد', '', '', ''),
(114, 'explosiondoor', '', 'فنرهای ضامن', 'فنرهای ضامن', 'عدد', '', '', ''),
(115, 'explosiondoor', '', 'سیلینگ در', 'سیلینگ در', 'عدد', '', '', ''),
(116, 'explosiondoor', '', 'لاستیک ضربه گیر', 'لاستیک ضربه گیر', 'عدد', '', '', ''),
(117, 'explosiondoor', '', 'ضامن', 'ضامن', 'عدد', '', '', ''),
(118, 'explosiondoor', '', 'سنسور', 'سنسور', 'عدد', '', '', ''),
(119, 'explosiondoor', '', 'گسکت', 'گسکت', 'عدد', '', '', ''),
(120, 'explosiondoor', '', 'پیچ و مهره و پین', 'پیچ و مهره و پین', 'عدد', '', '', ''),
(121, 'explosiondoor', '', 'گسکت کانکشن', 'گسکت کانکشن', 'عدد', '', '', ''),
(122, 'explosiondoor', '', 'پیچ و مهره کانکشن - استاد بولت', 'پیچ و مهره کانکشن - استاد بولت', 'عدد', '', '', ''),
(123, 'explosiondoor', '', 'لیزر', 'لیزر', 'عدد', '', '', ''),
(124, 'explosiondoor', '', 'ماشین کاری', 'ماشین کاری', 'عدد', '', '', ''),
(125, 'explosiondoor', '', 'جوشکاری', 'جوشکاری', 'عدد', '', '', ''),
(126, 'explosiondoor', '', 'آنالیز متریال و سایر تست ها', 'آنالیز متریال و سایر تست ها', 'عدد', '', '', ''),
(127, 'explosiondoor', '', 'رنگ', 'رنگ', 'عدد', '', '', ''),
(128, 'explosiondoor', '', 'بسته بندی و ارسال', 'بسته بندی و ارسال', 'عدد', '', '', ''),
(129, 'mtoheader', 'header', 'index', 'ردیف', '', '', '', ''),
(130, 'mtoheader', 'header', 'element', 'نام قطعه ', '', '', '', ''),
(131, 'mtoheader', 'header', 'properties', 'مشخصات', '', '', '', ''),
(132, 'mtoheader', 'header', 'Qty', 'مقدار', '', '', '', ''),
(133, 'mtoheader', 'header', 'Unit', 'واحد', '', '', '', ''),
(134, 'mtoheader', 'header', 'Mass(kg)', 'وزن (کیلوگرم)', '', '', '', ''),
(135, 'mtoheader', 'header', 'unit Price', 'قیمت واحد (ريال)', '', '', '', ''),
(136, 'mtoheader', 'header', 'Price', 'قیمت کل (ريال)', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `overfordesign`
--

CREATE TABLE `overfordesign` (
  `ID` int NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `num` int NOT NULL DEFAULT '0',
  `description` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `overfordesign`
--

INSERT INTO `overfordesign` (`ID`, `type`, `size`, `num`, `description`) VALUES
(3, 'reverse', '8', 6, 'lower'),
(4, 'forward', '8', 3, 'lower'),
(6, 'flat', '8', 3, 'higher'),
(7, 'flat', '8', 4, 'lower'),
(8, 'forward', '8', 2, 'higher'),
(9, 'reverse', '8', 4, 'higher');

-- --------------------------------------------------------

--
-- Table structure for table `overtotest`
--

CREATE TABLE `overtotest` (
  `element` varchar(7) DEFAULT NULL,
  `az` int DEFAULT NULL,
  `ta` int DEFAULT NULL,
  `kam` int DEFAULT NULL,
  `dar` float(3,2) DEFAULT NULL,
  `overcalc` varchar(10) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `overtotest`
--

INSERT INTO `overtotest` (`element`, `az`, `ta`, `kam`, `dar`, `overcalc`) VALUES
('rupture', 1, 9, 2, 0.00, ''),
('rupture', 10, 15, 3, 0.00, ''),
('rupture', 16, 30, 4, 0.00, ''),
('rupture', 31, 100, 6, 0.00, ''),
('rupture', 101, 250, 6, 0.04, ''),
('rupture', 251, 999, 10, 0.03, ''),
('rupture', 1000, 100000, 30, 0.02, '');

-- --------------------------------------------------------

--
-- Table structure for table `requested_rupture`
--

CREATE TABLE `requested_rupture` (
  `ID` int NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `main` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `seal` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bp` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bt` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `request_by` varchar(63) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requested_rupture`
--

INSERT INTO `requested_rupture` (`ID`, `type`, `size`, `main`, `sub`, `seal`, `bp`, `bt`, `request_by`, `description`, `time`) VALUES
(14, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', NULL, NULL, '2025-02-02 18:24:45'),
(15, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-02 18:27:30'),
(16, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:26:50'),
(17, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:26:55'),
(18, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:29:19'),
(19, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:38:36'),
(20, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:38:42'),
(21, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:48:10'),
(22, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:51:28'),
(23, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:51:42'),
(24, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:52:16'),
(25, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:52:27'),
(26, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 05:54:00'),
(27, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 06:05:11'),
(28, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 06:12:00'),
(29, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-03 06:12:43'),
(30, 'reverse', '4', 'SS316', 'Monel', 'teflon', '5', '25', 'user', NULL, '2025-02-03 06:15:05'),
(31, 'reverse', '4', 'Monel', 'Titanium', 'PVC', '5', '25', 'user', NULL, '2025-02-03 06:17:02'),
(32, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:14:51'),
(33, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:15:39'),
(34, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:16:21'),
(35, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:20:34'),
(36, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:23:19'),
(37, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:24:41'),
(38, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:25:01'),
(39, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:25:32'),
(40, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:25:40'),
(41, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:25:51'),
(42, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:28:54'),
(43, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:30:32'),
(44, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:31:05'),
(45, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:31:53'),
(46, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-06 18:32:12'),
(47, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:50:56'),
(48, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:51:45'),
(49, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:52:43'),
(50, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:52:47'),
(51, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:54:40'),
(52, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:55:07'),
(53, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:55:11'),
(54, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:55:14'),
(55, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:55:20'),
(56, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:58:22'),
(57, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:59:07'),
(58, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 16:59:14'),
(59, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 18:11:39'),
(60, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-08 18:37:24'),
(61, 'reverse', '4', 'SS316', 'SS316', 'teflon', '5', '25', 'user', NULL, '2025-02-09 10:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `request_rupture`
--

CREATE TABLE `request_rupture` (
  `ID` int NOT NULL,
  `element` int NOT NULL,
  `type` int NOT NULL,
  `size` int NOT NULL,
  `layers` int NOT NULL,
  `burstCondition` int NOT NULL,
  `user` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `timer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rupture_disk`
--

CREATE TABLE `rupture_disk` (
  `ID` int NOT NULL,
  `type` int NOT NULL,
  `size` int NOT NULL,
  `layers` int NOT NULL,
  `description` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tested`
--

CREATE TABLE `tested` (
  `id` int NOT NULL,
  `type` varchar(7) DEFAULT NULL,
  `size` varchar(5) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `layer` varchar(43) DEFAULT NULL,
  `bp` varchar(8) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `bt` varchar(8) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `rbp` varchar(5) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `fh` varchar(8) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `drw` varchar(22) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tested`
--

INSERT INTO `tested` (`id`, `type`, `size`, `layer`, `bp`, `bt`, `rbp`, `fh`, `drw`) VALUES
(1, 'flat', '16.0', 'cs:3_cs:0.5_pvc:0.8', '6.000', '40.00', '6.02', '', ''),
(2, 'flat', '24.0', 'cs:3_cs:0.5_pvc:0.8', '6.000', '40.00', '6.02', '', ''),
(3, 'flat', '24.0', 'cs:3_cs:0.5_pvc:0.8', '6.000', '40.00', '6.02', '', ''),
(4, 'flat', '24.0', 's316L:2_s316L:0.5_tef:0.5', '6.000', '40.00', '6.1', '', ''),
(5, 'flat', '24.0', 's316L:2_s316L:0.5_tef:0.5', '6.000', '40.00', '5.98', '', ''),
(6, 'flat', '24.0', 's316L:2_s316L:0.5_tef:0.5', '6.000', '40.00', '6', '', ''),
(7, 'flat', '3.0', 's316L:0.2_s316L:0.2_tef:0.1', '2.000', '22.00', '1.73', '', ''),
(8, 'flat', '3.0', 's316L:0.2_s316L:0.3_tef:0.1', '2.000', '22.00', '1.83', '', ''),
(9, 'flat', '3.0', 's316L:0.2_s316L:0.4_tef:0.1', '2.000', '22.00', '1.95', '', ''),
(10, 'flat', '30.0', 's316L:0.6_s316L:0.3_ptfe:0.6', '0.300', '120.00', '0.321', '', ''),
(11, 'flat', '30.0', 's316L:0.6_s316L:0.3_ptfe:0.6', '0.300', '120.00', '0.265', '', ''),
(12, 'flat', '6.0', 's316L:0.6_s316L:0.5_tef:0.6', '5.500', '20.00', '4', '', ''),
(13, 'flat', '6.0', 's316L:0.6_s316L:0.25_tef:0.6', '5.500', '20.00', '3.79', '', ''),
(14, 'flat', '6.0', 's316L:0.6_s316L:0.3_tef:0.6', '5.500', '20.00', '5.85', '', ''),
(15, 'flat', '6.0', 's316L:0.6_s316L:0.2_tef:0.6', '5.500', '20.00', '5.81', '', ''),
(16, 'flat', '6.0', 's316L:0.6_s316L:0.2_tef:0.6', '5.500', '20.00', '5.6', '', ''),
(17, 'flat', '6.0', 's316L:0.6_s316L:0.2_tef:0.6', '5.500', '20.00', '5.92', '', ''),
(18, 'flat', '6.0', 's316L:0.6_s316L:0.2_tef:0.6', '5.500', '20.00', '5.94', '', ''),
(19, 'flat', '4.0', 's316L:0.1_s316L:0.2_s316L:0.1_ptfe:0.3', '0.900', '60.00', '0.57', '', ''),
(20, 'flat', '4.0', 's316L:0.1_s316L:0.25_s316L:0.1_ptfe:0.3', '0.900', '60.00', '1.03', '', ''),
(21, 'flat', '4.0', 's316L:1_s316L:0.1_s316L:0.1_ptfe:0.3', '0.900', '60.00', '0.76', '', ''),
(22, 'flat', '24.0', 's316L:2.5_s316L:0.8_ptfe:0.5', '6.000', '40.00', '5.54', '', ''),
(23, 'flat', '24.0', 's316L:2.5_s316L:0.8_ptfe:0.5', '6.000', '40.00', '5.3', '', ''),
(24, 'flat', '24.0', 's316L:2.5_s316L:0.8_ptfe:0.5', '6.000', '40.00', '6.24', '', ''),
(25, 'flat', '24.0', 's316L:2.5_s316L:0.8_ptfe:0.5', '6.000', '40.00', '6.26', '', ''),
(26, 'flat', '12.0', 's316L:0.3_s316L:0.3_fep:0.2', '0.175', '57.00', '0.163', '', ''),
(27, 'flat', '12.0', 's316L:0.3_s316L:0.3_fep:0.1', '0.175', '57.00', '0.216', '', ''),
(28, 'flat', '12.0', 's316L:0.3_s316L:0.3_fep:0.1', '0.175', '57.00', '0.14', '', ''),
(29, 'flat', '12.0', 's316L:0.3_s316L:0.3_fep:0.1', '0.175', '57.00', '0.184', '', ''),
(30, 'flat', '16.0', 's316L:0.4_s316L:0.4_ptfe:0.3', '0.490', '106.00', '0.56', '', ''),
(31, 'flat', '16.0', 's316L:0.4_s316L:0.4_ptfe:0.3', '0.490', '106.00', '0.531', '', ''),
(32, 'flat', '16.0', 's316:0.3_aluminium:0.3_ptfe:1', '1.080', '22.00', '0.49', '', ''),
(33, 'flat', '16.0', 's316:0.3_aluminium:0.3_ptfe:1', '1.080', '22.00', '1.26', '', ''),
(34, 'flat', '16.0', 's316:0.3_aluminium:0.3_ptfe:1', '1.080', '22.00', '1.043', '', ''),
(35, 'flat', '16.0', 's316:0.3_aluminium:0.3_ptfe:1', '1.080', '22.00', '0.81', '', ''),
(36, 'flat', '16.0', 's316:0.3_aluminium:0.3_ptfe:1', '1.080', '22.00', '0.925', '', ''),
(37, 'flat', '16.0', 's316:0.3_aluminium:0.3_ptfe:1', '1.080', '22.00', '0.984', '', ''),
(38, 'flat', '8.0', 'cs:1_cs:0.8_pvc:0.5', '6.000', '40.00', '4.59', '', ''),
(39, 'flat', '8.0', 'cs:1_cs:0.8_pvc:0.5', '6.000', '40.00', '6.58', '', ''),
(40, 'flat', '8.0', 'cs:1_cs:0.8_pvc:0.5', '6.000', '40.00', '6.41', '', ''),
(41, 'flat', '8.0', 'cs:1_cs:0.8_pvc:0.5', '6.000', '40.00', '5.73', '', ''),
(42, 'flat', '16.0', 'cs:1.5_cs:0.8_pvc:0.5', '6.000', '40.00', '4', '', ''),
(43, 'flat', '16.0', 'cs:1.5_cs:0.8_pvc:0.5', '6.000', '40.00', '6.19', '', ''),
(44, 'flat', '16.0', 'cs:1.5_cs:0.8_pvc:0.5', '6.000', '40.00', '5.93', '', ''),
(45, 'flat', '16.0', 'cs:1.5_cs:0.8_pvc:0.5', '6.000', '40.00', '5.63', '', ''),
(46, 'flat', '24.0', 'cs:3_cs:0.8_pvc:0.5', '6.000', '40.00', '4.85', '', ''),
(47, 'flat', '24.0', 'cs:3_cs:0.8_pvc:0.5', '6.000', '40.00', '6.13', '', ''),
(48, 'flat', '24.0', 'cs:3_cs:0.8_pvc:0.5', '6.000', '40.00', '6.3', '', ''),
(49, 'flat', '24.0', 'cs:3_cs:0.8_pvc:0.5', '6.000', '40.00', '6.09', '', ''),
(50, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.3', '2.500', '22.00', '2.45', '', ''),
(51, 'flat', '4.0', 's316:0.3_s316:0.5_ptfe:0.25', '0.480', '188.00', '1.193', '', ''),
(52, 'flat', '4.0', 's316:0.3_s316:0.5_ptfe:0.25', '0.480', '188.00', '0.68', '', ''),
(53, 'flat', '4.0', 's316:0.3_s316:0.5_ptfe:0.25', '0.480', '188.00', '0.459', '', ''),
(54, 'flat', '4.0', 's316:0.3_s316:0.5_ptfe:0.25', '0.480', '188.00', '0.62', '', ''),
(55, 'flat', '4.0', 's316:0.3_s316:0.5_ptfe:0.3', '0.480', '188.00', '0.7', '', ''),
(56, 'flat', '4.0', 's316:0.3_s316:0.5_ptfe:0.2', '0.480', '188.00', '0.6', '', ''),
(57, 'flat', '4.0', 's316:1_s316:0.5_ptfe:0.5', '0.480', '188.00', '10.76', '', ''),
(58, 'flat', '4.0', 's316:0.3_s316:0.5_ptfe:0.25', '0.480', '188.00', '1.43', '', ''),
(59, 'flat', '4.0', 's316:0.3_s316:0.5_ptfe:0.25', '0.480', '188.00', '0.92', '', ''),
(60, 'flat', '4.0', 's316:0.2_s316:0.5_ptfe:0.2', '0.480', '188.00', '1.45', '', ''),
(61, 'flat', '4.0', 's316:0.1_s316:0.5_ptfe:0.1', '0.480', '188.00', '0.8', '', ''),
(62, 'flat', '4.0', 's316:0.1_s316:0.1_ptfe:0.2', '0.480', '188.00', '0.7', '', ''),
(63, 'flat', '24.0', 's316:2_s316:0.5_fep:0.5', '5.000', '40.00', '7.44', '', ''),
(64, 'flat', '14.0', 's316:0.8_s316:0.4_ptfe:0.3', '1.100', '70.00', '2.27', '', ''),
(65, 'flat', '14.0', 's316:0.8_s316:0.4_ptfe:0.3', '1.100', '70.00', '0.89', '', ''),
(66, 'flat', '14.0', 's316:0.8_s316:0.4_ptfe:0.3', '1.100', '70.00', '1.25', '', ''),
(67, 'flat', '14.0', 's316:0.8_s316:0.4_ptfe:0.3', '1.100', '70.00', '1.14', '', ''),
(68, 'flat', '24.0', 's316:1.5_s316:0.2_ptfe:0.5', '3.250', '35.00', '3.45', '', ''),
(69, 'flat', '24.0', 's316:1.5_s316:0.2_ptfe:0.5', '3.250', '35.00', '3.45', '', ''),
(70, 'flat', '24.0', 's316:1.5_s316:0.5_ptfe:0.5', '3.250', '35.00', '3.45', '', ''),
(71, 'flat', '24.0', 's316:1.5_s316:0.5_ptfe:0.5', '3.250', '35.00', '3.15', '', ''),
(72, 'flat', '24.0', 's316:2.5_s316:0.6_ptfe:0.5', '6.000', '40.00', '4.45', '', ''),
(73, 'flat', '4.0', 's316L:0.3_s316L:0.3_ptfe:0.25', '2.000', '55.00', '6.15', '', ''),
(74, 'flat', '4.0', 's316L:0.3_s316L:0.3_ptfe:0.25', '2.000', '55.00', '1.89', '', ''),
(75, 'flat', '24.0', 's316L:2_s316L:0.6_ptfe:0.5', '4.000', '50.00', '4.15', '', ''),
(76, 'flat', '24.0', 's316L:2_s316L:0.6_ptfe:0.5', '5.000', '50.00', '6.3', '', ''),
(77, 'flat', '24.0', 's316L:2_s316L:0.6_ptfe:0.5', '5.000', '50.00', '5.23', '', ''),
(78, 'flat', '6.0', 's316:0.2_s316:0.2_ptfe:0.1', '0.400', '100.00', '0.137', '', ''),
(79, 'flat', '6.0', 's316:0.2_s316:0.2_ptfe:0.1', '0.400', '100.00', '0.3', '', ''),
(80, 'flat', '6.0', 's316:0.2_s316:0.2_ptfe:0.1', '0.400', '100.00', '0.575', '', ''),
(81, 'flat', '6.0', 's316:0.2_s316:0.2_ptfe:0.1', '0.400', '100.00', '0.5', '', ''),
(82, 'flat', '6.0', 's316:0.2_s316:0.2_ptfe:0.1', '0.400', '100.00', '0.34', '', ''),
(83, 'flat', '6.0', 's316:0.2_s316:0.2_ptfe:0.1', '0.400', '100.00', '0.38', '', ''),
(84, 'flat', '6.0', 's316:0.2_s316:0.2_ptfe:0.1', '0.400', '100.00', '0.52', '', ''),
(85, 'flat', '6.0', 's316:0.2_s316:0.2_ptfe:0.1', '0.400', '100.00', '0.55', '', ''),
(86, 'flat', '6.0', 's316:0.2_s316:0.2_ptfe:0.1', '0.400', '100.00', '0.55', '', ''),
(87, 'flat', '16.0', 's316:1_s316:1_ptfe:0.5', '2.000', '160.00', '1.83', '', ''),
(88, 'flat', '16.0', 's316:1_s316:1_ptfe:0.5', '2.000', '160.00', '1.91', '', ''),
(89, 'flat', '10.0', 's316:0.6_s316:0.6_ptfe:0.5', '2.000', '160.00', '2.08', '', ''),
(90, 'flat', '16.0', 's316:1.5_s316:0.5_ptfe:0.5', '6.000', '40.00', '5.97', '', ''),
(91, 'flat', '16.0', 's316:1.5_s316:0.5_ptfe:0.5', '6.000', '40.00', '5.16', '', ''),
(92, 'flat', '16.0', 's316:1.5_s316:0.5_ptfe:0.5', '6.000', '40.00', '8.93', '', ''),
(93, 'flat', '24.0', 's316:3_s316:1_ptfe:0.5', '6.000', '40.00', '6.05', '', ''),
(94, 'flat', '24.0', 's316:3_s316:1_ptfe:0.5', '6.000', '40.00', '6.04', '', ''),
(95, 'flat', '24.0', 's316:3_s316:1_ptfe:0.5', '6.000', '40.00', '5.24', '', ''),
(96, 'flat', '8.0', 's316:0.5_s316:0.5_ptfe:0.3', '2.000', '22.00', '2.15', '', ''),
(97, 'flat', '8.0', 's316:0.5_s316:0.5_ptfe:0.3', '2.000', '22.00', '2.45', '', ''),
(98, 'flat', '8.0', 's316:0.5_s316:0.5_ptfe:0.3', '2.000', '22.00', '2.19', '', ''),
(99, 'flat', '3.0', 's316:0.6_inconel:0.42_ptfe:0.25', '7.500', '48.00', '7.21', '', ''),
(100, 'flat', '3.0', 's316:0.6_inconel:0.42_ptfe:0.25', '7.500', '48.00', '6.5', '', ''),
(101, 'flat', '3.0', 's316:0.6_inconel:0.42_ptfe:0.25', '7.500', '48.00', '12', '', ''),
(102, 'flat', '6.0', 's316:1_inconel:0.8_ptfe:0.3', '7.500', '70.00', '6.52', '', ''),
(103, 'flat', '6.0', 's316:1_inconel:0.8_ptfe:0.3', '7.500', '70.00', '5.61', '', ''),
(104, 'flat', '1.0', 's316:0.1_s316:0.1_ptfe:0.1', '5.000', '22.00', '8.1', '', ''),
(105, 'flat', '1.0', 's316:0.1_s316:0.1_ptfe:0.1', '5.000', '22.00', '4.66', '', ''),
(106, 'flat', '1.0', 's316:0.1_s316:0.1_ptfe:0.1', '5.000', '22.00', '5.47', '', ''),
(107, 'flat', '1.0', 's316:0.1_s316:0.1_ptfe:0.1', '5.000', '22.00', '5.08', '', ''),
(108, 'flat', '1.0', 's316:0.1_s316:0.1_ptfe:0.1', '5.000', '22.00', '4.97', '', ''),
(109, 'flat', '36.0', 's316:1_s316:1_tef:0.5_tef:0.5_s316:3', '1.000', '75.00', '0.8', '', ''),
(110, 'flat', '36.0', 's316:1_s316:1_tef:0.5_tef:0.5_s316:3', '0.715', '35.00', '6.3', '', ''),
(111, 'flat', '36.0', 's316:1_s316:1_tef:0.5_tef:0.5_s316:3', '0.715', '35.00', '6.65', '', ''),
(112, 'flat', '36.0', 's316:1_s316:1_tef:0.5_tef:0.5_s316:3', '0.715', '35.00', '7.01', '', ''),
(113, 'flat', '36.0', 's316:1_s316:1_tef:0.5_tef:0.5_s316:3', '0.715', '35.00', '8.2', '', ''),
(114, 'flat', '16.0', 's316:1_s316:0.5_tef:0.5_tef:0.5_s316:0.5', '3.000', '35.00', '4.1', '', ''),
(115, 'flat', '16.0', 's316:1_s316:0.5_tef:0.5_tef:0.5_s316:0.5', '3.000', '35.00', '2.72', '', ''),
(116, 'flat', '16.0', 's316:1_s316:0.5_tef:0.5_tef:0.5_s316:0.5', '3.000', '35.00', '3.33', '', ''),
(117, 'flat', '16.0', 's316:1_s316:0.5_tef:0.5_tef:0.5_s316:0.5', '3.000', '35.00', '4.4', '', ''),
(118, 'flat', '16.0', 's316:1_s316:0.5_tef:0.5_tef:0.5_s316:0.5', '3.000', '35.00', '2.57', '', ''),
(119, 'flat', '16.0', 's316:1_s316:0.5_tef:0.5_tef:0.5_s316:0.5', '3.000', '35.00', '3.21', '', ''),
(120, 'flat', '16.0', 's316:1_s316:0.5_tef:0.5_tef:0.5_s316:0.5', '3.000', '35.00', '3.18', '', ''),
(121, 'flat', '24.0', 's316:0.5_s316:1.5_tef:0.5', '3.300', '35.00', '3.16', '', ''),
(122, 'flat', '24.0', 's316:0.5_s316:1.5_tef:0.5', '3.300', '35.00', '2.98', '', ''),
(123, 'flat', '24.0', 's316:0.5_s316:1.5_tef:0.5', '3.300', '35.00', '3.37', '', ''),
(124, 'flat', '8.0', 's316:0.5_s316:0.5_tef:0.5', '3.210', '35.00', '2.59', '', ''),
(125, 'flat', '8.0', 's316:0.5_s316:0.5_tef:0.5', '3.200', '35.00', '3.7', '', ''),
(126, 'flat', '8.0', 's316:0.5_s316:0.5_tef:0.5', '3.300', '35.00', '3.9', '', ''),
(127, 'flat', '8.0', 's316:0.5_s316:0.5_tef:0.5', '3.200', '35.00', '2.81', '', ''),
(128, 'flat', '8.0', 's316:0.5_s316:0.5_tef:0.5', '3.200', '35.00', '3.4', '', ''),
(129, 'flat', '16.0', 's316:0.5_s316:1_tef:0.5', '3.500', '35.00', '3.28', '', ''),
(130, 'flat', '16.0', 's316:0.5_s316:1_tef:0.5', '3.000', '35.00', '3.3', '', ''),
(131, 'flat', '16.0', 's316:0.5_s316:1_tef:0.5', '3.500', '35.00', '3.52', '', ''),
(132, 'flat', '16.0', 's316:0.5_s316:1_tef:0.5', '3.000', '35.00', '3.31', '', ''),
(133, 'flat', '24.0', 's316:0.5_s316:1.5_tef:0.5', '3.500', '35.00', '3.1', '', ''),
(134, 'flat', '24.0', 's316:0.5_s316:1.5_tef:0.5', '3.000', '35.00', '3.25', '', ''),
(135, 'flat', '24.0', 's316:0.5_s316:1.5_tef:0.5', '3.500', '35.00', '2.1', '', ''),
(136, 'flat', '1.0', 's316:0.1_s316:0.1_s316:0.5_tef:0.1', '3.500', '25.00', '3.7', '', ''),
(137, 'flat', '1.0', 's316:0.1_s316:0.1_s316:0.5_tef:0.1', '3.500', '25.00', '3.8', '', ''),
(138, 'flat', '1.0', 's316:0.1_s316:0.1_s316:0.5_tef:0.1', '3.500', '25.00', '3.1', '', ''),
(139, 'flat', '1.0', 's316:0.1_s316:0.1_s316:0.5_tef:0.1', '3.500', '25.00', '3.05', '', ''),
(140, 'flat', '1.0', 's316:0.1_s316:0.1_s316:0.5_tef:0.1', '3.500', '25.00', '2.85', '', ''),
(141, 'flat', '1.0', 's316:0.1_s316:0.1_s316:0.5_tef:0.1', '3.500', '25.00', '4.2', '', ''),
(142, 'flat', '1.0', 's316:0.1_s316:0.1_s316:0.5_tef:0.1', '3.500', '25.00', '3.65', '', ''),
(143, 'flat', '1.0', 's316:0.1_s316:0.1_s316:0.5_tef:0.1', '3.500', '25.00', '3.25', '', ''),
(144, 'flat', '8.0', 's316L:0.1_s316L:0.1_s316:0.5_tef:0.1', '0.200', '125.00', '9.9', '', ''),
(145, 'flat', '8.0', 's316L:0.1_s316L:0.1_s316:0.5_tef:0.1', '0.200', '125.00', '12.9', '', ''),
(146, 'flat', '8.0', 's316L:0.1_s316L:0.1_s316:0.5_tef:0.1', '0.200', '125.00', '12.6', '', ''),
(147, 'flat', '8.0', 's316L:0.1_s316L:0.1_s316:0.5_tef:0.1', '0.200', '125.00', '16', '', ''),
(148, 'flat', '8.0', 's316L:0.1_s316L:0.1_s316:0.5_tef:0.1', '0.200', '125.00', '15.55', '', ''),
(149, 'flat', '8.0', 's316L:0.1_s316L:0.1_s316:0.5_tef:0.1', '0.200', '125.00', '11.43', '', ''),
(150, 'flat', '8.0', 's316L:0.1_s316L:0.1_s316:0.5_tef:0.1', '0.200', '125.00', '', '', ''),
(151, 'flat', '24.0', 's316:2_s316:0.5_tef:0.5', '3.000', '22.00', '3.4', '', ''),
(152, 'flat', '24.0', 's316:2_s316:0.5_tef:0.5', '3.000', '22.00', '3.3', '', ''),
(153, 'flat', '24.0', 's316:2_s316:0.5_tef:0.5', '3.000', '22.00', '1.3', '', ''),
(154, 'flat', '24.0', 's316:2_s316:0.5_tef:1.5', '4.000', '22.00', '4.3', '', ''),
(155, 'flat', '24.0', 's316:2_s316:0.5_tef:1.5', '4.000', '22.00', '4.4', '', ''),
(156, 'flat', '24.0', 's316:2_s316:0.5_tef:1.5', '4.000', '22.00', '3.97', '', ''),
(157, 'flat', '24.0', 's316:2_s316:0.5_tef:1.5', '4.000', '22.00', '1.4', '', ''),
(158, 'flat', '24.0', 's316:2_s316:0.5_tef:1.5', '4.000', '22.00', '2.14', '', ''),
(159, 'flat', '24.0', 's316:2_s316:0.5_tef:1.5', '4.000', '22.00', '1.31', '', ''),
(160, 'flat', '24.0', 's316:2_s316:0.5_tef:1.5', '5.000', '22.00', '4.75', '', ''),
(161, 'flat', '24.0', 's316:2_s316:0.5_tef:1.5', '5.000', '22.00', '1.43', '', ''),
(162, 'flat', '24.0', 's316:3_s316:0.5_tef:0.5', '6.000', '22.00', '2.54', '', ''),
(163, 'flat', '24.0', 's316:3_s316:0.5_tef:0.5', '6.000', '22.00', '2.08', '', ''),
(164, 'flat', '24.0', 's316:3_s316:0.5_tef:0.5', '6.000', '22.00', '2.23', '', ''),
(165, 'flat', '24.0', 's316:3_s316:0.5_tef:0.5', '6.000', '22.00', '2.3', '', ''),
(166, 'flat', '24.0', 's316:3_s316:0.5_tef:0.5', '6.000', '22.00', '2.28', '', ''),
(167, 'flat', '24.0', 's316:3_s316:0.5_tef:0.5', '6.000', '22.00', '5.5', '', ''),
(168, 'flat', '24.0', 's316:3_s316:0.5_tef:0.5', '6.000', '22.00', '6.17', '', ''),
(169, 'flat', '24.0', 's316:3_s316:0.5_tef:0.5', '6.000', '22.00', '2.27', '', ''),
(170, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.81', '', ''),
(171, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.98', '', ''),
(172, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '1.1', '', ''),
(173, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '1.2', '', ''),
(174, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.6', '', ''),
(175, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.68', '', ''),
(176, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '1.42', '', ''),
(177, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.54', '', ''),
(178, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.46', '', ''),
(179, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.39', '', ''),
(180, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.44', '', ''),
(181, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.6', '', ''),
(182, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.65', '', ''),
(183, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.62', '', ''),
(184, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.35', '', ''),
(185, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.47', '', ''),
(186, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.39', '', ''),
(187, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.54', '', ''),
(188, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.54', '', ''),
(189, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.52', '', ''),
(190, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.55', '', ''),
(191, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.15', '', ''),
(192, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.47', '', ''),
(193, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.48', '', ''),
(194, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.51', '', ''),
(195, 'flat', '2.0', 's316:0.1_s316:0.1_plastic:0.05', '0.500', '25.00', '0.67', '', ''),
(196, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '9.62', '', ''),
(197, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '9.65', '', ''),
(198, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '7.92', '', ''),
(199, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '7.83', '', ''),
(200, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '5.36', '', ''),
(201, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '5.41', '', ''),
(202, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '5.48', '', ''),
(203, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '5.56', '', ''),
(204, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '5.75', '', ''),
(205, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '6.05', '', ''),
(206, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '4.83', '', ''),
(207, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '4.63', '', ''),
(208, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '5.24', '', ''),
(209, 'flat', '6.0', 's316:0.5_s316:0.5_tef:0.2', '7.500', '77.00', '5.26', '', ''),
(210, 'forward', '3.0', 'S316:0.4_nickel:0.25_tef:0.3', '8.030', '20.00', '9.8', '', ''),
(211, 'forward', '3.0', 'S316:0.05_nickel:0.25_tef:0.4', '8.030', '20.00', '8.45', '', ''),
(212, 'forward', '3.0', 'S316:0.05_nickel:0.25_tef:0.2', '8.030', '20.00', '7.65', '', ''),
(213, 'forward', '3.0', 'S316:0.05_nickel:0.25_tef:0.3', '8.030', '20.00', '7.3', '', ''),
(214, 'forward', '4.0', 'inconel:1_s316L:0.05_tef:0.3', '27.700', '325.00', '31', '', ''),
(215, 'forward', '4.0', 'inconel:1_s316L:0.05_tef:0.05', '29.100', '20.00', '31.76', '', ''),
(216, 'forward', '4.0', 'inconel:1_s316L:0.05_tef:0.2', '27.700', '325.00', '30.41', '', ''),
(217, 'forward', '4.0', 'inconel:1_s316L:0.05_tef:0.2', '29.100', '20.00', '29.98', '', ''),
(218, 'forward', '3.0', 's316L:0.2_s316L:0.1_tef:0.3', '4.600', '60.00', '4.5', '', ''),
(219, 'forward', '3.0', 's316L:0.2_s316L:0.1_tef:0.4', '4.600', '60.00', '2.81', '', ''),
(220, 'forward', '3.0', 's316L:0.2_s316L:0.1_tef:0.2', '4.600', '60.00', '4.53', '', ''),
(221, 'forward', '3.0', 's316L:0.3_s316L:0.1_tef:0.3', '4.600', '60.00', '29.98', '', ''),
(222, 'forward', '3.0', 's316L:0.3_s316L:0.1_tef:0.3', '4.600', '60.00', '4.65', '', ''),
(223, 'forward', '1.0', 'S316L:0.05_S316L:0.1_tef:0.05', '5.000', '30.00', '6.02', '', ''),
(224, 'forward', '4.0', 'inconel:0.42_s316L:0.1_tef:0.3', '115.000', '100.00', '116.7', '', ''),
(225, 'forward', '4.0', 'inconel:0.42_s316L:0.1_tef:0.05', '115.000', '100.00', '119.1', '', ''),
(226, 'forward', '4.0', 'inconel:0.42_s316L:0.1_tef:0.3', '75.000', '100.00', '78.1', '', ''),
(227, 'forward', '4.0', 'inconel:0.42_s316L:0.1_tef:0.05', '75.000', '100.00', '77.8', '', ''),
(228, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '5.000', '165.00', '5.63', '', ''),
(229, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '5.000', '165.00', '5.37', '', ''),
(230, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '2.500', '165.00', '2.69', '', ''),
(231, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '2.500', '165.00', '2.64', '', ''),
(232, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '2.500', '165.00', '2.27', '', ''),
(233, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '2.500', '165.00', '2.22', '', ''),
(234, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '7.000', '38.00', '7.39', '', ''),
(235, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '7.000', '38.00', '7.76', '', ''),
(236, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '7.000', '38.00', '6.53', '', ''),
(237, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '5.000', '20.00', '4.32', '', ''),
(238, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.05', '5.000', '20.00', '4.21', '', ''),
(239, 'forward', '3.0', 's316L:0.1_s316L:0.1_tef:0.1', '1.000', '148.00', '1.01', '', ''),
(240, 'forward', '3.0', 's316L:0.1_s316L:0.1_tef:0.1', '1.000', '148.00', '1.1', '', ''),
(241, 'forward', '3.0', 's316L:0.1_s316L:0.1_tef:0.1', '1.000', '148.00', '0.8', '', ''),
(242, 'forward', '3.0', 's316L:0.1_s316L:0.1_tef:0.1', '1.000', '148.00', '0.985', '', ''),
(243, 'forward', '1.0', 's316L:0.05_s316L:0.05_s316L:0.05_tef:0.1', '5.000', '22.00', '5.31', '', ''),
(244, 'forward', '1.0', 's316L:0.05_s316L:0.05_s316L:0.05_tef:0.1', '5.000', '22.00', '5.33', '', ''),
(245, 'forward', '1.0', 's316L:0.05_s316L:0.2_s316L:0.05_tef:0.1', '5.000', '22.00', '5.8', '', ''),
(246, 'forward', '1.0', 's316L:0.05_s316L:0.05_s316L:0.05_tef:0.1', '5.000', '22.00', '5.4', '', ''),
(247, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.1', '10.000', '181.00', '10.63', '', ''),
(248, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.1', '10.000', '181.00', '9.42', '', ''),
(249, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.1', '10.000', '181.00', '8.86', '', ''),
(250, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.1', '10.000', '181.00', '9.3', '', ''),
(251, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.1', '10.000', '181.00', '11.7', '', ''),
(252, 'forward', '1.0', 's316L:0.1_s316L:0.1_tef:0.1', '10.000', '181.00', '6.13', '', ''),
(253, 'forward', '1.5', 's316L:0.1_s316L:0.1_tef:0.2', '10.000', '180.00', '8.8', '', ''),
(254, 'forward', '1.5', 's316L:0.1_s316L:0.1_s316L:0.1_tef:0.1', '10.000', '180.00', '9.06', '', ''),
(255, 'forward', '1.5', 's316L:0.1_s316L:0.1_s316L:0.1_tef:0.1', '10.000', '180.00', '10.08', '', ''),
(256, 'forward', '1.5', 's316L:0.2_s316L:0.1_s316L:0.1_tef:0.1', '10.000', '180.00', '18.86', '', ''),
(257, 'forward', '1.5', 's316L:0.1_s316L:0.1_s316L:0.1_tef:0.1', '10.000', '180.00', '9.15', '', ''),
(258, 'forward', '3.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '130.00', '2.96', '', ''),
(259, 'forward', '3.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '130.00', '2.86', '', ''),
(260, 'forward', '3.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '130.00', '3.57', '', ''),
(261, 'forward', '3.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '130.00', '3.9', '', ''),
(262, 'forward', '3.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '130.00', '3.15', '', ''),
(263, 'forward', '4.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '131.00', '2.6', '', ''),
(264, 'forward', '4.0', 's316L:0.3_s316L:0.1_tef:0.2', '3.300', '131.00', '3.08', '', ''),
(265, 'forward', '4.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '131.00', '3.28', '', ''),
(266, 'forward', '4.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '131.00', '3.56', '', ''),
(267, 'forward', '4.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '131.00', '3.65', '', ''),
(268, 'forward', '4.0', 's316L:0.3_s316L:0.1_tef:0.3', '3.300', '131.00', '3.28', '', ''),
(269, 'forward', '16.0', 's316L:0.4_s316L:0.1_fep:0.4', '0.500', '22.00', '0.51', '', ''),
(270, 'forward', '16.0', 's316L:0.4_s316L:0.1_fep:0.4', '0.500', '22.00', '0.575', '', ''),
(271, 'forward', '4.0', 'inconel:1_ inconel:0.42_ptfe:0.5', '17.200', '65.60', '15', '', ''),
(272, 'forward', '4.0', 'inconel:1_ inconel:0.42_ptfe:0.5', '17.200', '65.60', '18.13', '', ''),
(273, 'forward', '6.0', 's316L:0.6_s316L:0.2_s316L:0.1_ptfe:0.5', '2.350', '50.00', '2.49', '', ''),
(274, 'forward', '6.0', 's316L:0.6_s316L:0.2_s316L:0.1_ptfe:0.5', '2.350', '50.00', '2.02', '', ''),
(275, 'forward', '6.0', 's316L:0.6_s316L:0.2_s316L:0.1_ptfe:0.5', '2.350', '50.00', '1.97', '', ''),
(276, 'forward', '6.0', 's316L:0.6_s316L:0.2_s316L:0.1_ptfe:0.5', '2.350', '50.00', '2.66', '', ''),
(277, 'forward', '4.0', 's316L:1_s316L:0.6_ptfe:0.5', '8.400', '80.00', '7.91', '', ''),
(278, 'forward', '4.0', 's316L:1_s316L:0.6_ptfe:0.5', '8.400', '80.00', '8.38', '', ''),
(279, 'forward', '4.0', 's316L:1_s316L:0.6_ptfe:0.5', '8.400', '80.00', '8.05', '', ''),
(280, 'forward', '2.0', 's316:0.1_inconel:0.45_fep:0.1', '3.250', '75.00', '3.75', '', ''),
(281, 'forward', '2.0', 's316:0.1_inconel:0.45_fep:0.1', '3.250', '75.00', '3.25', '', ''),
(282, 'forward', '12.0', 's316:1.5_inconel:0.42_ptfe:0.5', '16.170', '81.67', '9.59', '', ''),
(283, 'forward', '12.0', 's316:1.5_inconel:0.42_ptfe:0.5', '16.170', '81.67', '13.6', '', ''),
(284, 'forward', '12.0', 's316:1.5_inconel:0.42_ptfe:0.5', '16.170', '81.67', '15.3', '', ''),
(285, 'forward', '1.0', 's316:0.1_s316:1_fep:.1', '5.000', '30.00', '5.15', '', ''),
(286, 'forward', '1.0', 's316:0.1_s316:1_fep:0.1', '5.000', '30.00', '5.43', '', ''),
(287, 'forward', '1.0', 's316:0.1_s316:1_fep:0.1', '5.000', '30.00', '5.59', '', ''),
(288, 'forward', '1.0', 's316:0.05_s316:0.05_fep:0.1', '5.000', '30.00', '4.87', '', ''),
(289, 'forward', '1.0', 's316:0.05_s316:0.05_fep:0.1', '5.000', '30.00', '6.47', '', ''),
(290, 'forward', '1.0', 's316:0.05_s316:0.05_fep:0.1', '5.000', '30.00', '5.35', '', ''),
(291, 'forward', '1.5', 's316:0.1_s316L:0.1_tef:0.1', '2.000', '135.00', '1.35', '', ''),
(292, 'forward', '1.5', 's316:0.1_s316L:0.1_tef:0.1', '2.000', '135.00', '1.39', '', ''),
(293, 'forward', '1.5', 's316:0.1_s316L:0.1_tef:0.1', '2.000', '135.00', '2.09', '', ''),
(294, 'forward', '1.5', 's316:0.1_s316L:0.1_tef:0.1', '2.000', '135.00', '2.04', '', ''),
(295, 'forward', '1.5', 's316:0.1_s316L:0.1_tef:0.1', '2.000', '135.00', '1.99', '', ''),
(296, 'forward', '1.5', 's316:0.1_s316:0.1_tef:0.3', '2.000', '135.00', '2.25', '', ''),
(297, 'forward', '2.0', 's316:0.1_s316:0.1_tef:0.3', '3.000', '60.20', '3.2', '', ''),
(298, 'forward', '2.0', 's316:0.1_s316:0.1_tef:0.3', '3.000', '60.20', '2.94', '', ''),
(299, 'forward', '3.0', 's316L:0.5_s316L:0.1_tef:0.5', '3.000', '48.00', '2.57', '', ''),
(300, 'forward', '3.0', 's316L:0.3_s316L:0.1_tef:0.5', '3.000', '48.00', '3.47', '', ''),
(301, 'forward', '0.5', 's316:0.2_s316:0.05_s316L:0.1_ptfe:0.5', '248.000', '100.00', '249.4', '', ''),
(302, 'forward', '0.5', 's316:0.2_s316:0.05_s316L:0.1_ptfe:0.4', '248.000', '100.00', '245.7', '', ''),
(303, 'forward', '4.0', 's316:1_s316:0.4_ptfe:0.5', '10.000', '100.00', '16.8', '', ''),
(304, 'forward', '4.0', 's316:1_s316:0.4_ptfe:0.4', '10.000', '100.00', '7.86', '', ''),
(305, 'forward', '4.0', 's316:1_s316:0.4_ptfe:0.5', '10.000', '100.00', '9.87', '', ''),
(306, 'forward', '4.0', 's316:1_s316:0.4_ptfe:0.5', '10.000', '100.00', '10.45', '', ''),
(307, 'forward', '4.0', 's316:1_s316:0.4_ptfe:0.5', '10.000', '100.00', '10.25', '', ''),
(308, 'forward', '12.0', 's316:0.5_ aluminum :0.2_ aluminum:0.2_s316:', '3.500', '250.00', '1.73', '', ''),
(309, 'forward', '12.0', 's316:0.5_ aluminum :0.2_ aluminum:0.2_s316:', '3.500', '250.00', '3.42', '', ''),
(310, 'forward', '1.5', 's316:0.1_s316L:0.1_ptfe:0.1', '3.300', '149.00', '9.04', '', ''),
(311, 'forward', '1.5', 's316:0.1_s316L:0.1_ptfe:0.1', '3.300', '149.00', '2.49', '', ''),
(312, 'forward', '1.5', 's316:0.1_s316L:0.1_ptfe:0.1', '3.300', '149.00', '2.59', '', ''),
(313, 'forward', '1.5', 's316:0.1_s316L:0.1_ptfe:0.1', '3.300', '149.00', '3.35', '', ''),
(314, 'forward', '1.5', 's316:0.1_s316L:0.1_ptfe:0.1', '3.300', '149.00', '3.18', '', ''),
(315, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.5', '', ''),
(316, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.3', '', ''),
(317, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.65', '', ''),
(318, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.49', '', ''),
(319, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.71', '', ''),
(320, 'forward', '1.5', 's316:0.2_s316:0.1_ptfe:0.2', '3.300', '149.00', '3.21', '', ''),
(321, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '2.75', '', ''),
(322, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.99', '', ''),
(323, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '2.7', '', ''),
(324, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.01', '', ''),
(325, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.65', '', ''),
(326, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.43', '', ''),
(327, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '5.3', '', ''),
(328, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.5', '', ''),
(329, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.13', '', ''),
(330, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.85', '', ''),
(331, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.1', '', ''),
(332, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '2.65', '', ''),
(333, 'forward', '1.5', 's316:0.1_s316:0.1_ptfe:0.1', '3.300', '149.00', '3.7', '', ''),
(334, 'forward', '1.5', 's316:0.1_s316:0.2_ptfe:0.1', '3.300', '149.00', '3.1', '', ''),
(335, 'forward', '1.5', 's316:0.1_s316:0.2_ptfe:0.1', '3.300', '149.00', '3.03', '', ''),
(336, 'forward', '1.5', 's316:0.4_inconel:0.42_ptfe:0.3', '204.000', '20.00', '24.46', '', ''),
(337, 'forward', '1.5', 's316:0.4_inconel:0.42_ptfe:0.3', '204.000', '20.00', '17.79', '', ''),
(338, 'forward', '1.5', 's316:0.4_inconel:0.42_ptfe:0.3', '204.000', '20.00', '19.06', '', ''),
(339, 'forward', '1.5', 's316:0.4_inconel:0.42_ptfe:0.3', '204.000', '20.00', '19.86', '', ''),
(340, 'forward', '1.5', 's316:0.4_inconel:0.42_ptfe:0.3', '204.000', '20.00', '19.02', '', ''),
(341, 'forward', '1.5', 's316:0.4_inconel:0.42_ptfe:0.3', '204.000', '20.00', '21.78', '', ''),
(342, 'forward', '1.5', 's316:0.4_inconel:0.42_ptfe:0.3', '204.000', '20.00', '19.11', '', ''),
(343, 'forward', '1.5', 's316:0.4_inconel:0.42_ptfe:0.3', '204.000', '20.00', '19.57', '', ''),
(344, 'forward', '3.0', 's316:0.5_s316:0.5_fep:0.15', '3.250', '48.00', '3.12', '', ''),
(345, 'forward', '3.0', 's316:0.5_s316:0.5_fep:0.15', '3.250', '48.00', '2.97', '', ''),
(346, 'forward', '3.0', 's316:0.5_s316:0.5_fep:0.15', '3.250', '48.00', '3.09', '', ''),
(347, 'forward', '3.0', 's316:0.5_s316:0.5_fep:0.15', '3.250', '48.00', '3.17', '', ''),
(348, 'forward', '14.0', 's316:1.5_s316:1_ptfe:0.5', '8.810', '180.00', '7.83', '', ''),
(349, 'forward', '6.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.61', '', ''),
(350, 'forward', '6.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.57', '', ''),
(351, 'forward', '6.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.13', '', ''),
(352, 'forward', '6.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.54', '', ''),
(353, 'forward', '6.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.6', '', ''),
(354, 'forward', '3.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.8', '', ''),
(355, 'forward', '3.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.84', '', ''),
(356, 'forward', '3.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.72', '', ''),
(357, 'forward', '3.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.78', '', ''),
(358, 'forward', '3.0', 's316:0.5_s316:0.3_tef:0.5', '5.490', '82.00', '5.66', '', ''),
(359, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '3.000', '200.00', '3.42', '', ''),
(360, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '3.000', '200.00', '4', '', ''),
(361, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '3.000', '200.00', '2.94', '', ''),
(362, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '3.000', '200.00', '3.03', '', ''),
(363, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '3.000', '200.00', '2.8', '', ''),
(364, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '3.000', '200.00', '4.1', '', ''),
(365, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '3.000', '200.00', '3.3', '', ''),
(366, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '3.000', '200.00', '2.88', '', ''),
(367, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '3.000', '200.00', '2.97', '', ''),
(368, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '2.63', '', ''),
(369, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '3.13', '', ''),
(370, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '2.88', '', ''),
(371, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '2.71', '', ''),
(372, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '2.6', '', ''),
(373, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '8', '', ''),
(374, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '5.57', '', ''),
(375, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '2.58', '', ''),
(376, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '3.65', '', ''),
(377, 'forward', '10.0', 's316:1.5_s316:0.1_tef:0.5', '2.700', '200.00', '3.85', '', ''),
(378, 'forward', '8.0', 's316:0.5_s316:0.4_tef:0.3', '2.600', '140.00', '1.8', '', ''),
(379, 'forward', '8.0', 's316:0.5_s316:0.4_tef:0.3', '2.600', '140.00', '3.8', '', ''),
(380, 'forward', '8.0', 's316:0.5_s316:0.4_tef:0.3', '2.600', '140.00', '2.79', '', ''),
(381, 'forward', '8.0', 's316:0.5_s316:0.4_tef:0.3', '2.600', '140.00', '2.57', '', ''),
(382, 'forward', '8.0', 's316:0.5_s316:0.4_tef:0.3', '2.600', '140.00', '2.56', '', ''),
(383, 'forward', '8.0', 's316:0.5_s316:0.4_tef:0.3', '2.600', '140.00', '2.46', '', ''),
(384, 'forward', '8.0', 's316:0.5_s316:0.4_tef:0.3', '2.600', '140.00', '2.59', '', ''),
(385, 'forward', '8.0', 's316:0.5_s316:0.4_tef:0.3', '2.600', '140.00', '2.49', '', ''),
(386, 'forward', '3.0', 's316:0.3_s316:0.3_tef:0.1', '4.200', '50.00', '4.03', '', ''),
(387, 'forward', '3.0', 's316:0.3_s316:0.3_tef:0.1', '4.200', '50.00', '4.16', '', ''),
(388, 'forward', '3.0', 's316:0.3_s316:0.3_tef:0.1', '4.200', '50.00', '4.43', '', ''),
(389, 'forward', '3.0', 's316:0.3_s316:0.3_tef:0.1', '4.200', '50.00', '4.15', '', ''),
(390, 'forward', '3.0', 's316:0.3_s316:0.3_tef:0.1', '4.200', '50.00', '4.25', '', ''),
(391, 'forward', '14.0', 's316:1_s316:1.5_tef:0.4', '8.810', '180.00', '8.25', '', ''),
(392, 'forward', '14.0', 's316:1_s316:1.5_tef:0.4', '8.810', '180.00', '8.18', '', ''),
(393, 'forward', '10.0', 's316:0.5_s316:0.5_ptfe:0.4', '160.000', '2.00', '1.94', '', ''),
(394, 'forward', '10.0', 's316:0.5_s316:0.5_ptfe:0.4', '160.000', '2.00', '1.6', '', ''),
(395, 'forward', '10.0', 's316:0.5_s316:0.5_ptfe:0.4', '160.000', '2.00', '1.91', '', ''),
(396, 'forward', '16.0', 's316:0.5_s316:0.5_ptfe:0.4', '160.000', '2.00', '2.03', '', ''),
(397, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '4.2', '', ''),
(398, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '3.5', '', ''),
(399, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '6.2', '', ''),
(400, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '5.4', '', ''),
(401, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '10', '', ''),
(402, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '4.7', '', ''),
(403, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '6.9', '', ''),
(404, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '3.78', '', ''),
(405, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '4.91', '', ''),
(406, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '5.5', '', ''),
(407, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '3.58', '', ''),
(408, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '3.25', '', ''),
(409, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '3.33', '', ''),
(410, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '3.47', '', ''),
(411, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '3.04', '', ''),
(412, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '3.33', '', ''),
(413, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '4.2', '', ''),
(414, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '4', '', ''),
(415, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '3.58', '', ''),
(416, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '5.33', '', ''),
(417, 'forward', '3.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.500', '240.00', '6.83', '', ''),
(418, 'forward', '4.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.250', '180.00', '3.11', '', ''),
(419, 'forward', '4.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.250', '180.00', '3.27', '', ''),
(420, 'forward', '4.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.250', '180.00', '3.5', '', ''),
(421, 'forward', '4.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.250', '180.00', '4.09', '', ''),
(422, 'forward', '4.0', 's316:0.3_s316:0.3_ aluminum :0.1_tef:0.1', '3.250', '180.00', '5', '', ''),
(423, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '3.73', '', ''),
(424, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '5.1', '', ''),
(425, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '5.5', '', ''),
(426, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '5.2', '', ''),
(427, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '4.9', '', ''),
(428, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '4.84', '', ''),
(429, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '5.05', '', ''),
(430, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '4.85', '', ''),
(431, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '4.12', '', ''),
(432, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '5.4', '', ''),
(433, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '5.2', '', ''),
(434, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '5.1', '', ''),
(435, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '4.72', '', ''),
(436, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '5.04', '', ''),
(437, 'forward', '4.0', 's316:0.5_s316:0.5_tef:0.1', '5.000', '22.00', '5.003', '', ''),
(438, 'forward', '12.0', 's316:0.5_s316:0.2_ aluminum :0.2_s316:0.5_t', '3.500', '250.00', '4.5', '', ''),
(439, 'forward', '12.0', 's316:0.5_s316:0.2_ aluminum :0.2_s316:0.5_t', '3.500', '250.00', '3.58', '', ''),
(440, 'forward', '12.0', 's316:0.5_s316:0.2_ aluminum :0.2_s316:0.5_t', '3.500', '250.00', '6.63', '', ''),
(441, 'forward', '12.0', 's316:0.5_s316:0.2_ aluminum :0.2_s316:0.5_t', '3.500', '250.00', '3.85', '', ''),
(442, 'forward', '12.0', 's316:0.5_s316:0.2_ aluminum :0.2_s316:0.5_t', '3.500', '250.00', '5.94', '', ''),
(443, 'forward', '12.0', 's316:0.5_s316:0.2_ aluminum :0.2_s316:0.5_t', '3.500', '250.00', '5.5', '', ''),
(444, 'forward', '12.0', 's316:0.5_s316:0.2_ aluminum :0.2_s316:0.5_t', '3.500', '250.00', '6.25', '', ''),
(445, 'forward', '12.0', 's316:0.5_s316:0.2_ aluminum :0.2_s316:0.5_t', '3.500', '250.00', '3.53', '', ''),
(446, 'forward', '12.0', 's316:0.5_s316:0.2_ aluminum :0.2_s316:0.5_t', '3.500', '250.00', '2.25', '', ''),
(447, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.98', '', ''),
(448, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.95', '', ''),
(449, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.05', '', ''),
(450, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.74', '', ''),
(451, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.64', '', ''),
(452, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.54', '', ''),
(453, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.72', '', ''),
(454, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.95', '', ''),
(455, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.9', '', ''),
(456, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.04', '', ''),
(457, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.95', '', ''),
(458, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.6', '', ''),
(459, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.7', '', ''),
(460, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '5', '', ''),
(461, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.15', '', ''),
(462, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.2', '', ''),
(463, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.12', '', ''),
(464, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.65', '', ''),
(465, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.22', '', ''),
(466, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.45', '', ''),
(467, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.25', '', ''),
(468, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '5.3', '', ''),
(469, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '5.6', '', ''),
(470, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.55', '', ''),
(471, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.38', '', ''),
(472, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.63', '', ''),
(473, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.43', '', ''),
(474, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.65', '', ''),
(475, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.24', '', ''),
(476, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.35', '', ''),
(477, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '2.8', '', ''),
(478, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '3.43', '', ''),
(479, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.65', '', ''),
(480, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.17', '', ''),
(481, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.23', '', ''),
(482, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.11', '', ''),
(483, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.38', '', ''),
(484, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.33', '', ''),
(485, 'forward', '3.0', 's316:0.5_s316:0.5_tef:0.1', '4.200', '50.00', '4.01', '', ''),
(486, 'reverse', '0.5', 'monel :0.4_s316:0.05_ptfe:0.1', '20.200', '20.00', '19.72', '4', 'A11/2inRP2'),
(487, 'reverse', '0.5', 'inconel :0.4_s316:0.05_ptfe:0.1', '20.200', '20.00', '18.86', '4', 'A11/2inRP2'),
(488, 'reverse', '1.0', 'monel :0.6_ s316:0.05_ptfe:0.1', '15.000', '22.00', '12.5', '6.65', 'A11/2inRP10-MAmodified'),
(489, 'reverse', '1.0', 'monel :0.6_ s316:0.05_ptfe:0.1', '15.000', '22.00', '15.1', '6.65', 'MA11/2inRP1'),
(490, 'reverse', '1.0', 'monel :0.6_ s316:0.05_ptfe:0.1', '15.000', '22.00', '15.7', '6.65', 'MA11/2inRP1'),
(491, 'reverse', '1.0', 's316:0.6_s316:0.05_ptfe:0.1', '15.000', '165.00', '17.93', '6.07', 'A11/2inRP2'),
(492, 'reverse', '1.0', 's316:0.4_s316:0.05_ptfe:0.1', '15.000', '165.00', '8.85', '6.07', 'A11/2inRP3'),
(493, 'reverse', '1.0', 's316:0.4_s316:0.05_ptfe:0.1', '15.000', '165.00', '10.16', '6.07', 'A11/2inRP3'),
(494, 'reverse', '1.0', 's316:0.6_s316:0.05_ptfe:0.1', '15.000', '165.00', '22.97', '6.07', 'A11/2inRP4'),
(495, 'reverse', '1.0', 's316:0.6_s316:0.05_ptfe:0.1', '15.000', '165.00', '20.78', '6.07', 'A11/2inRP4'),
(496, 'reverse', '1.0', 's316:0.6_s316:0.05_ptfe:0.1', '15.000', '165.00', '15.18', '6.07', 'A11/2inRP5'),
(497, 'reverse', '1.0', 's316:0.6_s316:0.05_ptfe:0.1', '15.000', '165.00', '14.31', '6.07', 'A11/2inRP5'),
(498, 'reverse', '1.5', 's316:0.5_s316:0.05_ptfe:0.1', '15.000', '10.00', '12.21', '8.4', 'A11/2inRp7'),
(499, 'reverse', '1.5', 's316:0.5_s316:0.5_ptfe:0.1', '4.000', '153.00', '11.5', '19.82', ''),
(500, 'reverse', '1.5', 's316:0.5_s316:0.5_ptfe:0.1', '4.000', '153.00', '4.23', '5.88', ''),
(501, 'reverse', '1.5', 's316:0.5_s316:0.5_ptfe:0.1', '4.000', '153.00', '4.17', '5.88', ''),
(502, 'reverse', '1.5', 's316:0.5_s316:0.5_ptfe:0.1', '4.000', '153.00', '3.5', '5.88', ''),
(503, 'reverse', '2.0', 's316:0.4_s316:0.05_ptfe:0.1', '5.900', '25.00', '5.38', '9.7', 'A2inRP16'),
(504, 'reverse', '2.0', 's316:0.4_s316:0.05_ptfe:0.1', '5.900', '25.00', '5.34', '9.7', 'A2inRP16'),
(505, 'reverse', '2.0', 's316:0.4_s316:0.05_ptfe:0.1', '5.900', '25.00', '5.4', '9.7', 'A2inRP16'),
(506, 'reverse', '2.0', 's316:0.4_s316:0.05_ptfe:0.1', '5.900', '25.00', '5.74', '9.7', 'A2inRP16'),
(507, 'reverse', '2.0', 's316:0.4_s316:0.05_ptfe:0.1', '5.900', '25.00', '5.74', '9.7', 'A2inRP16'),
(508, 'reverse', '2.0', 's316:0.8_inconel:0.05_ptfe:0.1', '27.700', '115.00', '36.67', '10', 'MA2inRP14'),
(509, 'reverse', '2.0', 's316:0.8_inconel:0.05_ptfe:0.1', '27.700', '115.00', '26.47', '10', 'A2inRP1'),
(510, 'reverse', '2.0', 's316:0.8_inconel:0.05_ptfe:0.1', '27.700', '115.00', '25', '10', 'A2inRP1'),
(511, 'reverse', '2.0', 's316:0.8_inconel:0.05_ptfe:0.1', '27.700', '115.00', '27.1', '10', 'A2inRP1'),
(512, 'reverse', '2.0', 's316:0.5_s316:0.05_ptfe:0.1', '3.380', '58.40', '3.35', '9.83', 'MA2inRP5'),
(513, 'reverse', '2.0', 's316:0.5_s316:0.05_ptfe:0.1', '3.180', '58.40', '3.16', '9.83', 'MA2inRP5'),
(514, 'reverse', '2.0', 's316:0.5_s316:0.05_ptfe:0.1', '3.380', '58.40', '3.33', '9.83', 'MA2inRP5'),
(515, 'reverse', '2.0', 's316:0.5_s316:0.05_ptfe:0.1', '3.180', '58.40', '3.17', '9.83', 'MA2inRP5'),
(516, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '19.000', '55.00', '20.05', '9.8', 'A2inRP3'),
(517, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '19.000', '55.00', '16.29', '9.8', 'A2inRP11'),
(518, 'reverse', '2.0', 'inconel:0.8_s316:0.05_ptfe:0.1', '13.500', '80.00', '11.07', '9.97', 'A2inRP12'),
(519, 'reverse', '2.0', 'inconel:0.8_s316:0.05_ptfe:0.1', '13.500', '80.00', '14.27', '9.97', 'A2inRP13'),
(520, 'reverse', '2.0', 'inconel:0.8_s316:0.05_ptfe:0.1', '13.500', '80.00', '13.5', '9.97', 'A2inRP13.m.'),
(521, 'reverse', '2.0', 'inconel:0.8_s316:0.05_ptfe:0.1', '13.500', '80.00', '14.01', '9.97', 'A2inRP13.5.m'),
(522, 'reverse', '2.0', 'inconel:0.8_s316:0.05_ptfe:0.1', '13.500', '80.00', '14.81', '9.97', 'A2inRP13.5.s.m.'),
(523, 'reverse', '2.0', 'inconel:0.8_s316:0.05_ptfe:0.1', '13.500', '80.00', '14.45', '9.97', 'A2inRP13.T.M.'),
(524, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '19.000', '115.00', '17.6', '10.96', 'A2inRP10'),
(525, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '19.000', '115.00', '16.29', '10.96', 'A2inRP10.m.'),
(526, 'reverse', '2.0', 's316:0.4_s316:0.05_ptfe:0.1', '7.500', '65.00', '4.12', '13.77', 'A2inRP4'),
(527, 'reverse', '2.0', 's316:0.4_s316:0.05_ptfe:0.1', '7.500', '65.00', '7.53', '13.77', 'A2inRP5'),
(528, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '7.500', '65.00', '12.13', '13.77', 'A2inRP4'),
(529, 'reverse', '2.0', 's316:0.6_s316:0.05_ptfe:0.1', '7.500', '65.00', '6.54', '13.77', 'A2inRP6'),
(530, 'reverse', '2.0', 's316:0.5_s316:0.05_ptfe:0.1', '7.500', '65.00', '5.47', '13.77', 'A2inRP8'),
(531, 'reverse', '2.0', 's316:0.5_s316:0.05_ptfe:0.1', '7.500', '65.00', '4.9', '13.77', 'A2inRP7'),
(532, 'reverse', '2.0', 's316:0.5_s316:0.05_ptfe:0.1', '7.500', '65.00', '7.74', '13.77', 'A2inRP9'),
(533, 'reverse', '2.0', 's316:0.5_s316:0.05_ptfe:0.1', '7.500', '65.00', '6.27', '13.77', 'A2inRP8.M'),
(534, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '20.000', '115.00', '27.4', '9.5', 'A2inRP1'),
(535, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '20.000', '115.00', '17.77', '9.5', 'A2inRP2'),
(536, 'reverse', '2.0', 's316:0.4_s316:0.05_ptfe:0.1', '6.000', '22.00', '6.55', '10', '2in29'),
(537, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '9.500', '148.00', '5.64', '9.82', '__'),
(538, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '9.500', '148.00', '9.23', '9.05', '2inR23'),
(539, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '9.500', '148.00', '6.73', '9.05', '2inR24'),
(540, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '9.500', '148.00', '6.05', '9.05', '2inR24'),
(541, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '9.500', '148.00', '6.07', '9.05', '2inR24'),
(542, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '9.500', '148.00', '7.31', '9.05', '2inR25'),
(543, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '9.500', '148.00', '7.13', '9.05', '2inR26'),
(544, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '9.500', '148.00', '9.3', '9.05', '2inR27'),
(545, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '9.500', '148.00', '9.43', '9.05', '2inR28'),
(546, 'reverse', '2.0', 's316:0.8_s316:0.05_ptfe:0.1', '12.500', '85.00', '9.05', '9.05', '2inR28'),
(547, 'reverse', '2.0', 's316:0.8_s316:0.1_ptfe:0.1', '12.500', '85.00', '15.23', '10.38', '__'),
(548, 'reverse', '2.0', 's316:1_s316:0.05_ptfe:0.1', '12.500', '85.00', '10.6', '9.61', '2inchIR65'),
(549, 'reverse', '2.0', 's316:1_s316:0.05_ptfe:0.1', '12.500', '85.00', '10.6', '9.61', '2inch17'),
(550, 'reverse', '2.0', 's316:1_s316:0.05_ptfe:0.1', '12.500', '85.00', '10.7', '9.61', '2inch18'),
(551, 'reverse', '2.0', 's316:1_s316:0.05_ptfe:0.1', '12.500', '85.00', '11.9', '9.61', '2inch19'),
(552, 'reverse', '2.0', 's316:1_s316:0.05_ptfe:0.1', '12.500', '85.00', '11.5', '9.61', '2inch21'),
(553, 'reverse', '2.0', 's316:1_s316:0.05_ptfe:0.1', '12.500', '85.00', '12', '9.61', '2inch20'),
(554, 'reverse', '2.0', 's316:1_s316:0.05_ptfe:0.1', '12.500', '85.00', '12.45', '9.61', '2inch21'),
(555, 'reverse', '2.0', 's316:1_s316:0.05_ptfe:0.1', '12.500', '85.00', '11.86', '9.61', '2inch21');
INSERT INTO `tested` (`id`, `type`, `size`, `layer`, `bp`, `bt`, `rbp`, `fh`, `drw`) VALUES
(556, 'reverse', '3.0', 'hastelloy :1_ s316:0.05_ptfe:0.1', '12.000', '46.00', '11.3', '14.82', 'A3inRP16'),
(557, 'reverse', '3.0', 'hastelloy :1_ s316:0.05_ptfe:0.1', '12.000', '46.00', '7.48', '14.82', 'A3inRP17'),
(558, 'reverse', '3.0', 'hastelloy :1_ s316:0.05_ptfe:0.1', '12.000', '46.00', '10.33', '14.82', 'A3inRP17.m.'),
(559, 'reverse', '3.0', 'hastelloy :1_ s316:0.05_ptfe:0.1', '12.000', '46.00', '11.7', '14.82', 'A3inRP19'),
(560, 'reverse', '3.0', 'hastelloy :1_ s316:0.05_ptfe:0.1', '13.500', '250.00', '13.09', '14.82', 'A3inRP18'),
(561, 'reverse', '3.0', 'hastelloy :1_ s316:0.05_ptfe:0.1', '13.500', '250.00', '12.2', '14.82', 'A3inRP18.m.'),
(562, 'reverse', '3.0', 'hastelloy :1_ s316:0.05_ptfe:0.1', '13.500', '250.00', '13.34', '14.82', 'A3inRP18.sec.m.'),
(563, 'reverse', '3.0', 's316:1_s316:0.05_ptfe:0.1', '7.500', '64.00', '7.43', '17.59', 'A3inRP11'),
(564, 'reverse', '3.0', 's316:0.6_s316:0.05_ptfe:0.1', '7.500', '64.00', '5.15', '17.59', 'A3inRP10'),
(565, 'reverse', '3.0', 's316:0.8_s316:0.05_ptfe:0.1', '7.500', '64.00', '7.19', '17.59', 'A3inRP10'),
(566, 'reverse', '3.0', 's316:0.8_s316:0.05_ptfe:0.1', '7.500', '64.00', '6.07', '17.59', 'A3inRP14'),
(567, 'reverse', '3.0', 's316:0.8_s316:0.05_ptfe:0.1', '7.500', '64.00', '7.05', '17.59', 'A3inRP'),
(568, 'reverse', '3.0', 's316:0.4_s316:0.05_ptfe:0.1', '1.000', '180.00', '1.037', '14.3', 'A3inRP7'),
(569, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '12.58', '15', 'A3inRP5.M.'),
(570, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '16.08', '15', 'A3inRP6'),
(571, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '13', '15', 'A3inRP8'),
(572, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '10.16', '15', 'A3inRP9'),
(573, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '12.96', '15', 'A3inRP9'),
(574, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '14.1', '15', 'A3inRP9-M.'),
(575, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '12.12', '15', 'A3inRP9-sec.M.'),
(576, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '11.95', '15', 'A3inRP9-third.M.'),
(577, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '16.6', '15', 'A3inRP12'),
(578, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '12.5', '15', 'A3inRP13'),
(579, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '12.98', '15', 'A3inRP9-F.M.'),
(580, 'reverse', '3.0', 'monel :1_ s316:0.05_ptfe:0.1', '13.000', '22.00', '13.83', '15', 'A3inRP13'),
(581, 'reverse', '3.0', 's316:0.6_s316:0.05_ptfe:0.1', '3.000', '40.00', '3.15', '15.83', 'A3inRP4'),
(582, 'reverse', '3.0', 's316:0.6_s316:0.05_ptfe:0.1', '3.000', '40.00', '3.15', '15.83', 'A3inRP4'),
(583, 'reverse', '3.0', 's316:0.6_s316:0.05_ptfe:0.1', '3.000', '40.00', '3.19', '15.83', 'A3inRP4'),
(584, 'reverse', '3.0', 's316:1_inconel:0.1_ptfe:0.1', '6.000', '40.00', '6.61', '34.98', '__'),
(585, 'reverse', '3.0', 's316:1_inconel:0.1_ptfe:0.1', '6.000', '40.00', '6.05', '14.66', '3inch10'),
(586, 'reverse', '3.0', 's316:1_inconel:0.1_ptfe:0.1', '6.000', '40.00', '7.15', '14.77', '3inch10'),
(587, 'reverse', '3.0', 's316:1_inconel:0.1_ptfe:0.1', '6.000', '40.00', '6.42', '14.66', '3inch9'),
(588, 'reverse', '3.0', 's316:1_inconel:0.1_ptfe:0.1', '6.000', '40.00', '7.05', '14.77', '3inch10'),
(589, 'reverse', '3.0', 's316:1_inconel:0.1_ptfe:0.1', '6.000', '40.00', '6.92', '14.66', '3inch7'),
(590, 'reverse', '3.0', 's316:1_inconel:0.1_ptfe:0.1', '6.000', '40.00', '8', '14.77', '3inch5'),
(591, 'reverse', '3.0', 's316:1_inconel:0.05_ptfe:0.1', '6.000', '40.00', '6.95', '14.66', '3inch4'),
(592, 'reverse', '3.0', 's316:1_inconel:0.1_ptfe:0.1', '6.000', '40.00', '7.4', '14.77', '3inch2'),
(593, 'reverse', '3.0', 's316:1_inconel:0.1_ptfe:0.1', '6.000', '40.00', '7.4', '14.66', '3inch6'),
(594, 'reverse', '3.0', 's316:1_s316:0.1_ptfe:0.1', '6.000', '40.00', '6.13', '14.66', '3inch6'),
(595, 'reverse', '3.0', 's316:0.5_s316:0.5_ptfe:0.1', '7.500', '149.10', '7.6', '21.3', ''),
(596, 'reverse', '3.0', 's316:0.5_s316:0.5_ptfe:0.1', '7.000', '100.00', '2.14', '17.63', ''),
(597, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '37.1', '29.33', ''),
(598, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '44', '15.62', ''),
(599, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '47', '15.62', ''),
(600, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '32', '15.62', ''),
(601, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '35', '15.62', ''),
(602, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '44.5', '15.62', ''),
(603, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '41', '15.62', ''),
(604, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '42.7', '15.62', ''),
(605, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '44.5', '15.62', ''),
(606, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '40', '15.62', ''),
(607, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '42.5', '15.62', ''),
(608, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '45.5', '15.62', ''),
(609, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '43.5', '15.62', ''),
(610, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '45.2', '15.62', ''),
(611, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '45.5', '15.62', ''),
(612, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '42.5', '15.62', ''),
(613, 'reverse', '3.0', 'hastelloy:0.8_s316:0.05_ptfe:0.1', '40.000', '280.00', '46', '15.62', ''),
(614, 'reverse', '3.0', 'inconel:1.6_ inconel:0.1_ptfe:0.1', '42.000', '200.00', '33', '20.6', ''),
(615, 'reverse', '3.0', 'inconel:1.6_ inconel:0.1_ptfe:0.1', '42.000', '200.00', '33.8', '22.64', ''),
(616, 'reverse', '3.0', 'inconel:1.6_ inconel:0.1_ptfe:0.1', '42.000', '200.00', '31', '17', ''),
(617, 'reverse', '3.0', 'inconel:1.6_ inconel:0.1_ptfe:0.1', '42.000', '220.00', '23', '17', ''),
(618, 'reverse', '3.0', 'inconel:0.5_s316:0.05_ptfe:0.1', '12.000', '180.00', '21', '21.52', ''),
(619, 'reverse', '3.0', 'inconel:0.5_s316:0.05_ptfe:0.1', '12.000', '180.00', '25.5', '13.67', ''),
(620, 'reverse', '3.0', 'inconel:0.5_s316:0.05_ptfe:0.1', '12.000', '180.00', '11.98', '13.67', ''),
(621, 'reverse', '3.0', 'inconel:0.5_s316:0.05_ptfe:0.1', '12.000', '180.00', '12.08', '13.67', ''),
(622, 'reverse', '3.0', 'inconel:0.5_s316:0.05_ptfe:0.1', '12.000', '180.00', '12.6', '13.67', ''),
(623, 'reverse', '3.0', 'inconel:0.5_s316:0.05_ptfe:0.1', '12.000', '180.00', '11.52', '13.67', ''),
(624, 'reverse', '4.0', 'inconel:1_s316:0.05_ptfe:0.1', '10.000', '120.00', '10.23', '19.75', 'A4inRP4.m.'),
(625, 'reverse', '4.0', 'inconel:1_s316:0.05_ptfe:0.1', '10.000', '120.00', '5.78', '19.75', 'A4inRP10'),
(626, 'reverse', '4.0', 'inconel:1_s316:0.05_ptfe:0.1', '10.000', '120.00', '9.97', '19.75', 'A4inRP1.m.'),
(627, 'reverse', '4.0', 'inconel:1_s316:0.05_ptfe:0.1', '5.500', '180.00', '9.05', '19.77', 'A4inRP1.m.'),
(628, 'reverse', '4.0', 'inconel:1_s316:0.05_ptfe:0.1', '5.500', '180.00', '5.46', '19.77', 'A4inRP10'),
(629, 'reverse', '4.0', 'inconel:1_s316:0.05_ptfe:0.1', '7.900', '200.00', '8.41', '21.1', 'A4inRP11'),
(630, 'reverse', '4.0', 'inconel:1_s316:0.05_ptfe:0.1', '7.900', '200.00', '8.33', '21.1', 'A4inRP11.m.'),
(631, 'reverse', '4.0', 'inconel:1_s316:0.05_ptfe:0.1', '8.000', '100.00', '9.17', '21.04', 'A4imRP11'),
(632, 'reverse', '4.0', 'inconel:1_s316:0.05_ptfe:0.1', '8.000', '100.00', '7.92', '21.04', 'A4imRP12'),
(633, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '24.26', '20.91', 'A4inRP7'),
(634, 'reverse', '4.0', 's316:2.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '29.45', '20.91', 'A4inRP18'),
(635, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '32.85', '20.91', 'A4inRP8'),
(636, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '33.92', '20.91', 'A4inRP9'),
(637, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '33.97', '20.91', 'A4inRP9Modified'),
(638, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '30.87', '20.91', 'A4inRP9'),
(639, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '31.08', '20.91', 'A4inRP9'),
(640, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '33.1', '20.91', 'A4inRP9'),
(641, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '32.83', '20.91', 'A4inRP9'),
(642, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '30.08', '20.91', 'A4inRP9Modified'),
(643, 'reverse', '4.0', 's316:1.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '30.15', '20.91', 'A4inRP9Modified'),
(644, 'reverse', '4.0', 's316:2.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '30.04', '20.91', 'A6inRP18M'),
(645, 'reverse', '4.0', 's316:2.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '25.5', '20.91', 'A6inRP18.sec.M'),
(646, 'reverse', '4.0', 's316:2.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '29.3', '20.91', 'A6inRP18.Third.M'),
(647, 'reverse', '4.0', 's316:2.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '30.3', '20.91', 'A6inRP18M'),
(648, 'reverse', '4.0', 's316:2.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '29', '20.91', 'A6inRP18.Third.M'),
(649, 'reverse', '4.0', 's316:2.5_s316:0.1_ptfe:0.1', '30.500', '60.00', '29', '20.91', 'A6inRP18'),
(650, 'reverse', '4.0', 's316:2_s316:0.1_ptfe:0.1', '30.500', '60.00', '26.76', '20.91', 'A6inRP19'),
(651, 'reverse', '4.0', 's316:2_s316:0.1_ptfe:0.1', '30.500', '60.00', '29.16', '20.91', 'A6inRP20'),
(652, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '11.000', '45.00', '8.32', '21', 'A4inRP1'),
(653, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '11.000', '45.00', '11.75', '21', 'A4inRP3'),
(654, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '11.000', '45.00', '11.75', '21', 'A4inRP1'),
(655, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '11.000', '45.00', '15.4', '21', 'A4inRP1'),
(656, 'reverse', '4.0', 'hastelloy:1_ hastelloy:0.05_ptfe:0.1', '11.000', '45.00', '11.23', '21', 'A4inRP4'),
(657, 'reverse', '4.0', 'hastelloy:1_ hastelloy:0.05_ptfe:0.1', '11.000', '45.00', '12', '21', 'A4inRP4.m.'),
(658, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '7.000', '63.60', '5', '19.68', '4inPR1'),
(659, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '7.000', '63.60', '5.7', '19.64', '4inPR1'),
(660, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '7.000', '63.60', '6.02', '19.7', '4inPR2'),
(661, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '7.000', '63.60', '6', '19.7', '4inPR2'),
(662, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '7.000', '63.60', '7.6', '19.7', '4inPR3'),
(663, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '7.000', '63.60', '7.4', '19.7', '__'),
(664, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '7.000', '63.60', '6.64', '19.7', '__'),
(665, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '7.000', '63.60', '7.45', '19.7', '4inPR3'),
(666, 'reverse', '4.0', 's316:1_s316:0.05_ptfe:0.1', '7.000', '63.60', '7.45', '19.7', '4inPR3'),
(667, 'reverse', '4.0', 's316:0.3_s316:0.3_ptfe:0.1', '0.170', '22.00', '0.302', '17.87', '2inch21'),
(668, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '9.000', '80.00', '8.1', '32.92', ''),
(669, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '9.000', '80.00', '7.15', '21.57', ''),
(670, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '9.000', '80.00', '8.93', '21.57', ''),
(671, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '9.000', '80.00', '8.9', '21.57', ''),
(672, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '9.000', '80.00', '7.74', '21.57', ''),
(673, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '9.000', '80.00', '8.5', '21.57', ''),
(674, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '11.000', '45.00', '10.55', '38.62', ''),
(675, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '11.000', '45.00', '9.7', '19.82', ''),
(676, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '11.000', '45.00', '11', '19.82', ''),
(677, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '11.000', '45.00', '8.9', '19.82', ''),
(678, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '11.000', '45.00', '10.28', '19.82', ''),
(679, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '11.000', '45.00', '9.54', '19.82', ''),
(680, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '11.000', '45.00', '9.28', '19.82', ''),
(681, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '12.800', '120.00', '12.6', '5.88', ''),
(682, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '12.800', '120.00', '9.9', '24.68', ''),
(683, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '12.800', '120.00', '12.9', '24.68', ''),
(684, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '12.800', '120.00', '12.6', '24.68', ''),
(685, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '12.800', '120.00', '16', '24.68', ''),
(686, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '12.800', '120.00', '15.55', '24.68', ''),
(687, 'reverse', '4.0', 's316:1_s316:0.1_ptfe:0.1', '12.800', '120.00', '11.43', '24.68', ''),
(688, 'reverse', '4.0', 's316:0.5_s316:0.5_ptfe:0.1', '7.000', '280.00', '7.65', '39.3', ''),
(689, 'reverse', '4.0', 's316:0.5_s316:0.5_ptfe:0.1', '7.000', '280.00', '6.78', '19.71', ''),
(690, 'reverse', '4.0', 's316:0.5_s316:0.5_ptfe:0.1', '7.000', '280.00', '7.16', '19.71', ''),
(691, 'reverse', '4.0', 's316:0.5_s316:0.5_ptfe:0.1', '7.000', '280.00', '7.8', '19.71', ''),
(692, 'reverse', '4.0', 's316:0.5_s316:0.5_ptfe:0.1', '7.000', '280.00', '6.2', '19.71', ''),
(693, 'reverse', '4.0', 's316:0.5_s316:0.5_ptfe:0.1', '7.000', '280.00', '8.2', '19.71', ''),
(694, 'reverse', '4.0', 'hastelloy:1_s316:0.1_ptfe:0.1', '50.000', '320.00', '42', '15.62', ''),
(695, 'reverse', '4.0', 'hastelloy:1_s316:0.1_ptfe:0.1', '50.000', '320.00', '48.5', '23.36', ''),
(696, 'reverse', '4.0', 'hastelloy:1_s316:0.1_ptfe:0.1', '50.000', '320.00', '45', '23.36', ''),
(697, 'reverse', '4.0', 'hastelloy:1_s316:0.1_ptfe:0.1', '50.000', '320.00', '31', '23.36', ''),
(698, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '11.4', '51.13', ''),
(699, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '11.2', '16.28', ''),
(700, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '11.55', '17.3', ''),
(701, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '11.05', '18.6', ''),
(702, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '8', '19.62', ''),
(703, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '8.5', '22.14', ''),
(704, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '8.6', '22.13', ''),
(705, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '10.5', '20.6', ''),
(706, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '9', '15.58', ''),
(707, 'reverse', '4.0', 'inconel:0.5_s316:0.1_ptfe:0.1', '10.500', '180.00', '9', '20.6', ''),
(708, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '24.2', '13.67', ''),
(709, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '22.5', '16.54', ''),
(710, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '18.2', '16.54', ''),
(711, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '24.5', '16.54', ''),
(712, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '18.37', '16.54', ''),
(713, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '18.76', '16.54', ''),
(714, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '18.45', '16.54', ''),
(715, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '21.85', '16.54', ''),
(716, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '21.4', '16.54', ''),
(717, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '16.5', '16.54', ''),
(718, 'reverse', '4.0', 'inconel:0.1_ inconel:1.2_ptfe:0.1', '22.000', '210.00', '16', '16.54', ''),
(719, 'reverse', '6.0', 'inconel:1.5_s316:0.1_ptfe:0.1', '19.000', '100.00', '18.64', '31.41', 'A6inRP19'),
(720, 'reverse', '6.0', 'inconel:1.5_s316:0.1_ptfe:0.1', '19.000', '100.00', '19.2', '31.41', 'A6inRP19modified'),
(721, 'reverse', '6.0', 's316:0.8_s316:.05_ptfe:0.1', '3.000', '144.00', '2.66', '31.9', 'A6inRP22'),
(722, 'reverse', '6.0', 's316:0.8_s316:.05_ptfe:0.1', '3.000', '144.00', '2.86', '31.9', 'A6inRP23'),
(723, 'reverse', '6.0', 's316:0.8_s316:.05_ptfe:0.1', '3.000', '144.00', '3.02', '31.9', 'A6inRP23'),
(724, 'reverse', '6.0', 'monel :04_ s316:0.05_ptfe:0.1', '0.300', '70.00', '0.525', '26.81', 'A6inRP21'),
(725, 'reverse', '6.0', 'monel :04_ s316:0.05_ptfe:0.1', '0.300', '70.00', '0.445', '26.81', 'A6inRP21.m.'),
(726, 'reverse', '6.0', 'monel :04_ s316:0.05_ptfe:0.1', '0.300', '70.00', '0.392', '26.81', 'A6inRP21.sec.m.'),
(727, 'reverse', '6.0', 'monel :04_ s316:0.05_ptfe:0.1', '0.300', '70.00', '0.404', '26.81', 'A6inRP21.T.m.'),
(728, 'reverse', '6.0', 's316:1.5_s316:0.1_ptfe:0.1', '9.400', '40.00', '9.53', '28.6', 'A6inRP16'),
(729, 'reverse', '6.0', 's316:1.5_s316:0.1_ptfe:0.1', '9.400', '40.00', '9.37', '28.7', '__'),
(730, 'reverse', '6.0', 's316:1.5_s316:0.1_ptfe:0.1', '9.400', '40.00', '9.3', '28.8', 'A6inRP16.M.'),
(731, 'reverse', '6.0', 's316:0.4_monel:0.05_ptfe:0.1', '0.500', '22.00', '0.431', '50', 'A6inRP6'),
(732, 'reverse', '6.0', 's316:1.5_s316:0.1_ptfe:0.1', '6.900', '56.00', '6.53', '28.37', 'A6inRP7'),
(733, 'reverse', '6.0', 's316:1.5_s316:0.1_ptfe:0.1', '6.900', '56.00', '6.25', '28.51', 'A6inRP8'),
(734, 'reverse', '6.0', 's316:1.5_s316:0.1_ptfe:0.1', '6.900', '56.00', '8.15', '28.51', 'A6inRP9'),
(735, 'reverse', '6.0', 's316:1.5_s316:0.1_ptfe:0.1', '6.900', '56.00', '8.75', '28.51', 'A6inRP10'),
(736, 'reverse', '6.0', 's316:1.5_s316:0.1_ptfe:0.1', '6.900', '56.00', '8.54', '28.51', 'A6inRP11'),
(737, 'reverse', '6.0', 's316:1.5_s316:0.1_ptfe:0.1', '6.900', '56.00', '7.8', '28.51', 'A6inRP14'),
(738, 'reverse', '6.0', 's316:0.8_s316:0.05_ptfe:0.1', '2.500', '22.00', '2.1', '29.71', '6inRP11'),
(739, 'reverse', '6.0', 's316:0.4_monel:0.05_ptfe:0.1', '0.500', '22.00', '0.394', '29.81', 'A6inRP4'),
(740, 'reverse', '6.0', 's316:0.4_monel:0.05_ptfe:0.1', '0.500', '22.00', '0.39', '29.81', 'A6inRP4'),
(741, 'reverse', '6.0', 's316:0.4_monel:0.05_ptfe:0.1', '0.500', '22.00', '0.434', '29.81', 'A6inRP5'),
(742, 'reverse', '6.0', 's316:0.4_monel:0.05_ptfe:0.1', '0.500', '22.00', '0.434', '29.81', '__'),
(743, 'reverse', '6.0', 's316:0.4_monel:0.05_ptfe:0.1', '0.500', '22.00', '0.42', '29.81', 'A6inRP6'),
(744, 'reverse', '6.0', 's316:1_s316:0.1_ptfe:0.1', '5.190', '66.00', '6.61', '28.84', '3inch6'),
(745, 'reverse', '6.0', 's316:1_s316:0.1_ptfe:0.1', '5.190', '66.00', '5.23', '28.84', '6inch2'),
(746, 'reverse', '6.0', 's316:1_s316:0.1_ptfe:0.1', '5.190', '66.00', '5.34', '28.84', '__'),
(747, 'reverse', '6.0', 's316:1_s316:0.1_ptfe:0.1', '5.190', '66.00', '5.93', '28.84', '6inch5'),
(748, 'reverse', '6.0', 's316:1_s316:0.1_ptfe:0.1', '5.190', '66.00', '5.49', '28.84', '6inch5'),
(749, 'reverse', '6.0', 's316:1_s316:0.1_ptfe:0.1', '5.190', '66.00', '4.25', '28.84', '6inch4'),
(750, 'reverse', '6.0', 's316:0.1_s316:0.1_s316:0.05_tef:0.4', '6.190', '71.40', '6.23', '28.84', '6inch1'),
(751, 'reverse', '6.0', 's316:0.1_s316:0.1_s316:0.05_tef:0.4', '6.190', '71.40', '6.1', '32.92', ''),
(752, 'reverse', '6.0', 's316:0.1_s316:0.1_s316:0.05_tef:0.4', '6.190', '71.40', '5.49', '32.92', ''),
(753, 'reverse', '6.0', 's316:0.1_s316:0.1_s316:0.05_tef:0.4', '6.190', '71.40', '5.95', '32.92', ''),
(754, 'reverse', '6.0', 's316:0.1_s316:0.1_s316:0.05_tef:0.4', '6.190', '71.40', '5', '32.92', ''),
(755, 'reverse', '6.0', 's316:0.1_s316:0.1_s316:0.05_tef:0.4', '6.190', '71.40', '6.8', '32.92', ''),
(756, 'reverse', '6.0', 's316:0.4_s316:0.1_tef:0.5', '3.150', '230.00', '4.5', '24.68', ''),
(757, 'reverse', '6.0', 's316:0.4_s316:0.1_tef:0.5', '3.150', '230.00', '3.42', '21.3', ''),
(758, 'reverse', '6.0', 's316:0.4_s316:0.1_tef:0.5', '3.150', '230.00', '3.45', '21.3', ''),
(759, 'reverse', '6.0', 's316:0.4_s316:0.1_tef:0.5', '3.150', '230.00', '3.53', '21.3', ''),
(760, 'reverse', '6.0', 's316:0.4_s316:0.1_tef:0.5', '3.150', '230.00', '3.54', '21.3', ''),
(761, 'reverse', '6.0', 's316:0.4_s316:0.1_tef:0.5', '3.150', '230.00', '3.71', '21.3', ''),
(762, 'reverse', '6.0', 's316:0.4_s316:0.1_tef:0.5', '3.150', '230.00', '3.43', '21.3', ''),
(763, 'reverse', '6.0', 's316:0.4_s316:0.1_tef:0.5', '3.150', '230.00', '3.7', '21.3', ''),
(764, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '6.75', '19.71', ''),
(765, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.6', '27.23', ''),
(766, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.24', '27.23', ''),
(767, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.13', '27.23', ''),
(768, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.8', '27.23', ''),
(769, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.03', '27.23', ''),
(770, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.03', '27.23', ''),
(771, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.14', '27.23', ''),
(772, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '4.95', '27.23', ''),
(773, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.19', '27.23', ''),
(774, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.03', '27.23', ''),
(775, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.43', '27.23', ''),
(776, 'reverse', '6.0', 'inconel:0.5_s316:0.1_tef:0.5', '5.500', '38.00', '5.65', '27.23', ''),
(777, 'reverse', '6.0', 's316:0.5_s316:0.1_tef:0.5', '6.900', '56.00', '7.05', '27.23', ''),
(778, 'reverse', '6.0', 's316:0.5_s316:0.1_tef:0.5', '6.900', '56.00', '6.68', '29.33', ''),
(779, 'reverse', '6.0', 's316:0.5_s316:0.1_tef:0.5', '6.900', '56.00', '6.32', '29.33', ''),
(780, 'reverse', '6.0', 's316:0.5_s316:0.1_tef:0.5', '6.900', '56.00', '6.1', '29.33', ''),
(781, 'reverse', '6.0', 's316:0.5_s316:0.1_tef:0.5', '6.900', '56.00', '6.78', '29.33', ''),
(782, 'reverse', '6.0', 's316:0.5_s316:0.1_tef:0.5', '6.900', '56.00', '6.33', '29.33', ''),
(783, 'reverse', '6.0', 's316:0.5_s316:0.1_tef:0.5', '6.900', '56.00', '6.14', '29.33', ''),
(784, 'reverse', '6.0', 's316:0.5_s316:0.1_tef:0.5', '6.900', '56.00', '6.29', '29.33', ''),
(785, 'reverse', '8.0', 'inconel:0.8_s316:0.05_tef:0.5', '1.000', '40.00', '0.956', '35.88', 'A8inRP10'),
(786, 'reverse', '8.0', 'inconel:0.8_s316:0.05_tef:0.5', '1.000', '40.00', '1.122', '35.88', 'A8inRP10.m.'),
(787, 'reverse', '8.0', 'inconel:0.8_s316:0.05_tef:0.5', '1.000', '40.00', '1.18', '35.88', 'A8inRP10.s.m.'),
(788, 'reverse', '8.0', 'inconel:0.8_s316:0.05_tef:0.5', '1.000', '40.00', '1.214', '35.88', 'A8inRP10.T.m.'),
(789, 'reverse', '8.0', 'inconel:0.8_s316:0.05_tef:0.5', '1.000', '40.00', '1.056', '35.88', 'A8inRP10.fourth.m.'),
(790, 'reverse', '8.0', 'inconel:0.8_s316:0.05_tef:0.5', '1.000', '40.00', '1.164', '35.88', 'A8inRP11'),
(791, 'reverse', '8.0', 's316:1.5_s316:0.1_tef:0.5', '8.000', '175.00', '9.42', '34.98', '4inch1'),
(792, 'reverse', '8.0', 's316:1.5_s316:0.1_tef:0.5', '8.000', '175.00', '8.3', '34.98', '__'),
(793, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.96', '21.57', ''),
(794, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '6.09', '39.1', ''),
(795, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '6.22', '39.1', ''),
(796, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '6.15', '39.1', ''),
(797, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.92', '39.1', ''),
(798, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.6', '39.1', ''),
(799, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.15', '39.1', ''),
(800, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '8.28', '39.1', ''),
(801, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '9', '39.1', ''),
(802, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '6.24', '39.1', ''),
(803, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '8.58', '39.1', ''),
(804, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.31', '39.1', ''),
(805, 'reverse', '8.0', 's316:1.5_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '6.9', '39.1', ''),
(806, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '10', '16.9', ''),
(807, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '12', '39.3', ''),
(808, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '13.7', '39.3', ''),
(809, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '13.3', '39.3', ''),
(810, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '14', '39.3', ''),
(811, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '11.25', '39.3', ''),
(812, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '9.9', '39.3', ''),
(813, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '9.1', '39.3', ''),
(814, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '13.56', '39.3', ''),
(815, 'reverse', '8.0', 's316:1.5_s316:0.5_ptfe:0.3', '13.500', '90.00', '11.4', '39.3', ''),
(816, 'reverse', '10.0', 's316:1.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '8', '50', 'A10inRP7'),
(817, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '13.8', '50', 'A10inRP8'),
(818, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '18.13', '50', 'A10inRP9'),
(819, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '26.5', '50', 'A10inRP10'),
(820, 'reverse', '10.0', 's316:3_s316:0.1_ptfe:0.3', '22.800', '33.00', '20.54', '50', '__'),
(821, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '16', '50', 'A10inRP11'),
(822, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '13', '50', 'A10inRP12'),
(823, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '20.2', '50', 'A10inRP12'),
(824, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '22.7', '50', 'A10inRP13'),
(825, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '23.54', '50', '__'),
(826, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '22.9', '50', '__'),
(827, 'reverse', '10.0', 's316:2.5_s316:0.1_ptfe:0.3', '22.800', '33.00', '23.26', '50', '__'),
(828, 'reverse', '10.0', 's316:1.5_inconel:0.1_inconel:1_ptfe:0.3', '1.760', '40.00', '2.34', '49.81', 'A10inRP1'),
(829, 'reverse', '10.0', 's316:1.5_inconel:0.1_inconel:1_ptfe:0.3', '1.760', '40.00', '1.194', '49.81', 'A10inRP'),
(830, 'reverse', '10.0', 's316:1.5_inconel:0.1_inconel:1_ptfe:0.3', '1.760', '40.00', '1.92', '49.81', '__'),
(831, 'reverse', '10.0', 's316:1.5_inconel:0.1_inconel:1_ptfe:0.3', '1.760', '40.00', '2', '49.81', 'A10inRP6'),
(832, 'reverse', '10.0', 's316:1.5_inconel:0.1_inconel:1_ptfe:0.3', '1.760', '40.00', '1.9', '49.81', 'A10inRP5.S.M'),
(833, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '6.92', '39.1', ''),
(834, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '6.79', '38.62', ''),
(835, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '8.5', '38.62', ''),
(836, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '8.92', '38.62', ''),
(837, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '9.68', '38.62', ''),
(838, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '8.03', '38.62', ''),
(839, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.2', '38.62', ''),
(840, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.15', '38.62', ''),
(841, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.92', '38.62', ''),
(842, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.29', '38.62', ''),
(843, 'reverse', '10.0', 's316:1_s316:0.1_s316:0.5_tef:0.5', '7.000', '40.00', '7.73', '38.62', ''),
(844, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.9', '23.36', ''),
(845, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.4', '4.200', '10.00', '2.8', '54.7', ''),
(846, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '4.25', '48.85', ''),
(847, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '4.35', '42.9', ''),
(848, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '4.15', '45.08', ''),
(849, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '4.3', '45.08', ''),
(850, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.85', '45.08', ''),
(851, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.98', '45.08', ''),
(852, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.95', '45.08', ''),
(853, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.93', '45.08', ''),
(854, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.85', '45.08', ''),
(855, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.95', '45.08', ''),
(856, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.81', '4.200', '10.00', '5.1', '45.08', ''),
(857, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.65', '4.200', '10.00', '2.54', '45.08', ''),
(858, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.65', '4.200', '10.00', '3.05', '45.08', ''),
(859, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.81', '4.200', '10.00', '4.8', '40.6', ''),
(860, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.8', '4.200', '10.00', '4.5', '38.72', ''),
(861, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.8', '4.200', '10.00', '4.23', '51.02', ''),
(862, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.8', '4.200', '10.00', '4.3', '51.02', ''),
(863, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '4.22', '51.02', ''),
(864, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.05', '42.03', ''),
(865, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.89', '51.13', ''),
(866, 'reverse', '10.0', 'inconel:0.5_s316:0.1_fep:0.5', '4.200', '10.00', '3.9', '51.13', ''),
(867, 'reverse', '10.0', 'inconel:1.2_s316:0.1_fep:0.5', '12.000', '53.60', '18.5', '16.69', ''),
(868, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.4', '12.000', '53.60', '11.5', '51.78', ''),
(869, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.5', '12.000', '53.60', '16.4', '51.78', ''),
(870, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.5', '12.000', '53.60', '16.7', '51.78', ''),
(871, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.5', '12.000', '53.60', '14.7', '51.78', ''),
(872, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.5', '12.000', '53.60', '17.45', '51.78', ''),
(873, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.5', '12.000', '53.60', '17.02', '51.78', ''),
(874, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.5', '12.000', '53.60', '16.07', '51.78', ''),
(875, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.5', '12.000', '53.60', '13.28', '51.78', ''),
(876, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.5', '12.000', '53.60', '15.7', '51.78', ''),
(877, 'reverse', '10.0', 'inconel:0.8_s316:0.1_fep:0.5', '12.000', '53.60', '11.5', '51.78', ''),
(878, 'reverse', '10.0', 'inconel:1.2_s316:0.1_fep:0.4', '12.000', '53.60', '11.7', '51.78', ''),
(879, 'reverse', '10.0', 'inconel:1_s316:0.1_fep:0.4', '12.000', '41.80', '15.5', '51.78', ''),
(880, 'reverse', '10.0', 'inconel:1_s316:0.1_fep:0.4', '12.000', '41.80', '11.97', '37.09', ''),
(881, 'reverse', '10.0', 'inconel:1_s316:0.1_fep:0.4', '12.000', '41.80', '13.5', '37.09', ''),
(882, 'reverse', '10.0', 'inconel:1_s316:0.1_fep:0.4', '12.000', '41.80', '8.8', '37.09', ''),
(883, 'reverse', '10.0', 'inconel:1_s316:0.1_fep:0.4', '12.000', '41.80', '12.43', '37.09', ''),
(884, 'reverse', '10.0', 'inconel:1_s316:0.1_fep:0.4', '12.000', '41.80', '13.24', '37.09', ''),
(885, 'reverse', '16.0', 'inconel:1.2_ inconel:0.5_fep:0.5', '1.000', '52.00', '21.4', '37.09', ''),
(886, 'reverse', '16.0', 'inconel:1.2_ inconel:0.5_fep:0.5', '1.000', '52.00', '21.5', '21.52', '');

-- --------------------------------------------------------

--
-- Table structure for table `tested_rupture_data`
--

CREATE TABLE `tested_rupture_data` (
  `id` int NOT NULL,
  `ruptureDisk` int DEFAULT NULL,
  `burstCondition` int DEFAULT NULL,
  `description` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `ID` int NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namefa` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`ID`, `type`, `namefa`, `description`) VALUES
(1, 'reverse', NULL, NULL),
(2, 'forward', NULL, NULL),
(3, 'flat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `validsize`
--

CREATE TABLE `validsize` (
  `ID` int NOT NULL,
  `element` int NOT NULL,
  `type` int NOT NULL,
  `size` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `nominalSize` varchar(6) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `raw_d1` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'width or od',
  `raw_d2` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'height or id',
  `raw_d3` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'lenght_thickness',
  `raw_d4` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `raw_d5` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `raw_d6` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `raw_d7` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `raw_d8` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(127) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `burst_condition`
--
ALTER TABLE `burst_condition`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `drw`
--
ALTER TABLE `drw`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `typeID` (`type`),
  ADD KEY `subtypeID` (`subtype`);

--
-- Indexes for table `layer`
--
ALTER TABLE `layer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `main` (`main`),
  ADD KEY `vac` (`vac`),
  ADD KEY `seal` (`seal`),
  ADD KEY `sub` (`sub`),
  ADD KEY `extra` (`extra`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `material` (`material`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `mto_item_element`
--
ALTER TABLE `mto_item_element`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `element` (`element`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `overfordesign`
--
ALTER TABLE `overfordesign`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `typeID` (`type`),
  ADD KEY `size` (`size`);

--
-- Indexes for table `requested_rupture`
--
ALTER TABLE `requested_rupture`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `request_rupture`
--
ALTER TABLE `request_rupture`
  ADD KEY `burstConditionID` (`burstCondition`),
  ADD KEY `layersID` (`layers`),
  ADD KEY `sizeID` (`size`),
  ADD KEY `typeID` (`type`),
  ADD KEY `elementID` (`element`);

--
-- Indexes for table `rupture_disk`
--
ALTER TABLE `rupture_disk`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`,`type`),
  ADD KEY `ID_2` (`ID`,`size`),
  ADD KEY `ID_3` (`ID`,`layers`),
  ADD KEY `type` (`type`),
  ADD KEY `size` (`size`),
  ADD KEY `layers` (`layers`);

--
-- Indexes for table `tested`
--
ALTER TABLE `tested`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tested_rupture_data`
--
ALTER TABLE `tested_rupture_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size` (`ruptureDisk`),
  ADD KEY `type` (`burstCondition`),
  ADD KEY `ruptureDisk` (`ruptureDisk`),
  ADD KEY `burstCondition` (`burstCondition`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `validsize`
--
ALTER TABLE `validsize`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `elementID` (`element`),
  ADD KEY `typeID` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `burst_condition`
--
ALTER TABLE `burst_condition`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drw`
--
ALTER TABLE `drw`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `element`
--
ALTER TABLE `element`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `layer`
--
ALTER TABLE `layer`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mto_item_element`
--
ALTER TABLE `mto_item_element`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `overfordesign`
--
ALTER TABLE `overfordesign`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `requested_rupture`
--
ALTER TABLE `requested_rupture`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `rupture_disk`
--
ALTER TABLE `rupture_disk`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tested_rupture_data`
--
ALTER TABLE `tested_rupture_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `validsize`
--
ALTER TABLE `validsize`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `element`
--
ALTER TABLE `element`
  ADD CONSTRAINT `element_ibfk_1` FOREIGN KEY (`type`) REFERENCES `types` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `element_ibfk_2` FOREIGN KEY (`subtype`) REFERENCES `types` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `element_ibfk_3` FOREIGN KEY (`ID`) REFERENCES `request_rupture` (`element`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `layer`
--
ALTER TABLE `layer`
  ADD CONSTRAINT `layer_ibfk_1` FOREIGN KEY (`main`) REFERENCES `material` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `layer_ibfk_2` FOREIGN KEY (`vac`) REFERENCES `material` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `layer_ibfk_3` FOREIGN KEY (`extra`) REFERENCES `material` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `layer_ibfk_4` FOREIGN KEY (`sub`) REFERENCES `material` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `layer_ibfk_5` FOREIGN KEY (`seal`) REFERENCES `material` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `layer_ibfk_6` FOREIGN KEY (`ID`) REFERENCES `request_rupture` (`layers`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `materialsheet` FOREIGN KEY (`material`) REFERENCES `materials` (`name`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `request_rupture`
--
ALTER TABLE `request_rupture`
  ADD CONSTRAINT `request_rupture_ibfk_1` FOREIGN KEY (`type`) REFERENCES `types` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_rupture_ibfk_2` FOREIGN KEY (`size`) REFERENCES `validsize` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_rupture_ibfk_3` FOREIGN KEY (`layers`) REFERENCES `layer` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_rupture_ibfk_4` FOREIGN KEY (`burstCondition`) REFERENCES `burst_condition` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rupture_disk`
--
ALTER TABLE `rupture_disk`
  ADD CONSTRAINT `rupture_disk_ibfk_1` FOREIGN KEY (`type`) REFERENCES `types` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rupture_disk_ibfk_2` FOREIGN KEY (`size`) REFERENCES `validsize` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rupture_disk_ibfk_3` FOREIGN KEY (`layers`) REFERENCES `layer` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tested_rupture_data`
--
ALTER TABLE `tested_rupture_data`
  ADD CONSTRAINT `tested_rupture_data_ibfk_1` FOREIGN KEY (`burstCondition`) REFERENCES `burst_condition` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tested_rupture_data_ibfk_2` FOREIGN KEY (`ruptureDisk`) REFERENCES `rupture_disk` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `validsize`
--
ALTER TABLE `validsize`
  ADD CONSTRAINT `validsize_ibfk_1` FOREIGN KEY (`type`) REFERENCES `types` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `validsize_ibfk_2` FOREIGN KEY (`element`) REFERENCES `element` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
