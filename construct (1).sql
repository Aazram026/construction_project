-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 12:05 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `construct`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(4, 'Aazram Ifham', '3121588220', 'abc', 'admin@email.com', '7c222fb2927d828af22f592134e8932480637c0d', '1', '1555967934');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `page` longtext,
  `place` longtext,
  `num` longtext,
  `status` longtext,
  `link` longtext,
  `image_ext` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`, `image_ext`) VALUES
(1, 'home', 'after_slider', '1', '0', '', '.jpg'),
(2, 'home', 'after_slider', '2', '0', '', '.jpg'),
(3, 'home', 'after_slider', '3', '0', '', '.jpg'),
(4, 'home', 'after_slider', '4', '0', '', '.jpg'),
(5, 'home', 'after_featured', '1', '0', '', NULL),
(6, 'home', 'after_featured', '2', '0', '', NULL),
(7, 'home', 'after_featured', '3', '0', '', NULL),
(8, 'home', 'after_featured', '4', '0', '', NULL),
(9, 'home', 'after_search', '1', '0', '', NULL),
(10, 'home', 'after_search', '2', '0', '', NULL),
(11, 'home', 'after_search', '3', '0', '', NULL),
(12, 'home', 'after_search', '4', '0', '', NULL),
(13, 'home', 'after_category', '1', '0', '', NULL),
(14, 'home', 'after_category', '2', '0', '', NULL),
(15, 'home', 'after_category', '3', '0', '', NULL),
(16, 'home', 'after_category', '4', '0', '', NULL),
(17, 'home', 'after_latest', '1', '0', '', NULL),
(18, 'home', 'after_popular', '1', '0', '', NULL),
(19, 'home', 'after_most_viewed', '1', '0', '', NULL),
(20, 'category', 'after_filters', '1', 'ok', '', NULL),
(21, 'featured', 'after_most_sold', '1', '0', '', NULL),
(22, 'featured', 'after_most_viewed', '1', '0', '', NULL),
(23, 'vendor_home', 'after_filter', '1', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `summery` varchar(1000) NOT NULL,
  `author` varchar(500) NOT NULL,
  `date` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) NOT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `name`) VALUES
(7, 'Contractor');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `name` longtext,
  `description` longtext,
  `logo` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_stock`
--

CREATE TABLE `bundle_stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext,
  `product_bundle` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bundle_stock`
--

INSERT INTO `bundle_stock` (`stock_id`, `type`, `product_bundle`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '101', '4', '999.00', '3996', '', '1521357279', NULL, NULL),
(2, 'destroy', '101', '5', NULL, '4995', '', '1521357287', NULL, NULL),
(3, 'add', '102', '9', '120.00', '1080', '', '1521606561', NULL, NULL),
(4, 'destroy', '102', '2', NULL, '240', '', '1521610522', NULL, NULL),
(5, 'add', '102', '12', '120.00', '1440', '', '1521616802', NULL, NULL),
(6, 'add', '123', '30', '14.99', '449.7', '', '1522921498', NULL, NULL),
(7, 'add', '122', '20', '80.00', '1600', '', '1522921821', NULL, NULL),
(8, 'add', '121', '15', '499.00', '7485', '', '1522922093', NULL, NULL),
(9, 'add', '120', '11', '1199.00', '13189', '', '1522922900', NULL, NULL),
(10, 'add', '118', '29', '39.99', '1159.71', '', '1522923029', NULL, NULL),
(11, 'add', '117', '39', '249.99', '9749.61', '', '1522923088', NULL, NULL),
(12, 'add', '116', '11', '15.99', '175.89000000000001', '', '1522923244', NULL, NULL),
(13, 'add', '119', '30', '1099.00', '32970', '', '1522923499', NULL, NULL),
(14, 'add', '115', '49', '25.59', '1253.91', '', '1522923556', NULL, NULL),
(15, 'add', '114', '49', '139.00', '6811', '', '1522923574', NULL, NULL),
(16, 'add', '102', '80', '24.99', '1999.1999999999998', '', '1522923749', NULL, NULL),
(17, 'add', '113', '30', '15.00', '450', '', '1522923771', NULL, NULL),
(18, 'add', '126', '50', '23.00', '1150', '', '1523942068', NULL, NULL),
(19, 'add', '163', '20', '7000.00', '140000', '', '1524845958', NULL, NULL),
(20, 'add', '163', '22', '7000.00', '154000', 'nothing', '1524904062', NULL, NULL),
(21, 'destroy', '163', '2', NULL, '14000', '', '1524905432', NULL, NULL),
(22, 'destroy', '163', '2', NULL, '14000', '', '1524910766', NULL, NULL),
(23, 'add', '179', '500', '99.00', '49500', '', '1530436948', NULL, NULL),
(24, 'add', '123', '500', '300.00', '150000', '', '1531643194', NULL, NULL),
(25, 'add', '122', '500', '80.00', '40000', '', '1531643204', NULL, NULL),
(26, 'add', '121', '100', '499.00', '49900', '', '1531643213', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', 'alvi@gmail.com'),
(2, 'shipping_cost', 'ok', '10'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '1'),
(6, 'shipment_info', '', '<p><span style="line-height: 17.1429px;">&nbsp;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '80'),
(9, 'paypal_set', '', 'no'),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[]'),
(12, 'cash_set', '', 'ok'),
(13, 'stripe_set', '', 'no'),
(14, 'stripe_secret', '', 'sk_test_NYIpPjs6gbmuogdwUuJ8She4'),
(15, 'stripe_publishable', '', 'pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx'),
(16, 'home_def_currency', '', '1'),
(17, 'c2_set', NULL, 'no'),
(18, 'c2_user', NULL, '901378053'),
(19, 'c2_secret', NULL, '8677E1C0-7CB9-4D35-A513-05CA089B5E70'),
(20, 'c2_type', NULL, 'demo'),
(21, 'currency_format', NULL, 'us'),
(22, 'symbol_format', NULL, 's_amount'),
(23, 'no_of_decimals', NULL, '2'),
(24, 'vp_set', NULL, 'no'),
(25, 'vp_merchant_id', NULL, 'DEMO'),
(26, 'pum_set', NULL, 'no'),
(27, 'pum_merchant_key', NULL, 'RR2LThlB'),
(28, 'pum_merchant_salt', NULL, '3M85o3dezx'),
(29, 'pum_account_type', NULL, 'sandbox'),
(30, 'commission_set', NULL, 'yes'),
(31, 'commission_amount', NULL, '20'),
(32, 'ssl_store_id', NULL, 'techr5affa68a7602c'),
(33, 'ssl_store_passwd', NULL, 'techr5affa68a7602c@ssl'),
(34, 'ssl_type', NULL, 'sandbox'),
(35, 'ssl_set', NULL, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` longtext,
  `description` longtext,
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext,
  `data_brands` longtext,
  `data_vendors` longtext,
  `data_subdets` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `digital`, `banner`, `data_brands`, `data_vendors`, `data_subdets`) VALUES
(30, 'Wood Works', NULL, NULL, 'category_30.jpg', '', '', '[{"sub_id":"117","sub_name":"Furniture","min":0,"max":0,"brands":""},{"sub_id":"118","sub_name":"Wall Art","min":0,"max":0,"brands":""}]'),
(28, 'Structural Material', NULL, NULL, 'category_28.jpg', '', '20:::Mujtaba;;;;;;21:::sardarrehan1;;;;;;30:::nabeel;;;;;;31:::Haris', '[{"sub_id":"115","sub_name":"Steel","min":120,"max":1500,"brands":""},{"sub_id":"119","sub_name":"Basic structure","min":500,"max":5000,"brands":""}]'),
(29, 'Sanitary', NULL, NULL, 'category_29.jpg', '', '32:::Asil', '[{"sub_id":"116","sub_name":"waterpipes","min":100,"max":100,"brands":""}]'),
(31, 'Electric', NULL, NULL, 'category_31.', '', '', '[{"sub_id":"120","sub_name":"Ceiling fan","min":0,"max":0,"brands":""}]'),
(32, 'Banao', NULL, NULL, 'category_32.', '', '', '[]'),
(33, 'water tanker', NULL, NULL, 'category_33.jpg', '', '', '[{"sub_id":"121","sub_name":"small tanker","min":2000,"max":2000,"brands":""}]');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3tdv651re48fipbi00krb935qcidghig', '::1', 1604852670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343835323636373b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('80ntu8326o0tmlf1sgticqr9m7remog0', '::1', 1605708652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353730383634313b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('g8gubdqnf3hpfvt7rvfum7tib89qsivu', '::1', 1604824107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343832303631353b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a31323a2241617a72616d20496668616d223b7469746c657c733a353a2261646d696e223b),
('nlcj20c4retgd8eamha9qoqft4ovbbuq', '::1', 1604779348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343737333139363b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a31323a2241617a72616d20496668616d223b7469746c657c733a353a2261646d696e223b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b6c616e67756167657c733a373a22656e676c697368223b),
('qv5mglinb6bu3ujnqvhlg15aubc1gcd1', '::1', 1607857153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373835373039303b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE `contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext,
  `other` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`contact_message_id`, `name`, `subject`, `email`, `message`, `timestamp`, `view`, `reply`, `other`) VALUES
(1, 'Barrett Shepard', NULL, 'zape@gmail.com', '', '1444834552', 'no', NULL, NULL),
(2, 'aasdfs', 'aaaa', 'amit@gmail.com', 'aaaaa', '1469697073', 'no', NULL, NULL),
(3, 'aaa', 'aaaa', 'amit@gmail.com', 'aaaa', '1469697207', 'no', NULL, NULL),
(4, 'aaa', 'aaa', 'akibtanjim@gmail.com', 'aaaa', '1469697281', 'no', NULL, NULL),
(5, 'aa', 'aaa', 'aaa', 'aaaaa', '1469697490', 'no', NULL, NULL),
(6, 'aasdfs', 'aaa', 'amit@gmail.com', 'aaaaa', '1469702141', 'no', NULL, NULL),
(7, 'aasdfs', 'aaaa', 'akibtanjim@gmail.com', 'aaaa', '1469702304', 'no', NULL, NULL),
(8, 'aaa', 'aaa', 'amit@gmail.com', 'aaaa', '1469702377', 'no', NULL, NULL),
(9, 'aa', 'aaa', 'amit@gmail.com', 'aaaa', '1469702519', 'no', NULL, NULL),
(10, 'aaa', 'aaaaaaaaaaaaaa', 'amit@gmail.com', 'aaaaaa', '1469702546', 'no', NULL, NULL),
(11, 'aaa', 'aaaaa', 'akibtanjim@gmail.com', 'aaaaaa', '1469702614', 'no', NULL, NULL),
(12, 'aaa', 'aaaaa', 'akibtanjim@gmail.com', 'aaaaa', '1469702701', 'no', NULL, NULL),
(13, 'aasdfs', 'aaa', 'akibtanjim@gmail.com', 'aaaaaa', '1469702813', 'no', NULL, NULL),
(14, 'aasdfs', 'aaa', 'akibtanjim@gmail.com', 'aaaaa', '1469702857', 'no', NULL, NULL),
(15, 'aaa', 'aaa', 'aaarnob1', 'aaaaa', '1469702988', 'no', NULL, NULL),
(16, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469703183', 'no', NULL, NULL),
(17, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469703210', 'no', NULL, NULL),
(18, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469705865', 'no', NULL, NULL),
(19, 'a', 'a', 'amit@gmail.com', 'a', '1469705951', 'no', NULL, NULL),
(20, 'aa', 'aaaa', 'amit@gmail.com', 'aaaa', '1469706769', 'no', NULL, NULL),
(21, 'Ciara Ware', 'Quae porro ea possimus nesciunt beatae sint officiis nostrum recusandae At debitis accusamus rerum praesentium iusto reprehenderit alias culpa', 'labov@yahoo.com', 'Est sit, quidem dolore assumenda ut repellendus. Minus id sunt, odio magna eos, aute quia qui minim.', '1473304147', 'no', NULL, NULL),
(22, 'Tom', 'check', 'demovendor.tom@gmail.com', 'message check', '1475561140', 'no', 'checked', NULL),
(23, 'Geoffrey Bass', 'Laborum mollit et voluptas explicabo Quo similique', 'jusakos@hotmail.com', 'Dolorum tempore, nesciunt, nisi atque expedita distinctio. Nesciunt, natus exercitationem vel mollitia.', '1475693105', 'no', NULL, NULL),
(24, 'Aimee Spears', 'Atque quas dolore ducimus assumenda qui totam aliquip perferendis fugiat cupidatat', 'wyre@yahoo.com', 'Pariatur Veritatis asperiores ad dolore maxime', '1518017646', 'no', NULL, NULL),
(25, 'Hilda Sandoval', 'Excepturi voluptatum inventore dolor soluta blanditiis fugit', 'gusyse@yahoo.com', 'Quia et qui nisi facilis voluptatem aliquam reiciendis dolorem provident exercitation consequuntur magnam cumque qui et consectetur voluptatem Fugit dolorem7777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777', '1518017688', 'no', NULL, NULL),
(26, 'sardar rehan', 'delivery isue', 'sardarrehan007@gmail.com', 'i did not get any shipment', '1555972594', 'no', NULL, NULL),
(27, 'ahahaha', 'complaint ', 'saadch985@gmail.com', 'ajjajdjdjdjdjdjjdjdj', '1577097124', 'no', '<p>kfekfkgkgkgkgkg</p>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `spec` varchar(1000) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `till` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency_settings`
--

CREATE TABLE `currency_settings` (
  `currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `exchange_rate` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `exchange_rate_def` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES
(1, 'Pakistani Rupee', 'Rs', '1', 'ok', 'PKR', '1'),
(2, 'Australian Dollar', '$', '1.2762', 'ok', 'AUD', '1.2762'),
(5, 'Brazilian Real', 'R$', '3.238', 'ok', 'BRL', '3.238'),
(6, 'Canadian Dollar', '$', '1.272', 'ok', 'CAD', '1.272'),
(7, 'Czech Koruna', 'Kč', '20.647', 'ok', 'CZK', '20.647'),
(8, 'Danish Krone', 'kr', '6.0532', 'ok', 'DKK', '6.0532'),
(9, 'Euro', '€', '0.84861', 'ok', 'EUR', '0.84861'),
(10, 'Hong Kong Dollar', '$', '7.8264', 'ok', 'HKD', '7.8264'),
(11, 'Hungarian Forint', 'Ft', '255.24', 'ok', 'HUF', '255.24'),
(12, 'Israeli New Sheqel', '₪', '3.4812', 'ok', 'ILS', '3.4812'),
(13, 'Japanese Yen', '¥', '107.12', 'ok', 'JPY', '107.12'),
(14, 'Malaysian Ringgit', 'RM', '3.908', 'ok', 'MYR', '3.908'),
(15, 'Mexican Peso', '$', '18.722', 'ok', 'MXN', '18.722'),
(16, 'Norwegian Krone', 'kr', '7.8278', 'ok', 'NOK', '7.8278'),
(17, 'New Zealand Dollar', '$', '1.3753', 'ok', 'NZD', '1.3753'),
(18, 'Philippine Peso', '₱', '52.261', 'ok', 'PHP', '52.261'),
(19, 'Polish Zloty', 'zł', '3.3875', 'ok', 'PLN', '3.3875'),
(20, 'Pound Sterling', '£', '0.71864', 'ok', 'GBP', '0.71864'),
(21, 'Russian Ruble', 'руб', '55.929', 'ok', 'RUB', '55.929'),
(22, 'Singapore Dollar', '$', '1.3198', 'ok', 'SGD', '1.3198'),
(23, 'Swedish Krona', 'kr', '8.1945', 'ok', 'SEK', '8.1945'),
(24, 'Swiss Franc', 'CHF', '0.93805', 'ok', 'CHF', '0.93805'),
(26, 'Thai Baht', '฿', '31.39', 'ok', 'THB', '31.39'),
(27, 'your_currency', '?', '1', 'no', '??', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_product`
--

CREATE TABLE `customer_product` (
  `customer_product_id` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL DEFAULT '0',
  `rating_total` int(11) NOT NULL DEFAULT '0',
  `rating_user` longtext NOT NULL,
  `title` longtext NOT NULL,
  `added_by` int(11) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `prod_condition` varchar(10) NOT NULL,
  `location` longtext NOT NULL,
  `sub_category` int(11) NOT NULL,
  `num_of_imgs` varchar(100) NOT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext NOT NULL,
  `tag` longtext,
  `status` longtext NOT NULL,
  `admin_status` varchar(10) NOT NULL,
  `front_image` longtext,
  `brand` longtext,
  `unit` longtext,
  `additional_fields` longtext NOT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext NOT NULL,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext NOT NULL,
  `color` longtext,
  `options` longtext,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `update_time` longtext,
  `last_viewed` int(200) DEFAULT NULL,
  `is_sold` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `body` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES
(1, 'Password Reset Email', 'Password Reset Successful', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">You recently requested a new password. We''ve received the request and your password has been changed.</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]<br></span></p><p><span [removed]="font-weight: bold;">Your new password is : [[password]]</span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(2, 'Account Approval Email', 'Account Approval Status', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email : [[email]]</span></p><p><span [removed]="font-weight: bold;">Thank you for registering at our site. Your account&nbsp;has been [[status]]. Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.</p><p><span [removed]="font-weight: bold;"><br></span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(7, 'Vendor Registration Email To Admin', 'Vendor Registration', '<p>Congratulation!</p><p>You have a new Registered Vendor in your sytem.</p><p><span [removed]="font-weight: bold;">Vendor Name : [[vendor_name]]</span></p><p><span [removed]="font-weight: bold;">Email is : [[email]]</span></p><p><span [removed]="font-weight: bold;">Please login to the admin panel to approve the vendor.</span></p><p><span [removed]="font-weight: bold;"><br></span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(3, 'Membership Upgrade Email', 'Membership Upgraded', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email : [[email]]</span></p><p><span [removed]="font-weight: bold;">Your Membership Type is [[package]]. </span></p><p><span [removed]="font-weight: bold;">Please contact with the </span>administrator team if you have any further question. Best wishes.</p><p><span [removed]="font-weight: bold;"><br></span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(4, 'Vendors Account Opening', 'Account Opening', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Thank you for registering at our site </span>[[sitename]]<span [removed]="font-weight: bold;">. </span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email is : [[email]]</span></p><p><span [removed]="font-weight: bold;"></span></p><p><span [removed]="font-weight: bold;">Password is : [[password]]</span></p><p><span [removed]="font-weight: bold;">Your account is now being reviewed by </span>administration team. Please wait for Admin approval. You will get a  confirmation email soon and after that you will be able to login from here : [[url]]</p><p><span [removed]="font-weight: bold;">Please contact with the </span>administration team if you have any further question. Best wishes.<br></p><p><span [removed]="font-weight: bold;"><br></span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(5, 'Users Account Opening', 'Account Opening', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Thank you for registering at our site&nbsp;</span>[[sitename]]<span [removed]="font-weight: bold;">.</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email is : [[email]]</span></p><p><span [removed]="font-weight: bold;"></span></p><p><span [removed]="font-weight: bold;">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p><span [removed]="font-weight: bold;">Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.<br></p><p><span [removed]="font-weight: bold;"><br></span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(6, 'Admins Account Opening', 'Account Opening', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Thank you for joining at our site&nbsp;</span>[[sitename]]<span [removed]="font-weight: bold;">.</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email is : [[email]]</span></p><p><span [removed]="font-weight: bold;"></span></p><p><span [removed]="font-weight: bold;">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p>&nbsp;Best wishes.</p><p><br></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(9, 'Vendor Payment', 'Admin to Vendor Payment', '<p>Dear <span> [[vendor_name]] ,<br></span></p><p>You have received a new payment from <span>[[from]].</span></p><p><span [removed]="font-weight: bold;">The Amount is : [[amount]].</span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(8, 'Vendor Package Upgrade', 'Vendor Package Upgrade ', '<p>A vendor has updated their package. Details are given below.<br></p><p><span [removed]="font-weight: bold;">Vendor Name : [[vendor_name]]</span></p><p><span [removed]="font-weight: bold;">Email is : [[email]]</span><br><span [removed]="font-weight: bold;"><span>Package Name is : [[vendor_package]]</span></span></p><p><span [removed]="font-weight: bold;"><span><span>Package Amount&nbsp; is : [[package_amount]]</span></span></span></p><p><span [removed]="font-weight: bold;">Please login to the admin panel to approve the vendor.</span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'Construction Support'),
(2, 'system_email', 'info@xfcfighter.com.au'),
(3, 'system_title', 'Construction Support'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english'),
(9, 'terms_conditions', '<p>terms and conditions</p>'),
(10, 'fb_appid', '384144461995754'),
(11, 'fb_secret', 'e8be929ace6deaf50d2a717834a03cc4'),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'kaka ji'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', ''),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', 'e8be929ace6deaf50d2a717834a03cc4'),
(44, 'contact_about', '<p>about contact</p>'),
(39, 'contact_phone', '00-000-00000'),
(40, 'contact_email', 'developer.activeitzone@gmail.com'),
(41, 'contact_website', 'www.yoursite.com'),
(42, 'footer_text', '<p>Bnaopk is multi-purpose construction platform where you can find the material for construction and contractors.</p>'),
(43, 'footer_category', 'null'),
(38, 'contact_address', 'Demo Address'),
(45, 'admin_notification_sound', 'ok'),
(46, 'admin_notification_volume', '7.47'),
(47, 'privacy_policy', '<p>Privacy Policy</p>'),
(48, 'discus_id', ''),
(49, 'home_notification_sound', 'ok'),
(50, 'homepage_notification_volume', '7.36'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'no'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'google'),
(58, 'vendor_system', 'ok'),
(59, 'cache_time', '0'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfasaa'),
(62, 'slides', 'ok'),
(63, 'preloader', '22'),
(64, 'preloader_bg', 'rgba(74,0,94,1)'),
(65, 'preloader_obj', 'rgba(255,255,255,1)'),
(66, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(67, 'google_api_key', ''),
(68, 'physical_product_activation', 'ok'),
(69, 'digital_product_activation', 'no'),
(70, 'data_all_brands', ''),
(79, 'google_analytics_key', 'UA-117985671-1'),
(71, 'data_all_vendors', '19:::Mujtaba;;;;;;20:::Mujtaba;;;;;;21:::sardarrehan1;;;;;;23:::Ahmed;;;;;;24:::ijaz;;;;;;26:::salmanbuilder;;;;;;28:::unus;;;;;;29:::hannan;;;;;;30:::nabeel;;;;;;31:::Haris;;;;;;32:::Asil'),
(72, 'smtp_host', 'ams-node4.websitehostserver.net'),
(73, 'smtp_port', '465'),
(74, 'smtp_user', 'info@xfcfighter.com.au'),
(75, 'smtp_pass', 'gateway@12'),
(76, 'mail_status', 'smtp'),
(77, 'captcha_status', 'no'),
(78, 'version', '1.5.3'),
(80, 'g_analytics_set', 'ok'),
(81, 'show_vendor_website', 'ok'),
(82, 'bundle_product_activation', 'no'),
(83, 'customer_product_activation', 'no'),
(84, 'wallet_system_set', 'no'),
(85, 'guest_checkout_set', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext,
  `Bangla` longtext,
  `Arabic` longtext,
  `French` longtext,
  `Chinese` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`) VALUES
(1, 'visit_home_page', 'Visit Home Page', 'দর্শন হোম পেজে', 'الصفحة الرئيسية زيارة', 'visite page d''accueil', '访问主页'),
(2, 'profile', 'Profile', 'প্রোফাইলে', 'الملف الشخصي', 'Profil', '轮廓'),
(3, 'logout', 'Logout', 'প্রস্থান', 'خروج', 'se déconnecter', '登出'),
(4, 'manage_languages', 'Manage Languages', 'প্রত্যেক পরিচালনা', 'إدارة اللغات', 'gérer langues', '管理语言'),
(5, 'add_language', 'Add Language', 'ভাষা যোগ', 'إضافة اللغة', 'ajouter la langue', '添加语言'),
(6, 'successfully_added!', 'Successfully Added!', 'সফলভাবে যোগ করা হয়েছে!', 'وأضاف بنجاح!', 'Ajouté avec succès!', '添加成功！'),
(7, 'back_to_language_list', 'Back To Language List', 'ফিরে ভাষা লিস্টে', 'العودة إلى القائمة لغة', 'Retour à la liste des langues', '回到语言列表'),
(8, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'সত্যিই এই ভাষা মুছে ফেলতে চান?', 'حقا تريد حذف هذه اللغة؟', 'voulez vraiment supprimer cette langue?', '真的要删除这个语言呢？'),
(9, 'settings_updated!', 'Settings Updated!', 'সেটিংস আপডেট!', 'ضبط تجديد!', 'Paramètres mis à jour!', '设置更新了！'),
(10, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'আপনি কি সত্যিই এই ভাষা মুছে দিতে চান?', 'هل حقا تريد حذف هذه اللغة؟', 'voulez-vous vraiment supprimer cette langue?', '你真的要删除这个语言呢？'),
(11, 'saving..', 'Saving..', 'সংরক্ষণ ..', 'إنقاذ..', 'économie..', '保存..'),
(12, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'لوحة القيادة', 'tableau de bord', '仪表板'),
(13, 'products', 'Products', 'পণ্য', 'المنتجات', 'Produits', '制品'),
(14, 'physical_products', 'Physical Products', 'শারীরিক পণ্য', 'المنتجات المادية', 'produits physiques', '实物产品'),
(15, 'category', 'Category', 'বিভাগ', 'فئة', 'Catégorie', '类别'),
(16, 'brands', 'Brands', 'ব্র্যান্ড', 'العلامات التجارية', 'marques', '品牌'),
(17, 'sub-category', 'Sub-category', 'উপ-বিভাগ', 'الفئة الفرعية', 'sous-catégorie', '子分类'),
(18, 'all_products', 'All Products', 'সব পণ্য', 'جميع المنتجات', 'tous les produits', '所有产品'),
(19, 'product_stock', 'Product Stock', 'পণ্য স্টক', 'الأسهم المنتج', 'stocks de produits', '产品库存'),
(20, 'digital_products', 'Digital Products', 'ডিজিটাল পণ্য', 'المنتجات الرقمية', 'les produits numériques', '数码产品'),
(21, 'all_digitals', 'All Digitals', 'সব সাংখ্যিক', 'جميع digitals', 'tous les digitals', '所有位数七段'),
(22, 'sale', 'Sale', 'বিক্রয়', 'تخفيض السعر', 'vente', '拍卖'),
(23, 'discount_coupon', 'Discount Coupon', 'ডিসকাউন্ট কুপন', 'كوبون الخصم', 'coupon de réduction', '折扣券'),
(24, 'ticket', 'Ticket', 'টিকিট', 'تذكرة', 'billet', '票'),
(25, 'reports', 'Reports', 'রিপোর্ট', 'تقارير', 'rapports', '报告'),
(26, 'product_compare', 'Product Compare', 'পণ্য তুলনা করুন', 'مقارنة المنتج', 'produit comparer', '产品比较'),
(27, 'product_wishes', 'Product Wishes', 'পণ্য শুভেচ্ছা', 'رغبات المنتج', 'souhaits de produits', '产品的愿望'),
(28, 'vendors', 'Vendors', 'বিক্রেতারা', 'الباعة', 'vendeurs', '供应商'),
(29, 'vendor_list', 'Vendor List', 'বিক্রেতা তালিকা', 'قائمة الموردين', 'liste de fournisseurs', '供应商名单'),
(30, 'vendor_payments', 'Vendor Payments', 'বিক্রেতা পেমেন্ট', 'مدفوعات البائعين', 'le paiement des fournisseurs', '供应商付款'),
(31, 'vendor_packages', 'Vendor Packages', 'বিক্রেতা প্যাকেজ', 'حزم بائع', 'forfaits fournisseurs', '供应商封装'),
(32, 'vendor''s_slides', 'Vendor''s Slides', 'বিক্রেতার স্লাইড', 'الشرائح البائع', 'Les diapositives de fournisseurs', '供应商的幻灯片'),
(33, 'customers', 'Customers', 'গ্রাহকদের', 'الزبائن', 'les clients', '顾客'),
(34, 'messaging', 'Messaging', 'মেসেজিং', 'الرسائل', 'Messagerie', '消息'),
(35, 'newsletters', 'Newsletters', 'নিউজলেটার', 'النشرات الإخبارية', 'bulletins', '新闻简报'),
(36, 'contact_messages', 'Contact Messages', 'যোগাযোগের বার্তা', 'رسائل الاتصال', 'messages de contact', '联系人的邮件'),
(37, 'blog', 'Blog', 'ব্লগ', 'مدونة', 'Blog', '博客'),
(38, 'blog_categories', 'Blog Categories', 'ব্লগ বিভাগ', 'فئات بلوق', 'catégories de blog', '博客类别'),
(39, 'all_blogs', 'All Blogs', 'সব ব্লগ', 'جميع بلوق', 'tous les blogs', '所有博客'),
(40, 'frontend_settings', 'Frontend Settings', 'ফ্রন্টএন্ড সেটিংস', 'إعدادات الواجهة', 'paramètres frontend', '前端设置'),
(41, 'slider_settings', 'Slider Settings', 'স্লাইডার সেটিংস', 'ضبط المنزلق', 'paramètres de curseur', '滑块设置'),
(42, 'layer_slider', 'Layer Slider', 'লেয়ার স্লাইডার', 'طبقة المنزلق', 'couche curseur', '层滑块'),
(43, 'top_slides', 'Top Slides', 'শীর্ষ স্লাইড', 'أعلى الشرائح', 'top diapositives', '顶部幻灯片'),
(44, 'display_settings', 'Display Settings', 'প্রদর্শন সেটিং', 'اعدادات العرض', 'paramètres d''affichage', '显示设置'),
(45, 'home_page', 'Home Page', 'হোম পেজে', 'الصفحة الرئيسية', 'page d''accueil', '主页'),
(46, 'contact_page', 'Contact Page', 'যোগাযোগের পৃষ্ঠায়', 'صفحة الاتصال', 'page de contact', '联系方式页面'),
(47, 'footer', 'Footer', 'পেয়াদা', 'تذييل', 'bas de page', '页脚'),
(48, 'theme_color', 'Theme Color', 'থিম রঙ', 'اللون موضوع', 'couleur du thème', '主题颜色'),
(49, 'logo', 'Logo', 'লোগো', 'شعار', 'logo', '商标'),
(50, 'favicon', 'Favicon', 'ফেভিকন', 'فافيكون', 'favicon', '图标'),
(51, 'fonts', 'Fonts', 'ফন্ট', 'الخطوط', 'polices', '字体'),
(52, 'preloader', 'Preloader', 'preloader', 'تحميل مسبق', 'preloader', '预载'),
(53, 'site_settings', 'Site Settings', 'সাইট সেটিং', 'إعدادات الموقع', 'les paramètres du site', '站点设置'),
(54, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'الاعدادات العامة', 'réglages généraux', '常规设置'),
(55, 'third_party_settings', 'Third Party Settings', 'তৃতীয় পক্ষের সেটিংস', 'إعدادات طرف ثالث', 'paramètres de tiers', '第三方设置'),
(56, 'build_responsive_pages', 'Build Responsive Pages', 'প্রতিক্রিয়াশীল পৃষ্ঠাগুলি বিল্ড', 'بناء صفحات استجابة', 'construire des pages sensibles', '建立反应灵敏的网页'),
(57, 'set_default_images', 'Set Default Images', 'সেট ডিফল্ট ইমেজ', 'صور مجموعة افتراضية', 'images ensemble par défaut', '设置默认图像'),
(58, 'business_settings', 'Business Settings', 'ব্যবসা সেটিংস', 'ضبط رجال الأعمال', 'les milieux d''affaires', '商业环境'),
(59, 'activation', 'Activation', 'সক্রিয়করণ', 'تفعيل', 'activation', '激活'),
(60, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'طريقة الدفع او السداد', 'mode de paiement', '付款方法'),
(61, 'currency_', 'Currency ', 'মুদ্রা ', 'عملة ', 'devise ', '货币 '),
(62, 'faqs', 'Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী', 'الأسئلة الأكثر شيوعا', 'faqs', '常见问题解答'),
(63, 'staffs', 'Staffs', 'কর্মীরা', 'الموظفين', 'états-majors', '员工'),
(64, 'all_staffs', 'All Staffs', 'সমস্ত লাঠি', 'جميع الموظفين', 'tous les états-majors', '全体员工'),
(65, 'staff_permissions', 'Staff Permissions', 'স্টাফ অনুমতি', 'أذونات الموظفين', 'permissions du personnel', '工作人员的权限'),
(66, 'language', 'Language', 'ভাষা', 'لغة', 'la langue', '语言'),
(67, 'manage_admin_profile', 'Manage Admin Profile', 'অ্যাডমিন প্রোফাইল পরিচালনা', 'إدارة الملف الشخصي ل admin', 'gérer le profil administrateur', '管理管理配置文件'),
(68, 'activate', 'Activate', 'সক্রিয় করা', 'تفعيل', 'activer', '启用'),
(69, 'SEO_proggres', 'SEO Proggres', 'এসইও proggres', 'proggres كبار المسئولين الاقتصاديين', 'proggres SEO', 'SEO proggres'),
(70, 'online_tutorial', 'Online Tutorial', 'অনলাইন টিউটোরিয়াল', 'البرنامج التعليمي على الانترنت', 'tutoriel en ligne', '在线教程'),
(71, 'checkout', 'Checkout', 'চেকআউট', 'الدفع', 'check-out', '查看'),
(72, 'deleted_successfully', 'Deleted Successfully', 'সফলভাবে মোছা', 'حذف بنجاح', 'supprimé avec succès', '成功删除'),
(73, 'cancelled', 'Cancelled', 'বাতিল করা হয়েছে', 'تم الالغاء', 'annulé', '取消'),
(74, 'cancel', 'Cancel', 'বাতিল', 'إلغاء', 'Annuler', '取消'),
(75, 'required', 'Required', 'প্রয়োজনীয়', 'مطلوب', 'Obligatoire', '需要'),
(76, 'must_be_a_number', 'Must Be A Number', 'অবশ্যই একটি সংখ্যা হবে', 'يجب أن يكون رقما', 'doit être un nombre', '必须是一个数字'),
(77, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা আবশ্যক', 'يجب أن يكون عنوان بريد إلكتروني صالح', 'doit être une adresse e-mail valide', '必须是一个有效的E-mail地址'),
(78, 'save', 'Save', 'রক্ষা', 'حفظ', 'enregistrer', '保存'),
(79, 'product_published!', 'Product Published!', 'পণ্য প্রকাশিত!', 'المنتج نشر!', 'produit publié!', '产品发表！'),
(80, 'product_unpublished!', 'Product Unpublished!', 'পণ্য অপ্রকাশিত!', 'المنتج غير منشورة!', 'produit inédit!', '产品未公布！'),
(81, 'product_featured!', 'Product Featured!', 'পণ্য বৈশিষ্ট্যযুক্ত করা হবে!', 'المنتج المميز!', 'produit vedette!', '产品特色！'),
(82, 'product_unfeatured!', 'Product Unfeatured!', 'পণ্য unfeatured!', 'المنتج unfeatured!', 'produit unfeatured!', '产品unfeatured！'),
(83, 'product_in_todays_deal!', 'Product In Todays Deal!', 'আজকের মধ্যে পণ্য মোকাবেলা!', 'المنتج في اليوم التعامل!', 'produit aujourd''hui face!', '产品在今天的交易！'),
(84, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'পণ্য আজকের ডিল থেকে সরানো!', 'منتج إزالة من صفقة اليوم!', 'produit retiré de la retransmission de ce deal!', '产品从今天的交易中删除！'),
(85, 'slider_published!', 'Slider Published!', 'স্লাইডার প্রকাশিত!', 'المنزلق نشرت!', 'curseur publié!', '滑块公布！'),
(86, 'slider_unpublished!', 'Slider Unpublished!', 'স্লাইডার অপ্রকাশিত!', 'المنزلق غير منشورة!', 'curseur inédit!', '滑块未公布！'),
(87, 'page_published!', 'Page Published!', 'পৃষ্ঠা প্রকাশিত!', 'الصفحة نشرت!', 'page publiée!', '公布的一页！'),
(88, 'page_unpublished!', 'Page Unpublished!', 'পৃষ্ঠা অপ্রকাশিত!', 'الصفحة غير منشورة!', 'Page inédite!', '页未公布！'),
(89, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'নোটিফিকেশন সাউন্ড সক্রিয়!', 'صوت الإعلام تمكين!', 'notification sonore activé!', '通知声音启用！'),
(90, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'নোটিফিকেশন সাউন্ড অক্ষম!', 'صوت الإعلام تعطيل!', 'notification sonore désactivé!', '通知声音禁用！'),
(91, 'google_login_enabled!', 'Google Login Enabled!', 'গুগল লগ-ইন সক্রিয়!', 'جوجل تسجيل الدخول تمكين!', 'google connexion activé!', '谷歌登录启用！'),
(92, 'google_login_disabled!', 'Google Login Disabled!', 'গুগল লগইন অক্ষম!', 'جوجل تسجيل الدخول تعطيل!', 'google connexion désactivé!', '谷歌登录禁用！'),
(93, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'ফেসবুক লগ-ইন সক্রিয়!', 'الفيسبوك تسجيل الدخول تمكين!', 'facebook connexion activé!', 'Facebook登录启用！'),
(94, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'ফেসবুক লগইন অক্ষম!', 'الفيسبوك تسجيل الدخول تعطيل!', 'facebook connexion désactivé!', 'Facebook登录禁用！'),
(95, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'পেপ্যাল ​​অক্ষম!', 'الدفع باي بال تعطيل!', 'paiement paypal désactivé!', '支付宝付款禁用！'),
(96, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'পেপাল পেমেন্ট সক্রিয়!', 'الدفع باي بال تمكين!', 'le paiement par PayPal activé!', '支付宝付款启用！'),
(97, 'slider_enabled!', 'Slider Enabled!', 'স্লাইডার সক্রিয়!', 'المنزلق تمكين!', 'curseur activé!', '滑块启用！'),
(98, 'slider_disabled!', 'Slider Disabled!', 'স্লাইডার অক্ষম!', 'المنزلق تعطيل!', 'curseur désactivé!', '滑块禁用！'),
(99, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'নগদ পেমেন্ট সক্রিয়!', 'الدفع نقدا تمكين!', 'paiement en espèces activé!', '现金支付启用！'),
(100, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'নগদ পেমেন্ট নিষ্ক্রিয়!', 'الدفع نقدا تعطيل!', 'paiement en espèces désactivé!', '现金支付禁用！'),
(101, 'enabled!', 'Enabled!', 'সক্রিয়!', 'تمكين!', 'activée!', '启用！'),
(102, 'disabled!', 'Disabled!', 'অক্ষম!', 'معاق!', 'désactivée!', '禁用！'),
(103, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'ই-মেইলের বিক্রেতা পাঠানো!', 'إشعار البريد الإلكتروني أرسلت إلى بائع!', 'courriel de notification envoyé au fournisseur!', '通知电子邮件发送给供应商！'),
(104, 'working...', 'Working...', 'কাজ করছে ...', 'العمل ...', 'travailler...', '加工...'),
(105, 'no', 'No', 'না', 'لا', 'non', '没有'),
(106, 'name', 'Name', 'নাম', 'اسم', 'prénom', '名称'),
(107, 'icon', 'Icon', 'আইকন', 'أيقونة', 'icône', '图标'),
(108, 'publish', 'Publish', 'প্রকাশ করা', 'نشر', 'publier', '发布'),
(109, 'options', 'Options', 'অপশন', 'خيارات', 'Options', '选项'),
(110, 'language_enabled', 'Language Enabled', 'ভাষা সক্রিয়', 'لغة سكريبت', 'langue activée', '语言启用'),
(111, 'language_disabled', 'Language Disabled', 'ভাষা অক্ষম', 'لغة تعطيل', 'langue désactivé', '禁用语'),
(112, 'edit_language_list', 'Edit Language List', 'সম্পাদনা নতুন ভাষাটি তালিকায় আগে', 'تحرير القائمة لغة', 'modifier la liste des langues', '编辑语言列表'),
(113, 'successfully_edited!', 'Successfully Edited!', 'সফলভাবে সম্পাদিত!', 'بنجاح تحريرها!', 'édité avec succès!', '编辑成功！'),
(114, 'set_translations', 'Set Translations', 'সেট অনুবাদের', 'تعيين ترجمة', 'traductions set', '译文集'),
(115, 'edit_language', 'Edit Language', 'সম্পাদনা ভাষা', 'تحرير لغة', 'modifier la langue', '编辑语言'),
(116, 'edit', 'Edit', 'সম্পাদন করা', 'تحرير', 'modifier', '编辑'),
(117, 'delete_language', 'Delete Language', 'ভাষা মুছতে', 'حذف اللغة', 'supprimer la langue', '删除语言'),
(118, 'select_language', 'Select Language', 'ভাষা নির্বাচন কর', 'اختر اللغة', 'Choisir la langue', '选择语言'),
(119, 'word', 'Word', 'শব্দ', 'كلمة', 'mot', '字'),
(120, 'translation', 'Translation', 'অনুবাদ', 'ترجمة', 'Traduction', '翻译'),
(121, 'translate', 'Translate', 'অনুবাদ', 'ترجم', 'Traduire', '翻译'),
(122, 'save_all', 'Save All', 'সব সংরক্ষণ করুন', 'احفظ الكل', 'sauver tous', '保存全部'),
(123, 'saving', 'Saving', 'রক্ষা', 'إنقاذ', 'économie', '保存'),
(124, 'updated!', 'Updated!', 'আপডেট!', 'تحديث!', 'actualisé!', '更新！'),
(125, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'সত্যিই এই শব্দ মুছে ফেলতে চান?', 'حقا تريد حذف هذه الكلمة؟', 'voulez vraiment supprimer ce mot?', '真的要删除这个词？'),
(126, 'delete', 'Delete', 'মুছে ফেলা', 'حذف', 'effacer', '删除'),
(127, 'home', 'Home', 'বাড়ি', 'الصفحة الرئيسية', 'domicile', '家'),
(128, 'subtotal', 'Subtotal', 'উপমোট', 'حاصل الجمع', 'Sous-Total', '小计'),
(129, 'close', 'Close', 'ঘনিষ্ঠ', 'أغلق', 'Fermer', '关'),
(130, 'faq', 'Faq', 'অনবরত জিজ্ঞাসিত প্রশ্ন', 'التعليمات', 'FAQ', '常问问题'),
(131, 'login', 'Login', 'লগইন', 'تسجيل الدخول', 's''identifier', '登录'),
(132, 'registration', 'Registration', 'নিবন্ধন', 'التسجيل', 'enregistrement', '注册'),
(133, 'customer_registration', 'Customer Registration', 'গ্রাহক নিবন্ধন', 'تسجيل العملاء', 'enregistrement des clients', '客户注册'),
(134, 'vendor_registration', 'Vendor Registration', 'বিক্রেতার নিবন্ধন', 'تسجيل البائعين', 'l''inscription des fournisseurs', '供应商登记'),
(135, 'what_are_you_looking_for', 'What Are You Looking For', 'আপনি কি খুজছেন', 'عما تبحث', 'que cherchez-vous', '你在找什么'),
(136, 'select', 'Select', 'নির্বাচন করা', 'اختار', 'sélectionner', '选择'),
(137, 'all_categories', 'All Categories', 'সব ধরনের', 'جميع الفئات', 'toutes catégories', '所有类别'),
(138, 'product', 'Product', 'পণ্য', 'المنتج', 'produit', '产品'),
(139, 'vendor', 'Vendor', 'বিক্রেতা', 'بائع', 'vendeur', '供应商'),
(140, 'compare', 'Compare', 'তুলনা করা', 'قارن', 'comparer', '比较'),
(141, 'item(s)', 'Item(s)', 'বস্তু (গুলি)', 'العناصر)', 'articles)', '项目（S）'),
(142, 'homepage', 'Homepage', 'হোমপেজে', 'الصفحة الرئيسية', 'page d''accueil', '主页'),
(143, 'all_sub_categories', 'All Sub Categories', 'সব সাব আরও', 'جميع الفئات الفرعية', 'toutes les sous-catégories', '所有子类'),
(144, 'featured_products', 'Featured Products', 'বৈশিষ্ট্যযুক্ত পণ্য', 'منتجات مميزة', 'produits présentés', '特色产品'),
(145, 'todays_deal', 'Todays Deal', 'আজকের চুক্তি', 'صفقة اليوم', 'la retransmission de ce deal', '今天的交易'),
(146, 'all_brands', 'All Brands', 'সব ব্র্যান্ডের', 'جميع العلامات التجارية', 'toutes les marques', '所有品牌'),
(147, 'all_vendors', 'All Vendors', 'সব বিক্রেতারা', 'جميع البائعين', 'tous les fournisseurs', '所有厂商'),
(148, 'blogs', 'Blogs', 'ব্লগ', 'بلوق', 'blogs', '博客'),
(149, 'store_locator', 'Store Locator', 'দোকান লোকেটার', 'فروعنا', 'localisateur de magasin', '商店定位器'),
(150, 'contact', 'Contact', 'যোগাযোগ', 'اتصال', 'contact', '联系'),
(151, 'more', 'More', 'অধিক', 'أكثر', 'plus', '更多'),
(152, 'latest_products', 'Latest Products', 'সাম্প্রতিক পণ্যসমূহ', 'آخر المنتجات', 'derniers produits', '最新产品'),
(153, 'more_categories', 'More Categories', 'আরো বিভাগ', 'المزيد من التصنيفات', 'plus de catégories', '多个类别'),
(154, 'today''s_deal', 'Today''s Deal', 'আজকের চুক্তি', 'صفقة اليوم', 'l''offre d''aujourd''hui', '今天的交易'),
(155, 'quick_view', 'Quick View', 'তারাতারি দেখা', 'نظرة سريعة', 'aperçu rapide', '快速浏览'),
(156, 'search', 'Search', 'অনুসন্ধান', 'بحث', 'chercher', '搜索'),
(157, 'latest', 'Latest', 'সর্বশেষ', 'آخر', 'dernier', '最新'),
(158, 'featured', 'Featured', 'সুগঠনবিশিষ্ট', 'متميز', 'en vedette', '精选'),
(159, 'discount', 'Discount', 'ডিসকাউন্ট', 'خصم', 'remise', '折扣'),
(160, 'add_to_wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'إضافة إلى سلة', 'ajouter à la liste de souhaits', '加入收藏'),
(161, 'add_to_cart', 'Add To Cart', 'কার্ট যোগ', 'أضف إلى السلة', 'ajouter au panier', '添加到购物车'),
(162, 'out_of_stock', 'Out Of Stock', 'স্টক আউট', 'إنتهى من المخزن', 'rupture de stock', '缺货'),
(163, 'visit', 'Visit', 'দর্শন', 'زيارة', 'visite', '访问'),
(164, 'recently_viewed', 'Recently Viewed', 'সম্প্রতি দেখা', 'شوهدت مؤخرا', 'vu récemment', '最近浏览过的'),
(165, 'most_viewed', 'Most Viewed', 'সর্বাধিক দেখা', 'الأكثر مشاهدة', 'le plus regardé', '最受关注'),
(166, 'our_available_brands', 'Our Available Brands', 'আমাদের উপলব্ধ ব্রান্ডের', 'علاماتنا التجارية المتاحة', 'nos marques disponibles', '我们现有的品牌'),
(167, 'email_address', 'Email Address', 'ই-মেইল ঠিকানা', 'عنوان البريد الإلكتروني', 'adresse e-mail', '电子邮件地址'),
(168, 'subscribe', 'Subscribe', 'সাবস্ক্রাইব', 'الاشتراك', 'souscrire', '订阅'),
(169, 'categories', 'Categories', 'বিভাগ', 'الفئات', 'Catégories', '类别'),
(170, 'useful_links', 'Useful Links', 'উপকারী সংজুক', 'روابط مفيدة', 'Liens utiles', '有用的链接'),
(171, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'اتصل بنا', 'Contactez nous', '联系我们'),
(172, 'address', 'Address', 'ঠিকানা', 'عنوان', 'adresse', '地址'),
(173, 'phone', 'Phone', 'ফোন', 'هاتف', 'téléphone', '电话'),
(174, 'website', 'Website', 'ওয়েবসাইট', 'موقع الكتروني', 'site Internet', '网站'),
(175, 'email', 'Email', 'ই-মেইল', 'البريد الإلكتروني', 'email', '电子邮件'),
(176, 'all_rights_reserved', 'All Rights Reserved', 'সর্বস্বত্ব সংরক্ষিত', 'كل الحقوق محفوظة', 'tous les droits sont réservés', '版权所有'),
(177, 'terms_&_condition', 'Terms & Condition', 'বিধি - নিষেধ এবং শর্তাবলী', 'الشروط والأحكام', 'termes et conditions', '条款和条件'),
(178, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'سياسة الخصوصية', 'politique de confidentialité', '隐私政策'),
(179, 'product_added_to_cart', 'Product Added To Cart', 'পণ্য কার্ট যোগ', 'وأضاف المنتج إلى سلة التسوق', 'produit ajouté au panier', '产品加入购物车'),
(180, 'added_to_cart', 'Added To Cart', 'কার্ট যোগ', 'إضافة إلى العربة', 'ajouté au panier', '添加到购物车'),
(181, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'পণ্যের পরিমাণ প্রাপ্যতা অতিক্রম!', 'كمية المنتج تتجاوز توافر!', 'quantité de produit dépasse la disponibilité!', '产品数量超过供应！'),
(182, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'পণ্য ইতিমধ্যে কার্ট যোগ করা হয়েছে!', 'وأضاف المنتج بالفعل إلى السلة', 'produit déjà ajouté au panier!', '产品已添加到购物车！'),
(183, 'product_added_to_wishlist', 'Product Added To Wishlist', 'পণ্য লিস্টে যোগ', 'وأضاف المنتج إلى سلة', 'Produit ajouté à la liste de souhaits', '产品加入心愿'),
(184, 'wished', 'Wished', 'কাম্য', 'تمنى', 'souhaité', '希望'),
(185, 'wishing..', 'Wishing..', 'তবেই ..', 'متمنيا ..', 'souhaitant ..', '希望..'),
(186, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'পণ্যের তালিকা থেকে সরানো', 'المنتج إزالتها من سلة', 'produit retiré de la liste de souhaits', '从产品的愿望清单中移除'),
(187, 'product_added_to_compared', 'Product Added To Compared', 'পণ্য তুলনা যোগ করা', 'وأضاف المنتج مقارنة', 'Produit ajouté au rapport', '产品附加值比较'),
(188, 'compared', 'Compared', 'তুলনা', 'مقارنة', 'par rapport', '相比'),
(189, 'working..', 'Working..', 'কাজ ..', 'العمل ..', 'travailler..', '加工..'),
(190, 'product_removed_from_compare', 'Product Removed From Compare', 'পণ্য তুলনা থেকে সরানো', 'منتج إزالة من المقارنة', 'produit retiré de comparer', '从对比产品中删除'),
(191, 'compare_category_full', 'Compare Category Full', 'বিভাগ পূর্ণ তুলনা', 'مقارنة فئة كاملة', 'comparer la catégorie complète', '比较全品类'),
(192, 'product_already_added_to_compare', 'Product Already Added To Compare', 'পণ্য ইতিমধ্যে তুলনা যোগ করা', 'وأضاف المنتج بالفعل للمقارنة', 'produit déjà ajouté à comparer', '产品已添加到比较'),
(193, 'product_rated_successfully', 'Product Rated Successfully', 'পণ্য সফলভাবে রেট', 'المنتج تصنيفا بنجاح', 'produit évalué avec succès', '产品额定成功'),
(194, 'product_rating_failed', 'Product Rating Failed', 'পণ্য রেটিং ব্যর্থ', 'فشل تصنيف المنتج', 'Evaluation du produit a échoué', '产品等级不合格'),
(195, 'you_already_rated_this_product', 'You Already Rated This Product', 'আপনি ইতিমধ্যে এই পণ্য রেট', 'كنت تصنيفا بالفعل هذا المنتج', 'vous avez déjà évalué ce produit', '您已经评价过此产品'),
(196, 'you_already_subscribed', 'You Already Subscribed', 'আপনি ইতিমধ্যে সাবস্ক্রাইব করা', 'كنت قد اشتركت بالفعل', 'vous êtes déjà inscrit', '你已经订阅'),
(197, 'you_subscribed_successfully', 'You Subscribed Successfully', 'আপনি সফলভাবে সাবস্ক্রাইব', 'كنت قد اشتركت بنجاح', 'vous avez souscrit avec succès', '你成功订阅'),
(198, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'আপনি ইতিমধ্যে এই ব্রাউজার থেকে তিনবার সাবস্ক্রাইব করা', 'كنت قد اشتركت بالفعل ثلاث مرات من هذا المتصفح', 'vous êtes déjà inscrit trois fois à partir de ce navigateur', '你已经订阅三次从这个浏览器'),
(199, 'logging_in..', 'Logging In..', 'লগ-ইন ..', 'تسجيل الدخول..', 'Se connecter..', '在登录..'),
(200, 'you_logged_in_successfully', 'You Logged In Successfully', 'আপনি সফলভাবে লগ', 'قمت بتسجيل الدخول بنجاح', 'vous vous êtes connecté avec succès', '你登录成功'),
(201, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'লগইন ব্যর্থ! </font><font>আবার চেষ্টা কর!', 'فشل تسجيل الدخول! </font><font>حاول ثانية!', 'échec de la connexion! </font><font>réessayer!', '登录失败！</font><font>再试一次！'),
(202, 'you_registered_successfully', 'You Registered Successfully', 'আপনি সাফল্যের সাথে নিবন্ধিত', 'قمت بتسجيل بنجاح', 'vous avez enregistré avec succès', '你注册成功'),
(203, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'রেজিস্ট্রেশন ব্যর্থ হয়েছে! </font><font>আবার চেষ্টা কর!', 'فشل في التسجيل! </font><font>حاول ثانية!', 'échec de l''enregistrement! </font><font>réessayer!', '注册失败！</font><font>再试一次！'),
(204, 'submitting..', 'Submitting..', 'জমা ..', 'تقديم..', 'soumission..', '提交..'),
(205, 'email_sent_successfully', 'Email Sent Successfully', 'ইমেল সফলভাবে পাঠানো', 'ارسال البريد الالكتروني بنجاح', 'E-mail envoyé avec succès', '电子邮件发送成功'),
(206, 'email_does_not_exist!', 'Email Does Not Exist!', 'ই-মেইল অস্তিত্ব নেই!', 'البريد الإلكتروني غير موجود!', 'email n''existe pas!', '电子邮件不存在！'),
(207, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'ই-মেইল পাঠানো ব্যর্থ! </font><font>আবার চেষ্টা কর', 'إرسال البريد الإلكتروني فشل! </font><font>حاول ثانية', 'email envoi a échoué! </font><font>réessayer', '电子邮件发送失败！</font><font>再试一次'),
(208, 'logging_in', 'Logging In', 'লগ-ইন', 'تسجيل الدخول', 'Se connecter', '在登录'),
(209, 'adding_to_cart..', 'Adding To Cart..', 'কার্ট যোগ ..', 'مشيرا إلى السلة ..', 'd''ajouter au panier ..', '添加到购物车..'),
(210, 'product_removed_from_cart', 'Product Removed From Cart', 'পণ্য কার্ট থেকে সরানো', 'المنتج إزالتها من سلة', 'produit retiré du panier', '从产品的购物车中移除'),
(211, 'the_field_is_required', 'The Field Is Required', 'ক্ষেত্র প্রয়োজন বোধ করা হয়', 'مطلوب مجال', 'le champ est obligatoire', '现场要求'),
(212, 'enter_a_valid_email_address', 'Enter A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা লিখুন', 'أدخل عنوان بريد إلكتروني صالح', 'Entrez une adresse mail valide', '输入一个有效的电子邮件地址'),
(213, 'applying..', 'Applying..', 'আবেদন ..', 'تطبيق ..', 'application ..', '应用..'),
(214, 'coupon_not_valid', 'Coupon Not Valid', 'কুপন বৈধ নয়', 'القسيمة غير صالحة', 'coupon pas valide', '优惠券无效'),
(215, 'coupon_discount_successful', 'Coupon Discount Successful', 'কুপন ডিসকাউন্ট সফল', 'قسيمة خصم ناجحة', 'coupon de réduction réussie', '优惠券折扣成功'),
(216, 'favored', 'Favored', 'বিশেষ সুবিধাপ্রাপ্ত', 'مفضل', 'favorisé', '青睐'),
(217, 'successful_login', 'Successful Login', 'সফল অনুপ্রবেশ', 'نجاح تسجيل الدخول', 'Connexion réussie', '登录成功'),
(218, 'login_failed', 'Login Failed', 'লগইন ব্যর্থ', 'فشل تسجيل الدخول', 'échec de la connexion', '登录失败'),
(219, 'sign_in_to_your_account', 'Sign In To Your Account', 'আপনার অ্যাকাউন্টে সাইন ইন করুন', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', '登录到您的帐户'),
(220, 'password', 'Password', 'পাসওয়ার্ড', 'كلمه السر', 'mot de passe', '密码'),
(221, 'forget_password', 'Forget Password', 'পাসওয়ার্ড ভুলে গেছেন', 'نسيت كلمة', 'mot de passe oublié', '忘记密码'),
(222, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'ই-মেইল নতুন পাসওয়ার্ড দিয়ে ডেকে পাঠিয়েছি!', 'تم إرسال رسالة إلكترونية مع كلمة مرور جديدة!', 'email envoyé avec le nouveau mot de passe!', '电子邮件与新密码发送！'),
(223, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছেন', 'هل نسيت كلمة المرور', 'mot de passe oublié', '忘记密码'),
(224, 'sign_in', 'Sign In', 'প্রবেশ কর', 'تسجيل الدخول', 'se connecter', '签到'),
(225, 'this_field_is_required', 'This Field Is Required', 'ঘরটি অবশ্যই পূরণ করতে হবে', 'هذه الخانة مطلوبه', 'Ce champ est requis', '这是必填栏'),
(226, 'signing_in...', 'Signing In...', 'সাইন ইন...', 'تسجيل الدخول...', 'Connectez-vous...', '登录中...'),
(227, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'আপনার ই-মেইল পাঠানো নতুন পাসওয়ার্ড', 'كلمة المرور الجديدة إرسالها إلى البريد الإلكتروني الخاص بك', 'nouveau mot de passe envoyé à votre email', '发送到您的邮箱的新密码'),
(228, 'login_failed!', 'Login Failed!', 'লগইন ব্যর্থ!', 'فشل تسجيل الدخول!', 'échec de la connexion!', '登录失败！'),
(229, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'ভুল ই-মেইল ঠিকানা! </font><font>আবার চেষ্টা কর', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول ثانية', 'Adresse e-mail mal! </font><font>réessayer', '错误的电子邮件地址！</font><font>再试一次'),
(230, 'login_successful!', 'Login Successful!', 'সফল লগইন!', 'تم الدخول بنجاح!', 'connexion réussie!', '登陆成功！'),
(231, 'SUCCESS!', 'SUCCESS!', 'সাফল্য!', 'نجاح!', 'LE SUCCÈS!', '成功！'),
(232, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট করুন', 'اعادة تعيين كلمة السر', 'réinitialiser le mot de passe', '重设密码'),
(233, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'অনুমোদন না অ্যাকাউন্ট. </font><font>অনুমোদনের জন্য অপেক্ষা করুন.', 'حساب غير معتمدة. </font><font>الانتظار للموافقة عليها.', 'compte pas approuvé. </font><font>attendre l''approbation.', '占未获批准。</font><font>等待批准。'),
(234, '24_hours_stock', '24 Hours Stock', '24 ঘণ্টা স্টক', 'الأسهم 24 ساعة', '24 heures Stock', '24小时股票'),
(235, '24_hours_sale', '24 Hours Sale', '24 ঘণ্টা বিক্রয়', '24 ساعة بيع', '24 heures vente', '24小时销售'),
(236, '24_hours_destroy', '24 Hours Destroy', '24 ঘণ্টা ধ্বংস', '24 ساعة تدمر', '24 heures détruire', '24小时破坏'),
(237, 'total_vendors', 'Total Vendors', 'মোট বিক্রেতারা', 'مجموع الباعة', 'vendeurs au total', '总供应商'),
(238, 'pending_vendors', 'Pending Vendors', 'বিচারাধীন বিক্রেতারা', 'الباعة في انتظار', 'fournisseurs en attente', '未决的供应商'),
(239, 'vendor_stattistics', 'Vendor Stattistics', 'বিক্রেতার stattistics', 'stattistics بائع', 'stattistics fournisseurs', '供应商stattistics'),
(240, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'বিভাগ জ্ঞানী মাসিক স্টক', 'فئة الأسهم الشهري الحكمة', 'catégorie encours mensuel sage', '明智类股票每月'),
(241, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'বিভাগ জ্ঞানী মাসিক ধ্বংস', 'فئة الحكمة تدمير شهريا', 'catégorie sage mensuel détruire', '类别明智每月破坏'),
(242, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'বিভাগ জ্ঞানী মাসিক বিক্রয়', 'الفئة بيع الشهري الحكمة', 'catégorie vente mensuelle sage', '类别明智每月销售'),
(243, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'বিভাগ জ্ঞানী মাসিক গ্র্যান্ড মুনাফা', 'فئة الحكمة الربح الكبير الشهري', 'catégorie sage mensuel grande profit', '明智类盛大每月利润'),
(244, 'cost', 'Cost', 'মূল্য', 'كلفة', 'Coût', '成本'),
(245, 'value', 'Value', 'মূল্য', 'القيمة', 'valeur', '值'),
(246, 'loss', 'Loss', 'ক্ষতি', 'خسارة', 'perte', '失利'),
(247, 'profit', 'Profit', 'মুনাফা', 'ربح', 'le profit', '利润'),
(248, 'manage_categories_(_physical_product_)', 'Manage Categories ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) পরিচালনা', 'إدارة الفئات (منتج مادي)', 'gérer des catégories (produit physique)', '管理类（产品实物）'),
(249, 'add_category_(_physical_product_)', 'Add Category ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) যোগ', 'إضافة فئة (منتج مادي)', 'ajouter la catégorie (produit physique)', '添加类别（产品实物）'),
(250, 'create_category', 'Create Category', 'বিভাগ তৈরি', 'إنشاء فئة', 'créer la catégorie', '创建类别'),
(251, 'banner', 'Banner', 'নিশান', 'راية', 'bannière', '旗帜'),
(252, 'edit_category_(_physical_product_)', 'Edit Category ( Physical Product )', 'সম্পাদনা বিভাগ (শারীরিক পণ্য)', 'تحرير فئة (منتج مادي)', 'modifier la catégorie (produit physique)', '编辑类（实物产品）'),
(253, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'সত্যিই এই মুছে ফেলতে চান?', 'حقا تريد حذف هذا؟', 'voulez vraiment supprimer ce?', '真的要删除吗？'),
(254, 'category_name', 'Category Name', 'বিভাগ নাম', 'اسم الفئة', 'Nom de catégorie', '类别名称'),
(255, 'category_banner', 'Category Banner', 'বিভাগ ব্যানার', 'فئة راية', 'catégorie bannière', '类别旗帜'),
(256, 'select_category_banner', 'Select Category Banner', 'বিভাগ নির্বাচন করুন ব্যানার', 'حدد فئة راية', 'sélectionnez la catégorie bannière', '选择类别旗帜'),
(257, 'manage_brands_(_physical_product_)', 'Manage Brands ( Physical Product )', 'ব্রান্ডের (শারীরিক পণ্য) পরিচালনা', 'إدارة العلامات التجارية (منتج مادي)', 'gérer les marques (produit physique)', '管理品牌（产品实物）'),
(258, 'add_brand_(_physical_product_)', 'Add Brand ( Physical Product )', 'ব্র্যান্ড (শারীরিক পণ্য) যোগ', 'إضافة العلامة التجارية (منتج مادي)', 'ajouter la marque (produit physique)', '加上品牌（产品实物）'),
(259, 'create_brand', 'Create Brand', 'ব্র্যান্ড তৈরি', 'إنشاء العلامة التجارية', 'créer la marque', '创造品牌'),
(260, 'edit_brand_(_physical_product_)', 'Edit Brand ( Physical Product )', 'সম্পাদনা ব্র্যান্ড (শারীরিক পণ্য)', 'تحرير العلامة التجارية (منتج مادي)', 'modifier la marque (produit physique)', '编辑品牌（产品实物）'),
(261, 'brand', 'Brand', 'তরবার', 'علامة تجارية', 'marque', '牌'),
(262, 'brand_name', 'Brand Name', 'পরিচিতিমুলক নাম', 'اسم العلامة التجارية', 'marque', '品牌'),
(263, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'شعار العلامة التجارية', 'logo de la marque', '品牌标志'),
(264, 'select_brand_logo', 'Select Brand Logo', 'নির্বাচন ব্র্যান্ড লোগো', 'حدد شعار العلامة التجارية', 'sélectionnez la marque logo', '选择品牌标志'),
(265, 'manage_sub_categories_(_physical_product_)', 'Manage Sub Categories ( Physical Product )', 'সাব আরও পরিচালনা (শারীরিক পণ্য)', 'إدارة الفئات الفرعية (منتج مادي)', 'gérer les sous-catégories (produit physique)', '管理子类别（产品实物）'),
(266, 'add_sub-category_(_physical_product_)', 'Add Sub-category ( Physical Product )', 'উপ-বিভাগ (শারীরিক পণ্য) যোগ', 'إضافة فئة فرعية (منتج مادي)', 'ajouter des sous-catégories (produit physique)', '添加子类（实物产品）'),
(267, 'create_sub_category', 'Create Sub Category', 'সাব বিভাগ তৈরি', 'إنشاء فئة فرعية', 'créer la sous catégorie', '创建子类别'),
(268, 'edit_sub-category_(_physical_product_)', 'Edit Sub-category ( Physical Product )', 'সম্পাদনা উপ-বিভাগ (শারীরিক পণ্য)', 'تعديل فئة فرعية (منتج مادي)', 'modifier la sous-catégorie (produit physique)', '编辑子类（实物产品）'),
(269, 'sub_category', 'Sub Category', 'সাব বিভাগ', 'الفئة الفرعية', 'sous catégorie', '子分类'),
(270, 'sub-category_name', 'Sub-category Name', 'উপ-বিভাগ নাম', 'اسم الفئة الفرعية', 'nom de sous-catégorie', '子类别名称'),
(271, 'sub-category_banner', 'Sub-category Banner', 'উপ-বিভাগ ব্যানার', 'الفئة الفرعية راية', 'sous-catégorie bannière', '子类的旗帜'),
(272, 'select_sub-category_banner', 'Select Sub-category Banner', 'নির্বাচন উপ-বিভাগ ব্যানার', 'حدد فئة فرعية لافتة', 'sélectionner la sous-catégorie bannière', '选择子类的旗帜'),
(273, 'manage_product_stock', 'Manage Product Stock', 'পণ্য স্টক পরিচালনা', 'إدارة المخزون المنتج', 'gérer des stocks de produits', '管理产品库存'),
(274, 'destroy_product_entry', 'Destroy Product Entry', 'পণ্য এন্ট্রি ধ্বংস', 'تدمير دخول المنتج', 'détruire l''entrée du produit', '销毁产品入境'),
(275, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'যোগ স্টক এন্ট্রি নেয়া!', 'إضافة إدخال الأوراق المالية اتخذت!', 'ajouter l''entrée en stock pris!', '采取增加股票入门！'),
(276, 'add_product_stock', 'Add Product Stock', 'পণ্য স্টক যোগ', 'إضافة الأسهم المنتج', 'ajouter des stocks de produits', '增加产品库存'),
(277, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'ধ্বংস এন্ট্রি নেয়া!', 'تدمير دخول اتخذت!', 'détruire l''entrée prise!', '摧毁采取入口！'),
(278, 'create_stock', 'Create Stock', 'স্টক তৈরি', 'إنشاء الاسهم', 'créer un stock', '创建库存'),
(279, 'ID', 'ID', 'আইডি', 'هوية شخصية', 'ID', 'ID'),
(280, 'product_title', 'Product Title', 'পণ্য শিরোনাম', 'عنوان المنتج', 'titre du produit', '产品称号'),
(281, 'entry_type', 'Entry Type', 'এন্ট্রি টাইপ', 'نوع دخول', 'Type d''entrée', '条目类型'),
(282, 'quantity', 'Quantity', 'পরিমাণ', 'كمية', 'Quantité', '数量'),
(283, 'note', 'Note', 'বিঃদ্রঃ', 'ملاحظة', 'Remarque', '注意'),
(284, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'কমে পরিমাণ যোগ করা হবে.', 'وستضاف خفض كمية.', 'quantité réduite sera ajoutée.', '减少量将增加。'),
(285, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'যোগ পরিমাণ হ্রাস করা হবে.', 'وسيتم خفض الكمية المضافة.', 'quantité ajoutée sera réduite.', '添加量将减少。'),
(286, 'rate', 'Rate', 'হার', 'معدل', 'taux', '率'),
(287, 'total', 'Total', 'মোট', 'مجموع', 'total', '总'),
(288, 'reason_note', 'Reason Note', 'কারণ নোট', 'السبب مذكرة', 'raison Note', '原因笔记'),
(289, 'monetary_loss', 'Monetary Loss', 'আর্থিক ক্ষতি', 'فقدان النقدية', 'perte monétaire', '金钱上的损失'),
(290, 'manage_categories_(_digital_product_)', 'Manage Categories ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) পরিচালনা', 'إدارة الفئات (المنتجات الرقمية)', 'gérer des catégories (produits numériques)', '管理类别（数码产品）'),
(291, 'add_category_(_digital_product_)', 'Add Category ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) যোগ', 'إضافة فئة (المنتج الرقمي)', 'ajouter la catégorie (produit numérique)', '添加类别（数码产品）'),
(292, 'edit_category_(_digital_product_)', 'Edit Category ( Digital Product )', 'সম্পাদনা বিভাগ (ডিজিটাল পণ্য)', 'تحرير فئة (المنتج الرقمي)', 'modifier catégorie (produits numériques)', '编辑类别（数码产品）'),
(293, 'manage_sub_categories_(_digital_product_)', 'Manage Sub Categories ( Digital Product )', 'সাব আরও পরিচালনা (ডিজিটাল পণ্য)', 'إدارة الفئات الفرعية (المنتجات الرقمية)', 'gérer les sous-catégories (produits numériques)', '管理子类别（数码产品）'),
(294, 'add_sub-category_(_digital_product_)', 'Add Sub-category ( Digital Product )', 'উপ-বিভাগ (ডিজিটাল পণ্য) যোগ', 'إضافة فئة فرعية (المنتج الرقمي)', 'ajouter des sous-catégories (produits numériques)', '添加子类（数码产品）'),
(295, 'edit_sub-category_(_digital_product_)', 'Edit Sub-category ( Digital Product )', 'সম্পাদনা উপ-বিভাগ (ডিজিটাল পণ্য)', 'تعديل فئة فرعية (المنتج الرقمي)', 'modifier la sous-catégorie (produit numérique)', '编辑子类（数码产品）'),
(296, 'manage_product_(_digital_)', 'Manage Product ( Digital )', 'পণ্য (ডিজিটাল) পরিচালনা', 'إدارة المنتجات (رقمي)', 'gérer le produit (numérique)', '管理产品（数码）'),
(297, 'add_product', 'Add Product', 'পণ্য যোগ করুন', 'إضافة منتج', 'ajouter le produit', '增加产品'),
(298, 'create_product', 'Create Product', 'পণ্য তৈরি', 'إنشاء المنتج', 'créer un produit', '创建产品'),
(299, 'back_to_product_list', 'Back To Product List', 'ফিরে পণ্যের তালিকাতে', 'العودة إلى قائمة المنتجات', 'Retour à la liste des produits', '回到产品列表'),
(300, 'download_failed!', 'Download Failed!', 'ডাউনলোড ব্যর্থ হয়েছে!', 'التحميل فشل!', 'Échec du téléchargement!', '下载失败！'),
(301, 'image', 'Image', 'ভাবমূর্তি', 'صورة', 'image', '图片'),
(302, 'title', 'Title', 'খেতাব', 'عنوان', 'Titre', '标题'),
(303, 'view_product', 'View Product', 'দৃশ্য পণ্য', 'المنتج رأي', 'produit Aperçu', '查看产品'),
(304, 'successfully_viewed!', 'Successfully Viewed!', 'সফলভাবে দেখা!', 'ينظر بنجاح!', 'vu avec succès!', '成功查看！'),
(305, 'view', 'View', 'দৃশ্য', 'رأي', 'vue', '视图'),
(306, 'view_discount', 'View Discount', 'দৃশ্য ছাড়', 'خصم عرض', 'vue rabais', '查看优惠'),
(307, 'viewing_discount!', 'Viewing Discount!', 'ছাড় দেখছেন!', 'عرض خصم!', 'visualisation de réduction!', '查看优惠！'),
(308, 'download', 'Download', 'ডাউনলোড', 'تحميل', 'Télécharger', '下载'),
(309, 'edit_product_(_digital_product_)', 'Edit Product ( Digital Product )', 'সম্পাদনা পণ্য (ডিজিটাল পণ্য)', 'تحرير المنتج (المنتجات الرقمية)', 'produit d''édition (produits numériques)', '编辑产品（数码产品）'),
(310, 'manage_sale', 'Manage Sale', 'বিক্রয় ও পরিচালনা', 'إدارة بيع', 'gérer la vente', '销售管理'),
(311, 'sale_code', 'Sale Code', 'বিক্রয় কোড', 'كود بيع', 'Code de vente', '销售代码'),
(312, 'buyer', 'Buyer', 'ক্রেতা', 'مشتر', 'acheteur', '买方'),
(313, 'date', 'Date', 'তারিখ', 'تاريخ', 'date', '日期'),
(314, 'delivery_status', 'Delivery Status', 'প্রসবের অবস্থা', 'حالة التسليم', 'statut de livraison', '邮寄状态'),
(315, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'حالة السداد', 'statut de paiement', '支付状态'),
(316, 'admin', 'Admin', 'অ্যাডমিন', 'مشرف', 'administrateur', '管理员'),
(317, 'full_invoice', 'Full Invoice', 'পূর্ণ চালান', 'فاتورة كاملة', 'pleine facture', '全额发票'),
(318, 'delivery_payment', 'Delivery Payment', 'ডেলিভারি পেমেন্ট', 'دفع التسليم', 'paiement à la livraison', '货到付款'),
(319, 'sales', 'Sales', 'বিক্রয়', 'مبيعات', 'Ventes', '销售'),
(320, 'manage_coupons', 'Manage Coupons', 'কুপন পরিচালনা', 'إدارة القسائم', 'gérer des coupons', '管理优惠券'),
(321, 'add_coupon', 'Add Coupon', 'কুপন যোগ', 'إضافة قسيمة', 'ajouter coupon', '添加优惠券'),
(322, 'create_coupon', 'Create Coupon', 'কুপন তৈরি', 'إنشاء قسيمة', 'créer coupon', '创建优惠券'),
(323, 'code', 'Code', 'কোড', 'رمز', 'code', '码'),
(324, 'added_by', 'Added By', 'দ্বারা যোগ করা', 'أضيفت من قبل', 'ajouté par', '通过添加'),
(325, 'status', 'Status', 'অবস্থা', 'الحالة', 'statut', '状态'),
(326, 'coupon', 'Coupon', 'কুপন', 'كوبون', 'coupon', '优惠券'),
(327, 'manage_ticket', 'Manage Ticket', 'টিকেট পরিচালনা', 'إدارة تذكرة', 'gérer billet', '管理票'),
(328, 'back_to_ticket_list', 'Back To Ticket List', 'ফিরে টিকেট লিস্টে', 'العودة إلى قائمة تذكرة', 'Retour à la liste de billets', '回票名单'),
(329, 'from', 'From', 'থেকে', 'من عند', 'de', '从'),
(330, 'subject', 'Subject', 'বিষয়', 'موضوع', 'assujettir', '学科'),
(331, 'view_profile', 'View Profile', 'প্রোফাইল দেখুন', 'عرض الصفحة الشخصية', 'Voir le profil', '查看资料'),
(332, 'new', 'New', 'নতুন', 'جديد', 'Nouveau', '新'),
(333, 'view_contact_ticket', 'View Contact Ticket', 'দৃশ্য যোগাযোগের টিকিট', 'تذكرة رأي اتصال', 'billet vue de contact', '查看联系人票'),
(334, 'view_ticket', 'View Ticket', 'দৃশ্য টিকিট', 'عرض تذكرة', 'vue billet', '查看门票'),
(335, 'product_sale_comparison', 'Product Sale Comparison', 'পণ্য বিক্রয় তুলনা', 'مقارنة بيع المنتج', 'la comparaison des produits de la vente', '产品销售比较'),
(336, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'পণ্য বিক্রয় তুলনা প্রতিবেদন', 'المنتج بيع التقرير مقارنة', 'vente de produits rapport de comparaison', '产品销售比较报告'),
(337, 'manage_stock_report', 'Manage Stock Report', 'স্টক রিপোর্ট পরিচালনা', 'تقرير إدارة المخزون', 'gérer rapport sur les stocks', '管理库存报告'),
(338, 'get_stock_report', 'Get Stock Report', 'স্টক রিপোর্ট পেতে', 'الحصول على تقرير المخزون', 'obtenir rapport sur les stocks', '获得股票报告'),
(339, 'product_wishes_report', 'Product Wishes Report', 'পণ্য রিপোর্ট শুভেচ্ছা', 'يرغب المنتج تقرير', 'produit souhaite rapport', '产品希望报告'),
(340, 'manage_vendors', 'Manage Vendors', 'বিক্রেতারা পরিচালনা', 'إدارة البائعين', 'gérer les fournisseurs', '供应商管理'),
(341, 'display_name', 'Display Name', 'প্রদর্শন নাম', 'اسم العرض', 'Afficher un nom', '显示名称'),
(342, 'vendor_approval', 'Vendor Approval', 'বিক্রেতার অনুমোদন', 'موافقة البائع', 'l''approbation des fournisseurs', '供应商认可'),
(343, 'approval', 'Approval', 'অনুমোদন', 'موافقة', 'approbation', '赞同'),
(344, 'pay_vendor', 'Pay Vendor', 'বেতন বিক্রেতা', 'بائع الأجر', 'salaire fournisseur', '付供应商'),
(345, 'pay', 'Pay', 'বেতন', 'دفع', 'Payer', '工资'),
(346, 'e-mail', 'E-mail', 'ই-মেইল', 'البريد الإلكتروني', 'email', '电子邮件'),
(347, 'manage_vendor_payments', 'Manage Vendor Payments', 'বিক্রেতা পেমেন্ট পরিচালনা', 'إدارة مدفوعات البائعين', 'gérer les paiements des fournisseurs', '管理供应商付款'),
(348, 'amount', 'Amount', 'পরিমাণ', 'كمية', 'montant', '量'),
(349, 'upgraded_vendor_package', 'Upgraded Vendor Package', 'আপগ্রেড বিক্রেতা প্যাকেজ', 'حزمة بائع ترقية', 'paquet fournisseur amélioré', '升级包的供应商'),
(350, 'view_payment_details', 'View Payment Details', 'দৃশ্য পেমেন্ট বিবরণ', 'عرض تفاصيل الدفع', 'afficher les détails de paiement', '查看付款细节'),
(351, 'check_details', 'Check Details', 'বিস্তারিত পরীক্ষা', 'التحقق من التفاصيل', 'vérifier les détails', '查看详细信息'),
(352, 'membership_payments', 'Membership Payments', 'সদস্যপদ পেমেন্ট', 'مدفوعات عضوية', 'paiements d''adhésion', '会员费'),
(353, 'upgraded_membership', 'Upgraded Membership', 'আপগ্রেড সদস্য', 'عضوية ترقية', 'adhésion améliorée', '升级会员'),
(354, 'manage_vendor_package', 'Manage Vendor Package', 'বিক্রেতা প্যাকেজ পরিচালনা', 'إدارة حزمة بائع', 'gérer ensemble des fournisseurs', '管理供应商封装'),
(355, 'add_vendor_package', 'Add Vendor Package', 'বিক্রেতা প্যাকেজ যোগ', 'إضافة حزمة بائع', 'ajouter package de fournisseur', '加上厂商包'),
(356, 'create_vendor_package', 'Create Vendor Package', 'বিক্রেতা প্যাকেজ তৈরি', 'إنشاء حزمة بائع', 'créer un paquet de fournisseur', '创建包的供应商'),
(357, 'seal', 'Seal', 'সীল', 'ختم', 'joint', '密封'),
(358, 'price', 'Price', 'মূল্য', 'السعر', 'prix', '价钱'),
(359, 'for', 'For', 'জন্য', 'إلى', 'pour', '对于'),
(360, 'lifetime', 'Lifetime', 'জীবনকাল', 'أوقات الحياة', 'durée de vie', '一生'),
(361, 'edit_vendor_package', 'Edit Vendor Package', 'সম্পাদনা বিক্রেতা প্যাকেজ', 'تحرير حزمة بائع', 'package de fournisseur d''édition', '编辑供应商封装'),
(362, 'days', 'Days', 'দিন', 'أيام', 'journées', '天'),
(363, 'membership', 'Membership', 'সদস্যতা', 'عضوية', 'adhésion', '籍'),
(364, 'manage_product_(_physical_)', 'Manage Product ( Physical )', 'পণ্য পরিচালনা (শারীরিক)', 'إدارة المنتجات (المادية)', 'gérer le produit (physique)', '管理产品（物理）'),
(365, 'current_quantity', 'Current Quantity', 'বর্তমান পরিমাণ', 'الكمية الحالية', 'quantité de courant', '当前量'),
(366, 'add_product_quantity', 'Add Product Quantity', 'পণ্যের পরিমাণ যোগ', 'إضافة كمية المنتج', 'ajouter la quantité de produit', '增加产品数量'),
(367, 'quantity_added!', 'Quantity Added!', 'পরিমাণ যোগ করা হয়েছে!', 'وأضافت الكمية!', 'quantité ajoutée!', '加入量！'),
(368, 'stock', 'Stock', 'স্টক', 'مخزون', 'Stock', '股票'),
(369, 'reduce_product_quantity', 'Reduce Product Quantity', 'পণ্যের পরিমাণ কমাতে', 'تقليل كمية المنتج', 'réduire la quantité de produit', '减少产品数量'),
(370, 'quantity_reduced!', 'Quantity Reduced!', 'পরিমাণ কমে!', 'كمية خفضت!', 'quantité réduite!', '数量减少！'),
(371, 'destroy', 'Destroy', 'ধ্বংস', 'هدم', 'détruire', '破坏'),
(372, 'edit_product', 'Edit Product', 'সম্পাদনা পণ্য', 'تحرير المنتج', 'produit d''édition', '编辑产品'),
(373, 'product_details', 'Product Details', 'পণ্যের বিবরণ', 'تفاصيل المنتج', 'détails du produit', '产品详情'),
(374, 'business_details', 'Business Details', 'ব্যবসার বিবরণ', 'تفاصيل العمل', 'détails d''affaires', '商家详情'),
(375, 'customer_choice_options', 'Customer Choice Options', 'গ্রাহকের পছন্দ অপশন', 'خيارات اختيار العملاء', 'options de choix du client', '客户选择的选项'),
(376, 'unit', 'Unit', 'একক', 'وحدة', 'unité', '单元'),
(377, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'ইউনিট (যেমন কেজি, পিসি ইত্যাদি)', 'وحدة (مثلا كجم، وأجهزة الكمبيوتر وغيرها)', 'unité (par exemple kg, pc, etc.)', '单位（例如公斤，PC等）'),
(378, 'tags', 'Tags', 'ট্যাগ', 'علامات', 'Mots clés', '标签'),
(379, 'images', 'Images', 'চিত্র', 'صور', 'images', '图片'),
(380, 'choose_file', 'Choose File', 'ফাইল পছন্দ কর', 'اختر ملف', 'choisir le fichier', '选择文件'),
(381, 'description', 'Description', 'বিবরণ', 'وصف', 'la description', '描述'),
(382, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'যদি আপনি আপনার পণ্যের জন্য আরো ক্ষেত্রের প্রয়োজন, আরো জন্য এখানে ক্লিক করুন ...', 'اذا كنت بحاجة الى مزيد من المجال للمنتج الخاص بك، الرجاء الضغط هنا لمزيد من ...', 'si vous avez besoin de plus le terrain pour votre produit, s''il vous plaît cliquez ici pour plus ...', '如果你需要更多的领域为您的产品，请点击这里查看更多...'),
(383, 'add_more_fields', 'Add More Fields', 'আরো ক্ষেত্রের যোগ', 'إضافة المزيد من الحقول', 'ajouter des champs', '添加更多的字段'),
(384, 'sale_price', 'Sale Price', 'বিক্রয় মূল্য', 'سعر البيع', 'prix de vente', '销售价格'),
(385, 'purchase_price', 'Purchase Price', 'ক্রয় মূল্য', 'سعر الشراء', 'prix d''achat', '购买价格'),
(386, 'shipping_cost', 'Shipping Cost', 'প্রদান খরচ', 'تكلفة الشحن', 'frais de port', '运输费'),
(387, 'product_tax', 'Product Tax', 'পণ্যের কর', 'الضرائب المنتج', 'taxe sur les produits', '产品税'),
(388, 'product_discount', 'Product Discount', 'পণ্য ছাড়', 'خصم المنتج', 'une réduction du produit', '产品折扣'),
(389, 'color', 'Color', 'রঙ', 'اللون', 'Couleur', '颜色'),
(390, 'add_more_colors', 'Add More Colors', 'আরো রং যোগ', 'إضافة المزيد من الألوان', 'ajouter plus de couleurs', '添加更多的色彩'),
(391, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'যদি আপনি এই পণ্যের গ্রাহকদের জন্য আরো পছন্দ অপশন প্রয়োজন, এখানে ক্লিক করুন.', 'اذا كنت بحاجة الى مزيد من الخيارات المفضلة للعملاء من هذا المنتج، يرجى الضغط هنا.', 'si vous avez besoin plus d''options de choix pour les clients de ce produit, s''il vous plaît cliquez ici.', '如果你需要更多的选择选项本产品的客户，请点击这里。'),
(392, 'add_customer_input_options', 'Add Customer Input Options', 'গ্রাহকের ইনপুট অপশন যোগ', 'إضافة خيارات مدخلات العملاء', 'ajouter des options d''entrée du client', '添加客户输入选项'),
(393, 'next', 'Next', 'পরবর্তী', 'التالى', 'prochain', '下一个'),
(394, 'previous', 'Previous', 'আগে', 'سابق', 'précédent', '以前'),
(395, 'reset', 'Reset', 'রিসেট', 'إعادة تعيين', 'réinitialiser', '重启'),
(396, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'পণ্য আপলোড করা হয়েছে!', 'وقد تم تحميل المنتج!', 'produit a été téléchargé!', '产品已上传！'),
(397, 'upload', 'Upload', 'আপলোড', 'تحميل', 'télécharger', '上载'),
(398, 'field_name', 'Field Name', 'ক্ষেত্র নাম', 'اسم الحقل', 'nom de domaine', '字段名'),
(399, 'customer_input_title', 'Customer Input Title', 'গ্রাহকের ইনপুট শিরোনাম', 'عنوان مدخلات العملاء', 'Titre de l''entrée à la clientèle', '客户输入标题'),
(400, 'add_options_for_choice', 'Add Options For Choice', 'পছন্দ জন্য অপশন যোগ', 'إضافة خيارات للاختيار', 'ajouter des options pour le choix', '增加对选择题的选项'),
(401, 'option_name', 'Option Name', 'বিকল্প নাম', 'اسم الخيار', 'nom de l''option', '选项名称'),
(402, 'details_of', 'Details Of', 'বিস্তারিত', 'تفاصيل', 'les détails de', '细节'),
(403, 'tax', 'Tax', 'কর', 'ضريبة', 'impôt', '税'),
(404, 'tag', 'Tag', 'ট্যাগ', 'بطاقة', 'Étiquette', '标签'),
(405, 'colors', 'Colors', 'রং', 'الألوان', 'les couleurs', '颜色'),
(406, 'product_color_options', 'Product Color Options', 'পণ্য রঙ অপশন', 'خيارات لون المنتج', 'options de couleur du produit', '产品颜色选项'),
(407, 'add_colors', 'Add Colors', 'রং যোগ', 'إضافة الألوان', 'ajouter des couleurs', '添加颜色'),
(408, 'requirements', 'Requirements', 'প্রয়োজনীয়তা', 'المتطلبات', 'exigences', '要求'),
(409, 'add_logo', 'Add Logo', 'লোগো যোগ', 'إضافة شعار', 'ajouter logo', '新增标志'),
(410, 'choose_logo', 'Choose Logo', 'লোগো নির্বাচন', 'اختيار شعار', 'choisissez logo', '选择标志'),
(411, 'add_images', 'Add Images', 'ইমেজ যোগ', 'إضافة الصور', 'ajouter des images', '添加图片'),
(412, 'if_you_need_to_add_video_for_your_product_,_please_click_here...', 'If You Need To Add Video For Your Product , Please Click Here...', 'যদি আপনি আপনার পণ্যের জন্য ভিডিও যোগ করার জন্য প্রয়োজন, এখানে ক্লিক করুন ...', 'إذا كنت بحاجة إلى إضافة الفيديو للمنتج الخاص بك، الرجاء الضغط هنا ...', 'si vous avez besoin d''ajouter de la vidéo pour votre produit, s''il vous plaît cliquez ici ...', '如果您需要添加视频为您的产品，请点击这里...'),
(413, 'add_video', 'Add Video', 'ভিডিও যোগ', 'إضافة فيديو', 'ajouter de la vidéo', '添加视频'),
(414, 'upload_video', 'Upload Video', 'আপলোড ভিডিও', 'رفع فيديو', 'Télécharger une video', '上传视频'),
(415, 'choose_video_file', 'Choose Video File', 'ভিডিও ফাইল প্লে', 'اختيار ملف الفيديو', 'choisir le fichier vidéo', '选择视频文件'),
(416, 'choose_sharing_site', 'Choose Sharing Site', 'শেয়ারিং সাইট চয়ন', 'اختيار موقع مشاركة', 'choisir le site de partage', '选择分享网站'),
(417, 'choose_one', 'Choose One', 'একটা পছন্দ কর', 'اختيار واحد', 'choisissez-en un', '选一个'),
(418, 'youtube', 'Youtube', 'ইউটিউব', 'موقع YouTube', 'Youtube', 'YouTube的'),
(419, 'dailymotion', 'Dailymotion', 'Dailymotion', 'ديلي موشن', 'dailymotion', '位DailyMotion'),
(420, 'vimeo', 'Vimeo', 'Vimeo', 'فيميو', 'vimeo', 'VIMEO'),
(421, 'link', 'Link', 'লিংক', 'صلة', 'lien', '链接'),
(422, 'product_file', 'Product File', 'পণ্য ফাইল', 'ملف المنتج', 'fiche produit', '产品文件'),
(423, 'compressed', 'Compressed', 'সঙ্কুচিত', 'مضغوط', 'comprimé', '压缩'),
(424, 'maximum_size', 'Maximum Size', 'সর্বাধিক আকার', 'أكبر مقاس', 'taille maximum', '最大尺寸'),
(425, 'if_you_need_to_add_requirements_of_this_product_for_customers_,please_click_here.', 'If You Need To Add Requirements Of This Product For Customers ,please Click Here.', 'যদি আপনি গ্রাহকদের জন্য এই পণ্যের প্রয়োজনীয়তা যোগ করতে হবে, এখানে ক্লিক করুন.', 'إذا كنت بحاجة إلى إضافة متطلبات هذا المنتج للعملاء، الرجاء الضغط هنا.', 'si vous avez besoin d''ajouter des exigences de ce produit pour les clients, s''il vous plaît cliquez ici.', '如果需要添加本品的要求，为客户，请点击这里。'),
(426, 'add_product_requirements', 'Add Product Requirements', 'পণ্য প্রয়োজনীয়তা যোগ', 'إضافة متطلبات المنتج', 'ajouter des exigences de produits', '增加产品的要求'),
(427, 'remove', 'Remove', 'অপসারণ', 'إزالة', 'retirer', '去掉'),
(428, 'video_options', 'Video Options', 'ভিডিও অপশন', 'خيارات الفيديو', 'options vidéo', '视频选项'),
(429, 'choose_an_option', 'Choose An Option', 'একটি বিকল্প নির্বাচন করুন', 'إختر خيار', 'choisis une option', '选择一个选项'),
(430, 'share_link', 'Share Link', 'শেয়ার লিংক', 'رابط المشاركة', 'lien de partage', '分享链接'),
(431, 'i_want_to_add_video_later', 'I Want To Add Video Later', 'আমি পরে ভিডিও যোগ করতে চান', 'أريد أن أضيف فيديو في وقت لاحق', 'je veux ajouter de la vidéo plus tard', '我想在以后添加视频'),
(432, 'update_product_file', 'Update Product File', 'আপডেটের পণ্য ফাইল', 'ملف تحديث المنتج', 'fiche du produit de mise à jour', '更新产品文件'),
(433, 'i_want_to_change_video_later', 'I Want To Change Video Later', 'আমি পরে ভিডিও পরিবর্তন করতে চান', 'أريد أن تغيير الفيديو في وقت لاحق', 'je veux changer vidéo plus tard', '我想以后更改视频'),
(434, 'i_want_to_remove_existing_video', 'I Want To Remove Existing Video', 'আমি বিদ্যমান ভিডিওটি সরিয়ে ফেলতে চান', 'أريد أن إزالة الفيديو موجود', 'je veux supprimer la vidéo existante', '我想删除现有的视频'),
(435, 'invoice_for', 'Invoice For', 'জন্য চালান', 'فاتورة', 'facture de', '发票'),
(436, 'invoice_no:', 'Invoice No:', 'চালান নং:', 'رقم الفاتورة:', 'facturera pas:', '发票号码：'),
(437, 'date_:', 'Date :', 'তারিখ:', 'تاريخ :', 'date :', '日期：');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`) VALUES
(438, 'client_information', 'Client Information', 'ক্লায়েন্ট তথ্য', 'معلومات العميل', 'informations client', '客户信息'),
(439, 'first_name', 'First Name', 'প্রথম নাম', 'الاسم الاول', 'Prénom', '名字'),
(440, 'last_name', 'Last Name', 'নামের শেষাংশ', 'الكنية', 'nom de famille', '姓'),
(441, 'payment_detail', 'Payment Detail', 'পেমেন্ট বিস্তারিত', 'تفاصيل الدفع', 'détail du paiement', '付款明细'),
(442, 'due', 'Due', 'কারণে', 'بسبب', 'dû', '应有'),
(443, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'تاريخ الدفع', 'date de paiement', '付款日期'),
(444, 'payment_invoice', 'Payment Invoice', 'পেমেন্ট চালান', 'فاتورة الدفع', 'facture de paiement', '付款发票'),
(445, 'item', 'Item', 'পদ', 'بند', 'article', '项目'),
(446, 'unit_cost', 'Unit Cost', 'ইউনিট খরচ', 'تكلفة الوحدة', 'coût unitaire', '单位成本'),
(447, 'sub_total_amount', 'Sub Total Amount', 'সাব মোট পরিমাণ', 'المبلغ الإجمالي الفرعي', 'montant total sous', '子总额'),
(448, 'shipping', 'Shipping', 'পাঠানো', 'الشحن', 'livraison', '运输'),
(449, 'grand_total', 'Grand Total', 'সর্বমোট', 'المبلغ الإجمالي', 'somme finale', '累计'),
(450, 'address_line_1', 'Address Line 1', 'ঠিকানা লাইন 1', 'العنوان الأول', 'Adresse 1', '地址栏1'),
(451, 'address_line_2', 'Address Line 2', 'ঠিকানা লাইন 2', 'سطر العنوان 2', 'Adresse Ligne 2', '地址行2'),
(452, 'zipcode', 'Zipcode', 'পিনকোড', 'الرمز البريدي', 'code postal', '邮政编码'),
(453, 'print', 'Print', 'ছাপা', 'طباعة', 'impression', '打印'),
(454, 'marker_location', 'Marker Location', 'মার্কার অবস্থান', 'علامة المكان', 'emplacement du marqueur', '标记位置'),
(455, 'city', 'City', 'শহর', 'مدينة', 'ville', '市'),
(456, 'ZIP', 'ZIP', 'জিপ', 'ZIP', 'ZIP *: FRANÇAIS', '压缩'),
(457, 'payment_details', 'Payment Details', 'পেমেন্ট বিবরণ', 'بيانات الدفع', 'détails du paiement', NULL),
(458, 'coupon_title', 'Coupon Title', 'কুপন শিরোনাম', 'عنوان القسيمة', 'Titre de coupon', NULL),
(459, 'valid_till', 'Valid Till', 'পর্যন্ত বৈধ', 'صالح حتى', 'valable jusqu''au', NULL),
(460, 'coupon_discount_on', 'Coupon Discount On', 'কুপন ডিসকাউন্ট', 'قسيمة خصم على', 'coupon de réduction sur les', NULL),
(461, 'coupon_code', 'Coupon Code', 'কুপন কোড', 'رمز القسيمة', 'code promo', NULL),
(462, 'discount_type', 'Discount Type', 'ছাড় টাইপ', 'نوع الخصم', 'Type de réduction', NULL),
(463, 'discount_value', 'Discount Value', 'ডিসকাউন্ট মূল্য', 'قيمة الخصم', 'valeur de réduction', NULL),
(464, 'user', 'User', 'ব্যবহারকারী', 'مستخدم', 'utilisateur', NULL),
(465, 'phone_number', 'Phone Number', 'ফোন নম্বর', 'رقم الهاتف', 'numéro de téléphone', NULL),
(466, 'creation_date', 'Creation Date', 'তৈরির তারিখ', 'تاريخ الإنشاء', 'date de création', NULL),
(467, 'ticket_from', 'Ticket From', 'থেকে টিকিট', 'تذكرة من', 'billet de', NULL),
(468, 'date_&_time', 'Date & Time', 'তারিখ সময়', 'التاريخ والوقت', 'date et heure', NULL),
(469, 'reply_message', 'Reply Message', 'উত্তর বার্তা', 'رسالة الرد', 'message de réponse', NULL),
(470, 'successfully_replied!', 'Successfully Replied!', 'সফলভাবে বললেন!', 'أجاب بنجاح!', 'répondit avec succès!', NULL),
(471, 'reply', 'Reply', 'উত্তর', 'الرد', 'répondre', NULL),
(472, 'refresh', 'Refresh', 'সতেজ করা', 'اعادة تنشيط', 'rafraîchir', NULL),
(473, 'company', 'Company', 'কোম্পানির', 'شركة', 'compagnie', NULL),
(474, 'postpone', 'Postpone', 'মুলতবি করা', 'تأجيل', 'remettre à plus tard', NULL),
(475, 'approve', 'Approve', 'অনুমোদন করা', 'وافق', 'approuver', NULL),
(476, 'total_sold', 'Total Sold', 'মোট বিক্রি', 'مجموعه تباع', 'total vendu', NULL),
(477, 'paid_by_customer', 'Paid By Customer', 'গ্রাহকের দ্বারা প্রদান করা', 'المدفوع من قبل العميل', 'payé par le client', NULL),
(478, 'paid_to_vendor', 'Paid To Vendor', 'বিক্রেতার দেওয়া', 'تدفع للبائع', 'payé au fournisseur', NULL),
(479, 'by_admin', 'By Admin', 'দ্বারা অ্যাডমিন', 'بواسطة admin', 'by admin', NULL),
(480, 'cash_on_delivery', 'Cash On Delivery', 'প্রদানোত্তর পরিশোধ', 'الدفع عند التسليم', 'paiement à la livraison', NULL),
(481, 'due_to_vendor', 'Due To Vendor', 'বিক্রেতার কারণে', 'بسبب بائع', 'en raison de fournisseur', NULL),
(482, 'select_payment_method', 'Select Payment Method', 'নির্বাচন পেমেন্ট পদ্ধতি', 'اختار طريقة الدفع', 'Sélectionnez le mode de paiement', NULL),
(483, 'your_card_details_verified!', 'Your Card Details Verified!', 'আপনার কার্ডের বিবরণ যাচাই!', 'تفاصيل بطاقتك التحقق منها!', 'vos coordonnées de carte vérifiées!', NULL),
(484, 'pay_with_stripe', 'Pay With Stripe', 'ডোরা দিয়ে দিতে', 'دفع مع شريط', 'payer avec bande', NULL),
(485, 'datetime', 'Datetime', 'তারিখ সময়', 'التاريخ والوقت', 'datetime', NULL),
(486, 'membership_to_upgrade', 'Membership To Upgrade', 'সদস্যপদ আপগ্রেড করার', 'عضوية لرفع مستوى', 'membres pour mettre à niveau', NULL),
(487, 'method', 'Method', 'পদ্ধতি', 'طريقة', 'méthode', NULL),
(488, 'details', 'Details', 'বিস্তারিত', 'تفاصيل', 'détails', NULL),
(489, 'maximum_products', 'Maximum Products', 'সর্বাধিক পণ্য', 'منتجات القصوى', 'produits maximales', NULL),
(490, 'timespan', 'Timespan', 'timespan', 'الفترة الزمنية', 'timespan', NULL),
(491, 'package_seal', 'Package Seal', 'প্যাকেজ সীল', 'حزمة ختم', 'fermeture de l''emballage', NULL),
(492, 'select_package_seal', 'Select Package Seal', 'নির্বাচন প্যাকেজ সীল', 'حدد حزمة ختم', 'select joint package', NULL),
(493, 'manage_vendor_slides', 'Manage Vendor Slides', 'বিক্রেতার স্লাইড পরিচালনা', 'إدارة الشرائح بائع', 'gérer les diapositives des fournisseurs', NULL),
(494, 'button', 'Button', 'বোতাম', 'زر', 'bouton', NULL),
(495, 'click_to_check_link', 'Click To Check Link', 'লিংক চেক করতে ক্লিক', 'انقر فوق التحقق من الرابط', 'cliquez pour vérifier le lien', NULL),
(496, 'slides', 'Slides', 'স্লাইড', 'الشرائح', 'diapositives', NULL),
(497, 'manage_users', 'Manage Users', 'ব্যবহারকারীদের পরিচালনা', 'ادارة المستخدمين', 'gérer les utilisateurs', NULL),
(498, 'total_purchase', 'Total Purchase', 'মোট ক্রয়', 'شراء مجموع', 'achat total', NULL),
(499, 'users', 'Users', 'ব্যবহারকারী', 'المستخدمين', 'utilisateurs', NULL),
(500, 'send_newsletter', 'Send Newsletter', 'নিউজলেটার পাঠাতে', 'إرسال الرسائل الإخبارية', 'envoyer la newsletter', NULL),
(501, 'e-mails_(users)', 'E-mails (users)', 'ই-মেইল (ব্যবহারকারী)', 'رسائل البريد الإلكتروني (المستخدمين)', 'e-mails (utilisateurs)', NULL),
(502, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'ই-মেইল (সদস্য)', 'رسائل البريد الإلكتروني (مشترك)', 'e-mails (abonnés)', NULL),
(503, 'from_:_email_address', 'From : Email Address', 'থেকে: ই-মেইল ঠিকানা', 'من: عنوان البريد الإلكتروني', 'à partir de: adresse e-mail', NULL),
(504, 'newsletter_subject', 'Newsletter Subject', 'নিউজলেটার বিষয়', 'النشرة الموضوع', 'bulletin d''information sous réserve', NULL),
(505, 'newsletter_content', 'Newsletter Content', 'নিউজলেটার বিষয়বস্তু', 'محتوى النشرة الإخبارية', 'contenu du bulletin', NULL),
(506, 'sending', 'Sending', 'পাঠানোর', 'إرسال', 'envoi', NULL),
(507, 'sent!', 'Sent!', 'পাঠানো হয়েছে!', 'أرسلت!', 'envoyé!', NULL),
(508, 'send', 'Send', 'পাঠান', 'إرسال', 'envoyer', NULL),
(509, 'view_contact_message', 'View Contact Message', 'দৃশ্য যোগাযোগের বার্তা', 'رسالة رأي اتصال', 'message visite de contact', NULL),
(510, 'view_message', 'View Message', 'দৃশ্য বার্তা', 'رسالة رأي', 'vue un message', NULL),
(511, 'message', 'Message', 'বার্তা', 'الرسالة', 'message', NULL),
(512, 'date_time', 'Date Time', 'তারিখ সময়', 'التاريخ والوقت', 'date heure', NULL),
(513, 'message_from', 'Message From', 'থেকে বার্তা', 'رسالة من', 'message de', NULL),
(514, 'reply_contact_message', 'Reply Contact Message', 'উত্তর যোগাযোগের বার্তা', 'الرد رسالة الاتصال', 'message de réponse de contact', NULL),
(515, 'view_original_message', 'View Original Message', 'মূল বার্তা দেখতে', 'عرض الرسالة الأصلية', 'voir message original', NULL),
(516, 'manage_blog_categories', 'Manage Blog Categories', 'ব্লগ বিভাগ পরিচালনা', 'إدارة الفئات بلوق', 'gérer des catégories de blog', NULL),
(517, 'add_blog_category', 'Add Blog Category', 'ব্লগ বিভাগ যোগ', 'إضافة فئة بلوق', 'ajouter la catégorie de blog', NULL),
(518, 'create_blog_category', 'Create Blog Category', 'ব্লগ বিভাগ তৈরি', 'إنشاء فئة بلوق', 'créer la catégorie de blog', NULL),
(519, 'edit_blog_category', 'Edit Blog Category', 'সম্পাদনা ব্লগ বিভাগ', 'تحرير الفئة بلوق', 'modifier la catégorie de blog', NULL),
(520, 'blog_category', 'Blog Category', 'ব্লগ বিভাগ', 'الفئة بلوق', 'catégorie de blog', NULL),
(521, 'manage_blog', 'Manage Blog', 'ব্লগ পরিচালনা', 'إدارة بلوق', 'gérer le blog', NULL),
(522, 'add_blog', 'Add Blog', 'ব্লগটি যুক্ত', 'إضافة بلوق', 'ajouter le blog', NULL),
(523, 'create_blog', 'Create Blog', 'ব্লগ তৈরি', 'إنشاء بلوق', 'créer un blog', NULL),
(524, 'back_to_blog_list', 'Back To Blog List', 'ফিরে ব্লগ লিস্টে', 'العودة إلى قائمة بلوق', 'Retour à la liste des blogs', NULL),
(525, 'edit_blog', 'Edit Blog', 'সম্পাদনা ব্লগ', 'تحرير بلوق', 'modifier le blog', NULL),
(526, 'blog_title', 'Blog Title', 'ব্লগ শিরোনাম', 'عنوان المدونة', 'Titre du Blog', NULL),
(527, 'summery', 'Summery', 'গ্রীষ্মের বৈশিষ্ট্যপূর্ণ', 'صيفي', 'd''été', NULL),
(528, 'author', 'Author', 'লেখক', 'مؤلف', 'auteur', NULL),
(529, 'manage_layer_slider', 'Manage Layer Slider', 'লেয়ার স্লাইডার পরিচালনা', 'إدارة طبقة المنزلق', 'gérer la couche curseur', NULL),
(530, 'create_slider', 'Create Slider', 'স্লাইডার তৈরি', 'إنشاء المنزلق', 'créer curseur', NULL),
(531, 'slider_list', 'Slider List', 'স্লাইডার তালিকা', 'قائمة المنزلق', 'liste de curseur', NULL),
(532, 'slider_serial', 'Slider Serial', 'স্লাইডার সিরিয়াল', 'المنزلق المسلسل', 'curseur série', NULL),
(533, 'successfully_serialized!', 'Successfully Serialized!', 'সফলভাবে ধারাবাহিকভাবে!', 'تسلسل بنجاح!', 'sérialisé avec succès!', NULL),
(534, 'slider_serial_saved!', 'Slider Serial Saved!', 'স্লাইডার সিরিয়াল সংরক্ষিত!', 'المنزلق مسلسل حفظ!', 'Curseur série sauvé!', NULL),
(535, 'choose_your_slider_style', 'Choose Your Slider Style', 'আপনার স্লাইডার শৈলী চয়ন', 'اختيار نمط التمرير الخاص بك', 'choisissez votre style de curseur', NULL),
(536, 'play', 'Play', 'খেলা', 'لعب', 'jouer', NULL),
(537, 'choose', 'Choose', 'পছন্দ', 'اختار', 'choisir', NULL),
(538, 'enter_preview', 'Enter Preview', 'প্রিভিউ প্রবেশ', 'دخول المعاينة', 'entrer aperçu', NULL),
(539, 'creating_slider..', 'Creating Slider..', 'স্লাইডার তৈরি ..', 'خلق المنزلق ..', 'création curseur ..', NULL),
(540, 'slider_added!', 'Slider Added!', 'স্লাইডার যোগ করা হয়েছে!', 'وأضاف المنزلق!', 'Curseur ajouté!', NULL),
(541, 'select_background_image', 'Select Background Image', 'নির্বাচন ব্যাকগ্রাউন্ড ইমেজ', 'صورة خلفية مختارة', 'sélectionner l''image d''arrière-plan', NULL),
(542, 'select_image', 'Select Image', 'নির্বাচন ইমেজ', 'اختر صورة', 'sélectionner l''image', NULL),
(543, 'font-color', 'Font-color', 'ফন্টের রং', 'لون الخط', 'couleur de la police', NULL),
(544, 'background_color', 'Background Color', 'পেছনের রং', 'لون الخلفية', 'Couleur de fond', NULL),
(545, 'manage_top_carousal_slides', 'Manage Top Carousal Slides', 'শীর্ষ মদ্যপানোৎসব স্লাইড পরিচালনা', 'إدارة أعلى الشرائح إحتفال صاخب مخمور', 'gérer les diapositives de Carrousel top', NULL),
(546, 'add_slides', 'Add Slides', 'স্লাইড যোগ', 'إضافة شرائح', 'ajouter des diapositives', NULL),
(547, 'create_slides', 'Create Slides', 'স্লাইড তৈরি', 'إنشاء الشرائح', 'créer des diapositives', NULL),
(548, 'edit_slides', 'Edit Slides', 'স্লাইড সম্পাদন', 'تحرير الشرائح', 'diapositives modifier', NULL),
(549, 'slide_banner', 'Slide Banner', 'স্লাইড ব্যানার', 'راية الشرائح', 'slide bannière', NULL),
(550, 'select_slide_banner', 'Select Slide Banner', 'নির্বাচন স্লাইড ব্যানার', 'حدد راية الشرائح', 'select slide bannière', NULL),
(551, 'button_color:', 'Button Color:', 'বোতাম রঙ:', 'زر اللون:', 'bouton couleur:', NULL),
(552, 'button_text_color:', 'Button Text Color:', 'বোতাম টেক্সট রঙ:', 'زر لون النص:', 'bouton couleur du texte:', NULL),
(553, 'button_text', 'Button Text', 'বোতাম টেক্সট', 'زر كتابة', 'bouton de texte', NULL),
(554, 'button_link', 'Button Link', 'বোতাম লিংক', 'رابط زر', 'lien de bouton', NULL),
(555, 'slides_logo', 'Slides Logo', 'স্লাইড লোগো', 'الشرائح شعار', 'diapositives logo', NULL),
(556, 'choose_home_page_style', 'Choose Home Page Style', 'চয়ন হোম পৃষ্ঠা শৈলী', 'اختيار نمط الصفحة الرئيسية', 'choisissez la page d''accueil de style', NULL),
(557, 'updating..', 'Updating..', 'হালনাগাদ করা ..', 'تحديث ..', 'mise à jour ..', NULL),
(558, 'home_page_updated!', 'Home Page Updated!', 'হোম পেজে আপডেট!', 'الصفحة الرئيسية تجديد!', 'page d''accueil mise à jour!', NULL),
(559, 'update_home_page', 'Update Home Page', 'আপডেটের হোম পেজে', 'تحديث الصفحة الرئيسية', 'mise à jour la page d''accueil', NULL),
(560, 'change_home_page_items', 'Change Home Page Items', 'পরিবর্তন হোম পেজে আইটেম', 'البنود تغيير الصفحة الرئيسية', 'changement page d''accueil articles', NULL),
(561, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'সত্যিই এই লোগো মুছে ফেলতে চান?', 'حقا تريد حذف هذا الشعار؟', 'voulez vraiment supprimer ce logo?', NULL),
(562, 'top_slider', 'Top Slider', 'শীর্ষ স্লাইডার', 'كبار المنزلق', 'top slider', NULL),
(563, 'home_banners', 'Home Banners', 'হোম ব্যানার', 'لافتات المنزل', 'bannières à domicile', NULL),
(564, 'search_section', 'Search Section', 'অনুসন্ধান অধ্যায়', 'قسم البحث', 'section de recherche', NULL),
(565, 'category_wise_products', 'Category Wise Products', 'বিভাগ বিজ্ঞ পণ্য', 'فئة المنتجات الحكيمة', 'catégorie produits sages', NULL),
(566, 'special_products', 'Special Products', 'বিশেষ পণ্য', 'منتجات خاصة', 'produits spéciaux', NULL),
(567, 'top_carousel_slider', 'Top Carousel Slider', 'শীর্ষ ক্যারোসেলে স্লাইডার', 'كبار المنزلق دائري', 'top carrousel curseur', NULL),
(568, 'choose_categories_(max_10)', 'Choose Categories (max 10)', 'চয়ন বিভাগ (সর্বোচ্চ 10)', 'اختيار الفئات (حد أقصى 10)', 'choisir les catégories (max 10)', NULL),
(569, 'number_of_todays_deal_(_to_show_)', 'Number Of Todays Deal ( To Show )', 'আজকের চুক্তি সংখ্যা (দেখানোর জন্য)', 'عدد من صفقة اليوم (إظهار)', 'nombre de retransmission de ce deal (montrer)', NULL),
(570, 'updating', 'Updating', 'হালনাগাদ করা', 'تحديث', 'réactualisation', NULL),
(571, 'category_menu_updated!', 'Category Menu Updated!', 'বিভাগ মেনু আপডেট!', 'القائمة فئة تجديد!', 'menu de la catégorie mise à jour!', NULL),
(572, 'update', 'Update', 'হালনাগাদ', 'تحديث', 'mettre à jour', NULL),
(573, 'after_slider', 'After Slider', 'স্লাইডার পর', 'بعد المنزلق', 'après curseur', NULL),
(574, 'select_banner_image', 'Select Banner Image', 'নির্বাচন ব্যানার ইমেজ', 'اختر صورة لافتة', 'sélectionner l''image de la bannière', NULL),
(575, 'banner_updated!', 'Banner Updated!', 'ব্যানার আপডেট!', 'راية تحديث!', 'banner mis à jour!', NULL),
(576, 'parallax_title_for_search', 'Parallax Title For Search', 'অনুসন্ধানের জন্য লম্বন শিরোনাম', 'عنوان المنظر للبحث', 'Titre de la parallaxe pour la recherche', NULL),
(577, 'parallax_image_for_search_section', 'Parallax Image For Search Section', 'অনুসন্ধান বিভাগের জন্য লম্বন ইমেজ', 'صورة المنظر لقسم البحث', 'l''image de parallaxe pour la section de recherche', NULL),
(578, 'search_section_updated!', 'Search Section Updated!', 'অনুসন্ধান অধ্যায় আপডেট!', 'قسم البحث تحديث!', 'section de recherche mis à jour!', NULL),
(579, 'featured_products_(_show_/_hide_)', 'Featured Products ( Show / Hide )', 'বৈশিষ্ট্যযুক্ত পণ্য (প্রদর্শন করুন / আড়াল)', 'منتجات مميزة (عرض / إخفاء)', 'produits phares (show / hide)', NULL),
(580, 'number_of_products_(_to_show_)', 'Number Of Products ( To Show )', 'পণ্য সংখ্যা (দেখানোর জন্য)', 'عدد من المنتجات (لاظهار)', 'nombre de produits (pour montrer)', NULL),
(581, 'choose_product_box_style', 'Choose Product Box Style', 'পণ্য বক্স শৈলী চয়ন', 'اختيار المنتج نمط مربع', 'choisissez le style boîte produit', NULL),
(582, 'featured_section_updated!', 'Featured Section Updated!', 'বৈশিষ্ট্যযুক্ত অধ্যায় আপডেট!', 'القسم المميز تحديث!', 'section sélectionnée mis à jour!', NULL),
(583, 'vandor_(_show_/_hide_)', 'Vandor ( Show / Hide )', 'vandor (প্রদর্শন করুন / আড়াল)', 'فاندور (عرض / إخفاء)', 'vandor (afficher / masquer)', NULL),
(584, 'parallax_title_for_vendors', 'Parallax Title For Vendors', 'বিক্রেতাদের জন্য লম্বন শিরোনাম', 'عنوان المنظر للبائعين', 'Titre de la parallaxe pour les vendeurs', NULL),
(585, 'parallax_image_for_vendors', 'Parallax Image For Vendors', 'বিক্রেতাদের জন্য লম্বন ইমেজ', 'صورة المنظر للبائعين', 'l''image de parallaxe pour les vendeurs', NULL),
(586, 'number_of_vendor_(_to_show_)', 'Number Of Vendor ( To Show )', 'বিক্রেতার সংখ্যা (দেখানোর জন্য)', 'عدد من بائع (لاظهار)', 'nombre de fournisseurs (pour montrer)', NULL),
(587, 'vendor_section_updated!', 'Vendor Section Updated!', 'বিক্রেতার অধ্যায় আপডেট!', 'قسم بائع تحديث!', 'section de fournisseur mis à jour!', NULL),
(588, 'sub-categories_(promotional)', 'Sub-categories (promotional)', 'উপ-বিভাগ (প্রচারমূলক)', 'فئات فرعية (الترويجية)', 'sous-catégories (promotion)', NULL),
(589, 'color_preference_:', 'Color Preference :', 'রঙ পছন্দ:', 'تفضيل اللون:', 'de préférence de couleur:', NULL),
(590, 'title_color:', 'Title Color:', 'শিরোনাম রঙ:', 'عنوان اللون:', 'Titre de la couleur:', NULL),
(591, 'add_new', 'Add New', 'নতুন যোগ', 'اضف جديد', 'ajouter de nouvelles', NULL),
(592, 'home_categories_updated!', 'Home Categories Updated!', 'বাড়িতে আরও আপডেট!', 'فئات الوطن تجديد!', 'catégories de maison mis à jour!', NULL),
(593, 'blog_(_show_/_hide_)', 'Blog ( Show / Hide )', 'ব্লগ (প্রদর্শন করুন / আড়াল)', 'بلوق (عرض / إخفاء)', 'Blog (show / hide)', NULL),
(594, 'parallax_title_for_blog', 'Parallax Title For Blog', 'ব্লগের জন্য লম্বন শিরোনাম', 'عنوان المنظر لبلوق', 'titre parallaxe pour blogue', NULL),
(595, 'parallax_image_for_blog', 'Parallax Image For Blog', 'ব্লগের জন্য লম্বন ইমেজ', 'صورة المنظر لبلوق', 'l''image de parallaxe pour blogue', NULL),
(596, 'number_of_latest_blog_(_to_show_)', 'Number Of Latest Blog ( To Show )', 'সর্বশেষ ব্লগ সংখ্যা (দেখানোর জন্য)', 'عدد آخر بلوق (لاظهار)', 'nombre de dernier blog (montrer)', NULL),
(597, 'blog_section_updated!', 'Blog Section Updated!', 'ব্লগ অধ্যায় আপডেট!', 'قسم بلوق تحديث!', 'section blog mis à jour!', NULL),
(598, 'special_products_(_show_/_hide_)', 'Special Products ( Show / Hide )', 'বিশেষ পণ্য (প্রদর্শন করুন / আড়াল)', 'منتجات خاصة (إظهار / إخفاء)', 'produits spéciaux (afficher / masquer)', NULL),
(599, 'brand_(_show_/_hide_)', 'Brand ( Show / Hide )', 'ব্র্যান্ড (প্রদর্শন করুন / আড়াল)', 'العلامة التجارية (عرض / إخفاء)', 'marque (show / hide)', NULL),
(600, 'number_of_brand_(_to_show_)', 'Number Of Brand ( To Show )', 'ব্র্যান্ড সংখ্যা (দেখানোর জন্য)', 'عدد من العلامة التجارية (لاظهار)', 'nombre de marque (montrer)', NULL),
(601, 'brand_section_updated!', 'Brand Section Updated!', 'ব্র্যান্ড অধ্যায় আপডেট!', 'قسم العلامة التجارية تحديثها!', 'section de la marque mis à jour!', NULL),
(602, 'banner_published!', 'Banner Published!', 'ব্যানার প্রকাশিত!', 'راية نشرت!', 'bannière publié!', NULL),
(603, 'banner_unpublished!', 'Banner Unpublished!', 'ব্যানার অপ্রকাশিত!', 'راية لم تنشر!', 'bannière inédite!', NULL),
(604, 'section_published!', 'Section Published!', 'অধ্যায় প্রকাশিত!', 'القسم نشرت!', 'section publié!', NULL),
(605, 'section_unpublished!', 'Section Unpublished!', 'অধ্যায় অপ্রকাশিত!', 'قسم غير منشورة!', 'section inédite!', NULL),
(606, 'category_wise_banners', 'Category Wise Banners', 'বিভাগ জ্ঞানী ব্যানার', 'فئة افتات الحكيمة', 'catégorie bannières sages', NULL),
(607, 'title_for_vendor_section', 'Title For Vendor Section', 'বিক্রেতার বিভাগের জন্য শিরোনাম', 'عنوان الباب بائع', 'titre pour la section de fournisseur', NULL),
(608, 'contact_address', 'Contact Address', 'যোগাযোগের ঠিকানা', 'عنوان الإتصال', 'Adresse de contact', NULL),
(609, 'contact_phone', 'Contact Phone', 'ফোনে যোগাযোগ', 'رقم الهاتف', 'Numéro du contact', NULL),
(610, 'contact_email', 'Contact Email', 'যোগাযোগের ই - মেইল', 'تواصل بالبريد الاكتروني', 'Email du contact', NULL),
(611, 'contact_website', 'Contact Website', 'যোগাযোগের ওয়েবসাইট', 'اتصال الانترنت', 'site de contact', NULL),
(612, 'contact_about', 'Contact About', 'সম্পর্কে যোগাযোগ', 'الاتصال حول', 'contacter à propos de', NULL),
(613, 'footer_settings', 'Footer Settings', 'পাদচরণ সেটিংস', 'إعدادات تذييل', 'paramètres de bas de page', NULL),
(614, 'footer_category', 'Footer Category', 'পাদচরণ বিভাগ', 'فئة تذييل', 'catégorie footer', NULL),
(615, 'footer_text', 'Footer Text', 'পাদচরণ', 'نص تذييل', 'texte de pied de page', NULL),
(616, 'choose_theme', 'Choose Theme', 'থিম নির্বাচন', 'اختيار موضوع', 'choisissez le thème', NULL),
(617, 'theme_updated!', 'Theme Updated!', 'থিম আপডেট!', 'موضوع تحديث!', 'thème mis à jour!', NULL),
(618, 'upload_logo', 'Upload Logo', 'আপলোড লোগো', 'تحميل شعار', 'télécharger logo', NULL),
(619, 'select_logo', 'Select Logo', 'নির্বাচন লোগো', 'حدد شعار', 'sélectionnez logo', NULL),
(620, 'all_logos', 'All Logos', 'সমস্ত লোগো', 'كل الشعارات', 'tous les logos', NULL),
(621, 'place', 'Place', 'জায়গা', 'مكان', 'endroit', NULL),
(622, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'شعار المشرف', 'administrateur logo', NULL),
(623, 'successfully_selected!', 'Successfully Selected!', 'সফলভাবে নির্বাচিত!', 'اختيار بنجاح!', 'choisi avec succès!', NULL),
(624, 'change', 'Change', 'পরিবর্তন', 'تغيير', 'changement', NULL),
(625, 'homepage_header_logo', 'Homepage Header Logo', 'হোমপেজে হেডার লোগো', 'الصفحة الرئيسية شعار رأس', 'page d''accueil logo header', NULL),
(626, 'homepage_footer_logo', 'Homepage Footer Logo', 'হোমপেজে ফুটার লোগো', 'الصفحة الرئيسية شعار تذييل', 'page d''accueil logo footer', NULL),
(627, 'successfully_logo_uploaded', 'Successfully Logo Uploaded', 'সফলভাবে আপলোড লোগো', 'بنجاح شعار تحميلها', 'avec succès logo téléchargé', NULL),
(628, 'select_favicon', 'Select Favicon', 'নির্বাচন ফেভিকন', 'حدد فافيكون', 'sélectionnez favicon', NULL),
(629, 'favicon_updated!', 'Favicon Updated!', 'ফেভিকন আপডেট!', 'فافيكون تحديث!', 'favicon mis à jour!', NULL),
(630, 'choose_font', 'Choose Font', 'ফন্ট পছন্দ', 'اختيار الخط', 'choisissez la police', NULL),
(631, 'font_updated!', 'Font Updated!', 'ফন্ট আপডেট!', 'الخط تحديث!', 'police mis à jour!', NULL),
(632, 'preloaders', 'Preloaders', 'preloaders', 'preloaders', 'preloaders', NULL),
(633, 'preloader_color', 'Preloader Color', 'preloader রঙ', 'اللون تحميل مسبق', 'couleur de préchargement', NULL),
(634, 'preloader_background', 'Preloader Background', 'preloader পটভূমি', 'خلفية تحميل مسبق', 'preloader fond', NULL),
(635, 'preloader_updated!', 'Preloader Updated!', 'preloader আপডেট!', 'التحميل المسبق لتحديث!', 'Preloader mis à jour!', NULL),
(636, 'social_links', 'Social Links', 'সামাজিক লিংক', 'الروابط الاجتماعية', 'liens sociaux', NULL),
(637, 'system_name', 'System Name', 'সিস্টেমের নামের', 'اسم النظام', 'le nom du système', NULL),
(638, 'system_email', 'System Email', 'সিস্টেম ইমেল', 'نظام البريد الإلكتروني', 'email du système', NULL),
(639, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'عنوان النظام', 'titre du système', NULL),
(640, 'homepage_cache_time', 'Homepage Cache Time', 'হোমপেজে ক্যাশে সময়', 'الوقت مخبأ الصفحة الرئيسية', 'temps de cache page d''accueil', NULL),
(641, 'minutes', 'Minutes', 'মিনিট', 'دقيقة', 'minutes', NULL),
(642, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'ডাউনলোডযোগ্য পণ্য ফোল্ডার নাম', 'اسم مجلد المنتج للتحميل', 'produit téléchargeable nom du dossier', NULL),
(643, 'admin_notification_sound', 'Admin Notification Sound', 'অ্যাডমিন নোটিফিকেশন সাউন্ড', 'صوت الإعلام المشرف', 'administrateur notification sonore', NULL),
(644, 'admin_notification_volume', 'Admin Notification Volume', 'অ্যাডমিন বিজ্ঞপ্তি ভলিউম', 'حجم إخطار المشرف', 'volume de notification admin', NULL),
(645, 'Volume_:_', 'Volume : ', 'ভলিউম: ', 'الصوت : ', 'Le volume : ', NULL),
(646, 'homepage_notification_sound', 'Homepage Notification Sound', 'হোমপেজে নোটিফিকেশন সাউন্ড', 'صوت الإعلام الصفحة الرئيسية', 'son de notification page d''accueil', NULL),
(647, 'homepage_notification_volume', 'Homepage Notification Volume', 'হোমপেজে বিজ্ঞপ্তি ভলিউম', 'حجم الاخطار الصفحة الرئيسية', 'volume de notification page d''accueil', NULL),
(648, 'captcha_settings', 'Captcha Settings', 'ক্যাপচা সেটিংস', 'إعدادات كلمة التحقق', 'paramètres captcha', NULL),
(649, 'social_login_configuaration', 'Social Login Configuaration', 'সামাজিক লগইন configuaration', 'configuaration تسجيل الدخول الاجتماعي', 'configuaration de connexion sociale', NULL),
(650, 'product_comment_settings', 'Product Comment Settings', 'পণ্য মন্তব্য সেটিংস', 'إعدادات المنتج تعليق', 'paramètres produit de commentaire', NULL),
(651, 'google_map', 'Google Map', 'গুগল মানচিত্র', 'خريطة جوجل', 'Google Map', NULL),
(652, 'save_captcha_settings', 'Save Captcha Settings', 'ক্যাপচা সেটিংস সংরক্ষণ', 'حفظ الإعدادات كلمة التحقق', 'enregistrer les paramètres de captcha', NULL),
(653, 'public_key', 'Public Key', 'সর্বজনীন কী', 'المفتاح العمومي', 'Clé publique', NULL),
(654, 'private_key', 'Private Key', 'প্রাইভেট কী', 'المفتاح الخاص', 'clé privée', NULL),
(655, 'facebook_login_settings', 'Facebook Login Settings', 'ফেসবুক লগইন সেটিংস', 'إعدادات تسجيل الدخول الفيسبوك', 'paramètres de connexion facebook', NULL),
(656, 'google+_login_settings', 'Google+ Login Settings', 'গুগল + লগইন সেটিংস', 'إعدادات تسجيل الدخول جوجل +', 'paramètres google + de connexion', NULL),
(657, 'type', 'Type', 'আদর্শ', 'اكتب', 'type', '类型'),
(658, 'none', 'None', 'না', 'لا شيء', 'aucun', '没有'),
(659, 'facebook_comment', 'Facebook Comment', 'ফেসবুক মন্তব্য', 'الفيسبوك تعليق', 'facebook commentaire', 'Facebook的评论'),
(660, 'disqus_comment', 'Disqus Comment', 'Disqus মন্তব্য', 'هارد تعليق', 'Disqus commentaire', 'disqus评论'),
(661, 'google_comment', 'Google Comment', 'গুগল মন্তব্য', 'جوجل تعليق', 'google commentaire', '谷歌评论'),
(662, 'discus_ID', 'Discus ID', 'চাকতি আইডি', 'رمي القرص معرف', 'discus ID', '铁饼ID'),
(663, 'fb_comment_id', 'Fb Comment Id', 'FB মন্তব্য আইডি', 'أف ب تعليق معرف', 'fb commentaire id', 'FB评论ID'),
(664, 'google_map_api_settings', 'Google Map Api Settings', 'গুগল ম্যাপ API সেটিংস', 'جوجل إعدادات خريطة المعهد', 'google map paramètres api', '谷歌地图API设置'),
(665, 'api_key', 'Api Key', 'API কী', 'مفتاح API', 'clé API', 'API密钥'),
(666, 'add_page', 'Add Page', 'পাতা যোগ কর', 'إضافة صفحة', 'ajouter une page', '添加页面'),
(667, 'create_page', 'Create Page', 'পাতা তৈরি করুন', 'إنشاء الصفحة', 'créer une page', '创建页面'),
(668, 'back_to_page_list', 'Back To Page List', 'পিছন পাতা লিস্টে', 'العودة إلى القائمة الصفحة', 'Retour à la liste de la page', '返回页面列表'),
(669, 'page_name', 'Page Name', 'পৃষ্ঠার নাম', 'اسم الصفحة', 'Nom de la page', '网页名称'),
(670, 'preview', 'Preview', 'প্রিভিউ', 'معاينة', 'Aperçu', '预习'),
(671, 'edit_page', 'Edit Page', 'সম্পাদনা পাতা', 'تعديل الصفحة', 'modifier la page', '编辑页面'),
(672, 'page_title', 'Page Title', 'আমার স্নাতকের', 'عنوان الصفحة', 'titre de la page', '页面标题'),
(673, 'parmalink', 'Parmalink', 'মাহবুব', 'الرابط الثابت', 'Permalink', '永久链接'),
(674, 'number_of_page_parts', 'Number Of Page Parts', 'পৃষ্ঠা যন্ত্রাংশ সংখ্যা', 'عدد الأجزاء الصفحة', 'nombre de pages pièces', '页数件'),
(675, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'আপনার পৃষ্ঠা তৈরি করতে চলুন শুরু করা যাক', 'يتيح البدء في إنشاء صفحتك', 'laisse commencer à créer votre page', '让我们开始创建你的页面'),
(676, 'parts', 'Parts', 'যন্ত্রাংশ', 'أجزاء', 'les pièces', '部分'),
(677, 'select_size', 'Select Size', 'নির্বাচন আকার', 'أختر الحجم', 'sélectionnez la taille', '选择大小'),
(678, 'one-fourth', 'One-fourth', 'এক চতুর্থাংশ', 'ربع', 'un quart', '四分之一'),
(679, 'one-third', 'One-third', 'এক-তৃতীয়াংশ', 'الثلث', 'un tiers', '三分之一'),
(680, 'half', 'Half', 'অর্ধেক', 'نصف', 'moitié', '半'),
(681, 'two-third', 'Two-third', 'দুই-তৃতীয়াংশ', 'ثلثي', 'deux tiers', '三分之二'),
(682, 'three-fourth', 'Three-fourth', 'তিন-চতুর্থাংশ', 'ثلاثة ارباع', 'trois quart', '四分之三'),
(683, 'full', 'Full', 'সম্পূর্ণ', 'كامل', 'plein', '充分'),
(684, 'select_type', 'Select Type', 'নির্বাচন টাইপ', 'اختر صنف', 'sélectionner le genre', '选择类型'),
(685, 'content', 'Content', 'সন্তুষ্ট', 'محتوى', 'contenu', '内容'),
(686, 'widget', 'Widget', 'উইজেট', 'القطعة', 'un widget', '小部件'),
(687, 'product_categories', 'Product Categories', 'পণের ধরন', 'أصناف المنتجات', 'catégories de produits', '产品类别'),
(688, 'advance_search', 'Advance Search', 'অগ্রিম অনুসন্ধান', 'بحث متقدم', 'recherche avancée', '高级搜索'),
(689, 'special_blogs', 'Special Blogs', 'বিশেষ ব্লগ', 'بلوق الخاصة', 'blogs spéciaux', '特殊的博客'),
(690, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'অনধিক 4 কলাম!', 'لم يكن أكثر من 4 أعمدة!', 'pas plus de 4 colonnes!', '不超过4列！'),
(691, 'popular', 'Popular', 'জনপ্রিয়', 'شعبي', 'populaire', '流行'),
(692, 'deals', 'Deals', 'প্রতিষ্ঠান', 'صفقات', 'offres', '交易'),
(693, 'page_code', 'Page Code', 'পাতা কোড', 'كود الصفحة', 'code de la page', '网页代码'),
(694, 'page_tags', 'Page Tags', 'পাতা ট্যাগ', 'علامات الصفحة', 'balises de page', '标签页'),
(695, 'column', 'Column', 'স্তম্ভ', 'عمود', 'colonne', '柱'),
(696, '', '', '', '', '', ''),
(697, 'most_sold', 'Most Sold', 'সবথেকে বেশি বিক্রিত', 'الأكثر مبيعا', 'les plus vendus', '大部分销往'),
(698, 'product_image', 'Product Image', 'পণ্য ইমেজ', 'صورة المنتج', 'image du produit', '产品形象'),
(699, 'digital_logo_image', 'Digital Logo Image', 'ডিজিটাল লোগো ইমেজ', 'صورة الشعار الرقمية', 'logo image numérique', '数字标识图像'),
(700, 'category_image', 'Category Image', 'বিভাগ ইমেজ', 'صورة الفئة', 'catégorie d''image', '类别形象'),
(701, 'sub_category_image', 'Sub Category Image', 'সাব বিভাগ চিত্র', 'صورة الفئة الفرعية', 'Image sous catégorie', '子类别形象'),
(702, 'brand_image', 'Brand Image', 'প্রতিকি ছবি', 'صورة العلامة التجارية', 'image de marque', '品牌形象'),
(703, 'blog_image', 'Blog Image', 'ব্লগ ছবি', 'صور بلوق', 'blog image', '博客图片'),
(704, 'banner_image', 'Banner Image', 'ব্যানার ইমেজ', 'صورة لافتة', 'image de la bannière', '横幅图片'),
(705, 'user_image', 'User Image', 'ব্যবহারকারী ইমেজ', 'صورة المستخدم', 'image de l''utilisateur', '用户图像'),
(706, 'vendor_logo_image', 'Vendor Logo Image', 'বিক্রেতার লোগো ইমেজ', 'بائع صورة الشعار', 'fournisseur image du logo', '供应商的logo图片'),
(707, 'vendor_banner_image', 'Vendor Banner Image', 'বিক্রেতার ব্যানার ইমেজ', 'بائع راية صورة', 'image de la bannière de fournisseur', '供应商横幅图片'),
(708, 'membership_image', 'Membership Image', 'সদস্য ইমেজ', 'صورة عضوية', 'image de l''adhésion', '会员图像'),
(709, 'slides_image', 'Slides Image', 'স্লাইড ইমেজ', 'صورة الشرائح', 'l''image des diapositives', '幻灯片图像'),
(710, 'select_default_image', 'Select Default Image', 'নির্বাচন ডিফল্ট ইমেজ', 'الصورة الافتراضية مختارة', 'image par défaut, sélectionnez', '选择默认图像'),
(711, 'product_image_updated!', 'Product Image Updated!', 'পণ্য ইমেজ আপডেট!', 'صورة المنتج تجديد!', 'image du produit mis à jour!', '产品形象更新了！'),
(712, 'digital_logo_image_updated!', 'Digital Logo Image Updated!', 'ডিজিটাল লোগো ইমেজ আপডেট!', 'صورة الشعار الرقمية تجديد!', 'logo image numérique mis à jour!', '数字标识图像更新！'),
(713, 'category_image_updated!', 'Category Image Updated!', 'বিভাগ ইমেজ আপডেট!', 'الفئة صورة تجديد!', 'catégorie d''image mis à jour!', '类别图像更新！'),
(714, 'sub_category_image_updated!', 'Sub Category Image Updated!', 'সাব বিভাগ ইমেজ আপডেট!', 'صورة الفئة الفرعية تجديد!', 'Image sous catégorie mise à jour!', '子类图像更新！'),
(715, 'brand_image_updated!', 'Brand Image Updated!', 'ব্র্যান্ড ইমেজ আপডেট!', 'صورة العلامة التجارية تجديد!', 'image de marque mis à jour!', '品牌形象更新了！'),
(716, 'blog_image_updated!', 'Blog Image Updated!', 'ব্লগ ইমেজ আপডেট!', 'صورة بلوق تجديد!', 'l''image de blog mis à jour!', '博客更新的形象！'),
(717, 'banner_image_updated!', 'Banner Image Updated!', 'ব্যানার ইমেজ আপডেট!', 'راية صورة تجديد!', 'banner image mise à jour!', '横幅图像更新！'),
(718, 'user_image_updated!', 'User Image Updated!', 'ব্যবহারকারী ইমেজ আপডেট!', 'صورة المستخدم تجديد!', 'image de l''utilisateur mis à jour!', '用户图像更新！'),
(719, 'vendor_logo_image_updated!', 'Vendor Logo Image Updated!', 'বিক্রেতার লোগো ইমেজ আপডেট!', 'بائع صورة شعار تجديد!', 'fournisseur image du logo mis à jour!', '供应商的logo图片更新！'),
(720, 'vendor_banner_image_updated!', 'Vendor Banner Image Updated!', 'বিক্রেতার ব্যানার ইমেজ আপডেট!', 'بائع راية صورة تجديد!', 'image de la bannière du fournisseur mis à jour!', '供应商横幅图像更新！'),
(721, 'membership_image_updated!', 'Membership Image Updated!', 'সদস্য ইমেজ আপডেট!', 'صورة عضوية تجديد!', 'image de l''adhésion mis à jour!', '会员图像更新！'),
(722, 'slides_image_updated!', 'Slides Image Updated!', 'স্লাইড ইমেজ আপডেট!', 'الشرائح صورة تجديد!', 'l''image des diapositives mis à jour!', '幻灯片图像更新！'),
(723, 'manage_activation', 'Manage Activation', 'সক্রিয়করণ পরিচালনা', 'إدارة التنشيط', 'gérer l''activation', '管理激活'),
(724, 'business_related', 'Business Related', 'ব্যবসা সংক্রান্ত', 'الأعمال التجارية ذات الصلة', 'lié aux affaires', '业务相关'),
(725, 'physical_product_activation', 'Physical Product Activation', 'শারীরিক পণ্য অ্যাক্টিভেশন', 'تنشيط المنتج المادي', 'activation physique du produit', '实物产品激活'),
(726, 'physical_product_enabled', 'Physical Product Enabled', 'শারীরিক পণ্য সক্রিয়', 'تمكين منتج مادي', 'produit physique activé', '实物产品启用'),
(727, 'physical_product_disabled', 'Physical Product Disabled', 'শারীরিক পণ্যটি অক্ষম', 'منتج مادي تعطيل', 'produit physique désactivé', '实物产品禁用'),
(728, 'digital_product_activation', 'Digital Product Activation', 'ডিজিটাল পণ্য অ্যাক্টিভেশন', 'تنشيط المنتج الرقمي', 'l''activation du produit numérique', '数码产品激活'),
(729, 'digital_product_enabled', 'Digital Product Enabled', 'ডিজিটাল পণ্য সক্রিয়', 'تمكين المنتجات الرقمية', 'produit numérique activé', '数码产品启用'),
(730, 'digital_product_disabled', 'Digital Product Disabled', 'ডিজিটাল পণ্য নিষ্ক্রিয়', 'المنتجات الرقمية تعطيل', 'produit numérique désactivé', '数码产品禁用'),
(731, 'vendor_system_activation', 'Vendor System Activation', 'বিক্রেতার সিস্টেম সক্রিয়করণের', 'تفعيل نظام بائع', 'l''activation du système du fournisseur', '供应商系统的激活'),
(732, 'vendor_system_enabled', 'Vendor System Enabled', 'বিক্রেতার সিস্টেম সক্রিয়', 'تمكين نظام بائع', 'système de fournisseur activé', '供应商的系统中启用'),
(733, 'vendor_system_disabled', 'Vendor System Disabled', 'বিক্রেতার সিস্টেম নিষ্ক্রিয়', 'تعطيل نظام بائع', 'système fournisseur désactivé', '供应商系统禁用'),
(734, 'payment_related', 'Payment Related', 'পেমেন্ট সম্পর্কিত', 'دفع ذات الصلة', 'paiement connexes', '支付相关'),
(735, 'paypal_payment_activation', 'Paypal Payment Activation', 'পেপ্যাল ​​অ্যাক্টিভেশন', 'تفعيل الدفع باي بال', 'activation de paiement paypal', '支付宝付款激活'),
(736, 'paypal_payment_enabled', 'Paypal Payment Enabled', 'পেপাল পেমেন্ট সক্রিয়', 'تمكين الدفع باي بال', 'paiement paypal activé', '支付宝付款启用'),
(737, 'paypal_payment_disabled', 'Paypal Payment Disabled', 'পেপাল পেমেন্ট নিষ্ক্রিয়', 'الدفع باي بال تعطيل', 'paiement paypal désactivé', '支付宝付款禁用'),
(738, 'stripe_payment_activation', 'Stripe Payment Activation', 'ডোরা পেমেন্ট অ্যাক্টিভেশন', 'تفعيل دفع شريط', 'activation de paiement de bande', '条纹支付激活'),
(739, 'stripe_payment_enabled', 'Stripe Payment Enabled', 'ডোরা পেমেন্ট সক্রিয়', 'دفع شريط تمكين', 'paiement de bande activée', '启用条纹付款'),
(740, 'stripe_payment_disabled', 'Stripe Payment Disabled', 'ডোরা পেমেন্ট নিষ্ক্রিয়', 'دفع شريط تعطيل', 'paiement de bande désactivé', '条纹支付禁用'),
(741, 'cash_payment_activation', 'Cash Payment Activation', 'নগদ পেমেন্ট অ্যাক্টিভেশন', 'تفعيل الدفع نقدا', 'activation de paiement en espèces', '现金支付激活'),
(742, 'cash_payment_enabled', 'Cash Payment Enabled', 'নগদ পেমেন্ট সক্রিয়', 'الدفع نقدا تمكين', 'paiement en espèces a permis', '启用现金支付'),
(743, 'cash_payment_disabled', 'Cash Payment Disabled', 'নগদ পেমেন্ট নিষ্ক্রিয়', 'الدفع نقدا تعطيل', 'paiement en espèces désactivé', '现金支付禁用'),
(744, 'manage_business_settings', 'Manage Business Settings', 'ব্যবসা সেটিংস পরিচালনা', 'إدارة إعدادات الأعمال', 'gérer les paramètres d''affaires', '管理业务设置'),
(745, 'cash_payment', 'Cash Payment', 'নগদে টাকা প্রদান', 'دفع نقدا', 'paiement en espèces', '现金支付'),
(746, 'paypal_payment', 'Paypal Payment', 'পেপ্যাল', 'دفع باي بال', 'Paiement PayPal', '支付宝付款'),
(747, 'paypal_email', 'Paypal Email', 'পেপ্যাল ​​ইমেইল', 'البريد الإلكتروني باي بال', 'paypal email', '贝宝电子邮件'),
(748, 'paypal_account_type', 'Paypal Account Type', 'PayPal অ্যাকাউন্ট টাইপ', 'باي بال نوع الحساب', 'paypal type de compte', 'PayPal帐户类型'),
(749, 'stripe_payment', 'Stripe Payment', 'ডোরা পেমেন্ট', 'دفع شريط', 'paiement de bande', '条纹支付'),
(750, 'stripe_secret_key', 'Stripe Secret Key', 'ডোরা গোপন চাবি', 'المفتاح السري الشريط', 'clé secrète bande', '条纹密钥'),
(751, 'stripe_publishable_key', 'Stripe Publishable Key', 'ডোরা প্রকাশযোগ্য কী', 'شريط مفتاح للنشر', 'stripe clé publiable', '条纹发布的关键'),
(752, 'currency_name', 'Currency Name', 'মুদ্রার নাম', 'اسم العملة', 'nom de la monnaie', '货币名称'),
(753, 'currency_symbol', 'Currency Symbol', 'মুদ্রা প্রতীক', 'رمز العملة', 'symbole de la monnaie', '货币符号'),
(754, 'shipping_cost_type', 'Shipping Cost Type', 'শিপিং খরচ টাইপ', 'الشحن نوع التكلفة', 'Type de frais de port', '运输成本类型'),
(755, 'product_wise', 'Product Wise', 'পণ্য জ্ঞানী', 'المنتج الحكمة', 'produit sage', '产品明智'),
(756, 'fixed', 'Fixed', 'স্থির', 'ثابت', 'fixé', '固定'),
(757, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'শিপিং খরচ (সংশোধন তাহলে)', 'تكلفة الشحن (إذا الثابتة)', 'frais de port (Si fixe)', '运输成本（如果固定）'),
(758, 'shipment_info', 'Shipment Info', 'চালানের তথ্য', 'معلومات الشحن', 'Information d''expédition', '发货信息'),
(759, 'question', 'Question', 'প্রশ্ন', 'سؤال', 'question', '题'),
(760, 'answer', 'Answer', 'উত্তর', 'إجابة', 'répondre', '回答'),
(761, 'add_more_FAQs', 'Add More FAQs', 'আরো প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী যোগ', 'إضافة المزيد من الأسئلة الشائعة', 'ajouter plus de FAQs', '添加更多的常见问题解答'),
(762, 'manage_payment_methods_&_shipment', 'Manage Payment Methods & Shipment', 'পেমেন্টের &amp; চালান পরিচালনা', 'إدارة وسائل الدفع والشحن', 'gérer les modes de paiement et l''expédition', '管理付款方式及发货'),
(763, 'payment_methods_settings', 'Payment Methods Settings', 'পেমেন্টের সেটিংস', 'ضبط وسائل الدفع', 'paramètres Modes de paiement', '付款方式设置'),
(764, 'paypal_settings', 'Paypal Settings', 'পেপাল সেটিংস', 'إعدادات باي بال', 'paramètres paypal', '贝宝设置'),
(765, 'stripe_settings', 'Stripe Settings', 'ডোরা সেটিংস', 'إعدادات شريط', 'les paramètres de bande', '条纹设置'),
(766, 'shipment_settings', 'Shipment Settings', 'চালানের সেটিংস', 'ضبط شحنة', 'les paramètres d''expédition', '出厂设置'),
(767, 'currency_settings', 'Currency Settings', 'মুদ্রা সেটিংস', 'إعدادات العملة', 'paramètres de devise', '货币设置'),
(768, 'exchange_rate', 'Exchange Rate', 'বিনিময় হার', 'سعر الصرف', 'taux de change', '汇率'),
(769, 'default', 'Default', 'ডিফল্ট', 'الافتراضي', 'défaut', '默认'),
(770, 'exchange_rate_updated', 'Exchange Rate Updated', 'বিনিময় হার আপডেট', 'سعر الصرف تحديثها', 'taux de change mis à jour', '汇率更新'),
(771, 'currency_published', 'Currency Published', 'মুদ্রা প্রকাশিত', 'العملة المنشورة', 'monnaie publié', '货币出版'),
(772, 'currency_unpublished', 'Currency Unpublished', 'মুদ্রা অপ্রকাশিত', 'عملة غير منشورة', 'monnaie inédite', '货币未公布'),
(773, 'syncing..', 'Syncing..', 'সিঙ্ক ..', 'المزامنة ..', 'la synchronisation ..', '同步..'),
(774, '!', '!', '!', '!', '!', '！'),
(775, 'sync', 'Sync', 'সুসংগত', 'مزامنة', 'synchroniser', '同步'),
(776, 'manage_faqs', 'Manage Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী পরিচালনা', 'إدارة الأسئلة المتكررة', 'gérer faqs', '管理常见问题解答'),
(777, 'manage_staffs', 'Manage Staffs', 'কর্মীরা পরিচালনা', 'إدارة الموظفين', 'gérer le personnel', '管理人员'),
(778, 'add_staff', 'Add Staff', 'স্টাফ যোগ', 'إضافة الموظفين', 'ajouter du personnel', '增加员工'),
(779, 'create_admin', 'Create Admin', 'অ্যাডমিন তৈরি', 'إنشاء المشرف', 'créer administrateur', '创建管理员'),
(780, 'role', 'Role', 'ভূমিকা', 'دور', 'rôle', '角色'),
(781, 'edit_admin', 'Edit Admin', 'সম্পাদনা অ্যাডমিন', 'تحرير المشرف', 'modifier administrateur', '编辑管理'),
(782, 'sddress', 'Sddress', 'sddress', 'sddress', 'sddress', 'sddress'),
(783, 'Manage_roles', 'Manage Roles', 'ভূমিকা পরিচালনা', 'إدارة الأدوار', 'Gérer les rôles', '管理角色'),
(784, 'add_role', 'Add Role', 'ভূমিকা যোগ', 'إضافة دور', 'ajouter rôle', '添加角色'),
(785, 'create_role', 'Create Role', 'ভূমিকা তৈরি', 'إنشاء دور', 'créer rôle', '创建角色'),
(786, 'back_to_role_list', 'Back To Role List', 'ফিরে ভূমিকা লিস্টে', 'العودة إلى قائمة دور', 'Retour à la liste de rôles', '回到角色列表'),
(787, 'edit_role', 'Edit Role', 'সম্পাদনা ভূমিকা', 'تحرير الدور', 'modifier rôle', '编辑角色'),
(788, 'permissions', 'Permissions', 'অনুমতি', 'أذونات', 'autorisations', '权限'),
(789, 'manage_SEO', 'Manage SEO', 'এসইও পরিচালনা', 'إدارة كبار المسئولين الاقتصاديين', 'gérer SEO', 'SEO管理'),
(790, 'settings', 'Settings', 'সেটিংস', 'إعدادات', 'paramètres', '设置'),
(791, 'social_network_reach', 'Social Network Reach', 'সামাজিক নেটওয়ার্ক নাগালের', 'الوصول إلى الشبكة الاجتماعية', 'la portée du réseau social', '社会网络覆盖'),
(792, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'আলেক্সা ট্রাফিক মেট্রিক্স', 'مقاييس المرور اليكسا', 'alexa métriques de trafic', 'Alexa的流量指标'),
(793, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'আলেক্সা ট্রাফিক গ্রাফ', 'الرسوم البيانية المرور اليكسا', 'graphes de trafic alexa', 'Alexa的流量图'),
(794, 'search_index', 'Search Index', 'খোঁজের', 'فهرس البحث', 'index de recherche', '搜索索引'),
(795, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'আলেক্সা ট্রাফিক র্যাঙ্ক', 'اليكسا رتبة المرور', 'alexa rang du trafic', 'Alexa排名'),
(796, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'সার্চ ইঞ্জিন অপ্টিমাইজেশান পরিচালনা', 'إدارة محرك البحث الأمثل', 'gérer l''optimisation des moteurs de recherche', '管理搜索引擎优化'),
(797, 'keywords', 'Keywords', 'কীওয়ার্ড', 'الكلمات المفتاحية', 'mots clés', '关键字'),
(798, 'revisit_after', 'Revisit After', 'পরে পরিদর্শন', 'إعادة النظر بعد', 'revoir après', '后重温'),
(799, 'sitemap_link', 'Sitemap Link', 'সাইটম্যাপ লিংক', 'رابط خريطة الموقع', 'lien sitemap', '网站地图链接'),
(800, 'admin_login_logo', 'Admin Login Logo', 'অ্যাডমিন লগইন লোগো', 'المشرف شعار تسجيل الدخول', 'admin login logo', '管理员登录标识'),
(801, 'home_top_logo', 'Home Top Logo', 'হোম শীর্ষ লোগো', 'المنزل أعلى الشعار', 'accueil top logo', '家顶级标志'),
(802, 'home_bottom_logo', 'Home Bottom Logo', 'হোম নীচে লোগো', 'منزل أسفل الشعار', 'fond de la maison logo', '家庭底部标志'),
(803, 'manage_profile', 'Manage Profile', 'প্রোফাইল পরিচালনা', 'إدارة الملف الشخصي', 'gérer le profil', '管理个人资料'),
(804, 'manage_details', 'Manage Details', 'বিবরণ পরিচালনা', 'إدارة تفاصيل', 'gérer les détails', '细节管理'),
(805, 'profile_updated!', 'Profile Updated!', 'প্রোফাইল আপডেট!', 'تحديث الملف الشخصي!', 'Profil mis à jour!', '个人资料已更新！'),
(806, 'update_profile', 'Update Profile', 'প্রফাইল হালনাগাদ', 'تحديث الملف', 'mettre à jour le profil', '更新个人信息'),
(807, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন', 'تغيير كلمة السر', 'changer le mot de passe', '更改密码'),
(808, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'كلمة السر الحالية', 'Mot de passe actuel', '当前密码'),
(809, 'new_password*', 'New Password*', 'নতুন পাসওয়ার্ড *', 'كلمة السر الجديدة*', 'nouveau mot de passe*', '新密码*'),
(810, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'تأكيد كلمة المرور', 'Confirmez le mot de passe', '确认密码'),
(811, 'password_updated!', 'Password Updated!', 'পাসওয়ার্ড আপডেট করা!', 'تم تحديث كلمة السر!', 'Mot de passe mis à jour!', '密码更新！'),
(812, 'update_password', 'Update Password', 'আপডেটের পাসওয়ার্ড', 'كلمة التحديث', 'mise à jour le mot de passe', '更新密码'),
(813, 'password_mismatched', 'Password Mismatched', 'পাসওয়ার্ড সাথে অমিল', 'كلمة المرور غير متطابقة', 'mot de passe dépareillés', '密码不匹配'),
(814, 'incorrect_password!', 'Incorrect Password!', 'ভুল পাসওয়ার্ড৤!', 'كلمة مرور غير صحيحة!', 'mot de passe incorrect!', '密码不正确！'),
(815, 'language_name', 'Language Name', 'ভাষার নাম', 'اسم اللغة', 'Nom de la langue', '语言名称'),
(816, 'language_icon', 'Language Icon', 'ভাষা আইকন', 'رمز لغة', 'icône de langue', '语言图标'),
(817, 'select_language_icon', 'Select Language Icon', 'ভাষা নির্বাচন আইকন', 'رمز لغة حدد', 'Icône de sélection de la langue', '选择语言图标'),
(818, 'secret', 'Secret', 'গোপন', 'سر', 'secret', '秘密'),
(819, 'application_name', 'Application Name', 'আবেদনের নাম', 'اسم التطبيق', 'Nom de l''application', '应用名称'),
(820, 'client', 'Client', 'মক্কেল', 'زبون', 'client', '客户'),
(821, 'client_secret', 'Client Secret', 'ক্লায়েন্ট সিক্রেট', 'سر العميل', 'secret client', '客户端密钥'),
(822, 'redirect', 'Redirect', 'পুনর্নির্দেশ', 'إعادة توجيه', 'réorienter', '重定向'),
(823, 'key', 'Key', 'চাবি', 'مفتاح', 'clé', '键'),
(824, 'visit_my_homepage', 'Visit My Homepage', 'আমার হোমপেজে যান', 'زيارة موقعي', 'visiter ma page d''accueil', '访问我的主页'),
(825, 'membership_type', 'Membership Type', 'মেম্বারশিপ টাইপ', 'نوع العضوية', 'Type d''adhésion', '会员类型'),
(826, 'membership_details', 'Membership Details', 'সদস্য বিবরণ', 'تفاصيل العضوية', 'les détails d''adhésion', '会员资料，'),
(827, 'membership_expiration', 'Membership Expiration', 'সদস্য মেয়াদপূর্তির', 'انتهاء عضوية', 'expiration de l''adhésion', '会员到期'),
(828, 'total_uploaded_products', 'Total Uploaded Products', 'মোট আপলোড পণ্য', 'مجموع المنتجات التي تم تحميلها.', 'produits totaux téléchargés', '总上传产品'),
(829, 'uploaded_published_products', 'Uploaded Published Products', 'আপলোড প্রকাশিত পণ্য', 'منتجات المنشورة التي تم تحميلها', 'produits publiés téléchargés', '上传发布的产品'),
(830, 'vendorship_timespan', 'Vendorship Timespan', 'vendorship timespan', 'vendorship زمنية', 'vendorship timespan', 'vendorship时间跨度'),
(831, 'remaining', 'Remaining', 'অবশিষ্ট', 'المتبقية', 'restant', '其余'),
(832, 'paid_by_customers', 'Paid By Customers', 'গ্রাহকদের দ্বারা দেওয়া', 'المدفوعة من قبل العملاء', 'payés par les clients', '由客户支付'),
(833, 'due_from_admin', 'Due From Admin', 'অ্যাডমিন থেকে কারণে', 'بسبب من المشرف', 'en raison de l''administrateur', '应收管理'),
(834, 'payment_settings', 'Payment Settings', 'পেমেন্ট সেটিংস', 'إعدادات الدفع', 'paramètres de paiement', '付款设置'),
(835, 'upgrade_package', 'Upgrade Package', 'আপগ্রেড প্যাকেজ', 'حزمة الترقية', 'package de mise à niveau', '升级包'),
(836, 'manage_your_product_stock', 'Manage Your Product Stock', 'আপনার পণ্য স্টক পরিচালনা', 'إدارة المخزون المنتج الخاص بك', 'gérer votre stock de produits', '管理你的产品库存'),
(837, 'select_category', 'Select Category', 'বিভাগ নির্বাচন করুন', 'اختر الفئة', 'Choisir une catégorie', '选择类别'),
(838, 'choose_product', 'Choose Product', 'পণ্য চয়ন', 'اختيار المنتج', 'choisir le produit', '选择产品'),
(839, 'manage_public_profile_slider', 'Manage Public Profile Slider', 'সর্বজনীন প্রোফাইল স্লাইডার পরিচালনা', 'إدارة المنزلق ملفه الشخصي', 'gérer le profil curseur publique', '管理的公众形象滑块'),
(840, 'home_page_style', 'Home Page Style', 'হোম পৃষ্ঠা শৈলী', 'أسلوب الصفحة الرئيسية', 'la page d''accueil de style', '主页风格'),
(841, 'manage_site', 'Manage Site', 'সাইট পরিচালনা', 'إدارة الموقع', 'gérer le site', '管理网站'),
(842, 'vendor_images', 'Vendor Images', 'ভেন্ডর চিত্র', 'الصور مورد معين لل', 'images fournisseurs', '厂商图片'),
(843, 'social_media', 'Social Media', 'সামাজিক মাধ্যম', 'وسائل التواصل الاجتماعي', 'média sociaux', '社交媒体'),
(844, 'SEO', 'SEO', 'এসইও', 'كبار المسئولين الاقتصاديين', 'référencement', '搜索引擎优化'),
(845, 'select_images', 'Select Images', 'চিত্র নির্বাচন করুন', 'صور مختارة', 'sélectionner les images', '选择图片'),
(846, 'suggested_width', 'Suggested Width', 'প্রস্তাবিত প্রস্থ', 'عرض المقترح', 'largeur suggérée', '建议宽度'),
(847, 'height', 'Height', 'উচ্চতা', 'ارتفاع', 'la taille', '高度'),
(848, 'cover_photo', 'Cover Photo', 'প্রচ্ছদ ছবি', 'صورة الغلاف', 'photo de couverture', '封面照片'),
(849, 'select_photo', 'Select Photo', 'ছবি নির্বাচন করুন', 'اختر الصورة', 'select photo', '选择照片'),
(850, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'পেমেন্ট পাওয়ার সেটিংস পরিচালনা', 'إدارة إعدادات دفع المتلقي', 'gérer les paramètres de réception de paiement', '管理支付接收设置'),
(851, 'upgrade', 'Upgrade', 'আপগ্রেড', 'تطوير', 'surclassement', '升级'),
(852, 'maximum_product', 'Maximum Product', 'সর্বাধিক পণ্য', 'الحد الأقصى المنتج', 'produit maximale', '产品最大'),
(853, 'about', 'About', 'সম্বন্ধে', 'حول', 'sur', '关于'),
(854, 'oops', 'Oops', 'ওহো', 'عفوا', 'Oops', '哎呀'),
(855, 'the_page_you_requested_was_not_found', 'The Page You Requested Was Not Found', 'আপনার অনুরোধ পাতা পাওয়া যায় না', 'الصفحة المطلوبة غير متوفرة', 'La page que vous avez demandée n''a pas été trouvée', '未找到您所请求的页面'),
(856, 'back_to_home', 'Back To Home', 'বাড়িতে ফিরে যাও', 'العودة إلى المنزل', 'de retour à la maison', '返回首页'),
(857, 'browse', 'Browse', 'ব্রাউজ', 'تصفح', 'Feuilleter', '浏览'),
(858, 'sort_by', 'Sort By', 'ক্রমানুসার', 'ترتيب حسب', 'Trier par', '排序方式'),
(859, 'price_low_to_high', 'Price Low To High', 'মূল্য কম থেকে', 'السعر على ارتفاع منخفض', 'prix croissant', '价格从低到高'),
(860, 'price_high_to_low', 'Price High To Low', 'মূল্য থেকে কম', 'السعر الاعلى الى الادنى', 'prix décroissant', '价格高到低'),
(861, 'oldest', 'Oldest', 'প্রবীণতম', 'أقدم', 'la plus ancienne', '最老的'),
(862, 'newest', 'Newest', 'নতুন', 'أحدث', 'le plus récent', '最新'),
(863, 'sold_by_:', 'Sold By :', 'বিক্রিত :', 'تم بيعها من قبل :', 'vendu par :', '所售 ：'),
(864, 'price_:', 'Price :', 'মূল্য:', 'السعر :', 'prix :', '价钱 ：'),
(865, 'discount:_', 'Discount: ', 'ছাড়: ', 'خصم: ', 'remise: ', '折扣： '),
(866, '_available', ' Available', ' সহজলভ্য', ' متاح', ' disponible', ' 可用的'),
(867, '_add_to_wishlist', ' Add To Wishlist', ' চাহিদাপত্রে যোগ করা', ' إضافة إلى سلة', ' ajouter à la liste de souhaits', ' 加入收藏'),
(868, '_compare', ' Compare', ' তুলনা করা', ' قارن', ' comparer', ' 比较'),
(869, 'sold_category_of_vendor', 'Sold Category Of Vendor', 'বিক্রেতার বিভাগ বিক্রি', 'فئة بيعها من المورد', 'catégorie vendu du vendeur', '供应商出售类'),
(870, 'recent', 'Recent', 'সাম্প্রতিক', 'الأخيرة', 'récent', '最近'),
(871, 'our_vendors_location', 'Our Vendors Location', 'আমাদের বিক্রেতারা অবস্থান', 'البائعين لدينا موقع', 'notre emplacement des fournisseurs', '我们的供应商的位置'),
(872, 'search_vendors', 'Search Vendors', 'অনুসন্ধান বিক্রেতারা', 'الباعة البحث', 'les fournisseurs de recherche', '搜索厂商'),
(873, 'go', 'Go', 'যাওয়া', 'اذهب', 'aller', '走'),
(874, 'our_vendors', 'Our Vendors', 'আমাদের বিক্রেতারা', 'موردينا', 'nos fournisseurs', '我们的供应商'),
(875, 'message_sent!', 'Message Sent!', 'বার্তা পাঠানো!', 'تم الارسال!', 'message envoyé!', '消息发送！'),
(876, 'incorrect_captcha!', 'Incorrect Captcha!', 'ভুল ক্যাপচা!', 'كلمة التحقق غير صحيح!', 'Captcha incorrecte!', '验证码不正确！'),
(877, 'about_us', 'About Us', 'আমাদের সম্পর্কে', 'معلومات عنا', 'à propos de nous', '关于我们'),
(878, 'contact_form', 'Contact Form', 'যোগাযোগ ফর্ম', 'نموذج الاتصال', 'formulaire de contact', '联系表'),
(879, 'sending..', 'Sending..', 'পাঠানোর ..', 'إرسال..', 'envoi..', '发送..'),
(880, 'send_message', 'Send Message', 'বার্তা পাঠান', 'إرسال رسالة', 'envoyer le message', '发信息'),
(881, 'enter_valid_email_address', 'Enter Valid Email Address', 'বৈধ ই-মেইল ঠিকানা লিখুন', 'أدخل عنوان بريد إلكتروني صالح', 'entrez l''adresse e-mail valide', '输入有效电子邮件地址'),
(882, 'message_sent_successfully', 'Message Sent Successfully', 'বার্তাটি সফলভাবে পাঠানো', 'الرسالة أرسلت بنجاح', 'message envoyé avec succès', '消息发送成功');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`) VALUES
(883, 'incorrect_information!Check agian', 'Incorrect Information!Check Agian', 'ভুল তথ্য! চেক ইন করুন', 'معلومات غير صحيحة! تحقق في', 'des informations incorrectes! Arrivée', '不正确的信息！入住'),
(884, 'this_filed_is_required!', 'This Filed Is Required!', 'এই মামলা দায়ের করা প্রয়োজন বোধ করা হয়!', 'هذه المقدمة هو مطلوب!', 'ce dépôt est nécessaire!', '该申请要求！'),
(885, 'frequently_asked_questions', 'Frequently Asked Questions', 'সচরাচর জিজ্ঞাস্য', 'أسئلة مكررة', 'Questions fréquemment posées', '经常问的问题'),
(886, 'not_a_member_yet_?', 'Not A Member Yet ?', 'এখনো সদস্য নন ?', 'لست عضوا بعد ؟', 'Pas encore membre ?', '还不是会员？'),
(887, 'sign_up_now!', 'Sign Up Now!', 'এখন সাইন আপ!', 'أفتح حساب الأن!', 's''inscrire maintenant!', '立即注册！'),
(888, 'forget_your_password_?', 'Forget Your Password ?', 'আপনার পাসওয়ার্ড ভুলে গেছেন ?', 'نسيت كلمة المرور ؟', 'Mot de passe oublié ?', '忘记密码 ？'),
(889, 'sign_in_with_facebook', 'Sign In With Facebook', 'ফেসবুকে সাইন - ইন করুন', 'قم بتسجيل الدخول باستخدام الفيسبوك', 'Connectez-vous avec Facebook', '请用facebook'),
(890, 'sign_in_with_google', 'Sign In With Google', 'গুগল সাইন ইন', 'تسجيل الدخول مع جوجل', 'connectez-vous avec Google', '在与谷歌'),
(891, 'submit', 'Submit', 'জমা', 'عرض', 'soumettre', '提交'),
(892, 'already_a_member_?_click_to_', 'Already A Member ? Click To ', 'ইতিমধ্যে সদস্য? </font><font>ক্লিক করুন', 'عضوا فعلا ؟ </font><font>انقر ل', 'Déjà membre ? </font><font>cliquez pour', '已经是会员 ？</font><font>点击'),
(893, 'as_customer', 'As Customer', 'গ্রাহক হিসাবে', 'كما العملاء', 'en tant que client', '为客户'),
(894, '_or_', ' Or ', ' অথবা ', ' أو ', ' ou ', ' 要么 '),
(895, 'sign_up', 'Sign Up', 'নিবন্ধন করুন', 'سجل', 's''inscrire', '注册'),
(896, 'as_vendor', 'As Vendor', 'বিক্রেতা হিসাবে', 'كما بائع', 'en tant que vendeur', '（作为卖方）'),
(897, 'registering..', 'Registering..', 'নিবন্ধনের ..', 'تسجيل ..', 'enregistrement..', '注册..'),
(898, 'register', 'Register', 'নিবন্ধন', 'تسجيل', 'registre', '寄存器'),
(899, 'already_a_vendor_?_click_to_', 'Already A Vendor ? Click To ', 'ইতিমধ্যে একটি বিক্রেতা? </font><font>ক্লিক করুন', 'بالفعل بائع؟ </font><font>انقر ل', 'déjà un fournisseur? </font><font>cliquez pour', '已供应商？</font><font>点击'),
(900, 'not_a_member_yet_?_click_to_', 'Not A Member Yet ? Click To ', 'এখনো সদস্য নন ? </font><font>ক্লিক করুন', 'لست عضوا بعد ؟ </font><font>انقر ل', 'Pas encore membre ? </font><font>cliquez pour', '还不是会员？</font><font>点击'),
(901, 'back_to_login', 'Back To Login', 'প্রবেশ করতে পেছান', 'العودة لتسجيل الدخول', 'retour connexion', '回到登录'),
(902, 'reset_compare_list', 'Reset Compare List', 'তালিকা তুলনা রিসেট', 'إعادة تعيين قائمة المقارنة', 'réinitialiser la liste de comparaison', '复位对比清单'),
(903, 'choose_a_product', 'Choose A Product', 'একটি পণ্য চয়ন', 'اختيار المنتج', 'choisir un produit', '选择一个产品'),
(904, 'my_cart', 'My Cart', 'আমার ট্রলি', 'سلتي', 'mon panier', '我的车'),
(905, '1', '1', '1', '1', '1', '1'),
(906, 'orders', 'Orders', 'আদেশ', 'أوامر', 'ordres', '命令'),
(907, '2', '2', '2', '2', '2', '2'),
(908, 'delivery_address', 'Delivery Address', 'সরবরাহের ঠিকানা', 'عنوان التوصيل', 'adresse de livraison', '邮寄地址'),
(909, '3', '3', '3', '3', '3', '3'),
(910, 'payments_options', 'Payments Options', 'পেমেন্ট অপশন', 'خيارات الدفع', 'Options de paiement', '支付选项'),
(911, 'cancel_order', 'Cancel Order', 'আদেশ বাতিল', 'الغاء الطلب', 'annuler la commande', '取消订单'),
(912, 'place_order', 'Place Order', 'জায়গা অর্ডার', 'أمر مكان', 'Passer la commande', '下订单'),
(913, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'ملفي الشخصي', 'mon profil', '我的简历'),
(914, 'wishlist', 'Wishlist', 'ইচ্ছেতালিকা', 'مفضلة', 'Liste de souhaits', '愿望清单'),
(915, 'unit_price', 'Unit Price', 'একক দাম', 'سعر الوحدة', 'prix unitaire', '单价'),
(916, 'change_choices', 'Change Choices', 'পরিবর্তন পছন্দ', 'خيارات التغيير', 'choix de changement', '变化的选择'),
(917, 'shopping_cart', 'Shopping Cart', 'বাজারের ব্যাগ', 'عربة التسوق', 'Panier', '购物车'),
(918, 'coupon_discount', 'Coupon Discount', 'কুপন ডিসকাউন্ট', 'قسيمة خصم', 'bon de réduction', '优惠券折扣'),
(919, 'enter_your_coupon_code_if_you_have_one', 'Enter Your Coupon Code If You Have One', 'যদি কেউ থাকেন আপনার কুপন কোড লিখুন', 'إدخال رمز القسيمة إذا كان لديك واحدة', 'entrez votre code de coupon si vous en avez un', '输入您的优惠券代码，如果你有一个'),
(920, 'apply_coupon', 'Apply Coupon', 'কুপন প্রয়োগ করুন', 'تطبيق القسيمة', 'Appliquer Coupon', '申请优惠券'),
(921, 'postcode/ZIP', 'Postcode/ZIP', 'পিন কোড / জিপ', 'الرمز البريدي / الرمز البريدي', 'code postal / ZIP', '邮编/ ZIP'),
(922, 'ship_to_different_address_for_invoice', 'Ship To Different Address For Invoice', 'চালান জন্য বিভিন্ন ঠিকানায় জাহাজ', 'سفينة إلى عنوان مختلف عن فاتورة', 'navire à l''adresse différente pour la facture', '船到不同的地址发票'),
(923, 'paypal', 'Paypal', 'পেপাল', 'باي بال', 'paypal', '贝宝'),
(924, 'stripe', 'Stripe', 'ডোরা', 'شريط', 'bande', '条纹'),
(925, 'invoice_paper', 'Invoice Paper', 'চালান কাগজ', 'ورقة الفاتورة', 'facture papier', '发票纸'),
(926, 'invoice_no', 'Invoice No', 'চালান নং', 'رقم الفاتورة', 'facturera pas', '发票号码'),
(927, 'client_information:', 'Client Information:', 'ক্লায়েন্ট তথ্য:', 'معلومات العميل:', 'informations sur le client:', '客户资料：'),
(928, 'first_name:', 'First Name:', 'প্রথম নাম:', 'الاسم الاول:', 'Prénom:', '名字：'),
(929, 'last_name:', 'Last Name:', 'নামের শেষাংশ:', 'الكنية:', 'nom de famille:', '姓：'),
(930, 'peyment_details_:', 'Peyment Details :', 'peyment বিবরণ:', 'تفاصيل PEYMENT:', 'détails peyment:', 'peyment详细信息：'),
(931, 'payment_status_:', 'Payment Status :', 'লেনদেনের অবস্থা :', 'حالة السداد :', 'statut de paiement :', '支付状态 ：'),
(932, 'payment_method_:', 'Payment Method :', 'মূল্যপরিশোধ পদ্ধতি :', 'طريقة الدفع او السداد :', 'mode de paiement :', '付款方法 ：'),
(933, 'invoice', 'Invoice', 'চালান', 'فاتورة', 'facture d''achat', '发票'),
(934, 'billed_to', 'Billed To', 'বিল', 'وصفت ل', 'facturé à', '付款人'),
(935, 'shipped_to', 'Shipped To', 'বিক্রী', 'تم شحنها إلي', 'expédiés à', '运到'),
(936, 'order_date', 'Order Date', 'অর্ডারের তারিখ', 'تاريخ الطلب', 'date de commande', '订购日期'),
(937, 'order_history', 'Order History', 'অর্ডার ইতিহাস', 'تاريخ الطلب', 'Historique des commandes', '订单历史'),
(938, 'downloads', 'Downloads', 'ডাউনলোড', 'التنزيلات', 'téléchargements', '下载'),
(939, 'edit_profile', 'Edit Profile', 'প্রোফাইল সম্পাদনা', 'تعديل الملف الشخصي', 'modifier le profil', '编辑个人资料'),
(940, 'support_ticket', 'Support Ticket', 'সমর্থন টিকেট', 'بطاقة الدعم', 'ticket de support', '支持票'),
(941, 'change_profile_picture', 'Change Profile Picture', 'প্রোফাইল ছবি পরিবর্তন', 'تغيير الصورة الشخصية', 'modifier la photo de profil', '更改资料图片'),
(942, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', 'প্রোফাইল ছবি সফলভাবে সংরক্ষিত!', 'الصورة الشخصية المحفوظة بنجاح!', 'photo de profil enregistré avec succès!', '资料图片保存成功！'),
(943, 'edit_failed!', 'Edit Failed!', 'সম্পাদনা ব্যর্থ হয়েছে!', 'تحرير فشل!', 'edit a échoué!', '编辑失败！'),
(944, 'try_again!', 'Try Again!', 'আবার চেষ্টা কর!', 'حاول ثانية!', 'réessayer!', '再试一次！'),
(945, 'save_changes', 'Save Changes', 'পরিবর্তনগুলোর সংরক্ষন', 'حفظ التغييرات', 'Sauvegarder les modifications', '保存更改'),
(946, 'profile_information', 'Profile Information', 'জীবন তথ্য', 'معلومات الملف الشخصي', 'Informations sur le profil', '档案信息'),
(947, 'last_7_days', 'Last 7 Days', 'গত 7 দিনে', '7 أيام الماضية', 'les 7 derniers jours', '过去7天'),
(948, 'last_30_days', 'Last 30 Days', 'শেষ 30 দিন', 'أخر 30 يوم', 'les 30 derniers jours', '最近30天'),
(949, 'wished_products', 'Wished Products', 'আকাঙ্ক্ষিত পণ্য', 'منتجات تمنى', 'produits souhaités', '希望产品'),
(950, 'user_since', 'User Since', 'ব্যবহারকারী থেকে', 'مستخدم منذ', 'utilisateur depuis', '用户自'),
(951, 'last_login', 'Last Login', 'গত লগইন', 'آخر تسجيل دخول', 'Dernière connexion', '上次登录'),
(952, 'contact_no', 'Contact No', 'যোগাযোগের নম্বর', 'رقم الاتصال', 'contactez pas', '联系方式'),
(953, 'your_wishlist', 'Your Wishlist', 'আপনার ইচ্ছা তালিকা', 'سلة المفضلة', 'votre liste', '您的愿望清单'),
(954, 'availability', 'Availability', 'উপস্থিতি', 'توفر', 'disponibilité', '可用性'),
(955, 'purchase', 'Purchase', 'ক্রয়', 'شراء', 'achat', '采购'),
(956, 'available', 'Available', 'সহজলভ্য', 'متاح', 'disponible', '可用的'),
(957, 'your_order_history', 'Your Order History', 'আপনার অর্ডার ইতিহাস', 'تاريخ طلبك', 'historique de vos commandes', '您的订单历史记录'),
(958, 'your_downloads', 'Your Downloads', 'আপনার ডাউনলোড', 'برامجك', 'vos téléchargements', '您的下载'),
(959, 'downloading..', 'Downloading..', 'ডাউনলোডিং ..', 'تحميل ..', 'téléchargement en cours..', '下载..'),
(960, 'download_permission_denied', 'Download Permission Denied', 'ডাউনলোড অনুমতি অস্বীকার', 'تحميل تم رفض الإذن', 'téléchargement permission refusée', '下载权限被拒绝'),
(961, 'personal_info', 'Personal Info', 'ব্যাক্তিগত তথ্য', 'معلومات شخصية', 'Informations personnelles', '个人信息'),
(962, 'change_your_profile_information', 'Change Your Profile Information', 'আপনার প্রোফাইলের তথ্য পরিবর্তন', 'تغيير معلومات الملف الشخصي', 'modifier vos informations de profil', '更改您的个人信息'),
(963, 'address 1', 'Address 1', 'ঠিকানা 1', 'العنوان 1', 'Adresse 1', '地址1'),
(964, 'address 2', 'Address 2', 'ঠিকানা ২', 'العنوان 2', 'Adresse 2', '地址2'),
(965, 'skype', 'Skype', 'স্কাইপ', 'سكايب', 'skype', 'Skype的'),
(966, 'google_plus', 'Google Plus', 'গুগল প্লাস', 'جوجل بلس', 'google plus', '谷歌加'),
(967, 'facebook', 'Facebook', 'ফেইসবুক', 'فيس بوك', 'Facebook', 'Facebook的'),
(968, 'info_update_unsuccessful!', 'Info Update Unsuccessful!', 'তথ্য আপডেট অসফল!', 'معلومات تحديث تنجح!', 'Info mise à jour échoue!', '信息更新不成功！'),
(969, 'info_updated_successfully!', 'Info Updated Successfully!', 'তথ্য সফলভাবে আপডেট!', 'معلومات محدثة بنجاح!', 'Renseignements mis à jour avec succès!', '信息更新成功！'),
(970, 'change_your_password', 'Change Your Password', 'আপনার পাসওয়ার্ড পরিবর্তন করুন', 'غير كلمة المرور الخاصة بك', 'changez votre mot de passe', '更改您的密码'),
(971, 'old_password', 'Old Password', 'পুরাতন পাসওয়ার্ড', 'كلمة المرور القديمة', 'ancien mot de passe', '旧密码'),
(972, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'كلمة السر الجديدة', 'nouveau mot de passe', '新密码'),
(973, 'confirm_new_password', 'Confirm New Password', 'নিশ্চিত কর নতুন গোপননম্বর', 'تأكيد كلمة المرور الجديدة', 'confirmer le nouveau mot de passe', '确认新密码'),
(974, 'password_change_unsuccessful!', 'Password Change Unsuccessful!', 'পাসওয়ার্ড পরিবর্তন অসফল!', 'تغيير كلمة المرور غير ناجحة!', 'changement de mot de passe échoue!', '密码修改成功！'),
(975, 'password_changed_successfully!', 'Password Changed Successfully!', 'পাসওয়ার্ড সফলভাবে পরিবর্তন!', 'تم تغيير الرقم السري بنجاح!', 'Le mot de passe a été changé avec succès!', '密码修改成功！'),
(976, 'all_messages', 'All Messages', 'সব বার্তা', 'جميع الرسائل', 'tous les messages', '所有消息'),
(977, 'create_ticket', 'Create Ticket', 'টিকিট তৈরি', 'إنشاء تذكرة', 'créer billet', '创建票'),
(978, 'ticket_subject', 'Ticket Subject', 'টিকেট বিষয়', 'تذكرة الموضوع', 'sujet du ticket', '单主题'),
(979, 'comment', 'Comment', 'মন্তব্য', 'التعليق', 'commentaire', '评论'),
(980, 'creating...', 'Creating...', 'তৈরি ...', 'إنشاء...', 'la création ...', '创建...'),
(981, 'ticket_created_successfully', 'Ticket Created Successfully', 'টিকেট সফলভাবে তৈরি', 'تذكرة إنشاؤها بنجاح', 'ticket créé avec succès', '票成功创建'),
(982, 'ticket_creation_unsuccessful', 'Ticket Creation Unsuccessful', 'টিকেট সৃষ্টি অসফল', 'إنشاء تذكرة ناجحة', 'création de billets infructueuses', '单创建不成功'),
(983, 'create', 'Create', 'সৃষ্টি', 'خلق', 'Créer', '创建'),
(984, 'your_message', 'Your Message', 'তোমার বার্তা', 'رسالتك', 'votre message', '你的信息'),
(985, 'replying...', 'Replying...', 'জবাব ...', 'الرد ...', 'répondre ...', '回复...'),
(986, 'reply_sent_successfully', 'Reply Sent Successfully', 'উত্তর সফলভাবে পাঠানো', 'الرد إرسالها بنجاح', 'réponse envoyé avec succès', '回复发送成功'),
(987, 'unsuccessful', 'Unsuccessful', 'ব্যার্থ', 'غير ناجح', 'infructueux', '不成功'),
(988, 'vendor_public_home', 'Vendor Public Home', 'বিক্রেতা পাবলিক হোম', 'البيت العام الباعة من', 'accueil du public fournisseur', '供应商的众家'),
(989, 'member_since', 'Member Since', 'সদস্য থেকে', 'عضو منذ', 'membre depuis', '会员自'),
(990, 'vendor_rating', 'Vendor Rating', 'বিক্রেতার রেটিং', 'تصنيفهم', 'Note fournisseur', '卖方评级'),
(991, 'about_vendor', 'About Vendor', 'বিক্রেতা সম্পর্কে', 'حول بائع', 'à propos de fournisseur', '有关供应商'),
(992, 'find_location', 'Find Location', 'অবস্থান খুঁজে', 'العثور على الموقع', 'trouver l''emplacement', '找到位置'),
(993, 'filters', 'Filters', 'ফিল্টার', 'مرشحات', 'filtres', '过滤器'),
(994, 'vendor_featured_product', 'Vendor Featured Product', 'বিক্রেতার বৈশিষ্ট্যযুক্ত পণ্য', 'بائع المنتج المميز', 'fournisseur produit vedette', '供应商的特色产品'),
(995, 'added_to_wishlist', 'Added To Wishlist', NULL, NULL, NULL, NULL),
(996, 'all_category', 'All Category', NULL, NULL, NULL, NULL),
(997, 'by', 'By', NULL, NULL, NULL, NULL),
(998, 'sold_by', 'Sold By', NULL, NULL, NULL, NULL),
(999, 'last_updated', 'Last Updated', NULL, NULL, NULL, NULL),
(1000, 'review(s)', 'Review(s)', NULL, NULL, NULL, NULL),
(1001, 'add_your_review', 'Add Your Review', NULL, NULL, NULL, NULL),
(1002, 'view_details', 'View Details', NULL, NULL, NULL, NULL),
(1003, 'related_products', 'Related Products', NULL, NULL, NULL, NULL),
(1004, 'full_description', 'Full Description', NULL, NULL, NULL, NULL),
(1005, 'additional_specification', 'Additional Specification', NULL, NULL, NULL, NULL),
(1006, 'reviews', 'Reviews', NULL, NULL, NULL, NULL),
(1007, 'color_:', 'Color :', NULL, NULL, NULL, NULL),
(1008, 'add_to_list', 'Add To List', NULL, NULL, NULL, NULL),
(1009, 'you_have_registered_successfully', 'You Have Registered Successfully', NULL, NULL, NULL, NULL),
(1010, 'email_sending_failed!', 'Email Sending Failed!', NULL, NULL, NULL, NULL),
(1011, 'working', 'Working', NULL, NULL, NULL, NULL),
(1012, 'fill_all_fields_correctly', 'Fill All Fields Correctly', NULL, NULL, NULL, NULL),
(1013, 'deposit_request_sent', 'Deposit Request Sent', NULL, NULL, NULL, NULL),
(1014, 'deposit_request_sending_failed', 'Deposit Request Sending Failed', NULL, NULL, NULL, NULL),
(1015, 'payment_info_sent', 'Payment Info Sent', NULL, NULL, NULL, NULL),
(1016, 'payment_info_sending_failed', 'Payment Info Sending Failed', NULL, NULL, NULL, NULL),
(1017, 'wallet', 'Wallet', NULL, NULL, NULL, NULL),
(1018, 'state', 'State', NULL, NULL, NULL, NULL),
(1019, 'country', 'Country', NULL, NULL, NULL, NULL),
(1020, 'deposit_to_wallet', 'Deposit To Wallet', NULL, NULL, NULL, NULL),
(1021, 'your_wallet_history', 'Your Wallet History', NULL, NULL, NULL, NULL),
(1022, 'time', 'Time', NULL, NULL, NULL, NULL),
(1023, 'payment_info', 'Payment Info', NULL, NULL, NULL, NULL),
(1024, 'order_tracing', 'Order Tracing', NULL, NULL, NULL, NULL),
(1025, 'order_tracing_unsuccessful!', 'Order Tracing Unsuccessful!', NULL, NULL, NULL, NULL),
(1026, 'order_traced_successfully!', 'Order Traced Successfully!', NULL, NULL, NULL, NULL),
(1027, 'checking..', 'Checking..', NULL, NULL, NULL, NULL),
(1028, 'trace_my_order', 'Trace My Order', NULL, NULL, NULL, NULL),
(1029, 'pay_to_vendor', 'Pay To Vendor', NULL, NULL, NULL, NULL),
(1030, 'package_payments', 'Package Payments', NULL, NULL, NULL, NULL),
(1031, 'wallet_loads', 'Wallet Loads', NULL, NULL, NULL, NULL),
(1032, 'email_templates', 'Email Templates', NULL, NULL, NULL, NULL),
(1033, 'twocheckout_payment_enabled!', 'Twocheckout Payment Enabled!', NULL, NULL, NULL, NULL),
(1034, 'twocheckout_payment_disabled!', 'Twocheckout Payment Disabled!', NULL, NULL, NULL, NULL),
(1035, 'voguePay_payment_enabled!', 'VoguePay Payment Enabled!', NULL, NULL, NULL, NULL),
(1036, 'voguePay_payment_disabled!', 'VoguePay Payment Disabled!', NULL, NULL, NULL, NULL),
(1037, 'successfully_enabled!', 'Successfully Enabled!', NULL, NULL, NULL, NULL),
(1038, 'successfully_disabled!', 'Successfully Disabled!', NULL, NULL, NULL, NULL),
(1039, 'twocheckout_activation', 'Twocheckout Activation', NULL, NULL, NULL, NULL),
(1040, 'twocheckout_payment_enabled', 'Twocheckout Payment Enabled', NULL, NULL, NULL, NULL),
(1041, 'twocheckout_payment_disabled', 'Twocheckout Payment Disabled', NULL, NULL, NULL, NULL),
(1042, 'voguePay_activation', 'VoguePay Activation', NULL, NULL, NULL, NULL),
(1043, 'voguePay_payment_enabled', 'VoguePay Payment Enabled', NULL, NULL, NULL, NULL),
(1044, 'voguePay_payment_disabled', 'VoguePay Payment Disabled', NULL, NULL, NULL, NULL),
(1045, 'twocheckout_settings', 'Twocheckout Settings', NULL, NULL, NULL, NULL),
(1046, 'user_id', 'User Id', NULL, NULL, NULL, NULL),
(1047, 'secret_key', 'Secret Key', NULL, NULL, NULL, NULL),
(1048, 'account_type', 'Account Type', NULL, NULL, NULL, NULL),
(1049, 'voguePay_settings', 'VoguePay Settings', NULL, NULL, NULL, NULL),
(1050, 'merchant_id', 'Merchant Id', NULL, NULL, NULL, NULL),
(1051, 'manage_wallet_loads', 'Manage Wallet Loads', NULL, NULL, NULL, NULL),
(1052, 'customer', 'Customer', NULL, NULL, NULL, NULL),
(1053, 'i_agree_with', 'I Agree With', NULL, NULL, NULL, NULL),
(1054, 'terms_&_conditions', 'Terms & Conditions', NULL, NULL, NULL, NULL),
(1055, 'you_must_agree_with_terms_&_conditions', 'You Must Agree With Terms & Conditions', NULL, NULL, NULL, NULL),
(1056, 'deposit', 'Deposit', NULL, NULL, NULL, NULL),
(1057, 'transaction_info', 'Transaction Info', NULL, NULL, NULL, NULL),
(1058, 'fully_paid', 'Fully Paid', NULL, NULL, NULL, NULL),
(1059, 'payment_from_admin', 'Payment From Admin', NULL, NULL, NULL, NULL),
(1060, 'package_upgrade_history', 'Package Upgrade History', NULL, NULL, NULL, NULL),
(1061, 'wrong_order_id!', 'Wrong Order Id!', NULL, NULL, NULL, NULL),
(1062, 'order_from', 'Order From', NULL, NULL, NULL, NULL),
(1063, 'pending', 'Pending', NULL, NULL, NULL, NULL),
(1064, 'status_updated_on', 'Status Updated On', NULL, NULL, NULL, NULL),
(1065, 'twocheckcout_payment', 'Twocheckcout Payment', NULL, NULL, NULL, NULL),
(1066, 'twocheckcout_user', 'Twocheckcout User', NULL, NULL, NULL, NULL),
(1067, 'twocheckout_secret', 'Twocheckout Secret', NULL, NULL, NULL, NULL),
(1068, 'voguePay_payment', 'VoguePay Payment', NULL, NULL, NULL, NULL),
(1069, 'details_on_delivery_status', 'Details On Delivery Status', NULL, NULL, NULL, NULL),
(1070, 'manage_Admin_payments', 'Manage Admin Payments', NULL, NULL, NULL, NULL),
(1071, 'total_due', 'Total Due', NULL, NULL, NULL, NULL),
(1072, 'paid_amount', 'Paid Amount', NULL, NULL, NULL, NULL),
(1073, 'admin_payments', 'Admin Payments', NULL, NULL, NULL, NULL),
(1074, 'manage_package_upgrade_history', 'Manage Package Upgrade History', NULL, NULL, NULL, NULL),
(1075, 'view_upgrade_details', 'View Upgrade Details', NULL, NULL, NULL, NULL),
(1076, 'free', 'Free', NULL, NULL, NULL, NULL),
(1077, 'sub-categories_(max 4)', 'Sub-categories (max 4)', NULL, NULL, NULL, NULL),
(1078, 'smtp_settings', 'Smtp Settings', NULL, NULL, NULL, NULL),
(1079, 'smtp_status', 'Smtp Status', NULL, NULL, NULL, NULL),
(1080, 'smtp_host', 'Smtp Host', NULL, NULL, NULL, NULL),
(1081, 'smtp_port', 'Smtp Port', NULL, NULL, NULL, NULL),
(1082, 'smtp_user', 'Smtp User', NULL, NULL, NULL, NULL),
(1083, 'smtp_password', 'Smtp Password', NULL, NULL, NULL, NULL),
(1084, 'voguepay', 'Voguepay', NULL, NULL, NULL, NULL),
(1085, 'please_fill_the_captcha', 'Please Fill The Captcha', NULL, NULL, NULL, NULL),
(1086, 'incorrect_information', 'Incorrect Information', NULL, NULL, NULL, NULL),
(1087, 'check_again', 'Check Again', NULL, NULL, NULL, NULL),
(1088, 'this_field_is_required!', 'This Field Is Required!', NULL, NULL, NULL, NULL),
(1089, 'blog_details', 'Blog Details', NULL, NULL, NULL, NULL),
(1090, 'blog_has_been_uploaded!', 'Blog Has Been Uploaded!', NULL, NULL, NULL, NULL),
(1091, 'provide_payment_info', 'Provide Payment Info', NULL, NULL, NULL, NULL),
(1092, 'view_status', 'View Status', NULL, NULL, NULL, NULL),
(1093, 'successfully_saved!', 'Successfully Saved!', NULL, NULL, NULL, NULL),
(1094, 'no_payment_info_provided', 'No Payment Info Provided', NULL, NULL, NULL, NULL),
(1095, 'no_product_from_admin', 'No Product From Admin', NULL, NULL, NULL, NULL),
(1096, 'wallet_balance', 'Wallet Balance', NULL, NULL, NULL, NULL),
(1097, 'captcha_status', 'Captcha Status', NULL, NULL, NULL, NULL),
(1098, 'manage_email_templates', 'Manage Email Templates', NULL, NULL, NULL, NULL),
(1099, 'Password Reset Email', 'Password Reset Email', NULL, NULL, NULL, NULL),
(1100, 'Account Approval Email', 'Account Approval Email', NULL, NULL, NULL, NULL),
(1101, 'Membership Upgrade Email', 'Membership Upgrade Email', NULL, NULL, NULL, NULL),
(1102, 'Vendors Account Opening', 'Vendors Account Opening', NULL, NULL, NULL, NULL),
(1103, 'Users Account Opening', 'Users Account Opening', NULL, NULL, NULL, NULL),
(1104, 'Admins Account Opening', 'Admins Account Opening', NULL, NULL, NULL, NULL),
(1105, 'email_body', 'Email Body', NULL, NULL, NULL, NULL),
(1106, 'N.B', 'N.B', NULL, NULL, NULL, NULL),
(1107, 'do_not_change_the_variables_like', 'Do Not Change The Variables Like', NULL, NULL, NULL, NULL),
(1108, 'choose_background_theme', 'Choose Background Theme', NULL, NULL, NULL, NULL),
(1109, 'home_default_currency', 'Home Default Currency', NULL, NULL, NULL, NULL),
(1110, 'system_default_currency', 'System Default Currency', NULL, NULL, NULL, NULL),
(1111, 'set_currency_format', 'Set Currency Format', NULL, NULL, NULL, NULL),
(1112, 'currency_format', 'Currency Format', NULL, NULL, NULL, NULL),
(1113, 'symbol_format', 'Symbol Format', NULL, NULL, NULL, NULL),
(1114, 'no_of_decimals', 'No Of Decimals', NULL, NULL, NULL, NULL),
(1115, 'all_currencies', 'All Currencies', NULL, NULL, NULL, NULL),
(1116, 'product_bundle', 'Product Bundle', NULL, NULL, NULL, NULL),
(1117, 'manage_product_bundle', 'Manage Product Bundle', NULL, NULL, NULL, NULL),
(1118, 'add_product_bundle_entry_taken!', 'Add Product Bundle Entry Taken!', NULL, NULL, NULL, NULL),
(1119, 'add_product_bundle', 'Add Product Bundle', NULL, NULL, NULL, NULL),
(1120, 'create_product_bundle', 'Create Product Bundle', NULL, NULL, NULL, NULL),
(1121, 'back_to_product_bundle_list', 'Back To Product Bundle List', NULL, NULL, NULL, NULL),
(1122, 'bundle_stock', 'Bundle Stock', NULL, NULL, NULL, NULL),
(1123, 'bundle_details', 'Bundle Details', NULL, NULL, NULL, NULL),
(1124, 'bundle_title', 'Bundle Title', NULL, NULL, NULL, NULL),
(1125, 'add_products', 'Add Products', NULL, NULL, NULL, NULL),
(1126, 'add_products_from_here', 'Add Products From Here', NULL, NULL, NULL, NULL),
(1127, 'add', 'Add', NULL, NULL, NULL, NULL),
(1128, 'add_more_products', 'Add More Products', NULL, NULL, NULL, NULL),
(1129, 'bundle_tax', 'Bundle Tax', NULL, NULL, NULL, NULL),
(1130, 'bundle_discount', 'Bundle Discount', NULL, NULL, NULL, NULL),
(1131, 'product_bundle_has_been_uploaded!', 'Product Bundle Has Been Uploaded!', NULL, NULL, NULL, NULL),
(1132, 'No Products are available for this brand', 'No Products Are Available For This Brand', NULL, NULL, NULL, NULL),
(1133, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1134, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1135, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1136, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1137, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1138, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1139, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1140, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1141, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1142, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1143, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1144, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1145, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1146, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1147, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1148, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1149, 'current_stock', 'Current Stock', NULL, NULL, NULL, NULL),
(1150, 'edit_product_bundle', 'Edit Product Bundle', NULL, NULL, NULL, NULL),
(1151, 'No brands are available for this sub category', 'No Brands Are Available For This Sub Category', NULL, NULL, NULL, NULL),
(1152, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1153, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1154, 'product_bundle_has_been_edited!', 'Product Bundle Has Been Edited!', NULL, NULL, NULL, NULL),
(1155, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1156, 'view_product_bundle', 'View Product Bundle', NULL, NULL, NULL, NULL),
(1157, 'product_name', 'Product Name', NULL, NULL, NULL, NULL),
(1158, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1159, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1160, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1161, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1162, 'add_bundle_quantity', 'Add Bundle Quantity', NULL, NULL, NULL, NULL),
(1163, 'reduce_bundle_quantity', 'Reduce Bundle Quantity', NULL, NULL, NULL, NULL),
(1164, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1165, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1166, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1167, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1168, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1169, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1170, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1171, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1172, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1173, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1174, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1175, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1176, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1177, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1178, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1179, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1180, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1181, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1182, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1183, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1184, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1185, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1186, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1187, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1188, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1189, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1190, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1191, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1192, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1193, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1194, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1195, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1196, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1197, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1198, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1199, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1200, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1201, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1202, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1203, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1204, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1205, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1206, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1207, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1208, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1209, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1210, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1211, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1212, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1213, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1214, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1215, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1216, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1217, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1218, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1219, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1220, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1221, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1222, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1223, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1224, 'physical', 'Physical', NULL, NULL, NULL, NULL),
(1225, 'digital', 'Digital', NULL, NULL, NULL, NULL),
(1226, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1227, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1228, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1229, 'bundle', 'Bundle', NULL, NULL, NULL, NULL),
(1230, 'most', 'Most', NULL, NULL, NULL, NULL),
(1231, 'viewed', 'Viewed', NULL, NULL, NULL, NULL),
(1232, 'Products_:', 'Products :', NULL, NULL, NULL, NULL),
(1233, 'added_by:', 'Added By:', NULL, NULL, NULL, NULL),
(1234, 'bundle_rated_successfully', 'Bundle Rated Successfully', NULL, NULL, NULL, NULL),
(1235, 'bundle_rating_failed', 'Bundle Rating Failed', NULL, NULL, NULL, NULL),
(1236, 'you_already_rated_this_bundle', 'You Already Rated This Bundle', NULL, NULL, NULL, NULL),
(1237, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1238, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1239, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1240, 'google_analytics', 'Google Analytics', NULL, NULL, NULL, NULL),
(1241, 'tracking_id', 'Tracking Id', NULL, NULL, NULL, NULL),
(1242, 'google_analytics_settings', 'Google Analytics Settings', NULL, NULL, NULL, NULL),
(1243, 'manage_pay_to_vendor', 'Manage Pay To Vendor', NULL, NULL, NULL, NULL),
(1244, 'google_analytics_enabled!', 'Google Analytics Enabled!', NULL, NULL, NULL, NULL),
(1245, 'google_analytics_disabled!', 'Google Analytics Disabled!', NULL, NULL, NULL, NULL),
(1246, 'show_vendor_website', 'Show Vendor Website', NULL, NULL, NULL, NULL),
(1247, 'vendor_show_enabled', 'Vendor Show Enabled', NULL, NULL, NULL, NULL),
(1248, 'vendor_show_disabled', 'Vendor Show Disabled', NULL, NULL, NULL, NULL),
(1249, 'show_vendors', 'Show Vendors', NULL, NULL, NULL, NULL),
(1250, 'product_bundle_(_show_/_hide_)', 'Product Bundle ( Show / Hide )', NULL, NULL, NULL, NULL),
(1251, 'bundle_product_section_updated!', 'Bundle Product Section Updated!', NULL, NULL, NULL, NULL),
(1252, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1253, 'confirm_payment', 'Confirm Payment', NULL, NULL, NULL, NULL),
(1254, 'bundled_product', 'Bundled Product', NULL, NULL, NULL, NULL),
(1255, 'available_brands', 'Available Brands', NULL, NULL, NULL, NULL),
(1256, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1257, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1258, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1259, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1260, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1261, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1262, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1263, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1264, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1265, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1266, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1267, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1268, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1269, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1270, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1271, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1272, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1273, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1274, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1275, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1276, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1277, 'bundled_products', 'Bundled Products', NULL, NULL, NULL, NULL),
(1278, 'purchase_summary', 'Purchase Summary', NULL, NULL, NULL, NULL),
(1279, 'others_info', 'Others Info', NULL, NULL, NULL, NULL),
(1280, 'personal_information', 'Personal Information', NULL, NULL, NULL, NULL),
(1281, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1282, 'edit_coupon', 'Edit Coupon', NULL, NULL, NULL, NULL),
(1283, 'coupon_discount_activated', 'Coupon Discount Activated', NULL, NULL, NULL, NULL),
(1284, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1285, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1286, '<p class=''control-label''>No brands are available for this sub category</p>', '<p Class=''control-label''>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1287, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1288, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1289, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1290, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1291, '_added_to_wishlist', ' Added To Wishlist', NULL, NULL, NULL, NULL),
(1292, 'thanks_for_registration', 'Thanks For Registration', NULL, NULL, NULL, NULL),
(1293, 'you_have_to_wait_for_admin_approval', 'You Have To Wait For Admin Approval', NULL, NULL, NULL, NULL),
(1294, 'approval_confirmation_will_be_sent_to_your_email', 'Approval Confirmation Will Be Sent To Your Email', NULL, NULL, NULL, NULL),
(1295, 'check_your_email', 'Check Your Email', NULL, NULL, NULL, NULL),
(1296, 'after_confirmation_you_can_', 'After Confirmation You Can ', NULL, NULL, NULL, NULL),
(1297, 'login_from_here', 'Login From Here', NULL, NULL, NULL, NULL),
(1298, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1299, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1300, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1301, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1302, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1303, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1304, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1305, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1306, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1307, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1308, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1309, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL);
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`) VALUES
(1310, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1311, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1312, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1313, 'vendor_payment_status', 'Vendor Payment Status', NULL, NULL, NULL, NULL),
(1314, 'cash', 'Cash', NULL, NULL, NULL, NULL),
(1315, 'post_product', 'Post Product', NULL, NULL, NULL, NULL),
(1316, 'fill_the_form_to_post_the_product', 'Fill The Form To Post The Product', NULL, NULL, NULL, NULL),
(1317, 'processing..', 'Processing..', NULL, NULL, NULL, NULL),
(1318, 'Apply', 'Apply', NULL, NULL, NULL, NULL),
(1319, 'admin_payments_details', 'Admin Payments Details', NULL, NULL, NULL, NULL),
(1320, 'choose_a_country_first', 'Choose A Country First', NULL, NULL, NULL, NULL),
(1321, 'select_a_category', 'Select A Category', NULL, NULL, NULL, NULL),
(1322, 'select_a_category_first', 'Select A Category First', NULL, NULL, NULL, NULL),
(1323, 'new_message', 'New Message', NULL, NULL, NULL, NULL),
(1324, '_compared', ' Compared', NULL, NULL, NULL, NULL),
(1325, 'paid', 'Paid', NULL, NULL, NULL, NULL),
(1326, 'loading...', 'Loading...', NULL, NULL, NULL, NULL),
(1327, 'condition', 'Condition', NULL, NULL, NULL, NULL),
(1328, 'select_a_condition', 'Select A Condition', NULL, NULL, NULL, NULL),
(1329, 'used', 'Used', NULL, NULL, NULL, NULL),
(1330, 'unit(e.g_Kg,Pc etc)', 'Unit(e.g Kg,Pc Etc)', NULL, NULL, NULL, NULL),
(1331, 'unit_(e.g_Kg,_Pc_etc)', 'Unit (e.g Kg, Pc Etc)', NULL, NULL, NULL, NULL),
(1332, 'unit_(Kg,_Pc_etc)', 'Unit (Kg, Pc Etc)', NULL, NULL, NULL, NULL),
(1333, 'choose_files', 'Choose Files', NULL, NULL, NULL, NULL),
(1334, 'location', 'Location', NULL, NULL, NULL, NULL),
(1335, 'additional_information', 'Additional Information', NULL, NULL, NULL, NULL),
(1336, 'product_uploaded_successfully!', 'Product Uploaded Successfully!', NULL, NULL, NULL, NULL),
(1337, 'product_upload_failed!', 'Product Upload Failed!', NULL, NULL, NULL, NULL),
(1338, 'your_remaining_product_upload_amount_is:', 'Your Remaining Product Upload Amount Is:', NULL, NULL, NULL, NULL),
(1339, 'your_remaining_product_upload_amount_is:_', 'Your Remaining Product Upload Amount Is: ', NULL, NULL, NULL, NULL),
(1340, 'please_purchase_a_package_to_upload_more', 'Please Purchase A Package To Upload More', NULL, NULL, NULL, NULL),
(1341, 'purchase_package', 'Purchase Package', NULL, NULL, NULL, NULL),
(1342, 'please_purchase_a_package_to_upload_more_products.', 'Please Purchase A Package To Upload More Products.', NULL, NULL, NULL, NULL),
(1343, 'your_remaining_product_upload_amount:_', 'Your Remaining Product Upload Amount: ', NULL, NULL, NULL, NULL),
(1344, 'remaining_product_upload_amount:_', 'Remaining Product Upload Amount: ', NULL, NULL, NULL, NULL),
(1345, 'confirm_your_upload', 'Confirm Your Upload', NULL, NULL, NULL, NULL),
(1346, 'confirm', 'Confirm', NULL, NULL, NULL, NULL),
(1347, 'uploading_a_product_will_cost_you_1_upload_amount', 'Uploading A Product Will Cost You 1 Upload Amount', NULL, NULL, NULL, NULL),
(1348, 'uploading_a_product_will_cost_you_1_upload_amount</br>after_uploading_a_product_you_can''t_edit_it', 'Uploading A Product Will Cost You 1 Upload Amount</br>after Uploading A Product You Can''t Edit It', NULL, NULL, NULL, NULL),
(1349, 'uploading_a_product_will_cost_you_1_upload_amount</br><span class="text-danger">After_uploading_a_product_you_can''t_edit_it</span>', 'Uploading A Product Will Cost You 1 Upload Amount</br><span Class="text-danger">After Uploading A Product You Can''t Edit It</span>', NULL, NULL, NULL, NULL),
(1350, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class="text-danger">After_uploading_a_product_you_can''t_edit_it</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class="text-danger">After Uploading A Product You Can''t Edit It</b>', NULL, NULL, NULL, NULL),
(1351, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class="text-danger">After_uploading_a_product_you_can_not_edit_it_again</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class="text-danger">After Uploading A Product You Can Not Edit It Again</b>', NULL, NULL, NULL, NULL),
(1352, 'package_info', 'Package Info', NULL, NULL, NULL, NULL),
(1353, 'remaining_upload_amount', 'Remaining Upload Amount', NULL, NULL, NULL, NULL),
(1354, 'last_purchased_package', 'Last Purchased Package', NULL, NULL, NULL, NULL),
(1355, 'current_package', 'Current Package', NULL, NULL, NULL, NULL),
(1356, 'purchase_time', 'Purchase Time', NULL, NULL, NULL, NULL),
(1357, 'customer''s_uploaded_products', 'Customer''s Uploaded Products', NULL, NULL, NULL, NULL),
(1358, 'terms_conditions', 'Terms Conditions', NULL, NULL, NULL, NULL),
(1359, 'premium_packeges', 'Premium Packeges', NULL, NULL, NULL, NULL),
(1360, 'product_by', 'Product By', NULL, NULL, NULL, NULL),
(1361, 'sold_by:', 'Sold By:', NULL, NULL, NULL, NULL),
(1362, 'seller:', 'Seller:', NULL, NULL, NULL, NULL),
(1363, 'premium_packeges_for_customer', 'Premium Packeges For Customer', NULL, NULL, NULL, NULL),
(1364, 'product_upload_amount', 'Product Upload Amount', NULL, NULL, NULL, NULL),
(1365, 'amount_of', 'Amount Of', NULL, NULL, NULL, NULL),
(1366, 'product_upload', 'Product Upload', NULL, NULL, NULL, NULL),
(1367, 'times', 'Times', NULL, NULL, NULL, NULL),
(1368, 'seller:_', 'Seller: ', NULL, NULL, NULL, NULL),
(1369, 'seller_email:', 'Seller Email:', NULL, NULL, NULL, NULL),
(1370, 'seller_phone:', 'Seller Phone:', NULL, NULL, NULL, NULL),
(1371, 'not_given', 'Not Given', NULL, NULL, NULL, NULL),
(1372, 'phone_no.:', 'Phone No.:', NULL, NULL, NULL, NULL),
(1373, 'express_interest:', 'Express Interest:', NULL, NULL, NULL, NULL),
(1374, 'direct_messages:', 'Direct Messages:', NULL, NULL, NULL, NULL),
(1375, 'photo_gallery:', 'Photo Gallery:', NULL, NULL, NULL, NULL),
(1376, 'select_a_payment_method', 'Select A Payment Method', NULL, NULL, NULL, NULL),
(1377, 'please_wait', 'Please Wait', NULL, NULL, NULL, NULL),
(1378, 'confirm_purchase', 'Confirm Purchase', NULL, NULL, NULL, NULL),
(1379, 'selected', 'Selected', NULL, NULL, NULL, NULL),
(1380, 'premium_packege', 'Premium Packege', NULL, NULL, NULL, NULL),
(1381, 'packege', 'Packege', NULL, NULL, NULL, NULL),
(1382, 'back_to_packege_list', 'Back To Packege List', NULL, NULL, NULL, NULL),
(1383, 'edit_packege', 'Edit Packege', NULL, NULL, NULL, NULL),
(1384, 'location:', 'Location:', NULL, NULL, NULL, NULL),
(1385, 'packege_name', 'Packege Name', NULL, NULL, NULL, NULL),
(1386, 'amount_(USD)', 'Amount (USD)', NULL, NULL, NULL, NULL),
(1387, 'amount_of_product_upload', 'Amount Of Product Upload', NULL, NULL, NULL, NULL),
(1388, 'amount_($)', 'Amount ($)', NULL, NULL, NULL, NULL),
(1389, 'packege_image', 'Packege Image', NULL, NULL, NULL, NULL),
(1390, 'select_a_photo', 'Select A Photo', NULL, NULL, NULL, NULL),
(1391, 'customer_products', 'Customer Products', NULL, NULL, NULL, NULL),
(1392, 'uploaded_products', 'Uploaded Products', NULL, NULL, NULL, NULL),
(1393, 'your_uploaded_products', 'Your Uploaded Products', NULL, NULL, NULL, NULL),
(1394, 'unvailable', 'Unvailable', NULL, NULL, NULL, NULL),
(1395, 'publish/unpublish', 'Publish/unpublish', NULL, NULL, NULL, NULL),
(1396, 'publish/_unpublish', 'Publish/ Unpublish', NULL, NULL, NULL, NULL),
(1397, 'product_published', 'Product Published', NULL, NULL, NULL, NULL),
(1398, 'product_unpublished', 'Product Unpublished', NULL, NULL, NULL, NULL),
(1399, 'Unpublish', 'Unpublish', NULL, NULL, NULL, NULL),
(1400, 'Published', 'Published', NULL, NULL, NULL, NULL),
(1401, 'Unpublished', 'Unpublished', NULL, NULL, NULL, NULL),
(1402, 'packege_purchase_failed!', 'Packege Purchase Failed!', NULL, NULL, NULL, NULL),
(1403, 'packege_purchase_successfully!', 'Packege Purchase Successfully!', NULL, NULL, NULL, NULL),
(1404, 'purchasing..', 'Purchasing..', NULL, NULL, NULL, NULL),
(1405, 'premium_packages', 'Premium Packages', NULL, NULL, NULL, NULL),
(1406, 'premium_packages_for_customer', 'Premium Packages For Customer', NULL, NULL, NULL, NULL),
(1407, 'premium_package', 'Premium Package', NULL, NULL, NULL, NULL),
(1408, 'package', 'Package', NULL, NULL, NULL, NULL),
(1409, 'back_to_package_list', 'Back To Package List', NULL, NULL, NULL, NULL),
(1410, 'edit_package', 'Edit Package', NULL, NULL, NULL, NULL),
(1411, 'package_name', 'Package Name', NULL, NULL, NULL, NULL),
(1412, 'package_image', 'Package Image', NULL, NULL, NULL, NULL),
(1413, 'customer_uploaded_products', 'Customer Uploaded Products', NULL, NULL, NULL, NULL),
(1414, 'back_to_customer_product_list', 'Back To Customer Product List', NULL, NULL, NULL, NULL),
(1415, 'uploaded_by', 'Uploaded By', NULL, NULL, NULL, NULL),
(1416, 'customer_status', 'Customer Status', NULL, NULL, NULL, NULL),
(1417, 'customer_package_payments', 'Customer Package Payments', NULL, NULL, NULL, NULL),
(1418, 'customer_package_payment', 'Customer Package Payment', NULL, NULL, NULL, NULL),
(1419, 'back_to_package_payment_list', 'Back To Package Payment List', NULL, NULL, NULL, NULL),
(1420, 'customer_name', 'Customer Name', NULL, NULL, NULL, NULL),
(1421, 'payment_type', 'Payment Type', NULL, NULL, NULL, NULL),
(1422, 'view_package_payment', 'View Package Payment', NULL, NULL, NULL, NULL),
(1423, 'details_of_package_payment', 'Details Of Package Payment', NULL, NULL, NULL, NULL),
(1424, 'purchase_datetime', 'Purchase Datetime', NULL, NULL, NULL, NULL),
(1425, 'change_availability_status', 'Change Availability Status', NULL, NULL, NULL, NULL),
(1426, 'package_payment_info', 'Package Payment Info', NULL, NULL, NULL, NULL),
(1427, 'purchase_date', 'Purchase Date', NULL, NULL, NULL, NULL),
(1428, 'admin_status', 'Admin Status', NULL, NULL, NULL, NULL),
(1429, 'not_available_payment_info', 'Not Available Payment Info', NULL, NULL, NULL, NULL),
(1430, 'availability_status', 'Availability Status', NULL, NULL, NULL, NULL),
(1431, 'sold', 'Sold', NULL, NULL, NULL, NULL),
(1432, 'detailed_information', 'Detailed Information', NULL, NULL, NULL, NULL),
(1433, 'customer_product_(_show_/_hide_)', 'Customer Product ( Show / Hide )', NULL, NULL, NULL, NULL),
(1434, 'number_of_product_(_to_show_)', 'Number Of Product ( To Show )', NULL, NULL, NULL, NULL),
(1435, 'customer_product_section_updated!', 'Customer Product Section Updated!', NULL, NULL, NULL, NULL),
(1436, 'customer_products_section_updated!', 'Customer Products Section Updated!', NULL, NULL, NULL, NULL),
(1437, 'product_bundle_activation', 'Product Bundle Activation', NULL, NULL, NULL, NULL),
(1438, 'product_bundle_enabled', 'Product Bundle Enabled', NULL, NULL, NULL, NULL),
(1439, 'product_bundle_disabled', 'Product Bundle Disabled', NULL, NULL, NULL, NULL),
(1440, 'customer_product_activation', 'Customer Product Activation', NULL, NULL, NULL, NULL),
(1441, 'customer_product_enabled', 'Customer Product Enabled', NULL, NULL, NULL, NULL),
(1442, 'customer_product_disabled', 'Customer Product Disabled', NULL, NULL, NULL, NULL),
(1443, 'seller_informations', 'Seller Informations', NULL, NULL, NULL, NULL),
(1444, 'classifieds', 'Classifieds', NULL, NULL, NULL, NULL),
(1445, 'classifieds_products', 'Classifieds Products', NULL, NULL, NULL, NULL),
(1446, 'classified_products', 'Classified Products', NULL, NULL, NULL, NULL),
(1447, 'classified_product_activation', 'Classified Product Activation', NULL, NULL, NULL, NULL),
(1448, 'Share', 'Share', NULL, NULL, NULL, NULL),
(1449, 'share_links', 'Share Links', NULL, NULL, NULL, NULL),
(1450, 'price:', 'Price:', NULL, NULL, NULL, NULL),
(1451, 'condition:', 'Condition:', NULL, NULL, NULL, NULL),
(1452, 'product_search', 'Product Search', NULL, NULL, NULL, NULL),
(1453, 'all_type', 'All Type', NULL, NULL, NULL, NULL),
(1454, 'search_by_brand_name', 'Search By Brand Name', NULL, NULL, NULL, NULL),
(1455, 'back_to_profile', 'Back To Profile', NULL, NULL, NULL, NULL),
(1456, 'wallet_', 'Wallet ', NULL, NULL, NULL, NULL),
(1457, 'search_by_brand', 'Search By Brand', NULL, NULL, NULL, NULL),
(1458, 'brand:_', 'Brand: ', NULL, NULL, NULL, NULL),
(1459, '_seller:', ' Seller:', NULL, NULL, NULL, NULL),
(1460, 'seller', 'Seller', NULL, NULL, NULL, NULL),
(1461, 'seller_email', 'Seller Email', NULL, NULL, NULL, NULL),
(1462, 'phone_no', 'Phone No', NULL, NULL, NULL, NULL),
(1463, 'no_specification_found!', 'No Specification Found!', NULL, NULL, NULL, NULL),
(1464, 'payumoney', 'Payumoney', NULL, NULL, NULL, NULL),
(1465, '<p class=''control-label''>No Products are available for this brand</p>', '<p Class=''control-label''>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1466, 'pay_u_money_settings', 'Pay U Money Settings', NULL, NULL, NULL, NULL),
(1467, 'merchant_key', 'Merchant Key', NULL, NULL, NULL, NULL),
(1468, 'merchant_salt', 'Merchant Salt', NULL, NULL, NULL, NULL),
(1469, 'pay_u_money_activation', 'Pay U Money Activation', NULL, NULL, NULL, NULL),
(1470, 'pay_u_money_payment_enabled', 'Pay U Money Payment Enabled', NULL, NULL, NULL, NULL),
(1471, 'pay_u_money_payment_disabled', 'Pay U Money Payment Disabled', NULL, NULL, NULL, NULL),
(1472, 'payUmoney_payment', 'PayUmoney Payment', NULL, NULL, NULL, NULL),
(1473, 'payUmoney_merchant_key', 'PayUmoney Merchant Key', NULL, NULL, NULL, NULL),
(1474, 'payUmoney_merchant_salt', 'PayUmoney Merchant Salt', NULL, NULL, NULL, NULL),
(1475, 'video', 'Video', NULL, NULL, NULL, NULL),
(1476, 'if_you_need_to_change_this_video_for_your_product_,_please_click_here...', 'If You Need To Change This Video For Your Product , Please Click Here...', NULL, NULL, NULL, NULL),
(1477, 'change_video', 'Change Video', NULL, NULL, NULL, NULL),
(1478, 'wallet_system', 'Wallet System', NULL, NULL, NULL, NULL),
(1479, 'wallet_system_enabled', 'Wallet System Enabled', NULL, NULL, NULL, NULL),
(1480, 'wallet_system_disabled', 'Wallet System Disabled', NULL, NULL, NULL, NULL),
(1481, 'Vendor Registration Email To Admin', 'Vendor Registration Email To Admin', NULL, NULL, NULL, NULL),
(1482, 'Admin to Vendor Payment', 'Admin To Vendor Payment', NULL, NULL, NULL, NULL),
(1483, 'Vendor Package Upgrade', 'Vendor Package Upgrade', NULL, NULL, NULL, NULL),
(1484, 'Vendor Payment', 'Vendor Payment', NULL, NULL, NULL, NULL),
(1485, 'your_email_address', 'Your Email Address', NULL, NULL, NULL, NULL),
(1486, 'already_uploaded_maximum_products!', 'Already Uploaded Maximum Products!', NULL, NULL, NULL, NULL),
(1487, 'upgrade_your_membership', 'Upgrade Your Membership', NULL, NULL, NULL, NULL),
(1488, 'upgrade_membership', 'Upgrade Membership', NULL, NULL, NULL, NULL),
(1489, 'delete_contents', 'Delete Contents', NULL, NULL, NULL, NULL),
(1490, 'delete_all_categories', 'Delete All Categories', NULL, NULL, NULL, NULL),
(1491, 'delete_all_products', 'Delete All Products', NULL, NULL, NULL, NULL),
(1492, 'delete_all_brands', 'Delete All Brands', NULL, NULL, NULL, NULL),
(1493, 'delete_all_classified', 'Delete All Classified', NULL, NULL, NULL, NULL),
(1494, 'Are You Sure You Want to Delete All Products?', 'Are You Sure You Want To Delete All Products?', NULL, NULL, NULL, NULL),
(1495, 'guest_checkout', 'Guest Checkout', NULL, NULL, NULL, NULL),
(1496, 'guest_id', 'Guest Id', NULL, NULL, NULL, NULL),
(1497, 'invoice_link:', 'Invoice Link:', NULL, NULL, NULL, NULL),
(1498, 'guest_id:', 'Guest Id:', NULL, NULL, NULL, NULL),
(1499, 'deleting_all_categories_will_also_result_in_deleting_all_sub-categories_under_it,_are_you_sure_you_want_to_delete_all_categories?', 'Deleting All Categories Will Also Result In Deleting All Sub-categories Under It, Are You Sure You Want To Delete All Categories?', NULL, NULL, NULL, NULL),
(1500, 'Are You Sure You Want to Delete All The Brands?', 'Are You Sure You Want To Delete All The Brands?', NULL, NULL, NULL, NULL),
(1501, 'delete_all_classifieds', 'Delete All Classifieds', NULL, NULL, NULL, NULL),
(1502, 'invoice_link', 'Invoice Link', NULL, NULL, NULL, NULL),
(1503, 'select_sub_category', 'Select Sub Category', NULL, NULL, NULL, NULL),
(1504, 'select_product', 'Select Product', NULL, NULL, NULL, NULL),
(1505, 'guest_checkout_enabled', 'Guest Checkout Enabled', NULL, NULL, NULL, NULL),
(1506, 'guest_checkout_disabled', 'Guest Checkout Disabled', NULL, NULL, NULL, NULL),
(1507, 'vendor_commission', 'Vendor Commission', NULL, NULL, NULL, NULL),
(1508, 'vendor_commission_enabled', 'Vendor Commission Enabled', NULL, NULL, NULL, NULL),
(1509, 'vendor_commission_disabled', 'Vendor Commission Disabled', NULL, NULL, NULL, NULL),
(1510, 'vendor_package', 'Vendor Package', NULL, NULL, NULL, NULL),
(1511, 'vendor_package_enabled', 'Vendor Package Enabled', NULL, NULL, NULL, NULL),
(1512, 'vendor_package_disabled', 'Vendor Package Disabled', NULL, NULL, NULL, NULL),
(1513, 'vendor_commissions', 'Vendor Commissions', NULL, NULL, NULL, NULL),
(1514, 'set_vendor_commission', 'Set Vendor Commission', NULL, NULL, NULL, NULL),
(1515, 'total_commission', 'Total Commission', NULL, NULL, NULL, NULL),
(1516, 'commission_on_paid', 'Commission On Paid', NULL, NULL, NULL, NULL),
(1517, 'sslcommerz', 'Sslcommerz', NULL, NULL, NULL, NULL),
(1518, 'commission_amount', 'Commission Amount', NULL, NULL, NULL, NULL),
(1519, 'sslcommerz_activation', 'Sslcommerz Activation', NULL, NULL, NULL, NULL),
(1520, 'sslcommerz_payment_enabled', 'Sslcommerz Payment Enabled', NULL, NULL, NULL, NULL),
(1521, 'sslcommerz_payment_disabled', 'Sslcommerz Payment Disabled', NULL, NULL, NULL, NULL),
(1522, 'SSLCommerz_settings', 'SSLCommerz Settings', NULL, NULL, NULL, NULL),
(1523, 'ssl_store_id', 'Ssl Store Id', NULL, NULL, NULL, NULL),
(1524, 'ssl_store_password', 'Ssl Store Password', NULL, NULL, NULL, NULL),
(1525, 'commission', 'Commission', NULL, NULL, NULL, NULL),
(1526, 'header_menu', 'Header Menu', NULL, NULL, NULL, NULL),
(1527, 'header', 'Header', NULL, NULL, NULL, NULL),
(1528, 'customer_chat', 'Customer Chat', NULL, NULL, NULL, NULL),
(1529, 'Supplier', 'Supplier', NULL, NULL, NULL, NULL),
(1530, 'all_Suppliers', 'All Suppliers', NULL, NULL, NULL, NULL),
(1531, 'Supplier_registration', 'Supplier Registration', NULL, NULL, NULL, NULL),
(1532, 'already_a_Supplier_?_click_to_', 'Already A Supplier ? Click To ', NULL, NULL, NULL, NULL),
(1533, 'as_Supplier', 'As Supplier', NULL, NULL, NULL, NULL),
(1534, 'Contractors', 'Contractors', NULL, NULL, NULL, NULL),
(1535, 'all_Contractors', 'All Contractors', NULL, NULL, NULL, NULL),
(1536, 'Contrators', 'Contrators', NULL, NULL, NULL, NULL),
(1537, 'Contractor_Type', 'Contractor Type', NULL, NULL, NULL, NULL),
(1538, 'back_to_Contractor_list', 'Back To Contractor List', NULL, NULL, NULL, NULL),
(1539, 'manage_Contractor', 'Manage Contractor', NULL, NULL, NULL, NULL),
(1540, 'add_Contrator', 'Add Contrator', NULL, NULL, NULL, NULL),
(1541, 'Add_Contractor', 'Add Contractor', NULL, NULL, NULL, NULL),
(1542, 'Contractor_details', 'Contractor Details', NULL, NULL, NULL, NULL),
(1543, 'Contractor_title', 'Contractor Title', NULL, NULL, NULL, NULL),
(1544, 'Contractor_NTN', 'Contractor NTN', NULL, NULL, NULL, NULL),
(1545, 'manage_Contractor_Types', 'Manage Contractor Types', NULL, NULL, NULL, NULL),
(1546, 'add_Contractor_Type', 'Add Contractor Type', NULL, NULL, NULL, NULL),
(1547, 'Contractor_type_edit', 'Contractor Type Edit', NULL, NULL, NULL, NULL),
(1548, 'Profile_Update_Date', 'Profile Update Date', NULL, NULL, NULL, NULL),
(1549, 'New Contractors', 'New Contractors', NULL, NULL, NULL, NULL),
(1550, 'Experienced', 'Experienced', NULL, NULL, NULL, NULL),
(1551, 'cost-estimation', 'Cost-estimation', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok'),
(2, 'বাংলা', 'Bangla', 'ok'),
(4, 'Arabic', 'Arabic', 'ok'),
(5, 'French', 'French', 'ok'),
(6, 'Chinese', 'Chinese', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `name`) VALUES
(78, '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(1, 'Silver', '300', '30', '', 10),
(2, 'Platinum', '3500', '30', '', 50),
(7, 'Gold', '2000', '30', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE `membership_payment` (
  `membership_payment_id` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_payment`
--

INSERT INTO `membership_payment` (`membership_payment_id`, `vendor`, `timestamp`, `amount`, `details`, `membership`, `method`, `status`) VALUES
(6, 3, 1474278958, 3500, '{"mc_gross":"43.75","protection_eligibility":"Ineligible","address_status":"confirmed","payer_id":"QXCY8C6X8J4VG","tax":"0.00","address_street":"1 Main St","payment_date":"03:04:24 Sep 19, 2016 PDT","payment_status":"Pending","charset":"windows-1252","address_zip":"95131","first_name":"Active","address_country_code":"US","address_name":"Active IT","notify_version":"3.8","custom":"6","payer_status":"verified","business":"kadir_bm@yahoo.com","address_country":"United States","address_city":"San Jose","quantity":"1","verify_sign":"A6Fyo.RG2CmUHAdbJ1HeGZnSj3AWAuYRD2vHV92buB9WYMNNbxSvf6Un","payer_email":"system@supershop.com","txn_id":"6PN17817M0416733P","payment_type":"instant","last_name":"IT","address_state":"CA","receiver_email":"kadir_bm@yahoo.com","pending_reason":"unilateral","txn_type":"web_accept","item_name":"","mc_currency":"USD","item_number":"","residence_country":"US","test_ipn":"1","handling_amount":"0.00","transaction_subject":"","payment_gross":"43.75","shipping":"0.00","ipn_track_id":"26ff7ba5f0ef"}', 2, 'paypal', 'paid'),
(7, 5, 1474568814, 300, '{"mc_gross":"3.75","protection_eligibility":"Ineligible","address_status":"confirmed","payer_id":"QXCY8C6X8J4VG","tax":"0.00","address_street":"1 Main St","payment_date":"11:41:38 Sep 22, 2016 PDT","payment_status":"Pending","charset":"windows-1252","address_zip":"95131","first_name":"Active","address_country_code":"US","address_name":"Active IT","notify_version":"3.8","custom":"7","payer_status":"verified","business":"kadir_bm@yahoo.com","address_country":"United States","address_city":"San Jose","quantity":"1","verify_sign":"A.Z5yEeSJElINVLnLNYfrb750vgiAJdLRn38Ub6I-sD-cMvsd25mBIx-","payer_email":"system@supershop.com","txn_id":"1W646161MB662172C","payment_type":"instant","last_name":"IT","address_state":"CA","receiver_email":"kadir_bm@yahoo.com","pending_reason":"unilateral","txn_type":"web_accept","item_name":"","mc_currency":"USD","item_number":"","residence_country":"US","test_ipn":"1","handling_amount":"0.00","transaction_subject":"","payment_gross":"3.75","shipping":"0.00","ipn_track_id":"ef0d66381cdd0"}', 1, 'paypal', 'paid'),
(8, 1, 1521619820, 300, 'Customer Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_CX6D3Rh6VsMGvS","object":"customer","account_balance":0,"created":1521619818,"currency":null,"default_source":"card_1C821HKmGdRDZlHSwmXJ4Si8","delinquent":false,"description":null,"discount":null,"email":"bicyq@yahoo.com","invoice_prefix":"0530537","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1C821YKmGdRDZlHSAV2SCPEB","object":"charge","amount":30000,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1C821YKmGdRDZlHSb3XnAy6N","captured":true,"created":1521619820,"currency":"usd","customer":"cus_CX6D3Rh6VsMGvS","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 1, 'stripe', 'paid'),
(9, 1, 1521620034, 300, NULL, 1, 'paypal', 'due'),
(10, 1, 1521620159, 300, NULL, 1, 'paypal', 'due'),
(11, 1, 1521620582, 300, NULL, 1, 'paypal', 'due'),
(12, 1, 1521620644, 300, '', 1, 'paypal', 'paid'),
(13, 10, 1525076695, 300, 'Customer Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_Cm5UQffha9h2YI","object":"customer","account_balance":0,"created":1525076690,"currency":null,"default_source":"card_1CMXJNKmGdRDZlHSzMKsk366","delinquent":false,"description":null,"discount":null,"email":"dixon@gmail.com","invoice_prefix":"8BE2516","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CMXJYKmGdRDZlHSZyFpNHni","object":"charge","amount":30000,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CMXJZKmGdRDZlHSm1ufBbIk","captured":true,"created":1525076692,"currency":"usd","customer":"cus_Cm5UQffha9h2YI","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 1, 'stripe', 'paid'),
(14, 3, 1527065720, 300, 'Customer Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_CuiBndcDg1uPoi","object":"customer","account_balance":0,"created":1527065726,"currency":null,"default_source":"card_1CUskZKmGdRDZlHS0C3mHdQf","delinquent":false,"description":null,"discount":null,"email":"demovendor.tom@gmail.com","invoice_prefix":"2D329EB","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CUskmKmGdRDZlHS3hElyjCo","object":"charge","amount":30000,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CUsknKmGdRDZlHSklvk2Dlo","captured":true,"created":1527065728,"currency":"usd","customer":"cus_CuiBndcDg1uPoi","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 1, 'stripe', 'paid'),
(15, 16, 1530099145, 3500, 'Customer Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_D7rc6ldZZFfVqC","object":"customer","account_balance":0,"created":1530099144,"currency":null,"default_source":"card_1ChbseKmGdRDZlHSfJOumaUL","delinquent":false,"description":null,"discount":null,"email":"saide.mahid21@gmail.com","invoice_prefix":"BC19F08","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1ChbssKmGdRDZlHSCsQxAX1q","object":"charge","amount":350000,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1ChbssKmGdRDZlHS1GntjkvY","captured":true,"created":1530099146,"currency":"usd","customer":"cus_D7rc6ldZZFfVqC","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 2, 'stripe', 'paid'),
(16, 16, 1530168298, 2000, 'Customer Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_D8ACvYDzZXIxFk","object":"customer","account_balance":0,"created":1530168298,"currency":null,"default_source":"card_1Chts3KmGdRDZlHSFiZIHHEm","delinquent":false,"description":null,"discount":null,"email":"saide.mahid21@gmail.com","invoice_prefix":"A938C83","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1ChtsEKmGdRDZlHS4JZBq5FO","object":"charge","amount":200000,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1ChtsFKmGdRDZlHSQ8v9io5D","captured":true,"created":1530168298,"currency":"usd","customer":"cus_D8ACvYDzZXIxFk","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 7, 'stripe', 'paid'),
(17, 16, 1530168373, 300, '{"mc_gross":"300.00","protection_eligibility":"Ineligible","address_status":"confirmed","payer_id":"RSS9FYUZWM7SC","address_street":"99 White Fabien Court","payment_date":"23:47:03 Jun 27, 2018 PDT","payment_status":"Pending","charset":"windows-1252","address_zip":"37750","first_name":"Hillary","address_country_code":"US","address_name":"Hillary Long","notify_version":"3.9","custom":"17","payer_status":"unverified","address_country":"United States","address_city":"Voluptatem Omnis perspiciatis cum voluptatem qui beatae dolor duis","quantity":"1","verify_sign":"At7M.vjpvoOSoEuUejMvbAJc494kAx7kHh-1Y.52PvuWhoDgXxhsXz6a","payer_email":"developer.activeitzone@gmail.com","txn_id":"2Y8310662A433535N","payment_type":"instant","last_name":"Long","address_state":"IN","receiver_email":"alvi@gmail.com","pending_reason":"unilateral","txn_type":"web_accept","item_name":"asdddddddddddd","mc_currency":"USD","item_number":"","residence_country":"US","test_ipn":"1","transaction_subject":"","payment_gross":"300.00","ipn_track_id":"65414272c8c47"}', 1, 'paypal', 'paid'),
(18, 16, 1530168775, 3500, 'Customer Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_D8AKObcFPP1vAV","object":"customer","account_balance":0,"created":1530168775,"currency":null,"default_source":"card_1ChtzjKmGdRDZlHSbxWfgNJU","delinquent":false,"description":null,"discount":null,"email":"saide.mahid21@gmail.com","invoice_prefix":"D1DE7D7","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1ChtzvKmGdRDZlHStJqXGEKC","object":"charge","amount":350000,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1ChtzwKmGdRDZlHSlohqyjOW","captured":true,"created":1530168775,"currency":"usd","customer":"cus_D8AKObcFPP1vAV","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 2, 'stripe', 'paid'),
(19, 16, 1530169135, 300, 'Customer Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_D8AQZCuS6xk8Hl","object":"customer","account_balance":0,"created":1530169134,"currency":null,"default_source":"card_1Chu5YKmGdRDZlHSjo3NZYOX","delinquent":false,"description":null,"discount":null,"email":"saide.mahid21@gmail.com","invoice_prefix":"C96D5D0","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1Chu5jKmGdRDZlHSHmmPoSdN","object":"charge","amount":30000,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1Chu5jKmGdRDZlHS4F0fMktr","captured":true,"created":1530169135,"currency":"usd","customer":"cus_D8AQZCuS6xk8Hl","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 1, 'stripe', 'paid'),
(20, 16, 1530169512, 3500, 'Customer Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_D8AWG4ROXH9sMs","object":"customer","account_balance":0,"created":1530169511,"currency":null,"default_source":"card_1ChuBhKmGdRDZlHSGZRs8N4v","delinquent":false,"description":null,"discount":null,"email":"saide.mahid21@gmail.com","invoice_prefix":"9184D2F","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1ChuBoKmGdRDZlHSLRuAsAcZ","object":"charge","amount":350000,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1ChuBoKmGdRDZlHSLVz78D7S","captured":true,"created":1530169512,"currency":"usd","customer":"cus_D8AWG4ROXH9sMs","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 2, 'stripe', 'paid'),
(21, 1, 1530439057, 2000, 'Customer Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_D9Kz2ZUyQFOQQp","object":"customer","account_balance":0,"created":1530439057,"currency":null,"default_source":"card_1Cj2J5KmGdRDZlHSvwNT3KqG","delinquent":false,"description":null,"discount":null,"email":"bicyq@yahoo.com","invoice_prefix":"ADC7B23","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1Cj2JKKmGdRDZlHSA2ZWo10C","object":"charge","amount":200000,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1Cj2JKKmGdRDZlHSuWh2VsKJ","captured":true,"created":1530439058,"currency":"usd","customer":"cus_D9Kz2ZUyQFOQQp","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 7, 'stripe', 'paid'),
(22, 17, 1531638449, 3500, '', 2, 'cash', 'paid'),
(23, 17, 1531638483, 3500, '', 2, 'cash', 'paid'),
(24, 3, 1532428490, 3500, NULL, 2, 'PayUmoney', 'due'),
(25, 3, 1532428555, 3500, NULL, 2, 'PayUmoney', 'due'),
(28, 3, 1532430467, 2000, '{"tran_id":"20180728","val_id":"180724171133QXBFr94e14DEF7j","amount":"2000","card_type":"BKASH-BKash","store_amount":"1960","card_no":"","bank_tran_id":"1807241711331wLRDkP38emj7r5","status":"VALID","tran_date":"2018-07-24 17:11:23","currency":"BDT","card_issuer":"BKash Mobile Banking","card_brand":"MOBILEBANKING","card_issuer_country":"Bangladesh","card_issuer_country_code":"BD","store_id":"techr5affa68a7602c","verify_sign":"33a9272de9c84e09dd866cfd2ff0d1f8","verify_key":"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d","verify_sign_sha2":"1139b0b541db8af03f4692dc5a95c78e5b34852e7dfca4151635eb9eb3101dd7","currency_type":"BDT","currency_amount":"2000.00","currency_rate":"1.0000","base_fair":"0.00","value_a":"","value_b":"","value_c":"","value_d":"","risk_level":"0","risk_title":"Safe"}', 7, 'SSlcommerz', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `upload_amount` int(11) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `name`, `amount`, `upload_amount`, `image`) VALUES
(1, 'Default', '0', 100, '[{"image":"plan_1.png","thumb":"plan_1_thumb.png"}]'),
(2, 'Bronze', '15', 10, '[{"image":"plan_2.png","thumb":"plan_2_thumb.png"}]'),
(3, 'Silver', '25', 15, '[{"image":"plan_3.png","thumb":"plan_3_thumb.png"}]'),
(4, 'Gold', '35', 20, '[{"image":"plan_4.png","thumb":"plan_4_thumb.png"}]'),
(5, 'Platinum', '45', 25, '[{"image":"plan_5.png","thumb":"plan_5_thumb.png"}]');

-- --------------------------------------------------------

--
-- Table structure for table `package_payment`
--

CREATE TABLE `package_payment` (
  `package_payment_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `payment_details` longtext NOT NULL,
  `amount` int(11) NOT NULL,
  `purchase_datetime` int(11) NOT NULL,
  `payment_code` varchar(50) NOT NULL,
  `payment_timestamp` int(11) NOT NULL,
  `expire` varchar(20) NOT NULL,
  `expire_timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_payment`
--

INSERT INTO `package_payment` (`package_payment_id`, `package_id`, `user_id`, `payment_type`, `payment_status`, `payment_details`, `amount`, `purchase_datetime`, `payment_code`, `payment_timestamp`, `expire`, `expire_timestamp`) VALUES
(1, 2, 7, 'Paypal', 'pending', 'testing', 15, 1526809102, '', 1527663094, '', 0),
(2, 2, 7, 'Paypal', 'pending', 'testing 1234', 15, 1526809416, '', 1527663451, '', 0),
(3, 2, 7, 'Paypal', 'due', 'none', 15, 1526809510, '', 1527663535, '', 0),
(4, 2, 7, 'Paypal', 'due', 'none', 15, 1526809641, '', 1527663565, '', 0),
(5, 2, 7, 'Paypal', 'due', 'none', 15, 1527054416, '', 1527663607, '', 0),
(6, 2, 7, 'Paypal', 'due', 'none', 15, 1527054430, '', 0, '', 0),
(7, 2, 7, 'Paypal', 'due', 'none', 15, 1527054448, '', 0, '', 0),
(8, 2, 7, 'Wallet', 'paid', '', 15, 1527505100, '2018058', 1527505100, 'no', 0),
(9, 2, 7, 'Stripe', 'paid', 'User Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_CwcODJSgJ33IwX","object":"customer","account_balance":0,"created":1527505467,"currency":null,"default_source":"card_1CWj9EKmGdRDZlHSZ0dVOt0f","delinquent":false,"description":null,"discount":null,"email":"customer.demo@gmail.com","invoice_prefix":"6C5D458","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CWj9LKmGdRDZlHSHxfgKBPm","object":"charge","amount":1500,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CWj9MKmGdRDZlHS0E0rSwAI","captured":true,"created":1527505467,"currency":"usd","customer":"cus_CwcODJSgJ33IwX","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 15, 1527505467, '2018059', 1527505467, 'no', 0),
(10, 2, 7, 'Stripe', 'paid', 'User Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_CxLBf86vTofKeu","object":"customer","account_balance":0,"created":1527672118,"currency":null,"default_source":"card_1CXQV9KmGdRDZlHSkj2ffaQQ","delinquent":false,"description":null,"discount":null,"email":"customer.demo@gmail.com","invoice_prefix":"81BD7F1","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CXQVIKmGdRDZlHSB9JHc7o6","object":"charge","amount":1500,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CXQVJKmGdRDZlHSKXNwZTUC","captured":true,"created":1527672120,"currency":"usd","customer":"cus_CxLBf86vTofKeu","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 15, 1527672108, '20180510', 1527672108, 'no', 0),
(11, 3, 7, 'Paypal', 'due', 'none', 25, 1527743164, '', 0, '', 0),
(12, 2, 13, 'Stripe', 'paid', 'User Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_CypmvgOKdcuXS8","object":"customer","account_balance":0,"created":1528016564,"currency":null,"default_source":"card_1CYs6gKmGdRDZlHSZnAhEeYN","delinquent":false,"description":null,"discount":null,"email":"customer.shop@gmail.com","invoice_prefix":"A2955CE","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CYs6sKmGdRDZlHSuw6LMZos","object":"charge","amount":1500,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CYs6sKmGdRDZlHSuLIyXJWG","captured":true,"created":1528016566,"currency":"usd","customer":"cus_CypmvgOKdcuXS8","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 15, 1528016552, '20180612', 1528016552, 'no', 0),
(13, 2, 15, 'Stripe', 'paid', 'User Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_CzwzUsnuVldUTd","object":"customer","account_balance":0,"created":1528274022,"currency":null,"default_source":"card_1CZx5HKmGdRDZlHS2t6FNVNa","delinquent":false,"description":null,"discount":null,"email":"georgiaray@gmail.com","invoice_prefix":"3F6FB06","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CZx5QKmGdRDZlHSeqGVQWeW","object":"charge","amount":1500,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CZx5QKmGdRDZlHStPMP95rN","captured":true,"created":1528274024,"currency":"usd","customer":"cus_CzwzUsnuVldUTd","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 15, 1528274007, '20180613', 1528274007, 'no', 0),
(14, 3, 16, 'Stripe', 'paid', 'User Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_Czx9Z1ME9I52Oj","object":"customer","account_balance":0,"created":1528274615,"currency":null,"default_source":"card_1CZxErKmGdRDZlHS2ryYMyAq","delinquent":false,"description":null,"discount":null,"email":"lee@gmail.com","invoice_prefix":"845AF91","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CZxEzKmGdRDZlHSiZBBQbFq","object":"charge","amount":2500,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CZxEzKmGdRDZlHSXQWkv6Wi","captured":true,"created":1528274617,"currency":"usd","customer":"cus_Czx9Z1ME9I52Oj","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 25, 1528274599, '20180614', 1528274600, 'no', 0),
(15, 4, 17, 'Stripe', 'paid', 'User Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_CzxyZtzTluDcVG","object":"customer","account_balance":0,"created":1528277707,"currency":null,"default_source":"card_1CZy2jKmGdRDZlHSPEsoHOf8","delinquent":false,"description":null,"discount":null,"email":"larrypena@gmail.com","invoice_prefix":"E034D67","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CZy2rKmGdRDZlHSC58ffXbO","object":"charge","amount":3500,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CZy2rKmGdRDZlHSUB0evIC0","captured":true,"created":1528277709,"currency":"usd","customer":"cus_CzxyZtzTluDcVG","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 35, 1528277691, '20180615', 1528277692, 'no', 0),
(16, 5, 18, 'Stripe', 'paid', 'User Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_CzyDdeiAUUEPil","object":"customer","account_balance":0,"created":1528278604,"currency":null,"default_source":"card_1CZyHCKmGdRDZlHS66s0Ctkk","delinquent":false,"description":null,"discount":null,"email":"noraharris@gmail.com","invoice_prefix":"A0030FC","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CZyHJKmGdRDZlHSbdCk7oty","object":"charge","amount":4500,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CZyHKKmGdRDZlHSohojhb9q","captured":true,"created":1528278605,"currency":"usd","customer":"cus_CzyDdeiAUUEPil","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 45, 1528278588, '20180616', 1528278588, 'no', 0),
(17, 5, 3, 'Stripe', 'paid', 'User Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_D9i6araPgmiPwn","object":"customer","account_balance":0,"created":1530525022,"currency":null,"default_source":"card_1CjOflKmGdRDZlHS8xYwhpzq","delinquent":false,"description":null,"discount":null,"email":"customer3@shop.com","invoice_prefix":"9DFF13D","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CjOfrKmGdRDZlHSnv4Lw7hi","object":"charge","amount":4500,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CjOfrKmGdRDZlHSIRkmP6N4","captured":true,"created":1530525023,"currency":"usd","customer":"cus_D9i6araPgmiPwn","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 45, 1530525023, '20180717', 1530525023, 'no', 0),
(19, 4, 7, 'PayUmoney', 'due', 'none', 35, 1530531560, '', 0, '', 0),
(20, 5, 22, 'Stripe', 'paid', 'User Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"cus_DAkrzbCEBlxP03","object":"customer","account_balance":0,"created":1530765971,"currency":null,"default_source":"card_1CkPM2KmGdRDZlHSFfoyUbJ2","delinquent":false,"description":null,"discount":null,"email":"marketing.activeitzone@gmail.com","invoice_prefix":"A5ED676","livemode":false,"metadata":{},"shipping":null,"sources":{},"subscriptions":{}},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}\n \n Charge Info: \n{"\\u0000*\\u0000_opts":{"headers":[],"apiKey":"sk_test_NYIpPjs6gbmuogdwUuJ8She4"},"\\u0000*\\u0000_values":{"id":"ch_1CkPM8KmGdRDZlHSD2Fdrnvb","object":"charge","amount":4500,"amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1CkPM8KmGdRDZlHSBFeIdVNn","captured":true,"created":1530765972,"currency":"usd","customer":"cus_DAkrzbCEBlxP03","description":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":{},"on_behalf_of":null,"order":null,"outcome":{},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{},"review":null,"shipping":null,"source":{},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null},"\\u0000*\\u0000_unsavedValues":{},"\\u0000*\\u0000_transientValues":{},"\\u0000*\\u0000_retrieveOptions":[]}', 45, 1530765972, '20180720', 1530765972, 'no', 0),
(21, 5, 23, 'Wallet', 'paid', '', 45, 1531634185, '20180721', 1531634185, 'no', 0),
(24, 4, 7, 'SSLcommerz', 'paid', '{"tran_id":"20180724","val_id":"1807241627541mUbsn0kqoeWVuq","amount":"35","card_type":"BKASH-BKash","store_amount":"34.3","card_no":"","bank_tran_id":"180724162754Ii6p2KJnBH5jDlG","status":"VALID","tran_date":"2018-07-24 16:27:38","currency":"BDT","card_issuer":"BKash Mobile Banking","card_brand":"MOBILEBANKING","card_issuer_country":"Bangladesh","card_issuer_country_code":"BD","store_id":"techr5affa68a7602c","verify_sign":"37cb03693d014285a7cea9cca3f606ec","verify_key":"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d","verify_sign_sha2":"90cba376582ea23e1bc64274538eec2fc0b5da6b3fbed4c6529afb4406b476ac","currency_type":"BDT","currency_amount":"35.00","currency_rate":"1.0000","base_fair":"0.00","value_a":"","value_b":"","value_c":"","value_d":"","risk_level":"0","risk_title":"Safe"}', 35, 1532427912, '20180724', 1532427912, 'no', 0),
(25, 4, 22, 'SSLcommerz', 'paid', '{"tran_id":"20180725","val_id":"1807251144111YNM4LsS30YofK9","amount":"35","card_type":"BKASH-BKash","store_amount":"34.3","card_no":"","bank_tran_id":"1807251144110qo2y4fHI4aWTvE","status":"VALID","tran_date":"2018-07-25 11:43:52","currency":"BDT","card_issuer":"BKash Mobile Banking","card_brand":"MOBILEBANKING","card_issuer_country":"Bangladesh","card_issuer_country_code":"BD","store_id":"techr5affa68a7602c","verify_sign":"d5f200f705ea203b954f3cf50e72866e","verify_key":"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d","verify_sign_sha2":"0de0de16b0cc67cafdaa4aaedccc4a8be010bb0a827399a35f88e82d142af24d","currency_type":"BDT","currency_amount":"35.00","currency_rate":"1.0000","base_fair":"0.00","value_a":"","value_b":"","value_c":"","value_d":"","risk_level":"0","risk_title":"Safe"}', 35, 1532497253, '20180725', 1532497253, 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext,
  `parts` longtext,
  `tag` longtext,
  `fixed` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '92', ''),
(43, 'view', 'sale_view', '92', ''),
(44, 'delete', 'sale_delete', '92', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL),
(71, 'digital category', 'category_digital', 'parent', NULL),
(72, 'edit', 'category_digital_edit', '71', NULL),
(73, 'delete', 'category_digital_delete', '71', NULL),
(74, 'view', 'category_digital_view', '71', NULL),
(75, 'sub-category', 'sub_category', 'parent', NULL),
(77, 'edit', 'sub_category_edit', '75', NULL),
(78, 'delete', 'sub_category_delete', '75', NULL),
(79, 'view', 'sub_category_view', '75', NULL),
(80, 'digital sub-category', 'sub_category_digital', 'parent', NULL),
(81, 'edit', 'sub_category_digital_edit', '80', NULL),
(82, 'delete', 'sub_category_digital_delete', '80', NULL),
(83, 'view', 'sub_category_digital_view', '80', NULL),
(84, 'digital', 'digital', 'parent', NULL),
(85, 'edit', 'digital_edit', '84', NULL),
(86, 'delete', 'digital_delete', '84', NULL),
(87, 'view', 'digital_view', '84', NULL),
(88, 'product', 'product', 'parent', NULL),
(89, 'edit', 'product_edit', '88', NULL),
(90, 'delete', 'product_delete', '88', NULL),
(91, 'view', 'product_view', '88', NULL),
(92, 'sale', 'sale', 'parent', NULL),
(93, 'email tracing', 'email_tracing', 'parent', NULL),
(94, 'widget', 'widget', 'parent', NULL),
(95, 'display settings', 'display_settings', 'parent', NULL),
(96, 'banner', 'banner', 'parent', NULL),
(97, 'captha & social settings', 'captha_n_social_settings', 'parent', NULL),
(98, 'business settings', 'business_settings', 'parent', NULL),
(99, 'ticket', 'ticket', 'parent', NULL),
(100, 'default images', 'default_images', 'parent', NULL),
(101, 'Pay to Vendor', 'pay_to_vendor', 'parent', NULL),
(102, 'email template', 'email_template', 'parent', NULL),
(103, 'product bundle', 'product_bundle', 'parent', NULL),
(104, 'edit', 'product_bundle_edit', '103', NULL),
(105, 'view', 'product_bundle_view', '103', NULL),
(106, 'delete', 'product_bundle_delete', '103', NULL),
(107, 'bundle_stock', 'bundle_stock', '103', NULL),
(108, 'customer package payment', 'package_payment', 'parent', NULL),
(109, 'classified products', 'customer_products', 'parent', NULL),
(110, 'customer premium package', 'package', 'parent', NULL),
(111, 'delete all', 'delete_all', 'parent', NULL),
(112, 'delete all categories', 'delete all categories', '111', NULL),
(113, 'delete all products', 'delete all products', '111', NULL),
(114, 'delete all brands', 'delete all brands', '111', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL DEFAULT '0',
  `rating_total` int(11) NOT NULL DEFAULT '0',
  `rating_user` longtext NOT NULL,
  `title` longtext NOT NULL,
  `added_by` varchar(30) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `sub_category` int(11) NOT NULL,
  `num_of_imgs` varchar(100) NOT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` varchar(20) NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext NOT NULL,
  `featured` longtext NOT NULL,
  `tag` longtext,
  `status` longtext NOT NULL,
  `front_image` longtext,
  `brand` longtext,
  `current_stock` int(11) DEFAULT '0',
  `unit` longtext,
  `additional_fields` longtext NOT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `background` longtext,
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext NOT NULL,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext NOT NULL,
  `color` longtext,
  `options` longtext,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `download` varchar(200) DEFAULT NULL,
  `download_name` varchar(200) DEFAULT NULL,
  `deal` varchar(10) DEFAULT NULL,
  `num_of_downloads` int(11) NOT NULL DEFAULT '0',
  `update_time` longtext,
  `requirements` longtext,
  `logo` longtext,
  `video` longtext,
  `last_viewed` int(200) DEFAULT NULL,
  `products` longtext,
  `is_bundle` varchar(10) DEFAULT NULL,
  `vendor_featured` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(225, 0, 0, '[]', 'Cement', '{"type":"vendor","id":"21"}', 28, '                                                                                <p><br></p>', 119, '1', '1000.00', '800.00', '100', '1556071550', 'ok', '', 'ok', '0', NULL, 50019, '25 kg/bag', '{"name":"null","value":"null"}', 5, NULL, '', 'percent', '5', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1580814353, NULL, 'no', 'no'),
(221, 1, 5, '["24"]', 'Mughal Steel', '{"type":"vendor","id":"20"}', 28, '                                        <p>Mughal Steel Naam hi kafi hai<br></p>', 115, '1', '1500.00', '1450.00', '250', '1555956864', 'ok', '#syria,#steel,Loah', 'ok', '0', NULL, 57, ',1 ton', '{"name":"null","value":"null"}', 12, NULL, '', 'percent', '', 'percent', 'null', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1580796903, NULL, 'no', 'ok'),
(224, 1, 5, '["25"]', 'Bricks', '{"type":"admin","id":"1"}', 28, '<p>Sab se mazboot</p>', 119, '1', '100000.00', '950000.00', '5000', '1556068448', '0', '#brick,#truck,#eent', '0', '0', NULL, 489, '1 truck', '{"name":"null","value":"null"}', 6, NULL, '', 'percent', '10', 'percent', '["rgba(204,23,12,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1580796569, NULL, 'no', ''),
(226, 0, 0, '[]', 'gahfoor tanker', '{"type":"admin","id":"4"}', 33, '                                        <p>Price 2000</p>', 121, '1', '2000.00', '1200.00', '300', '1577099102', 'ok', 'water tank', 'ok', '0', NULL, 10, '900 liter', '{"name":"null","value":"null"}', 0, NULL, '10', 'percent', '700', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(227, 0, 0, '[]', 'Plaster of Paris', '{"type":"admin","id":"4"}', 28, '                                        <p><br></p>', 119, '1', '500.00', '400.00', '150', '1604391865', 'ok', '', 'ok', '0', NULL, 13, 'kg', '{"name":"null","value":"null"}', 0, NULL, '4', 'percent', '5', 'percent', 'null', '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(228, 0, 0, '[]', 'Bricks', '{"type":"vendor","id":"30"}', 28, '                                                                                                                        <p>We deal in excellent quality bricks in the form of per truck (Tralei)</p>', 119, '1', '5000.00', '4000.00', '200', '1604763687', 'ok', '', 'ok', '0', NULL, 100, 'Truck (tralei)', '{"name":"null","value":"null"}', 2, NULL, '', 'percent', '5', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1604764284, NULL, 'no', 'no'),
(229, 0, 0, '[]', 'Steel', '{"type":"vendor","id":"31"}', 28, '<p>we deal in good quality of steel</p>', 115, '1', '120.00', '100.00', '10', '1604765956', 'ok', '', 'ok', '0', NULL, 10000, 'kg', '{"name":"null","value":"null"}', 0, NULL, '', 'percent', '5', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(230, 0, 0, '[]', 'PVC pipes', '{"type":"vendor","id":"32"}', 29, '<p>We deal in good quality of PVC pipes</p>', 116, '1', '100.00', '70.00', '10', '1604773066', 'no', '', 'ok', '0', NULL, 20000, 'meter(s)', '{"name":"null","value":"null"}', 0, NULL, '', 'percent', '2', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '["13","17","21","37","41","45","49"]', 'Manages Products'),
(4, 'Accountant', '["9","13","17","21"]', 'Accountancy and Support'),
(6, 'Manager', '["5","13","29","33","37","41","57","63","103"]', 'Manager of Active Super shop');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_code` longtext,
  `buyer` longtext,
  `guest_id` varchar(100) NOT NULL,
  `product_details` longtext,
  `shipping_address` longtext,
  `vat` longtext,
  `vat_percent` varchar(10) DEFAULT NULL,
  `shipping` longtext,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` longtext,
  `payment_details` longtext,
  `payment_timestamp` longtext,
  `grand_total` longtext,
  `sale_datetime` longtext,
  `delivary_datetime` longtext,
  `delivery_status` longtext,
  `viewed` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(198, '201904198', 'guest', '198-qD0fN9FUd1', '{"060ad92489947d410d897474079c1477":{"id":"221","qty":13,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":null}}","price":1500,"name":"Mughal Steel","shipping":"250","tax":0,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_221_1_thumb.jpg","coupon":"","rowid":"060ad92489947d410d897474079c1477","subtotal":19500}}', '{"firstname":"jim","lastname":"Mouse","address1":"test","address2":"test","zip":"44000","email":"jamal@gmail.com","phone":"3462327191","langlat":"(-34.39105069027698, 150.65381903023786)","payment_type":"cash_on_delivery"}', '0', '', '3250', 'cash_on_delivery', '[{"vendor":"20","status":"paid"}]', NULL, NULL, '22750', '1556086183', '', '[{"vendor":"20","status":"delivered","comment":"","delivery_time":1556086298}]', 'ok'),
(195, '201904195', '25', '', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":5,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":25000}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '1250', '', '2500', 'cash_on_delivery', '[{"vendor":"21","status":"paid"}]', NULL, NULL, '28750', '1556071830', '', '[{"vendor":"21","status":"delivered","comment":"ok","delivery_time":1556071861}]', 'ok'),
(196, '201904196', '25', '', '{"115f89503138416a242f40fb7d7f338e":{"id":"223","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(227,0,0,1)\\"}}","price":20000,"name":"Bed","shipping":"1000","tax":40000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_223_1_thumb.jpg","coupon":"","rowid":"115f89503138416a242f40fb7d7f338e","subtotal":20000}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '40000', '', '1000', 'cash_on_delivery', '[{"vendor":"22","status":"paid"}]', NULL, NULL, '61000', '1556072169', '', '[{"vendor":"22","status":"delivered","comment":"","delivery_time":1556072267}]', 'ok'),
(197, '201904197', '26', '', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":2,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":10000}}', '{"firstname":"Hamza Satti","lastname":"Ijaz","address1":"lorem epsim","address2":"lorem epsim","zip":"44000","email":"miami306@yahoo.com","phone":"03444266566","langlat":"","payment_type":"cash_on_delivery"}', '500', '', '1000', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '11500', '1556084366', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(194, '201904194', '25', '', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":5,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":25000}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '1250', '', '2500', 'cash_on_delivery', '[{"vendor":"21","status":"paid"}]', NULL, NULL, '28750', '1556071659', '', '[{"vendor":"21","status":"delivered","comment":"ok","delivery_time":1556071697}]', 'ok'),
(193, '201904193', '25', '', '{"13fe9d84310e77f13a6d184dbf1232f3":{"id":"224","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,23,12,1)\\"}}","price":100000,"name":"Bricks","shipping":"5000","tax":10000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_224_1_thumb.jpg","coupon":"","rowid":"13fe9d84310e77f13a6d184dbf1232f3","subtotal":100000}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '10000', '', '5000', 'cash_on_delivery', '[{"admin":"","status":"paid"}]', 'paid', NULL, '115000', '1556070243', '', '[{"admin":"","status":"delivered","comment":"ok","delivery_time":1556071461}]', 'ok'),
(192, '201904192', '24', '', '{"115f89503138416a242f40fb7d7f338e":{"id":"223","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(227,0,0,1)\\"}}","price":20000,"name":"Bed","shipping":"1000","tax":40000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_223_1_thumb.jpg","coupon":"","rowid":"115f89503138416a242f40fb7d7f338e","subtotal":20000}}', '{"firstname":"Ahmed","lastname":"Mujtaba","address1":"Lorem Ipsum Lorem Ipsum","address2":"Lorem Ipsum Lorem Ipsum","zip":"44000","email":"ahmed.mj23@gmail.com","phone":"03136889414","langlat":"","payment_type":"cash_on_delivery"}', '40000', '', '1000', 'cash_on_delivery', '[{"vendor":"22","status":"paid"}]', NULL, NULL, '61000', '1556069044', '', '[{"vendor":"22","status":"delivered","comment":"","delivery_time":1556072292}]', 'ok'),
(191, '201904191', '25', '', '{"13fe9d84310e77f13a6d184dbf1232f3":{"id":"224","qty":3,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,23,12,1)\\"}}","price":100000,"name":"Bricks","shipping":"5000","tax":10000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_224_1_thumb.jpg","coupon":"","rowid":"13fe9d84310e77f13a6d184dbf1232f3","subtotal":300000}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '30000', '', '15000', 'cash_on_delivery', '[{"admin":"","status":"paid"}]', 'Paid', NULL, '345000', '1556068643', '', '[{"admin":"","status":"delivered","comment":"Ok","delivery_time":1556068903}]', 'ok'),
(190, '201904190', '25', '', '{"bcbe3365e6ac95ea2c0343a2395834dd":{"id":"222","qty":2,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(201,175,175,1)\\"}}","price":5000000,"name":"PVC pipes","shipping":"5000","tax":0,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_222_1_thumb.jpg","coupon":"","rowid":"bcbe3365e6ac95ea2c0343a2395834dd","subtotal":10000000}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '0', '', '10000', 'cash_on_delivery', '[{"vendor":"21","status":"paid"}]', NULL, NULL, '10010000', '1556050453', '', '[{"vendor":"21","status":"delivered","comment":"bill is paid","delivery_time":1556050504}]', 'ok'),
(189, '201904189', '25', '', '{"115f89503138416a242f40fb7d7f338e":{"id":"223","qty":5,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(227,0,0,1)\\"}}","price":20000,"name":"Bed","shipping":"1000","tax":40000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_223_1_thumb.jpg","coupon":"","rowid":"115f89503138416a242f40fb7d7f338e","subtotal":100000}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '200000', '', '5000', 'cash_on_delivery', '[{"vendor":"22","status":"paid"}]', NULL, NULL, '305000', '1556050067', '', '[{"vendor":"22","status":"delivered","comment":"","delivery_time":1556071928}]', 'ok'),
(187, '201904187', '26', '', '{"115f89503138416a242f40fb7d7f338e":{"id":"223","qty":3,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(227,0,0,1)\\"}}","price":20000,"name":"Bed","shipping":"1000","tax":40000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_223_1_thumb.jpg","coupon":"","rowid":"115f89503138416a242f40fb7d7f338e","subtotal":60000}}', '{"firstname":"Hamza Satti","lastname":"Ijaz","address1":"lorem epsim","address2":"lorem epsim","zip":"44000","email":"miami306@yahoo.com","phone":"03444266566","langlat":"","payment_type":"cash_on_delivery"}', '120000', '', '3000', 'cash_on_delivery', '[{"vendor":"22","status":"paid"}]', NULL, NULL, '183000', '1555970342', '', '[{"vendor":"22","status":"delivered","comment":"","delivery_time":1555971026}]', 'ok'),
(188, '201904188', '25', '', '{"060ad92489947d410d897474079c1477":{"id":"221","qty":5,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":null}}","price":1500,"name":"Mughal Steel","shipping":"250","tax":0,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_221_1_thumb.jpg","coupon":"","rowid":"060ad92489947d410d897474079c1477","subtotal":7500}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '0', '', '1250', 'cash_on_delivery', '[{"vendor":"20","status":"due"}]', '', NULL, '8750', '1555972974', '', '[{"vendor":"20","status":"pending","comment":"","delivery_time":""}]', 'ok'),
(186, '201904186', '25', '', '{"bcbe3365e6ac95ea2c0343a2395834dd":{"id":"222","qty":5,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(201,175,175,1)\\"}}","price":5000000,"name":"PVC pipes","shipping":"5000","tax":0,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_222_1_thumb.jpg","coupon":"","rowid":"bcbe3365e6ac95ea2c0343a2395834dd","subtotal":25000000}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '0', '', '25000', 'cash_on_delivery', '[{"vendor":"21","status":"paid"}]', NULL, NULL, '25025000', '1555968752', '', '[{"vendor":"21","status":"delivered","comment":"Shipment is delivered","delivery_time":1555971787}]', 'ok'),
(184, '201904184', '24', '', '{"060ad92489947d410d897474079c1477":{"id":"221","qty":5,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":null}}","price":1500,"name":"Mughal Steel","shipping":"250","tax":0,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_221_1_thumb.jpg","coupon":"","rowid":"060ad92489947d410d897474079c1477","subtotal":7500}}', '{"firstname":"Ahmed","lastname":"Mujtaba","address1":"Lorem Ipsum Lorem Ipsum","address2":"Lorem Ipsum Lorem Ipsum","zip":"44000","email":"ahmed.mj23@gmail.com","phone":"03136889414","langlat":"(-34.3764577741316, 150.71428959526565)","payment_type":"cash_on_delivery"}', '0', '', '1250', 'cash_on_delivery', '[{"vendor":"20","status":"paid"}]', NULL, NULL, '8750', '1555957205', '', '[{"vendor":"20","status":"delivered","comment":"you product has been delivered","delivery_time":1555957447}]', 'ok'),
(185, '201904185', '25', '', '{"060ad92489947d410d897474079c1477":{"id":"221","qty":8,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":null}}","price":1500,"name":"Mughal Steel","shipping":"250","tax":0,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_221_1_thumb.jpg","coupon":"","rowid":"060ad92489947d410d897474079c1477","subtotal":12000}}', '{"firstname":"sardar","lastname":"arslan","address1":"ipsum","address2":"ipsum","zip":"44000","email":"sardararslan033@gmail.com","phone":"03335422467","langlat":"","payment_type":"cash_on_delivery"}', '0', '', '2000', 'cash_on_delivery', '[{"vendor":"20","status":"due"}]', '', NULL, '14000', '1555965864', '', '[{"vendor":"20","status":"pending","comment":"","delivery_time":""}]', 'ok'),
(199, '201905199', 'guest', '199-9iYOk1n7eM', '{"060ad92489947d410d897474079c1477":{"id":"221","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":1500,"name":"Mughal Steel","shipping":"250","tax":0,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_221_1_thumb.jpg","coupon":"","rowid":"060ad92489947d410d897474079c1477","subtotal":1500}}', '{"firstname":"Rehayesh","lastname":"Mujtaba","address1":"pakistan","address2":"","zip":"44000","email":"ahmed.mj23@gmail.com","phone":"1234567","langlat":"","payment_type":"cash_on_delivery"}', '0', '', '250', 'cash_on_delivery', '[{"vendor":"20","status":"due"}]', '', NULL, '1750', '1559271383', '', '[{"vendor":"20","status":"pending","comment":"","delivery_time":""}]', NULL),
(200, '201905200', 'guest', '200-FBmcd8le91', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"Ahmed","lastname":"Mujtaba","address1":"pakistan","address2":"haidd","zip":"44000","email":"ahmed.mj23@gmail.com","phone":"1234567","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1559271456', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(201, '201905201', 'guest', '201-BRAjAYc7A6', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"Ahmed","lastname":"Mujtaba","address1":"pakistan","address2":"haidd","zip":"44000","email":"ahmed.mj23@gmail.com","phone":"1234567","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1559272145', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(202, '201905202', 'guest', '202-GcKV3TtatE', '{"060ad92489947d410d897474079c1477":{"id":"221","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":1500,"name":"Mughal Steel","shipping":"250","tax":0,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_221_1_thumb.jpg","coupon":"","rowid":"060ad92489947d410d897474079c1477","subtotal":1500}}', '{"firstname":"Ahmed","lastname":"Mujtaba","address1":"pakistan","address2":"haidd","zip":"44000","email":"ahmed.mj23@gmail.com","phone":"1234567","langlat":"","payment_type":"cash_on_delivery"}', '0', '', '250', 'cash_on_delivery', '[{"vendor":"20","status":"due"}]', '', NULL, '1750', '1559272361', '', '[{"vendor":"20","status":"pending","comment":"","delivery_time":""}]', NULL),
(203, '201905203', 'guest', '203-peovSfw4ex', '{"13fe9d84310e77f13a6d184dbf1232f3":{"id":"224","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":100000,"name":"Bricks","shipping":"5000","tax":10000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_224_1_thumb.jpg","coupon":"","rowid":"13fe9d84310e77f13a6d184dbf1232f3","subtotal":100000}}', '{"firstname":"Ahmed","lastname":"Mujtaba","address1":"pakistan","address2":"haidd","zip":"44000","email":"ahmed.mj23@gmail.com","phone":"1234567","langlat":"","payment_type":"cash_on_delivery"}', '10000', '', '5000', 'cash_on_delivery', '[{"admin":"","status":"due"}]', '', NULL, '115000', '1559272418', '', '[{"admin":"","status":"pending","comment":"","delivery_time":""}]', NULL),
(204, '201912204', 'guest', '204-mGJ3Aux8XC', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"haider","lastname":"ijaz","address1":"lorem ipsum","address2":"","zip":"46000","email":"rehan@gmail.com","phone":"03365965508","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1575581464', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(205, '201912205', 'guest', '205-SM6IzfNNiL', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"haider","lastname":"ijaz","address1":"lorem ipsum","address2":"","zip":"46000","email":"rehan@gmail.com","phone":"03365965508","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1575581770', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(206, '201912206', 'guest', '206-avbDtGPafG', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"haider","lastname":"ijaz","address1":"lorem ipsum","address2":"","zip":"46000","email":"admin@email.com","phone":"03365965508","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1575583388', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(207, '201912207', 'guest', '207-Un94FnJSSM', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"haider","lastname":"ijaz","address1":"lorem ipsum","address2":"","zip":"46000","email":"admin@email.com","phone":"03365965508","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1575583694', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(208, '201912208', 'guest', '208-0598KuKHGt', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"haider","lastname":"ij","address1":"lorem ipsum","address2":"","zip":"46000","email":"aaa@gmail.com","phone":"03365965508","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1576091562', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(209, '201912209', 'guest', '209-tIxE3VJF1D', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"haider","lastname":"ij","address1":"lorem ipsum","address2":"","zip":"46000","email":"aaa@gmail.com","phone":"03365965508","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1576091867', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(210, '201912210', 'guest', '210-GPWxdNT4EC', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"Hamza","lastname":"Ijaz","address1":"Lorem ipsum","address2":"","zip":"46000","email":"hamzaijaz1595@gmail.com","phone":"03365965508","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1576598129', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', 'ok'),
(211, '201912211', 'guest', '211-zH5rMQnsmJ', '{"13fe9d84310e77f13a6d184dbf1232f3":{"id":"224","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":100000,"name":"Bricks","shipping":"5000","tax":10000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_224_1_thumb.jpg","coupon":"","rowid":"13fe9d84310e77f13a6d184dbf1232f3","subtotal":100000}}', '{"firstname":"edjdjudjdjd","lastname":"djdjdjdjjd","address1":"house no 1 st no 34 airport society","address2":"","zip":"446000","email":"ahmeme@gmail.com","phone":"03455066354","langlat":"","payment_type":"cash_on_delivery"}', '10000', '', '5000', 'cash_on_delivery', '[{"admin":"","status":"due"}]', '', NULL, '115000', '1577097574', '', '[{"admin":"","status":"pending","comment":"","delivery_time":""}]', NULL),
(212, '201912212', 'guest', '212-wyM0NpwKfw', '{"13fe9d84310e77f13a6d184dbf1232f3":{"id":"224","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":100000,"name":"Bricks","shipping":"5000","tax":10000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_224_1_thumb.jpg","coupon":"","rowid":"13fe9d84310e77f13a6d184dbf1232f3","subtotal":100000}}', '{"firstname":"edjdjudjdjd","lastname":"djdjdjdjjd","address1":"house no 1 st no 34 airport society","address2":"","zip":"446000","email":"ahmeme@gmail.com","phone":"03455066354","langlat":"","payment_type":"cash_on_delivery"}', '10000', '', '5000', 'cash_on_delivery', '[{"admin":"","status":"due"}]', '', NULL, '115000', '1577097880', '', '[{"admin":"","status":"pending","comment":"","delivery_time":""}]', NULL),
(213, '201912213', 'guest', '213-hTlFeZ72hP', '{"13fe9d84310e77f13a6d184dbf1232f3":{"id":"224","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":100000,"name":"Bricks","shipping":"5000","tax":10000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_224_1_thumb.jpg","coupon":"","rowid":"13fe9d84310e77f13a6d184dbf1232f3","subtotal":100000}}', '{"firstname":"sjjsdjdjdjjd","lastname":"jsjsjsjsjsjjsjs","address1":"house no 20 st no 34 airport society","address2":"","zip":"44000","email":"sjdjdjd@gmail.com","phone":"0333409392929","langlat":"","payment_type":"cash_on_delivery"}', '10000', '', '5000', 'cash_on_delivery', '[{"admin":"","status":"due"}]', '', NULL, '115000', '1577098301', '', '[{"admin":"","status":"pending","comment":"","delivery_time":""}]', NULL),
(214, '201912214', 'guest', '214-RyoYbYnOWP', '{"13fe9d84310e77f13a6d184dbf1232f3":{"id":"224","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":100000,"name":"Bricks","shipping":"5000","tax":10000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_224_1_thumb.jpg","coupon":"","rowid":"13fe9d84310e77f13a6d184dbf1232f3","subtotal":100000}}', '{"firstname":"Abdul","lastname":"Baseer","address1":"House no 2 street 7 gulberg","address2":"","zip":"44000","email":"Abdul@gmail.com","phone":"03455066353","langlat":"","payment_type":"cash_on_delivery"}', '10000', '', '5000', 'cash_on_delivery', '[{"admin":"","status":"paid"}]', '', NULL, '115000', '1577098418', '', '[{"admin":"","status":"delivered","comment":"","delivery_time":1604768735}]', 'ok'),
(215, '201912215', 'guest', '215-6ebtHS734o', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"saad","lastname":"ch","address1":"house no 4 st 5 model town","address2":"","zip":"44000","email":"saad0106@gmail.com","phone":"03334559848","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1577098492', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', NULL),
(216, '201912216', 'guest', '216-aKDTzxUduf', '{"13fe9d84310e77f13a6d184dbf1232f3":{"id":"224","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":100000,"name":"Bricks","shipping":"5000","tax":10000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_224_1_thumb.jpg","coupon":"","rowid":"13fe9d84310e77f13a6d184dbf1232f3","subtotal":100000}}', '{"firstname":"sjjsdjdjdjjd","lastname":"jsjsjsjsjsjjsjs","address1":"house no 20 st no 34 airport society","address2":"","zip":"44000","email":"sjdjdjd@gmail.com","phone":"0333409392929","langlat":"","payment_type":"cash_on_delivery"}', '10000', '', '5000', 'cash_on_delivery', '[{"admin":"","status":"due"}]', '', NULL, '115000', '1577098607', '', '[{"admin":"","status":"pending","comment":"","delivery_time":""}]', NULL),
(217, '201912217', 'guest', '217-PJvZS56Cxf', '{"13fe9d84310e77f13a6d184dbf1232f3":{"id":"224","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":100000,"name":"Bricks","shipping":"5000","tax":10000,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_224_1_thumb.jpg","coupon":"","rowid":"13fe9d84310e77f13a6d184dbf1232f3","subtotal":100000}}', '{"firstname":"Abdul","lastname":"Baseer","address1":"House no 2 street 7 gulberg","address2":"","zip":"44000","email":"Abdul@gmail.com","phone":"03455066353","langlat":"","payment_type":"cash_on_delivery"}', '10000', '', '5000', 'cash_on_delivery', '[{"admin":"","status":"due"}]', '', NULL, '115000', '1577098725', '', '[{"admin":"","status":"pending","comment":"","delivery_time":""}]', 'ok'),
(218, '201912218', 'guest', '218-eyTjEZBqXV', '{"d1c38a09acc34845c6be3a127a5aacaf":{"id":"225","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":5000,"name":"cement","shipping":"500","tax":250,"image":"https:\\/\\/airapp.co\\/projects\\/kaka\\/uploads\\/product_image\\/product_225_1_thumb.jpg","coupon":"","rowid":"d1c38a09acc34845c6be3a127a5aacaf","subtotal":5000}}', '{"firstname":"saad","lastname":"ch","address1":"house no 4 st 5 model town","address2":"","zip":"44000","email":"saad0106@gmail.com","phone":"03334559848","langlat":"","payment_type":"cash_on_delivery"}', '250', '', '500', 'cash_on_delivery', '[{"vendor":"21","status":"due"}]', '', NULL, '5750', '1577098798', '', '[{"vendor":"21","status":"pending","comment":"","delivery_time":""}]', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `elements` longtext,
  `status` longtext,
  `title` longtext,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slider_style`
--

CREATE TABLE `slider_style` (
  `slider_style_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\n   "full_slide_style":"data-ls=\\"slidedelay:6500;transition2d:all;transition3d:15;\\"",\n   "background":"bg",\n   "images":[\n\n   ],\n   "texts":[\n      {\n         "element":"h1",\n         "show_name":"WELCOME",\n         "name":"text_1",\n         "style":"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;",\n         "data_ls":"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      },\n      {\n         "element":"h1",\n         "show_name":"YOUR SHOP NAME",\n         "name":"text_2",\n         "style":"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;",\n         "data_ls":"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      },\n      {\n         "element":"h1",\n         "show_name":"SHOP TITLE",\n         "name":"text_3",\n         "style":"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;",\n         "data_ls":"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      }\n   ]\n}'),
(2, 'WELCOME TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:24,25,27,28,34,35,37,38,110,113;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:20px; left:50%;width:220px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:4600; easingin:easeOutQuad; fadein:false; rotatein:-10; offsetxout:0; durationout:1500;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"WELCOME TO",\r\n         "name":"text_1",\r\n         "style":"top:260px; left:50%; text-align: center;  font-weight: 300; width:300px; height:60px; font-size:30px; line-height:60px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:top; durationout:750; durationin:1000; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"YOUR SHOP NAME",\r\n         "name":"text_2",\r\n         "style":"top:340px; left:50%; text-align: center; font-weight: 300; width:500px; height:100px; font-size:40px; line-height:100px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:bottom; durationin:1000; durationout:750; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#8D00B0"\r\n      }\r\n   ]\r\n}'),
(3, 'SLIDER TYPE 1', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Product Image 1",\r\n         "name":"circle_1",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:1500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 2",\r\n         "name":"circle_2",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:3000; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 3",\r\n         "name":"circle_3",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:4500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; easingout:easeInQuart; fadeout:false; "\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:105px; left:30px; text-align: center; font-weight: 300; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:155px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:205px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:left; delayin:1000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:255px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX;  border-radius:100px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:1500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:305px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:2000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:2000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 1",\r\n         "name":"product_title_1",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:1750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 2",\r\n         "name":"product_title_2",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:3250; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 3",\r\n         "name":"product_title_3",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:4750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(4, 'SLIDER TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:80px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:180px; white-space:nowrap;width:220px; ",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:280px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:700px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURe 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      }\r\n   ]\r\n}'),
(5, 'SLIDER TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:580px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:680px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:780px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:80px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:116px; font-weight:300; font-size:30px; white-space:nowrap;",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(6, 'SLIDER TYPE 4', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "name":"long_1",\r\n         "style":"top:60px;left:578px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "name":"semi_long_1",\r\n         "style":"top:170px;left:800px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "name":"square_1",\r\n         "style":"top:265px;left:1020px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:50px; font-size:50px; font-weight:300; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:500; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotatexout:90; transformoriginout:50; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 7",\r\n         "name":"product_feature_7",\r\n         "style":"top:400px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(7, 'SLIDER TYPE 5', '{\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\n   "background":"bg_apple",\n   "images":[\n      {\n         "name":"long_1",\n         "style":"top:50%; left:50%;width:200px; white-space:nowrap;",\n         "data_ls" : "",\n         "show_name":"IMAGE"\n      }\n   ],\n   "texts":[\n      {\n         "element":"h6",\n         "show_name":"PRICE",\n         "name":"price",\n         "style":"top:55%; left:39%; durationin:500; delayin:600; fadein:false; rotatein:30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1; scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#B816B2; border-radius:5px; white-space:nowrap;",\n         "data_ls" : "",\n         "color":"#ffffff",\n         "background":"#b816b2"\n      },\n      {\n         "element":"h6",\n         "show_name":"PRODUCT TITLE",\n         "name":"product_title",\n         "style":"top:45%; left:36%; durationin:500; delayin:500; fadein:false; rotatein:-30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1;scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#760093;border-radius:5px; white-space:nowrap;",\n         "data_ls" : "",\n         "color":"#ffffff",\n         "background":"#760093"\n      }\n   ]\n}'),
(8, 'SLIDER TYPE 6', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:100px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:90; transformoriginin:left; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:left; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:400px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:-90; transformoriginin:right; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:right; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"font-family:Roboto;top:25px; left:192px; font-weight:100; text-align:center; width:340px; font-size:40px; border-radius:5px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:2000; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotateout:-90; transformoriginout:left; ",\r\n         "color":"#34009d",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":" DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:50px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:2300; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:90px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:2700; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:150px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3000; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:190px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:3400; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:250px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3700; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:290px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4100; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:360px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:4400; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 8",\r\n         "name":"dummy_text_8",\r\n         "style":"top:400px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4800; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(9, 'SLIDER TYPE 7', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:50px; left:50%;width:278px; white-space:nowrap;",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"IMAGE"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#d9482b",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(10, 'SLIDER TYPE 8', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:120px; left:42%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:120px; left:58%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:50px; left:50%;width:200px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"long_1",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}');
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(11, 'WELCOME TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:8000;transition2d:4;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:45%; left:45%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:right 50% 0; offsetxout:0; durationout:1500; showuntil:1000; rotateyout:-90; transformoriginout:right 50% 0;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"Introducing",\r\n         "name":"text_1",\r\n         "style":"top:40%; left:50%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:750; easingin:easeOutBack; skewxin:-50; offsetxout:-50; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#C505BD",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"Your Shop Name",\r\n         "name":"text_2",\r\n         "style":"top:50%; left:50%; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-100; durationin:750; delayin:250; easingin:easeOutBack; skewxin:-50; offsetxout:100; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"your Shop Slogan",\r\n         "name":"text_3",\r\n         "style":"top:47%; left:690px; font-weight: 300; font-size:35px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:left 50% 0; offsetxout:0; durationout:1500; showuntil:1500; rotateyout:-90; transformoriginout:left 50% 0;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}'),
(12, 'SLIDER TYPE 9', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:9500;transition2d:5;timeshift:-3000;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"semi_long_1",\r\n         "style":"top:120px; left:300px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:1000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 2",\r\n         "name":"semi_long_2",\r\n         "style":"top:120px; left:200px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:2000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 3",\r\n         "name":"semi_long_3",\r\n         "style":"top:120px; left:100px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:3000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"text_1",\r\n         "style":"top:60px; left:800px; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:3000; rotateyin:60; transformoriginin:right 50% 0; offsetxout:-50; durationout:3000; rotateyout:-60; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h2",\r\n         "show_name":"BIG SALE",\r\n         "name":"text_2",\r\n         "style":"top:120px; left:801px; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-50; durationin:3000; delayin:500; rotateyin:-60; transformoriginin:left 50% 0; offsetxout:50; durationout:3000; rotateyout:60; transformoriginout:right 50% 0;",\r\n         "color":"#FA6BF3",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h3",\r\n         "show_name":"$99",\r\n         "name":"text_3",\r\n         "style":"top:200px; left:850px; font-weight: 300; font-size:120px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:4000; delayin:2000; rotateyin:450; transformoriginin:left 50% 0; offsetxout:0; durationout:500; easingout:easeInBack; rotateyout:90; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slides_id` int(11) NOT NULL,
  `button_color` longtext,
  `text_color` longtext,
  `button_text` varchar(300) NOT NULL,
  `button_link` varchar(500) NOT NULL,
  `uploaded_by` longtext NOT NULL,
  `added_by` longtext,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slides_id`, `button_color`, `text_color`, `button_text`, `button_link`, `uploaded_by`, `added_by`, `status`) VALUES
(19, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{"type":"admin","id":"1"}', 'ok'),
(20, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{"type":"admin","id":"1"}', 'ok'),
(21, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{"type":"admin","id":"1"}', 'ok'),
(22, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{"type":"admin","id":"1"}', 'ok'),
(24, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{"type":"admin","id":"1"}', 'ok'),
(30, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{"type":"vendor","id":"5"}', 'ok'),
(34, 'rgba(245,233,233,1)', 'rgba(18,17,17,1)', 'Demo', 'https://www.google.com', 'vendor', '{"type":"vendor","id":"17"}', 'ok'),
(35, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{"type":"vendor","id":"19"}', 'ok'),
(36, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{"type":"vendor","id":"22"}', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `social_links_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'http://facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'http://skype.com/'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext,
  `category` longtext,
  `sub_category` longtext,
  `product` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `type`, `category`, `sub_category`, `product`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '6', '15', '42', '50', '140.00', '7000', '', '1474202947', NULL, NULL),
(2, 'add', '6', '13', '41', '80', '220.00', '17600', '', '1474205403', NULL, NULL),
(3, 'add', '3', '19', '45', '10', '400.00', '4000', '', '1474273237', NULL, '{"type":"vendor","id":"2"}'),
(4, 'destroy', '3', '19', '45', '3', NULL, '3', '', '1474273259', NULL, '{"type":"vendor","id":"2"}'),
(5, 'add', '7', '24', '46', '50', '170.00', '8500', '', '1474279907', NULL, '{"type":"vendor","id":"3"}'),
(6, 'add', '7', '23', '47', '25', '8.00', '200', '', '1474283137', NULL, '{"type":"vendor","id":"3"}'),
(7, 'add', '7', '25', '48', '35', '6.00', '210', '', '1474284193', NULL, '{"type":"vendor","id":"3"}'),
(8, 'add', '5', '29', '50', '50', '15.25', '762.5', '', '1474485138', NULL, '{"type":"vendor","id":"3"}'),
(9, 'add', '5', '29', '49', '45', '34.35', '1545.75', '', '1474485156', NULL, '{"type":"vendor","id":"3"}'),
(10, 'add', '5', '29', '51', '25', '11.11', '277.75', '', '1474485808', NULL, '{"type":"vendor","id":"3"}'),
(11, 'add', '5', '29', '52', '18', '9.56', '172.08', '', '1474487386', NULL, '{"type":"vendor","id":"3"}'),
(12, 'add', '5', '27', '53', '10', '85.00', '850', '', '1474488421', NULL, '{"type":"vendor","id":"3"}'),
(13, 'add', '5', '27', '55', '15', '101.00', '1515', '', '1474489704', NULL, '{"type":"vendor","id":"3"}'),
(14, 'add', '5', '27', '54', '15', '100.00', '1500', '', '1474489715', NULL, '{"type":"vendor","id":"3"}'),
(15, 'add', '5', '27', '56', '25', '85.00', '2125', '', '1474490017', NULL, '{"type":"vendor","id":"3"}'),
(16, 'add', '5', '28', '57', '20', '65.00', '1300', '', '1474490674', NULL, '{"type":"vendor","id":"3"}'),
(17, 'add', '5', '28', '58', '25', '60.00', '1500', '', '1474491530', NULL, '{"type":"vendor","id":"3"}'),
(18, 'add', '5', '28', '59', '20', '65.00', '1300', '', '1474492165', NULL, '{"type":"vendor","id":"3"}'),
(19, 'add', '5', '30', '61', '100', '41.00', '4100', '', '1474493210', NULL, '{"type":"vendor","id":"3"}'),
(20, 'add', '5', '28', '60', '20', '75.00', '1500', '', '1474493219', NULL, '{"type":"vendor","id":"3"}'),
(21, 'add', '5', '30', '62', '80', '620.00', '49600', '', '1474493510', NULL, '{"type":"vendor","id":"3"}'),
(22, 'add', '5', '30', '63', '50', '650.00', '32500', '', '1474493879', NULL, '{"type":"vendor","id":"3"}'),
(23, 'add', '4', '9', '65', '30', '11.26', '337.8', '', '1474572304', NULL, '{"type":"vendor","id":"5"}'),
(24, 'add', '4', '9', '66', '35', '15.35', '537.25', '', '1474572782', NULL, '{"type":"vendor","id":"5"}'),
(25, 'add', '4', '9', '67', '30', '13.20', '396', '', '1474574151', NULL, '{"type":"vendor","id":"5"}'),
(26, 'add', '4', '10', '68', '20', '12.36', '247.2', '', '1474575119', NULL, '{"type":"vendor","id":"5"}'),
(27, 'add', '4', '10', '69', '30', '8.20', '245.99999999999997', '', '1474575712', NULL, '{"type":"vendor","id":"5"}'),
(28, 'add', '4', '11', '70', '25', '3.35', '83.75', '', '1474576989', NULL, '{"type":"vendor","id":"5"}'),
(29, 'add', '4', '11', '71', '50', '2.88', '144', '', '1474577860', NULL, '{"type":"vendor","id":"5"}'),
(30, 'add', '4', '11', '72', '10', '8.90', '89', '', '1474578795', NULL, '{"type":"vendor","id":"5"}'),
(31, 'add', '4', '36', '73', '15', '38.32', '574.8', '', '1474580033', NULL, '{"type":"vendor","id":"5"}'),
(32, 'add', '4', '36', '74', '20', '41.38', '827.6', '', '1474580235', NULL, '{"type":"vendor","id":"5"}'),
(33, 'add', '4', '36', '75', '20', '39.63', '792.6', '', '1474580993', NULL, NULL),
(34, 'add', '1', '3', '76', '10', '43567.00', '435670', '', '1474721288', NULL, '{"type":"vendor","id":"3"}'),
(35, 'add', '1', '3', '77', '15', '58378.00', '875670', '', '1474722264', NULL, '{"type":"vendor","id":"3"}'),
(36, 'add', '1', '3', '78', '20', '131772.00', '2635440', '', '1474722788', NULL, '{"type":"vendor","id":"3"}'),
(37, 'add', '1', '63', '79', '5', '1734589.00', '8672945', '', '1474790400', NULL, '{"type":"vendor","id":"3"}'),
(38, 'add', '1', '63', '80', '10', '558900.00', '5589000', '', '1474792233', NULL, NULL),
(39, 'add', '1', '63', '81', '5', '3234690.00', '16173450', '', '1474792382', NULL, NULL),
(40, 'add', '1', '63', '82', '8', '4467490.00', '35739920', '', '1474792879', NULL, NULL),
(41, 'add', '1', '5', '83', '12', '11670.00', '140040', '', '1474793757', NULL, NULL),
(42, 'add', '1', '5', '84', '25', '42879.00', '1071975', '', '1474796354', NULL, NULL),
(43, 'add', '1', '5', '85', '18', '74590.00', '1342620', '', '1474796688', NULL, NULL),
(44, 'add', '1', '2', '86', '16', '45000.00', '720000', '', '1474799085', NULL, NULL),
(45, 'add', '1', '6', '87', '10', '41000.00', '410000', '', '1474800049', NULL, NULL),
(46, 'add', '1', '6', '88', '25', '33890.00', '847250', '', '1474800332', NULL, NULL),
(47, 'add', '1', '6', '89', '10', '42000.00', '420000', '', '1474801376', NULL, NULL),
(48, 'add', '2', '62', '90', '45', '61897.00', '2785365', '', '1474802601', NULL, NULL),
(49, 'add', '2', '17', '92', '55', '42000.00', '2310000', '', '1474803009', NULL, '{"type":"vendor","id":"3"}'),
(50, 'add', '2', '62', '91', '10', '65000.00', '650000', '', '1474889590', NULL, NULL),
(52, 'add', '4', '10', '69', '0', '8.20', '0', '', '1475390469', NULL, NULL),
(53, 'add', '2', '18', '93', '10', '350.00', '3500', '', '1475483558', NULL, NULL),
(54, 'add', '2', '18', '94', '10', '350.00', '3500', '', '1475485603', NULL, NULL),
(56, 'add', '2', '18', '96', '100', '350.00', '35000', '', '1475498670', NULL, NULL),
(59, 'add', '1', '3', '4', '100', '88000.00', '8800000', '', '1476007723', NULL, NULL),
(60, 'add', '1', '2', '1', '50', '120000.00', '6000000', '', '1476007803', NULL, NULL),
(61, 'destroy', '4', '36', '74', '2', NULL, '0', 'sale', '1517725191', '5', NULL),
(62, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732450', '6', NULL),
(63, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732639', '7', NULL),
(64, 'add', '4', '10', '37', '100', '150.00', '15000', '', '1517942532', NULL, NULL),
(65, 'add', '4', '8', '36', '100', '210.00', '0', '', '1517942542', NULL, NULL),
(66, 'add', '4', '35', '35', '100', '240.00', '24000', '', '1517942553', NULL, NULL),
(67, 'add', '4', '9', '26', '100', '10.00', '1000', '', '1517942563', NULL, NULL),
(68, 'add', '4', '37', '25', '100', '250.00', '25000', '', '1517942574', NULL, NULL),
(69, 'add', '4', '37', '24', '100', '400.00', '40000', '', '1517942585', NULL, NULL),
(70, 'add', '4', '37', '23', '100', '210.00', '21000', '', '1517942598', NULL, NULL),
(71, 'add', '4', '40', '18', '200', '100.00', '20000', '', '1517942609', NULL, NULL),
(72, 'add', '4', '35', '17', '150', '120.00', '18000', '', '1517942624', NULL, NULL),
(73, 'add', '4', '39', '16', '200', '110.00', '22000', '', '1517942637', NULL, NULL),
(74, 'add', '4', '37', '15', '200', '130.00', '0', '', '1517942647', NULL, NULL),
(75, 'add', '4', '34', '14', '100', '320.00', '32000', '', '1517942656', NULL, NULL),
(76, 'add', '4', '8', '12', '200', '180.00', '36000', '', '1517942666', NULL, NULL),
(77, 'add', '4', '11', '11', '100', '6500.00', '650000', '', '1517942677', NULL, NULL),
(78, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1517942691', NULL, NULL),
(79, 'add', '4', '10', '7', '500', '35.00', '17500', '', '1517942704', NULL, NULL),
(80, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1517942726', NULL, NULL),
(81, 'add', '5', '28', '9', '500', '120.00', '60000', '', '1517942751', NULL, NULL),
(82, 'add', '16', '78', '101', '10', '95.00', '950', '', '1518078812', NULL, NULL),
(83, 'add', '16', '78', '103', '20', '125.00', '2500', '', '1518079324', NULL, NULL),
(84, 'add', '16', '78', '102', '15', '125.00', '1875', '', '1518079332', NULL, NULL),
(85, 'add', '16', '78', '104', '15', '125.00', '1875', '', '1518079423', NULL, NULL),
(86, 'add', '16', '78', '104', '100', '125.00', '12500', '', '1518079433', NULL, NULL),
(87, 'add', '16', '78', '103', '150', '125.00', '18750', '', '1518079443', NULL, NULL),
(88, 'add', '16', '78', '102', '90', '125.00', '11250', '', '1518079453', NULL, NULL),
(89, 'add', '16', '78', '101', '120', '95.00', '11400', '', '1518079464', NULL, NULL),
(90, 'add', '1', '6', '89', '50', '42000.00', '2100000', '', '1518079474', NULL, NULL),
(91, 'add', '1', '6', '88', '50', '33890.00', '1694500', '', '1518079483', NULL, NULL),
(92, 'add', '1', '6', '87', '80', '41000.00', '3280000', '', '1518079495', NULL, NULL),
(93, 'add', '1', '6', '86', '80', '45000.00', '3600000', '', '1518079507', NULL, NULL),
(94, 'add', '16', '78', '105', '120', '110.00', '13200', '', '1518079727', NULL, NULL),
(95, 'add', '16', '78', '106', '150', '122.00', '18300', '', '1518079898', NULL, NULL),
(96, 'add', '16', '79', '107', '120', '145.00', '17400', '', '1518080173', NULL, NULL),
(97, 'add', '16', '79', '108', '80', '144.00', '11520', '', '1518080359', NULL, NULL),
(98, 'add', '16', '79', '110', '50', '75.00', '3750', '', '1518081142', NULL, NULL),
(99, 'add', '16', '79', '109', '60', '140.00', '8400', '', '1518081151', NULL, NULL),
(100, 'add', '16', '79', '111', '100', '95.00', '9500', '', '1518081235', NULL, NULL),
(101, 'add', '16', '79', '112', '150', '50.00', '7500', '', '1518081346', NULL, NULL),
(102, 'add', '16', '80', '113', '150', '95.00', '14250', '', '1518081575', NULL, NULL),
(103, 'add', '16', '80', '114', '130', '98.00', '12740', '', '1518081650', NULL, NULL),
(104, 'add', '16', '80', '115', '200', '100.00', '20000', '', '1518081994', NULL, NULL),
(105, 'add', '5', '27', '117', '85', '45.00', '3825', '', '1518082666', NULL, NULL),
(106, 'add', '16', '80', '116', '100', '92.00', '9200', '', '1518082674', NULL, NULL),
(107, 'add', '5', '27', '118', '80', '56.00', '4480', '', '1518082825', NULL, NULL),
(108, 'add', '5', '27', '120', '80', '65.00', '5200', '', '1518083101', NULL, NULL),
(109, 'add', '5', '27', '119', '80', '65.00', '5200', '', '1518083110', NULL, NULL),
(110, 'add', '5', '28', '121', '50', '79.00', '3950', '', '1518083320', NULL, NULL),
(111, 'add', '5', '28', '122', '60', '55.00', '3300', '', '1518083433', NULL, NULL),
(112, 'add', '5', '28', '123', '60', '66.00', '3960', '', '1518083632', NULL, NULL),
(113, 'add', '5', '29', '124', '82', '45.00', '3690', '', '1518083830', NULL, NULL),
(114, 'add', '5', '29', '124', '56', '45.00', '2520', '', '1518084168', NULL, NULL),
(115, 'add', '5', '30', '126', '55', '90.00', '4950', '', '1518084178', NULL, NULL),
(116, 'add', '5', '30', '127', '80', '125.00', '10000', '', '1518084186', NULL, NULL),
(117, 'add', '5', '29', '125', '50', '56.00', '2800', '', '1518084194', NULL, NULL),
(118, 'add', '4', '37', '128', '80', '120.00', '9600', '', '1518086137', NULL, NULL),
(119, 'add', '4', '37', '129', '100', '145.00', '14500', '', '1518086245', NULL, NULL),
(120, 'add', '1', '2', '130', '50', '32000.00', '1600000', '', '1518091220', NULL, NULL),
(121, 'destroy', '4', '36', '75', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(122, 'destroy', '5', '28', '58', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(123, 'destroy', '5', '28', '57', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(124, 'destroy', '5', '27', '54', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(125, 'destroy', '5', '29', '50', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(126, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1519796196', '12', NULL),
(127, 'destroy', '0', '0', '101', '1', NULL, '0', 'sale', '1521374128', '15', NULL),
(128, 'destroy', '0', '0', '101', '1', NULL, '0', 'sale', '1521430987', '16', NULL),
(129, 'destroy', '13', '75', '99', '1', NULL, '0', 'sale', '1521541152', '17', NULL),
(130, 'destroy', '0', '0', '102', '1', NULL, '0', 'sale', '1521616455', '18', NULL),
(131, 'destroy', '0', '0', '102', '7', NULL, '0', 'sale', '1521616557', '19', NULL),
(132, 'destroy', '0', '0', '102', '1', NULL, '0', 'sale', '1521616913', '20', NULL),
(133, 'add', '4', '10', '37', '500', '150.00', '75000', '', '1522827326', NULL, NULL),
(134, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1522827360', NULL, NULL),
(135, 'add', '4', '10', '7', '1000', '35.00', '35000', '', '1522827390', NULL, NULL),
(136, 'add', '4', '34', '14', '150', '320.00', '0', '', '1522827433', NULL, NULL),
(137, 'add', '4', '37', '15', '200', '130.00', '0', '', '1522827463', NULL, NULL),
(138, 'add', '4', '39', '16', '200', '110.00', '0', '', '1522827488', NULL, NULL),
(139, 'add', '4', '35', '17', '100', '120.00', '12000', '', '1522827994', NULL, NULL),
(140, 'add', '4', '40', '18', '150', '100.00', '15000', '', '1522828021', NULL, NULL),
(141, 'add', '4', '35', '35', '200', '240.00', '0', '', '1522828073', NULL, NULL),
(142, 'add', '4', '9', '26', '200', '10.00', '0', '', '1522828105', NULL, NULL),
(143, 'add', '4', '37', '25', '200', '250.00', '50000', '', '1522828132', NULL, NULL),
(144, 'add', '4', '37', '24', '200', '400.00', '0', '', '1522828163', NULL, NULL),
(145, 'add', '4', '37', '23', '300', '210.00', '0', '', '1522828256', NULL, NULL),
(146, 'add', '4', '8', '36', '400', '210.00', '0', '', '1522828286', NULL, NULL),
(147, 'add', '4', '8', '12', '300', '180.00', '0', '', '1522828328', NULL, NULL),
(148, 'add', '4', '11', '11', '250', '6500.00', '0', '', '1522828413', NULL, NULL),
(149, 'add', '5', '28', '9', '250', '120.00', '0', '', '1522828467', NULL, NULL),
(150, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1522828488', NULL, NULL),
(151, 'add', '17', '78', '103', '30', '4.40', '132', '', '1522837440', NULL, NULL),
(152, 'add', '17', '78', '104', '50', '4.72', '236', '', '1522837706', NULL, NULL),
(153, 'add', '17', '78', '105', '20', '5.50', '110', '', '1522837862', NULL, NULL),
(154, 'add', '18', '79', '106', '15', '18.30', '274.5', '', '1522838553', NULL, NULL),
(155, 'add', '18', '79', '107', '12', '22.63', '271.56', '', '1522838928', NULL, NULL),
(156, 'add', '21', '80', '108', '5', '57.53', '287.65', '', '1522841201', NULL, NULL),
(157, 'add', '21', '80', '109', '1', '58.77', '58.77', '', '1522841562', NULL, NULL),
(158, 'add', '16', '81', '110', '5', '719.99', '3599.95', '', '1522842237', NULL, NULL),
(159, 'add', '16', '81', '111', '3', '209.99', '629.97', '', '1522842721', NULL, NULL),
(160, 'add', '16', '81', '112', '2', '629.99', '1259.98', '', '1522842852', NULL, NULL),
(161, 'add', '1', '3', '124', '200', '54000.00', '10800000', '', '1522922112', NULL, NULL),
(162, 'add', '1', '3', '125', '300', '59000.00', '17700000', '', '1522922301', NULL, NULL),
(163, 'add', '5', '27', '127', '25', '169.99', '4249.75', '', '1522925860', NULL, NULL),
(164, 'add', '5', '27', '127', '75', '169.99', '12749.25', '', '1522925881', NULL, NULL),
(165, 'add', '5', '27', '128', '100', '372.06', '37206', '', '1522926055', NULL, NULL),
(166, 'add', '5', '27', '130', '500', '79.20', '0', '', '1522930929', NULL, NULL),
(167, 'add', '5', '28', '129', '500', '50.00', '0', '', '1522930942', NULL, NULL),
(168, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1523524543', '21', NULL),
(169, 'destroy', '1', '3', '125', '1', NULL, '0', 'sale', '1523535450', '22', NULL),
(170, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1523535591', '23', NULL),
(171, 'destroy', '5', '27', '128', '1', NULL, '0', 'sale', '1523535591', '23', NULL),
(172, 'destroy', '0', '0', '126', '1', NULL, '0', 'sale', '1523852571', '24', NULL),
(173, 'destroy', '0', '0', '119', '1', NULL, '0', 'sale', '1523852571', '24', NULL),
(174, 'add', '1', '6', '131', '25', '26999.00', '674975', '', '1523857079', NULL, NULL),
(175, 'add', '1', '6', '132', '10', '4999.00', '49990', '', '1523861112', NULL, NULL),
(176, 'add', '1', '63', '133', '5', '117139.33', '585696.65', '', '1523863280', NULL, NULL),
(177, 'add', '1', '63', '134', '10', '794782.29', '7947822.9', '', '1523863576', NULL, NULL),
(178, 'add', '5', '28', '135', '200', '63.75', '12750', '', '1523867199', NULL, NULL),
(179, 'add', '5', '28', '136', '150', '44.99', '6748.5', '', '1523867819', NULL, NULL),
(180, 'add', '5', '29', '137', '500', '52.99', '26495', '', '1523868841', NULL, NULL),
(181, 'add', '5', '29', '138', '300', '31.80', '9540', '', '1523869110', NULL, NULL),
(182, 'add', '5', '29', '139', '300', '45.99', '13797', '', '1523869336', NULL, NULL),
(183, 'add', '5', '30', '140', '50', '26724.99', '1336249.5', '', '1523870296', NULL, NULL),
(184, 'add', '5', '30', '141', '100', '664.99', '66499', '', '1523870578', NULL, NULL),
(185, 'add', '16', '81', '142', '100', '794.00', '79400', '', '1523871020', NULL, NULL),
(186, 'add', '16', '81', '143', '100', '625.00', '62500', '', '1523871351', NULL, NULL),
(187, 'add', '16', '81', '144', '200', '409.00', '81800', '', '1523871782', NULL, NULL),
(188, 'add', '16', '83', '145', '50', '70.72', '3536', '', '1523872591', NULL, NULL),
(189, 'add', '16', '83', '146', '100', '11.58', '1158', '', '1523872944', NULL, NULL),
(190, 'add', '16', '83', '147', '140', '91.97', '12875.8', '', '1523873194', NULL, NULL),
(191, 'add', '16', '83', '148', '200', '96.28', '19256', '', '1523873449', NULL, NULL),
(192, 'add', '16', '83', '149', '50', '105.97', '5298.5', '', '1523873845', NULL, NULL),
(193, 'add', '16', '83', '150', '200', '36.43', '7286', '', '1523874195', NULL, NULL),
(194, 'add', '4', '9', '151', '300', '43.98', '13193.999999999998', '', '1523874895', NULL, NULL),
(195, 'add', '4', '10', '152', '250', '13.59', '3397.5', '', '1523875175', NULL, NULL),
(196, 'add', '4', '9', '153', '300', '19.99', '5996.999999999999', '', '1523875678', NULL, NULL),
(197, 'add', '4', '10', '154', '200', '16.29', '3258', '', '1523875974', NULL, NULL),
(198, 'add', '4', '11', '155', '50', '18.99', '949.4999999999999', '', '1523876663', NULL, NULL),
(199, 'add', '4', '11', '156', '10', '4530.00', '45300', '', '1523876990', NULL, NULL),
(200, 'add', '4', '37', '157', '100', '51.00', '5100', '', '1523877983', NULL, NULL),
(201, 'add', '4', '37', '158', '120', '158.99', '19078.800000000003', '', '1523878181', NULL, NULL),
(202, 'destroy', '4', '37', '158', '1', NULL, '0', 'sale', '1524471441', '29', NULL),
(203, 'add', '16', '87', '159', '500', '4500.00', '2250000', '', '1524784507', NULL, NULL),
(204, 'add', '16', '85', '160', '500', '1000.00', '0', '', '1524784752', NULL, NULL),
(205, 'add', '16', '88', '161', '500', '800.00', '0', '', '1524784866', NULL, NULL),
(206, 'add', '16', '86', '162', '500', '900.00', '450000', '', '1524845655', NULL, NULL),
(207, 'add', '16', '81', '166', '12', '125.00', '1500', '', '1524911159', NULL, '{"type":"vendor","id":"9"}'),
(208, 'add', '16', '81', '168', '5', '1190.00', '5950', '', '1524984498', NULL, '{"type":"vendor","id":"10"}'),
(209, 'add', '16', '83', '169', '5', '800.00', '4000', '', '1524984850', NULL, '{"type":"vendor","id":"10"}'),
(210, 'add', '16', '81', '170', '25', '1195.00', '29875', '', '1524984898', NULL, '{"type":"vendor","id":"10"}'),
(211, 'add', '16', '81', '171', '25', '1190.00', '29750', '', '1524985905', NULL, '{"type":"vendor","id":"10"}'),
(212, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1525079391', '38', NULL),
(213, 'destroy', '1', '3', '125', '1', NULL, '0', 'sale', '1526119327', '39', NULL),
(214, 'destroy', '1', '5', '2', '2', NULL, '0', 'sale', '1527064445', '44', NULL),
(215, 'destroy', '16', '85', '160', '1', NULL, '0', 'sale', '1528016175', '45', NULL),
(216, 'add', '4', '11', '172', '50', '40.00', '2000', '', '1528779289', NULL, NULL),
(217, 'add', '4', '11', '173', '50', '62.00', '3100', '', '1528779815', NULL, NULL),
(218, 'add', '4', '11', '174', '50', '30.00', '1500', '', '1528780266', NULL, NULL),
(219, 'add', '5', '89', '175', '100', '68.00', '6800', '', '1528785307', NULL, NULL),
(220, 'add', '5', '89', '176', '120', '12.00', '1440', '', '1528785411', NULL, NULL),
(221, 'add', '5', '89', '177', '45', '10.00', '450', '', '1528785743', NULL, NULL),
(222, 'add', '5', '89', '178', '60', '74.80', '4488', '', '1528786064', NULL, NULL),
(223, 'add', '16', '88', '180', '10', '3500.00', '35000', '', '1528787255', NULL, NULL),
(224, 'destroy', '13', '74', '182', '1', NULL, '0', 'sale', '1529556702', '56', NULL),
(225, 'destroy', '16', '81', '144', '1', NULL, '0', 'sale', '1530089371', '62', NULL),
(226, 'add', '4', '8', '183', '25', '180.00', '4500', '', '1530166850', NULL, '{"type":"vendor","id":"16"}'),
(227, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530166970', '63', NULL),
(228, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530174197', '64', NULL),
(229, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1530174441', '65', NULL),
(230, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530176426', '67', NULL),
(231, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(232, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(233, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(234, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530177969', '69', NULL),
(235, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530177969', '69', NULL),
(236, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530178305', '70', NULL),
(237, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530178305', '70', NULL),
(238, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530178457', '71', NULL),
(239, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530178457', '71', NULL),
(240, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(241, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(242, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(243, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530178827', '73', NULL),
(244, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530179102', '74', NULL),
(245, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530179102', '74', NULL),
(246, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530180438', '75', NULL),
(247, 'destroy', '0', '0', '163', '1', NULL, '0', 'sale', '1530181282', '76', NULL),
(248, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181282', '76', NULL),
(249, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181401', '77', NULL),
(250, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181508', '78', NULL),
(251, 'destroy', '4', '8', '183', '2', NULL, '0', 'sale', '1530182283', '79', NULL),
(252, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530182577', '80', NULL),
(253, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530182891', '81', NULL),
(254, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530183079', '82', NULL),
(255, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530421619', '83', NULL),
(256, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530422129', '84', NULL),
(257, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530422501', '85', NULL),
(258, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530423355', '86', NULL),
(259, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1530423355', '86', NULL),
(260, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530423911', '87', NULL),
(261, 'add', '21', '80', '184', '500', '189.99', '94995', '', '1530427971', NULL, '{"type":"vendor","id":"16"}'),
(262, 'add', '21', '80', '185', '50', '40.99', '2049.5', '', '1530428579', NULL, '{"type":"vendor","id":"16"}'),
(263, 'add', '16', '83', '186', '300', '249.00', '74700', '', '1530428936', NULL, '{"type":"vendor","id":"16"}'),
(264, 'add', '16', '86', '187', '50', '1049.00', '52450', '', '1530429328', NULL, '{"type":"vendor","id":"16"}'),
(265, 'add', '5', '90', '188', '100', '154.99', '15499', '', '1530429645', NULL, '{"type":"vendor","id":"16"}'),
(266, 'add', '5', '90', '189', '500', '38.98', '19490', '', '1530431736', NULL, '{"type":"vendor","id":"16"}'),
(267, 'add', '5', '30', '190', '500', '99.84', '49920', '', '1530434062', NULL, '{"type":"vendor","id":"16"}'),
(268, 'add', '5', '28', '191', '100', '56.99', '5699', '', '1530434437', NULL, '{"type":"vendor","id":"16"}'),
(269, 'add', '21', '80', '192', '200', '385.00', '77000', '', '1530435423', NULL, '{"type":"vendor","id":"12"}'),
(270, 'add', '21', '80', '193', '300', '80.00', '24000', '', '1530435832', NULL, '{"type":"vendor","id":"12"}'),
(271, 'add', '21', '80', '194', '50', '199.99', '9999.5', '', '1530436258', NULL, '{"type":"vendor","id":"12"}'),
(272, 'add', '21', '80', '195', '400', '39.99', '15996', '', '1530436731', NULL, '{"type":"vendor","id":"12"}'),
(273, 'add', '21', '80', '196', '100', '230.97', '23097', '', '1530437119', NULL, '{"type":"vendor","id":"12"}'),
(274, 'add', '4', '40', '197', '200', '23.99', '4798', '', '1530437673', NULL, '{"type":"vendor","id":"1"}'),
(275, 'add', '4', '35', '198', '500', '34.99', '17495', '', '1530438201', NULL, '{"type":"vendor","id":"1"}'),
(276, 'add', '4', '36', '199', '140', '34.98', '4897.2', '', '1530438511', NULL, '{"type":"vendor","id":"1"}'),
(277, 'add', '4', '11', '200', '600', '12.97', '7782', '', '1530439263', NULL, '{"type":"vendor","id":"1"}'),
(278, 'add', '16', '87', '201', '50', '1049.00', '52450', '', '1530440570', NULL, '{"type":"vendor","id":"7"}'),
(279, 'add', '16', '87', '202', '300', '28.99', '8697', '', '1530441002', NULL, '{"type":"vendor","id":"7"}'),
(280, 'add', '16', '86', '203', '100', '49.34', '4934', '', '1530441771', NULL, '{"type":"vendor","id":"7"}'),
(281, 'add', '16', '81', '204', '200', '249.99', '49998', '', '1530442235', NULL, '{"type":"vendor","id":"7"}'),
(282, 'add', '16', '81', '205', '500', '49.99', '24995', '', '1530442480', NULL, '{"type":"vendor","id":"7"}'),
(283, 'add', '16', '85', '206', '100', '399.00', '39900', '', '1530444192', NULL, '{"type":"vendor","id":"16"}'),
(284, 'add', '17', '93', '207', '500', '39.00', '19500', '', '1530509804', NULL, '{"type":"vendor","id":"9"}'),
(285, 'add', '17', '78', '208', '500', '40.00', '20000', '', '1530511789', NULL, '{"type":"vendor","id":"9"}'),
(286, 'add', '17', '91', '209', '400', '28.50', '11400', '', '1530512382', NULL, '{"type":"vendor","id":"9"}'),
(287, 'add', '17', '96', '210', '100', '75.00', '7500', '', '1530512762', NULL, '{"type":"vendor","id":"9"}'),
(288, 'add', '17', '93', '211', '500', '28.00', '14000', '', '1530513333', NULL, '{"type":"vendor","id":"9"}'),
(289, 'add', '1', '1', '212', '50', '63750.00', '3187500', '', '1530514188', NULL, '{"type":"vendor","id":"10"}'),
(290, 'add', '1', '1', '213', '150', '39190.00', '5878500', '', '1530514879', NULL, '{"type":"vendor","id":"10"}'),
(291, 'add', '1', '2', '214', '1000', '535500.00', '535500000', '', '1530515357', NULL, '{"type":"vendor","id":"10"}'),
(292, 'add', '1', '1', '215', '100', '15350.00', '1535000', '', '1530523300', NULL, '{"type":"vendor","id":"10"}'),
(293, 'add', '1', '1', '216', '100', '44100.00', '4410000', '', '1530523869', NULL, '{"type":"vendor","id":"10"}'),
(294, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530605298', '89', NULL),
(295, 'destroy', '16', '88', '180', '6', NULL, '0', 'sale', '1530703163', '90', NULL),
(296, 'destroy', '5', '89', '175', '95', NULL, '0', 'sale', '1530708356', '91', NULL),
(297, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530764395', '93', NULL),
(298, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530764928', '94', NULL),
(299, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530765068', '95', NULL),
(300, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530765242', '96', NULL),
(301, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530779882', '99', NULL),
(302, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1530780344', '100', NULL),
(303, 'destroy', '5', '30', '190', '1', NULL, '0', 'sale', '1530780876', '103', NULL),
(304, 'destroy', '0', '0', '122', '1', NULL, '0', 'sale', '1530781627', '104', NULL),
(305, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531038537', '107', NULL),
(306, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531038756', '108', NULL),
(307, 'destroy', '1', '2', '214', '1', NULL, '0', 'sale', '1531629840', '134', NULL),
(308, 'destroy', '4', '11', '173', '1', NULL, '0', 'sale', '1531633208', '142', NULL),
(309, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531633208', '142', NULL),
(310, 'destroy', '16', '81', '142', '1', NULL, '0', 'sale', '1531633431', '147', NULL),
(311, 'destroy', '16', '86', '162', '1', NULL, '0', 'sale', '1531633712', '148', NULL),
(335, 'add', '27', '114', '220', '50', '23.00', '1150', '', '1555864081', NULL, '{"type":"vendor","id":"19"}'),
(336, 'add', '28', '115', '221', '50', '1450.00', '72500', '', '1555956893', NULL, '{"type":"vendor","id":"20"}'),
(337, 'destroy', '28', '115', '221', '5', NULL, '0', 'sale', '1555957205', '184', NULL),
(338, 'destroy', '28', '115', '221', '8', NULL, '0', 'sale', '1555965864', '185', NULL),
(339, 'add', '29', '116', '222', '20000', '4500000.00', '90000000000', '', '1555968620', NULL, '{"type":"vendor","id":"21"}'),
(340, 'destroy', '29', '116', '222', '5', NULL, '0', 'sale', '1555968752', '186', NULL),
(341, 'add', '30', '117', '223', '10', '18000.00', '180000', '', '1555969797', NULL, '{"type":"vendor","id":"22"}'),
(342, 'destroy', '30', '117', '223', '3', NULL, '0', 'sale', '1555970342', '187', NULL),
(343, 'destroy', '28', '115', '221', '5', NULL, '0', 'sale', '1555972974', '188', NULL),
(344, 'destroy', '30', '117', '223', '5', NULL, '0', 'sale', '1556050067', '189', NULL),
(345, 'destroy', '29', '116', '222', '2', NULL, '0', 'sale', '1556050453', '190', NULL),
(346, 'add', '28', '119', '224', '500', '950000.00', '475000000', '', '1556068503', NULL, NULL),
(347, 'destroy', '28', '119', '224', '3', NULL, '0', 'sale', '1556068643', '191', NULL),
(348, 'destroy', '30', '117', '223', '1', NULL, '0', 'sale', '1556069044', '192', NULL),
(349, 'destroy', '28', '119', '224', '1', NULL, '0', 'sale', '1556070243', '193', NULL),
(350, 'add', '28', '119', '225', '50000', '4500.00', '225000000', '', '1556071572', NULL, '{"type":"vendor","id":"21"}'),
(351, 'destroy', '28', '119', '225', '5', NULL, '0', 'sale', '1556071659', '194', NULL),
(352, 'destroy', '28', '119', '225', '8', NULL, '8', '', '1556071690', NULL, NULL),
(353, 'destroy', '28', '119', '225', '5', NULL, '0', 'sale', '1556071830', '195', NULL),
(354, 'destroy', '30', '117', '223', '1', NULL, '0', 'sale', '1556072169', '196', NULL),
(355, 'add', '28', '119', '225', '50', '4500.00', '225000', 'ok', '1556072620', NULL, '{"type":"vendor","id":"21"}'),
(356, 'destroy', '28', '119', '225', '2', NULL, '0', 'sale', '1556084366', '197', NULL),
(357, 'add', '28', '115', '221', '40', '1450.00', '58000', '', '1556086040', NULL, '{"type":"vendor","id":"20"}'),
(358, 'destroy', '28', '115', '221', '13', NULL, '0', 'sale', '1556086183', '198', NULL),
(359, 'destroy', '28', '115', '221', '1', NULL, '0', 'sale', '1559271383', '199', NULL),
(360, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1559271456', '200', NULL),
(361, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1559272145', '201', NULL),
(362, 'destroy', '28', '115', '221', '1', NULL, '0', 'sale', '1559272361', '202', NULL),
(363, 'destroy', '28', '119', '224', '1', NULL, '0', 'sale', '1559272418', '203', NULL),
(364, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1575581464', '204', NULL),
(365, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1575581770', '205', NULL),
(366, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1575583388', '206', NULL),
(367, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1575583694', '207', NULL),
(368, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1576091562', '208', NULL),
(369, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1576091868', '209', NULL),
(370, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1576598129', '210', NULL),
(371, 'destroy', '28', '119', '224', '1', NULL, '0', 'sale', '1577097574', '211', NULL),
(372, 'destroy', '28', '119', '224', '1', NULL, '0', 'sale', '1577097880', '212', NULL),
(373, 'destroy', '28', '119', '224', '1', NULL, '0', 'sale', '1577098301', '213', NULL),
(374, 'destroy', '28', '119', '224', '1', NULL, '0', 'sale', '1577098418', '214', NULL),
(375, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1577098492', '215', NULL),
(376, 'destroy', '28', '119', '224', '1', NULL, '0', 'sale', '1577098607', '216', NULL),
(377, 'destroy', '28', '119', '224', '1', NULL, '0', 'sale', '1577098725', '217', NULL),
(378, 'destroy', '28', '119', '225', '1', NULL, '0', 'sale', '1577098798', '218', NULL),
(379, 'add', '33', '121', '226', '10', '1200.00', '12000', '', '1577099371', NULL, NULL),
(380, 'add', '28', '119', '227', '13', '400.00', '5200', '', '1604392045', NULL, NULL),
(381, 'add', '28', '119', '228', '100', '4000.00', '400000', '', '1604763800', NULL, '{"type":"vendor","id":"30"}'),
(382, 'add', '28', '115', '229', '10000', '100.00', '1000000', '', '1604766069', NULL, '{"type":"vendor","id":"31"}'),
(383, 'add', '29', '116', '230', '20000', '70.00', '1400000', '', '1604773125', NULL, '{"type":"vendor","id":"32"}');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(600) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `email`) VALUES
(1, 'akibtanjim@gmail.com'),
(2, 'lashik7@gmail.com'),
(3, 'lashik7@gmaill.com'),
(4, 'lashik7@gmhaill.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` longtext,
  `category` longtext,
  `brand` varchar(2000) NOT NULL DEFAULT '[]',
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category`, `brand`, `digital`, `banner`) VALUES
(117, 'Furniture', '30', '[]', NULL, 'sub_category_117.jpg'),
(115, 'Steel', '28', '[]', NULL, 'sub_category_115.jpg'),
(116, 'waterpipes', '29', '[]', NULL, 'sub_category_116.jpg'),
(118, 'Wall Art', '30', '[]', NULL, 'sub_category_118.jpg'),
(119, 'Basic structure', '28', '[]', NULL, 'sub_category_119.'),
(120, 'Ceiling fan', '31', '[]', NULL, 'sub_category_120.'),
(121, 'small tanker', '33', '[]', NULL, 'sub_category_121.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `time`, `from_where`, `to_where`, `subject`, `view_status`) VALUES
(7, '1555970913', '{"type":"user","id":"26"}', '{"type":"admin","id":""}', 'Issue', 'ok'),
(8, '1555972086', '{"type":"user","id":"25"}', '{"type":"admin","id":""}', 'arrival of shipment', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE `ticket_message` (
  `ticket_message_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `message` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_message`
--

INSERT INTO `ticket_message` (`ticket_message_id`, `time`, `from_where`, `to_where`, `ticket_id`, `subject`, `view_status`, `message`) VALUES
(1, '1475585594', '{"type":"user","id":"3"}', '{"type":"admin","id":""}', 1, 'check', '{"user_show":"ok","admin_show":"ok"}', 'check ticket'),
(2, '1476180432', '{"type":"user","id":"3"}', '{"type":"admin","id":""}', 1, 'check', '{"user_show":"ok","admin_show":"ok"}', 'example ticket'),
(3, '1476180432', '{"type":"user","id":"3"}', '{"type":"admin","id":""}', 1, 'check', '{"user_show":"ok","admin_show":"ok"}', 'example ticket'),
(4, '1526117716', '{"type":"user","id":"11"}', '{"type":"admin","id":""}', 2, 'Demo', '{"user_show":"ok","admin_show":"ok"}', 'dummy text'),
(5, '1526117806', '{"type":"admin","id":""}', '{"type":"user","id":"11"}', 2, 'Demo', '{"user_show":"ok","admin_show":"ok"}', 'DEmo'),
(6, '1528018344', '{"type":"user","id":"13"}', '{"type":"admin","id":""}', 3, 'demo', '{"user_show":"ok","admin_show":"ok"}', 'demo'),
(7, '1528095351', '{"type":"user","id":"7"}', '{"type":"admin","id":""}', 4, 'Aut omnis quas in vero rerum vitae omnis accusantium', '{"user_show":"ok","admin_show":"ok"}', 'Excepturi aut repellendus Incidunt quia atque voluptatum quasi nihil dolore nihil anim corporis ut nulla delectus'),
(8, '1528095981', '{"type":"user","id":"7"}', '{"type":"admin","id":""}', 4, 'Aut omnis quas in vero rerum vitae omnis accusantium', '{"user_show":"ok","admin_show":"ok"}', 'hi'),
(9, '1528095997', '{"type":"user","id":"7"}', '{"type":"admin","id":""}', 4, 'Aut omnis quas in vero rerum vitae omnis accusantium', '{"user_show":"ok","admin_show":"ok"}', 'hjkhkj'),
(10, '1530002748', '{"type":"user","id":"17"}', '{"type":"admin","id":""}', 5, 'Demo', '{"user_show":"ok","admin_show":"ok"}', 'Demo text'),
(11, '1531634451', '{"type":"user","id":"23"}', '{"type":"admin","id":""}', 6, 'qwert', '{"user_show":"ok","admin_show":"ok"}', 'qwertyuiop'),
(12, '1531634471', '{"type":"admin","id":""}', '{"type":"user","id":"23"}', 6, 'qwert', '{"user_show":"ok","admin_show":"ok"}', 'dfghjkl;'''),
(13, '1555970913', '{"type":"user","id":"26"}', '{"type":"admin","id":""}', 7, 'Issue', '{"user_show":"ok","admin_show":"ok"}', 'abcd'),
(14, '1555972086', '{"type":"user","id":"25"}', '{"type":"admin","id":""}', 8, 'arrival of shipment', '{"user_show":"ok","admin_show":"ok"}', 'shipment did not arrive');

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '78'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '78'),
(9, 'home_bottom_logo', '78'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'right'),
(14, 'footer_color', 'orange-1'),
(15, 'header_color', 'orange-1'),
(19, 'parallax_blog_title', 'contractor'),
(16, 'font', 'Roboto'),
(17, 'parallax_vendor_title', 'OUR SUPPLIERS'),
(18, 'home_page_style', '1'),
(20, 'no_of_featured_products', '6'),
(21, 'no_of_vendor', '10'),
(22, 'no_of_brands', '12'),
(23, 'brand_show', 'no'),
(24, 'featured_show', 'ok'),
(25, 'vandors_show', 'ok'),
(26, 'blog_show', 'ok'),
(27, 'parallax_search_title', 'Search Products'),
(28, 'no_of_blog', '6'),
(29, 'featured_product_box_style', '1'),
(30, 'no_of_todays_deal', '6'),
(31, 'special_products_show', 'ok'),
(32, 'category_slides', 'ok'),
(33, 'home_categories', '[]'),
(34, 'category_product_box_style', '2'),
(35, 'top_slide_categories', '["1","4","5","16","17","18","23","12","13","21"]'),
(36, 'email_theme_style', 'style_1'),
(37, 'email_theme_style_2', '<div style="margin: 0px 10px; background: #45a9b9; padding: 30px;"><div style="margin: 0px auto; background: #eff7ff; padding: 30px;">[[body]]</div></div>'),
(38, 'email_theme_style_3', '<div style="margin: 0px 10px; background: repeating-linear-gradient(-45deg, red 0, red 1em, #fffdeb 0, #fffdeb 2em, #58a 0, #58a 3em, #fffdeb 0, #fffdeb 4em); padding: 15px;"><div style="margin: 0px auto; background: #fffdeb; padding: 30px;">[[body]]</div></div>'),
(39, 'email_theme_style_4', '<div style="margin: 0px 10px; background: #f7f7f7; padding: 30px;"><div style="padding: 30px; background: #76cece; border-radius:5px 5px 0px 0px; box-shadow: 0px -1px 7px #616565; display:block;"><div style="background-image:url([[logo]]); background-repeat:no-repeat; height:80px; width:auto; display:block;"></div></div><div style="margin: 0px auto; background: rgba(255, 255, 255, 0.91); padding: 30px; box-shadow: 0px 3px 7px #616565; border-radius:0px 0px 5x 5px;">[[body]]</div></div>'),
(40, 'product_bundle_show', 'no'),
(41, 'no_of_product_bundle', '6'),
(42, 'product_bundle_box_style', '2'),
(43, 'customer_product_show', 'ok'),
(44, 'no_of_customer_product', '6'),
(45, 'header_homepage_status', 'yes'),
(46, 'header_all_categories_status', 'yes'),
(47, 'header_featured_products_status', 'yes'),
(48, 'header_todays_deal_status', 'no'),
(49, 'header_bundled_product_status', 'no'),
(50, 'header_classifieds_status', 'no'),
(51, 'header_latest_products_status', 'yes'),
(52, 'header_all_brands_status', 'no'),
(53, 'header_all_vendors_status', 'yes'),
(54, 'header_blogs_status', 'yes'),
(55, 'header_store_locator_status', 'yes'),
(56, 'header_contact_status', 'yes'),
(57, 'header_more_status', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` longtext,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext,
  `phone` longtext,
  `address1` longtext,
  `address2` longtext,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext,
  `fb_id` longtext,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext,
  `creation_date` longtext,
  `google_plus` longtext,
  `skype` longtext,
  `facebook` longtext,
  `wishlist` longtext,
  `last_login` varchar(50) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'default',
  `user_type_till` varchar(200) DEFAULT NULL,
  `left_product_type` varchar(5000) NOT NULL DEFAULT '[]',
  `downloads` varchar(10000) NOT NULL DEFAULT '[]',
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `wallet` varchar(1000) DEFAULT NULL,
  `product_upload` int(11) NOT NULL,
  `package_info` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`, `downloads`, `country`, `state`, `wallet`, `product_upload`, `package_info`) VALUES
(24, 'Ahmed', 'Mujtaba', 'ahmed.mj23@gmail.com', '03136889414', 'Lorem Ipsum Lorem Ipsum', 'Lorem Ipsum Lorem Ipsum', 'islamabad', '44000', '', 'be394de80143733f6ca2465cba1e15f66387d7f7', NULL, NULL, NULL, '1555955059', NULL, NULL, NULL, '["220"]', '1556069025', 'default', NULL, '[]', '[]', 'pakistan', 'Capital', NULL, 100, '[]'),
(27, 'Ahmed', 'Mujtaba', 'ahmed.mj23@outlook.com', '1234567', 'pakistan', '', 'isb', '44000', '', '8a6b3c5e6ba4da6ebfdf08b068ca74f7d99ed161', NULL, NULL, NULL, '1556070805', NULL, NULL, NULL, '[]', '1556086342', 'default', NULL, '[]', '[]', 'Pakistan', 'Islamabad Capital Territory', NULL, 100, '[]'),
(29, 'trey', 'klg', 'trevisklg@yahoo.com', '3196937990', '54 florida ct', '', 'cedar rapids', '52404', '', '4ebe72f0162fb02c86c5cf1e528d4f17819fab50', NULL, NULL, NULL, '1579909146', NULL, NULL, NULL, '[]', NULL, 'default', NULL, '[]', '[]', 'usa', 'iowa', NULL, 100, '[]'),
(28, 'hamid', 'babar', 'hamidbabar3@gmail.com', '03005503066', 'asdas', 'asda', 'Rawalpindi', '62000', '', '302df4bf8b3d5fd6a65665b94984762fe215270c', NULL, NULL, NULL, '1568484375', NULL, NULL, NULL, '["224","223"]', '1574099627', 'default', NULL, '[]', '[]', 'Pakistan', 'punjab', NULL, 100, '[]'),
(30, 'haroon', 'bangash', 'abnga@gmail.com', '0233847716', 'myu g10', '', 'islamabad', '44000', '', 'a4e0a6fa0b52722075aff7e2875e27cc636fb5ca', NULL, NULL, NULL, '1583317301', NULL, NULL, NULL, '[]', NULL, 'default', NULL, '[]', '[]', 'pakistan', 'islamabad', NULL, 100, '[]'),
(31, 'admin', 'haaroon', 'ahsgdhjgdA@gmail.com', '193198329', 'kjashjksadh', 'sakjhdkjdsah', 'kjahsdjahs', '44000', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1583317933', NULL, NULL, NULL, '[]', NULL, 'default', NULL, '[]', '[]', 'asdasdasd', 'kjasjhda', NULL, 100, '[]'),
(32, 'abu bakr', 'Ifham', 'ajax9694@gmail.com', '3121588220', 'abc', '', 'Wah Cantt', '47040', '', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', NULL, NULL, NULL, '1604687606', NULL, NULL, NULL, '[]', '1604687688', 'default', NULL, '[]', '[]', 'Pakistan', 'Punjab', NULL, 100, '[]'),
(33, 'alif', 'alif', 'alif@email.com', '12345678', 'abc', '', 'Wah Cantt', '47040', '', '7f97f61315fad93ddfd0368c7387e6006a014588', NULL, NULL, NULL, '1604852607', NULL, NULL, NULL, '[]', '1604852637', 'default', NULL, '[]', '[]', 'Pakistan', 'Punjab', NULL, 100, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext,
  `address2` longtext,
  `status` varchar(10) DEFAULT NULL,
  `membership` varchar(50) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `approve_timestamp` int(20) DEFAULT NULL,
  `member_timestamp` int(20) DEFAULT NULL,
  `member_expire_timestamp` int(11) DEFAULT NULL,
  `details` longtext,
  `last_login` int(20) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pinterest` varchar(300) DEFAULT NULL,
  `stripe_details` varchar(500) DEFAULT NULL,
  `paypal_email` varchar(200) DEFAULT NULL,
  `preferred_payment` varchar(100) DEFAULT NULL,
  `cash_set` varchar(20) DEFAULT NULL,
  `stripe_set` varchar(20) DEFAULT NULL,
  `paypal_set` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `keywords` longtext,
  `description` longtext,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)',
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `c2_set` varchar(20) DEFAULT NULL,
  `c2_user` longtext,
  `c2_secret` longtext,
  `vp_set` varchar(50) DEFAULT NULL,
  `vp_merchant_id` varchar(500) DEFAULT NULL,
  `pum_set` varchar(20) NOT NULL,
  `pum_merchant_key` varchar(500) NOT NULL,
  `pum_merchant_salt` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `name`, `email`, `password`, `company`, `display_name`, `address1`, `address2`, `status`, `membership`, `create_timestamp`, `approve_timestamp`, `member_timestamp`, `member_expire_timestamp`, `details`, `last_login`, `facebook`, `skype`, `google_plus`, `twitter`, `youtube`, `pinterest`, `stripe_details`, `paypal_email`, `preferred_payment`, `cash_set`, `stripe_set`, `paypal_set`, `phone`, `keywords`, `description`, `lat_lang`, `country`, `city`, `zip`, `state`, `c2_set`, `c2_user`, `c2_secret`, `vp_set`, `vp_merchant_id`, `pum_set`, `pum_merchant_key`, `pum_merchant_salt`) VALUES
(19, 'Ahmed', 'ahmed.mj23@gmail.com', '3656ba533ae3961f87f47e87c2bb48e88253619a', 'OEM', 'Mujtaba', 'pakistan', 'haidd', 'approved', '0', 1555863061, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '(-34.4008951522662, 150.65168184661866)', 'Pakistan', 'Islamabad', '44000', 'Islamabad Capital Territory', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(20, 'Ahmed', 'ahmed.mj23@outlook.com', '8a6b3c5e6ba4da6ebfdf08b068ca74f7d99ed161', 'Kaka ji', 'Mujtaba', 'Lorem Ipsum Lorem Ipsum', 'Lorem Ipsum Lorem Ipsum', 'approved', '0', 1555955461, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ok', NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Islamabad', '44000', 'Capital', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(21, 'sardar rehan', 'sardarrehan007@gmail.com', 'c9a6538eb3be7f54c02c4ad88f3e07ce6458c27a', '', 'sardarrehan1', 'house no 500 street no 27 margalla town islamabad', 'Beverly center blue area', 'approved', '0', 1555966059, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"publishable":"","secret":""}', '', NULL, 'ok', NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Islamabad', '44000', 'Federal', NULL, '', '', NULL, '', '', '', ''),
(23, 'Hashir', 'najeebworkmail@gmail.com', '1b6f9acd18d207bcd851292901809f000957d0c5', 'Pakistan Engineering Services', 'Ahmed', 'lorem epsim', 'lorem epsim', 'approved', '0', 1556084611, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Islamabad', '44000', 'Islamabad', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(24, 'haider', 'haiderijaz1595@gmail.com', '743bee17c137318b6c0322994773abd40b2311af', 'Pakistan Engineering Services', 'ijaz', 'lorem epsim', 'lorem epsim', 'approved', '0', 1556086276, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Islamabad', '44000', 'Islamabad', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(25, 'hamid', 'hamidbabar3@gmail.com', '302df4bf8b3d5fd6a65665b94984762fe215270c', 'Comsats', 'Hamid', 'saasf', 'asfafs', 'pending', '0', 1568484759, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Rawalpindi', '62000', 'Punjab', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(26, 'salman', 'admin@email.com', '8a6b3c5e6ba4da6ebfdf08b068ca74f7d99ed161', 'farooqi construction ', 'salmanbuilder', 'alipur frash', '', 'approved', '0', 1577100398, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', 'pakistan', 'islamabad', '44000', 'islamabad', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(27, 'trey', 'tresorklg@live.com', '8a24f0b25a20340b88b755453ff19f7c6f58a04e', 'luchaa', 'limo', '54 florida ct', '', 'pending', '0', 1579908933, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', 'USA', 'Cedar rapids', '52404', 'Iowa', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(28, 'unus', 'najeebwork@gmail.com', '41e9302b30bd54aee50340a4ea1d264fcc4b484c', 'xyz', 'unus', 'abc', '', 'approved', '0', 1604687795, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Wah Cantt', '47040', 'Punjab', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(29, 'hannan', 'hannan@gmail.com', 'a191a48d268e1911647448e129447bcae30fc942', 'xyz', 'hannan', 'abc', '', 'approved', '0', 1604688231, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Wah Cantt', '47040', 'Punjab', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(30, 'nabeel', 'nabeel@gmail.com', 'faec670ce75fe79cae1fa899617818031b1f201c', 'xyz', 'nabeel', 'abc', '', 'approved', '0', 1604762001, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ok', NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Wah Cantt', '47040', 'Punjab', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(31, 'Haris', 'haris@gmail.com', 'e096037e755a727d784665f2171f0876af2569a6', 'xyz', 'Haris', 'abc', '', 'approved', '0', 1604764686, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Wah Cantt', '47040', 'Punjab', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(32, 'Asil', 'asil@gmail.com', 'daa83ac5332dbd339cc534e1d5274cb2279c1950', 'xyz', 'Asil', 'abc', '', 'approved', '0', 1604768956, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"publishable":"","secret":""}', '', NULL, 'ok', NULL, NULL, NULL, NULL, NULL, '(0,0)', 'Pakistan', 'Wah Cantt', '47040', 'Punjab', NULL, '', '', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_invoice`
--

CREATE TABLE `vendor_invoice` (
  `vendor_invoice_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `payment_details` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_invoice`
--

INSERT INTO `vendor_invoice` (`vendor_invoice_id`, `vendor_id`, `amount`, `timestamp`, `status`, `method`, `payment_details`) VALUES
(2, 3, '324.9273', 1525579407, 'paid', 'cash', ''),
(3, 3, '5.6843418860808E-14', 1528263035, 'due', 'cash', ''),
(4, 3, '5.6843418860808E-14', 1528263055, 'paid', 'cash', ''),
(9, 3, '0', 1529559369, 'due', 'payUmoney', NULL),
(10, 3, '0', 1529559610, 'due', 'payUmoney', NULL),
(11, 3, '0', 1529559624, 'due', 'payUmoney', NULL),
(12, 3, '0', 1529559765, 'due', 'payUmoney', NULL),
(13, 3, '0', 1529559781, 'due', 'payUmoney', NULL),
(14, 3, '220', 1529560632, 'due', 'payUmoney', NULL),
(15, 3, '250', 1529560733, 'due', 'payUmoney', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_load`
--

CREATE TABLE `wallet_load` (
  `wallet_load_id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `amount` varchar(1000) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `status` longtext,
  `timestamp` varchar(100) DEFAULT NULL,
  `payment_details` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `bundle_stock`
--
ALTER TABLE `bundle_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `currency_settings`
--
ALTER TABLE `currency_settings`
  ADD PRIMARY KEY (`currency_settings_id`);

--
-- Indexes for table `customer_product`
--
ALTER TABLE `customer_product`
  ADD PRIMARY KEY (`customer_product_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `membership_payment`
--
ALTER TABLE `membership_payment`
  ADD PRIMARY KEY (`membership_payment_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `package_payment`
--
ALTER TABLE `package_payment`
  ADD PRIMARY KEY (`package_payment_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `slider_style`
--
ALTER TABLE `slider_style`
  ADD PRIMARY KEY (`slider_style_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slides_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`social_links_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`ticket_message_id`);

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
  ADD PRIMARY KEY (`ui_settings_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  ADD PRIMARY KEY (`vendor_invoice_id`);

--
-- Indexes for table `wallet_load`
--
ALTER TABLE `wallet_load`
  ADD PRIMARY KEY (`wallet_load_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT for table `bundle_stock`
--
ALTER TABLE `bundle_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currency_settings`
--
ALTER TABLE `currency_settings`
  MODIFY `currency_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `customer_product`
--
ALTER TABLE `customer_product`
  MODIFY `customer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1552;
--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
  MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `membership_payment`
--
ALTER TABLE `membership_payment`
  MODIFY `membership_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `package_payment`
--
ALTER TABLE `package_payment`
  MODIFY `package_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slider_style`
--
ALTER TABLE `slider_style`
  MODIFY `slider_style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slides_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `social_links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
  MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  MODIFY `vendor_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wallet_load`
--
ALTER TABLE `wallet_load`
  MODIFY `wallet_load_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
