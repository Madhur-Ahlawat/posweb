-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2020 at 01:13 AM
-- Server version: 10.3.25-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anikncnm_smart_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_cell` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_cell`, `customer_email`, `customer_address`) VALUES
(21, 'Jhonson', '8801954796214', 'jhonson@gmail.com', 'Australia'),
(10, 'Jasim Uddin', '+8855775555', 'jasim@gmail.com', 'Chittagong'),
(13, 'Rakib Uddin', '+8888558888', 'rakib@gmail.com', 'Agrabad, Ctg'),
(29, 'ttr  sri rama chandra genral store', '999999999', 'ffffff@gmail.com', 'hhhh');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `expense_id` int(255) NOT NULL,
  `expense_name` varchar(255) NOT NULL,
  `expense_note` varchar(255) NOT NULL,
  `expense_amount` varchar(255) NOT NULL,
  `expense_date` varchar(255) NOT NULL,
  `expense_time` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`expense_id`, `expense_name`, `expense_note`, `expense_amount`, `expense_date`, `expense_time`, `timestamp`) VALUES
(4, 'Snacks Bil', 'Snacks Bill', '50', '2020-05-12', '11:01 AM', '2020-06-06 18:31:42'),
(5, 'Employee Salary', 'Employee Salary', '2000', '2020-05-12', '12:41 AM', '2020-06-06 18:31:42'),
(28, 'Employment Cost', 'cost for employee ', '5000.25', '2020-06-07', '09:42 PM ', '2020-11-25 06:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(255) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `product_name` text NOT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `product_weight` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_order_date` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `invoice_id`, `product_name`, `product_quantity`, `product_weight`, `product_price`, `product_order_date`, `product_id`, `product_image`, `timestamp`) VALUES
(514, 'INV120201593361714', 'Fried Rice With Chicken Fry', '2', '200 g', '200', '2020-06-28', '7', '1591954736.png', '2020-06-28 16:28:38'),
(513, 'INV120201593361714', 'Chicken Topa', '2', '250 g', '100', '2020-06-28', '6', '1591619186.png', '2020-06-28 16:28:38'),
(512, 'INV120201593361180', 'Pasta', '1', '195 g', '27000', '2020-05-28', '3', '1591629834.png', '2020-07-02 09:28:58'),
(511, 'INV120201593361180', 'Chicken Biryani', '2', '500 g', '270', '2020-06-28', '5', 'chicken_biryani.jpg', '2020-06-28 16:19:44'),
(509, 'INV120201593361180', 'Fried Rice With Chicken Fry', '2', '200 g', '200', '2020-05-28', '7', '1591954736.png', '2020-07-02 09:29:03'),
(510, 'INV120201593361180', 'Poco F1', '1', '195 pcs', '27000', '2020-06-28', '4', 'poco_f1.png', '2020-06-28 16:19:44'),
(508, 'INV120201593361180', 'Chicken Topa', '2', '250 g', '100', '2020-06-28', '6', '1591619186.png', '2020-06-28 16:19:44'),
(507, 'INV120201593360678', 'Fried Rice With Chicken Fry', '2', '200 g', '200', '2020-06-28', '7', '1591954736.png', '2020-06-28 16:11:22'),
(506, 'INV120201593360678', 'Chicken Topa', '1', '250 g', '100.50', '2020-06-28', '6', '1591619186.png', '2020-07-02 12:55:16'),
(619, 'INV820201606235473', 'RelÃ³gio Smartwatch IWO W46', '1', '10 Kg', '350', '2020-11-24', '35', '1605675309.png', '2020-11-24 16:31:14'),
(618, 'INV820201606235473', 'fortistari', '1', '1 Kg', '25', '2020-11-24', '38', '1605973603.png', '2020-11-24 16:31:14'),
(617, 'INV820201606235473', 'ÙƒØ±ÙŠÙ… ÙØ§ØªÙŠÙƒØ§', '1', '200 g', '5', '2020-11-24', '37', '1605867602.png', '2020-11-24 16:31:14'),
(535, 'INV820201595760757', 'Banana 43', '6', '2 g', '222', '2020-07-26', '11', '1593670819.png', '2020-07-26 10:52:36'),
(537, 'INV820201596090831', 'basket', '1', '3 pcs', '567', '2020-07-30', '20', '1593866842.png', '2020-07-30 06:33:51'),
(523, 'INV820201594018936', 'Test', '1', '20 g', '999', '2020-07-06', '29', 'image_placeholder.png', '2020-07-06 07:02:20'),
(524, 'INV820201594019134', 'plag', '4', '3 g', '567', '2020-07-06', '20', '1593866842.png', '2020-07-06 07:05:39'),
(525, 'INV820201594019134', 'water', '2', '2 L', '15', '2020-07-06', '19', '1593866858.png', '2020-07-06 07:05:39'),
(526, 'INV820201595481825', 'juice', '1', '22 pcs', '120', '2020-07-23', '27', '1594012986.png', '2020-07-23 05:23:46'),
(527, 'INV820201595481825', 'chicken', '1', '1.5 Kg', '5', '2020-07-23', '28', '1594012951.png', '2020-07-23 05:23:46'),
(528, 'INV820201595594903', 'juice', '1', '22 pcs', '120', '2020-07-24', '27', '1594012986.png', '2020-07-24 12:48:26'),
(529, 'INV820201595594903', 'chicken', '1', '1.5 Kg', '5', '2020-07-24', '28', '1594012951.png', '2020-07-24 12:48:26'),
(530, 'INV820201595595293', 'juice', '2', '22 pcs', '120', '2020-07-24', '27', '1594012986.png', '2020-07-24 12:54:56'),
(531, 'INV820201595595293', 'chicken', '2', '1.5 Kg', '5', '2020-07-24', '28', '1594012951.png', '2020-07-24 12:54:56'),
(532, 'INV820201595596848', 'juice', '1', '22 pcs', '120', '2020-07-24', '27', '1594012986.png', '2020-07-24 13:20:49'),
(533, 'INV820201595596848', 'chicken', '1', '1.5 Kg', '5', '2020-07-24', '28', '1594012951.png', '2020-07-24 13:20:49'),
(536, 'INV820201596090831', 'chicken eggs , hen eggs', '1', '2 g', '222', '2020-07-30', '14', '1593670631.jpg', '2020-07-30 06:33:51'),
(538, 'INV820201596090831', 'juice', '1', '1 pcs', '120', '2020-07-30', '27', '1594012986.png', '2020-07-30 06:33:51'),
(566, 'INV820201605417646', 'juice', '1', '1 pcs', '120', '2020-11-15', '27', '1594012986.png', '2020-11-15 05:20:50'),
(565, 'INV820201605385552', 'test', '1', '10 Kg', '30', '2020-11-14', '35', '1605346352.png', '2020-11-14 20:25:52'),
(564, 'INV820201605346417', 'huawai', '1', '250 g', '150', '2020-11-14', '49', '1604311547.png', '2020-11-14 09:33:37'),
(563, 'INV820201605346417', 'test', '1', '10 Kg', '30', '2020-11-14', '35', '1605346352.png', '2020-11-14 09:33:37'),
(567, 'INV820201605417646', 'chicken eggs , hen eggs', '1', '2 g', '222', '2020-11-15', '14', '1593670631.jpg', '2020-11-15 05:20:50'),
(568, 'INV820201605417646', 'test', '1', '10 Kg', '30', '2020-11-15', '35', '1605346352.png', '2020-11-15 05:20:50'),
(569, 'INV820201605422044', 'test', '1', '10 Kg', '30', '2020-11-15', '35', '1605346352.png', '2020-11-15 06:34:06'),
(576, 'INV820201605734279', 'juice', '1', '1 pcs', '120', '2020-11-18', '27', '1594012986.png', '2020-11-18 21:18:00'),
(574, 'INV820201605675374', 'RelÃ³gio Smartwatch IWO W46', '1', '10 Kg', '350', '2020-11-18', '35', '1605675309.png', '2020-11-18 04:56:15'),
(575, 'INV820201605734279', 'Baby Foods', '1', '2 pcs', '222', '2020-11-18', '1', '1593671266.png', '2020-11-18 21:18:00'),
(577, 'INV820201605734279', 'RelÃ³gio Smartwatch IWO W46', '1', '10 Kg', '350', '2020-11-18', '35', '1605675309.png', '2020-11-18 21:18:00'),
(578, 'INV820201594972569', 'RelÃ³gio Smartwatch IWO W46', '2', '10 Kg', '350', '2020-07-17', '35', '1605675309.png', '2020-11-20 07:03:14'),
(579, 'INV820201594972750', 'juice', '1', '1 pcs', '120', '2020-07-17', '27', '1594012986.png', '2020-11-20 07:06:14'),
(580, 'INV820201594973137', 'juice', '1', '1 pcs', '120', '2020-07-17', '27', '1594012986.png', '2020-11-20 07:12:41'),
(581, 'INV820201594973560', 'juice', '1', '1 pcs', '120', '2020-07-17', '27', '1594012986.png', '2020-11-20 07:19:45'),
(582, 'INV820201594973660', 'RelÃ³gio Smartwatch IWO W46', '1', '10 Kg', '350', '2020-07-17', '35', '1605675309.png', '2020-11-20 07:21:25'),
(583, 'INV820201594973920', 'Banana', '1', '2 Kg', '222', '2020-07-17', '12', '1593668653.png', '2020-11-20 07:25:44'),
(584, 'INV820201594974050', 'juice', '1', '1 pcs', '120', '2020-07-17', '27', '1594012986.png', '2020-11-20 07:27:55'),
(586, 'INV1020201605866754', 'juice', '1', '1 pcs', '120', '2020-11-19', '27', '1594012986.png', '2020-11-20 10:05:57'),
(587, 'INV1020201605866754', 'Banana', '2', '2 Kg', '222', '2020-11-19', '12', '1593668653.png', '2020-11-20 10:05:57'),
(588, 'INV1020201605866754', 'poultry Farm', '1', '2 g', '222', '2020-11-19', '5', '1593670775.jpg', '2020-11-20 10:05:57'),
(589, 'INV1020201605866885', 'Banana', '1', '2 Kg', '222', '2020-11-19', '12', '1593668653.png', '2020-11-20 10:08:06'),
(590, 'INV1020201605866885', 'juice', '1', '1 pcs', '120', '2020-11-19', '27', '1594012986.png', '2020-11-20 10:08:06'),
(591, 'INV1020201605866997', 'Fish', '1', '2 g', '222', '2020-11-19', '7', '1593671208.png', '2020-11-20 10:09:58'),
(592, 'INV1020201605866997', 'chicken eggs , hen eggs', '1', '2 g', '222', '2020-11-19', '14', '1593670631.jpg', '2020-11-20 10:09:58'),
(593, 'INV1020201605867656', 'Baby Foods', '1', '2 pcs', '222', '2020-11-19', '1', '1593671266.png', '2020-11-20 10:21:02'),
(594, 'INV1020201605867656', 'ÙƒØ±ÙŠÙ… ÙØ§ØªÙŠÙƒØ§', '1', '200 g', '5', '2020-11-19', '37', '1605867602.png', '2020-11-20 10:21:02'),
(595, 'INV1020201605868978', 'juice', '2', '1 pcs', '120', '2020-11-19', '27', '1594012986.png', '2020-11-20 10:42:59'),
(596, 'INV1020201605868978', 'poultry Farm', '2', '2 g', '222', '2020-11-19', '5', '1593670775.jpg', '2020-11-20 10:42:59'),
(597, 'INV1020201605868978', 'Baby Foods', '2', '2 pcs', '222', '2020-11-19', '1', '1593671266.png', '2020-11-20 10:42:59'),
(598, 'INV1020201605869004', 'Fish', '1', '2 g', '222', '2020-11-19', '7', '1593671208.png', '2020-11-20 10:43:26'),
(599, 'INV1020201605869130', 'juice', '1', '1 pcs', '120', '2020-11-19', '27', '1594012986.png', '2020-11-20 10:45:31'),
(600, 'INV1020201605869130', 'ÙƒØ±ÙŠÙ… ÙØ§ØªÙŠÙƒØ§', '1', '200 g', '5', '2020-11-19', '37', '1605867602.png', '2020-11-20 10:45:31'),
(604, 'INV820201606126519', 'fortistari', '1', '1 Kg', '25', '2020-11-23', '38', '1605973603.png', '2020-11-23 10:09:57'),
(603, 'INV820201606126519', 'ÙƒØ±ÙŠÙ… ÙØ§ØªÙŠÙƒØ§', '1', '200 g', '5', '2020-11-23', '37', '1605867602.png', '2020-11-23 10:09:57'),
(605, 'INV820201595299281', 'RelÃ³gio Smartwatch IWO W46', '1', '10 Kg', '350', '2020-07-21', '35', '1605675309.png', '2020-11-24 01:48:28'),
(606, 'INV820201606190351', 'chicken eggs , hen eggs', '1', '2 g', '222', '2020-11-24', '14', '1593670631.jpg', '2020-11-24 03:59:13'),
(607, 'INV820201606190351', 'fortistari', '1', '1 Kg', '25', '2020-11-24', '38', '1605973603.png', '2020-11-24 03:59:13'),
(608, 'INV820201606190351', 'Test1', '1', '1.2 g', '50', '2020-11-24', '39', 'image_placeholder.png', '2020-11-24 03:59:13'),
(609, 'INV820201606206662', 'chicken eggs , hen eggs', '1', '2 g', '222', '2020-11-24', '14', '1593670631.jpg', '2020-11-24 08:31:04'),
(610, 'INV820201606206662', 'juice', '1', '1 pcs', '120', '2020-11-24', '27', '1594012986.png', '2020-11-24 08:31:04'),
(611, 'INV820201606206662', 'RelÃ³gio Smartwatch IWO W46', '1', '10 Kg', '350', '2020-11-24', '35', '1605675309.png', '2020-11-24 08:31:04'),
(612, 'INV820201606206662', 'ÙƒØ±ÙŠÙ… ÙØ§ØªÙŠÙƒØ§', '1', '200 g', '5', '2020-11-24', '37', '1605867602.png', '2020-11-24 08:31:04'),
(613, 'INV820201606206662', 'fortistari', '1', '1 Kg', '25', '2020-11-24', '38', '1605973603.png', '2020-11-24 08:31:04'),
(614, 'INV820201606206662', 'Test1', '1', '1.2 g', '50', '2020-11-24', '39', 'image_placeholder.png', '2020-11-24 08:31:04'),
(615, 'INV820201606206699', 'ÙƒØ±ÙŠÙ… ÙØ§ØªÙŠÙƒØ§', '1', '200 g', '5', '2020-11-24', '37', '1605867602.png', '2020-11-24 08:31:41'),
(616, 'INV820201606206699', 'fortistari', '1', '1 Kg', '25', '2020-11-24', '38', '1605973603.png', '2020-11-24 08:31:41'),
(620, 'INV820201606282406', 'fortistari', '14', '1 Kg', '25.8', '2020-11-25', '38', '1605973603.png', '2020-11-25 05:33:26'),
(621, 'INV820201606282406', 'Test1', '27', '1.2 g', '50.25', '2020-11-25', '39', 'image_placeholder.png', '2020-11-25 05:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(255) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_time` varchar(255) NOT NULL,
  `order_type` varchar(255) NOT NULL,
  `order_payment_method` varchar(255) NOT NULL,
  `order_price` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `served_by` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`order_id`, `invoice_id`, `order_date`, `order_time`, `order_type`, `order_payment_method`, `order_price`, `discount`, `tax`, `customer_name`, `served_by`, `timestamp`) VALUES
(110, 'INV820201606235473', '2020-11-24', '11:31 PM', 'PICK UP', 'CASH', '380.0', '0.00', '57.0', 'Walk In Customer', 'Admin', '2020-11-24 16:31:14'),
(74, 'INV820201595595293', '2020-07-24', '06:54 PM', 'HOME DELIVERY', 'CASH', '250.0', '12.5', '12.5', 'Walk In Customer', 'Admin', '2020-07-24 12:54:56'),
(73, 'INV820201595594903', '2020-07-24', '06:48 PM', 'PERCEL', 'CARD', '125.0', '6.25', '6.25', 'Walk in Customer', 'Admin', '2020-07-24 12:48:26'),
(72, 'INV820201595481825', '2020-07-23', '11:23 AM', 'PICK UP', 'CASH', '125.0', '0.00', '12.5', 'Walk In Customer', 'Admin', '2020-07-23 05:23:46'),
(70, 'INV820201594018936', '2020-07-06', '01:02 PM', 'PICK UP', 'CASH', '999.0', '0.00', '99.9', 'Walk In Customer', 'Admin', '2020-07-06 07:02:20'),
(77, 'INV820201595760757', '2020-07-26', '04:52 PM', 'PICK UP', 'CASH', '1332.0', '0.00', '66.6', 'Walk In Customer', 'Admin', '2020-07-26 10:52:36'),
(71, 'INV820201594019134', '2020-07-06', '01:05 PM', 'PICK UP', 'CASH', '2298.0', '0.00', '229.8', 'Walk In Customer', 'Admin', '2020-07-06 07:05:39'),
(75, 'INV820201595596848', '2020-07-24', '07:20 PM', 'Table Booking', 'CARD', '125.0', '6.25', '6.25', 'Noor Mohammed Anik', 'Admin', '2020-07-24 13:20:49'),
(78, 'INV820201596090831', '2020-07-30', '12:33 PM', 'HOME DELIVERY', 'CASH', '909.0', '50', '45.45', 'Jhon Due', 'Admin', '2020-07-30 06:33:51'),
(81, 'INV820201605346417', '2020-11-14', '11:33 AM', 'PICK UP', 'CASH', '180.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-14 09:33:37'),
(82, 'INV820201605385552', '2020-11-14', '11:25 PM', 'PICK UP', 'CASH', '30.0', '0.00', '0.0', 'Jhonson', 'Admin', '2020-11-14 20:25:52'),
(83, 'INV820201605417646', '2020-11-15', '08:20 AM', 'PICK UP', 'CASH', '372.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-15 05:20:50'),
(84, 'INV820201605422044', '2020-11-15', '09:34 AM', 'PICK UP', 'CASH', '30.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-15 06:34:06'),
(87, 'INV820201605675374', '2020-11-18', '01:56 AM', 'PERCEL', 'CARD', '350.0', '10', '0.0', 'Rakib Uddin', 'Admin', '2020-11-18 04:56:15'),
(88, 'INV820201605734279', '2020-11-18', '10:17 PM', 'PICK UP', 'CARD', '692.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-18 21:18:00'),
(89, 'INV820201594972569', '2020-07-17', '03:56 PM', 'PICK UP', 'CASH', '700.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-20 07:03:14'),
(90, 'INV820201594972750', '2020-07-17', '03:59 PM', 'PICK UP', 'CASH', '120.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-20 07:06:14'),
(91, 'INV820201594973137', '2020-07-17', '04:05 PM', 'PICK UP', 'CASH', '120.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-20 07:12:41'),
(92, 'INV820201594973560', '2020-07-17', '04:12 PM', 'PICK UP', 'CASH', '120.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-20 07:19:45'),
(93, 'INV820201594973660', '2020-07-17', '04:14 PM', 'PICK UP', 'CASH', '350.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-20 07:21:25'),
(94, 'INV820201594973920', '2020-07-17', '04:18 PM', 'PICK UP', 'CASH', '222.0', '0.00', '0.0', 'Walk In Customer', 'Admin', '2020-11-20 07:25:44'),
(95, 'INV820201594974050', '2020-07-17', '04:20 PM', 'PICK UP', 'CASH', '120.0', '0.00', '0.0', 'TENG MEANHENG', 'Admin', '2020-11-20 07:27:55'),
(97, 'INV1020201605866754', '2020-11-19', '11:05 PM', 'PICK UP', 'CASH', '786.0', '0.00', '0.0', 'Walk In Customer', 'saad', '2020-11-20 10:05:57'),
(98, 'INV1020201605866885', '2020-11-19', '11:08 PM', 'PICK UP', 'CASH', '342.0', '0.00', '0.0', 'Walk In Customer', 'saad', '2020-11-20 10:08:06'),
(99, 'INV1020201605866997', '2020-11-19', '11:09 PM', 'PICK UP', 'CASH', '444.0', '0.00', '66.6', 'Walk In Customer', 'saad', '2020-11-20 10:09:58'),
(100, 'INV1020201605867656', '2020-11-19', '11:20 PM', 'PICK UP', 'CASH', '227.0', '0.00', '34.05', 'Walk In Customer', 'saad', '2020-11-20 10:21:02'),
(101, 'INV1020201605868978', '2020-11-19', '11:42 PM', 'PICK UP', 'CASH', '1128.0', '0.00', '169.2', 'Jhon Due', 'saad', '2020-11-20 10:42:59'),
(102, 'INV1020201605869004', '2020-11-19', '11:43 PM', 'PICK UP', 'CASH', '222.0', '0.00', '33.3', 'Walk In Customer', 'saad', '2020-11-20 10:43:26'),
(103, 'INV1020201605869130', '2020-11-19', '11:45 PM', 'PICK UP', 'CASH', '125.0', '0.00', '18.75', 'Walk In Customer', 'saad', '2020-11-20 10:45:31'),
(105, 'INV820201606126519', '2020-11-23', '01:15 PM', 'Ø¨ÙŠØ¹ Ù…Ø¨Ø§Ø´Ø±', 'Ù†Ù‚Ø¯Ø§Ù‹', '30.0', '0.00', '4.5', 'Ø§Ù„Ø²Ø¨ÙˆÙ†', 'Admin', '2020-11-23 10:09:57'),
(106, 'INV820201595299281', '2020-07-21', '10:41 AM', 'PICK UP', 'CASH', '350.0', '0.00', '52.5', 'Walk In Customer', 'Admin', '2020-11-24 01:48:28'),
(107, 'INV820201606190351', '2020-11-24', '10:59 AM', 'PICK UP', 'CASH', '297.0', '100', '44.55', 'Walk In Customer', 'Admin', '2020-11-24 03:59:13'),
(108, 'INV820201606206662', '2020-11-24', '03:31 PM', 'PICK UP', 'CASH', '772.0', '10', '115.8', 'Walk In Customer', 'Admin', '2020-11-24 08:31:04'),
(109, 'INV820201606206699', '2020-11-24', '03:31 PM', 'PICK UP', 'CASH', '30.0', '0.00', '4.5', 'Walk In Customer', 'Admin', '2020-11-24 08:31:41'),
(111, 'INV820201606282406', '2020-11-25', '11:33 AM', 'PICK UP', 'CASH', '1717.95', '.69', '257.6925', 'Walk In Customer', 'Admin', '2020-11-25 05:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` text NOT NULL,
  `product_category_id` int(5) NOT NULL,
  `product_description` text NOT NULL,
  `product_sell_price` float NOT NULL,
  `product_weight` varchar(255) NOT NULL,
  `product_weight_unit_id` int(11) NOT NULL,
  `product_supplier_id` int(11) NOT NULL,
  `product_image` text NOT NULL,
  `product_stock` int(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_code`, `product_category_id`, `product_description`, `product_sell_price`, `product_weight`, `product_weight_unit_id`, `product_supplier_id`, `product_image`, `product_stock`, `timestamp`) VALUES
(1, 'Baby Foods', 'RRS', 3, 'sensitive and well', 222, '2', 4, 15, '1593671266.png', 0, '2020-11-25 05:54:22'),
(5, 'poultry Farm', 'farm', 3, 'wqwq', 222, '2', 1, 15, '1593670775.jpg', 17, '2020-11-25 05:54:07'),
(7, 'Fish', 'kochu', 3, 'wqwq', 222, '2', 1, 18, '1593671208.png', 20, '2020-11-25 05:53:54'),
(12, 'Banana', 'wqwqw', 3, 'nice &looking fresh', 222, '2', 2, 5, '1593668653.png', 17, '2020-11-20 10:08:06'),
(14, 'chicken eggs , hen eggs', 'eggs', 3, 'well & fresh', 222, '2', 1, 19, '1593670631.jpg', 495, '2020-11-25 05:53:35'),
(27, 'juice', 'sst', 3, 'well and healthy', 120, '1', 4, 19, '1594012986.png', 0, '2020-11-25 05:53:20'),
(35, 'RelÃ³gio Smartwatch IWO W46', '8435050609330', 1, 'smartband Xiaomi', 350, '10', 2, 5, '1605675309.png', 17, '2020-11-24 16:31:14'),
(37, 'ÙƒØ±ÙŠÙ… ÙØ§ØªÙŠÙƒØ§', '6291069207439', 23, '200 Ø¬Ø±Ø§Ù…', 5, '200', 1, 5, '1605867602.png', 13, '2020-11-24 16:31:14'),
(38, 'fortistari', '334223342423234', 23, 'sbxhsajzhzhsjss', 25.8, '1', 2, 5, '1605973603.png', 6, '2020-11-25 05:33:26'),
(39, 'Test1', '0000022022', 1, '100', 50.25, '1.2', 1, 5, 'image_placeholder.png', 71, '2020-11-25 05:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` int(11) NOT NULL,
  `product_category_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `product_category_name`) VALUES
(1, 'Mobile'),
(2, 'Remote desktop'),
(3, 'Food & Drink'),
(4, 'Medicine'),
(5, 'vegetable'),
(11, 'Macbook'),
(9, 'Fish '),
(12, 'House & Home'),
(19, 'Baby food'),
(20, 'Grocery'),
(21, 'Food'),
(23, 'Bike');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_contact` varchar(255) NOT NULL,
  `shop_email` varchar(255) NOT NULL,
  `shop_address` varchar(255) NOT NULL,
  `tax` varchar(11) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `shop_status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_name`, `shop_contact`, `shop_email`, `shop_address`, `tax`, `currency_symbol`, `shop_status`) VALUES
(1, 'Demo Shop', '+812345678900', 'onlinesoftsell@gmail.com', 'New York, USA', '15', '$', 'OPEN');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `suppliers_id` int(255) NOT NULL,
  `suppliers_name` varchar(255) NOT NULL,
  `suppliers_contact_person` varchar(255) NOT NULL,
  `suppliers_cell` varchar(255) NOT NULL,
  `suppliers_email` varchar(255) NOT NULL,
  `suppliers_address` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`suppliers_id`, `suppliers_name`, `suppliers_contact_person`, `suppliers_cell`, `suppliers_email`, `suppliers_address`, `timestamp`) VALUES
(5, 'jon', 'Jamal', '01831758798', 'jamul@gmail.com', 'Iiuc', '2020-07-06 16:16:59'),
(19, 'Pepsi', 'Jhon', '88800891994', 'pepsi9@gmail.com', 'USA', '2020-07-30 06:31:14'),
(18, 'Addidas', 'Jhon due', '88085585588', 'addidas@gmail.com', 'USA', '2020-07-30 06:31:53'),
(15, 'Evaly', 'Jamil', '01831758799', 'evaly@gmail.com', 'Dhaka', '2020-07-25 15:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cell` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `cell`, `email`, `password`, `user_type`) VALUES
(8, 'Admin', '123456789', 'admin@gmail.com', '123456', 'admin'),
(3, 'Manager', '777888', 'manager@gmail.com', '1234', 'admin'),
(4, 'Staff', '76543211', 'staff@gmail.com', '1234', 'staff'),
(5, 'Manager', '01778001401', 'noor.bd92@gmail.com', '12345', 'manager'),
(9, 'Agent', '0000000000', 'personal@perosnal.com', '123456789', 'staff'),
(10, 'saad', '0568101255', 'saad_ena2@hotmail.com', '123456', 'admin'),
(11, 'user@gmail.com', '0160010304013', 'user@gmail.com', '12345', 'staff'),
(12, 'Testing', '019645743', 'testing@gmail.com', 'test123', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `weight_unit`
--

CREATE TABLE `weight_unit` (
  `weight_unit_id` int(11) NOT NULL,
  `weight_unit_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weight_unit`
--

INSERT INTO `weight_unit` (`weight_unit_id`, `weight_unit_name`) VALUES
(1, 'g'),
(2, 'Kg'),
(3, 'L'),
(4, 'pcs'),
(5, 'ml');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`suppliers_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weight_unit`
--
ALTER TABLE `weight_unit`
  ADD PRIMARY KEY (`weight_unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `expense_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `suppliers_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `weight_unit`
--
ALTER TABLE `weight_unit`
  MODIFY `weight_unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
