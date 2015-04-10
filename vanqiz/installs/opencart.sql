-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2014 at 04:16 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oc_opentcart2.0.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'nmc2010', 'NGuyen Manh', '', 'ha noi', '', 'hn', '11111', 206, 3147, ''),
(2, 2, 'nmc2010', 'nmc210', 'asd', 'aaa', 'ssss', 'ASDASD', 'admin', 221, 3512, ''),
(3, 3, 'nmc2010', 'nmc210', 'asd', 'aaa', '', 'ASDASD', 'admin', 204, 3095, ''),
(4, 1, 'nmc2010', 'nmc210', '', 'aaa', '', 'ASDASD', 'admin', 222, 3513, ''),
(5, 2, 'abc', 'abc', '', 'abc', 'abc', 'abc', 'abc', 222, 3530, ''),
(6, 3, 'tester', 'test', 'asd', 'aaa', 'ssss', 'hn', 'admin', 221, 3507, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, 'W6AOSpmBQlSHOUw0p5RFg9fJSnq36bho5eRROZnHSPxAIogSKpAyY475Rdndw6sw', '', '', 'XabrCfgkNRKR3VHGiwk5IMSFHqbaezvRrtdfs9RbAqa5iZlSyRDau1em0RHuEFqJ3aXqQ05opci6E1816JZRP4jhcOqchtdZ7dJOrEbPMmhUdqMx6YmglUgy5jHh2tJC44yJ9qzOmIaGu3THzBsI0HVdRSbAFHrCssVcKoFj4CKP3cSykAqH8RDffXmzK3HaZ3uIOAOSETxv4ZJ2NXgd7zn5l0qCHBZK9cBLJtPYG8Soyt2TsHPNzuFrkqmm7hkS', 1, '2014-12-03 11:35:07', '2014-12-03 11:35:07'),
(2, 'NgYfQvEYBHBAdN7sEHFVxbJPGQVQ9LYu3SghxNb7J9X27PCmpFoDPE6fLTHzZZ4V', '', '', 'acg5LCp3KOkHUp94JaFIkFmIHuwusBST08YrcOwND1qtjcyjeIZkxdKI6iTC3AipH2Izlxv4x1osqnglsOka2Okgnuss6WrYSJvWnum8bOeEqKGAzqon0W2QMS9v2FseUyQPgEWZ68NyhFixxgkNq2DYoOJMqLl7PzngSw7OUFx5RX27ouYKYvF38hL9WpWxBO2K60bZkkQZ3DEeXUFe8BBwKNFK4gABqBALdSx8scmRYFJY8SoMaoyBOR1sVugm', 1, '2014-10-22 08:44:23', '2014-10-22 08:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(9, 'Pav Banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(99, 9, 'http://www.pavothemes.com/', 'catalog/carousel/3-logo_brand.jpg', 1),
(100, 9, 'http://www.pavothemes.com/', 'catalog/carousel/4-logo_brand.jpg', 2),
(101, 9, 'http://www.pavothemes.com/', 'catalog/carousel/5-logo_brand.jpg', 3),
(102, 9, 'http://www.pavothemes.com/', 'catalog/carousel/6-logo_brand.jpg', 4),
(103, 9, 'http://www.pavothemes.com/', 'catalog/carousel/7-logo_brand.jpg', 5),
(104, 9, 'http://www.pavothemes.com/', 'catalog/carousel/8-logo_brand.jpg', 6),
(105, 9, 'http://www.pavothemes.com/', 'catalog/carousel/6-logo_brand.jpg', 7),
(106, 9, 'http://www.pavothemes.com/', 'catalog/carousel/4-logo_brand.jpg', 8),
(107, 9, 'http://www.pavothemes.com/', 'catalog/carousel/5-logo_brand.jpg', 9),
(108, 9, 'http://www.pavothemes.com/', 'catalog/carousel/3-logo_brand.jpg', 10),
(109, 9, 'http://www.pavothemes.com/', 'catalog/carousel/7-logo_brand.jpg', 11),
(110, 9, 'http://www.pavothemes.com/', 'catalog/carousel/6-logo_brand.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(99, 1, 9, 'Banner 1'),
(99, 2, 9, 'Banner 1'),
(100, 1, 9, 'Banner 2'),
(100, 2, 9, 'Banner 2'),
(101, 1, 9, 'Banner 3'),
(101, 2, 9, 'Banner 3'),
(102, 1, 9, 'Banner 4'),
(102, 2, 9, 'Banner 4'),
(103, 1, 9, 'Banner 5'),
(103, 2, 9, 'Banner 5'),
(104, 1, 9, 'Banner 6'),
(104, 2, 9, 'Banner 6'),
(105, 1, 9, 'Banner 7'),
(105, 2, 9, 'Banner 7'),
(106, 1, 9, 'Banner 8'),
(106, 2, 9, 'Banner 8'),
(107, 1, 9, 'Banner 9'),
(107, 2, 9, 'Banner 9'),
(108, 1, 9, 'Banner 10'),
(108, 2, 9, 'Banner 10'),
(109, 1, 9, 'Banne 11'),
(109, 2, 9, 'Banne 11'),
(110, 1, 9, 'Banne 12'),
(110, 2, 9, 'Banner 12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/category_default.jpg', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2014-12-01 16:58:15'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2014-11-26 09:53:39'),
(20, 'catalog/category_default.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2014-12-01 16:56:53'),
(24, 'catalog/category_default.jpg', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2014-12-01 17:00:13'),
(18, 'catalog/category_default.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2014-12-09 14:36:01'),
(17, 'catalog/category_default.jpg', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2014-12-01 16:59:20'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2014-11-26 09:42:35'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2014-11-26 09:53:46'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2014-11-26 09:42:05'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2014-11-26 09:42:43'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2014-11-26 09:42:52'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2014-11-26 09:43:00'),
(33, 'catalog/category_default.jpg', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2014-12-01 17:00:56'),
(34, 'catalog/category_default.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2014-12-01 16:56:45'),
(66, '', 34, 0, 1, 0, 1, '2014-11-05 08:50:20', '2014-11-26 09:50:51'),
(65, '', 34, 0, 1, 0, 1, '2014-11-05 08:49:36', '2014-11-26 09:50:45'),
(64, '', 34, 0, 1, 0, 1, '2014-11-05 08:48:55', '2014-11-26 09:50:35'),
(63, '', 34, 0, 1, 0, 1, '2014-11-05 08:48:16', '2014-11-26 09:50:58'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2014-11-26 09:55:16'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2014-11-26 09:54:43'),
(57, 'catalog/category_default.jpg', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2014-12-01 16:58:57'),
(59, '', 20, 0, 1, 0, 1, '2014-11-05 08:33:24', '2014-11-26 09:53:55'),
(60, '', 20, 0, 1, 0, 1, '2014-11-05 08:34:17', '2014-11-26 09:53:31'),
(61, '', 18, 0, 1, 0, 1, '2014-11-05 08:40:01', '2014-11-26 09:54:35'),
(62, '', 18, 0, 1, 0, 1, '2014-11-05 08:42:28', '2014-11-26 09:55:08'),
(67, 'catalog/category_default.jpg', 0, 0, 1, 0, 1, '2014-12-02 11:49:33', '2014-12-02 11:49:33'),
(68, 'catalog/category_default.jpg', 67, 0, 1, 0, 1, '2014-12-02 11:51:35', '2014-12-02 11:52:19'),
(69, 'catalog/category_default.jpg', 67, 0, 1, 0, 1, '2014-12-02 11:53:31', '2014-12-02 11:53:31'),
(70, 'catalog/category_default.jpg', 67, 0, 1, 0, 1, '2014-12-02 11:56:53', '2014-12-02 11:56:53'),
(71, 'catalog/category_default.jpg', 67, 0, 1, 0, 1, '2014-12-02 11:57:56', '2014-12-02 11:57:56'),
(72, 'catalog/category_default.jpg', 67, 0, 1, 0, 1, '2014-12-02 11:58:41', '2014-12-02 11:58:41'),
(73, 'catalog/category_default.jpg', 0, 0, 1, 0, 1, '2014-12-02 12:00:41', '2014-12-02 12:00:41'),
(74, 'catalog/category_default.jpg', 73, 0, 1, 0, 1, '2014-12-02 12:01:21', '2014-12-02 12:01:21'),
(75, 'catalog/category_default.jpg', 73, 0, 1, 0, 1, '2014-12-02 12:01:56', '2014-12-02 12:01:56'),
(76, 'catalog/category_default.jpg', 73, 0, 1, 0, 1, '2014-12-02 12:02:33', '2014-12-02 12:02:33'),
(77, 'catalog/category_default.jpg', 73, 0, 1, 0, 1, '2014-12-02 13:42:29', '2014-12-02 13:42:29'),
(78, 'catalog/category_default.jpg', 0, 0, 1, 0, 1, '2014-12-02 13:44:37', '2014-12-12 08:47:45'),
(79, 'catalog/category_default.jpg', 78, 0, 1, 0, 1, '2014-12-02 13:45:35', '2014-12-02 13:45:35'),
(80, 'catalog/category_default.jpg', 78, 0, 1, 0, 1, '2014-12-02 13:46:12', '2014-12-02 13:46:12'),
(81, '', 78, 0, 1, 0, 1, '2014-12-02 13:47:12', '2014-12-02 13:47:12'),
(82, '', 78, 0, 1, 0, 1, '2014-12-02 13:47:56', '2014-12-02 13:47:56'),
(83, 'catalog/category_default.jpg', 0, 0, 1, 0, 1, '2014-12-02 13:48:38', '2014-12-02 13:50:33'),
(84, '', 83, 0, 1, 0, 1, '2014-12-02 13:50:40', '2014-12-02 13:50:40'),
(85, 'catalog/category_default.jpg', 83, 0, 1, 0, 1, '2014-12-02 13:51:37', '2014-12-02 13:51:37'),
(86, 'catalog/category_default.jpg', 83, 0, 1, 0, 1, '2014-12-02 13:52:14', '2014-12-02 13:52:14'),
(87, 'catalog/category_default.jpg', 83, 0, 1, 0, 1, '2014-12-02 13:52:59', '2014-12-02 13:52:59'),
(88, 'catalog/category_default.jpg', 0, 0, 1, 0, 1, '2014-12-02 13:54:30', '2014-12-02 17:04:09'),
(89, 'catalog/category_default.jpg', 88, 0, 1, 0, 1, '2014-12-02 13:55:03', '2014-12-02 13:55:03'),
(90, '', 88, 0, 1, 0, 1, '2014-12-02 13:55:50', '2014-12-02 13:55:50'),
(91, '', 88, 0, 1, 0, 1, '2014-12-02 13:56:21', '2014-12-02 13:56:21'),
(92, 'catalog/category_default.jpg', 88, 0, 1, 0, 1, '2014-12-02 13:57:57', '2014-12-02 13:57:57'),
(93, 'catalog/category_default.jpg', 88, 0, 1, 0, 1, '2014-12-02 13:58:46', '2014-12-02 13:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(27, 2, 'Fridge Freezers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fridge Freezers', '', ''),
(26, 2, 'LED TVs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'LED TVs', '', ''),
(20, 1, 'Homeware', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;', 'Homeware', 'Example of category description', ''),
(64, 2, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(63, 2, 'Washing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Washing', '', ''),
(18, 2, 'Mobile &amp; Notebooks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mobile &amp; Notebooks', '', ''),
(17, 1, 'Software', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;/p&gt;', 'Software', '', ''),
(57, 1, 'Tablets', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;/p&gt;', 'Tablets', '', ''),
(24, 1, 'Phones &amp; PDAs', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;/p&gt;', 'Phones &amp; PDAs', '', ''),
(45, 2, 'Tablets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tablets', '', ''),
(46, 2, 'Iphone', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Iphone', '', ''),
(65, 2, 'LED TVs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'LED TVs', '', ''),
(66, 2, 'Others', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Others', '', ''),
(59, 2, 'Toaster', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Toaster', '', ''),
(60, 2, 'Blender', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Blender', '', ''),
(61, 2, 'Ipad', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Ipad', '', ''),
(62, 2, 'Samsung', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Samsung', '', ''),
(34, 1, 'Electronics', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;', 'Electronics', '', ''),
(62, 1, 'Samsung', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Samsung', '', ''),
(61, 1, 'Ipad', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Ipad', '', ''),
(60, 1, 'Blender', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'blender', '', ''),
(59, 1, 'Toaster', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Toaster', '', ''),
(66, 1, 'Others', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Others', '', ''),
(65, 1, 'LED TVs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'LED TVs', '', ''),
(46, 1, 'Iphone', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Iphone', '', ''),
(18, 1, 'Mobile', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;', 'Mobile &amp; Notebooks', '', ''),
(45, 1, 'Tablets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tablets', '', ''),
(63, 1, 'Washing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Washing', '', ''),
(64, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(20, 2, 'Homeware', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Homeware', '', ''),
(28, 1, 'Monitors', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Monitors', '', ''),
(32, 1, 'Web Cameras', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Web Cameras', '', ''),
(31, 1, 'Scanners', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Scanners', '', ''),
(30, 1, 'Printers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Printers', '', ''),
(29, 1, 'Mice and Trackballs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mice and Trackballs', '', ''),
(27, 1, 'Fridge Freezers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fridge Freezers', '', ''),
(26, 1, 'LED TVs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'LED TVs', '', ''),
(25, 1, 'Computers', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;/p&gt;', 'Computers', '', ''),
(34, 2, 'Electronics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Electronics', '', ''),
(33, 1, 'Cameras', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;/p&gt;', 'Cameras', '', ''),
(29, 2, 'Mice and Trackballs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mice and Trackballs', '', ''),
(28, 2, 'Monitors', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Monitors', '', ''),
(30, 2, 'Printers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Printers', '', ''),
(31, 2, 'Scanners', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Scanners', '', ''),
(32, 2, 'Web Cameras', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Web Cameras', '', ''),
(25, 2, 'Computers', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;/p&gt;', 'Computers', '', ''),
(57, 2, 'Tablets', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;/p&gt;', 'Tablets', '', ''),
(17, 2, 'Software', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/category_default.jpg&quot;&gt;&lt;/p&gt;', 'Software', '', ''),
(24, 2, 'Phones &amp; PDAs', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;/p&gt;', 'Phones &amp; PDAs', '', ''),
(33, 2, 'Cameras', '&lt;p&gt;Sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec\r\n sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus\r\n a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio \r\ntincidunt auctor a ornare odio.test&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/category_default.jpg&quot;&gt;&lt;/p&gt;', 'Cameras', '', ''),
(67, 1, 'Cosmetics', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Cosmetics', '', ''),
(67, 2, 'Cosmetics', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Cosmetics', '', ''),
(68, 1, 'Bath &amp; Body', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Bath &amp; Body', '', ''),
(68, 2, 'Bath &amp; Body', '&lt;p&gt;Lorem ipsum dolor sit amet, consec&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/category_default.jpg&quot;&gt;tetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Bath &amp; Body', '', ''),
(69, 1, 'Eye Shadow', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Eye Shadow', '', ''),
(69, 2, 'Eye Shadow', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Eye Shadow', '', ''),
(70, 1, 'Hair color', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Hair color', '', ''),
(70, 2, 'Hair color', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Hair color', '', ''),
(71, 1, 'Styling', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Styling', '', ''),
(71, 2, 'Styling', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Styling', '', ''),
(72, 1, 'Shampoo', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Shampoo', '', ''),
(72, 2, 'Shampoo', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Shampoo', '', ''),
(73, 1, 'Fashion', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Fashion', '', ''),
(73, 2, 'Fashion', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Fashion', '', ''),
(74, 1, 'Beauty', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Beauty', '', ''),
(74, 2, 'Beauty', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Beauty', '', ''),
(75, 1, 'Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Clothing', '', ''),
(75, 2, 'Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Clothing', '', ''),
(76, 1, 'Dresses', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Dresses', '', ''),
(76, 2, 'Dresses', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Dresses', '', ''),
(77, 1, 'Sport', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Sport', '', ''),
(77, 2, 'Sport', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Sport', '', ''),
(78, 2, 'Food', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Food', '', ''),
(78, 1, 'Food', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit.&lt;/p&gt;', 'Food', '', ''),
(79, 1, 'Nutrition', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Nutrition', '', ''),
(79, 2, 'Nutrition', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Nutrition', '', ''),
(80, 1, 'Snack Foods', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Snack Foods', '', ''),
(80, 2, 'Snack Foods', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Snack Foods', '', ''),
(81, 1, 'Healthy eating', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Healthy eating', '', ''),
(81, 2, 'Healthy eating', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Healthy eating', '', ''),
(82, 1, 'Snack Cookies', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Wafer Snack Cookies', '', ''),
(82, 2, 'Wafer Snack Cookies', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Wafer Snack Cookies', '', ''),
(83, 1, 'Infant toys', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Infant toys', '', ''),
(83, 2, 'Infant toys', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Infant toys', '', ''),
(84, 1, 'Baby Bath', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Baby Bath', '', ''),
(84, 2, 'Baby Bath', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Baby Bath', '', ''),
(85, 1, 'Baby Rattles', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Baby Rattles', '', ''),
(85, 2, 'Baby Rattles', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Baby Rattles', '', ''),
(86, 1, 'Musical Toys', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Musical Toys', '', ''),
(86, 2, 'Musical Toys', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Musical Toys', '', ''),
(87, 1, 'Toddler Toys', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Toddler Toys', '', ''),
(87, 2, 'Toddler Toys', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Toddler Toys', '', ''),
(88, 1, 'Women shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Women shoes', '', ''),
(88, 2, 'Women shoes', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Women shoes', '', ''),
(89, 1, 'Boat Shoe', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Boat Shoe', '', ''),
(89, 2, 'Boat Shoe', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Boat Shoe', '', ''),
(90, 1, 'Boots', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Boots', '', ''),
(90, 2, 'Boots', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Boots', '', ''),
(91, 1, 'Foot Rasps', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Foot Rasps', '', ''),
(91, 2, 'Foot Rasps', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Foot Rasps', '', ''),
(92, 1, 'Running Shoe', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Running Shoe', '', ''),
(92, 2, 'Running Shoe', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Running Shoe', '', ''),
(93, 1, 'Spa Slippers', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. &lt;br&gt;&lt;/p&gt;', 'Spa Slippers', '', ''),
(93, 2, 'Spa Slippers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Spa Slippers', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(66, 66, 1),
(66, 34, 0),
(65, 65, 1),
(65, 34, 0),
(64, 64, 1),
(64, 34, 0),
(63, 63, 1),
(63, 34, 0),
(57, 57, 0),
(59, 20, 0),
(59, 59, 1),
(60, 20, 0),
(60, 60, 1),
(61, 18, 0),
(61, 61, 1),
(62, 18, 0),
(62, 62, 1),
(67, 67, 0),
(68, 68, 1),
(68, 67, 0),
(69, 67, 0),
(69, 69, 1),
(70, 67, 0),
(70, 70, 1),
(71, 67, 0),
(71, 71, 1),
(72, 67, 0),
(72, 72, 1),
(73, 73, 0),
(74, 73, 0),
(74, 74, 1),
(75, 73, 0),
(75, 75, 1),
(76, 73, 0),
(76, 76, 1),
(77, 73, 0),
(77, 77, 1),
(78, 78, 0),
(79, 78, 0),
(79, 79, 1),
(80, 78, 0),
(80, 80, 1),
(81, 78, 0),
(81, 81, 1),
(82, 78, 0),
(82, 82, 1),
(84, 83, 0),
(83, 83, 0),
(84, 84, 1),
(85, 83, 0),
(85, 85, 1),
(86, 83, 0),
(86, 86, 1),
(87, 83, 0),
(87, 87, 1),
(88, 88, 0),
(89, 88, 0),
(89, 89, 1),
(90, 88, 0),
(90, 90, 1),
(91, 88, 0),
(91, 91, 1),
(92, 88, 0),
(92, 92, 1),
(93, 88, 0),
(93, 93, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(25, 0, 0),
(20, 0, 0),
(27, 0, 0),
(26, 0, 0),
(59, 0, 0),
(60, 0, 0),
(18, 0, 0),
(46, 0, 0),
(45, 0, 0),
(61, 0, 0),
(62, 0, 0),
(34, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(33, 0, 0),
(29, 0, 0),
(28, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0),
(17, 0, 0),
(57, 0, 0),
(24, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(45, 0),
(46, 0),
(57, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.63690001, 1, '2014-12-12 09:57:19'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2014-12-13 03:18:06'),
(3, 'Euro', 'EUR', '', '€', '2', 0.80479997, 1, '2014-12-12 09:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(1, 1, 0, 'nmc2010', 'nmc210', 'nmc2010@gmail.com', '1213123', '', '97a11213b7f931d7a5a86477a35778d827eec7d8', '1f5d13c3e', 'a:2:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ4O30=";i:1;s:44:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjIxMjc7fQ==";i:1;}', 'a:1:{i:0;i:43;}', 0, 4, '', '::1', 1, 1, 0, '', '2014-12-10 17:39:26'),
(2, 1, 0, 'abc', 'abc', 'abc@gmail.com', 'abc', '', '251d561d3d78049378a2649609437370de88d596', '86464f87f', 'a:6:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEzNjt9";i:2;s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=";i:2;s:44:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjIxNDg7fQ==";i:1;s:84:"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO3M6Njoib3B0aW9uIjthOjE6e2k6MjI2O3M6MjoiMTUiO319";i:1000;s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEzODt9";i:1;s:44:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjIxMTc7fQ==";i:1;}', 'a:8:{i:0;i:140;i:1;i:45;i:2;i:41;i:3;i:48;i:4;i:2118;i:5;i:42;i:6;i:2120;i:7;i:2117;}', 0, 5, '', '192.168.1.27', 1, 1, 0, '', '2014-12-11 14:30:22'),
(3, 1, 0, 'tester', 'test', 'nmc20120@gmail.com', '1213123', '12312313', 'e287dfc2cb7f9ebc50326cbf1754452a6721a88a', 'b2fce33d6', 'a:0:{}', 'a:0:{}', 0, 6, '', '::1', 1, 1, 0, '', '2014-12-12 08:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 0, 'order_guest', 'a:2:{s:4:"name";s:11:"nmc2010 nmc";s:8:"order_id";i:1;}', '::1', '2014-12-08 08:33:35'),
(2, 0, 'order_guest', 'a:2:{s:4:"name";s:11:"nmc2010 nmc";s:8:"order_id";i:2;}', '::1', '2014-12-08 17:28:34'),
(3, 0, 'order_guest', 'a:2:{s:4:"name";s:17:"Cuong NGuyen Manh";s:8:"order_id";i:3;}', '::1', '2014-12-08 17:34:04'),
(4, 1, 'register', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:14:"nmc2010 nmc210";}', '::1', '2014-12-10 17:39:28'),
(5, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:14:"nmc2010 nmc210";}', '::1', '2014-12-11 10:36:05'),
(6, 2, 'register', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:7:"abc abc";}', '192.168.1.27', '2014-12-11 14:30:25'),
(7, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:7:"abc abc";}', '192.168.1.27', '2014-12-11 14:37:02'),
(8, 3, 'register', 'a:2:{s:11:"customer_id";s:1:"3";s:4:"name";s:11:"tester test";}', '::1', '2014-12-12 08:53:25'),
(9, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:14:"nmc2010 nmc210";}', '::1', '2014-12-12 08:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2014-12-10 17:39:29'),
(2, 2, '192.168.1.27', '2014-12-11 14:30:26'),
(3, 3, '::1', '2014-12-12 08:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'nmc2010', '::1', 2, '2014-12-12 02:56:20', '2014-12-12 02:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=508 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(506, 'module', 'featured'),
(507, 'module', 'latest'),
(477, 'module', 'themecontrol'),
(470, 'module', 'information'),
(503, 'module', 'amazon_button'),
(504, 'module', 'banner'),
(505, 'module', 'bestseller'),
(460, 'module', 'account'),
(479, 'module', 'pavhomebuilder'),
(482, 'module', 'pavbannerbuilder'),
(486, 'module', 'pavreassurance'),
(483, 'module', 'pavmegamenu'),
(497, 'module', 'pavverticalmenu'),
(485, 'module', 'pavsliderlayer'),
(488, 'module', 'pavnewsletter'),
(489, 'module', 'pavblog'),
(490, 'module', 'pavblogcategory'),
(491, 'module', 'pavblogcomment'),
(492, 'module', 'pavbloglatest'),
(493, 'module', 'pavsocial'),
(494, 'module', 'pavmap'),
(496, 'module', 'pavcarousel'),
(498, 'module', 'pavautosearch'),
(501, 'module', 'pavcategorytabs'),
(500, 'module', 'pavproducttabs'),
(502, 'module', 'pavverticalcategorytabs');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(7, 1, 'Typo', '&lt;div id=&quot;banner&quot; class=&quot;page-header&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;h1&gt;Cosmo&lt;/h1&gt; &lt;p class=&quot;lead&quot;&gt;An ode to Metro&lt;/p&gt; &lt;/div&gt; &lt;div style=&quot;padding: 15px 15px 0 15px;&quot; class=&quot;col-lg-6&quot;&gt; &lt;div class=&quot;well sponsor&quot;&gt; &lt;a target=&quot;_blank&quot; rel=&quot;nofollow&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot;&gt; &lt;span style=&quot;float: left; margin-right: 15px;&quot;&gt; &lt;img onload=&quot;_gaq.push([''_trackEvent'', ''banner'', ''impression'', ''treehouse'']);&quot; src=&quot;http://srv.buysellads.com/direct/image/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; height=&quot;135&quot; width=&quot;175&quot;&gt; &lt;/span&gt; &lt;/a&gt; &lt;a target=&quot;_blank&quot; rel=&quot;nofollow&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot;&gt; &lt;h4 style=&quot;margin-bottom: 0.4em;&quot;&gt;Treehouse&lt;/h4&gt; &lt;div class=&quot;clearfix&quot;&gt; &lt;p&gt;Learn Web Design, Coding, Mobile App Development &amp;amp; More.&lt;/p&gt; &lt;p&gt;Start Learning for Free!&lt;/p&gt; &lt;/div&gt; &lt;/a&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Navbar ================================================== --&gt; &lt;div class=&quot;bs-docs-section clearfix&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;navbar&quot;&gt;Navbar&lt;/h1&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;navbar navbar-default&quot;&gt; &lt;div class=&quot;navbar-header&quot;&gt; &lt;button data-target=&quot;.navbar-responsive-collapse&quot; data-toggle=&quot;collapse&quot; class=&quot;navbar-toggle&quot; type=&quot;button&quot;&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;/button&gt; &lt;a href=&quot;#&quot; class=&quot;navbar-brand&quot;&gt;Brand&lt;/a&gt; &lt;/div&gt; &lt;div class=&quot;navbar-collapse collapse navbar-responsive-collapse&quot;&gt; &lt;ul class=&quot;nav navbar-nav&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Active&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot; href=&quot;#&quot;&gt;Dropdown &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;One more separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;  &lt;input placeholder=&quot;Search&quot; class=&quot;form-control col-lg-8&quot; type=&quot;text&quot;&gt;  &lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot; href=&quot;#&quot;&gt;Dropdown &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;navbar navbar-inverse&quot;&gt; &lt;div class=&quot;navbar-header&quot;&gt; &lt;button data-target=&quot;.navbar-inverse-collapse&quot; data-toggle=&quot;collapse&quot; class=&quot;navbar-toggle&quot; type=&quot;button&quot;&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;/button&gt; &lt;a href=&quot;#&quot; class=&quot;navbar-brand&quot;&gt;Brand&lt;/a&gt; &lt;/div&gt; &lt;div class=&quot;navbar-collapse collapse navbar-inverse-collapse&quot;&gt; &lt;ul class=&quot;nav navbar-nav&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Active&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot; href=&quot;#&quot;&gt;Dropdown &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;One more separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;  &lt;input placeholder=&quot;Search&quot; class=&quot;form-control col-lg-8&quot; type=&quot;text&quot;&gt;  &lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot; href=&quot;#&quot;&gt;Dropdown &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;&lt;!-- /example --&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Buttons ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h1 id=&quot;buttons&quot;&gt;Buttons&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;p class=&quot;bs-component&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt; &lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt; &lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt; &lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt; &lt;button class=&quot;btn btn-danger&quot; type=&quot;button&quot;&gt;Danger&lt;/button&gt; &lt;button class=&quot;btn btn-link&quot; type=&quot;button&quot;&gt;Link&lt;/button&gt; &lt;/p&gt; &lt;p class=&quot;bs-component&quot;&gt; &lt;button class=&quot;btn btn-default disabled&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt; &lt;button class=&quot;btn btn-primary disabled&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt; &lt;button class=&quot;btn btn-success disabled&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt; &lt;button class=&quot;btn btn-info disabled&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt; &lt;button class=&quot;btn btn-warning disabled&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt; &lt;button class=&quot;btn btn-danger disabled&quot; type=&quot;button&quot;&gt;Danger&lt;/button&gt; &lt;button class=&quot;btn btn-link disabled&quot; type=&quot;button&quot;&gt;Link&lt;/button&gt; &lt;/p&gt; &lt;div style=&quot;margin-bottom: 15px;&quot;&gt; &lt;div style=&quot;margin: 0;&quot; class=&quot;btn-toolbar bs-component&quot;&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-default dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-primary dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-success dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-info dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-warning dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;p class=&quot;bs-component&quot;&gt; &lt;button class=&quot;btn btn-primary btn-lg&quot; type=&quot;button&quot;&gt;Large button&lt;/button&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Default button&lt;/button&gt; &lt;button class=&quot;btn btn-primary btn-sm&quot; type=&quot;button&quot;&gt;Small button&lt;/button&gt; &lt;button class=&quot;btn btn-primary btn-xs&quot; type=&quot;button&quot;&gt;Mini button&lt;/button&gt; &lt;/p&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;p class=&quot;bs-component&quot;&gt; &lt;button class=&quot;btn btn-default btn-lg btn-block&quot; type=&quot;button&quot;&gt;Block level button&lt;/button&gt; &lt;/p&gt; &lt;div style=&quot;margin-bottom: 15px;&quot; class=&quot;bs-component&quot;&gt; &lt;div class=&quot;btn-group btn-group-justified&quot;&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Left&lt;/a&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Middle&lt;/a&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Right&lt;/a&gt; &lt;/div&gt; &lt;/div&gt; &lt;div style=&quot;margin-bottom: 15px;&quot; class=&quot;bs-component&quot;&gt; &lt;div class=&quot;btn-toolbar&quot;&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;1&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;2&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;3&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;4&lt;/button&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;5&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;6&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;7&lt;/button&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;8&lt;/button&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-default dropdown-toggle&quot; type=&quot;button&quot;&gt; Dropdown &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt; &lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;btn-group-vertical&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Typography ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;type&quot;&gt;Typography&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Headings --&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;h1&gt;Heading 1&lt;/h1&gt; &lt;h2&gt;Heading 2&lt;/h2&gt; &lt;h3&gt;Heading 3&lt;/h3&gt; &lt;h4&gt;Heading 4&lt;/h4&gt; &lt;h5&gt;Heading 5&lt;/h5&gt; &lt;h6&gt;Heading 6&lt;/h6&gt; &lt;p class=&quot;lead&quot;&gt;Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;h2&gt;Example body text&lt;/h2&gt; &lt;p&gt;Nullam quis risus eget &lt;a href=&quot;#&quot;&gt;urna mollis ornare&lt;/a&gt; vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.&lt;/p&gt; &lt;p&gt;&lt;small&gt;This line of text is meant to be treated as fine print.&lt;/small&gt;&lt;/p&gt; &lt;p&gt;The following snippet of text is &lt;strong&gt;rendered as bold text&lt;/strong&gt;.&lt;/p&gt; &lt;p&gt;The following snippet of text is &lt;em&gt;rendered as italicized text&lt;/em&gt;.&lt;/p&gt; &lt;p&gt;An abbreviation of the word attribute is &lt;abbr title=&quot;attribute&quot;&gt;attr&lt;/abbr&gt;.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;h2&gt;Emphasis classes&lt;/h2&gt; &lt;p class=&quot;text-muted&quot;&gt;Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.&lt;/p&gt; &lt;p class=&quot;text-primary&quot;&gt;Nullam id dolor id nibh ultricies vehicula ut id elit.&lt;/p&gt; &lt;p class=&quot;text-warning&quot;&gt;Etiam porta sem malesuada magna mollis euismod.&lt;/p&gt; &lt;p class=&quot;text-danger&quot;&gt;Donec ullamcorper nulla non metus auctor fringilla.&lt;/p&gt; &lt;p class=&quot;text-success&quot;&gt;Duis mollis, est non commodo luctus, nisi erat porttitor ligula.&lt;/p&gt; &lt;p class=&quot;text-info&quot;&gt;Maecenas sed diam eget risus varius blandit sit amet non magna.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Blockquotes --&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2 id=&quot;type-blockquotes&quot;&gt;Blockquotes&lt;/h2&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;blockquote&gt; &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt; &lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt; &lt;/blockquote&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;blockquote class=&quot;pull-right&quot;&gt; &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt; &lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt; &lt;/blockquote&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Tables ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;tables&quot;&gt;Tables&lt;/h1&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;table class=&quot;table table-striped table-hover &quot;&gt; &lt;thead&gt; &lt;tr&gt; &lt;th&gt;#&lt;/th&gt; &lt;th&gt;Column heading&lt;/th&gt; &lt;th&gt;Column heading&lt;/th&gt; &lt;th&gt;Column heading&lt;/th&gt; &lt;/tr&gt; &lt;/thead&gt; &lt;tbody&gt; &lt;tr&gt; &lt;td&gt;1&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;2&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;info&quot;&gt; &lt;td&gt;3&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;success&quot;&gt; &lt;td&gt;4&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;danger&quot;&gt; &lt;td&gt;5&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;warning&quot;&gt; &lt;td&gt;6&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;active&quot;&gt; &lt;td&gt;7&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;/tbody&gt; &lt;/table&gt; &lt;/div&gt;&lt;!-- /example --&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Forms ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;forms&quot;&gt;Forms&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;div class=&quot;well bs-component&quot;&gt;  &lt;fieldset&gt; &lt;legend&gt;Legend&lt;/legend&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputEmail&quot;&gt;Email&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;input placeholder=&quot;Email&quot; id=&quot;inputEmail&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputPassword&quot;&gt;Password&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;input placeholder=&quot;Password&quot; id=&quot;inputPassword&quot; class=&quot;form-control&quot; type=&quot;password&quot;&gt; &lt;div class=&quot;checkbox&quot;&gt; &lt;label&gt; &lt;input type=&quot;checkbox&quot;&gt; Checkbox &lt;/label&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;textArea&quot;&gt;Textarea&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;textarea id=&quot;textArea&quot; rows=&quot;3&quot; class=&quot;form-control&quot;&gt;&lt;/textarea&gt; &lt;span class=&quot;help-block&quot;&gt;A longer block of help text that breaks onto a new line and may extend beyond one line.&lt;/span&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot;&gt;Radios&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;div class=&quot;radio&quot;&gt; &lt;label&gt; &lt;input checked=&quot;&quot; value=&quot;option1&quot; id=&quot;optionsRadios1&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot;&gt; Option one is this &lt;/label&gt; &lt;/div&gt; &lt;div class=&quot;radio&quot;&gt; &lt;label&gt; &lt;input value=&quot;option2&quot; id=&quot;optionsRadios2&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot;&gt; Option two can be something else &lt;/label&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;select&quot;&gt;Selects&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;select id=&quot;select&quot; class=&quot;form-control&quot;&gt; &lt;option&gt;1&lt;/option&gt; &lt;option&gt;2&lt;/option&gt; &lt;option&gt;3&lt;/option&gt; &lt;option&gt;4&lt;/option&gt; &lt;option&gt;5&lt;/option&gt; &lt;/select&gt; &lt;br&gt; &lt;select class=&quot;form-control&quot; multiple=&quot;&quot;&gt; &lt;option&gt;1&lt;/option&gt; &lt;option&gt;2&lt;/option&gt; &lt;option&gt;3&lt;/option&gt; &lt;option&gt;4&lt;/option&gt; &lt;option&gt;5&lt;/option&gt; &lt;/select&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;div class=&quot;col-lg-10 col-lg-offset-2&quot;&gt; &lt;button class=&quot;btn btn-default&quot;&gt;Cancel&lt;/button&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;submit&quot;&gt;Submit&lt;/button&gt; &lt;/div&gt; &lt;/div&gt; &lt;/fieldset&gt;  &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4 col-lg-offset-1&quot;&gt; &lt;form class=&quot;bs-component&quot;&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;focusedInput&quot; class=&quot;control-label&quot;&gt;Focused input&lt;/label&gt; &lt;input value=&quot;This is focused...&quot; id=&quot;focusedInput&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;disabledInput&quot; class=&quot;control-label&quot;&gt;Disabled input&lt;/label&gt; &lt;input disabled=&quot;&quot; placeholder=&quot;Disabled input here...&quot; id=&quot;disabledInput&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group has-warning&quot;&gt; &lt;label for=&quot;inputWarning&quot; class=&quot;control-label&quot;&gt;Input warning&lt;/label&gt; &lt;input id=&quot;inputWarning&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group has-error&quot;&gt; &lt;label for=&quot;inputError&quot; class=&quot;control-label&quot;&gt;Input error&lt;/label&gt; &lt;input id=&quot;inputError&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group has-success&quot;&gt; &lt;label for=&quot;inputSuccess&quot; class=&quot;control-label&quot;&gt;Input success&lt;/label&gt; &lt;input id=&quot;inputSuccess&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;inputLarge&quot; class=&quot;control-label&quot;&gt;Large input&lt;/label&gt; &lt;input id=&quot;inputLarge&quot; class=&quot;form-control input-lg&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;inputDefault&quot; class=&quot;control-label&quot;&gt;Default input&lt;/label&gt; &lt;input id=&quot;inputDefault&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;inputSmall&quot; class=&quot;control-label&quot;&gt;Small input&lt;/label&gt; &lt;input id=&quot;inputSmall&quot; class=&quot;form-control input-sm&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;control-label&quot;&gt;Input addons&lt;/label&gt; &lt;div class=&quot;input-group&quot;&gt; &lt;span class=&quot;input-group-addon&quot;&gt;$&lt;/span&gt; &lt;input class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;span class=&quot;input-group-btn&quot;&gt; &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;Button&lt;/button&gt; &lt;/span&gt; &lt;/div&gt; &lt;/div&gt; &lt;/form&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Navs ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;nav&quot;&gt;Navs&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;nav-tabs&quot;&gt;Tabs&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul style=&quot;margin-bottom: 15px;&quot; class=&quot;nav nav-tabs&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#home&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#profile&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a&gt;Disabled&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a href=&quot;#&quot; data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot;&gt; Dropdown &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt; &lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#dropdown1&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#dropdown2&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;div class=&quot;tab-content&quot; id=&quot;myTabContent&quot;&gt; &lt;div id=&quot;home&quot; class=&quot;tab-pane fade active in&quot;&gt; &lt;p&gt;Raw denim you probably haven''t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.&lt;/p&gt; &lt;/div&gt; &lt;div id=&quot;profile&quot; class=&quot;tab-pane fade&quot;&gt; &lt;p&gt;Food truck fixie locavore, accusamus mcsweeney''s marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.&lt;/p&gt; &lt;/div&gt; &lt;div id=&quot;dropdown1&quot; class=&quot;tab-pane fade&quot;&gt; &lt;p&gt;Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney''s organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.&lt;/p&gt; &lt;/div&gt; &lt;div id=&quot;dropdown2&quot; class=&quot;tab-pane fade&quot;&gt; &lt;p&gt;Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;nav-pills&quot;&gt;Pills&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;nav nav-pills&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a href=&quot;#&quot; data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot;&gt; Dropdown &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt; &lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;br&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul style=&quot;max-width: 300px;&quot; class=&quot;nav nav-pills nav-stacked&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a href=&quot;#&quot; data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot;&gt; Dropdown &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt; &lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;nav-breadcrumbs&quot;&gt;Breadcrumbs&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;breadcrumb&quot;&gt; &lt;li class=&quot;active&quot;&gt;Home&lt;/li&gt; &lt;/ul&gt; &lt;ul class=&quot;breadcrumb&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;Library&lt;/li&gt; &lt;/ul&gt; &lt;ul style=&quot;margin-bottom: 5px;&quot; class=&quot;breadcrumb&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Library&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;Data&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;pagination&quot;&gt;Pagination&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;pagination&quot;&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;5&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;ul class=&quot;pagination pagination-lg&quot;&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;ul class=&quot;pagination pagination-sm&quot;&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;5&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;pager&quot;&gt;Pager&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;pager&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Previous&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Next&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;ul class=&quot;pager&quot;&gt; &lt;li class=&quot;previous disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;← Older&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;next&quot;&gt;&lt;a href=&quot;#&quot;&gt;Newer →&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Indicators ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;indicators&quot;&gt;Indicators&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2&gt;Alerts&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;alert alert-dismissable alert-warning&quot;&gt; &lt;button data-dismiss=&quot;alert&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;h4&gt;Warning!&lt;/h4&gt; &lt;p&gt;Best check yo self, you''re not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;vel scelerisque nisl consectetur et&lt;/a&gt;.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;alert alert-dismissable alert-danger&quot;&gt; &lt;button data-dismiss=&quot;alert&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;strong&gt;Oh snap!&lt;/strong&gt; &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;Change a few things up&lt;/a&gt; and try submitting again. &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;alert alert-dismissable alert-success&quot;&gt; &lt;button data-dismiss=&quot;alert&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;strong&gt;Well done!&lt;/strong&gt; You successfully read &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;this important alert message&lt;/a&gt;. &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;alert alert-dismissable alert-info&quot;&gt; &lt;button data-dismiss=&quot;alert&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;strong&gt;Heads up!&lt;/strong&gt; This &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;alert needs your attention&lt;/a&gt;, but it''s not super important. &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2&gt;Labels&lt;/h2&gt; &lt;div style=&quot;margin-bottom: 40px;&quot; class=&quot;bs-component&quot;&gt; &lt;span class=&quot;label label-default&quot;&gt;Default&lt;/span&gt; &lt;span class=&quot;label label-primary&quot;&gt;Primary&lt;/span&gt; &lt;span class=&quot;label label-success&quot;&gt;Success&lt;/span&gt; &lt;span class=&quot;label label-warning&quot;&gt;Warning&lt;/span&gt; &lt;span class=&quot;label label-danger&quot;&gt;Danger&lt;/span&gt; &lt;span class=&quot;label label-info&quot;&gt;Info&lt;/span&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2&gt;Badges&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;nav nav-pills&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home &lt;span class=&quot;badge&quot;&gt;42&lt;/span&gt;&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile &lt;span class=&quot;badge&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Messages &lt;span class=&quot;badge&quot;&gt;3&lt;/span&gt;&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Progress bars ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;progress&quot;&gt;Progress bars&lt;/h1&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-basic&quot;&gt;Basic&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 60%;&quot; class=&quot;progress-bar&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-alternatives&quot;&gt;Contextual alternatives&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 20%&quot; class=&quot;progress-bar progress-bar-info&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 40%&quot; class=&quot;progress-bar progress-bar-success&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 60%&quot; class=&quot;progress-bar progress-bar-warning&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 80%&quot; class=&quot;progress-bar progress-bar-danger&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-striped&quot;&gt;Striped&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress progress-striped&quot;&gt; &lt;div style=&quot;width: 20%&quot; class=&quot;progress-bar progress-bar-info&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress progress-striped&quot;&gt; &lt;div style=&quot;width: 40%&quot; class=&quot;progress-bar progress-bar-success&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress progress-striped&quot;&gt; &lt;div style=&quot;width: 60%&quot; class=&quot;progress-bar progress-bar-warning&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress progress-striped&quot;&gt; &lt;div style=&quot;width: 80%&quot; class=&quot;progress-bar progress-bar-danger&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-animated&quot;&gt;Animated&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress progress-striped active&quot;&gt; &lt;div style=&quot;width: 45%&quot; class=&quot;progress-bar&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-stacked&quot;&gt;Stacked&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 35%&quot; class=&quot;progress-bar progress-bar-success&quot;&gt;&lt;/div&gt; &lt;div style=&quot;width: 20%&quot; class=&quot;progress-bar progress-bar-warning&quot;&gt;&lt;/div&gt; &lt;div style=&quot;width: 10%&quot; class=&quot;progress-bar progress-bar-danger&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Containers ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;container&quot;&gt;Containers&lt;/h1&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;jumbotron&quot;&gt; &lt;h1&gt;Jumbotron&lt;/h1&gt; &lt;p&gt;This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.&lt;/p&gt; &lt;p&gt;&lt;a class=&quot;btn btn-primary btn-lg&quot;&gt;Learn more&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2&gt;List groups&lt;/h2&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;list-group&quot;&gt; &lt;li class=&quot;list-group-item&quot;&gt; &lt;span class=&quot;badge&quot;&gt;14&lt;/span&gt; Cras justo odio &lt;/li&gt; &lt;li class=&quot;list-group-item&quot;&gt; &lt;span class=&quot;badge&quot;&gt;2&lt;/span&gt; Dapibus ac facilisis in &lt;/li&gt; &lt;li class=&quot;list-group-item&quot;&gt; &lt;span class=&quot;badge&quot;&gt;1&lt;/span&gt; Morbi leo risus &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;list-group&quot;&gt; &lt;a class=&quot;list-group-item active&quot; href=&quot;#&quot;&gt; Cras justo odio &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Dapibus ac facilisis in &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Morbi leo risus &lt;/a&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;list-group&quot;&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt; &lt;h4 class=&quot;list-group-item-heading&quot;&gt;List group item heading&lt;/h4&gt; &lt;p class=&quot;list-group-item-text&quot;&gt;Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.&lt;/p&gt; &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt; &lt;h4 class=&quot;list-group-item-heading&quot;&gt;List group item heading&lt;/h4&gt; &lt;p class=&quot;list-group-item-text&quot;&gt;Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.&lt;/p&gt; &lt;/a&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2&gt;Panels&lt;/h2&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;panel panel-default&quot;&gt; &lt;div class=&quot;panel-body&quot;&gt; Basic panel &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-default&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt;Panel heading&lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-default&quot;&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;div class=&quot;panel-footer&quot;&gt;Panel footer&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;panel panel-primary&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel primary&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-success&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel success&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-warning&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel warning&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;panel panel-danger&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel danger&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-info&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel info&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2&gt;Wells&lt;/h2&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;well&quot;&gt; Look, I''m in a well! &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;well well-sm&quot;&gt; Look, I''m in a small well! &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;well well-lg&quot;&gt; Look, I''m in a large well! &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Dialogs ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;tables&quot;&gt;Dialogs&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;h2&gt;Modals&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;modal&quot;&gt; &lt;div class=&quot;modal-dialog&quot;&gt; &lt;div class=&quot;modal-content&quot;&gt; &lt;div class=&quot;modal-header&quot;&gt; &lt;button aria-hidden=&quot;true&quot; data-dismiss=&quot;modal&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;Ã—&lt;/button&gt; &lt;h4 class=&quot;modal-title&quot;&gt;Modal title&lt;/h4&gt; &lt;/div&gt; &lt;div class=&quot;modal-body&quot;&gt; &lt;p&gt;One fine bodyâ€¦&lt;/p&gt; &lt;/div&gt; &lt;div class=&quot;modal-footer&quot;&gt; &lt;button data-dismiss=&quot;modal&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Close&lt;/button&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Save changes&lt;/button&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;h2&gt;Popovers&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;button data-content=&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot; data-placement=&quot;left&quot; data-toggle=&quot;popover&quot; data-container=&quot;body&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Left&lt;/button&gt; &lt;button data-content=&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot; data-placement=&quot;top&quot; data-toggle=&quot;popover&quot; data-container=&quot;body&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Top&lt;/button&gt; &lt;button data-content=&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot; data-placement=&quot;bottom&quot; data-toggle=&quot;popover&quot; data-container=&quot;body&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Bottom&lt;/button&gt; &lt;button data-content=&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot; data-placement=&quot;right&quot; data-toggle=&quot;popover&quot; data-container=&quot;body&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Right&lt;/button&gt; &lt;/div&gt; &lt;h2&gt;Tooltips&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;button data-original-title=&quot;Tooltip on left&quot; title=&quot;&quot; data-placement=&quot;left&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Left&lt;/button&gt; &lt;button data-original-title=&quot;Tooltip on top&quot; title=&quot;&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Top&lt;/button&gt; &lt;button data-original-title=&quot;Tooltip on bottom&quot; title=&quot;&quot; data-placement=&quot;bottom&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Bottom&lt;/button&gt; &lt;button data-original-title=&quot;Tooltip on right&quot; title=&quot;&quot; data-placement=&quot;right&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Right&lt;/button&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;modal fade&quot; id=&quot;source-modal&quot;&gt; &lt;div class=&quot;modal-dialog modal-lg&quot;&gt; &lt;div class=&quot;modal-content&quot;&gt; &lt;div class=&quot;modal-header&quot;&gt; &lt;button aria-hidden=&quot;true&quot; data-dismiss=&quot;modal&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;h4 class=&quot;modal-title&quot;&gt;Source Code&lt;/h4&gt; &lt;/div&gt; &lt;div class=&quot;modal-body&quot;&gt; &lt;pre&gt;&lt;/pre&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;footer&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;ul class=&quot;list-unstyled&quot;&gt; &lt;li class=&quot;pull-right&quot;&gt;&lt;a href=&quot;#top&quot;&gt;Back to top&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a onclick=&quot;pageTracker._link(this.href); return false;&quot; href=&quot;http://news.bootswatch.com&quot;&gt;Blog&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;http://feeds.feedburner.com/bootswatch&quot;&gt;RSS&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;https://twitter.com/thomashpark&quot;&gt;Twitter&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;https://github.com/thomaspark/bootswatch/&quot;&gt;GitHub&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;../help/#api&quot;&gt;API&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;amp;hosted_button_id=F22JEM3Q78JC2&quot;&gt;Donate&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Made by &lt;a rel=&quot;nofollow&quot; href=&quot;http://thomaspark.me&quot;&gt;Thomas Park&lt;/a&gt;. Contact him at &lt;a href=&quot;mailto:thomas@bootswatch.com&quot;&gt;thomas@bootswatch.com&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Code released under the &lt;a href=&quot;https://github.com/thomaspark/bootswatch/blob/gh-pages/LICENSE&quot;&gt;MIT License&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Based on &lt;a rel=&quot;nofollow&quot; href=&quot;http://getbootstrap.com&quot;&gt;Bootstrap&lt;/a&gt;. Icons from &lt;a rel=&quot;nofollow&quot; href=&quot;http://fortawesome.github.io/Font-Awesome/&quot;&gt;Font Awesome&lt;/a&gt;. Web fonts from &lt;a rel=&quot;nofollow&quot; href=&quot;http://www.google.com/webfonts&quot;&gt;Google&lt;/a&gt;.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/footer&gt;', 'Typo', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(7, 2, 'Typo', '&lt;div id=&quot;banner&quot; class=&quot;page-header&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;h1&gt;Cosmo&lt;/h1&gt; &lt;p class=&quot;lead&quot;&gt;An ode to Metro&lt;/p&gt; &lt;/div&gt; &lt;div style=&quot;padding: 15px 15px 0 15px;&quot; class=&quot;col-lg-6&quot;&gt; &lt;div class=&quot;well sponsor&quot;&gt; &lt;a target=&quot;_blank&quot; rel=&quot;nofollow&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot;&gt; &lt;span style=&quot;float: left; margin-right: 15px;&quot;&gt; &lt;img onload=&quot;_gaq.push([''_trackEvent'', ''banner'', ''impression'', ''treehouse'']);&quot; src=&quot;http://srv.buysellads.com/direct/image/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; height=&quot;135&quot; width=&quot;175&quot;&gt; &lt;/span&gt; &lt;/a&gt; &lt;a target=&quot;_blank&quot; rel=&quot;nofollow&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot;&gt; &lt;h4 style=&quot;margin-bottom: 0.4em;&quot;&gt;Treehouse&lt;/h4&gt; &lt;div class=&quot;clearfix&quot;&gt; &lt;p&gt;Learn Web Design, Coding, Mobile App Development &amp;amp; More.&lt;/p&gt; &lt;p&gt;Start Learning for Free!&lt;/p&gt; &lt;/div&gt; &lt;/a&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Navbar ================================================== --&gt; &lt;div class=&quot;bs-docs-section clearfix&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;navbar&quot;&gt;Navbar&lt;/h1&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;navbar navbar-default&quot;&gt; &lt;div class=&quot;navbar-header&quot;&gt; &lt;button data-target=&quot;.navbar-responsive-collapse&quot; data-toggle=&quot;collapse&quot; class=&quot;navbar-toggle&quot; type=&quot;button&quot;&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;/button&gt; &lt;a href=&quot;#&quot; class=&quot;navbar-brand&quot;&gt;Brand&lt;/a&gt; &lt;/div&gt; &lt;div class=&quot;navbar-collapse collapse navbar-responsive-collapse&quot;&gt; &lt;ul class=&quot;nav navbar-nav&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Active&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot; href=&quot;#&quot;&gt;Dropdown &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;One more separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;  &lt;input placeholder=&quot;Search&quot; class=&quot;form-control col-lg-8&quot; type=&quot;text&quot;&gt;  &lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot; href=&quot;#&quot;&gt;Dropdown &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;navbar navbar-inverse&quot;&gt; &lt;div class=&quot;navbar-header&quot;&gt; &lt;button data-target=&quot;.navbar-inverse-collapse&quot; data-toggle=&quot;collapse&quot; class=&quot;navbar-toggle&quot; type=&quot;button&quot;&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;/button&gt; &lt;a href=&quot;#&quot; class=&quot;navbar-brand&quot;&gt;Brand&lt;/a&gt; &lt;/div&gt; &lt;div class=&quot;navbar-collapse collapse navbar-inverse-collapse&quot;&gt; &lt;ul class=&quot;nav navbar-nav&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Active&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot; href=&quot;#&quot;&gt;Dropdown &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;One more separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;  &lt;input placeholder=&quot;Search&quot; class=&quot;form-control col-lg-8&quot; type=&quot;text&quot;&gt;  &lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot; href=&quot;#&quot;&gt;Dropdown &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;&lt;!-- /example --&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Buttons ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h1 id=&quot;buttons&quot;&gt;Buttons&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;p class=&quot;bs-component&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt; &lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt; &lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt; &lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt; &lt;button class=&quot;btn btn-danger&quot; type=&quot;button&quot;&gt;Danger&lt;/button&gt; &lt;button class=&quot;btn btn-link&quot; type=&quot;button&quot;&gt;Link&lt;/button&gt; &lt;/p&gt; &lt;p class=&quot;bs-component&quot;&gt; &lt;button class=&quot;btn btn-default disabled&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt; &lt;button class=&quot;btn btn-primary disabled&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt; &lt;button class=&quot;btn btn-success disabled&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt; &lt;button class=&quot;btn btn-info disabled&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt; &lt;button class=&quot;btn btn-warning disabled&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt; &lt;button class=&quot;btn btn-danger disabled&quot; type=&quot;button&quot;&gt;Danger&lt;/button&gt; &lt;button class=&quot;btn btn-link disabled&quot; type=&quot;button&quot;&gt;Link&lt;/button&gt; &lt;/p&gt; &lt;div style=&quot;margin-bottom: 15px;&quot;&gt; &lt;div style=&quot;margin: 0;&quot; class=&quot;btn-toolbar bs-component&quot;&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-default dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-primary dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-success dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-info dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-warning dropdown-toggle&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;p class=&quot;bs-component&quot;&gt; &lt;button class=&quot;btn btn-primary btn-lg&quot; type=&quot;button&quot;&gt;Large button&lt;/button&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Default button&lt;/button&gt; &lt;button class=&quot;btn btn-primary btn-sm&quot; type=&quot;button&quot;&gt;Small button&lt;/button&gt; &lt;button class=&quot;btn btn-primary btn-xs&quot; type=&quot;button&quot;&gt;Mini button&lt;/button&gt; &lt;/p&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;p class=&quot;bs-component&quot;&gt; &lt;button class=&quot;btn btn-default btn-lg btn-block&quot; type=&quot;button&quot;&gt;Block level button&lt;/button&gt; &lt;/p&gt; &lt;div style=&quot;margin-bottom: 15px;&quot; class=&quot;bs-component&quot;&gt; &lt;div class=&quot;btn-group btn-group-justified&quot;&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Left&lt;/a&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Middle&lt;/a&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Right&lt;/a&gt; &lt;/div&gt; &lt;/div&gt; &lt;div style=&quot;margin-bottom: 15px;&quot; class=&quot;bs-component&quot;&gt; &lt;div class=&quot;btn-toolbar&quot;&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;1&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;2&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;3&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;4&lt;/button&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;5&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;6&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;7&lt;/button&gt; &lt;/div&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;8&lt;/button&gt; &lt;div class=&quot;btn-group&quot;&gt; &lt;button data-toggle=&quot;dropdown&quot; class=&quot;btn btn-default dropdown-toggle&quot; type=&quot;button&quot;&gt; Dropdown &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt; &lt;/button&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;btn-group-vertical&quot;&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Typography ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;type&quot;&gt;Typography&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Headings --&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;h1&gt;Heading 1&lt;/h1&gt; &lt;h2&gt;Heading 2&lt;/h2&gt; &lt;h3&gt;Heading 3&lt;/h3&gt; &lt;h4&gt;Heading 4&lt;/h4&gt; &lt;h5&gt;Heading 5&lt;/h5&gt; &lt;h6&gt;Heading 6&lt;/h6&gt; &lt;p class=&quot;lead&quot;&gt;Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;h2&gt;Example body text&lt;/h2&gt; &lt;p&gt;Nullam quis risus eget &lt;a href=&quot;#&quot;&gt;urna mollis ornare&lt;/a&gt; vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.&lt;/p&gt; &lt;p&gt;&lt;small&gt;This line of text is meant to be treated as fine print.&lt;/small&gt;&lt;/p&gt; &lt;p&gt;The following snippet of text is &lt;strong&gt;rendered as bold text&lt;/strong&gt;.&lt;/p&gt; &lt;p&gt;The following snippet of text is &lt;em&gt;rendered as italicized text&lt;/em&gt;.&lt;/p&gt; &lt;p&gt;An abbreviation of the word attribute is &lt;abbr title=&quot;attribute&quot;&gt;attr&lt;/abbr&gt;.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;h2&gt;Emphasis classes&lt;/h2&gt; &lt;p class=&quot;text-muted&quot;&gt;Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.&lt;/p&gt; &lt;p class=&quot;text-primary&quot;&gt;Nullam id dolor id nibh ultricies vehicula ut id elit.&lt;/p&gt; &lt;p class=&quot;text-warning&quot;&gt;Etiam porta sem malesuada magna mollis euismod.&lt;/p&gt; &lt;p class=&quot;text-danger&quot;&gt;Donec ullamcorper nulla non metus auctor fringilla.&lt;/p&gt; &lt;p class=&quot;text-success&quot;&gt;Duis mollis, est non commodo luctus, nisi erat porttitor ligula.&lt;/p&gt; &lt;p class=&quot;text-info&quot;&gt;Maecenas sed diam eget risus varius blandit sit amet non magna.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Blockquotes --&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2 id=&quot;type-blockquotes&quot;&gt;Blockquotes&lt;/h2&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;blockquote&gt; &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt; &lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt; &lt;/blockquote&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;blockquote class=&quot;pull-right&quot;&gt; &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt; &lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt; &lt;/blockquote&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Tables ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;tables&quot;&gt;Tables&lt;/h1&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;table class=&quot;table table-striped table-hover &quot;&gt; &lt;thead&gt; &lt;tr&gt; &lt;th&gt;#&lt;/th&gt; &lt;th&gt;Column heading&lt;/th&gt; &lt;th&gt;Column heading&lt;/th&gt; &lt;th&gt;Column heading&lt;/th&gt; &lt;/tr&gt; &lt;/thead&gt; &lt;tbody&gt; &lt;tr&gt; &lt;td&gt;1&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;2&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;info&quot;&gt; &lt;td&gt;3&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;success&quot;&gt; &lt;td&gt;4&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;danger&quot;&gt; &lt;td&gt;5&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;warning&quot;&gt; &lt;td&gt;6&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;tr class=&quot;active&quot;&gt; &lt;td&gt;7&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;td&gt;Column content&lt;/td&gt; &lt;/tr&gt; &lt;/tbody&gt; &lt;/table&gt; &lt;/div&gt;&lt;!-- /example --&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Forms ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;forms&quot;&gt;Forms&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;div class=&quot;well bs-component&quot;&gt;  &lt;fieldset&gt; &lt;legend&gt;Legend&lt;/legend&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputEmail&quot;&gt;Email&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;input placeholder=&quot;Email&quot; id=&quot;inputEmail&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputPassword&quot;&gt;Password&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;input placeholder=&quot;Password&quot; id=&quot;inputPassword&quot; class=&quot;form-control&quot; type=&quot;password&quot;&gt; &lt;div class=&quot;checkbox&quot;&gt; &lt;label&gt; &lt;input type=&quot;checkbox&quot;&gt; Checkbox &lt;/label&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;textArea&quot;&gt;Textarea&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;textarea id=&quot;textArea&quot; rows=&quot;3&quot; class=&quot;form-control&quot;&gt;&lt;/textarea&gt; &lt;span class=&quot;help-block&quot;&gt;A longer block of help text that breaks onto a new line and may extend beyond one line.&lt;/span&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot;&gt;Radios&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;div class=&quot;radio&quot;&gt; &lt;label&gt; &lt;input checked=&quot;&quot; value=&quot;option1&quot; id=&quot;optionsRadios1&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot;&gt; Option one is this &lt;/label&gt; &lt;/div&gt; &lt;div class=&quot;radio&quot;&gt; &lt;label&gt; &lt;input value=&quot;option2&quot; id=&quot;optionsRadios2&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot;&gt; Option two can be something else &lt;/label&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;select&quot;&gt;Selects&lt;/label&gt; &lt;div class=&quot;col-lg-10&quot;&gt; &lt;select id=&quot;select&quot; class=&quot;form-control&quot;&gt; &lt;option&gt;1&lt;/option&gt; &lt;option&gt;2&lt;/option&gt; &lt;option&gt;3&lt;/option&gt; &lt;option&gt;4&lt;/option&gt; &lt;option&gt;5&lt;/option&gt; &lt;/select&gt; &lt;br&gt; &lt;select class=&quot;form-control&quot; multiple=&quot;&quot;&gt; &lt;option&gt;1&lt;/option&gt; &lt;option&gt;2&lt;/option&gt; &lt;option&gt;3&lt;/option&gt; &lt;option&gt;4&lt;/option&gt; &lt;option&gt;5&lt;/option&gt; &lt;/select&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;div class=&quot;col-lg-10 col-lg-offset-2&quot;&gt; &lt;button class=&quot;btn btn-default&quot;&gt;Cancel&lt;/button&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;submit&quot;&gt;Submit&lt;/button&gt; &lt;/div&gt; &lt;/div&gt; &lt;/fieldset&gt;  &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4 col-lg-offset-1&quot;&gt; &lt;form class=&quot;bs-component&quot;&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;focusedInput&quot; class=&quot;control-label&quot;&gt;Focused input&lt;/label&gt; &lt;input value=&quot;This is focused...&quot; id=&quot;focusedInput&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;disabledInput&quot; class=&quot;control-label&quot;&gt;Disabled input&lt;/label&gt; &lt;input disabled=&quot;&quot; placeholder=&quot;Disabled input here...&quot; id=&quot;disabledInput&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group has-warning&quot;&gt; &lt;label for=&quot;inputWarning&quot; class=&quot;control-label&quot;&gt;Input warning&lt;/label&gt; &lt;input id=&quot;inputWarning&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group has-error&quot;&gt; &lt;label for=&quot;inputError&quot; class=&quot;control-label&quot;&gt;Input error&lt;/label&gt; &lt;input id=&quot;inputError&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group has-success&quot;&gt; &lt;label for=&quot;inputSuccess&quot; class=&quot;control-label&quot;&gt;Input success&lt;/label&gt; &lt;input id=&quot;inputSuccess&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;inputLarge&quot; class=&quot;control-label&quot;&gt;Large input&lt;/label&gt; &lt;input id=&quot;inputLarge&quot; class=&quot;form-control input-lg&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;inputDefault&quot; class=&quot;control-label&quot;&gt;Default input&lt;/label&gt; &lt;input id=&quot;inputDefault&quot; class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label for=&quot;inputSmall&quot; class=&quot;control-label&quot;&gt;Small input&lt;/label&gt; &lt;input id=&quot;inputSmall&quot; class=&quot;form-control input-sm&quot; type=&quot;text&quot;&gt; &lt;/div&gt; &lt;div class=&quot;form-group&quot;&gt; &lt;label class=&quot;control-label&quot;&gt;Input addons&lt;/label&gt; &lt;div class=&quot;input-group&quot;&gt; &lt;span class=&quot;input-group-addon&quot;&gt;$&lt;/span&gt; &lt;input class=&quot;form-control&quot; type=&quot;text&quot;&gt; &lt;span class=&quot;input-group-btn&quot;&gt; &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;Button&lt;/button&gt; &lt;/span&gt; &lt;/div&gt; &lt;/div&gt; &lt;/form&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Navs ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;nav&quot;&gt;Navs&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;nav-tabs&quot;&gt;Tabs&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul style=&quot;margin-bottom: 15px;&quot; class=&quot;nav nav-tabs&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#home&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#profile&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a&gt;Disabled&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a href=&quot;#&quot; data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot;&gt; Dropdown &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt; &lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#dropdown1&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#dropdown2&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;div class=&quot;tab-content&quot; id=&quot;myTabContent&quot;&gt; &lt;div id=&quot;home&quot; class=&quot;tab-pane fade active in&quot;&gt; &lt;p&gt;Raw denim you probably haven''t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.&lt;/p&gt; &lt;/div&gt; &lt;div id=&quot;profile&quot; class=&quot;tab-pane fade&quot;&gt; &lt;p&gt;Food truck fixie locavore, accusamus mcsweeney''s marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.&lt;/p&gt; &lt;/div&gt; &lt;div id=&quot;dropdown1&quot; class=&quot;tab-pane fade&quot;&gt; &lt;p&gt;Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney''s organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.&lt;/p&gt; &lt;/div&gt; &lt;div id=&quot;dropdown2&quot; class=&quot;tab-pane fade&quot;&gt; &lt;p&gt;Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;nav-pills&quot;&gt;Pills&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;nav nav-pills&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a href=&quot;#&quot; data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot;&gt; Dropdown &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt; &lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;br&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul style=&quot;max-width: 300px;&quot; class=&quot;nav nav-pills nav-stacked&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;dropdown&quot;&gt; &lt;a href=&quot;#&quot; data-toggle=&quot;dropdown&quot; class=&quot;dropdown-toggle&quot;&gt; Dropdown &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt; &lt;/a&gt; &lt;ul class=&quot;dropdown-menu&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;nav-breadcrumbs&quot;&gt;Breadcrumbs&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;breadcrumb&quot;&gt; &lt;li class=&quot;active&quot;&gt;Home&lt;/li&gt; &lt;/ul&gt; &lt;ul class=&quot;breadcrumb&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;Library&lt;/li&gt; &lt;/ul&gt; &lt;ul style=&quot;margin-bottom: 5px;&quot; class=&quot;breadcrumb&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Library&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;Data&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;pagination&quot;&gt;Pagination&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;pagination&quot;&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;5&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;ul class=&quot;pagination pagination-lg&quot;&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;ul class=&quot;pagination pagination-sm&quot;&gt; &lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;5&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2 id=&quot;pager&quot;&gt;Pager&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;pager&quot;&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Previous&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Next&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;ul class=&quot;pager&quot;&gt; &lt;li class=&quot;previous disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;← Older&lt;/a&gt;&lt;/li&gt; &lt;li class=&quot;next&quot;&gt;&lt;a href=&quot;#&quot;&gt;Newer →&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Indicators ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;indicators&quot;&gt;Indicators&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2&gt;Alerts&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;alert alert-dismissable alert-warning&quot;&gt; &lt;button data-dismiss=&quot;alert&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;h4&gt;Warning!&lt;/h4&gt; &lt;p&gt;Best check yo self, you''re not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;vel scelerisque nisl consectetur et&lt;/a&gt;.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;alert alert-dismissable alert-danger&quot;&gt; &lt;button data-dismiss=&quot;alert&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;strong&gt;Oh snap!&lt;/strong&gt; &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;Change a few things up&lt;/a&gt; and try submitting again. &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;alert alert-dismissable alert-success&quot;&gt; &lt;button data-dismiss=&quot;alert&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;strong&gt;Well done!&lt;/strong&gt; You successfully read &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;this important alert message&lt;/a&gt;. &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;alert alert-dismissable alert-info&quot;&gt; &lt;button data-dismiss=&quot;alert&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;strong&gt;Heads up!&lt;/strong&gt; This &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;alert needs your attention&lt;/a&gt;, but it''s not super important. &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2&gt;Labels&lt;/h2&gt; &lt;div style=&quot;margin-bottom: 40px;&quot; class=&quot;bs-component&quot;&gt; &lt;span class=&quot;label label-default&quot;&gt;Default&lt;/span&gt; &lt;span class=&quot;label label-primary&quot;&gt;Primary&lt;/span&gt; &lt;span class=&quot;label label-success&quot;&gt;Success&lt;/span&gt; &lt;span class=&quot;label label-warning&quot;&gt;Warning&lt;/span&gt; &lt;span class=&quot;label label-danger&quot;&gt;Danger&lt;/span&gt; &lt;span class=&quot;label label-info&quot;&gt;Info&lt;/span&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;h2&gt;Badges&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;nav nav-pills&quot;&gt; &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home &lt;span class=&quot;badge&quot;&gt;42&lt;/span&gt;&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile &lt;span class=&quot;badge&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Messages &lt;span class=&quot;badge&quot;&gt;3&lt;/span&gt;&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Progress bars ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;progress&quot;&gt;Progress bars&lt;/h1&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-basic&quot;&gt;Basic&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 60%;&quot; class=&quot;progress-bar&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-alternatives&quot;&gt;Contextual alternatives&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 20%&quot; class=&quot;progress-bar progress-bar-info&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 40%&quot; class=&quot;progress-bar progress-bar-success&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 60%&quot; class=&quot;progress-bar progress-bar-warning&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 80%&quot; class=&quot;progress-bar progress-bar-danger&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-striped&quot;&gt;Striped&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress progress-striped&quot;&gt; &lt;div style=&quot;width: 20%&quot; class=&quot;progress-bar progress-bar-info&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress progress-striped&quot;&gt; &lt;div style=&quot;width: 40%&quot; class=&quot;progress-bar progress-bar-success&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress progress-striped&quot;&gt; &lt;div style=&quot;width: 60%&quot; class=&quot;progress-bar progress-bar-warning&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;progress progress-striped&quot;&gt; &lt;div style=&quot;width: 80%&quot; class=&quot;progress-bar progress-bar-danger&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-animated&quot;&gt;Animated&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress progress-striped active&quot;&gt; &lt;div style=&quot;width: 45%&quot; class=&quot;progress-bar&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;h3 id=&quot;progress-stacked&quot;&gt;Stacked&lt;/h3&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;progress&quot;&gt; &lt;div style=&quot;width: 35%&quot; class=&quot;progress-bar progress-bar-success&quot;&gt;&lt;/div&gt; &lt;div style=&quot;width: 20%&quot; class=&quot;progress-bar progress-bar-warning&quot;&gt;&lt;/div&gt; &lt;div style=&quot;width: 10%&quot; class=&quot;progress-bar progress-bar-danger&quot;&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Containers ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;container&quot;&gt;Containers&lt;/h1&gt; &lt;/div&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;jumbotron&quot;&gt; &lt;h1&gt;Jumbotron&lt;/h1&gt; &lt;p&gt;This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.&lt;/p&gt; &lt;p&gt;&lt;a class=&quot;btn btn-primary btn-lg&quot;&gt;Learn more&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2&gt;List groups&lt;/h2&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;ul class=&quot;list-group&quot;&gt; &lt;li class=&quot;list-group-item&quot;&gt; &lt;span class=&quot;badge&quot;&gt;14&lt;/span&gt; Cras justo odio &lt;/li&gt; &lt;li class=&quot;list-group-item&quot;&gt; &lt;span class=&quot;badge&quot;&gt;2&lt;/span&gt; Dapibus ac facilisis in &lt;/li&gt; &lt;li class=&quot;list-group-item&quot;&gt; &lt;span class=&quot;badge&quot;&gt;1&lt;/span&gt; Morbi leo risus &lt;/li&gt; &lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;list-group&quot;&gt; &lt;a class=&quot;list-group-item active&quot; href=&quot;#&quot;&gt; Cras justo odio &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Dapibus ac facilisis in &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Morbi leo risus &lt;/a&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;list-group&quot;&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt; &lt;h4 class=&quot;list-group-item-heading&quot;&gt;List group item heading&lt;/h4&gt; &lt;p class=&quot;list-group-item-text&quot;&gt;Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.&lt;/p&gt; &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt; &lt;h4 class=&quot;list-group-item-heading&quot;&gt;List group item heading&lt;/h4&gt; &lt;p class=&quot;list-group-item-text&quot;&gt;Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.&lt;/p&gt; &lt;/a&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2&gt;Panels&lt;/h2&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;panel panel-default&quot;&gt; &lt;div class=&quot;panel-body&quot;&gt; Basic panel &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-default&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt;Panel heading&lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-default&quot;&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;div class=&quot;panel-footer&quot;&gt;Panel footer&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;panel panel-primary&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel primary&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-success&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel success&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-warning&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel warning&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;panel panel-danger&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel danger&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;panel panel-info&quot;&gt; &lt;div class=&quot;panel-heading&quot;&gt; &lt;h3 class=&quot;panel-title&quot;&gt;Panel info&lt;/h3&gt; &lt;/div&gt; &lt;div class=&quot;panel-body&quot;&gt; Panel content &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;h2&gt;Wells&lt;/h2&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;well&quot;&gt; Look, I''m in a well! &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;well well-sm&quot;&gt; Look, I''m in a small well! &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-4&quot;&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;well well-lg&quot;&gt; Look, I''m in a large well! &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;!-- Dialogs ================================================== --&gt; &lt;div class=&quot;bs-docs-section&quot;&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;div class=&quot;page-header&quot;&gt; &lt;h1 id=&quot;tables&quot;&gt;Dialogs&lt;/h1&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;h2&gt;Modals&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;div class=&quot;modal&quot;&gt; &lt;div class=&quot;modal-dialog&quot;&gt; &lt;div class=&quot;modal-content&quot;&gt; &lt;div class=&quot;modal-header&quot;&gt; &lt;button aria-hidden=&quot;true&quot; data-dismiss=&quot;modal&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;Ã—&lt;/button&gt; &lt;h4 class=&quot;modal-title&quot;&gt;Modal title&lt;/h4&gt; &lt;/div&gt; &lt;div class=&quot;modal-body&quot;&gt; &lt;p&gt;One fine bodyâ€¦&lt;/p&gt; &lt;/div&gt; &lt;div class=&quot;modal-footer&quot;&gt; &lt;button data-dismiss=&quot;modal&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Close&lt;/button&gt; &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Save changes&lt;/button&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;col-lg-6&quot;&gt; &lt;h2&gt;Popovers&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;button data-content=&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot; data-placement=&quot;left&quot; data-toggle=&quot;popover&quot; data-container=&quot;body&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Left&lt;/button&gt; &lt;button data-content=&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot; data-placement=&quot;top&quot; data-toggle=&quot;popover&quot; data-container=&quot;body&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Top&lt;/button&gt; &lt;button data-content=&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot; data-placement=&quot;bottom&quot; data-toggle=&quot;popover&quot; data-container=&quot;body&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Bottom&lt;/button&gt; &lt;button data-content=&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot; data-placement=&quot;right&quot; data-toggle=&quot;popover&quot; data-container=&quot;body&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Right&lt;/button&gt; &lt;/div&gt; &lt;h2&gt;Tooltips&lt;/h2&gt; &lt;div class=&quot;bs-component&quot;&gt; &lt;button data-original-title=&quot;Tooltip on left&quot; title=&quot;&quot; data-placement=&quot;left&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Left&lt;/button&gt; &lt;button data-original-title=&quot;Tooltip on top&quot; title=&quot;&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Top&lt;/button&gt; &lt;button data-original-title=&quot;Tooltip on bottom&quot; title=&quot;&quot; data-placement=&quot;bottom&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Bottom&lt;/button&gt; &lt;button data-original-title=&quot;Tooltip on right&quot; title=&quot;&quot; data-placement=&quot;right&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Right&lt;/button&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class=&quot;modal fade&quot; id=&quot;source-modal&quot;&gt; &lt;div class=&quot;modal-dialog modal-lg&quot;&gt; &lt;div class=&quot;modal-content&quot;&gt; &lt;div class=&quot;modal-header&quot;&gt; &lt;button aria-hidden=&quot;true&quot; data-dismiss=&quot;modal&quot; class=&quot;close&quot; type=&quot;button&quot;&gt;×&lt;/button&gt; &lt;h4 class=&quot;modal-title&quot;&gt;Source Code&lt;/h4&gt; &lt;/div&gt; &lt;div class=&quot;modal-body&quot;&gt; &lt;pre&gt;&lt;/pre&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;footer&gt; &lt;div class=&quot;row&quot;&gt; &lt;div class=&quot;col-lg-12&quot;&gt; &lt;ul class=&quot;list-unstyled&quot;&gt; &lt;li class=&quot;pull-right&quot;&gt;&lt;a href=&quot;#top&quot;&gt;Back to top&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a onclick=&quot;pageTracker._link(this.href); return false;&quot; href=&quot;http://news.bootswatch.com&quot;&gt;Blog&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;http://feeds.feedburner.com/bootswatch&quot;&gt;RSS&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;https://twitter.com/thomashpark&quot;&gt;Twitter&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;https://github.com/thomaspark/bootswatch/&quot;&gt;GitHub&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;../help/#api&quot;&gt;API&lt;/a&gt;&lt;/li&gt; &lt;li&gt;&lt;a href=&quot;https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;amp;hosted_button_id=F22JEM3Q78JC2&quot;&gt;Donate&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Made by &lt;a rel=&quot;nofollow&quot; href=&quot;http://thomaspark.me&quot;&gt;Thomas Park&lt;/a&gt;. Contact him at &lt;a href=&quot;mailto:thomas@bootswatch.com&quot;&gt;thomas@bootswatch.com&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Code released under the &lt;a href=&quot;https://github.com/thomaspark/bootswatch/blob/gh-pages/LICENSE&quot;&gt;MIT License&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Based on &lt;a rel=&quot;nofollow&quot; href=&quot;http://getbootstrap.com&quot;&gt;Bootstrap&lt;/a&gt;. Icons from &lt;a rel=&quot;nofollow&quot; href=&quot;http://fortawesome.github.io/Font-Awesome/&quot;&gt;Font Awesome&lt;/a&gt;. Web fonts from &lt;a rel=&quot;nofollow&quot; href=&quot;http://www.google.com/webfonts&quot;&gt;Google&lt;/a&gt;.&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/footer&gt;', 'Typo', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Arabic', 'ar', 'arabic_YE (ar_YE.UTF8@euro, ar_YE.UTF8)', 'ar.png', 'arabic', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Home 2'),
(17, 'Home 3'),
(15, 'Pav Blog');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=516 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(248, 0, 'pavsliderlayer.79', 'slideshow', 0),
(191, 6, 'account', 'column_right', 0),
(515, 1, 'pavmap.64', 'footer_center', 0),
(514, 1, 'pavhomebuilder.80', 'content_top', 0),
(332, 17, 'pavhomebuilder.91', 'content_top', 0),
(190, 4, 'banner.0', 'content_top', 1),
(189, 4, 'carousel.0', 'content_top', 0),
(249, 0, 'pavhomebuilder', 'content_top', 0),
(402, 17, 'pavsocial.59', 'outsite_right', 1),
(229, 3, 'category', 'column_left', 0),
(192, 2, 'category', 'column_left', 0),
(218, 15, 'pavblogcomment.63', 'column_left', 3),
(219, 15, 'pavbloglatest.58', 'column_left', 2),
(513, 1, 'pavreassurance.49', 'promotion', 0),
(217, 15, 'pavblogcategory.62', 'column_left', 1),
(194, 5, 'category', 'column_left', 2),
(512, 1, 'pavsliderlayer.79', 'slideshow', 0),
(487, 14, 'pavhomebuilder.47', 'content_top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=219 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(116, 3, 0, 'product/category'),
(218, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(33, 12, 0, 'pavblog/'),
(211, 14, 0, 'home/home2'),
(110, 15, 0, 'pavblog/category'),
(108, 15, 0, 'pavblog/blogs'),
(109, 15, 0, 'pavblog/blog'),
(204, 17, 0, 'home/home3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 10.00000000),
(3, 0.39370000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu`
--

CREATE TABLE IF NOT EXISTS `oc_megamenu` (
  `megamenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  PRIMARY KEY (`megamenu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `oc_megamenu`
--

INSERT INTO `oc_megamenu` (`megamenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`) VALUES
(1, '', 0, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 0, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, -5, 34, 47, 0),
(2, '', 1, 0, NULL, NULL, NULL, 'col1=3, col2=3, col3=6', '18', '3', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(5, '', 1, 0, NULL, NULL, NULL, '', '18', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(40, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, '?route=common/home', NULL, 0, 'top', 'home', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(49, '', 1, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(50, '', 1, 0, NULL, NULL, NULL, '', '34', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(51, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 7, 0, 'index.php?route=information/contact', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(52, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 4, 0, 'index.php?route=pavblog/blogs', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(55, '', 50, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(56, '', 50, 0, NULL, NULL, NULL, '', '34', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(57, '', 50, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(58, '', 50, 0, NULL, NULL, NULL, '', '18', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(59, '', 58, 0, NULL, NULL, NULL, '', '61', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(60, '', 58, 0, NULL, NULL, NULL, '', '46', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(61, '', 58, 0, NULL, NULL, NULL, '', '62', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(62, '', 58, 0, NULL, NULL, NULL, '', '45', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(63, '', 40, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, '?route=home/home2', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2),
(65, '', 40, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, '?route=home/home3', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_description`
--

CREATE TABLE IF NOT EXISTS `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`megamenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_description`
--

INSERT INTO `oc_megamenu_description` (`megamenu_id`, `language_id`, `title`, `description`) VALUES
(2, 1, 'Featured', ''),
(49, 1, 'Custom', ''),
(50, 1, 'Dropdown', ''),
(5, 1, 'Shop', ''),
(52, 2, 'بلوق', ''),
(55, 1, 'Computers', ''),
(56, 1, 'Electronics', ''),
(57, 1, 'Homeware', ''),
(58, 1, 'Mobile &amp; Notebooks', ''),
(59, 1, 'ipad', ''),
(60, 1, 'iphone', ''),
(61, 1, 'Samsung', ''),
(62, 1, 'Tablets', ''),
(40, 1, 'Home', ''),
(40, 2, 'منزل', ''),
(2, 2, 'مميزة', ''),
(5, 2, 'متجر', ''),
(52, 1, 'Blog', ''),
(49, 2, 'عرف', ''),
(50, 2, 'المنسدلة', ''),
(55, 2, 'أجهزة الكمبيوتر', ''),
(56, 2, 'إلكترونيات', ''),
(57, 2, 'إلكترونيات', ''),
(58, 2, 'موبايل و نوت بوك', ''),
(59, 2, 'باد', ''),
(61, 2, 'سامسونج', ''),
(62, 2, 'أقراص', ''),
(51, 1, 'Contacts us', ''),
(51, 2, 'الاتصال بنا', ''),
(63, 2, 'Home2', ''),
(65, 2, 'Home3', ''),
(63, 1, 'Home2', ''),
(65, 1, 'Home3', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_widgets`
--

CREATE TABLE IF NOT EXISTS `oc_megamenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `oc_megamenu_widgets`
--

INSERT INTO `oc_megamenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(2, 'Last Tweets', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:423:"&lt;p class=&quot;title&quot;&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident at optio reiciendis culpa reprehenderit\r\n&lt;/p&gt; \r\n&lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n&lt;p&gt;\r\n	Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam omnis sequi expedita nobis debitis\r\n&lt;/p&gt;";i:2;s:617:"&lt;p class=&quot;title&quot;&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\nأم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،\r\n&lt;/p&gt; \r\n&lt;p&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\nأم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،\r\n&lt;/p&gt;";}}', 0),
(1, 'Video Widget', 'video_code', 'a:1:{s:10:"video_code";s:186:"&lt;div class=&quot;video-responsive&quot;&gt;\r\n&lt;iframe src=&quot;//player.vimeo.com/video/37075854&quot; width=&quot;500&quot; height=&quot;281&quot;&gt;&lt;/iframe&gt;\r\n&lt;/div&gt;";}', 0),
(3, 'Products Latest', 'product_list', 'a:4:{s:9:"list_type";s:6:"newest";s:5:"limit";s:1:"3";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"185";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"1";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"185";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:3:"170";s:12:"image_height";s:2:"58";s:5:"limit";s:2:"16";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(7, 'Cosmetics', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:880:"&lt;h4 class=&quot;title&quot;&gt;Cosmetics&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_76&quot;&gt;Bath &amp; Body&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_63&quot;&gt;Shampoo&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_28&quot;&gt; Eye Shadow&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_29&quot;&gt;Hair color&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_31&quot;&gt;Hair Loss&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_32&quot;&gt;Styling&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;";i:2;s:960:"&lt;h4 class=&quot;title&quot;&gt;مستحضرات التجميل&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_76&quot;&gt;صحة ونظافة الجسم&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_63&quot;&gt;الشامبو&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_28&quot;&gt;ظلال العيون&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_29&quot;&gt;لون الشعر&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_31&quot;&gt;تساقط الشعر&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25_32&quot;&gt;التصميم&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;";}}', 0),
(8, 'Women shoes ', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:753:"&lt;h4 class=&quot;title&quot;&gt;Women shoes &lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_79&quot;&gt;Boat Shoe&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_78&quot;&gt;Boots&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_80&quot;&gt;Running Shoe&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_26&quot;&gt;Foot Rasps&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_27&quot;&gt;Spa Slippers&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;";i:2;s:830:"&lt;h4 class=&quot;title&quot;&gt;الأحذية النسائية &lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_79&quot;&gt;قارب حذاء&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_78&quot;&gt;الأحذية&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_80&quot;&gt;حذاء الجري&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_26&quot;&gt;المبارد القدم&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20_27&quot;&gt;منتجع صحي النعال&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;";}}', 0),
(9, 'Fashion', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:729:"&lt;h4 class=&quot;title&quot;&gt;Fashion&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_43&quot;&gt;Beauty&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_50&quot;&gt;Clothing&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_44&quot;&gt;Dresses&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_47&quot;&gt;New&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_49&quot;&gt;Sport&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;";i:2;s:767:"&lt;h4 class=&quot;title&quot;&gt;الأزياء&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_43&quot;&gt;الجمال&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_50&quot;&gt;الملابس&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_44&quot;&gt;فساتين&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_47&quot;&gt;جديد&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34_49&quot;&gt;الرياضة&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;";}}', 0),
(10, 'Baner', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:111:"&lt;img class=&quot;img-responsive&quot; src=&quot;image/data/banner/menu-banner.jpg&quot; alt=&quot;&quot;&gt;";i:2;s:111:"&lt;img class=&quot;img-responsive&quot; src=&quot;image/data/banner/menu-banner.jpg&quot; alt=&quot;&quot;&gt;";}}', 0),
(11, 'Electrical', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:771:"&lt;h4 class=&quot;title&quot;&gt;Electrical&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_68&quot;&gt;Fridge Freezers&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_70&quot;&gt;LED TVs&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_64&quot;&gt;Vacuums &amp; Accessories&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_69&quot;&gt;Washing Machines&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_66&quot;&gt;Others&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n&lt;/ul&gt;";i:2;s:813:"&lt;h4 class=&quot;title&quot;&gt;الكهربائية&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_68&quot;&gt;مجمدات الثلاجة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_70&quot;&gt;تلفزيونات &lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_64&quot;&gt;الفراغات وكماليات&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_69&quot;&gt;غسالات&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_66&quot;&gt;آخرون&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n&lt;/ul&gt;";}}', 0),
(12, 'Html custom', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:383:"&lt;br&gt;\r\n&lt;h5&gt;Html custom&lt;/h5&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;";i:2;s:383:"&lt;br&gt;\r\n&lt;h5&gt;Html custom&lt;/h5&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;";}}', 0),
(15, 'Lastest Blog', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:1965:"&lt;div class=&quot;blog-body&quot;&gt;\r\n                                                &lt;div class=&quot;image&quot;&gt;\r\n                            &lt;img class=&quot;img-responsive&quot; alt=&quot;Fashion Brunette Girl&quot; title=&quot;Fashion Brunette Girl&quot; src=&quot;image/data/pavblog/blog1.jpg&quot;&gt;\r\n                        &lt;/div&gt;\r\n                        \r\n                        &lt;div class=&quot;create-info&quot;&gt;\r\n                            &lt;div class=&quot;inners&quot;&gt;\r\n                                &lt;div class=&quot;blog-header&quot;&gt;\r\n                                    &lt;h4 class=&quot;blog-title&quot;&gt;\r\n                                        &lt;a title=&quot;Fashion Brunette Girl&quot; href=&quot;http://localhost/dev/oc/lexus_queenbeauty/index.php?route=pavblog/blog&amp;amp;id=12&quot;&gt;Fashion Brunette Girl&lt;/a&gt;\r\n                                    &lt;/h4&gt;\r\n                                &lt;/div&gt;\r\n                                &lt;div class=&quot;create-date&quot;&gt;\r\n                                    &lt;div class=&quot;created&quot;&gt;\r\n                                        &lt;span class=&quot;day&quot;&gt;25&lt;/span&gt;\r\n                                        &lt;span class=&quot;month&quot;&gt;Dec&lt;/span&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                                &lt;div class=&quot;description&quot;&gt;\r\n                                                                        Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsumt....\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                        &lt;/div&gt;\r\n                    &lt;/div&gt;";i:2;s:1965:"&lt;div class=&quot;blog-body&quot;&gt;\r\n                                                &lt;div class=&quot;image&quot;&gt;\r\n                            &lt;img class=&quot;img-responsive&quot; alt=&quot;Fashion Brunette Girl&quot; title=&quot;Fashion Brunette Girl&quot; src=&quot;image/data/pavblog/blog1.jpg&quot;&gt;\r\n                        &lt;/div&gt;\r\n                        \r\n                        &lt;div class=&quot;create-info&quot;&gt;\r\n                            &lt;div class=&quot;inners&quot;&gt;\r\n                                &lt;div class=&quot;blog-header&quot;&gt;\r\n                                    &lt;h4 class=&quot;blog-title&quot;&gt;\r\n                                        &lt;a title=&quot;Fashion Brunette Girl&quot; href=&quot;http://localhost/dev/oc/lexus_queenbeauty/index.php?route=pavblog/blog&amp;amp;id=12&quot;&gt;Fashion Brunette Girl&lt;/a&gt;\r\n                                    &lt;/h4&gt;\r\n                                &lt;/div&gt;\r\n                                &lt;div class=&quot;create-date&quot;&gt;\r\n                                    &lt;div class=&quot;created&quot;&gt;\r\n                                        &lt;span class=&quot;day&quot;&gt;25&lt;/span&gt;\r\n                                        &lt;span class=&quot;month&quot;&gt;Dec&lt;/span&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                                &lt;div class=&quot;description&quot;&gt;\r\n                                                                        Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsumt....\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                        &lt;/div&gt;\r\n                    &lt;/div&gt;";}}', 0),
(14, 'banner-menu', 'image', 'a:3:{s:10:"image_path";s:27:"data/banner/menu-banner.jpg";s:11:"image_width";s:3:"550";s:12:"image_height";s:3:"225";}', 0),
(16, 'Menu-blog', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:628:"&lt;h4 class=&quot;title&quot;&gt;Blog&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=pavblog/category&amp;amp;id=22&quot;&gt;Category Blog&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n                &lt;a href=&quot;index.php?route=pavblog/blogs&quot;&gt;Archives Blog&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=pavblog/blog&amp;amp;id=10#comment11&quot;&gt;Single Blog&lt;/a&gt;\r\n	&lt;/li&gt;\r\n        &lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;Typo&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	\r\n&lt;/ul&gt;";i:2;s:675:"&lt;h4 class=&quot;title&quot;&gt;بلوق&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=pavblog/category&amp;amp;id=22&quot;&gt;فئة مدونة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n                &lt;a href=&quot;index.php?route=pavblog/blogs&quot;&gt;أرشيف مدونة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=pavblog/blog&amp;amp;id=10#comment11&quot;&gt;مدونة واحدة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n        &lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;الخطأ المطبعي&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	\r\n&lt;/ul&gt;";}}', 0),
(18, 'Account', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:991:"&lt;h4 class=&quot;title&quot;&gt;Account&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/login&quot;&gt;Login&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;		\r\n		&lt;a href=&quot;index.php?route=account/register&quot;&gt;Create account&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/wishlist&quot;&gt;Wish List&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/account&quot;&gt;My Account&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/cart&quot;&gt;Shopping Cart&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/checkout&quot;&gt;Checkout&lt;/a&gt;\r\n	&lt;/li&gt;\r\n         &lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/order&quot;&gt;Order History&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/transaction&quot;&gt;Transaction&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;";i:2;s:1054:"&lt;h4 class=&quot;title&quot;&gt;الحساب&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/login&quot;&gt;تسجيل الدخول&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;		\r\n		&lt;a href=&quot;index.php?route=account/register&quot;&gt;انشاء حساب&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/wishlist&quot;&gt;قائمة المفضلة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/account&quot;&gt;حسابي&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/cart&quot;&gt;سلة التسوق&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=checkout/checkout&quot;&gt;الخروج&lt;/a&gt;\r\n	&lt;/li&gt;\r\n         &lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/order&quot;&gt;أجل التاريخ&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=account/transaction&quot;&gt;الصفقة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;";}}', 0),
(17, 'Html custom2', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:708:"&lt;h5&gt;Html custom&lt;/h5&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;";i:2;s:708:"&lt;h5&gt;Html custom&lt;/h5&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;";}}', 0),
(23, '', 'product_list', 'a:8:{s:4:"wkey";s:2:"23";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:5:"ádas";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:3:"áa";s:12:"addition_cls";s:3:"aaa";s:5:"limit";s:1:"6";s:9:"list_type";s:7:"special";}', 0),
(26, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"26";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Computers";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Computers";s:14:"widget_title_2";s:9:"Computers";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"6";}', 0),
(27, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"27";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:11:"Electronics";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"34";s:5:"limit";s:1:"6";}', 0),
(28, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"28";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:8:"Homeware";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Homeware";s:14:"widget_title_2";s:8:"Homeware";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"20";s:5:"limit";s:1:"6";}', 0),
(29, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"29";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:22:"Mobile &amp; Notebooks";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:22:"Mobile &amp; Notebooks";s:14:"widget_title_2";s:22:"Mobile &amp; Notebooks";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"18";s:5:"limit";s:1:"6";}', 0),
(30, '', 'product', 'a:10:{s:4:"wkey";s:2:"30";s:5:"wtype";s:7:"product";s:11:"widget_name";s:7:"Product";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:7:"Product";s:14:"widget_title_2";s:7:"Product";s:12:"addition_cls";s:0:"";s:10:"product_id";s:2:"48";s:11:"image_width";s:3:"272";s:12:"image_height";s:3:"280";}', 0),
(35, '', 'html', 'a:9:{s:4:"wkey";s:2:"35";s:5:"wtype";s:4:"html";s:11:"widget_name";s:12:"Custome HTML";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:12:"Custome HTML";s:14:"widget_title_2";s:12:"Custome HTML";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:347:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;br&gt;&lt;/p&gt;";s:13:"htmlcontent_2";s:326:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec \r\npurus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis \r\nmetus vel diam imperdiet fermentum.";}', 0),
(32, '', 'product_list', 'a:9:{s:4:"wkey";s:2:"32";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:12:"product list";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:12:"product list";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:7:"sidebar";s:5:"limit";s:1:"3";s:9:"list_type";s:6:"newest";}', 0),
(34, '', 'image', 'a:12:{s:4:"wkey";s:2:"34";s:5:"wtype";s:5:"image";s:11:"widget_name";s:3:"img";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:3:"img";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:30:"catalog/banner/menu-banner.jpg";s:4:"size";s:7:"550x225";s:9:"animation";s:1:"4";s:9:"alignment";s:4:"left";s:7:"ispopup";s:1:"1";s:4:"link";s:1:"#";}', 0),
(36, '', 'link', 'a:25:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"link";s:11:"widget_name";s:7:"Account";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Account";s:12:"addition_cls";s:0:"";s:13:"text_link_1_1";s:5:"Login";s:6:"link_1";s:29:"index.php?route=account/login";s:13:"text_link_2_1";s:14:"Create account";s:6:"link_2";s:9:"Wish List";s:13:"text_link_3_1";s:5:"link3";s:6:"link_3";s:6:"#link3";s:13:"text_link_4_1";s:0:"";s:6:"link_4";s:0:"";s:13:"text_link_5_1";s:0:"";s:6:"link_5";s:0:"";s:13:"text_link_6_1";s:0:"";s:6:"link_6";s:0:"";s:13:"text_link_7_1";s:0:"";s:6:"link_7";s:0:"";s:13:"text_link_8_1";s:0:"";s:6:"link_8";s:0:"";s:13:"text_link_9_1";s:0:"";s:6:"link_9";s:0:"";s:14:"text_link_10_1";s:0:"";}', 0),
(37, '', 'link', 'a:25:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"link";s:11:"widget_name";s:7:"Account";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Account";s:12:"addition_cls";s:0:"";s:13:"text_link_1_1";s:6:"link 1";s:6:"link_1";s:6:"#link1";s:13:"text_link_2_1";s:6:"link 2";s:6:"link_2";s:6:"#link2";s:13:"text_link_3_1";s:5:"link3";s:6:"link_3";s:6:"#link3";s:13:"text_link_4_1";s:0:"";s:6:"link_4";s:0:"";s:13:"text_link_5_1";s:0:"";s:6:"link_5";s:0:"";s:13:"text_link_6_1";s:0:"";s:6:"link_6";s:0:"";s:13:"text_link_7_1";s:0:"";s:6:"link_7";s:0:"";s:13:"text_link_8_1";s:0:"";s:6:"link_8";s:0:"";s:13:"text_link_9_1";s:0:"";s:6:"link_9";s:0:"";s:14:"text_link_10_1";s:0:"";}', 0),
(38, '', 'link', 'a:25:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"link";s:11:"widget_name";s:4:"link";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"link";s:12:"addition_cls";s:0:"";s:13:"text_link_1_1";s:6:"link 1";s:6:"link_1";s:6:"#link1";s:13:"text_link_2_1";s:6:"link 2";s:6:"link_2";s:6:"#link2";s:13:"text_link_3_1";s:5:"link3";s:6:"link_3";s:6:"#link3";s:13:"text_link_4_1";s:0:"";s:6:"link_4";s:0:"";s:13:"text_link_5_1";s:0:"";s:6:"link_5";s:0:"";s:13:"text_link_6_1";s:0:"";s:6:"link_6";s:0:"";s:13:"text_link_7_1";s:0:"";s:6:"link_7";s:0:"";s:13:"text_link_8_1";s:0:"";s:6:"link_8";s:0:"";s:13:"text_link_9_1";s:0:"";s:6:"link_9";s:0:"";s:14:"text_link_10_1";s:0:"";}', 0),
(39, '', 'html', 'a:7:{s:4:"wkey";s:2:"39";s:5:"wtype";s:4:"html";s:11:"widget_name";s:7:"Account";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Account";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:942:"&lt;h4 class=&quot;title&quot;&gt;&lt;br&gt;&lt;/h4&gt;&lt;ul class=&quot;content&quot;&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=account/login&quot;&gt;Login&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;				&lt;a href=&quot;index.php?route=account/register&quot;&gt;Create account&lt;/a&gt;	&lt;/li&gt;		&lt;li&gt;		&lt;a href=&quot;index.php?route=account/wishlist&quot;&gt;Wish List&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=account/account&quot;&gt;My Account&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=checkout/cart&quot;&gt;Shopping Cart&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=checkout/checkout&quot;&gt;Checkout&lt;/a&gt;	&lt;/li&gt;         &lt;li&gt;		&lt;a href=&quot;index.php?route=account/order&quot;&gt;Order History&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=account/transaction&quot;&gt;Transaction&lt;/a&gt;	&lt;/li&gt;&lt;/ul&gt;";}', 0),
(44, '', 'video', 'a:10:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:12:"addition_cls";s:0:"";s:10:"video_link";s:42:"http://www.youtube.com/watch?v=lzY4lkT8ElU";s:5:"width";s:4:"100%";s:6:"height";s:3:"300";s:9:"subinfo_1";s:3:"300";}', 0),
(45, '', 'map', 'a:11:{s:4:"wkey";s:1:"0";s:5:"wtype";s:3:"map";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:12:"addition_cls";s:0:"";s:8:"latitude";s:9:"21.010904";s:9:"longitude";s:10:"105.787736";s:4:"zoom";s:2:"11";s:5:"width";s:3:"250";s:6:"height";s:3:"200";}', 0),
(43, '', 'bloglatest', 'a:10:{s:4:"wkey";s:1:"0";s:5:"wtype";s:10:"bloglatest";s:11:"widget_name";s:12:"Lastest Blog";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:12:"Lastest Blog";s:12:"addition_cls";s:0:"";s:3:"nbr";s:1:"1";s:5:"width";s:3:"280";s:6:"height";s:3:"240";s:4:"cols";s:1:"5";}', 0),
(42, '', 'html', 'a:7:{s:4:"wkey";s:2:"42";s:5:"wtype";s:4:"html";s:11:"widget_name";s:4:"Blog";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Blog";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:537:"&lt;ul class=&quot;content&quot;&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=pavblog/category&amp;id=22&quot;&gt;Category Blog&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;                &lt;a href=&quot;index.php?route=pavblog/blogs&quot;&gt;Archives Blog&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=pavblog/blog&amp;id=10#comment11&quot;&gt;Single Blog&lt;/a&gt;	&lt;/li&gt;        &lt;li&gt;		&lt;a href=&quot;index.php?route=information/information&amp;information_id=7&quot;&gt;Typo&lt;/a&gt;	&lt;/li&gt;	&lt;/ul&gt;";}', 0),
(48, '', 'video', 'a:10:{s:4:"wkey";s:2:"48";s:5:"wtype";s:5:"video";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:12:"addition_cls";s:0:"";s:10:"video_link";s:31:"player.vimeo.com/video/37075854";s:5:"width";s:4:"100%";s:6:"height";s:4:"auto";s:9:"subinfo_1";s:3:"312";}', 0),
(51, '', 'html', 'a:9:{s:4:"wkey";s:2:"51";s:5:"wtype";s:4:"html";s:11:"widget_name";s:11:"Html custom";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Html custom";s:14:"widget_title_2";s:11:"Html custom";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:674:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;";s:13:"htmlcontent_2";s:692:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus\r\n et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus \r\ntristique hendrerit. In eget est ac metus pellentesque iaculis. \r\nPhasellus nec purus feugiat, mattis nisl semper, lacinia sapien. \r\nPhasellus sagittis metus vel diam imperdiet fermentum.&lt;/p&gt;&lt;p&gt;Lorem ipsum\r\n dolor sit amet, consectetur adipiscing elit. Sed id metus et elit \r\nsollicitudin imperdiet. Fusce vitae augue sit amet risus tristique \r\nhendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec \r\npurus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis \r\nmetus vel diam imperdiet fermentum.&lt;/p&gt;";}', 0),
(52, '', 'bloglatest', 'a:10:{s:4:"wkey";s:2:"52";s:5:"wtype";s:10:"bloglatest";s:11:"widget_name";s:4:"Blog";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:4:"Blog";s:12:"addition_cls";s:0:"";s:3:"nbr";s:1:"1";s:5:"width";s:3:"400";s:6:"height";s:3:"200";s:4:"cols";s:1:"1";}', 0),
(54, '', 'html', 'a:9:{s:4:"wkey";s:2:"54";s:5:"wtype";s:4:"html";s:11:"widget_name";s:4:"Blog";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"blog";s:14:"widget_title_2";s:4:"Blog";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:404:"&lt;ul class=&quot;content&quot;&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=pavblog/category&amp;id=22&quot;&gt;Category Blog&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;                &lt;a href=&quot;index.php?route=pavblog/blogs&quot;&gt;Archives Blog&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=pavblog/blog&amp;id=10#comment11&quot;&gt;Single Blog&lt;/a&gt;	&lt;/li&gt;	&lt;/ul&gt;";s:13:"htmlcontent_2";s:404:"&lt;ul class=&quot;content&quot;&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=pavblog/category&amp;id=22&quot;&gt;Category Blog&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;                &lt;a href=&quot;index.php?route=pavblog/blogs&quot;&gt;Archives Blog&lt;/a&gt;	&lt;/li&gt;	&lt;li&gt;		&lt;a href=&quot;index.php?route=pavblog/blog&amp;id=10#comment11&quot;&gt;Single Blog&lt;/a&gt;	&lt;/li&gt;	&lt;/ul&gt;";}', 0),
(55, '', 'product_list', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"6";s:9:"list_type";s:6:"newest";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(9, '<font color="#0000"><b>Pavo Framework 3.0</font>', 'PAVOFRAMEWORK4', 'PavoThemes', '<b>1.0</b>', 'http://www.pavothemes.com', '<modification>\r\n   <name><![CDATA[<font color="#0000"><b>Pavo Framework 3.0</font>]]></name>\r\n    <version><![CDATA[<b>1.0</b>]]></version>\r\n    <author><![CDATA[PavoThemes]]></author>\r\n    <link><![CDATA[http://www.pavothemes.com]]></link>\r\n    <code>PAVOFRAMEWORK4</code>    	             \r\n	<file path="admin/view/template/design/layout_form.tpl">\r\n			<operation>\r\n				<search position="replace"><![CDATA[\r\n				<select name="layout_module[<?php echo $module_row; ?>][position]" class="form-control">\r\n				]]></search>\r\n				<add><![CDATA[\r\n					<select name="layout_module[<?php echo $module_row; ?>][position]" class="form-control">\r\n					<option value="slideshow"   <?php if ($layout_module[''position''] == ''slideshow'') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(''slideshow''); ?>\r\n			 		 </option>\r\n			 		 \r\n\r\n			 		\r\n		\r\n			 		 <option value="promotion"   <?php if ($layout_module[''position''] == ''promotion'') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(''promotion''); ?>\r\n			 		 </option>\r\n			 \r\n			 		 <option value="showcase"   <?php if ($layout_module[''position''] == ''showcase'') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(''showcase''); ?>\r\n			 		 </option>\r\n			\r\n			 		 <option value="mass_bottom"   <?php if ($layout_module[''position''] == ''mass_bottom'') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(''Mass Bottom''); ?>\r\n			 		 </option>\r\n			 	\r\n			 		 <option value="footer_top"   <?php if ($layout_module[''position''] == ''footer_top'') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(''Footer Top''); ?>\r\n			 		 </option>\r\n			 		  <option value="footer_center"   <?php if ($layout_module[''position''] == ''footer_center'') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(''Footer Center''); ?>\r\n			 		 </option>\r\n			 		  <option value="footer_bottom"   <?php if ($layout_module[''position''] == ''footer_bottom'') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(''Footer Bottom''); ?>\r\n			 		 </option>\r\n				]]></add>\r\n			</operation>\r\n	</file>\r\n\r\n	<file path="admin/controller/common/menu.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[ $this->load->language(''common/menu'');  ]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[\r\n			 	  $this->load->language(''common/menu'');\r\n			 	 $data[''pavo_link''] = $this->url->link(''module/themecontrol'', ''token='' . $this->session->data[''token''], ''SSL'');\r\n			 	  $data[''megamenu_link''] = $this->url->link(''module/pavmegamenu'', ''token='' . $this->session->data[''token''], ''SSL'');\r\n			  ]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>		\r\n	<file path="admin/view/template/common/menu.tpl">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[ <li id="sale"> ]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[\r\n			 	  <li><a class="parent">\r\n			 	  	\r\n			 	  		<i class="fa fa-rocket fa-fw"></i> <span><?php echo ''Pavo Theme Control''; ?></span></a>\r\n			 	  		<ul>\r\n			 	  			<li><a href="<?php echo $pavo_link; ?>">Theme Control</a></li>\r\n			 	  			<li><a href="<?php echo $megamenu_link; ?>">MegaMenu</a></li>\r\n			 	  		</ul>	\r\n			 	  </li>	\r\n				  <li id="sale">\r\n			  ]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n	<file path="catalog/language/english/common/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[''text_items'']    = ''%s item(s) - %s'';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[''text_items'']    = ''%s item(s)'';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>	\r\n\r\n	<file path="catalog/language/english/checkout/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[''text_items'']               = ''%s item(s) - %s'';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[''text_items'']               = ''%s item(s)'';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n	\r\n	<file path="catalog/language/english/common/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[''text_items'']    = ''%s item(s) - %s'';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[''text_items'']    = ''%s item(s)'';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>	\r\n\r\n	<file path="catalog/language/english/checkout/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[''text_items'']               = ''%s item(s) - %s'';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[''text_items'']               = ''%s item(s)'';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n	\r\n	<file path="catalog/language/english/common/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[''text_items'']    = ''%s item(s) - %s'';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[''text_items'']    = ''%s item(s)'';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>	\r\n\r\n	<file path="catalog/language/english/checkout/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[''text_items'']               = ''%s item(s) - %s'';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[''text_items'']               = ''%s item(s)'';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n	\r\n	<file path="catalog/language/english/common/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[''text_items'']    = ''%s item(s) - %s'';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[''text_items'']    = ''%s item(s)'';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>	\r\n	<file path="catalog/language/english/checkout/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[''text_items'']               = ''%s item(s) - %s'';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[''text_items'']               = ''%s item(s)'';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n	\r\n	\r\n</modification>					   \r\n					   ', 1, '2014-12-11 11:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(31, 'Amazon Payments Button', 'amazon_button', 'a:3:{s:4:"name";s:22:"Amazon Payments Button";s:5:"align";s:4:"left";s:6:"status";s:1:"1";}'),
(32, 'Banner', 'banner', 'a:5:{s:4:"name";s:6:"Banner";s:9:"banner_id";s:1:"6";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(33, 'Bestsellers', 'bestseller', 'a:5:{s:4:"name";s:11:"Bestsellers";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(35, 'Featured', 'featured', 'a:6:{s:4:"name";s:8:"Featured";s:7:"product";a:4:{i:0;s:4:"2142";i:1;s:2:"40";i:2;s:4:"2120";i:3;s:2:"48";}s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(36, 'Arabic', 'latest', 'a:5:{s:4:"name";s:6:"Arabic";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(53, 'banner-bottom', 'pavbannerbuilder', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:13:"banner-bottom";s:5:"class";s:0:"";s:6:"layout";s:312:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"image":"catalog/banner/banner-bottom.jpg","link":"http://www.pavothemes.com/"}],"rows":[]}]}]";}'),
(90, 'banner-content', 'pavbannerbuilder', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:14:"banner-content";s:5:"class";s:0:"";s:6:"layout";s:304:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":12,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"image":"catalog/banner/banner1.jpg","link":"http://www.pavothemes.com/"}],"rows":[]}]}]";}'),
(54, 'banner-sidebar1', 'pavbannerbuilder', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:15:"banner-sidebar1";s:5:"class";s:0:"";s:6:"layout";s:310:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"image":"catalog/banner/banner-left.jpg","link":"http://www.pavothemes.com/"}],"rows":[]}]}]";}'),
(55, 'banner-sidebar2', 'pavbannerbuilder', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:15:"banner-sidebar2";s:5:"class";s:0:"";s:6:"layout";s:311:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"image":"catalog/banner/banner-left2.jpg","link":"http://www.pavothemes.com/"}],"rows":[]}]}]";}'),
(52, 'banner-top', 'pavbannerbuilder', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:10:"banner-top";s:5:"class";s:0:"";s:6:"layout";s:307:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"image":"catalog/banner/banner-1.jpg","link":"http://www.pavothemes.com/"}],"rows":[]}]}]";}'),
(88, 'banner-top2', 'pavbannerbuilder', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:11:"banner-top2";s:5:"class";s:0:"";s:6:"layout";s:306:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":12,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"image":"catalog/banner/banner2-1.jpg","link":"http://www.pavothemes.com/"}],"rows":[]}]}]";}'),
(62, 'Category blogs', 'pavblogcategory', 'a:3:{s:4:"name";s:14:"Category blogs";s:11:"category_id";s:1:"1";s:6:"status";s:1:"1";}'),
(63, 'Last comment blog', 'pavblogcomment', 'a:3:{s:4:"name";s:17:"Last comment blog";s:5:"limit";s:1:"4";s:6:"status";s:1:"1";}'),
(58, 'Latest Blog', 'pavbloglatest', 'a:9:{s:4:"name";s:11:"Latest Blog";s:6:"status";s:1:"1";s:11:"description";a:2:{i:1;s:11:"											";i:2;s:52:"&lt;br&gt;																																										";}s:11:"prefixclass";s:0:"";s:4:"tabs";s:6:"latest";s:5:"width";s:3:"200";s:6:"height";s:3:"100";s:4:"cols";s:1:"1";s:5:"limit";s:1:"4";}'),
(61, 'Most view blog(content)', 'pavbloglatest', 'a:9:{s:4:"name";s:23:"Most view blog(content)";s:6:"status";s:1:"1";s:11:"description";a:2:{i:1;s:42:"																																										";i:2;s:42:"																																										";}s:11:"prefixclass";s:0:"";s:4:"tabs";s:10:"mostviewed";s:5:"width";s:3:"200";s:6:"height";s:3:"100";s:4:"cols";s:1:"4";s:5:"limit";s:1:"4";}'),
(68, 'Pav Carousel', 'pavcarousel', 'a:10:{s:4:"name";s:12:"Pav Carousel";s:6:"status";s:1:"1";s:9:"banner_id";s:1:"9";s:12:"itemsperpage";s:1:"6";s:5:"limit";s:2:"12";s:7:"columns";s:1:"6";s:9:"auto_play";s:1:"1";s:8:"interval";s:4:"3000";s:5:"width";s:3:"153";s:6:"height";s:2:"51";}'),
(76, 'Category Tabs - Computers', 'pavcategorytabs', 'a:15:{s:6:"status";s:1:"1";s:4:"name";s:25:"Category Tabs - Computers";s:11:"description";a:2:{i:1;s:29:"																													";i:2;s:29:"																													";}s:12:"prefix_class";s:0:"";s:11:"category_id";s:2:"25";s:5:"image";s:30:"catalog/banner/banner-cat4.jpg";s:6:"iwidth";s:3:"873";s:7:"iheight";s:3:"128";s:10:"limit_tabs";s:1:"4";s:10:"status_nav";s:1:"1";s:5:"width";s:3:"273";s:6:"height";s:3:"281";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:2:"12";}'),
(77, 'Category Tabs - Electronics', 'pavcategorytabs', 'a:15:{s:6:"status";s:1:"1";s:4:"name";s:27:"Category Tabs - Electronics";s:11:"description";a:2:{i:1;s:29:"																													";i:2;s:29:"																													";}s:12:"prefix_class";s:0:"";s:11:"category_id";s:2:"34";s:5:"image";s:30:"catalog/banner/banner-cat2.jpg";s:6:"iwidth";s:3:"873";s:7:"iheight";s:3:"128";s:10:"limit_tabs";s:1:"5";s:10:"status_nav";s:1:"1";s:5:"width";s:3:"273";s:6:"height";s:3:"281";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:2:"12";}'),
(75, 'Category Tabs - Homeware', 'pavcategorytabs', 'a:15:{s:6:"status";s:1:"1";s:4:"name";s:24:"Category Tabs - Homeware";s:11:"description";a:2:{i:1;s:29:"																													";i:2;s:29:"																													";}s:12:"prefix_class";s:0:"";s:11:"category_id";s:2:"20";s:5:"image";s:30:"catalog/banner/banner-cat3.jpg";s:6:"iwidth";s:3:"873";s:7:"iheight";s:3:"128";s:10:"limit_tabs";s:1:"5";s:10:"status_nav";s:1:"1";s:5:"width";s:3:"273";s:6:"height";s:3:"281";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:2:"16";}'),
(74, 'Category Tabs - Mobile', 'pavcategorytabs', 'a:15:{s:6:"status";s:1:"1";s:4:"name";s:22:"Category Tabs - Mobile";s:11:"description";a:2:{i:1;s:58:"																																																										";i:2;s:58:"																																																										";}s:12:"prefix_class";s:0:"";s:11:"category_id";s:2:"18";s:5:"image";s:30:"catalog/banner/banner-cat1.jpg";s:6:"iwidth";s:3:"873";s:7:"iheight";s:3:"128";s:10:"limit_tabs";s:1:"5";s:10:"status_nav";s:1:"1";s:5:"width";s:3:"273";s:6:"height";s:3:"281";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:2:"18";}'),
(80, 'Home  Default', 'pavhomebuilder', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:13:"Home  Default";s:5:"class";s:0:"";s:6:"layout";s:3534:"[{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"no-padding","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":8,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Product Tabs > Vertical ","module":"pavproducttabs.89","tyle":"module"}],"rows":[]},{"index":0,"cls":"no-padding","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Banners Builder > banner-content","module":"pavbannerbuilder.90","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Banners Builder > banner-top2","module":"pavbannerbuilder.88","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Vertical Category Tabs > Fashion","module":"pavverticalcategorytabs.81","tyle":"module"},{"name":"Pav Vertical Category Tabs > Cosmetics","module":"pavverticalcategorytabs.82","tyle":"module"},{"name":"Pav Vertical Category Tabs > Women Shoes","module":"pavverticalcategorytabs.83","tyle":"module"},{"name":"Pav Vertical Category Tabs > Mobile","module":"pavverticalcategorytabs.84","tyle":"module"},{"name":"Pav Vertical Category Tabs > Electronics","module":"pavverticalcategorytabs.85","tyle":"module"},{"name":"Pav Vertical Category Tabs > Infant toys","module":"pavverticalcategorytabs.86","tyle":"module"},{"name":"Pav Vertical Category Tabs > Food","module":"pavverticalcategorytabs.87","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Banners Builder > banner-bottom","module":"pavbannerbuilder.53","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Carousel > Pav Carousel","module":"pavcarousel.68","tyle":"module"}],"rows":[]}]},{"cls":"","bgcolor":"3a3a3a","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Newsletter > Newsletter","module":"pavnewsletter.56","tyle":"module"}],"rows":[]}]}]";}'),
(47, 'Home 2', 'pavhomebuilder', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 2";s:5:"class";s:0:"";s:6:"layout";s:4232:"[{"cls":"","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":"0 0","iattachment":"inherit","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":4,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Vertical MegaMenu > Vertical MegaMenu","module":"pavverticalmenu.69","tyle":"module"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":9,"mdcol":8,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slideshow Digital","module":"pavsliderlayer.51","tyle":"module"},{"name":"Pav Product Tabs > Product Tabs Top","module":"pavproducttabs.71","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Banners Builder > banner-top","module":"pavbannerbuilder.52","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"danger","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Reassurance > Free shipping","module":"pavreassurance.49","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":9,"mdcol":9,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Category Tabs > Category Tabs - Mobile","module":"pavcategorytabs.74","tyle":"module"},{"name":"Pav Category Tabs > Category Tabs - Electronics","module":"pavcategorytabs.77","tyle":"module"},{"name":"Pav Category Tabs > Category Tabs - Homeware","module":"pavcategorytabs.75","tyle":"module"},{"name":"Pav Category Tabs > Category Tabs - Computers","module":"pavcategorytabs.76","tyle":"module"}],"rows":[]},{"index":0,"cls":"sidebar","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Product Tabs > Product Tabs siderbar","module":"pavproducttabs.73","tyle":"module"},{"name":"Pav Banners Builder > banner-sidebar1","module":"pavbannerbuilder.54","tyle":"module"},{"name":"Pav Banners Builder > banner-sidebar2","module":"pavbannerbuilder.55","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Banners Builder > banner-bottom","module":"pavbannerbuilder.53","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Carousel > Pav Carousel","module":"pavcarousel.68","tyle":"module"}],"rows":[]}]},{"cls":"","bgcolor":"3A3A3A","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Newsletter > Newsletter","module":"pavnewsletter.56","tyle":"module"}],"rows":[]}]}]";}'),
(91, 'Home 3', 'pavhomebuilder', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 3";s:5:"class";s:0:"";s:6:"layout";s:4042:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"name":"Pav Vertical MegaMenu > Vertical MegaMenu","module":"pavverticalmenu.69","tyle":"module"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":9,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slideshow Digital","module":"pavsliderlayer.51","tyle":"module"},{"name":"Pav Product Tabs > Product Tabs Top","module":"pavproducttabs.71","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"name":"Pav Banners Builder > banner-top","module":"pavbannerbuilder.52","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"name":"Pav Reassurance > Free shipping","module":"pavreassurance.49","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"name":"Pav Vertical Category Tabs > Fashion","module":"pavverticalcategorytabs.81","tyle":"module"},{"name":"Pav Vertical Category Tabs > Cosmetics","module":"pavverticalcategorytabs.82","tyle":"module"},{"name":"Pav Vertical Category Tabs > Women Shoes","module":"pavverticalcategorytabs.83","tyle":"module"},{"name":"Pav Vertical Category Tabs > Mobile","module":"pavverticalcategorytabs.84","tyle":"module"},{"name":"Pav Vertical Category Tabs > Electronics","module":"pavverticalcategorytabs.85","tyle":"module"},{"name":"Pav Vertical Category Tabs > Infant toys","module":"pavverticalcategorytabs.86","tyle":"module"},{"name":"Pav Vertical Category Tabs > Food","module":"pavverticalcategorytabs.87","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"name":"Pav Banners Builder > banner-bottom","module":"pavbannerbuilder.53","tyle":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"name":"Pav Carousel > Pav Carousel","module":"pavcarousel.68","tyle":"module"}],"rows":[]}]},{"cls":"","bgcolor":"3A3A3A","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"3A3A3A","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":4,"smcol":6,"xscol":12,"widgets":[{"name":"Pav Newsletter > Newsletter","module":"pavnewsletter.56","tyle":"module"}],"rows":[]}]}]";}'),
(64, 'GoogleMap', 'pavmap', 'a:7:{s:6:"status";s:1:"1";s:4:"name";s:9:"GoogleMap";s:5:"title";a:2:{i:1;s:14:"pavo googlemap";i:2;s:0:"";}s:3:"des";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:6:"prefix";s:0:"";s:5:"limit";s:3:"200";s:6:"height";s:3:"330";}'),
(56, 'Newsletter', 'pavnewsletter', 'a:4:{s:4:"name";s:10:"Newsletter";s:6:"status";s:1:"1";s:11:"description";a:2:{i:1;s:70:"&lt;p&gt;&lt;strong&gt;Sign up for newsletter&lt;/strong&gt;&lt;/p&gt;";i:2;s:99:"															&lt;p&gt;&lt;strong&gt;Sign up &lt;/strong&gt;for newsletter&lt;/p&gt;														";}s:6:"social";a:2:{i:1;s:87:"																																																																																							";i:2;s:87:"																																																																																							";}}'),
(73, 'Product Tabs siderbar', 'pavproducttabs', 'a:10:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:21:"Product Tabs siderbar";s:6:"status";s:1:"1";s:12:"module_class";s:0:"";s:4:"tabs";a:2:{i:0;s:6:"latest";i:1;s:10:"bestseller";}s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"4";s:5:"limit";s:1:"4";}'),
(71, 'Product Tabs Top', 'pavproducttabs', 'a:10:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:16:"Product Tabs Top";s:6:"status";s:1:"1";s:12:"module_class";s:22:"box-center box-variant";s:4:"tabs";a:1:{i:0;s:10:"bestseller";}s:5:"width";s:3:"105";s:6:"height";s:3:"108";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"4";s:5:"limit";s:1:"4";}'),
(89, 'Vertical ', 'pavproducttabs', 'a:10:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:9:"Vertical ";s:6:"status";s:1:"1";s:12:"module_class";s:8:"box-left";s:4:"tabs";a:1:{i:0;s:10:"bestseller";}s:5:"width";s:3:"204";s:6:"height";s:3:"210";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:2:"12";}'),
(49, 'Free shipping', 'pavreassurance', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:13:"Free shipping";s:6:"prefix";s:0:"";s:15:"pavreassurances";a:4:{i:1;a:5:{s:11:"select_icon";s:8:"fa-truck";s:23:"reassurance_prefixclass";s:0:"";s:5:"title";a:2:{i:1;s:13:"Free shipping";i:2;s:13:"Free shipping";}s:7:"caption";a:2:{i:1;s:59:"&lt;p&gt;Get Free Shipping on all orders over $75&lt;/p&gt;";i:2;s:59:"&lt;p&gt;Get Free Shipping on all orders over $75&lt;/p&gt;";}s:6:"detail";a:2:{i:1;s:1478:"&lt;div class=&quot;title_detail&quot;&gt;&lt;div class=&quot;icon-name fa fa-truck pull-left&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;description&quot;&gt;&lt;h4&gt;Free&lt;br&gt;Shipping&lt;/h4&gt;&lt;p&gt;One order over $99&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;info&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/div&gt;";i:2;s:1478:"&lt;div class=&quot;title_detail&quot;&gt;&lt;div class=&quot;icon-name fa fa-truck pull-left&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;description&quot;&gt;&lt;h4&gt;Free&lt;br&gt;Shipping&lt;/h4&gt;&lt;p&gt;One order over $99&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;info&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/div&gt;";}}i:2;a:5:{s:11:"select_icon";s:8:"fa-money";s:23:"reassurance_prefixclass";s:0:"";s:5:"title";a:2:{i:1;s:20:"Best price guarantee";i:2;s:20:"Best price guarantee";}s:7:"caption";a:2:{i:1;s:39:"&lt;p&gt;We''ll beat it by 10%&lt;/p&gt;";i:2;s:39:"&lt;p&gt;We''ll beat it by 10%&lt;/p&gt;";}s:6:"detail";a:2:{i:1;s:1480:"&lt;div class=&quot;title_detail&quot;&gt;&lt;div class=&quot;icon-name fa fa-life-ring pull-left&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;description&quot;&gt;&lt;h4&gt;Best price guarantee&lt;/h4&gt;&lt;p&gt;One order over $99&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;info&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/div&gt;";i:2;s:1520:"&lt;div class=&quot;title_detail&quot;&gt;&lt;div class=&quot;icon-name fa fa-life-ring pull-left&quot;&gt;&amp;nbsp;&lt;/div&gt;aaaaaaaa&lt;div class=&quot;description&quot;&gt;&lt;h4&gt;Best price guarantee&lt;/h4&gt;aaaaaaaa&lt;p&gt;One order over $99&lt;/p&gt;aaaaaaaa&lt;/div&gt;aaaaaaaa&lt;/div&gt;aaaaaaaa&lt;div class=&quot;info&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/div&gt;";}}i:3;a:5:{s:11:"select_icon";s:10:"fa-smile-o";s:23:"reassurance_prefixclass";s:0:"";s:5:"title";a:2:{i:1;s:19:"Click &amp; Collect";i:2;s:19:"Click &amp; Collect";}s:7:"caption";a:2:{i:1;s:57:"&lt;p&gt;Shop Online &amp;amp; Collect In-Store&lt;/p&gt;";i:2;s:71:"&lt;p&gt;Shop Online &amp;amp;amp; Collect In-Store&lt;br&gt;&lt;/p&gt;";}s:6:"detail";a:2:{i:1;s:1481:"&lt;div class=&quot;title_detail&quot;&gt;&lt;div class=&quot;icon-name fa fa-smile-o pull-left&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;description&quot;&gt;&lt;h4&gt;Click &amp;amp; Collect&lt;/h4&gt;&lt;p&gt;One order over $99&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;info&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/div&gt;";i:2;s:1481:"&lt;div class=&quot;title_detail&quot;&gt;&lt;div class=&quot;icon-name fa fa-smile-o pull-left&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;description&quot;&gt;&lt;h4&gt;Click &amp;amp; Collect&lt;/h4&gt;&lt;p&gt;One order over $99&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;info&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/div&gt;";}}i:4;a:5:{s:11:"select_icon";s:13:"fa-comments-o";s:23:"reassurance_prefixclass";s:0:"";s:5:"title";a:2:{i:1;s:18:"24 Months Interest";i:2;s:18:"24 Months Interest";}s:7:"caption";a:2:{i:1;s:47:"&lt;p&gt;Free Apply for interest free&lt;/p&gt;";i:2;s:47:"&lt;p&gt;Free Apply for interest free&lt;/p&gt;";}s:6:"detail";a:2:{i:1;s:1476:"&lt;div class=&quot;title_detail&quot;&gt;&lt;div class=&quot;icon-name fa fa-smile-o pull-left&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;description&quot;&gt;&lt;h4&gt;24 Months Interest&lt;/h4&gt;&lt;p&gt;One order over $99&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;info&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/div&gt;";i:2;s:1496:"&lt;div class=&quot;title_detail&quot;&gt;&lt;div class=&quot;icon-name fa fa-smile-o pull-left&quot;&gt;&amp;nbsp;&lt;/div&gt;aaaa&lt;div class=&quot;description&quot;&gt;&lt;h4&gt;24 Months Interest&lt;/h4&gt;aaaa&lt;p&gt;One order over $99&lt;/p&gt;aaaa&lt;/div&gt;aaaa&lt;/div&gt;aaaa&lt;div class=&quot;info&quot;&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/div&gt;";}}}}'),
(51, 'Slideshow Digital', 'pavsliderlayer', 'a:4:{s:4:"name";s:17:"Slideshow Digital";s:6:"status";s:1:"1";s:8:"group_id";s:1:"1";s:21:"pavsliderlayer_module";a:0:{}}'),
(79, 'Slideshow Full-silde', 'pavsliderlayer', 'a:4:{s:4:"name";s:20:"Slideshow Full-silde";s:6:"status";s:1:"1";s:8:"group_id";s:1:"4";s:21:"pavsliderlayer_module";a:0:{}}'),
(59, 'Social Left', 'pavsocial', 'a:25:{s:6:"status";s:1:"1";s:4:"name";s:11:"Social Left";s:8:"facebook";s:35:"https://www.facebook.com/Pavothemes";s:14:"application_id";s:0:"";s:12:"border_color";s:7:"#FFFFFF";s:11:"colorscheme";s:5:"light";s:10:"face_width";s:3:"270";s:11:"face_height";s:3:"355";s:5:"tream";s:1:"1";s:10:"show_faces";s:1:"1";s:6:"header";s:1:"1";s:9:"widget_id";s:18:"366766896986591232";s:5:"count";s:1:"2";s:8:"username";s:10:"PavoThemes";s:5:"theme";s:5:"light";s:14:"nickname_color";s:7:"#FFFFFF";s:10:"name_color";s:7:"#2465FF";s:11:"title_color";s:7:"#2465FF";s:10:"link_color";s:7:"#2465FF";s:5:"width";s:3:"270";s:6:"height";s:3:"355";s:12:"show_replies";s:1:"0";s:17:"youtube_video_ids";s:11:"oJOnoKZiJQA";s:11:"video_width";s:3:"270";s:12:"video_height";s:3:"137";}'),
(82, 'Cosmetics', 'pavverticalcategorytabs', 'a:16:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:9:"Cosmetics";s:6:"status";s:1:"1";s:12:"prefix_class";s:8:"box-pink";s:11:"category_id";s:2:"67";s:5:"image";s:34:"catalog/banner/banner-cat2 (2).jpg";s:6:"iwidth";s:3:"249";s:7:"iheight";s:3:"348";s:15:"banner_position";s:1:"1";s:10:"limit_tabs";s:1:"5";s:5:"width";s:3:"450";s:6:"height";s:3:"463";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:1:"9";s:12:"tab_position";s:1:"1";}'),
(85, 'Electronics', 'pavverticalcategorytabs', 'a:16:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:11:"Electronics";s:6:"status";s:1:"1";s:12:"prefix_class";s:8:"box-aqua";s:11:"category_id";s:2:"34";s:5:"image";s:30:"catalog/banner/banner-cat5.jpg";s:6:"iwidth";s:3:"249";s:7:"iheight";s:3:"348";s:15:"banner_position";s:1:"1";s:10:"limit_tabs";s:1:"8";s:5:"width";s:3:"450";s:6:"height";s:3:"463";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:1:"9";s:12:"tab_position";s:1:"1";}'),
(81, 'Fashion', 'pavverticalcategorytabs', 'a:16:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:7:"Fashion";s:6:"status";s:1:"1";s:12:"prefix_class";s:10:"box-purple";s:11:"category_id";s:2:"73";s:5:"image";s:34:"catalog/banner/banner-cat1 (2).jpg";s:6:"iwidth";s:3:"249";s:7:"iheight";s:3:"348";s:15:"banner_position";s:1:"1";s:10:"limit_tabs";s:1:"5";s:5:"width";s:3:"450";s:6:"height";s:3:"463";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:1:"9";s:12:"tab_position";s:1:"1";}'),
(87, 'Food', 'pavverticalcategorytabs', 'a:16:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:4:"Food";s:6:"status";s:1:"1";s:12:"prefix_class";s:9:"box-brown";s:11:"category_id";s:2:"78";s:5:"image";s:30:"catalog/banner/banner-cat7.jpg";s:6:"iwidth";s:3:"249";s:7:"iheight";s:3:"348";s:15:"banner_position";s:1:"1";s:10:"limit_tabs";s:1:"6";s:5:"width";s:3:"450";s:6:"height";s:3:"463";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:1:"9";s:12:"tab_position";s:1:"1";}'),
(86, 'Infant toys', 'pavverticalcategorytabs', 'a:16:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:11:"Infant toys";s:6:"status";s:1:"1";s:12:"prefix_class";s:11:"box-tundora";s:11:"category_id";s:2:"83";s:5:"image";s:30:"catalog/banner/banner-cat6.jpg";s:6:"iwidth";s:3:"249";s:7:"iheight";s:3:"348";s:15:"banner_position";s:1:"1";s:10:"limit_tabs";s:1:"6";s:5:"width";s:3:"450";s:6:"height";s:3:"463";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:1:"9";s:12:"tab_position";s:1:"1";}'),
(84, 'Mobile', 'pavverticalcategorytabs', 'a:16:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:6:"Mobile";s:6:"status";s:1:"1";s:12:"prefix_class";s:8:"box-blue";s:11:"category_id";s:2:"18";s:5:"image";s:34:"catalog/banner/banner-cat4 (2).jpg";s:6:"iwidth";s:3:"249";s:7:"iheight";s:3:"348";s:15:"banner_position";s:1:"1";s:10:"limit_tabs";s:1:"5";s:5:"width";s:3:"450";s:6:"height";s:3:"463";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:1:"9";s:12:"tab_position";s:1:"1";}'),
(83, 'Women Shoes', 'pavverticalcategorytabs', 'a:16:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:11:"Women Shoes";s:6:"status";s:1:"1";s:12:"prefix_class";s:12:"box-bluedark";s:11:"category_id";s:2:"88";s:5:"image";s:34:"catalog/banner/banner-cat3 (2).jpg";s:6:"iwidth";s:3:"249";s:7:"iheight";s:3:"348";s:15:"banner_position";s:1:"1";s:10:"limit_tabs";s:1:"5";s:5:"width";s:3:"450";s:6:"height";s:3:"463";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:1:"9";s:12:"tab_position";s:1:"1";}'),
(69, 'Vertical MegaMenu', 'pavverticalmenu', 'a:2:{s:6:"status";s:1:"1";s:4:"name";s:17:"Vertical MegaMenu";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'Your Store', '/dev/oc/2.0/opencart2.0.1/pav_megashop/', 0, 1, 'test', 'tester', 'nmc2010@gmail.com', '1213123', '12312313', 'a:0:{}', 'test', 'test', 'asd', 'aaa', 'ssss', 'ASDASD', 'admin', 'United Arab Emirates', 221, 'R''as al Khaymah', 3511, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'nmc2010', 'nmc', 'asd', 'aaa', 'ssss', 'ASDASD', 'admin', 'United Arab Emirates', 221, 'R''as al Khaymah', 3511, '', 'a:0:{}', 'Flat Shipping Rate', 'flat.flat', '', 254.0000, 1, 0, 0.0000, 0, '', 1, 1, 'GBP', 0.63760000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 'en-US,en;q=0.5', '2014-12-08 08:33:31', '2014-12-08 08:33:33'),
(2, 0, 'INV-2013-00', 0, 'Your Store', '/dev/oc/2.0/opencart2.0.1/pav_megashop/', 0, 1, 'test', 'test', 'nmc20000@gmail.com', '112312313', '12312313', 'a:0:{}', 'test', 'test', 'asd', 'aaa', 'ssss', 'ASDASD', 'admin', 'United Arab Emirates', 221, 'R''as al Khaymah', 3511, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'nmc2010', 'nmc', 'asd', 'aaa', 'ssss', 'ASDASD', 'admin', 'United Arab Emirates', 221, 'R''as al Khaymah', 3511, '', 'a:0:{}', 'Flat Shipping Rate', 'flat.flat', '', 905.0000, 1, 0, 0.0000, 0, '', 1, 1, 'GBP', 0.63760000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 'en-US,en;q=0.5', '2014-12-08 17:28:27', '2014-12-08 17:28:29'),
(3, 0, 'INV-2013-00', 0, 'Your Store', '/dev/oc/2.0/opencart2.0.1/pav_megashop/', 0, 1, 'Mr', 'Tester', 'nmc200001@gmail.comsd', '112312313', '', 'a:0:{}', 'test', 'test', 'asd', 'aaa', 'ssss', 'ASDASD', 'admin', 'United Arab Emirates', 221, 'R''as al Khaymah', 3511, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'Cuong', 'NGuyen Manh', 'asd', 'aaa', 'ssss', 'ASDASD', 'admin', 'United Arab Emirates', 221, 'R''as al Khaymah', 3511, '', 'a:0:{}', 'Flat Shipping Rate', 'flat.flat', '', 355.0000, 1, 0, 0.0000, 0, '', 1, 1, 'GBP', 0.63760000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', 'en-US,en;q=0.5', '2014-12-08 17:33:59', '2014-12-08 17:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_fraud`
--

CREATE TABLE IF NOT EXISTS `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2014-12-08 08:33:33'),
(2, 2, 1, 0, '', '2014-12-08 17:28:29'),
(3, 3, 1, 0, '', '2014-12-08 17:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 3, 6, 225, 0, 'Delivery Date', '2011-04-22', 'date');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 2145, 'Aenean quis laoreet nunc', 'fashion', 1, 249.0000, 249.0000, 0.0000, 0),
(2, 2, 136, 'Furabitur sedg', 'ipad', 3, 300.0000, 900.0000, 0.0000, 0),
(3, 3, 138, 'Kunc euismods', 'food', 1, 125.0000, 125.0000, 0.0000, 0),
(4, 3, 134, 'Clearis', 'ipad', 1, 0.0000, 0.0000, 0.0000, 0),
(5, 3, 140, 'Surabir sedg', 'product', 1, 125.0000, 125.0000, 0.0000, 0),
(6, 3, 47, 'Eleifend', 'Product19', 1, 100.0000, 100.0000, 0.0000, 300);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', 249.0000, 1),
(2, 1, 'shipping', 'Flat Shipping Rate', 5.0000, 3),
(3, 1, 'total', 'Total', 254.0000, 9),
(4, 2, 'sub_total', 'Sub-Total', 900.0000, 1),
(5, 2, 'shipping', 'Flat Shipping Rate', 5.0000, 3),
(6, 2, 'total', 'Total', 905.0000, 9),
(7, 3, 'sub_total', 'Sub-Total', 350.0000, 1),
(8, 3, 'shipping', 'Flat Shipping Rate', 5.0000, 3),
(9, 3, 'total', 'Total', 355.0000, 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_pavblog_blog`
--

INSERT INTO `oc_pavblog_blog` (`blog_id`, `category_id`, `position`, `created`, `status`, `user_id`, `hits`, `image`, `meta_keyword`, `meta_description`, `meta_title`, `date_modified`, `video_code`, `params`, `tags`, `featured`, `keyword`) VALUES
(7, 21, 2, '2013-03-09', 1, 1, 47, 'catalog/blog/home1.jpg', '', '', '', '2014-11-06', '', '', 'joomla, prestashop, magento', 1, ''),
(9, 21, 0, '2013-03-09', 1, 1, 76, 'catalog/blog/pav-c4.jpg', '', '', '', '2014-11-06', '', '', 'prestashop, magento', 0, ''),
(10, 21, 0, '2013-03-09', 1, 1, 269, 'catalog/blog/pav-c6.jpg', 'test test', '', 'Custom SEO Titlte', '2014-11-19', '', '', 'megashop', 0, ''),
(11, 21, 0, '2013-03-11', 1, 1, 115, 'catalog/blog/pav-c4.jpg', '', '', '', '2014-11-06', '', '', 'opencart', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog_description`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

INSERT INTO `oc_pavblog_blog_description` (`blog_id`, `language_id`, `title`, `description`, `content`) VALUES
(7, 1, 'Ac tincidunt Suspendisse malesuada', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(9, 1, 'Commodo laoreet semper tincidunt lorem ', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(11, 1, 'Donec tellus Nulla lorem Nullam elit id ut', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(10, 1, 'Neque porro quisquam est, qui dolorem ipsum', '&lt;p&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n', '&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;'),
(7, 2, 'Ac tincidunt Suspendisse malesuada', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(9, 2, 'Commodo laoreet semper tincidunt lorem ', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(11, 2, 'Donec tellus Nulla lorem Nullam elit id ut', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(10, 2, 'Neque porro quisquam est, qui dolorem ipsum', '&lt;p&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n', '&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `oc_pavblog_category`
--

INSERT INTO `oc_pavblog_category` (`category_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `meta_keyword`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `meta_description`, `meta_title`, `level`, `left`, `right`, `keyword`) VALUES
(1, '', 0, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 0, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, -5, 34, 47, ''),
(20, 'catalog/blog/pav-i1.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 3, 0, NULL, NULL, 0, 'top', 'test test', NULL, '', '', 0, 0, 0, ''),
(21, 'catalog/blog/pav-c2.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(22, 'catalog/blog/pav-c1.jpg', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(23, 'catalog/blog/pav-c5.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(24, 'catalog/blog/pav-c3.jpg', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category_description`
--

INSERT INTO `oc_pavblog_category_description` (`category_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'ROOT', 'Menu Root'),
(20, 2, 'Praesent ', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus \r\nVestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit \r\nsemper scelerisque convallis&lt;/p&gt;'),
(23, 2, 'Malesuada ', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus \r\nVestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit \r\nsemper scelerisque convallis&lt;/p&gt;'),
(21, 2, 'Vestibulum', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus \r\nVestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit \r\nsemper scelerisque convallis&lt;/p&gt;'),
(21, 1, 'Vestibulum', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),
(22, 1, 'Suspendisse', '&lt;p&gt;Enter your Category 1 Description Here&lt;/p&gt;\r\n'),
(23, 1, 'Malesuada ', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),
(20, 1, 'Praesent ', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n'),
(24, 1, 'Praesent ', '&lt;p&gt;Description Here&lt;/p&gt;\r\n'),
(22, 2, 'Suspendisse ', '&lt;p&gt;Enter your Category 1 Description Here&lt;/p&gt;'),
(24, 2, 'Praesent ', '&lt;p&gt;Description Here&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_comment`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_blog_comment` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_pavblog_comment`
--

INSERT INTO `oc_pavblog_comment` (`comment_id`, `blog_id`, `comment`, `status`, `created`, `user`, `email`) VALUES
(6, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:23:09', 'ha cong tien', 'hatuhn@gmail.com'),
(7, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:25:19', 'ha cong tien', 'hatuhn@gmail.com'),
(8, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:30:17', 'Test Test ', 'ngoisao@aa.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavmap_group_location`
--

CREATE TABLE IF NOT EXISTS `oc_pavmap_group_location` (
  `group_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_location_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_pavmap_group_location`
--

INSERT INTO `oc_pavmap_group_location` (`group_location_id`, `name`, `store_id`, `status`) VALUES
(1, 'Default', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavmap_location`
--

CREATE TABLE IF NOT EXISTS `oc_pavmap_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_location_id` int(11) NOT NULL,
  `link` text,
  `address` varchar(225) DEFAULT '',
  `latitude` varchar(225) DEFAULT NULL,
  `longitude` varchar(225) DEFAULT NULL,
  `icon` varchar(225) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_pavmap_location`
--

INSERT INTO `oc_pavmap_location` (`location_id`, `group_location_id`, `link`, `address`, `latitude`, `longitude`, `icon`, `image`, `status`) VALUES
(1, 1, '#', '', '40.712262', '-73.960538', 'data/pavmap/icons/default.png', 'data/pavmap/address/1.jpg', 1),
(2, 1, '#', '', '40.703647', '-74.010822', 'data/pavmap/icons/automotive.png', 'data/pavmap/address/2.jpg', 1),
(3, 1, '#', '', '40.706071', '-74.004201', 'data/pavmap/icons/food.png', 'data/pavmap/address/3.jpg', 1),
(4, 1, '#', '', '40.714910', '-74.011423', 'data/pavmap/icons/education.png', 'data/pavmap/address/4.jpg', 1),
(5, 1, '#', '', '40.703223', '-73.994081', 'data/pavmap/icons/shopping.png', 'data/pavmap/address/5.jpg', 1),
(6, 1, '#', '', '40.695267', '-73.995166', 'data/pavmap/icons/sports.png', 'data/pavmap/address/6.jpg', 1),
(7, 1, '#', '', '40.719068', '-74.001530', 'data/pavmap/icons/tech.png', 'data/pavmap/address/7.jpg', 1),
(8, 1, '#', '', '40.693761', '-73.988656', 'data/pavmap/icons/automotive.png', 'data/pavmap/address/8.jpg', 1),
(9, 1, '#', '', '40.705423', '-74.008616', 'data/pavmap/icons/company.png', 'data/pavmap/address/9.jpg', 1),
(10, 1, '#', '', '40.703647', '-74.001530', 'data/pavmap/icons/tech.png', 'data/pavmap/address/8.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavmap_location_description`
--

CREATE TABLE IF NOT EXISTS `oc_pavmap_location_description` (
  `location_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavmap_location_description`
--

INSERT INTO `oc_pavmap_location_description` (`location_id`, `language_id`, `title`, `content`) VALUES
(3, 1, 'title 3', 'content 3'),
(3, 2, 'title 3', 'content 3'),
(1, 1, 'title 1', 'content 1'),
(1, 2, 'title 1', 'content 1'),
(2, 1, 'title 2', 'content 2'),
(2, 2, 'title 2', 'content 2'),
(5, 1, 'title 5', 'content 5'),
(5, 2, 'title 5', 'content 5'),
(6, 2, 'title 6', 'content 6'),
(6, 1, 'title 6', 'content 6'),
(7, 2, 'title 7', 'content 7'),
(7, 1, 'title 7', 'content 7'),
(8, 2, 'title 8', 'content 8'),
(8, 1, 'title 8', 'content 8'),
(9, 1, 'title 9', 'content 9'),
(9, 2, 'title 9', 'content 9'),
(4, 1, 'title 4', 'content 4'),
(4, 2, 'title 4', 'content 4'),
(10, 1, 'title 10', 'content 10'),
(10, 2, 'title 10', 'content 10');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_email`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_email` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `attach` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `defined` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `latest` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `defined_categories` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `defined_products` varchar(255) DEFAULT NULL,
  `defined_products_more` varchar(255) DEFAULT NULL,
  `only_selected_language` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `to` varchar(200) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_history`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `public_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` text,
  `message` text,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_subscribe`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `action` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`subscribe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_pavnewsletter_subscribe`
--

INSERT INTO `oc_pavnewsletter_subscribe` (`subscribe_id`, `customer_id`, `store_id`, `email`, `action`) VALUES
(1, 0, 0, 'nmc2010@gmail.com', 1),
(2, 0, 0, 'nmc2020@gmail.com', 1),
(3, 0, 0, 'nmc2010000@gmail.com', 1),
(4, 2, 0, 'abc@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `hits` tinyint(4) DEFAULT '0',
  `template_file` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_pavnewsletter_template`
--

INSERT INTO `oc_pavnewsletter_template` (`template_id`, `name`, `hits`, `template_file`, `is_default`, `date_added`, `ordering`, `date_modified`) VALUES
(1, 'newletter', 0, NULL, 0, '2014-12-04 09:49:24', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template_description`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_template_description` (
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavnewsletter_template_description`
--

INSERT INTO `oc_pavnewsletter_template_description` (`template_id`, `language_id`, `subject`, `template_message`) VALUES
(1, 1, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavoslidergroups`
--

CREATE TABLE IF NOT EXISTS `oc_pavoslidergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_pavoslidergroups`
--

INSERT INTO `oc_pavoslidergroups` (`id`, `title`, `params`) VALUES
(1, 'Slider Digital', 'a:28:{s:5:"title";s:14:"Slider Digital";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:9:"fullwidth";s:5:"width";s:3:"875";s:6:"height";s:3:"385";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"0";s:14:"show_time_line";s:1:"0";s:18:"time_line_position";s:6:"bottom";s:16:"background_color";s:0:"";s:6:"margin";s:12:"0px 0px 20px";s:7:"padding";s:7:"0px 0px";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:4:"none";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}'),
(4, 'Slider Full', 'a:28:{s:5:"title";s:11:"Slider Full";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:9:"fullwidth";s:5:"width";s:4:"1170";s:6:"height";s:3:"480";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"0";s:14:"show_time_line";s:1:"1";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:7:"#d9d9d9";s:6:"margin";s:11:"0px 0px 0px";s:7:"padding";s:7:"0px 0px";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:4:"none";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavosliderlayers`
--

CREATE TABLE IF NOT EXISTS `oc_pavosliderlayers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `params` text NOT NULL,
  `layersparams` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `language_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `oc_pavosliderlayers`
--

INSERT INTO `oc_pavosliderlayers` (`id`, `title`, `parent_id`, `group_id`, `params`, `layersparams`, `image`, `status`, `position`, `language_id`) VALUES
(1, 'Slider 1', 0, 1, 'a:17:{s:2:"id";s:1:"1";s:15:"slider_group_id";s:1:"1";s:12:"slider_title";s:8:"Slider 1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"1";s:9:"slider_id";s:1:"1";s:12:"slider_image";s:26:"catalog/layerslider/bg.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:5:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:31:"catalog/layerslider/layer-1.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 6";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"81";s:10:"layer_left";s:3:"417";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"684";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"Hind_big_white";s:13:"layer_caption";s:11:"last chance";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"103";s:10:"layer_left";s:2:"55";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1707";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:19:"Hind_very_big_white";s:13:"layer_caption";s:11:"bigest sale";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"167";s:10:"layer_left";s:2:"53";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2845";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:16:"Hind_small_white";s:13:"layer_caption";s:49:"Women&quot;s One Shoulder Shirred Bust Long Dress";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"222";s:10:"layer_left";s:2:"59";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"4162";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:29:"btn btn-links btn btn-outline";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"284";s:10:"layer_left";s:2:"65";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"5702";}}}', 'catalog/layerslider/bg.jpg', 1, 0, 0),
(3, 'Slider 2', 0, 1, 'a:17:{s:2:"id";s:1:"3";s:15:"slider_group_id";s:1:"1";s:12:"slider_title";s:8:"Slider 2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"1";s:9:"slider_id";s:1:"3";s:12:"slider_image";s:32:"catalog/layerslider/slide_09.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:7:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:16:"large_black_text";s:13:"layer_caption";s:18:"Get into newseason";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"81";s:10:"layer_left";s:2:"54";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"573";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sfl";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"152";s:10:"layer_left";s:2:"60";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1453";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"161";s:10:"layer_left";s:3:"164";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2580";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:30:"catalog/layerslider/layer5.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 9";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"144";s:10:"layer_left";s:3:"215";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3701";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:15:"very_large_text";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"156";s:10:"layer_left";s:3:"256";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3862";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_white";s:13:"layer_caption";s:51:" Women&quot;s One Shoulder Shirred Bust Long Dress ";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"238";s:10:"layer_left";s:2:"62";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"5088";}i:6;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:7;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:29:"btn btn-links btn btn-outline";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"306";s:10:"layer_left";s:2:"63";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"6765";}}}', 'catalog/layerslider/slide_09.jpg', 1, 0, 0),
(4, 'Slider 3', 0, 1, 'a:17:{s:2:"id";s:1:"4";s:15:"slider_group_id";s:1:"1";s:12:"slider_title";s:8:"Slider 3";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"1";s:9:"slider_id";s:1:"4";s:12:"slider_image";s:32:"catalog/layerslider/slide_08.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:6:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:16:"large_black_text";s:13:"layer_caption";s:18:"Get into newseason";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"22";s:10:"layer_left";s:3:"495";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"573";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sfl";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"73";s:10:"layer_left";s:3:"535";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1453";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"86";s:10:"layer_left";s:3:"642";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2580";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:15:"very_large_text";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"84";s:10:"layer_left";s:3:"690";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3862";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_white";s:13:"layer_caption";s:51:" Women&quot;s One Shoulder Shirred Bust Long Dress ";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"146";s:10:"layer_left";s:3:"493";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"5088";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:29:"btn btn-links btn btn-outline";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"217";s:10:"layer_left";s:3:"697";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"6765";}}}', 'catalog/layerslider/slide_08.jpg', 1, 0, 0),
(5, 'slide-full1', 0, 4, 'a:17:{s:2:"id";s:1:"5";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:11:"slide-full1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:1:"5";s:12:"slider_image";s:34:"catalog/layerslider/slider-bg1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:7:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_great";s:13:"layer_caption";s:19:"Get into new season";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"77";s:10:"layer_left";s:3:"141";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sfl";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"159";s:10:"layer_left";s:3:"142";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"908";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"169";s:10:"layer_left";s:3:"255";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_black";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"161";s:10:"layer_left";s:3:"308";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1551";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_black";s:13:"layer_caption";s:45:"Wash cool save energy a revolution in washing";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"265";s:10:"layer_left";s:3:"143";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2235";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"btn-links btn-inverse";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:4:"fade";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"318";s:10:"layer_left";s:3:"148";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3255";}i:6;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:7;s:13:"layer_content";s:33:"catalog/layerslider/special-1.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 7";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:1:"0";s:10:"layer_left";s:3:"976";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"4853";}}}', 'catalog/layerslider/slider-bg1.jpg', 1, 0, 0),
(6, 'Of slide-full2', 0, 4, 'a:17:{s:2:"id";s:1:"6";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:14:"Of slide-full2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:1:"6";s:12:"slider_image";s:34:"catalog/layerslider/slider-bg2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:7:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_great";s:13:"layer_caption";s:19:"Get into new season";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"77";s:10:"layer_left";s:3:"141";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sfl";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"159";s:10:"layer_left";s:3:"142";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"908";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"169";s:10:"layer_left";s:3:"255";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_black";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"161";s:10:"layer_left";s:3:"308";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1551";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_black";s:13:"layer_caption";s:45:"Wash cool save energy a revolution in washing";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"265";s:10:"layer_left";s:3:"143";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2235";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"btn-links btn-inverse";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:4:"fade";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"318";s:10:"layer_left";s:3:"148";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3255";}i:6;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:7;s:13:"layer_content";s:33:"catalog/layerslider/special-1.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 7";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:1:"0";s:10:"layer_left";s:3:"976";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"4853";}}}', 'catalog/layerslider/slider-bg2.jpg', 1, 0, 0),
(7, 'slide-full3', 0, 4, 'a:17:{s:2:"id";s:1:"7";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:11:"slide-full3";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:1:"7";s:12:"slider_image";s:34:"catalog/layerslider/slider-bg3.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:6:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_great";s:13:"layer_caption";s:19:"Get into new season";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"77";s:10:"layer_left";s:3:"141";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sfl";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"159";s:10:"layer_left";s:3:"142";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"908";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"169";s:10:"layer_left";s:3:"255";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_black";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"161";s:10:"layer_left";s:3:"308";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1551";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_black";s:13:"layer_caption";s:45:"Wash cool save energy a revolution in washing";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"265";s:10:"layer_left";s:3:"143";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2235";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"btn-links btn-inverse";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:4:"fade";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"318";s:10:"layer_left";s:3:"148";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3255";}}}', 'catalog/layerslider/slider-bg3.jpg', 1, 0, 0),
(10, 'Copy Of slider2', 0, 1, 'a:17:{s:2:"id";s:2:"10";s:15:"slider_group_id";s:1:"1";s:12:"slider_title";s:15:"Copy Of slider2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:7:"boxfade";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"10";s:12:"slider_image";s:26:"catalog/layerslider/bg.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:5:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:31:"catalog/layerslider/layer-1.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 7";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"450";s:9:"layer_top";s:2:"78";s:10:"layer_left";s:3:"421";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1225";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"Hind_big_white";s:13:"layer_caption";s:11:"last chance";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"450";s:9:"layer_top";s:2:"79";s:10:"layer_left";s:2:"44";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1853";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:19:"Hind_very_big_white";s:13:"layer_caption";s:11:"bigest sale";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"400";s:9:"layer_top";s:3:"155";s:10:"layer_left";s:2:"44";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3157";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:16:"Hind_small_white";s:13:"layer_caption";s:49:"Women&quot;s One Shoulder Shirred Bust Long Dress";s:15:"layer_animation";s:3:"lfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"207";s:10:"layer_left";s:2:"47";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"4297";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:29:"btn btn-links btn btn-outline";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"450";s:9:"layer_top";s:3:"258";s:10:"layer_left";s:2:"50";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"5954";}}}', 'catalog/layerslider/bg.jpg', 1, 0, 1),
(9, 'slider2', 0, 1, 'a:17:{s:2:"id";s:1:"9";s:15:"slider_group_id";s:1:"1";s:12:"slider_title";s:7:"slider2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:7:"boxfade";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:1:"9";s:12:"slider_image";s:32:"catalog/layerslider/slide_09.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:7:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:16:"large_black_text";s:13:"layer_caption";s:18:"Get into newseason";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"84";s:10:"layer_left";s:2:"44";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"151";s:10:"layer_left";s:2:"46";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1314";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"163";s:10:"layer_left";s:3:"153";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2228";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:30:"catalog/layerslider/layer5.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 7";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"150";s:10:"layer_left";s:3:"199";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2800";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:15:"very_large_text";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"162";s:10:"layer_left";s:3:"232";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2869";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_white";s:13:"layer_caption";s:51:" Women&quot;s One Shoulder Shirred Bust Long Dress ";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"239";s:10:"layer_left";s:2:"49";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3966";}i:6;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:7;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:29:"btn btn-links btn btn-outline";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"289";s:10:"layer_left";s:2:"49";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"4816";}}}', 'catalog/layerslider/slide_09.jpg', 1, 0, 1),
(11, ' slider3', 0, 1, 'a:17:{s:2:"id";s:2:"11";s:15:"slider_group_id";s:1:"1";s:12:"slider_title";s:8:" slider3";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:7:"boxfade";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"11";s:12:"slider_image";s:32:"catalog/layerslider/slide_08.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:6:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:16:"large_black_text";s:13:"layer_caption";s:18:"Get into newseason";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"21";s:10:"layer_left";s:3:"497";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"75";s:10:"layer_left";s:3:"563";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1132";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"88";s:10:"layer_left";s:3:"669";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1681";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:15:"very_large_text";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"87";s:10:"layer_left";s:3:"712";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2504";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_white";s:13:"layer_caption";s:51:" Women&quot;s One Shoulder Shirred Bust Long Dress ";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"149";s:10:"layer_left";s:3:"489";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3783";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:29:"btn btn-links btn btn-outline";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"209";s:10:"layer_left";s:3:"700";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"4728";}}}', 'catalog/layerslider/slide_08.jpg', 1, 0, 1),
(12, 'slide1', 0, 4, 'a:17:{s:2:"id";s:2:"12";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:6:"slide1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"12";s:12:"slider_image";s:34:"catalog/layerslider/slider-bg1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:7:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_great";s:13:"layer_caption";s:19:"Get into new season";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"77";s:10:"layer_left";s:3:"112";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"171";s:10:"layer_left";s:3:"123";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1053";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"179";s:10:"layer_left";s:3:"231";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1497";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_black";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"177";s:10:"layer_left";s:3:"277";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2044";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_black";s:13:"layer_caption";s:45:"Wash cool save energy a revolution in washing";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"266";s:10:"layer_left";s:3:"112";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2771";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"btn-links btn-inverse";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"323";s:10:"layer_left";s:3:"119";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3481";}i:6;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:7;s:13:"layer_content";s:33:"catalog/layerslider/special-1.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 6";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:1:"0";s:10:"layer_left";s:3:"993";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3874";}}}', 'catalog/layerslider/slider-bg1.jpg', 1, 0, 1);
INSERT INTO `oc_pavosliderlayers` (`id`, `title`, `parent_id`, `group_id`, `params`, `layersparams`, `image`, `status`, `position`, `language_id`) VALUES
(13, 'slide2', 0, 4, 'a:17:{s:2:"id";s:2:"13";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:6:"slide2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"13";s:12:"slider_image";s:34:"catalog/layerslider/slider-bg2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:6:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_great";s:13:"layer_caption";s:19:"Get into new season";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"77";s:10:"layer_left";s:3:"112";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"171";s:10:"layer_left";s:3:"123";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1053";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"179";s:10:"layer_left";s:3:"231";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1497";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_black";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"177";s:10:"layer_left";s:3:"277";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2044";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_black";s:13:"layer_caption";s:45:"Wash cool save energy a revolution in washing";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"266";s:10:"layer_left";s:3:"112";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2771";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"btn-links btn-inverse";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"323";s:10:"layer_left";s:3:"119";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3481";}}}', 'catalog/layerslider/slider-bg2.jpg', 1, 0, 1),
(14, 'slide3', 0, 4, 'a:17:{s:2:"id";s:2:"14";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:6:"slide3";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"14";s:12:"slider_image";s:34:"catalog/layerslider/slider-bg3.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:6:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_great";s:13:"layer_caption";s:19:"Get into new season";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"77";s:10:"layer_left";s:3:"112";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:7:"big_red";s:13:"layer_caption";s:2:"25";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"171";s:10:"layer_left";s:3:"123";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1053";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"small_red";s:13:"layer_caption";s:1:"%";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"179";s:10:"layer_left";s:3:"231";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1497";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_black";s:13:"layer_caption";s:3:"OFF";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"177";s:10:"layer_left";s:3:"277";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2044";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_black";s:13:"layer_caption";s:45:"Wash cool save energy a revolution in washing";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"266";s:10:"layer_left";s:3:"112";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2771";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"btn-links btn-inverse";s:13:"layer_caption";s:15:"view collection";s:15:"layer_animation";s:3:"sfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"323";s:10:"layer_left";s:3:"119";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3481";}}}', 'catalog/layerslider/slider-bg3.jpg', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2150 ;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(28, 'Product14', '', '', '', '', '', '', '', 1, 7, 'catalog/demo/shoe/4a.jpg', 5, 1, 100.0000, 200, 9, '2009-02-03', 146.40000000, 2, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2009-02-03 16:06:50', '2014-11-26 14:03:36', 44),
(29, 'Product15', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/homeware/5a.jpg', 6, 1, 279.9900, 0, 9, '2013-12-23', 133.00000000, 2, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, '2009-02-03 16:42:17', '2014-11-25 10:02:09', 14),
(30, 'Product02', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/homeware/5a.jpg', 8, 1, 45.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1000, 0, 1, '2009-02-03 16:59:00', '2014-11-25 10:05:04', 90),
(31, 'Product03', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/electronic/6c.jpg', 8, 1, 80.0000, 0, 9, '2013-12-23', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, '2009-02-03 17:00:10', '2014-11-26 14:06:33', 9),
(33, 'Product04', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/homeware/3a.jpg', 8, 1, 200.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, '2009-02-03 17:08:31', '2014-11-25 09:57:33', 16),
(34, 'Product05', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/electronic/4a.jpg', 9, 1, 500.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, '2009-02-03 18:07:54', '2014-11-25 09:48:53', 35),
(35, 'Product16', '', '', '', '', '', '', '', 1, 5, 'catalog/demo/cosmetic/3a.jpg', 10, 0, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2009-02-03 18:08:31', '2014-11-26 14:01:22', 39),
(36, 'Product06', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/homeware/1a.jpg', 8, 0, 100.0000, 100, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, '2009-02-03 18:09:19', '2014-11-25 09:47:54', 4),
(40, 'product07', '', '', '', '', '', '', '', 1, 5, 'catalog/demo/homeware/7a.jpg', 8, 1, 999.0000, 0, 9, '2013-12-23', 10.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2009-02-03 21:07:12', '2014-11-26 14:10:55', 11),
(41, 'Product08', '', '', '', '', '', '', '', 1, 5, 'catalog/demo/homeware/6a.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2009-02-03 21:07:26', '2014-12-10 16:43:13', 14),
(42, 'Product01', '', '', '', '', '', '', '', 1, 7, 'catalog/demo/homeware/3a.jpg', 8, 1, 100.0000, 400, 9, '2009-02-04', 12.50000000, 1, 1.00000000, 2.00000000, 3.00000000, 1, 1, 2, 0, 1, '2009-02-03 21:07:37', '2014-11-25 09:58:53', 395),
(43, 'Product09', '', '', '', '', '', '', '', 1, 5, 'catalog/demo/fashion/5b.jpg', 8, 0, 500.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, '2009-02-03 21:07:49', '2014-11-26 14:04:06', 54),
(44, 'Product17', '', '', '', '', '', '', '', 1, 5, 'catalog/demo/fashion/7b.jpg', 10, 1, 1000.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, '2009-02-03 21:08:00', '2014-12-10 16:42:38', 14),
(45, 'Product18', '', '', '', '', '', '', '', 1, 5, 'catalog/demo/mobile/6c.jpg', 10, 1, 2000.0000, 0, 0, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, '2009-02-03 21:08:17', '2014-11-26 14:06:22', 8),
(46, 'Product10', '', '', '', '', '', '', '', 1, 5, 'catalog/demo/fashion/8b.jpg', 7, 1, 1000.0000, 0, 9, '2013-12-23', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, '2009-02-03 21:08:29', '2014-11-25 09:41:14', 73),
(47, 'Product19', '', '', '', '', '', '', '', 1, 5, 'catalog/demo/mobile/8a.jpg', 5, 1, 100.0000, 400, 9, '2013-12-23', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 0, 1, 0, 1, '2009-02-03 21:08:40', '2014-11-26 14:03:16', 48),
(48, 'product11', 'test 1', '', '', '', '', '', 'test 2', 1, 5, 'catalog/demo/fashion/6a.jpg', 7, 1, 500.0000, 0, 9, '2009-02-08', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, '2009-02-08 17:21:51', '2014-11-25 09:38:20', 130),
(49, 'Product20', '', '', '', '', '', '', '', 1, 8, 'catalog/demo/mobile/6a.jpg', 10, 1, 199.9900, 0, 9, '2011-04-25', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2011-04-26 08:57:34', '2014-11-26 14:10:00', 96),
(51, 'Product12', '', '', '', '', '', '', '', 1, 5, 'data/demo/fashion/7a.jpg', 7, 1, 67.0000, 0, 0, '2014-02-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-02-17 16:46:06', '2014-10-24 15:49:28', 111),
(52, 'Product13', '', '', '', '', '', '', '', 1, 5, 'catalog/demo/mobile/6a.jpg', 5, 1, 99.0000, 0, 0, '2014-02-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-02-17 19:40:01', '2014-10-24 15:50:41', 86),
(55, 'Cano', '', '', '', '', '', '', '', 1, 5, 'data/demo/cosmetic/4a.jpg', 9, 1, 45.0000, 0, 0, '2014-10-09', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-10-10 11:05:51', '2014-10-10 11:17:53', 0),
(56, 'Cano', '', '', '', '', '', '', '', 1, 5, 'data/demo/cosmetic/3a.jpg', 10, 1, 44.0000, 0, 0, '2014-10-09', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-10-10 11:10:45', '2014-10-24 15:49:36', 7),
(57, 'Cano', '', '', '', '', '', '', '', 1, 5, 'data/demo/cosmetic/1a.jpg', 0, 1, 125.0000, 0, 0, '2014-10-09', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-10-10 11:12:49', '2014-10-15 14:55:33', 1),
(112, 'Cano', '', '', '', '', '', '', '', 1, 5, 'data/demo/shoe/5a.jpg', 0, 1, 135.0000, 0, 0, '2014-10-09', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-10-10 11:27:35', '2014-10-15 14:54:34', 1),
(113, 'Cano', '', '', '', '', '', '', '', 1, 5, 'data/demo/shoe/1a.jpg', 0, 1, 145.0000, 0, 0, '2014-10-09', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-10-10 11:29:48', '2014-10-24 15:50:02', 3),
(114, 'Cano', '', '', '', '', '', '', '', 1, 5, 'data/demo/shoe/2c.jpg', 0, 1, 144.0000, 0, 0, '2014-10-09', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-10-10 11:31:12', '0000-00-00 00:00:00', 9),
(115, 'Shoe', '', '', '', '', '', '', '', 1, 5, 'data/demo/shoe/4a.jpg', 0, 1, 155.0000, 0, 0, '2014-10-09', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-10-10 11:39:59', '0000-00-00 00:00:00', 4),
(128, 'Cano', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/mobile/7c.jpg', 9, 1, 125.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:18:59', '2014-12-08 17:32:32', 0),
(129, 'Shoe', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/mobile/5a.jpg', 9, 1, 125.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:21:09', '2014-12-08 17:32:39', 0),
(130, 'food', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/mobile/6b.jpg', 8, 1, 49.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:23:04', '2014-12-08 17:30:48', 1),
(131, 'Toys', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/mobile/6c.jpg', 9, 1, 125.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:24:18', '2014-12-08 17:32:43', 0),
(132, 'Toys', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/mobile/2c.jpg', 9, 1, 125.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:25:29', '2014-12-08 17:32:50', 0),
(133, 'ipad', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion/7a.jpg', 0, 1, 125.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:34:36', '2014-12-08 17:32:12', 14),
(134, 'ipad', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion/8a.jpg', 0, 1, 0.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:40:33', '2014-11-26 14:00:44', 6),
(135, 'iphone', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion/3a.jpg', 0, 1, 249.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:45:05', '2014-12-08 17:30:17', 0),
(136, 'ipad', '', '', '', '', '', '', '', 3, 6, 'catalog/demo/fashion/8b.jpg', 0, 1, 300.0000, 0, 9, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:47:39', '2014-12-11 10:44:55', 14),
(137, 'prodcut1', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/electronic/7a.jpg', 0, 1, 49.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 14:55:36', '2014-12-08 17:30:34', 1),
(138, 'food', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic/4c.jpg', 9, 1, 125.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 15:00:58', '2014-12-08 17:32:19', 17),
(139, 'ipad', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic/6a.jpg', 8, 1, 49.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 15:03:41', '2014-12-08 17:30:41', 5),
(140, 'product', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic/2a.jpg', 8, 1, 125.0000, 0, 0, '2014-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-11-05 15:06:26', '2014-12-08 17:33:02', 13),
(2132, 'food', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/food_2/1b.jpg', 0, 1, 125.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:39:05', '2014-12-03 16:01:35', 0),
(2133, 'food', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/food_2/5a.jpg', 0, 1, 144.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:41:21', '2014-12-03 16:04:04', 0),
(2134, 'electrical', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/electronic/4a.jpg', 8, 1, 525.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:47:39', '2014-12-03 16:08:24', 2),
(2135, 'mobile', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion/2a.jpg', 0, 1, 525.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:56:18', '2014-12-10 16:41:47', 0),
(2136, 'cosmetic', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic_2/5a.jpg', 0, 1, 335.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:05:35', '2014-12-03 15:59:30', 0),
(2137, 'cosmetic', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic_2/4d.jpg', 0, 1, 125.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:13:42', '2014-12-03 15:50:06', 0),
(2138, 'cosmetic', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic_2/3a.jpg', 0, 1, 12000.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:16:29', '2014-12-08 17:30:08', 0),
(2139, 'cosmetic', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic_2/1b.jpg', 0, 1, 125.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:19:16', '2014-12-03 15:51:27', 0),
(2140, 'cosmetic', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic_2/2a.jpg', 0, 1, 249.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:22:09', '0000-00-00 00:00:00', 0),
(2141, 'cosmetic', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic_2/4a.jpg', 0, 1, 249.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:24:56', '2014-12-03 15:46:03', 0),
(2142, 'cosmetic', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic_2/4b.jpg', 0, 1, 125.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:26:51', '2014-12-03 15:49:19', 0),
(2143, 'cosmetic', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/cosmetic_2/4c.jpg', 0, 1, 144.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:29:07', '0000-00-00 00:00:00', 0),
(2144, 'fashion', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion_2/4a.jpg', 0, 1, 249.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:35:09', '2014-12-03 10:37:58', 0),
(2145, 'fashion', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion_2/3a.jpg', 0, 1, 249.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:40:02', '0000-00-00 00:00:00', 3),
(2146, 'fashion', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion_2/6a.jpg', 0, 1, 249.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:41:49', '2014-12-03 10:43:11', 1),
(2147, 'fashion', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion_2/6d.jpg', 0, 1, 249.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:44:56', '0000-00-00 00:00:00', 3),
(2148, 'fashion', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion_2/7a.jpg', 0, 1, 249.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:46:40', '2014-12-11 16:39:16', 3),
(2149, 'fashion', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/fashion_2/1d.jpg', 0, 1, 125.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 10:48:52', '2014-12-11 16:38:25', 2),
(2115, 'shoes', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/shoe_2/5c.jpg', 0, 1, 525.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 08:46:17', '2014-12-03 16:02:43', 0),
(2116, 'shoes', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/shoe_2/6b.jpg', 0, 1, 335.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 08:48:39', '2014-12-03 15:48:44', 0),
(2117, 'shoes', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/shoe_2/7b.jpg', 0, 1, 155.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 08:50:53', '2014-12-03 15:48:18', 1),
(2118, 'shoes', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/shoe_2/4c.jpg', 0, 1, 249.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 08:52:57', '2014-12-08 17:30:23', 0),
(2119, 'shoes', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/shoe_2/6b.jpg', 0, 1, 135.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 08:55:16', '2014-12-03 15:57:18', 0),
(2120, 'shoes', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/shoe_2/8b.jpg', 0, 1, 44.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 08:57:34', '2014-12-03 15:47:34', 0),
(2121, 'Toys', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/toys_2/1a.jpg', 0, 1, 125.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:01:35', '2014-12-03 15:46:28', 0),
(2122, 'Toys', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/toys_2/2a.jpg', 0, 1, 144.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:06:24', '2014-12-03 16:00:00', 0),
(2123, 'Toys', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/toys_2/4a.jpg', 0, 1, 414.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:07:58', '2014-12-03 15:46:51', 1),
(2124, 'toys', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/toys_2/6a.jpg', 0, 1, 535.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:10:53', '2014-12-03 16:00:40', 0),
(2125, 'toys', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/toys_2/3b.jpg', 0, 1, 525.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:13:29', '2014-12-03 15:58:18', 0),
(2126, 'toys', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/toys_2/5b.jpg', 0, 1, 125.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:15:29', '2014-12-08 17:32:57', 0),
(2127, 'food', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/food_2/2b.jpg', 0, 1, 225.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:19:35', '2014-12-03 15:53:08', 0),
(2128, 'food', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/food_2/2b.jpg', 0, 1, 149.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:25:02', '2014-12-03 15:59:09', 0),
(2114, 'shoes', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/shoe_2/2c.jpg', 0, 1, 145.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 08:42:19', '2014-12-03 15:50:50', 0),
(2131, 'food', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/food_2/2a.jpg', 0, 1, 249.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:36:38', '2014-12-03 16:12:01', 1),
(2130, 'food', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/food_2/3a.jpg', 0, 1, 144.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:34:01', '2014-12-03 15:56:23', 0),
(2129, 'food', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/food_2/5b.jpg', 0, 1, 225.0000, 0, 0, '2014-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2014-12-03 09:32:26', '2014-12-03 16:01:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(42, 3, 2, ''),
(47, 4, 1, '16GB'),
(47, 2, 2, ''),
(43, 4, 1, '8gb'),
(43, 2, 2, ''),
(47, 2, 1, '4'),
(42, 3, 1, '100mhz'),
(43, 4, 2, ''),
(43, 2, 1, '1'),
(47, 4, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Inceptos', '&lt;p&gt;	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;	&lt;li&gt;		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;	&lt;li&gt;		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;	&lt;li&gt;		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;	&lt;li&gt;		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;	&lt;li&gt;		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;	&lt;li&gt;		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;	&lt;li&gt;		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;	&lt;li&gt;		GPS and A-GPS ready&lt;/li&gt;	&lt;li&gt;		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;	&lt;li&gt;		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;	&lt;li&gt;		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;	&lt;li&gt;		5 megapixel color camera with auto focus&lt;/li&gt;	&lt;li&gt;		VGA CMOS color camera&lt;/li&gt;	&lt;li&gt;		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;	&lt;li&gt;		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;	&lt;li&gt;		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;	&lt;li&gt;		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;	&lt;li&gt;		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;	&lt;li&gt;		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;	&lt;li&gt;		Special Features: FM Radio, G-Sensor&lt;/li&gt;&lt;/ul&gt;', '', 'inceptos', '', ''),
(40, 2, 'Venenatis ornare', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Venenatis ornare', '', ''),
(44, 2, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything \r\nelse. But you don’t lose inches and pounds overnight. It’s the result of\r\n rethinking conventions. Of multiple wireless innovations. And of \r\nbreakthrough design. With MacBook Air, mobile computing suddenly has a \r\nnew standard.&lt;/div&gt;', '', 'MacBook Air', '', ''),
(45, 2, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new \r\nCore 2 Duo MacBook Pro is over 50% faster than the original Core Duo \r\nMacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing \r\npower. For the ultimate creative canvas, you can even configure the \r\n17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated \r\nkeyboard with ambient light sensor put the MacBook Pro in a class by \r\nitself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. \r\nControl presentations and media from up to 30 feet away with the \r\nincluded Apple Remote. Connect to high-bandwidth peripherals with \r\nFireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to\r\n five times the performance and up to twice the range of \r\nprevious-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;', '', 'Palm Treo Pro', '', ''),
(36, 2, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most \r\npopular music player now lets you enjoy movies, TV shows, and more on a \r\ntwo-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy \r\nmillions of songs, movies, TV shows, audiobooks, and games and download \r\nfree podcasts all at the iTunes Store. And you can import your own \r\nmusic, manage your whole media library, and sync your iPod or iPhone \r\nwith ease.&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iPod Nano', '', ''),
(46, 2, 'Samsung S4', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has \r\narrived. Built into the newest VAIO notebooks lies Intel''s latest, most \r\npowerful innovation yet: Intel® Centrino® 2 processor technology. \r\nBoasting incredible speed, expanded wireless connectivity, enhanced \r\nmultimedia support and greater energy efficiency, all the \r\nhigh-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;', '', 'samsung', '', ''),
(47, 2, 'Eleifend', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch \r\ndiagonal HP LP3065 Flat Panel Monitor. This flagship monitor features \r\nbest-in-class performance and presentation features on a huge \r\nwide-aspect screen while letting you work as comfortably as possible - \r\nyou might even forget you''re at the office&lt;/p&gt;', '', 'Eleifend', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '', '', ''),
(33, 2, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&quot; \r\n941BW monitor combines wide aspect ratio with fast pixel response time, \r\nfor bigger images, more room to work and crisp motion. In addition, the \r\nexclusive MagicBright 2, MagicColor and MagicTune technologies help \r\ndeliver the ideal image in every situation, while sleek, narrow bezels \r\nand adjustable stands deliver style just the way you want it. With the \r\nSamsung 941BW widescreen analog/digital LCD monitor, it''s not hard to \r\nimagine.&lt;/div&gt;', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 2, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs\r\n with you anywhere. Choose from five colors including four new hues to \r\nmake your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical \r\nexperience every time you sync. For more randomness, you can shuffle \r\nsongs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle \r\ncontrols with one hand. Enjoy up to 12 hours straight of skip-free music\r\n playback.&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iPod Shuffle', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon''s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon''s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera''s new features. The D300 features a new 51-point autofocus system with Nikon''s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera''s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon''s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(30, 1, 'Vacuums', '&lt;p&gt;\r\n	Canon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) äë&lt;/p&gt;', '', 'Vacuums', '', ''),
(49, 2, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 \r\nmm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core \r\nTegra 2 processor, similar to its younger brother Samsung Galaxy Tab \r\n8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its \r\nnew TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you \r\nto customize with different content, such as your pictures, bookmarks, \r\nand social feeds, sporting a 10.1 inches WXGA capacitive touch screen \r\nwith 1280 x 800 pixels of resolution, equipped with 3 megapixel rear \r\ncamera with LED flash and a 2 megapixel front camera, HSPA+ connectivity\r\n up to 21Mbps, 720p HD video recording capability, 1080p HD playback, \r\nDLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, \r\nmicro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung\r\n Stick – a Bluetooth microphone that can be carried in a pocket like a \r\npen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and \r\npre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini \r\nApps Tray – which gives you access to more commonly used apps to help \r\nease multitasking and it is capable of Adobe Flash Player 10.2, powered \r\nby 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;', '', 'Samsung Galaxy Tab 10.1', '', ''),
(35, 1, 'Cusrabitur sedg', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;', '', 'Product 8', '', ''),
(128, 1, 'Nunc euismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nunc euismods', '', ''),
(129, 1, 'Nunc euismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nunc euismods', '', ''),
(130, 1, 'Eeuismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Eeuismods', '', ''),
(131, 1, 'Nuncs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nunc', '', ''),
(132, 1, 'Nuncs euismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Eeuismods', '', ''),
(43, 2, 'Iphone', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard \r\ndrives for the entire line perfect for running more of your favorite \r\napplications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough \r\npolycarbonate case, built-in wireless technologies, and innovative \r\nMagSafe Power Adapter that releases automatically if someone \r\naccidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or \r\nfamily,2 record a video at your desk, or take fun pictures with Photo \r\nBooth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Iphone', '', ''),
(134, 2, 'Clearis', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Clearis', '', ''),
(48, 2, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the\r\n new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours \r\nof video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features \r\nan anodized aluminum and polished stainless steel enclosure with rounded\r\n edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', '', 'iPod Classic', '', ''),
(135, 1, 'Curabiturs sedgs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Curabiturs sedgs', '', ''),
(136, 1, 'Furabitur sedg', '&lt;p&gt;	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;	&lt;li&gt;		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;	&lt;li&gt;		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;	&lt;li&gt;		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;	&lt;li&gt;		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;	&lt;li&gt;		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;	&lt;li&gt;		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;	&lt;li&gt;		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;	&lt;li&gt;		GPS and A-GPS ready&lt;/li&gt;	&lt;li&gt;		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;	&lt;li&gt;		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;	&lt;li&gt;		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;	&lt;li&gt;		5 megapixel color camera with auto focus&lt;/li&gt;	&lt;li&gt;		VGA CMOS color camera&lt;/li&gt;	&lt;li&gt;		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;	&lt;li&gt;		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;	&lt;li&gt;		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;	&lt;li&gt;		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;	&lt;li&gt;		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;	&lt;li&gt;		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;	&lt;li&gt;		Special Features: FM Radio, G-Sensor&lt;/li&gt;&lt;/ul&gt;', '', 'Curabiturs sedgs', '', ''),
(137, 1, 'Durabitur sedg', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Curabiturs sedgs', '', ''),
(35, 2, 'Cusrabitur sedg', '&lt;p&gt;Cusrabitur sedg&lt;br&gt;&lt;/p&gt;', '', 'Cusrabitur sedg', '', ''),
(138, 1, 'Kunc euismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Kunc euismods', '', ''),
(139, 1, 'Durabiturs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Durabiturs', '', ''),
(140, 1, 'Surabir sedg', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Durabitur', '', ''),
(133, 1, 'Ipad mini', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n\r\n&lt;/ul&gt;', '', 'ipad', '', ''),
(133, 2, 'Ipad mini', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming \r\ncontent in awe-inspiring high definition clarity for a mobile experience\r\n you never thought possible. Seductively sleek, the HTC Touch HD \r\nprovides the next generation of mobile functionality, all at a simple \r\ntouch. Fully integrated with Windows Mobile Professional 6.1, ultrafast \r\n3.5G, GPS, 5MP camera, plus lots more - all delivered on a \r\nbreathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of \r\nyour mobile world with the HTC Touch HD.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;&lt;li&gt;\r\n		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band \r\nfrequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;&lt;li&gt;\r\n		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;&lt;li&gt;\r\n		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;&lt;li&gt;\r\n		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;&lt;li&gt;\r\n		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;&lt;li&gt;\r\n		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;&lt;/ul&gt;', '', 'Ipad mini', '', ''),
(134, 1, 'Clearis', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'ipad', '', ''),
(135, 2, 'Curabiturs sedgs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Curabiturs sedgs', '', ''),
(137, 2, 'Durabitur sedg', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Durabitur sedg', '', ''),
(138, 2, 'Kunc euismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Kunc euismods', '', ''),
(139, 2, 'Durabiturs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Durabiturs', '', ''),
(140, 2, 'Surabir sedg', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Surabir sedg', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(128, 2, 'Nunc euismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nunc euismods', '', ''),
(129, 2, 'Nunc euismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nunc euismods', '', ''),
(130, 2, 'Eeuismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Eeuismods', '', ''),
(131, 2, 'Nuncs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nuncs', '', ''),
(132, 2, 'Nuncs euismods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nuncs euismods', '', ''),
(42, 1, 'Venenatis', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple''s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO ''03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;', '', 'Venenatis', '', ''),
(30, 2, 'Vacuums', '&lt;p&gt;\r\n	Canon''s press material for the EOS 5D states that it ''defines (a) new \r\nD-SLR category'', while we''re not typically too concerned with marketing \r\ntalk this particular statement is clearly pretty accurate. The EOS 5D is\r\n unlike any previous digital SLR in that it combines a full-frame (35 mm\r\n sized) high resolution sensor (12.8 megapixels) with a relatively \r\ncompact body (slightly larger than the EOS 20D, although in your hand it\r\n feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between \r\nthe EOS 20D and the EOS-1D professional digital SLR''s, an important \r\ndifference when compared to the latter is that the EOS 5D doesn''t have \r\nany environmental seals. While Canon don''t specifically refer to the EOS\r\n 5D as a ''professional'' digital SLR it will have obvious appeal to \r\nprofessionals who want a high quality digital SLR in a body lighter than\r\n the EOS-1D. It will also no doubt appeal to current EOS 20D owners \r\n(although lets hope they''ve not bought too many EF-S lenses...) äë&lt;/p&gt;', '', 'Vacuums', '', ''),
(46, 1, 'Samsung S4', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel''s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;', '', 'samsung', '', ''),
(47, 1, 'Eleifend', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you''re at the office&lt;/p&gt;', '', 'Eleifend', '', ''),
(32, 3, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '', '', ''),
(41, 1, 'Maecenas', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;', '', 'Maecenas', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it''s not hard to imagine.&lt;/div&gt;', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iPod Shuffle', '', ''),
(43, 1, 'Iphone', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iphone', '', ''),
(31, 2, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the \r\n12.3-effective-megapixel D300 combines brand new technologies with \r\nadvanced features inherited from Nikon''s newly announced D3 professional\r\n digital SLR camera to offer serious photographers remarkable \r\nperformance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon''s exclusive EXPEED Image \r\nProcessing System that is central to driving the speed and processing \r\npower needed for many of the camera''s new features. The D300 features a \r\nnew 51-point autofocus system with Nikon''s 3D Focus Tracking feature and\r\n two new LiveView shooting modes that allow users to frame a photograph \r\nusing the camera''s high-resolution LCD monitor. The D300 shares a \r\nsimilar Scene Recognition System as is found in the D3; it promises to \r\ngreatly enhance the accuracy of autofocus, autoexposure, and auto white \r\nbalance by recognizing the subject or scene being photographed and \r\napplying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 \r\nseconds and shooting with an imperceptible 45-millisecond shutter \r\nrelease lag time. The D300 is capable of shooting at a rapid six frames \r\nper second and can go as fast as eight frames per second when using the \r\noptional MB-D10 multi-power battery pack. In continuous bursts, the D300\r\n can shoot up to 100 shots at full 12.3-megapixel resolution. \r\n(NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash\r\n card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features \r\nthat will significantly improve the accuracy, control, and performance \r\nphotographers can get from their equipment. Its new Scene Recognition \r\nSystem advances the use of Nikon''s acclaimed 1,005-segment sensor to \r\nrecognize colors and light patterns that help the camera determine the \r\nsubject and the type of scene being photographed before a picture is \r\ntaken. This information is used to improve the accuracy of autofocus, \r\nautoexposure, and auto white balance functions in the D300. For example,\r\n the camera can track moving subjects better and by identifying them, it\r\n can also automatically select focus points faster and with greater \r\naccuracy. It can also analyze highlights and more accurately determine \r\nexposure, as well as infer light sources to deliver more accurate white \r\nbalance detection.&lt;/div&gt;\r\n&lt;/div&gt;', '', 'Nikon D300', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 \r\nmm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core \r\nTegra 2 processor, similar to its younger brother Samsung Galaxy Tab \r\n8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its \r\nnew TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you \r\nto customize with different content, such as your pictures, bookmarks, \r\nand social feeds, sporting a 10.1 inches WXGA capacitive touch screen \r\nwith 1280 x 800 pixels of resolution, equipped with 3 megapixel rear \r\ncamera with LED flash and a 2 megapixel front camera, HSPA+ connectivity\r\n up to 21Mbps, 720p HD video recording capability, 1080p HD playback, \r\nDLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, \r\nmicro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung\r\n Stick – a Bluetooth microphone that can be carried in a pocket like a \r\npen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and \r\npre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini \r\nApps Tray – which gives you access to more commonly used apps to help \r\nease multitasking and it is capable of Adobe Flash Player 10.2, powered \r\nby 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;', '', 'Samsung Galaxy Tab 10.1', '', ''),
(42, 2, 'Venenatis', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The\r\n 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel \r\nresolution. Designed specifically for the creative professional, this \r\ndisplay provides more space for easier access to all the tools and \r\npalettes needed to edit, format and composite your work. Combine this \r\ndisplay with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit\r\n to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an \r\nactive-matrix liquid crystal display that produces flicker-free images \r\nthat deliver twice the brightness, twice the sharpness and twice the \r\ncontrast ratio of a typical CRT display. Unlike other flat panels, it''s \r\ndesigned with a pure digital interface to deliver distortion-free images\r\n that never need adjusting. With over 4 million digital pixels, the \r\ndisplay is uniquely suited for scientific and technical applications \r\nsuch as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant \r\ncolor performance, the Cinema HD delivers up to 16.7 million colors \r\nacross a wide gamut allowing you to see subtle nuances between colors \r\nfrom soft pastels to rich jewel tones. A wide viewing angle ensures \r\nuniform color from edge to edge. Apple''s ColorSync technology allows you\r\n to create custom profiles to maintain consistent color onscreen and in \r\nprint. The result: You can confidently use this display in all your \r\ncolor-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design,\r\n the display has a very thin bezel that enhances visual accuracy. Each \r\ndisplay features two FireWire 400 ports and two USB 2.0 ports, making \r\nattachment of desktop peripherals, such as iSight, iPod, digital and \r\nstill cameras, hard drives, printers and scanners, even more accessible \r\nand convenient. Taking advantage of the much thinner and lighter \r\nfootprint of an LCD, the new displays support the VESA (Video \r\nElectronics Standards Association) mounting interface standard. \r\nCustomers with the optional Cinema Display VESA Mount Adapter kit gain \r\nthe flexibility to mount their display in locations most appropriate for\r\n their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single \r\ncable design with elegant breakout for the USB 2.0, FireWire 400 and a \r\npure digital connection using the industry standard Digital Video \r\nInterface (DVI) interface. The DVI connection allows for a direct \r\npure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		16.7 million&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		700:1&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		16 ms&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Display Power,&lt;/li&gt;&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;&lt;li&gt;\r\n		Brightness&lt;/li&gt;&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;&lt;li&gt;\r\n		EN55024&lt;/li&gt;&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;&lt;li&gt;\r\n		MPR II&lt;/li&gt;&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;&lt;li&gt;\r\n		UL 60950&lt;/li&gt;&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;&lt;li&gt;\r\n		EN60950&lt;/li&gt;&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;&lt;li&gt;\r\n		TCO ''03&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link \r\ndigital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;&lt;/ul&gt;', '', 'Venenatis', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iPod Nano', '', ''),
(40, 1, 'Venenatis ornare', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;', '', 'venenatis ornare', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;', '', 'MacBook Air', '', ''),
(29, 2, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly \r\nbalanced, you can respond to business and personal email, stay on top of\r\n appointments and contacts, and use Wi-Fi or GPS when you’re out and \r\nabout. Then watch a video on YouTube, catch up with news and sports on \r\nthe web, or listen to a few songs. Balance your work and play the way \r\nyou like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;&lt;/ul&gt;', '', 'Palm Treo Pro', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(28, 2, 'Inceptos', '&lt;p&gt;	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;	&lt;li&gt;		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;	&lt;li&gt;		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;	&lt;li&gt;		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;	&lt;li&gt;		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;	&lt;li&gt;		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;	&lt;li&gt;		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;	&lt;li&gt;		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;	&lt;li&gt;		GPS and A-GPS ready&lt;/li&gt;	&lt;li&gt;		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;	&lt;li&gt;		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;	&lt;li&gt;		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;	&lt;li&gt;		5 megapixel color camera with auto focus&lt;/li&gt;	&lt;li&gt;		VGA CMOS color camera&lt;/li&gt;	&lt;li&gt;		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;	&lt;li&gt;		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;	&lt;li&gt;		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;	&lt;li&gt;		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;	&lt;li&gt;		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;	&lt;li&gt;		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;	&lt;li&gt;		Special Features: FM Radio, G-Sensor&lt;/li&gt;&lt;/ul&gt;', '', 'Inceptos', '', ''),
(136, 2, 'Furabitur sedg', '&lt;p&gt;	HTC Touch - in High Definition. Watch music videos and streaming \r\ncontent in awe-inspiring high definition clarity for a mobile experience\r\n you never thought possible. Seductively sleek, the HTC Touch HD \r\nprovides the next generation of mobile functionality, all at a simple \r\ntouch. Fully integrated with Windows Mobile Professional 6.1, ultrafast \r\n3.5G, GPS, 5MP camera, plus lots more - all delivered on a \r\nbreathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of \r\nyour mobile world with the HTC Touch HD.&lt;/p&gt;&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;&lt;li&gt;		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;&lt;li&gt;		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;&lt;li&gt;		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;&lt;li&gt;		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;&lt;li&gt;		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band \r\nfrequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;&lt;li&gt;		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;&lt;li&gt;		GPS and A-GPS ready&lt;/li&gt;&lt;li&gt;		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;&lt;li&gt;		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;&lt;li&gt;		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;&lt;li&gt;		5 megapixel color camera with auto focus&lt;/li&gt;&lt;li&gt;		VGA CMOS color camera&lt;/li&gt;&lt;li&gt;		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;&lt;li&gt;		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;&lt;li&gt;		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;&lt;li&gt;		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;&lt;li&gt;		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;&lt;li&gt;		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;&lt;li&gt;		Special Features: FM Radio, G-Sensor&lt;/li&gt;&lt;/ul&gt;', '', 'Furabitur sedg', '', ''),
(41, 2, 'Maecenas', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More \r\npowerful Intel Core 2 Duo processors. And more memory standard. Combine \r\nthis with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than \r\never. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;', '', 'Maecenas', '', ''),
(248, 1, 'Nullam nisl', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
(248, 2, 'Nullam nisl', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(251, 1, 'Curabitur sed', '&lt;p&gt;Canon EOS 40D 10.1MP SLR Camera&lt;/p&gt;\r\n', '', '', 'Canon EOS 40D 10.1MP SLR Camera', 'Canon EOS 40D 10.1MP SLR Camera'),
(251, 2, 'Curabitur sed', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(240, 1, 'Quismod', '&lt;p class=&quot;intro&quot;&gt;iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;', '', 'Palm Treo Pro', '', ''),
(240, 2, 'Nunc gravida ante', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;', '', 'Nunc euismods', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(244, 1, 'Nunc euismod', '&lt;div&gt;MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', '', '', ''),
(244, 2, 'Lobortis magna', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(246, 2, 'Laobortis', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;', '', 'aaaa', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(247, 1, 'Praesent suscipit', '&lt;p&gt;Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you''re at the office&lt;/p&gt;\r\n', '', '', '', ''),
(247, 2, 'Praesent suscipit', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(233, 2, 'ثم أطراف', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;', '', 'Donec sit amet', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(228, 1, 'Aliquam pellentesque', '&lt;p&gt;HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', ''),
(212, 2, 'Aliquam sem', '', '', '', '', ''),
(228, 2, 'ثم أطراف الباهضة ', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(245, 1, 'Quisque aliquet', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;\r\n&lt;p&gt;&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(245, 2, 'ثم أطراف', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(229, 1, 'Donec ut odio', '&lt;p&gt;Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', ''),
(219, 2, 'Duis nac convallis', '', '', '', '', ''),
(229, 2, 'ثم أطراف الباهضة', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(236, 1, ' Quisque smod', '&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', ''),
(217, 2, 'Aliqua egets', '', '', '', '', ''),
(236, 2, ' Quisque smod', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', '', ''),
(241, 1, 'Maximus lectus', '&lt;div&gt;Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', '', '', ''),
(241, 2, 'ثم أطراف ', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(243, 2, 'ثم أطراف الباهضة ', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(249, 1, 'Curabitur sed sagittis', '&lt;p&gt;Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', '', '', '', ''),
(249, 2, 'بيرل البولندي ثم', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا. مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا. مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا. مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا. مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n', '', '', 'بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً', 'بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً'),
(230, 2, 'Imperdiet urna', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;', '', 'Imperdiet urna', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(231, 1, 'Proin ac nulla', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon''s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n&lt;br /&gt;\r\nSimilar to the D3, the D300 features Nikon''s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera''s new features. The D300 features a new 51-point autofocus system with Nikon''s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera''s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n&lt;br /&gt;\r\nThe D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n&lt;br /&gt;\r\nThe D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon''s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
(231, 2, 'Donec egestas', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(242, 2, 'Donec ages', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;', '', 'Donec ages', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(242, 1, 'Morbi ac neque', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac neque at mi elementum gravida et vitae elit. Etiam ullamcorper auctor orci, id luctus felis laoreet a. Nam nec nulla sit amet tellus pretium rhoncus. Integer interdum, nibh sed posuere aliquet, enim ante lacinia augue, ut ultricies augue erat vel lorem. Vestibulum bibendum dolor sit amet tincidunt lacinia. Nunc sapien libero, condimentum et turpis eget, eleifend hendrerit augue. Duis molestie volutpat feugiat.&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;\r\n&lt;p&gt;Nullam elementum semper sollicitudin. Integer nisi eros, vulputate ut venenatis porta, feugiat id ligula. Curabitur ut elit in lacus sodales vestibulum. Ut congue pulvinar tellus, vel auctor tortor gravida et. Curabitur blandit orci eget egestas imperdiet. Morbi quis quam at diam iaculis euismod. Fusce vestibulum elit sed enim lacinia, ut lacinia eros tristique. Nullam id sapien est. Cras consectetur tincidunt neque quis suscipit. In lectus lectus, blandit eget mauris non, scelerisque venenatis tellus.&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Proin id lacus non dolor viverra hendrerit vel vel magna.&lt;/li&gt;\r\n	&lt;li&gt;Duis iaculis varius urna, nec feugiat enim suscipit vitae.&lt;/li&gt;\r\n	&lt;li&gt;Nulla nec enim eget dui posuere tincidunt sit amet venenatis lorem.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;Donec vel libero ullamcorper, faucibus augue auctor, imperdiet diam. Duis quis nibh eget urna convallis blandit. Fusce iaculis purus vitae convallis aliquet. Ut auctor nunc sed odio bibendum fringilla. Quisque egestas non magna ac tincidunt. Aenean laoreet commodo nulla, sed ultrices odio vehicula sit amet. Suspendisse erat tellus, porta et facilisis sit amet, adipiscing sed diam. Nulla condimentum arcu a pellentesque pretium. Pellentesque pharetra odio eu auctor suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.&lt;/p&gt;', 'Cinema', 'Morbi ac neque', 'Morbi ac neque', 'Morbi ac neque'),
(252, 1, 'Quis blandit', '&lt;p&gt;Canon EOS 40D 10.1MP SLR Camera&lt;/p&gt;\r\n', '', '', 'Canon EOS 40D 10.1MP SLR Camera', 'Canon EOS 40D 10.1MP SLR Camera'),
(252, 2, 'ثم أطراف البا', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(216, 2, 'Curabitur med', '', '', '', '', ''),
(234, 2, 'Curabitur eleifend', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(235, 1, 'Nunc euismod', '&lt;p&gt;Product 8&lt;/p&gt;\r\n', '', '', '', ''),
(235, 2, 'Nunc euismod', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.'),
(234, 1, 'Curabitur eleifend', '&lt;div&gt;&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n&lt;p&gt;Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n\r\n&lt;p&gt;Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'Canon EOS 40D 10.1MP SLR Camera', 'Canon EOS 40D 10.1MP SLR Camera'),
(243, 1, 'Morbi malesuada ', '&lt;div&gt;\r\n&lt;p&gt;&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', ''),
(255, 1, 'Aliquams egets', '', '', '', '', ''),
(256, 2, 'ثم أطراف الباهضة المؤلّفة', '', '', '', '', ''),
(256, 1, 'Curabitur sedg', '', '', '', '', ''),
(257, 2, 'Curabitur eleifend bos', '', '', '', '', ''),
(257, 1, 'Curabitur eleifend bos', '', '', '', '', ''),
(255, 2, 'Aliquams egets', '', '', '', '', ''),
(212, 1, 'Aliquam sem', '', '', '', '', ''),
(213, 2, 'Mauris id vulputate ', '', '', '', '', ''),
(213, 1, 'Mauris id vulputate ', '', '', '', '', ''),
(216, 1, 'Curabitur med', '', '', '', '', ''),
(217, 1, 'Aliqua egets', '', '', '', '', ''),
(218, 2, 'Quisqe smod', '', '', '', '', ''),
(218, 1, 'Quisqe smod', '', '', '', '', ''),
(219, 1, 'Duis nac convallis', '', '', '', '', ''),
(220, 2, 'Cleari chic', '', '', '', '', ''),
(220, 1, 'Cleari chic', '', '', '', '', ''),
(221, 2, 'Morbai ac neque', '', '', '', '', ''),
(221, 1, 'Morbai ac neque', '', '', '', '', ''),
(222, 1, 'Nullam nisle', '', '', '', '', ''),
(222, 2, 'Nullam nisle', '', '', '', '', ''),
(223, 1, 'Nullam nisles', '', '', '', '', ''),
(223, 2, 'Nullam nisles', '', '', '', '', ''),
(224, 2, 'Curabitur sedgs', '', '', '', '', ''),
(224, 1, 'Curabitur sedgs', '', '', '', '', ''),
(225, 2, 'Clearis chic', '', '', '', '', ''),
(225, 1, 'Clearis chic', '', '', '', '', ''),
(226, 2, 'Quis smod', '', '', '', '', ''),
(226, 1, 'Quis smod', '', '', '', '', ''),
(227, 2, 'Dones sit amet', '', '', '', '', ''),
(227, 1, 'Dones sit amet', '', '', '', '', ''),
(2228, 1, 'Inceptos', '&lt;p&gt;	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;	&lt;li&gt;		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;	&lt;li&gt;		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;	&lt;li&gt;		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;	&lt;li&gt;		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;	&lt;li&gt;		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;	&lt;li&gt;		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;	&lt;li&gt;		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;	&lt;li&gt;		GPS and A-GPS ready&lt;/li&gt;	&lt;li&gt;		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;	&lt;li&gt;		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;	&lt;li&gt;		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;	&lt;li&gt;		5 megapixel color camera with auto focus&lt;/li&gt;	&lt;li&gt;		VGA CMOS color camera&lt;/li&gt;	&lt;li&gt;		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;	&lt;li&gt;		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;	&lt;li&gt;		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;	&lt;li&gt;		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;	&lt;li&gt;		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;	&lt;li&gt;		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;	&lt;li&gt;		Special Features: FM Radio, G-Sensor&lt;/li&gt;&lt;/ul&gt;', '', 'inceptos', '', ''),
(484, 1, 'Nullam nisl', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
(215, 2, 'Curabitur eleifends', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Curabitur eleifends', '', ''),
(215, 1, 'Curabitur eleifends', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Curabitur eleifends', '', ''),
(214, 2, 'Curabitur sedg', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Curabitur sedg', '', ''),
(214, 1, 'Curabitur sedg', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Curabitur sedg', '', ''),
(233, 1, 'Donec sit amet', '&lt;div&gt;Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it''s not hard to imagine.&lt;/div&gt;', '', 'Donec sit amet', '', ''),
(230, 1, 'Imperdiet urna', '&lt;p&gt;Canon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) äë&lt;/p&gt;', '', 'Imperdiet urna', '', ''),
(2113, 1, 'Nunca', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nunca', '', ''),
(2113, 2, 'Nunca', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nunca', '', ''),
(246, 1, 'Aliquam eget', '&lt;div&gt;Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel''s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;', '', 'asaa', '', ''),
(2114, 1, 'Donec', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit\r\n amet pretium diam, cursus accumsan purus. Nunc urna mauris, fermentum \r\nnon nunc sed, facilisis sodales leo. In condimentum purus ipsum, eu \r\nhendrerit magna lacinia tincidunt. Morbi fringilla, odio ut ultrices \r\nvehicula&lt;/p&gt;', '', 'Donec', '', ''),
(2114, 2, 'Donec', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit\r\n amet pretium diam, cursus accumsan purus. Nunc urna mauris, fermentum \r\nnon nunc sed, facilisis sodales leo. In condimentum purus ipsum, eu \r\nhendrerit magna lacinia tincidunt. Morbi fringilla, odio ut ultrices \r\nvehicula&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/shoe_2/2c.jpg&quot;&gt;&lt;/p&gt;', '', 'Donec', '', ''),
(2115, 1, 'Vulputate', '&lt;p&gt;Sed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat&lt;/p&gt;', '', 'Vulputate', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(2115, 2, 'Vulputate', '&lt;p&gt;Sed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/shoe_2/5c.jpg&quot;&gt;&lt;/p&gt;', '', 'Vulputate', '', ''),
(2116, 2, 'Class aptent', '&lt;p&gt;Nam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos&lt;/p&gt;', '', 'Class aptent', '', ''),
(2116, 1, 'Class aptent', '&lt;p&gt;Nam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos&lt;/p&gt;', '', 'Class aptent', '', ''),
(2117, 2, 'Aliquam pellentesques', '&lt;p&gt;\r\nSed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat. \r\nPellentesque feugiat dui lacus, interdum congue est semper quis. Donec \r\nvulputate hendrerit ultricies.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;', '', 'Aliquam pellentesques', '', ''),
(2117, 1, 'Aliquam pellentesques', '&lt;p&gt;\r\nSed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat. \r\nPellentesque feugiat dui lacus, interdum congue est semper quis. Donec \r\nvulputate hendrerit ultricies.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;', '', 'Aliquam pellentesques', '', ''),
(2118, 1, 'Donec et mi vitae', '&lt;p&gt;\r\nSed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat. \r\nPellentesque feugiat dui lacus, interdum congue est semper quis. Donec \r\nvulputate hendrerit ultricies.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;', '', 'Donec et mi vitae', '', ''),
(2118, 2, 'Donec et mi vitae', '&lt;p&gt;\r\nSed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat. \r\nPellentesque feugiat dui lacus, interdum congue est semper quis. Donec \r\nvulputate hendrerit ultricies.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;', '', 'Donec et mi vitae', '', ''),
(2119, 2, 'Nunc eismods', '&lt;p&gt;\r\nSed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat. \r\nPellentesque feugiat dui lacus, interdum congue est semper quis. Donec \r\nvulputate hendrerit ultricies.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;', '', 'Nunc eismods', '', ''),
(2119, 1, 'Nunc eismods', '&lt;p&gt;\r\nSed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat. \r\nPellentesque feugiat dui lacus, interdum congue est semper quis. Donec \r\nvulputate hendrerit ultricies.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;', '', 'Nunc eismods', '', ''),
(2120, 1, 'Aliquam lentesques', '&lt;p&gt;\r\nSed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat. \r\nPellentesque feugiat dui lacus, interdum congue est semper quis. Donec \r\nvulputate hendrerit ultricies.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;', '', 'Aliquam lentesques', '', ''),
(2120, 2, 'Aliquam lentesques', '&lt;p&gt;\r\nSed ac dolor sed nibh vestibulum aliquet. Mauris a tellus ante. Ut \r\nfacilisis laoreet est, vel vulputate magna volutpat sit amet. Praesent \r\nnon semper felis. Quisque in fermentum quam, nec tempor erat. \r\nPellentesque feugiat dui lacus, interdum congue est semper quis. Donec \r\nvulputate hendrerit ultricies.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/shoe_2/8b.jpg&quot;&gt;&lt;/p&gt;', '', 'Aliquam lentesques', '', ''),
(2121, 1, 'Morbi fringilla', '&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;', '', 'Morbi fringilla', '', ''),
(2121, 2, 'Morbi fringilla', '&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;', '', 'Morbi fringilla', '', ''),
(2122, 1, 'Proin faucibus', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;', '', 'Proin faucibus', '', ''),
(2122, 2, 'Proin faucibus', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/toys_2/2a.jpg&quot;&gt;&lt;/p&gt;', '', 'Proin faucibus', '', ''),
(2123, 2, 'Nulla ligula turpis', '&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;', '', 'Nulla ligula turpis', '', ''),
(2123, 1, 'Nulla ligula turpis', '&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;', '', 'Nulla ligula turpis', '', ''),
(2124, 2, 'Proin faucibus', '&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;', '', 'Proin faucibus', '', ''),
(2124, 1, 'Proin faucibus', '&lt;p&gt;\r\nNam sagittis risus ac orci facilisis, vel feugiat ex viverra. Class \r\naptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Pellentesque iaculis mauris vel turpis faucibus, nec\r\n convallis massa fermentum. Cras in orci et dolor semper sodales. \r\nVivamus vitae arcu nunc. Donec vitae ipsum non neque pulvinar \r\nsollicitudin a vitae diam. Duis in ultrices ligula, nec pellentesque \r\ndolor. Pellentesque facilisis laoreet interdum. Ut tempor velit et dolor\r\n porta, ac dignissim diam blandit. Integer non tincidunt tellus, \r\nfaucibus varius nisl. Donec lobortis mollis luctus. Vivamus sit amet \r\nultrices dolor. Nulla nec ante vel felis eleifend congue at sit amet \r\ndiam. Morbi sed tempor lectus. Nulla ligula turpis, blandit vel cursus \r\nsit amet, rhoncus sed felis. Maecenas ut iaculis sem, ut commodo elit.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;', '', 'Proin faucibus', '', ''),
(2125, 2, 'Nunc euismo', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;', '', 'Nunc euismo', '', ''),
(2125, 1, 'Nunc euismo', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;', '', 'Nunc euismo', '', ''),
(2126, 1, 'Sed ac dolor', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;', '', 'Sed ac dolor', '', ''),
(2126, 2, 'Sed ac dolor', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;', '', 'Sed ac dolor', '', ''),
(2127, 2, 'Lorem ipsum dolor', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nIn feugiat nunc vel augue molestie tempus. Aliquam id nulla ut diam \r\niaculis vestibulum quis sodales lorem. Aenean sollicitudin felis lorem, \r\nid suscipit mauris semper in. Suspendisse potenti. Donec a pulvinar \r\ntellus, sit amet tincidunt nunc. Vivamus rhoncus arcu sed arcu pretium, \r\nat accumsan nisl commodo. Mauris non risus ullamcorper, tempus odio \r\neuismod, bibendum magna. Nulla a nisl mauris. Duis ac nulla et mi \r\ntincidunt imperdiet sed vitae ipsum. Phasellus vulputate quam ac mauris \r\nornare sollicitudin. Nulla in imperdiet dolor. Phasellus fermentum quam a\r\n nibh pellentesque, eget molestie erat ullamcorper.\r\n&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/food_2/2b.jpg&quot;&gt;&lt;/p&gt;', '', 'Lorem ipsum dolor', '', ''),
(2128, 2, 'Praesent non gravida', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nIn feugiat nunc vel augue molestie tempus. Aliquam id nulla ut diam \r\niaculis vestibulum quis sodales lorem. Aenean sollicitudin felis lorem, \r\nid suscipit mauris semper in. Suspendisse potenti. Donec a pulvinar \r\ntellus, sit amet tincidunt nunc. Vivamus rhoncus arcu sed arcu pretium, \r\nat accumsan nisl commodo. Mauris non risus ullamcorper, tempus odio \r\neuismod, bibendum magna. Nulla a nisl mauris. Duis ac nulla et mi \r\ntincidunt imperdiet sed vitae ipsum. Phasellus vulputate quam ac mauris \r\nornare sollicitudin. Nulla in imperdiet dolor. Phasellus fermentum quam a\r\n nibh pellentesque, eget molestie erat ullamcorper.\r\n&lt;/p&gt;', '', 'Praesent non gravida', '', ''),
(2128, 1, 'Praesent non gravida', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nIn feugiat nunc vel augue molestie tempus. Aliquam id nulla ut diam \r\niaculis vestibulum quis sodales lorem. Aenean sollicitudin felis lorem, \r\nid suscipit mauris semper in. Suspendisse potenti. Donec a pulvinar \r\ntellus, sit amet tincidunt nunc. Vivamus rhoncus arcu sed arcu pretium, \r\nat accumsan nisl commodo. Mauris non risus ullamcorper, tempus odio \r\neuismod, bibendum magna. Nulla a nisl mauris. Duis ac nulla et mi \r\ntincidunt imperdiet sed vitae ipsum. Phasellus vulputate quam ac mauris \r\nornare sollicitudin. Nulla in imperdiet dolor. Phasellus fermentum quam a\r\n nibh pellentesque, eget molestie erat ullamcorper.\r\n&lt;/p&gt;', '', 'Praesent non gravida', '', ''),
(2129, 2, 'Proin faucibus', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nIn feugiat nunc vel augue molestie tempus. Aliquam id nulla ut diam \r\niaculis vestibulum quis sodales lorem. Aenean sollicitudin felis lorem, \r\nid suscipit mauris semper in. Suspendisse potenti. Donec a pulvinar \r\ntellus, sit amet tincidunt nunc. Vivamus rhoncus arcu sed arcu pretium, \r\nat accumsan nisl commodo. Mauris non risus ullamcorper, tempus odio \r\neuismod, bibendum magna. Nulla a nisl mauris. Duis ac nulla et mi \r\ntincidunt imperdiet sed vitae ipsum. Phasellus vulputate quam ac mauris \r\nornare sollicitudin. Nulla in imperdiet dolor. Phasellus fermentum quam a\r\n nibh pellentesque, eget molestie erat ullamcorper.\r\n&lt;/p&gt;', '', 'Proin faucibus', '', ''),
(2129, 1, 'Proin faucibus', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nIn feugiat nunc vel augue molestie tempus. Aliquam id nulla ut diam \r\niaculis vestibulum quis sodales lorem. Aenean sollicitudin felis lorem, \r\nid suscipit mauris semper in. Suspendisse potenti. Donec a pulvinar \r\ntellus, sit amet tincidunt nunc. Vivamus rhoncus arcu sed arcu pretium, \r\nat accumsan nisl commodo. Mauris non risus ullamcorper, tempus odio \r\neuismod, bibendum magna. Nulla a nisl mauris. Duis ac nulla et mi \r\ntincidunt imperdiet sed vitae ipsum. Phasellus vulputate quam ac mauris \r\nornare sollicitudin. Nulla in imperdiet dolor. Phasellus fermentum quam a\r\n nibh pellentesque, eget molestie erat ullamcorper.\r\n&lt;/p&gt;', '', 'Proin faucibus', '', ''),
(2130, 2, 'Nullam diam neque', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nIn feugiat nunc vel augue molestie tempus. Aliquam id nulla ut diam \r\niaculis vestibulum quis sodales lorem. Aenean sollicitudin felis lorem, \r\nid suscipit mauris semper in. Suspendisse potenti. Donec a pulvinar \r\ntellus, sit amet tincidunt nunc. Vivamus rhoncus arcu sed arcu pretium, \r\nat accumsan nisl commodo. Mauris non risus ullamcorper, tempus odio \r\neuismod, bibendum magna. Nulla a nisl mauris. Duis ac nulla et mi \r\ntincidunt imperdiet sed vitae ipsum. Phasellus vulputate quam ac mauris \r\nornare sollicitudin. Nulla in imperdiet dolor. Phasellus fermentum quam a\r\n nibh pellentesque, eget molestie erat ullamcorper.\r\n&lt;/p&gt;', '', 'Nullam diam neque', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(2130, 1, 'Nullam diam neque', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nIn feugiat nunc vel augue molestie tempus. Aliquam id nulla ut diam \r\niaculis vestibulum quis sodales lorem. Aenean sollicitudin felis lorem, \r\nid suscipit mauris semper in. Suspendisse potenti. Donec a pulvinar \r\ntellus, sit amet tincidunt nunc. Vivamus rhoncus arcu sed arcu pretium, \r\nat accumsan nisl commodo. Mauris non risus ullamcorper, tempus odio \r\neuismod, bibendum magna. Nulla a nisl mauris. Duis ac nulla et mi \r\ntincidunt imperdiet sed vitae ipsum. Phasellus vulputate quam ac mauris \r\nornare sollicitudin. Nulla in imperdiet dolor. Phasellus fermentum quam a\r\n nibh pellentesque, eget molestie erat ullamcorper.\r\n&lt;/p&gt;', '', 'Nullam diam neque', '', ''),
(2131, 2, 'Fusce in dapibus', '&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Fusce in dapibus', '', ''),
(2131, 1, 'Fusce in dapibus', '&lt;p&gt;Nullam diam neque&lt;/p&gt;&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Fusce in dapibus', '', ''),
(2132, 2, 'Quisque iaculis ac', '&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Quisque iaculis ac', '', ''),
(2132, 1, 'Quisque iaculis ac', '&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Quisque iaculis ac', '', ''),
(2133, 2, 'Vivamus convallis', '&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Vivamus convallis', '', ''),
(2133, 1, 'Vivamus convallis', '&lt;p&gt;Quisque iaculis ac &lt;/p&gt;&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Vivamus convallis', '', ''),
(2127, 1, 'Lorem ipsum dolor', '&lt;p&gt;\r\nDonec et mi vitae sapien placerat fringilla sed in augue. Duis et \r\ngravida enim. Mauris iaculis ligula felis, eget posuere velit viverra \r\nnec. Ut cursus in erat eget porttitor. Phasellus est justo, tristique eu\r\n venenatis et, volutpat ut purus. Pellentesque consequat ornare est quis\r\n sodales. In hac habitasse platea dictumst. Sed tempus iaculis nulla, \r\nvitae suscipit dui convallis sit amet. Phasellus rhoncus sed libero sit \r\namet tempor. Nulla sit amet cursus libero, ut tincidunt lacus.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nProin faucibus urna id cursus dignissim. Praesent non gravida mauris, \r\nnon dapibus magna. Sed varius risus ut consequat ullamcorper. Vestibulum\r\n ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia \r\nCurae; Curabitur vitae ligula a magna tristique efficitur ut in dolor. \r\nQuisque quis risus fringilla, volutpat sapien quis, placerat enim. \r\nPhasellus eu eleifend ligula, eget laoreet libero. Integer molestie eu \r\nmetus nec vehicula. Aliquam sodales tortor sit amet enim pharetra, vitae\r\n dictum diam euismod. Curabitur laoreet interdum metus, ut feugiat felis\r\n vulputate eu.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non \r\nligula eget arcu imperdiet lacinia. Aliquam commodo consequat libero at \r\ntincidunt. In at nunc ac neque lobortis iaculis. Nam vehicula, orci \r\nsuscipit ultrices varius, elit erat tincidunt nibh, eu efficitur dui \r\nnulla vitae quam. Sed a nunc cursus, bibendum dui non, lacinia urna. \r\nAliquam placerat ullamcorper leo, id malesuada risus vulputate eu. \r\nSuspendisse potenti. In non tellus id erat consectetur faucibus. \r\nPraesent vitae mi venenatis, blandit leo vestibulum, malesuada nunc. \r\nNullam diam neque, rhoncus sed tincidunt fringilla, sodales ut lacus. \r\nPellentesque ac tincidunt nisl.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nIn feugiat nunc vel augue molestie tempus. Aliquam id nulla ut diam \r\niaculis vestibulum quis sodales lorem. Aenean sollicitudin felis lorem, \r\nid suscipit mauris semper in. Suspendisse potenti. Donec a pulvinar \r\ntellus, sit amet tincidunt nunc. Vivamus rhoncus arcu sed arcu pretium, \r\nat accumsan nisl commodo. Mauris non risus ullamcorper, tempus odio \r\neuismod, bibendum magna. Nulla a nisl mauris. Duis ac nulla et mi \r\ntincidunt imperdiet sed vitae ipsum. Phasellus vulputate quam ac mauris \r\nornare sollicitudin. Nulla in imperdiet dolor. Phasellus fermentum quam a\r\n nibh pellentesque, eget molestie erat ullamcorper.\r\n&lt;/p&gt;', '', 'Lorem ipsum dolor', '', ''),
(2134, 2, 'Duis sapien arcu', '&lt;p&gt;\r\nPraesent id libero rhoncus, dignissim enim in, ultricies erat. Maecenas \r\nvel lacus hendrerit, lobortis ligula sit amet, condimentum turpis. \r\nAenean ac vulputate mauris. Fusce nunc ante, vulputate ac viverra ut, \r\nmollis et augue. Sed a est vel lacus rhoncus maximus tristique vitae \r\nsem. Cras pretium, est sagittis ullamcorper pharetra, eros est convallis\r\n odio, hendrerit tempor justo lectus et augue. Aenean rutrum venenatis \r\ntellus et condimentum. Aenean euismod risus dolor, ut euismod lacus \r\nbibendum ac. Suspendisse potenti.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec eu leo dapibus, rutrum arcu non, consequat justo. Curabitur \r\nvenenatis justo in lectus cursus feugiat. Nulla vehicula ligula tortor, \r\nnon sollicitudin nulla tristique ac. Duis facilisis tortor nulla, sit \r\namet ullamcorper leo malesuada sit amet. Sed ac libero ligula. Nam \r\nblandit tellus facilisis mi varius, nec placerat arcu posuere. Proin et \r\nerat sit amet purus lobortis commodo sit amet sagittis metus. Etiam \r\npellentesque eros tincidunt purus malesuada aliquam. Ut in turpis vitae \r\nligula sagittis cursus a non dolor. Nunc mollis quis odio non semper.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nFusce a pellentesque magna. Duis sapien arcu, vulputate vel vestibulum \r\nac, rutrum ut tortor. Praesent quis blandit sem, non ultrices lectus. \r\nSed vitae est ligula. Morbi imperdiet, risus aliquet ornare faucibus, \r\norci diam mollis odio, nec rhoncus massa purus eget odio. Curabitur \r\nlobortis neque et ultricies auctor. Proin auctor dapibus rutrum.\r\n&lt;/p&gt;', '', 'Duis sapien arcu', '', ''),
(2134, 1, 'Duis sapien arcu', '&lt;p&gt;\r\nPraesent id libero rhoncus, dignissim enim in, ultricies erat. Maecenas \r\nvel lacus hendrerit, lobortis ligula sit amet, condimentum turpis. \r\nAenean ac vulputate mauris. Fusce nunc ante, vulputate ac viverra ut, \r\nmollis et augue. Sed a est vel lacus rhoncus maximus tristique vitae \r\nsem. Cras pretium, est sagittis ullamcorper pharetra, eros est convallis\r\n odio, hendrerit tempor justo lectus et augue. Aenean rutrum venenatis \r\ntellus et condimentum. Aenean euismod risus dolor, ut euismod lacus \r\nbibendum ac. Suspendisse potenti.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec eu leo dapibus, rutrum arcu non, consequat justo. Curabitur \r\nvenenatis justo in lectus cursus feugiat. Nulla vehicula ligula tortor, \r\nnon sollicitudin nulla tristique ac. Duis facilisis tortor nulla, sit \r\namet ullamcorper leo malesuada sit amet. Sed ac libero ligula. Nam \r\nblandit tellus facilisis mi varius, nec placerat arcu posuere. Proin et \r\nerat sit amet purus lobortis commodo sit amet sagittis metus. Etiam \r\npellentesque eros tincidunt purus malesuada aliquam. Ut in turpis vitae \r\nligula sagittis cursus a non dolor. Nunc mollis quis odio non semper.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nFusce a pellentesque magna. Duis sapien arcu, vulputate vel vestibulum \r\nac, rutrum ut tortor. Praesent quis blandit sem, non ultrices lectus. \r\nSed vitae est ligula. Morbi imperdiet, risus aliquet ornare faucibus, \r\norci diam mollis odio, nec rhoncus massa purus eget odio. Curabitur \r\nlobortis neque et ultricies auctor. Proin auctor dapibus rutrum.\r\n&lt;/p&gt;', '', 'Duis sapien arcu', '', ''),
(2135, 2, 'Maecenas vel lacus', '&lt;p&gt;\r\nPraesent id libero rhoncus, dignissim enim in, ultricies erat. Maecenas \r\nvel lacus hendrerit, lobortis ligula sit amet, condimentum turpis. \r\nAenean ac vulputate mauris. Fusce nunc ante, vulputate ac viverra ut, \r\nmollis et augue. Sed a est vel lacus rhoncus maximus tristique vitae \r\nsem. Cras pretium, est sagittis ullamcorper pharetra, eros est convallis\r\n odio, hendrerit tempor justo lectus et augue. Aenean rutrum venenatis \r\ntellus et condimentum. Aenean euismod risus dolor, ut euismod lacus \r\nbibendum ac. Suspendisse potenti.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec eu leo dapibus, rutrum arcu non, consequat justo. Curabitur \r\nvenenatis justo in lectus cursus feugiat. Nulla vehicula ligula tortor, \r\nnon sollicitudin nulla tristique ac. Duis facilisis tortor nulla, sit \r\namet ullamcorper leo malesuada sit amet. Sed ac libero ligula. Nam \r\nblandit tellus facilisis mi varius, nec placerat arcu posuere. Proin et \r\nerat sit amet purus lobortis commodo sit amet sagittis metus. Etiam \r\npellentesque eros tincidunt purus malesuada aliquam. Ut in turpis vitae \r\nligula sagittis cursus a non dolor. Nunc mollis quis odio non semper.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nFusce a pellentesque magna. Duis sapien arcu, vulputate vel vestibulum \r\nac, rutrum ut tortor. Praesent quis blandit sem, non ultrices lectus. \r\nSed vitae est ligula. Morbi imperdiet, risus aliquet ornare faucibus, \r\norci diam mollis odio, nec rhoncus massa purus eget odio. Curabitur \r\nlobortis neque et ultricies auctor. Proin auctor dapibus rutrum.\r\n&lt;/p&gt;', '', 'Maecenas vel lacus', '', ''),
(2135, 1, 'Maecenas vel lacus', '&lt;p&gt;\r\nPraesent id libero rhoncus, dignissim enim in, ultricies erat. Maecenas \r\nvel lacus hendrerit, lobortis ligula sit amet, condimentum turpis. \r\nAenean ac vulputate mauris. Fusce nunc ante, vulputate ac viverra ut, \r\nmollis et augue. Sed a est vel lacus rhoncus maximus tristique vitae \r\nsem. Cras pretium, est sagittis ullamcorper pharetra, eros est convallis\r\n odio, hendrerit tempor justo lectus et augue. Aenean rutrum venenatis \r\ntellus et condimentum. Aenean euismod risus dolor, ut euismod lacus \r\nbibendum ac. Suspendisse potenti.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec eu leo dapibus, rutrum arcu non, consequat justo. Curabitur \r\nvenenatis justo in lectus cursus feugiat. Nulla vehicula ligula tortor, \r\nnon sollicitudin nulla tristique ac. Duis facilisis tortor nulla, sit \r\namet ullamcorper leo malesuada sit amet. Sed ac libero ligula. Nam \r\nblandit tellus facilisis mi varius, nec placerat arcu posuere. Proin et \r\nerat sit amet purus lobortis commodo sit amet sagittis metus. Etiam \r\npellentesque eros tincidunt purus malesuada aliquam. Ut in turpis vitae \r\nligula sagittis cursus a non dolor. Nunc mollis quis odio non semper.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nFusce a pellentesque magna. Duis sapien arcu, vulputate vel vestibulum \r\nac, rutrum ut tortor. Praesent quis blandit sem, non ultrices lectus. \r\nSed vitae est ligula. Morbi imperdiet, risus aliquet ornare faucibus, \r\norci diam mollis odio, nec rhoncus massa purus eget odio. Curabitur \r\nlobortis neque et ultricies auctor. Proin auctor dapibus rutrum.\r\n&lt;/p&gt;', '', 'Maecenas vel lacus', '', ''),
(2136, 2, 'Praesent quis blandit', '&lt;p&gt;\r\nPraesent id libero rhoncus, dignissim enim in, ultricies erat. Maecenas \r\nvel lacus hendrerit, lobortis ligula sit amet, condimentum turpis. \r\nAenean ac vulputate mauris. Fusce nunc ante, vulputate ac viverra ut, \r\nmollis et augue. Sed a est vel lacus rhoncus maximus tristique vitae \r\nsem. Cras pretium, est sagittis ullamcorper pharetra, eros est convallis\r\n odio, hendrerit tempor justo lectus et augue. Aenean rutrum venenatis \r\ntellus et condimentum. Aenean euismod risus dolor, ut euismod lacus \r\nbibendum ac. Suspendisse potenti.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec eu leo dapibus, rutrum arcu non, consequat justo. Curabitur \r\nvenenatis justo in lectus cursus feugiat. Nulla vehicula ligula tortor, \r\nnon sollicitudin nulla tristique ac. Duis facilisis tortor nulla, sit \r\namet ullamcorper leo malesuada sit amet. Sed ac libero ligula. Nam \r\nblandit tellus facilisis mi varius, nec placerat arcu posuere. Proin et \r\nerat sit amet purus lobortis commodo sit amet sagittis metus. Etiam \r\npellentesque eros tincidunt purus malesuada aliquam. Ut in turpis vitae \r\nligula sagittis cursus a non dolor. Nunc mollis quis odio non semper.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nFusce a pellentesque magna. Duis sapien arcu, vulputate vel vestibulum \r\nac, rutrum ut tortor. Praesent quis blandit sem, non ultrices lectus. \r\nSed vitae est ligula. Morbi imperdiet, risus aliquet ornare faucibus, \r\norci diam mollis odio, nec rhoncus massa purus eget odio. Curabitur \r\nlobortis neque et ultricies auctor. Proin auctor dapibus rutrum.\r\n&lt;/p&gt;', '', 'Praesent quis blandit', '', ''),
(2136, 1, 'Praesent quis blandit', '&lt;p&gt;\r\nPraesent id libero rhoncus, dignissim enim in, ultricies erat. Maecenas \r\nvel lacus hendrerit, lobortis ligula sit amet, condimentum turpis. \r\nAenean ac vulputate mauris. Fusce nunc ante, vulputate ac viverra ut, \r\nmollis et augue. Sed a est vel lacus rhoncus maximus tristique vitae \r\nsem. Cras pretium, est sagittis ullamcorper pharetra, eros est convallis\r\n odio, hendrerit tempor justo lectus et augue. Aenean rutrum venenatis \r\ntellus et condimentum. Aenean euismod risus dolor, ut euismod lacus \r\nbibendum ac. Suspendisse potenti.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec eu leo dapibus, rutrum arcu non, consequat justo. Curabitur \r\nvenenatis justo in lectus cursus feugiat. Nulla vehicula ligula tortor, \r\nnon sollicitudin nulla tristique ac. Duis facilisis tortor nulla, sit \r\namet ullamcorper leo malesuada sit amet. Sed ac libero ligula. Nam \r\nblandit tellus facilisis mi varius, nec placerat arcu posuere. Proin et \r\nerat sit amet purus lobortis commodo sit amet sagittis metus. Etiam \r\npellentesque eros tincidunt purus malesuada aliquam. Ut in turpis vitae \r\nligula sagittis cursus a non dolor. Nunc mollis quis odio non semper.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nFusce a pellentesque magna. Duis sapien arcu, vulputate vel vestibulum \r\nac, rutrum ut tortor. Praesent quis blandit sem, non ultrices lectus. \r\nSed vitae est ligula. Morbi imperdiet, risus aliquet ornare faucibus, \r\norci diam mollis odio, nec rhoncus massa purus eget odio. Curabitur \r\nlobortis neque et ultricies auctor. Proin auctor dapibus rutrum.\r\n&lt;/p&gt;', '', 'Praesent quis blandit', '', ''),
(2137, 2, 'Curabitur venenatis', '&lt;p&gt;\r\nPraesent id libero rhoncus, dignissim enim in, ultricies erat. Maecenas \r\nvel lacus hendrerit, lobortis ligula sit amet, condimentum turpis. \r\nAenean ac vulputate mauris. Fusce nunc ante, vulputate ac viverra ut, \r\nmollis et augue. Sed a est vel lacus rhoncus maximus tristique vitae \r\nsem. Cras pretium, est sagittis ullamcorper pharetra, eros est convallis\r\n odio, hendrerit tempor justo lectus et augue. Aenean rutrum venenatis \r\ntellus et condimentum. Aenean euismod risus dolor, ut euismod lacus \r\nbibendum ac. Suspendisse potenti.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec eu leo dapibus, rutrum arcu non, consequat justo. Curabitur \r\nvenenatis justo in lectus cursus feugiat. Nulla vehicula ligula tortor, \r\nnon sollicitudin nulla tristique ac. Duis facilisis tortor nulla, sit \r\namet ullamcorper leo malesuada sit amet. Sed ac libero ligula. Nam \r\nblandit tellus facilisis mi varius, nec placerat arcu posuere. Proin et \r\nerat sit amet purus lobortis commodo sit amet sagittis metus. Etiam \r\npellentesque eros tincidunt purus malesuada aliquam. Ut in turpis vitae \r\nligula sagittis cursus a non dolor. Nunc mollis quis odio non semper.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nFusce a pellentesque magna. Duis sapien arcu, vulputate vel vestibulum \r\nac, rutrum ut tortor. Praesent quis blandit sem, non ultrices lectus. \r\nSed vitae est ligula. Morbi imperdiet, risus aliquet ornare faucibus, \r\norci diam mollis odio, nec rhoncus massa purus eget odio. Curabitur \r\nlobortis neque et ultricies auctor. Proin auctor dapibus rutrum.\r\n&lt;/p&gt;', '', 'Curabitur venenatis', '', ''),
(2137, 1, 'Curabitur venenatis', '&lt;p&gt;\r\nPraesent id libero rhoncus, dignissim enim in, ultricies erat. Maecenas \r\nvel lacus hendrerit, lobortis ligula sit amet, condimentum turpis. \r\nAenean ac vulputate mauris. Fusce nunc ante, vulputate ac viverra ut, \r\nmollis et augue. Sed a est vel lacus rhoncus maximus tristique vitae \r\nsem. Cras pretium, est sagittis ullamcorper pharetra, eros est convallis\r\n odio, hendrerit tempor justo lectus et augue. Aenean rutrum venenatis \r\ntellus et condimentum. Aenean euismod risus dolor, ut euismod lacus \r\nbibendum ac. Suspendisse potenti.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nDonec eu leo dapibus, rutrum arcu non, consequat justo. Curabitur \r\nvenenatis justo in lectus cursus feugiat. Nulla vehicula ligula tortor, \r\nnon sollicitudin nulla tristique ac. Duis facilisis tortor nulla, sit \r\namet ullamcorper leo malesuada sit amet. Sed ac libero ligula. Nam \r\nblandit tellus facilisis mi varius, nec placerat arcu posuere. Proin et \r\nerat sit amet purus lobortis commodo sit amet sagittis metus. Etiam \r\npellentesque eros tincidunt purus malesuada aliquam. Ut in turpis vitae \r\nligula sagittis cursus a non dolor. Nunc mollis quis odio non semper.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nFusce a pellentesque magna. Duis sapien arcu, vulputate vel vestibulum \r\nac, rutrum ut tortor. Praesent quis blandit sem, non ultrices lectus. \r\nSed vitae est ligula. Morbi imperdiet, risus aliquet ornare faucibus, \r\norci diam mollis odio, nec rhoncus massa pu&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/cosmetic_2/4d.jpg&quot;&gt;rus eget odio. Curabitur \r\nlobortis neque et ultricies auctor. Proin auctor dapibus rutrum.\r\n&lt;/p&gt;', '', 'Curabitur venenatis', '', ''),
(2138, 1, 'Cras vitae magna', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Cras vitae magna', '', ''),
(2138, 2, 'Cras vitae magna', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Cras vitae magna', '', ''),
(2139, 2, 'Donec ullamcorper', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Donec ullamcorper', '', ''),
(2139, 1, 'Donec ullamcorper', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Donec ullamcorper', '', ''),
(2140, 1, 'Nullam in interdum', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Nullam in interdum', '', ''),
(2140, 2, 'Nullam in interdum', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Nullam in interdum', '', ''),
(2141, 2, 'Etiam hendrerit', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Etiam hendrerit', '', ''),
(2141, 1, 'Etiam hendrerit', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Etiam hendrerit', '', ''),
(2142, 2, 'Cras ultrices non libero nec varius', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cras ultrices non libero nec varius', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(2142, 1, 'Cras ultrices non libero nec varius', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Cras ultrices non libero nec varius', '', ''),
(2143, 1, 'Duis sodales vestibulum', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Duis sodales vestibulum', '', ''),
(2143, 2, 'Duis sodales vestibulum', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/cosmetic_2/4c.jpg&quot;&gt;&lt;/p&gt;', '', 'Duis sodales vestibulum', '', ''),
(2144, 2, 'Praesent eget bibendum nulla', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Praesent eget bibendum nulla', '', ''),
(2144, 1, 'Praesent eget bibendum nulla', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Praesent eget bibendum nulla', '', ''),
(2145, 1, 'Aenean quis laoreet nunc', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Aenean quis laoreet nunc', '', ''),
(2145, 2, 'Aenean quis laoreet nunc', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Aenean quis laoreet nunc', '', ''),
(2146, 1, 'Cras vitae magna metus', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Cras vitae magna metus', '', ''),
(2146, 2, 'Cras vitae magna metus', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/fashion_2/2a.jpg&quot;&gt;&lt;/p&gt;', '', 'Cras vitae magna metus', '', ''),
(2147, 1, 'Phasellus a auctor enim', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Phasellus a auctor enim', '', ''),
(2147, 2, 'Phasellus a auctor enim', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/fashion_2/6d.jpg&quot;&gt;&lt;/p&gt;', '', 'Phasellus a auctor enim', '', ''),
(2148, 1, 'Maecenas eget ', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', '. Maecenas eget massa lacinia', '', ''),
(2148, 2, 'Maecenas eget massa lacinia', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', '. Maecenas eget massa lacinia', '', ''),
(2149, 2, 'Maecenas euismod ', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;img src=&quot;http://localhost/dev/oc/2.0/opencart2.0/pav_megashop/image/catalog/demo/fashion_2/1d.jpg&quot;&gt;&lt;/p&gt;', '', 'Maecenas euismod maximus diam', '', ''),
(32, 2, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '', '', ''),
(2228, 2, 'Inceptos', '&lt;p&gt;	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;	&lt;li&gt;		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;	&lt;li&gt;		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;	&lt;li&gt;		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;	&lt;li&gt;		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;	&lt;li&gt;		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;	&lt;li&gt;		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;	&lt;li&gt;		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;	&lt;li&gt;		GPS and A-GPS ready&lt;/li&gt;	&lt;li&gt;		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;	&lt;li&gt;		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;	&lt;li&gt;		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;	&lt;li&gt;		5 megapixel color camera with auto focus&lt;/li&gt;	&lt;li&gt;		VGA CMOS color camera&lt;/li&gt;	&lt;li&gt;		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;	&lt;li&gt;		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;	&lt;li&gt;		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;	&lt;li&gt;		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;	&lt;li&gt;		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;	&lt;li&gt;		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;	&lt;li&gt;		Special Features: FM Radio, G-Sensor&lt;/li&gt;&lt;/ul&gt;', '', '', '', ''),
(484, 2, 'Nullam nisl', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
(2149, 1, 'Maecenas euismod ', '&lt;p&gt;\r\nPhasellus a auctor enim. Maecenas eget massa lacinia, mattis lacus eget,\r\n molestie elit. Nam diam leo, dictum ut libero tristique, vestibulum \r\ninterdum diam. Morbi viverra augue ut lectus suscipit consequat. In \r\nfaucibus pellentesque luctus. Maecenas euismod maximus diam dapibus \r\nsodales. Nam vel risus venenatis, malesuada urna dapibus, ornare justo. \r\nQuisque efficitur pretium quam, eget auctor sem consequat ut.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nUt vitae tempor ante. Fusce in dapibus turpis. Nullam in turpis ex. \r\nEtiam auctor molestie ipsum in volutpat. Aenean ut tortor ipsum. Nunc \r\nsit amet risus malesuada, bibendum justo sed, tincidunt odio. Aenean \r\nvenenatis mi sed sapien tempor pulvinar. Maecenas nec erat ultricies, \r\nconsequat sapien ut, porta massa. Praesent auctor consequat risus, \r\nvolutpat feugiat nunc. Morbi consequat varius odio, eu imperdiet mi \r\nhendrerit id. Cras ex sem, varius dignissim mi at, rutrum vestibulum \r\neros. Nulla commodo, odio a tincidunt pulvinar, sapien nibh convallis \r\ntellus, a fermentum est felis vel risus. Aliquam erat volutpat. Nulla \r\ndictum eros ligula.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPellentesque dapibus ultricies vulputate. Cras vitae magna metus. Lorem \r\nipsum dolor sit amet, consectetur adipiscing elit. Praesent eget \r\nbibendum nulla, eu tincidunt tellus. Proin finibus ornare gravida. Fusce\r\n malesuada gravida risus. Suspendisse consequat, augue eu facilisis \r\nscelerisque, massa augue dapibus mi, quis vestibulum libero sem accumsan\r\n sem. Donec ullamcorper venenatis massa nec mollis.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nNullam id libero ex. Integer lacinia eu enim sed dignissim. Duis sodales\r\n vestibulum lectus ac lobortis. Sed a dolor ut leo interdum sagittis. \r\nNullam in interdum diam, et dignissim magna. Nunc vel cursus nisi. Sed \r\nconvallis orci quis dictum rutrum.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nMorbi consectetur posuere quam ut mollis. Etiam hendrerit nulla et \r\nlibero dictum, sit amet molestie arcu varius. In eu purus pellentesque, \r\nornare nibh quis, tempor ligula. Cras ultrices non libero nec varius. \r\nVivamus convallis sagittis libero sed lobortis. Aliquam erat volutpat. \r\nAenean quis laoreet nunc. Quisque iaculis ac sapien eleifend vestibulum.\r\n&lt;/p&gt;', '', 'Maecenas euismod maximus diam', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=450 ;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(449, 42, 1, 30, 1, 66.0000, '0000-00-00', '0000-00-00'),
(448, 42, 1, 20, 1, 77.0000, '0000-00-00', '0000-00-00'),
(447, 42, 1, 10, 1, 88.0000, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4541 ;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(4340, 49, 'catalog/demo/mobile/6b.jpg', 3),
(4229, 52, 'data/demo/electronic/3c.jpg', 1),
(4310, 42, 'catalog/demo/homeware/4a.jpg', 0),
(4343, 40, 'catalog/demo/homeware/7c.jpg', 0),
(4339, 49, 'catalog/demo/mobile/6c.jpg', 2),
(4324, 47, 'catalog/demo/mobile/8b.jpg', 3),
(4224, 51, 'data/demo/fashion/2b.jpg', 1),
(4117, 117, 'data/demo/toys/2a.jpg', 2),
(4124, 112, 'data/demo/shoe/3b.jpg', 1),
(4125, 112, 'data/demo/shoe/3a.jpg', 2),
(4128, 120, 'data/demo/food/2b.jpg', 1),
(4132, 125, 'data/demo/toys/1b.jpg', 1),
(4312, 30, 'catalog/demo/homeware/4b.jpg', 0),
(4140, 57, 'data/demo/cosmetic/5b.jpg', 1),
(4142, 57, 'data/demo/cosmetic/5b.jpg', 3),
(4144, 116, 'data/demo/toys/3a.jpg', 1),
(4160, 124, 'data/demo/food/5a.jpg', 1),
(4309, 33, 'catalog/demo/shoe/3b.jpg', 1),
(4323, 47, 'catalog/demo/mobile/7b.jpg', 1),
(4185, 126, 'data/demo/food/2a.jpg', 3),
(4189, 127, 'data/demo/food/5b.jpg', 1),
(4192, 119, 'data/demo/toys/5b.jpg', 1),
(4226, 113, 'data/demo/shoe/5a.jpg', 3),
(4225, 113, 'data/demo/shoe/5b.jpg', 1),
(4205, 121, 'data/demo/food/3b.jpg', 2),
(4210, 118, 'data/demo/toys/6a.jpg', 1),
(4304, 46, 'catalog/demo/fashion/2a.jpg', 1),
(4303, 48, 'catalog/demo/fashion/6b.jpg', 1),
(4521, 128, 'catalog/demo/mobile/2c.jpg', 0),
(4520, 128, 'catalog/demo/mobile/2b.jpg', 0),
(4514, 130, 'catalog/demo/mobile/7b.jpg', 0),
(4513, 130, 'catalog/demo/mobile/5a.jpg', 0),
(4523, 132, 'catalog/demo/mobile/6b.jpg', 0),
(4522, 132, 'catalog/demo/mobile/2b.jpg', 0),
(4315, 134, 'catalog/demo/fashion/8c.jpg', 0),
(4314, 134, 'catalog/demo/fashion/8b.jpg', 0),
(4328, 43, '', 2),
(4509, 135, 'catalog/demo/fashion/3a.jpg', 0),
(4508, 135, 'catalog/demo/fashion/3b.jpg', 0),
(4342, 40, 'catalog/demo/homeware/7b.jpg', 0),
(4511, 137, 'catalog/demo/homeware/1b.jpg', 0),
(4516, 138, 'catalog/demo/cosmetic/4b.jpg', 0),
(4515, 138, 'catalog/demo/cosmetic/4c.jpg', 0),
(4535, 136, 'catalog/demo/fashion/7b.jpg', 2),
(4534, 136, 'catalog/demo/fashion/7a.jpg', 1),
(4525, 140, 'catalog/demo/cosmetic/2b.jpg', 1),
(4482, 2114, 'catalog/demo/shoe_2/2a.jpg', 0),
(4498, 2115, 'catalog/demo/shoe_2/5a.jpg', 0),
(4474, 2117, 'catalog/demo/shoe_2/7a.jpg', 0),
(4510, 2118, 'catalog/demo/shoe_2/4b.jpg', 0),
(4489, 2119, 'catalog/demo/shoe_2/6a.jpg', 0),
(4471, 2120, 'catalog/demo/shoe_2/8c.jpg', 0),
(4469, 2121, 'catalog/demo/toys_2/1b.jpg', 0),
(4494, 2122, 'catalog/demo/toys_2/2b.jpg', 0),
(4470, 2123, 'catalog/demo/toys_2/4b.jpg', 0),
(4491, 2125, 'catalog/demo/toys_2/3a.jpg', 0),
(4501, 2134, 'catalog/demo/electronic/4b.jpg', 0),
(4486, 2127, 'catalog/demo/food_2/2a.jpg', 0),
(4492, 2128, 'catalog/demo/food_2/5b.jpg', 0),
(4496, 2129, 'catalog/demo/food_2/3a.jpg', 0),
(4488, 2130, 'catalog/demo/food_2/2a.jpg', 0),
(4502, 2131, 'catalog/demo/food_2/5a.jpg', 0),
(4500, 2133, 'catalog/demo/food_2/6a.jpg', 0),
(4493, 2136, 'catalog/demo/cosmetic_2/2a.jpg', 0),
(4481, 2137, 'catalog/demo/cosmetic_2/6a.jpg', 0),
(4507, 2138, 'catalog/demo/cosmetic_2/6b.jpg', 0),
(4485, 2139, 'catalog/demo/cosmetic_2/1d.jpg', 0),
(4432, 2140, 'catalog/demo/cosmetic_2/4a.jpg', 0),
(4435, 2143, 'catalog/demo/cosmetic_2/4b.jpg', 1),
(4442, 2144, 'catalog/demo/fashion_2/4d.jpg', 3),
(4441, 2144, 'catalog/demo/fashion_2/4c.jpg', 2),
(4440, 2144, 'catalog/demo/fashion_2/4b.jpg', 1),
(4444, 2145, 'catalog/demo/fashion_2/3c.jpg', 2),
(4445, 2145, 'catalog/demo/fashion_2/3d.jpg', 3),
(4446, 2145, 'catalog/demo/fashion_2/3b.jpg', 1),
(4453, 2146, 'catalog/demo/fashion_2/6b.jpg', 1),
(4451, 2146, 'catalog/demo/fashion_2/6c.jpg', 2),
(4455, 2147, 'catalog/demo/fashion_2/6e.jpg', 1),
(4540, 2148, 'catalog/demo/fashion_2/7c.jpg', 2),
(4539, 2148, 'catalog/demo/fashion_2/7b.jpg', 1),
(4538, 2149, 'catalog/demo/fashion_2/1c.jpg', 3),
(4537, 2149, 'catalog/demo/fashion_2/1a.jpg', 2),
(4536, 2149, 'catalog/demo/fashion_2/1b.jpg', 1),
(4468, 2141, 'catalog/demo/cosmetic_2/4b.jpg', 0),
(4472, 2120, 'catalog/demo/shoe_2/8d.jpg', 0),
(4475, 2117, 'catalog/demo/shoe_2/7c.jpg', 0),
(4479, 2142, 'catalog/demo/cosmetic_2/6a.jpg', 0),
(4483, 2114, 'catalog/demo/shoe_2/2b.jpg', 0),
(4524, 2126, 'catalog/demo/toys_2/5a.jpg', 0),
(4490, 2119, 'catalog/demo/shoe_2/6c.jpg', 0),
(4495, 2124, 'catalog/demo/toys_2/6b.jpg', 0),
(4497, 2132, 'catalog/demo/food_2/1a.jpg', 0),
(4499, 2115, 'catalog/demo/shoe_2/5b.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(219, 42, 8, '2011-02-20', 1),
(208, 42, 4, 'test', 1),
(218, 42, 1, '', 1),
(209, 42, 6, '', 1),
(226, 30, 5, '', 1),
(217, 42, 5, '', 1),
(223, 42, 2, '', 1),
(221, 42, 9, '22:25', 1),
(222, 42, 7, '', 1),
(220, 42, 10, '2011-02-20 22:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(7, 218, 42, 1, 43, 300, 1, 30.0000, '+', 3, '+', 30.00000000, '+'),
(6, 218, 42, 1, 31, 146, 1, 20.0000, '+', 2, '-', 20.00000000, '+'),
(3, 217, 42, 5, 40, 300, 0, 3.0000, '+', 0, '+', 3.00000000, '+'),
(2, 217, 42, 5, 42, 200, 1, 2.0000, '+', 0, '+', 2.00000000, '+'),
(4, 217, 42, 5, 39, 92, 1, 4.0000, '+', 0, '+', 4.00000000, '+'),
(1, 217, 42, 5, 41, 100, 0, 1.0000, '+', 0, '+', 1.00000000, '+'),
(13, 224, 35, 11, 47, 10, 1, 10.0000, '+', 0, '+', 0.00000000, '+'),
(12, 224, 35, 11, 46, 0, 1, 5.0000, '+', 0, '+', 0.00000000, '+'),
(16, 226, 30, 5, 40, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(15, 226, 30, 5, 39, 2, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(8, 223, 42, 2, 23, 48, 1, 10.0000, '+', 0, '+', 10.00000000, '+'),
(10, 223, 42, 2, 44, 2696, 1, 30.0000, '+', 0, '+', 30.00000000, '+'),
(9, 223, 42, 2, 24, 194, 1, 20.0000, '+', 0, '+', 20.00000000, '+'),
(11, 223, 42, 2, 45, 3998, 1, 40.0000, '+', 0, '+', 40.00000000, '+'),
(14, 224, 35, 11, 48, 15, 1, 15.0000, '+', 0, '+', 0.00000000, '+'),
(5, 218, 42, 1, 32, 96, 1, 10.0000, '+', 1, '+', 10.00000000, '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_recurring`
--

INSERT INTO `oc_product_recurring` (`product_id`, `recurring_id`, `customer_group_id`) VALUES
(136, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41),
(43, 43),
(43, 48),
(43, 133),
(43, 134),
(43, 136),
(48, 43),
(48, 136),
(133, 43),
(134, 43),
(134, 136),
(135, 136),
(136, 43),
(136, 48),
(136, 134),
(136, 135);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=746 ;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(610, 42, 1, 100),
(620, 47, 1, 300),
(622, 28, 1, 400),
(623, 43, 1, 600),
(611, 29, 1, 0),
(599, 48, 1, 0),
(636, 40, 1, 0),
(612, 30, 1, 200),
(739, 44, 1, 700),
(627, 45, 1, 800),
(629, 31, 1, 0),
(616, 35, 1, 0),
(609, 33, 1, 0),
(600, 46, 1, 0),
(740, 41, 1, 0),
(604, 36, 1, 0),
(605, 34, 1, 0),
(355, 32, 1, 0),
(634, 49, 1, 1000),
(732, 128, 1, 0),
(733, 129, 1, 0),
(728, 130, 1, 0),
(734, 131, 1, 0),
(735, 132, 1, 0),
(729, 133, 1, 0),
(614, 134, 1, 0),
(724, 135, 1, 0),
(743, 136, 1, 0),
(726, 137, 1, 0),
(730, 138, 1, 0),
(727, 139, 1, 0),
(737, 140, 1, 0),
(637, 242, 1, 0),
(646, 215, 1, 0),
(644, 214, 1, 0),
(643, 233, 1, 0),
(642, 230, 1, 0),
(645, 2113, 1, 0),
(651, 246, 1, 0),
(648, 240, 1, 0),
(703, 2114, 1, 0),
(717, 2115, 1, 0),
(699, 2116, 1, 0),
(698, 2117, 1, 0),
(725, 2118, 1, 0),
(709, 2119, 1, 0),
(697, 2120, 1, 0),
(695, 2121, 1, 0),
(713, 2122, 1, 0),
(696, 2123, 1, 0),
(714, 2124, 1, 0),
(710, 2125, 1, 0),
(736, 2126, 1, 0),
(706, 2127, 1, 0),
(711, 2128, 1, 0),
(715, 2129, 1, 0),
(708, 2130, 1, 0),
(720, 2131, 1, 0),
(716, 2132, 1, 0),
(718, 2133, 1, 0),
(719, 2134, 1, 0),
(738, 2135, 1, 0),
(712, 2136, 1, 0),
(702, 2137, 1, 0),
(723, 2138, 1, 0),
(705, 2139, 1, 0),
(680, 2140, 1, 0),
(694, 2141, 1, 0),
(700, 2142, 1, 0),
(683, 2143, 1, 0),
(685, 2144, 1, 0),
(686, 2145, 1, 0),
(688, 2146, 1, 0),
(689, 2147, 1, 0),
(745, 2148, 1, 0),
(744, 2149, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=451 ;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(448, 42, 1, 1, 90.0000, '0000-00-00', '0000-00-00'),
(450, 30, 1, 2, 90.0000, '0000-00-00', '0000-00-00'),
(449, 30, 1, 1, 80.0000, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 60),
(29, 20),
(29, 24),
(30, 20),
(30, 27),
(30, 59),
(30, 60),
(31, 33),
(32, 34),
(33, 20),
(34, 34),
(35, 20),
(35, 63),
(35, 64),
(36, 34),
(40, 20),
(40, 59),
(40, 60),
(41, 20),
(41, 26),
(41, 27),
(41, 65),
(42, 20),
(42, 59),
(43, 18),
(43, 46),
(43, 62),
(44, 31),
(44, 32),
(45, 29),
(45, 31),
(45, 32),
(46, 18),
(46, 62),
(47, 25),
(47, 29),
(47, 32),
(48, 18),
(48, 46),
(48, 61),
(48, 62),
(49, 25),
(49, 28),
(49, 29),
(49, 32),
(128, 25),
(128, 28),
(129, 28),
(130, 25),
(130, 29),
(130, 30),
(131, 25),
(131, 30),
(132, 25),
(132, 30),
(132, 66),
(133, 18),
(133, 45),
(133, 61),
(134, 18),
(134, 45),
(134, 61),
(135, 18),
(135, 46),
(135, 62),
(136, 18),
(136, 45),
(136, 61),
(137, 20),
(137, 26),
(138, 34),
(138, 63),
(138, 64),
(139, 34),
(139, 65),
(140, 34),
(140, 64),
(140, 65),
(140, 66),
(214, 88),
(214, 90),
(214, 92),
(215, 88),
(215, 91),
(215, 93),
(230, 88),
(230, 89),
(230, 93),
(233, 88),
(233, 92),
(233, 93),
(240, 60),
(242, 88),
(242, 89),
(242, 90),
(246, 88),
(246, 89),
(281, 25),
(281, 28),
(282, 25),
(282, 28),
(283, 25),
(283, 28),
(284, 28),
(291, 25),
(291, 29),
(292, 25),
(292, 29),
(293, 25),
(293, 29),
(294, 29),
(295, 29),
(301, 25),
(301, 30),
(302, 25),
(302, 30),
(303, 30),
(304, 25),
(304, 30),
(305, 30),
(311, 31),
(312, 31),
(2113, 88),
(2114, 88),
(2114, 90),
(2115, 88),
(2115, 89),
(2115, 90),
(2116, 88),
(2116, 90),
(2116, 91),
(2117, 88),
(2117, 89),
(2117, 91),
(2118, 88),
(2118, 91),
(2118, 92),
(2118, 93),
(2119, 88),
(2119, 89),
(2119, 92),
(2119, 93),
(2120, 88),
(2120, 93),
(2121, 83),
(2121, 84),
(2121, 87),
(2122, 83),
(2122, 84),
(2123, 83),
(2123, 84),
(2123, 85),
(2124, 83),
(2124, 84),
(2124, 86),
(2125, 85),
(2125, 86),
(2125, 87),
(2126, 83),
(2126, 85),
(2126, 86),
(2126, 87),
(2127, 78),
(2127, 79),
(2128, 78),
(2128, 80),
(2128, 81),
(2128, 82),
(2129, 78),
(2129, 81),
(2129, 82),
(2130, 78),
(2130, 80),
(2131, 78),
(2131, 79),
(2131, 81),
(2132, 78),
(2132, 79),
(2132, 82),
(2133, 78),
(2133, 81),
(2134, 34),
(2134, 63),
(2134, 64),
(2135, 18),
(2135, 45),
(2135, 46),
(2136, 67),
(2136, 70),
(2136, 71),
(2137, 67),
(2137, 68),
(2137, 69),
(2138, 67),
(2138, 68),
(2138, 71),
(2138, 72),
(2139, 67),
(2139, 68),
(2139, 72),
(2140, 67),
(2140, 69),
(2140, 70),
(2140, 72),
(2141, 68),
(2141, 71),
(2142, 67),
(2142, 68),
(2142, 72),
(2143, 67),
(2143, 68),
(2143, 70),
(2143, 72),
(2144, 73),
(2144, 74),
(2144, 75),
(2145, 73),
(2145, 74),
(2145, 75),
(2145, 77),
(2146, 73),
(2146, 74),
(2146, 77),
(2147, 73),
(2147, 74),
(2147, 75),
(2148, 73),
(2148, 74),
(2148, 76),
(2149, 73),
(2149, 74),
(2149, 75),
(2149, 76);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(47, 0, 0),
(28, 0, 0),
(41, 0, 0),
(40, 0, 0),
(30, 0, 0),
(44, 0, 0),
(45, 0, 0),
(49, 0, 0),
(128, 0, 0),
(129, 0, 0),
(130, 0, 0),
(131, 0, 0),
(132, 0, 0),
(46, 0, 0),
(133, 0, 0),
(43, 0, 0),
(134, 0, 0),
(48, 0, 0),
(135, 0, 0),
(136, 0, 0),
(137, 0, 0),
(35, 0, 0),
(138, 0, 0),
(139, 0, 0),
(140, 0, 0),
(36, 0, 0),
(34, 0, 0),
(31, 0, 0),
(29, 0, 0),
(33, 0, 0),
(242, 0, 0),
(215, 0, 0),
(214, 0, 0),
(233, 0, 0),
(230, 0, 0),
(2113, 0, 0),
(246, 0, 3),
(240, 0, 0),
(2114, 0, 0),
(2115, 0, 0),
(2116, 0, 0),
(2117, 0, 0),
(2118, 0, 0),
(2119, 0, 0),
(2120, 0, 0),
(2121, 0, 0),
(2122, 0, 0),
(2123, 0, 0),
(2124, 0, 0),
(2125, 0, 0),
(2126, 0, 0),
(2127, 0, 0),
(2128, 0, 0),
(2129, 0, 0),
(2130, 0, 0),
(2131, 0, 0),
(2132, 0, 0),
(2133, 0, 0),
(2134, 0, 0),
(2135, 0, 0),
(2136, 0, 0),
(2137, 0, 0),
(2138, 0, 0),
(2139, 0, 0),
(2140, 0, 0),
(2141, 0, 0),
(2142, 0, 0),
(2143, 0, 0),
(2144, 0, 0),
(2145, 0, 0),
(2146, 0, 0),
(2147, 0, 0),
(2148, 0, 0),
(2149, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(2113, 0),
(2114, 0),
(2115, 0),
(2116, 0),
(2117, 0),
(2118, 0),
(2119, 0),
(2120, 0),
(2121, 0),
(2122, 0),
(2123, 0),
(2124, 0),
(2125, 0),
(2126, 0),
(2127, 0),
(2128, 0),
(2129, 0),
(2130, 0),
(2131, 0),
(2132, 0),
(2133, 0),
(2134, 0),
(2135, 0),
(2136, 0),
(2137, 0),
(2138, 0),
(2139, 0),
(2140, 0),
(2141, 0),
(2142, 0),
(2143, 0),
(2144, 0),
(2145, 0),
(2146, 0),
(2147, 0),
(2148, 0),
(2149, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2088 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(404, 0, 'category', 'category_status', '1', 0),
(807, 0, 'pavmegamenu_params', 'pavmegamenu_params', '[{"id":40,"group":0,"cols":1,"submenu":1,"align":"aligned-left","rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":2,"group":0,"cols":3,"subwidth":1170,"submenu":1,"align":"aligned-fullwidth","rows":[{"cols":[{"widgets":"wid-26","colwidth":3},{"widgets":"wid-27","colwidth":3},{"widgets":"wid-28","colwidth":3},{"widgets":"wid-29","colwidth":3}]}]},{"id":5,"group":0,"cols":1,"submenu":1,"align":"aligned-fullwidth","rows":[{"cols":[{"widgets":"wid-30","colwidth":3},{"widgets":"wid-34|wid-35","colwidth":6},{"widgets":"wid-32","colwidth":3}]}]},{"submenu":1,"subwidth":700,"id":52,"align":"aligned-left","group":0,"cols":1,"rows":[{"cols":[{"widgets":"wid-54","colwidth":4},{"widgets":"wid-52","colwidth":8}]}]},{"id":49,"group":0,"cols":1,"submenu":1,"align":"aligned-fullwidth","rows":[{"cols":[{"widgets":"wid-48","colwidth":6},{"widgets":"wid-51","colwidth":6}]}]},{"id":50,"group":0,"cols":1,"submenu":1,"align":"aligned-left","rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":58,"group":0,"cols":1,"submenu":1,"align":"aligned-left","rows":[{"cols":[{"type":"menu","colwidth":12}]}]}]', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(1855, 0, 'pavblog', 'pavblog', 'a:42:{s:14:"general_lwidth";s:3:"808";s:15:"general_lheight";s:3:"372";s:14:"general_swidth";s:3:"808";s:15:"general_sheight";s:3:"372";s:14:"general_xwidth";s:2:"92";s:15:"general_xheight";s:2:"80";s:14:"rss_limit_item";s:2:"12";s:26:"keyword_listing_blogs_page";s:5:"blogs";s:16:"children_columns";s:1:"3";s:14:"general_cwidth";s:3:"250";s:15:"general_cheight";s:3:"135";s:22:"cat_limit_leading_blog";s:1:"1";s:24:"cat_limit_secondary_blog";s:1:"5";s:22:"cat_leading_image_type";s:1:"l";s:24:"cat_secondary_image_type";s:1:"s";s:24:"cat_columns_leading_blog";s:1:"1";s:27:"cat_columns_secondary_blogs";s:1:"2";s:14:"cat_show_title";s:1:"1";s:20:"cat_show_description";s:1:"1";s:17:"cat_show_readmore";s:1:"1";s:14:"cat_show_image";s:1:"1";s:15:"cat_show_author";s:1:"1";s:17:"cat_show_category";s:1:"1";s:16:"cat_show_created";s:1:"1";s:13:"cat_show_hits";s:1:"1";s:24:"cat_show_comment_counter";s:1:"1";s:15:"blog_image_type";s:1:"l";s:15:"blog_show_title";s:1:"1";s:15:"blog_show_image";s:1:"1";s:16:"blog_show_author";s:1:"1";s:18:"blog_show_category";s:1:"1";s:17:"blog_show_created";s:1:"1";s:25:"blog_show_comment_counter";s:1:"1";s:14:"blog_show_hits";s:1:"1";s:22:"blog_show_comment_form";s:1:"1";s:14:"comment_engine";s:5:"local";s:14:"diquis_account";s:10:"pavothemes";s:14:"facebook_appid";s:12:"100858303516";s:13:"comment_limit";s:2:"10";s:14:"facebook_width";s:3:"600";s:20:"auto_publish_comment";s:1:"0";s:16:"enable_recaptcha";s:1:"1";}', 1),
(2084, 0, 'config', 'config_google_analytics', '', 0),
(2083, 0, 'config', 'config_error_filename', 'error.log', 0),
(2082, 0, 'config', 'config_error_log', '1', 0),
(2081, 0, 'config', 'config_error_display', '1', 0),
(2080, 0, 'config', 'config_compression', '0', 0),
(2079, 0, 'config', 'config_encryption', '447e9dcf8bddc328f73fe6dfb18e1752', 0),
(2078, 0, 'config', 'config_password', '1', 0),
(2077, 0, 'config', 'config_maintenance', '0', 0),
(2087, 0, 'themecontrol', 'themecontrol', 'a:71:{s:9:"layout_id";s:1:"1";s:8:"position";s:1:"1";s:21:"cateogry_display_mode";s:4:"grid";s:24:"listing_products_columns";s:1:"0";s:30:"listing_products_columns_small";s:1:"2";s:34:"listing_products_columns_minismall";s:1:"1";s:14:"category_pzoom";s:1:"1";s:18:"product_enablezoom";s:1:"1";s:19:"product_zoomgallery";s:6:"slider";s:16:"product_zoommode";s:5:"basic";s:20:"product_zoomlenssize";s:3:"150";s:18:"product_zoomeasing";s:1:"1";s:21:"product_zoomlensshape";s:5:"basic";s:22:"product_related_column";s:1:"0";s:24:"enable_product_customtab";s:1:"0";s:22:"product_customtab_name";a:2:{i:1;s:0:"";i:2;s:0:"";}s:25:"product_customtab_content";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:16:"location_address";s:44:"79-99 Beaver Street, New York, NY 10005, USA";s:17:"location_latitude";s:9:"40.705423";s:18:"location_longitude";s:10:"-74.008616";s:18:"contact_customhtml";a:2:{i:1;s:815:"&lt;div class=&quot;contact-customhtml&quot;&gt;&lt;div class=&quot;content&quot;&gt;&lt;p&gt;&lt;b&gt;&lt;small&gt;This is a CMS block edited from admin panel.&lt;/small&gt;&lt;br&gt;&lt;small&gt;You can insert any content here.&lt;/small&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non dui at sapien tempor gravida ut vel arcu. Nullam ac eros eros, et ullamcorper leo.&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;small&gt;Customer Service:&lt;/small&gt;&lt;/b&gt;&lt;br&gt;&lt;a href=&quot;mailto:info@yourstore.com&quot;&gt;info@yourstore.com&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;small&gt;Returns and Refunds:&lt;/small&gt;&lt;/b&gt;&lt;br&gt;&lt;a href=&quot;mailto:returns@yourstore.com&quot;&gt;returns@yourstore.com&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;";i:2;s:815:"&lt;div class=&quot;contact-customhtml&quot;&gt;&lt;div class=&quot;content&quot;&gt;&lt;p&gt;&lt;b&gt;&lt;small&gt;This is a CMS block edited from admin panel.&lt;/small&gt;&lt;br&gt;&lt;small&gt;You can insert any content here.&lt;/small&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non dui at sapien tempor gravida ut vel arcu. Nullam ac eros eros, et ullamcorper leo.&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;small&gt;Customer Service:&lt;/small&gt;&lt;/b&gt;&lt;br&gt;&lt;a href=&quot;mailto:info@yourstore.com&quot;&gt;info@yourstore.com&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;small&gt;Returns and Refunds:&lt;/small&gt;&lt;/b&gt;&lt;br&gt;&lt;a href=&quot;mailto:returns@yourstore.com&quot;&gt;returns@yourstore.com&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;";}s:4:"skin";s:0:"";s:11:"theme_width";s:4:"auto";s:23:"enable_custom_copyright";s:1:"0";s:9:"copyright";s:30:"Copyright 2013 Pavothemes.Com.";s:18:"enable_offsidebars";s:1:"1";s:20:"enable_footer_center";s:1:"1";s:16:"enable_paneltool";s:1:"1";s:13:"custom_header";s:1:"0";s:12:"catalog_mode";s:1:"0";s:15:"template_layout";s:9:"fullwidth";s:13:"header_layout";s:15:"hasverticalmenu";s:9:"quickview";s:1:"1";s:9:"logo_type";s:10:"logo-theme";s:14:"product_layout";s:7:"default";s:21:"product_detail_layout";s:7:"default";s:17:"widget_footbanner";s:0:"";s:12:"widget_about";a:2:{i:1;s:325:"&lt;p&gt;&lt;img src=&quot;image/catalog/logo.png&quot;&gt;&lt;/p&gt;\r\n                                    &lt;p&gt;&lt;span&gt;Praesent quis ante dapibus tellus mollis dapibus ullamcorper sit amet erat,&lt;/span&gt;&lt;span&gt;Praesent quis ante dapibus tellus mollis dapibus ullamcorper sit amet erat&lt;/span&gt;&lt;/p&gt;";i:2;s:325:"&lt;p&gt;&lt;img src=&quot;image/catalog/logo.png&quot;&gt;&lt;/p&gt;\r\n                                    &lt;p&gt;&lt;span&gt;Praesent quis ante dapibus tellus mollis dapibus ullamcorper sit amet erat,&lt;/span&gt;&lt;span&gt;Praesent quis ante dapibus tellus mollis dapibus ullamcorper sit amet erat&lt;/span&gt;&lt;/p&gt;";}s:14:"widget_address";a:2:{i:1;s:1999:"&lt;div class=&quot;box pav-custom  &quot;&gt;\r\n                                        &lt;div class=&quot;box-heading&quot;&gt;\r\n                                            &lt;span&gt;About Us&lt;/span&gt;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;box-content&quot;&gt;\r\n                                            &lt;div class=&quot;address&quot;&gt;\r\n                                                &lt;p&gt;&lt;span&gt;Praesent quis ante dapibus tellus mollis dapibus ullamcorper sit amet erat. &lt;/span&gt;&lt;/p&gt;\r\n                                                &lt;div class=&quot;box-addres&quot;&gt;\r\n                                                    &lt;div class=&quot;link-address icon&quot;&gt;\r\n                                                        &lt;span class=&quot;fa fa-map-marker&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;No 1104 Sky Tower, Newyork, USA&lt;/span&gt;\r\n                                                    &lt;/div&gt;\r\n                                                    &lt;div class=&quot;link-mobile icon&quot;&gt;\r\n                                                        &lt;span class=&quot;fa fa-phone&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;Phone: +01 888 (000) 1234&lt;/span&gt;\r\n                                                    &lt;/div&gt;\r\n                                                    &lt;div class=&quot;link-mail icon&quot;&gt;\r\n                                                        &lt;span class=&quot;fa fa-envelope&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n                                                        &lt;span&gt;Email: support@gmail.com&lt;/span&gt;\r\n                                                    &lt;/div&gt;\r\n                                                &lt;/div&gt;\r\n                                            &lt;/div&gt;\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;";i:2;s:1999:"&lt;div class=&quot;box pav-custom  &quot;&gt;\r\n                                        &lt;div class=&quot;box-heading&quot;&gt;\r\n                                            &lt;span&gt;About Us&lt;/span&gt;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;box-content&quot;&gt;\r\n                                            &lt;div class=&quot;address&quot;&gt;\r\n                                                &lt;p&gt;&lt;span&gt;Praesent quis ante dapibus tellus mollis dapibus ullamcorper sit amet erat. &lt;/span&gt;&lt;/p&gt;\r\n                                                &lt;div class=&quot;box-addres&quot;&gt;\r\n                                                    &lt;div class=&quot;link-address icon&quot;&gt;\r\n                                                        &lt;span class=&quot;fa fa-map-marker&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;No 1104 Sky Tower, Newyork, USA&lt;/span&gt;\r\n                                                    &lt;/div&gt;\r\n                                                    &lt;div class=&quot;link-mobile icon&quot;&gt;\r\n                                                        &lt;span class=&quot;fa fa-phone&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;Phone: +01 888 (000) 1234&lt;/span&gt;\r\n                                                    &lt;/div&gt;\r\n                                                    &lt;div class=&quot;link-mail icon&quot;&gt;\r\n                                                        &lt;span class=&quot;fa fa-envelope&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n                                                        &lt;span&gt;Email: support@gmail.com&lt;/span&gt;\r\n                                                    &lt;/div&gt;\r\n                                                &lt;/div&gt;\r\n                                            &lt;/div&gt;\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;";}s:13:"widget_paypal";a:2:{i:1;s:49:"&lt;img src=&quot;image/data/paypal.png&quot;&gt;";i:2;s:49:"&lt;img src=&quot;image/data/paypal.png&quot;&gt;";}s:17:"enable_customfont";s:1:"0";s:11:"type_fonts1";s:8:"standard";s:13:"normal_fonts1";s:7:"inherit";s:11:"google_url1";s:0:"";s:14:"google_family1";s:0:"";s:9:"fontsize1";s:7:"inherit";s:11:"type_fonts2";s:8:"standard";s:13:"normal_fonts2";s:7:"inherit";s:11:"google_url2";s:0:"";s:14:"google_family2";s:0:"";s:9:"fontsize2";s:7:"inherit";s:11:"type_fonts3";s:8:"standard";s:13:"normal_fonts3";s:7:"inherit";s:11:"google_url3";s:0:"";s:14:"google_family3";s:0:"";s:9:"fontsize3";s:7:"inherit";s:11:"type_fonts4";s:8:"standard";s:13:"normal_fonts4";s:27:"Verdana, Geneva, sans-serif";s:11:"google_url4";s:0:"";s:14:"google_family4";s:0:"";s:14:"body_selector4";s:0:"";s:14:"block_showcase";s:0:"";s:15:"block_promotion";s:0:"";s:16:"block_footer_top";s:0:"";s:19:"block_footer_center";s:0:"";s:19:"block_footer_bottom";s:0:"";s:19:"enable_compress_css";s:0:"";s:17:"exclude_css_files";s:13:"bootstrap.css";s:15:"customize_theme";s:0:"";s:10:"custom_css";s:0:"";s:17:"custom_javascript";s:0:"";}', 1),
(2001, 0, 'config', 'config_limit_admin', '20', 0),
(2002, 0, 'config', 'config_review_status', '1', 0),
(2003, 0, 'config', 'config_review_guest', '1', 0),
(2004, 0, 'config', 'config_review_mail', '0', 0),
(2005, 0, 'config', 'config_voucher_min', '1', 0),
(2006, 0, 'config', 'config_voucher_max', '1000', 0),
(2007, 0, 'config', 'config_tax', '1', 0),
(2008, 0, 'config', 'config_tax_default', 'shipping', 0),
(2009, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2010, 0, 'config', 'config_customer_online', '0', 0),
(2011, 0, 'config', 'config_customer_group_id', '1', 0),
(2012, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(2013, 0, 'config', 'config_customer_price', '0', 0),
(2014, 0, 'config', 'config_login_attempts', '5', 0),
(2015, 0, 'config', 'config_account_id', '3', 0),
(2016, 0, 'config', 'config_account_mail', '0', 0),
(2017, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(2018, 0, 'config', 'config_api_id', '1', 0),
(2019, 0, 'config', 'config_cart_weight', '1', 0),
(2020, 0, 'config', 'config_checkout_guest', '1', 0),
(2021, 0, 'config', 'config_checkout_id', '5', 0),
(2022, 0, 'config', 'config_order_status_id', '1', 0),
(2023, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(2024, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(2025, 0, 'config', 'config_order_mail', '0', 0),
(2026, 0, 'config', 'config_stock_display', '0', 0),
(2027, 0, 'config', 'config_stock_warning', '0', 0),
(2028, 0, 'config', 'config_stock_checkout', '0', 0),
(2029, 0, 'config', 'config_affiliate_approval', '0', 0),
(2030, 0, 'config', 'config_affiliate_auto', '0', 0),
(2031, 0, 'config', 'config_affiliate_commission', '5', 0),
(2032, 0, 'config', 'config_affiliate_id', '4', 0),
(2033, 0, 'config', 'config_affiliate_mail', '0', 0),
(2034, 0, 'config', 'config_return_id', '0', 0),
(2035, 0, 'config', 'config_return_status_id', '2', 0),
(2036, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(2037, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(2038, 0, 'config', 'config_image_category_width', '873', 0),
(2039, 0, 'config', 'config_image_category_height', '284', 0),
(2040, 0, 'config', 'config_image_thumb_width', '500', 0),
(2041, 0, 'config', 'config_image_thumb_height', '515', 0),
(2042, 0, 'config', 'config_image_popup_width', '500', 0),
(2043, 0, 'config', 'config_image_popup_height', '515', 0),
(2044, 0, 'config', 'config_image_product_width', '204', 0),
(2045, 0, 'config', 'config_image_product_height', '210', 0),
(2046, 0, 'config', 'config_image_additional_width', '75', 0),
(2047, 0, 'config', 'config_image_additional_height', '77', 0),
(2048, 0, 'config', 'config_image_related_width', '199', 0),
(2049, 0, 'config', 'config_image_related_height', '201', 0),
(2050, 0, 'config', 'config_image_compare_width', '90', 0),
(2051, 0, 'config', 'config_image_compare_height', '91', 0),
(2052, 0, 'config', 'config_image_wishlist_width', '70', 0),
(2053, 0, 'config', 'config_image_wishlist_height', '71', 0),
(2054, 0, 'config', 'config_image_cart_width', '70', 0),
(2055, 0, 'config', 'config_image_cart_height', '71', 0),
(2056, 0, 'config', 'config_image_location_width', '268', 0),
(2057, 0, 'config', 'config_image_location_height', '50', 0),
(2058, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(2059, 0, 'config', 'config_ftp_port', '21', 0),
(2060, 0, 'config', 'config_ftp_username', '', 0),
(2061, 0, 'config', 'config_ftp_password', '', 0),
(2062, 0, 'config', 'config_ftp_root', '', 0),
(2063, 0, 'config', 'config_ftp_status', '0', 0),
(2064, 0, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"mail";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:0:"";s:13:"smtp_username";s:0:"";s:13:"smtp_password";s:0:"";s:9:"smtp_port";s:0:"";s:12:"smtp_timeout";s:0:"";}', 1),
(2065, 0, 'config', 'config_mail_alert', '', 0),
(2066, 0, 'config', 'config_fraud_detection', '0', 0),
(2067, 0, 'config', 'config_fraud_key', '', 0),
(2068, 0, 'config', 'config_fraud_score', '', 0),
(2069, 0, 'config', 'config_fraud_status_id', '7', 0),
(2070, 0, 'config', 'config_secure', '0', 0),
(2071, 0, 'config', 'config_shared', '0', 0),
(2072, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2073, 0, 'config', 'config_seo_url', '0', 0),
(2074, 0, 'config', 'config_file_max_size', '300000', 0),
(2075, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(2076, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(2000, 0, 'config', 'config_product_description_length', '100', 0),
(1999, 0, 'config', 'config_product_limit', '15', 0),
(1995, 0, 'config', 'config_currency_auto', '1', 0),
(1996, 0, 'config', 'config_length_class_id', '1', 0),
(1997, 0, 'config', 'config_weight_class_id', '1', 0),
(1998, 0, 'config', 'config_product_count', '1', 0),
(1982, 0, 'config', 'config_image', '', 0),
(1983, 0, 'config', 'config_open', '', 0),
(1984, 0, 'config', 'config_comment', '', 0),
(1985, 0, 'config', 'config_meta_title', 'Pavo Megashop', 0),
(1986, 0, 'config', 'config_meta_description', 'Megashop', 0),
(1987, 0, 'config', 'config_meta_keyword', 'Megashop', 0),
(1988, 0, 'config', 'config_template', 'megashop', 0),
(1989, 0, 'config', 'config_layout_id', '4', 0),
(1990, 0, 'config', 'config_country_id', '222', 0),
(1991, 0, 'config', 'config_zone_id', '', 0),
(1992, 0, 'config', 'config_language', 'en', 0),
(1993, 0, 'config', 'config_admin_language', 'en', 0),
(1994, 0, 'config', 'config_currency', 'USD', 0),
(1981, 0, 'config', 'config_fax', '', 0),
(1980, 0, 'config', 'config_telephone', '123456789', 0),
(1978, 0, 'config', 'config_geocode', '', 0),
(1979, 0, 'config', 'config_email', 'admin@gmail.com', 0),
(1977, 0, 'config', 'config_address', '123 Main st. Los Angeles, CA, 90012, U.S.A', 0),
(1976, 0, 'config', 'config_owner', 'Pavo MegaShop', 0),
(1975, 0, 'config', 'config_name', 'Pavo MegaShop', 0),
(669, 0, 'pavsocial', 'pavsocial_module', 'a:1:{i:1;a:25:{s:6:"status";s:1:"1";s:4:"name";s:11:"Social Left";s:8:"facebook";s:35:"https://www.facebook.com/Pavothemes";s:14:"application_id";s:0:"";s:12:"border_color";s:7:"#FFFFFF";s:11:"colorscheme";s:5:"light";s:10:"face_width";s:3:"270";s:11:"face_height";s:3:"355";s:5:"tream";s:1:"1";s:10:"show_faces";s:1:"1";s:6:"header";s:1:"1";s:9:"widget_id";s:18:"366766896986591232";s:5:"count";s:1:"2";s:8:"username";s:10:"PavoThemes";s:5:"theme";s:5:"light";s:14:"nickname_color";s:7:"#FFFFFF";s:10:"name_color";s:7:"#2465FF";s:11:"title_color";s:7:"#2465FF";s:10:"link_color";s:7:"#2465FF";s:5:"width";s:3:"270";s:6:"height";s:3:"355";s:12:"show_replies";s:1:"0";s:17:"youtube_video_ids";s:11:"oJOnoKZiJQA";s:11:"video_width";s:3:"270";s:12:"video_height";s:3:"137";}}', 1),
(688, 0, 'pavverticalmenu_params', 'params', '[{"submenu":1,"subwidth":800,"id":40,"group":0,"cols":1,"rows":[{"cols":[{"widgets":"wid-30","colwidth":4},{"widgets":"wid-31","colwidth":4},{"widgets":"wid-32","colwidth":4}]},{"cols":[{"widgets":"wid-33","colwidth":12}]}]},{"id":44,"group":0,"cols":1,"subwidth":700,"submenu":1,"rows":[{"cols":[{"widgets":"wid-11|wid-34|wid-36","colwidth":8},{"widgets":"wid-35","colwidth":4,"colclass":"sidebar"}]}]},{"id":3,"group":0,"cols":1,"submenu":1,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":26,"group":0,"cols":1,"submenu":1,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":13,"group":0,"cols":1,"submenu":1,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":28,"group":0,"cols":1,"submenu":1,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]}]', 0),
(526, 0, 'account', 'account_status', '1', 0),
(515, 0, 'pavverticalcategorytabs', 'pavverticalcategorytabs_module', 'a:1:{i:1;a:15:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:12:"prefix_class";s:12:"column_class";s:11:"category_id";s:2:"20";s:5:"image";s:30:"catalog/banner/banner-cat5.jpg";s:6:"iwidth";s:3:"249";s:7:"iheight";s:3:"348";s:15:"banner_position";s:1:"1";s:10:"limit_tabs";s:1:"8";s:10:"status_nav";s:1:"1";s:5:"width";s:3:"450";s:6:"height";s:3:"463";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"limit";s:1:"9";s:12:"tab_position";s:1:"1";}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', 20.0000, 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', 2.0000, 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=878 ;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(824, 'product_id=48', 'ipod-classic'),
(836, 'category_id=20', 'desktops'),
(834, 'category_id=26', 'pc'),
(835, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(768, 'product_id=42', 'test'),
(789, 'category_id=34', 'mp3-players'),
(781, 'category_id=36', 'test2'),
(874, 'category_id=18', 'laptop-notebook'),
(775, 'category_id=46', 'macs'),
(776, 'category_id=45', 'windows'),
(777, 'category_id=25', 'component'),
(778, 'category_id=29', 'mouse'),
(779, 'category_id=28', 'monitor'),
(780, 'category_id=35', 'test1'),
(782, 'category_id=30', 'printer'),
(783, 'category_id=31', 'scanner'),
(784, 'category_id=32', 'web-camera'),
(785, 'category_id=57', 'tablet'),
(786, 'category_id=17', 'software'),
(787, 'category_id=24', 'smartphone'),
(788, 'category_id=33', 'camera'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(803, 'category_id=38', 'test4'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(809, 'product_id=30', 'canon-eos-5d'),
(840, 'product_id=47', 'hp-lp3065'),
(811, 'product_id=28', 'htc-touch-hd'),
(812, 'product_id=43', 'macbook'),
(875, 'product_id=44', 'macbook-air'),
(814, 'product_id=45', 'macbook-pro'),
(816, 'product_id=31', 'nikon-d300'),
(817, 'product_id=29', 'palm-treo-pro'),
(818, 'product_id=35', 'product-8'),
(819, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 'product_id=46', 'sony-vaio'),
(876, 'product_id=41', 'imac'),
(823, 'product_id=40', 'iphone'),
(825, 'product_id=36', 'ipod-nano'),
(826, 'product_id=34', 'ipod-shuffle'),
(827, 'product_id=32', 'ipod-touch'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(845, 'common/home', ''),
(846, 'information/contact', 'contact-us'),
(847, 'information/sitemap', 'sitemap'),
(848, 'product/special', 'specials'),
(849, 'product/manufacturer', 'brands'),
(850, 'product/compare', 'compare-products'),
(851, 'product/search', 'search'),
(852, 'checkout/cart', 'cart'),
(853, 'checkout/checkout', 'checkout'),
(854, 'account/login', 'login'),
(855, 'account/logout', 'logout'),
(856, 'account/voucher', 'vouchers'),
(857, 'account/wishlist', 'wishlist'),
(858, 'account/account', 'my-account'),
(859, 'account/order', 'order-history'),
(860, 'account/newsletter', 'newsletter'),
(861, 'account/return/add', 'return-add'),
(862, 'account/forgotten', 'forgot-password'),
(863, 'account/download', 'downloads'),
(864, 'account/return', 'returns'),
(865, 'account/transaction', 'transactions'),
(866, 'account/register', 'create-account'),
(867, 'account/recurring', 'recurring'),
(868, 'account/address', 'address-book'),
(869, 'account/reward', 'reward-points'),
(870, 'affiliate/forgotten', 'affiliate-forgot-password'),
(871, 'affiliate/register', 'create-affiliate-account'),
(872, 'affiliate/login', 'affiliate-login'),
(873, 'affiliate/account', 'affiliates'),
(877, 'information_id=7', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '4e3d89ac302343957d59468b6a3b1b4060546f93', 'f925a7f2a', 'John', 'Doe', 'nmc2010@gmail.com', '', '', '::1', 1, '2014-12-03 11:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:261:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"dashboard/activity";i:17;s:15:"dashboard/chart";i:18;s:18:"dashboard/customer";i:19;s:13:"dashboard/map";i:20;s:16:"dashboard/online";i:21;s:15:"dashboard/order";i:22;s:16:"dashboard/recent";i:23;s:14:"dashboard/sale";i:24;s:13:"design/banner";i:25;s:13:"design/layout";i:26;s:14:"extension/feed";i:27;s:19:"extension/installer";i:28;s:22:"extension/modification";i:29;s:16:"extension/module";i:30;s:17:"extension/openbay";i:31;s:17:"extension/payment";i:32;s:18:"extension/shipping";i:33;s:15:"extension/total";i:34;s:16:"feed/google_base";i:35;s:19:"feed/google_sitemap";i:36;s:15:"feed/openbaypro";i:37;s:20:"localisation/country";i:38;s:21:"localisation/currency";i:39;s:21:"localisation/geo_zone";i:40;s:21:"localisation/language";i:41;s:25:"localisation/length_class";i:42;s:21:"localisation/location";i:43;s:25:"localisation/order_status";i:44;s:26:"localisation/return_action";i:45;s:26:"localisation/return_reason";i:46;s:26:"localisation/return_status";i:47;s:25:"localisation/stock_status";i:48;s:22:"localisation/tax_class";i:49;s:21:"localisation/tax_rate";i:50;s:25:"localisation/weight_class";i:51;s:17:"localisation/zone";i:52;s:19:"marketing/affiliate";i:53;s:17:"marketing/contact";i:54;s:16:"marketing/coupon";i:55;s:19:"marketing/marketing";i:56;s:14:"module/account";i:57;s:16:"module/affiliate";i:58;s:20:"module/amazon_button";i:59;s:13:"module/banner";i:60;s:17:"module/bestseller";i:61;s:15:"module/carousel";i:62;s:15:"module/category";i:63;s:11:"module/ebay";i:64;s:15:"module/featured";i:65;s:13:"module/filter";i:66;s:22:"module/google_hangouts";i:67;s:11:"module/html";i:68;s:18:"module/information";i:69;s:13:"module/latest";i:70;s:16:"module/pp_button";i:71;s:15:"module/pp_login";i:72;s:16:"module/slideshow";i:73;s:14:"module/special";i:74;s:12:"module/store";i:75;s:14:"openbay/amazon";i:76;s:22:"openbay/amazon_listing";i:77;s:22:"openbay/amazon_product";i:78;s:16:"openbay/amazonus";i:79;s:24:"openbay/amazonus_listing";i:80;s:24:"openbay/amazonus_product";i:81;s:12:"openbay/ebay";i:82;s:20:"openbay/ebay_profile";i:83;s:21:"openbay/ebay_template";i:84;s:12:"openbay/etsy";i:85;s:20:"openbay/etsy_product";i:86;s:21:"openbay/etsy_shipping";i:87;s:17:"openbay/etsy_shop";i:88;s:23:"payment/amazon_checkout";i:89;s:24:"payment/authorizenet_aim";i:90;s:24:"payment/authorizenet_sim";i:91;s:21:"payment/bank_transfer";i:92;s:22:"payment/bluepay_hosted";i:93;s:24:"payment/bluepay_redirect";i:94;s:14:"payment/cheque";i:95;s:11:"payment/cod";i:96;s:17:"payment/firstdata";i:97;s:24:"payment/firstdata_remote";i:98;s:21:"payment/free_checkout";i:99;s:22:"payment/klarna_account";i:100;s:22:"payment/klarna_invoice";i:101;s:14:"payment/liqpay";i:102;s:14:"payment/nochex";i:103;s:15:"payment/paymate";i:104;s:16:"payment/paypoint";i:105;s:13:"payment/payza";i:106;s:26:"payment/perpetual_payments";i:107;s:18:"payment/pp_express";i:108;s:18:"payment/pp_payflow";i:109;s:25:"payment/pp_payflow_iframe";i:110;s:14:"payment/pp_pro";i:111;s:21:"payment/pp_pro_iframe";i:112;s:19:"payment/pp_standard";i:113;s:14:"payment/realex";i:114;s:21:"payment/realex_remote";i:115;s:22:"payment/sagepay_direct";i:116;s:22:"payment/sagepay_server";i:117;s:18:"payment/sagepay_us";i:118;s:24:"payment/securetrading_pp";i:119;s:24:"payment/securetrading_ws";i:120;s:14:"payment/skrill";i:121;s:19:"payment/twocheckout";i:122;s:28:"payment/web_payment_software";i:123;s:16:"payment/worldpay";i:124;s:16:"report/affiliate";i:125;s:25:"report/affiliate_activity";i:126;s:22:"report/affiliate_login";i:127;s:24:"report/customer_activity";i:128;s:22:"report/customer_credit";i:129;s:21:"report/customer_login";i:130;s:22:"report/customer_online";i:131;s:21:"report/customer_order";i:132;s:22:"report/customer_reward";i:133;s:16:"report/marketing";i:134;s:24:"report/product_purchased";i:135;s:21:"report/product_viewed";i:136;s:18:"report/sale_coupon";i:137;s:17:"report/sale_order";i:138;s:18:"report/sale_return";i:139;s:20:"report/sale_shipping";i:140;s:15:"report/sale_tax";i:141;s:17:"sale/custom_field";i:142;s:13:"sale/customer";i:143;s:20:"sale/customer_ban_ip";i:144;s:19:"sale/customer_group";i:145;s:10:"sale/order";i:146;s:14:"sale/recurring";i:147;s:11:"sale/return";i:148;s:12:"sale/voucher";i:149;s:18:"sale/voucher_theme";i:150;s:15:"setting/setting";i:151;s:13:"setting/store";i:152;s:16:"shipping/auspost";i:153;s:17:"shipping/citylink";i:154;s:14:"shipping/fedex";i:155;s:13:"shipping/flat";i:156;s:13:"shipping/free";i:157;s:13:"shipping/item";i:158;s:23:"shipping/parcelforce_48";i:159;s:15:"shipping/pickup";i:160;s:19:"shipping/royal_mail";i:161;s:12:"shipping/ups";i:162;s:13:"shipping/usps";i:163;s:15:"shipping/weight";i:164;s:11:"tool/backup";i:165;s:14:"tool/error_log";i:166;s:11:"tool/upload";i:167;s:12:"total/coupon";i:168;s:12:"total/credit";i:169;s:14:"total/handling";i:170;s:16:"total/klarna_fee";i:171;s:19:"total/low_order_fee";i:172;s:12:"total/reward";i:173;s:14:"total/shipping";i:174;s:15:"total/sub_total";i:175;s:9:"total/tax";i:176;s:11:"total/total";i:177;s:13:"total/voucher";i:178;s:8:"user/api";i:179;s:9:"user/user";i:180;s:20:"user/user_permission";i:181;s:21:"module/pavhomebuilder";i:182;s:19:"module/themecontrol";i:183;s:22:"module/pavcategorytabs";i:184;s:18:"module/pavmegamenu";i:185;s:22:"module/pavverticalmenu";i:186;s:20:"module/pavautosearch";i:187;s:23:"module/pavbannerbuilder";i:188;s:14:"module/pavblog";i:189;s:22:"module/pavblogcategory";i:190;s:21:"module/pavblogcomment";i:191;s:20:"module/pavbloglatest";i:192;s:22:"module/pavcategorytabs";i:193;s:21:"module/pavhomebuilder";i:194;s:13:"module/pavmap";i:195;s:21:"module/pavsliderlayer";i:196;s:21:"module/pavreassurance";i:197;s:18:"module/pavproducts";i:198;s:20:"module/pavnewsletter";i:199;s:19:"module/themecontrol";i:200;s:21:"module/pavproducttabs";i:201;s:16:"module/pavsocial";i:202;s:18:"module/pavcarousel";i:203;s:30:"module/pavverticalcategorytabs";i:204;s:21:"module/pavhomebuilder";i:205;s:21:"module/pavproducttabs";i:206;s:16:"module/pavsocial";i:207;s:18:"module/pavcarousel";i:208;s:30:"module/pavverticalcategorytabs";i:209;s:21:"module/pavproducttabs";i:210;s:16:"module/pavsocial";i:211;s:18:"module/pavcarousel";i:212;s:30:"module/pavverticalcategorytabs";i:213;s:14:"module/account";i:214;s:16:"module/affiliate";i:215;s:20:"module/amazon_button";i:216;s:13:"module/banner";i:217;s:17:"module/bestseller";i:218;s:19:"module/ebay_listing";i:219;s:15:"module/featured";i:220;s:13:"module/filter";i:221;s:11:"module/html";i:222;s:22:"module/google_hangouts";i:223;s:18:"module/information";i:224;s:13:"module/latest";i:225;s:16:"module/slideshow";i:226;s:14:"module/special";i:227;s:12:"module/store";i:228;s:15:"module/pp_login";i:229;s:16:"module/pp_button";i:230;s:19:"module/themecontrol";i:231;s:22:"module/pavcategorytabs";i:232;s:21:"module/pavhomebuilder";i:233;s:18:"module/pavmegamenu";i:234;s:21:"module/pavreassurance";i:235;s:23:"module/pavbannerbuilder";i:236;s:18:"module/pavmegamenu";i:237;s:22:"module/pavverticalmenu";i:238;s:21:"module/pavsliderlayer";i:239;s:21:"module/pavreassurance";i:240;s:21:"module/pavproducttabs";i:241;s:20:"module/pavnewsletter";i:242;s:14:"module/pavblog";i:243;s:22:"module/pavblogcategory";i:244;s:21:"module/pavblogcomment";i:245;s:20:"module/pavbloglatest";i:246;s:16:"module/pavsocial";i:247;s:13:"module/pavmap";i:248;s:18:"module/pavcarousel";i:249;s:18:"module/pavcarousel";i:250;s:22:"module/pavverticalmenu";i:251;s:20:"module/pavautosearch";i:252;s:22:"module/pavcategorytabs";i:253;s:21:"module/pavproducttabs";i:254;s:22:"module/pavcategorytabs";i:255;s:30:"module/pavverticalcategorytabs";i:256;s:20:"module/amazon_button";i:257;s:13:"module/banner";i:258;s:17:"module/bestseller";i:259;s:15:"module/featured";i:260;s:13:"module/latest";}s:6:"modify";a:261:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"dashboard/activity";i:17;s:15:"dashboard/chart";i:18;s:18:"dashboard/customer";i:19;s:13:"dashboard/map";i:20;s:16:"dashboard/online";i:21;s:15:"dashboard/order";i:22;s:16:"dashboard/recent";i:23;s:14:"dashboard/sale";i:24;s:13:"design/banner";i:25;s:13:"design/layout";i:26;s:14:"extension/feed";i:27;s:19:"extension/installer";i:28;s:22:"extension/modification";i:29;s:16:"extension/module";i:30;s:17:"extension/openbay";i:31;s:17:"extension/payment";i:32;s:18:"extension/shipping";i:33;s:15:"extension/total";i:34;s:16:"feed/google_base";i:35;s:19:"feed/google_sitemap";i:36;s:15:"feed/openbaypro";i:37;s:20:"localisation/country";i:38;s:21:"localisation/currency";i:39;s:21:"localisation/geo_zone";i:40;s:21:"localisation/language";i:41;s:25:"localisation/length_class";i:42;s:21:"localisation/location";i:43;s:25:"localisation/order_status";i:44;s:26:"localisation/return_action";i:45;s:26:"localisation/return_reason";i:46;s:26:"localisation/return_status";i:47;s:25:"localisation/stock_status";i:48;s:22:"localisation/tax_class";i:49;s:21:"localisation/tax_rate";i:50;s:25:"localisation/weight_class";i:51;s:17:"localisation/zone";i:52;s:19:"marketing/affiliate";i:53;s:17:"marketing/contact";i:54;s:16:"marketing/coupon";i:55;s:19:"marketing/marketing";i:56;s:14:"module/account";i:57;s:16:"module/affiliate";i:58;s:20:"module/amazon_button";i:59;s:13:"module/banner";i:60;s:17:"module/bestseller";i:61;s:15:"module/carousel";i:62;s:15:"module/category";i:63;s:11:"module/ebay";i:64;s:15:"module/featured";i:65;s:13:"module/filter";i:66;s:22:"module/google_hangouts";i:67;s:11:"module/html";i:68;s:18:"module/information";i:69;s:13:"module/latest";i:70;s:16:"module/pp_button";i:71;s:15:"module/pp_login";i:72;s:16:"module/slideshow";i:73;s:14:"module/special";i:74;s:12:"module/store";i:75;s:14:"openbay/amazon";i:76;s:22:"openbay/amazon_listing";i:77;s:22:"openbay/amazon_product";i:78;s:16:"openbay/amazonus";i:79;s:24:"openbay/amazonus_listing";i:80;s:24:"openbay/amazonus_product";i:81;s:12:"openbay/ebay";i:82;s:20:"openbay/ebay_profile";i:83;s:21:"openbay/ebay_template";i:84;s:12:"openbay/etsy";i:85;s:20:"openbay/etsy_product";i:86;s:21:"openbay/etsy_shipping";i:87;s:17:"openbay/etsy_shop";i:88;s:23:"payment/amazon_checkout";i:89;s:24:"payment/authorizenet_aim";i:90;s:24:"payment/authorizenet_sim";i:91;s:21:"payment/bank_transfer";i:92;s:22:"payment/bluepay_hosted";i:93;s:24:"payment/bluepay_redirect";i:94;s:14:"payment/cheque";i:95;s:11:"payment/cod";i:96;s:17:"payment/firstdata";i:97;s:24:"payment/firstdata_remote";i:98;s:21:"payment/free_checkout";i:99;s:22:"payment/klarna_account";i:100;s:22:"payment/klarna_invoice";i:101;s:14:"payment/liqpay";i:102;s:14:"payment/nochex";i:103;s:15:"payment/paymate";i:104;s:16:"payment/paypoint";i:105;s:13:"payment/payza";i:106;s:26:"payment/perpetual_payments";i:107;s:18:"payment/pp_express";i:108;s:18:"payment/pp_payflow";i:109;s:25:"payment/pp_payflow_iframe";i:110;s:14:"payment/pp_pro";i:111;s:21:"payment/pp_pro_iframe";i:112;s:19:"payment/pp_standard";i:113;s:14:"payment/realex";i:114;s:21:"payment/realex_remote";i:115;s:22:"payment/sagepay_direct";i:116;s:22:"payment/sagepay_server";i:117;s:18:"payment/sagepay_us";i:118;s:24:"payment/securetrading_pp";i:119;s:24:"payment/securetrading_ws";i:120;s:14:"payment/skrill";i:121;s:19:"payment/twocheckout";i:122;s:28:"payment/web_payment_software";i:123;s:16:"payment/worldpay";i:124;s:16:"report/affiliate";i:125;s:25:"report/affiliate_activity";i:126;s:22:"report/affiliate_login";i:127;s:24:"report/customer_activity";i:128;s:22:"report/customer_credit";i:129;s:21:"report/customer_login";i:130;s:22:"report/customer_online";i:131;s:21:"report/customer_order";i:132;s:22:"report/customer_reward";i:133;s:16:"report/marketing";i:134;s:24:"report/product_purchased";i:135;s:21:"report/product_viewed";i:136;s:18:"report/sale_coupon";i:137;s:17:"report/sale_order";i:138;s:18:"report/sale_return";i:139;s:20:"report/sale_shipping";i:140;s:15:"report/sale_tax";i:141;s:17:"sale/custom_field";i:142;s:13:"sale/customer";i:143;s:20:"sale/customer_ban_ip";i:144;s:19:"sale/customer_group";i:145;s:10:"sale/order";i:146;s:14:"sale/recurring";i:147;s:11:"sale/return";i:148;s:12:"sale/voucher";i:149;s:18:"sale/voucher_theme";i:150;s:15:"setting/setting";i:151;s:13:"setting/store";i:152;s:16:"shipping/auspost";i:153;s:17:"shipping/citylink";i:154;s:14:"shipping/fedex";i:155;s:13:"shipping/flat";i:156;s:13:"shipping/free";i:157;s:13:"shipping/item";i:158;s:23:"shipping/parcelforce_48";i:159;s:15:"shipping/pickup";i:160;s:19:"shipping/royal_mail";i:161;s:12:"shipping/ups";i:162;s:13:"shipping/usps";i:163;s:15:"shipping/weight";i:164;s:11:"tool/backup";i:165;s:14:"tool/error_log";i:166;s:11:"tool/upload";i:167;s:12:"total/coupon";i:168;s:12:"total/credit";i:169;s:14:"total/handling";i:170;s:16:"total/klarna_fee";i:171;s:19:"total/low_order_fee";i:172;s:12:"total/reward";i:173;s:14:"total/shipping";i:174;s:15:"total/sub_total";i:175;s:9:"total/tax";i:176;s:11:"total/total";i:177;s:13:"total/voucher";i:178;s:8:"user/api";i:179;s:9:"user/user";i:180;s:20:"user/user_permission";i:181;s:21:"module/pavhomebuilder";i:182;s:19:"module/themecontrol";i:183;s:22:"module/pavcategorytabs";i:184;s:18:"module/pavmegamenu";i:185;s:22:"module/pavverticalmenu";i:186;s:20:"module/pavautosearch";i:187;s:23:"module/pavbannerbuilder";i:188;s:14:"module/pavblog";i:189;s:22:"module/pavblogcategory";i:190;s:21:"module/pavblogcomment";i:191;s:20:"module/pavbloglatest";i:192;s:22:"module/pavcategorytabs";i:193;s:21:"module/pavhomebuilder";i:194;s:13:"module/pavmap";i:195;s:21:"module/pavsliderlayer";i:196;s:21:"module/pavreassurance";i:197;s:18:"module/pavproducts";i:198;s:20:"module/pavnewsletter";i:199;s:19:"module/themecontrol";i:200;s:21:"module/pavproducttabs";i:201;s:16:"module/pavsocial";i:202;s:18:"module/pavcarousel";i:203;s:30:"module/pavverticalcategorytabs";i:204;s:21:"module/pavhomebuilder";i:205;s:21:"module/pavproducttabs";i:206;s:16:"module/pavsocial";i:207;s:18:"module/pavcarousel";i:208;s:30:"module/pavverticalcategorytabs";i:209;s:21:"module/pavproducttabs";i:210;s:16:"module/pavsocial";i:211;s:18:"module/pavcarousel";i:212;s:30:"module/pavverticalcategorytabs";i:213;s:14:"module/account";i:214;s:16:"module/affiliate";i:215;s:20:"module/amazon_button";i:216;s:13:"module/banner";i:217;s:17:"module/bestseller";i:218;s:19:"module/ebay_listing";i:219;s:15:"module/featured";i:220;s:13:"module/filter";i:221;s:11:"module/html";i:222;s:22:"module/google_hangouts";i:223;s:18:"module/information";i:224;s:13:"module/latest";i:225;s:16:"module/slideshow";i:226;s:14:"module/special";i:227;s:12:"module/store";i:228;s:15:"module/pp_login";i:229;s:16:"module/pp_button";i:230;s:19:"module/themecontrol";i:231;s:22:"module/pavcategorytabs";i:232;s:21:"module/pavhomebuilder";i:233;s:18:"module/pavmegamenu";i:234;s:21:"module/pavreassurance";i:235;s:23:"module/pavbannerbuilder";i:236;s:18:"module/pavmegamenu";i:237;s:22:"module/pavverticalmenu";i:238;s:21:"module/pavsliderlayer";i:239;s:21:"module/pavreassurance";i:240;s:21:"module/pavproducttabs";i:241;s:20:"module/pavnewsletter";i:242;s:14:"module/pavblog";i:243;s:22:"module/pavblogcategory";i:244;s:21:"module/pavblogcomment";i:245;s:20:"module/pavbloglatest";i:246;s:16:"module/pavsocial";i:247;s:13:"module/pavmap";i:248;s:18:"module/pavcarousel";i:249;s:18:"module/pavcarousel";i:250;s:22:"module/pavverticalmenu";i:251;s:20:"module/pavautosearch";i:252;s:22:"module/pavcategorytabs";i:253;s:21:"module/pavproducttabs";i:254;s:22:"module/pavcategorytabs";i:255;s:30:"module/pavverticalcategorytabs";i:256;s:20:"module/amazon_button";i:257;s:13:"module/banner";i:258;s:17:"module/bestseller";i:259;s:15:"module/featured";i:260;s:13:"module/latest";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu`
--

CREATE TABLE IF NOT EXISTS `oc_verticalmenu` (
  `verticalmenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  PRIMARY KEY (`verticalmenu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `oc_verticalmenu`
--

INSERT INTO `oc_verticalmenu` (`verticalmenu_id`, `widget_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`) VALUES
(1, 0, '', 0, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 0, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, -5, 34, 47),
(3, 1, 'catalog/icon-verticalmenu/icon12.png', 1, 0, NULL, NULL, NULL, '', '60', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', 'pav-parrent', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(4, 1, '', 3, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(7, 1, 'catalog/icon-verticalmenu/icon06.png', 1, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', 'child-menu', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(10, 1, '', 26, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(11, 1, '', 26, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(12, 1, '', 26, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(13, 1, '', 26, 0, NULL, NULL, NULL, '', '34', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(14, 1, '', 26, 0, NULL, NULL, NULL, '', '24', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(15, 1, '', 26, 0, NULL, NULL, NULL, '', '17', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(16, 1, '', 26, 0, NULL, NULL, NULL, '', '57', '1', 'category', 0, 1, 'menu', 0, 1, 0, 7, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(17, 1, '', 28, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(18, 1, '', 28, 0, NULL, NULL, NULL, '', '67', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(19, 1, '', 28, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(20, 1, '', 28, 0, NULL, NULL, NULL, '', '29', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(21, 1, '', 28, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(22, 1, '', 28, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(23, 1, '', 28, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 7, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(25, 1, '', 3, 0, NULL, NULL, NULL, '', '29', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(26, 1, '', 3, 0, NULL, NULL, NULL, '', '31', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(27, 1, 'catalog/icon-verticalmenu/icon02.png', 1, 0, NULL, NULL, NULL, '', '81', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(28, 1, 'catalog/icon-verticalmenu/icon08.png', 1, 0, NULL, NULL, NULL, '', '87', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', '', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(29, 1, '', 3, 0, NULL, NULL, NULL, '', '28', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(30, 1, '', 3, 0, NULL, NULL, NULL, '', '27', '1', 'category', 0, 1, 'menu', 0, 1, 0, 7, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(31, 1, '', 3, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 8, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(32, 1, '', 3, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 9, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(33, 1, '', 3, 0, NULL, NULL, NULL, '', '34', '1', 'category', 0, 1, 'menu', 0, 1, 0, 10, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(34, 1, '', 3, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 11, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(35, 1, '', 3, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 12, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(36, 1, '', 3, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 13, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(37, 1, 'catalog/icon-verticalmenu/icon09.png', 1, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', '', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(40, 1, 'catalog/icon-verticalmenu/icon03.png', 1, 0, NULL, NULL, NULL, '', '34', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', 'home', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(41, 1, '', 26, 0, NULL, NULL, NULL, '', '45', '1', 'category', 0, 1, 'menu', 0, 1, 0, 8, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(42, 1, '', 26, 0, NULL, NULL, NULL, '', '18', '1', 'category', 0, 1, 'menu', 0, 1, 0, 9, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(44, 1, 'catalog/icon-verticalmenu/icon05.png', 1, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', 'child-menu', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(45, 1, '', 13, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(46, 1, '', 13, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(47, 1, '', 13, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(48, 1, '', 13, 0, NULL, NULL, NULL, '', '17', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(49, 1, '', 13, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(51, 1, 'catalog/icon-verticalmenu/icon01.png', 1, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 8, 0, '', NULL, 0, 'top', 'home', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(52, 1, 'catalog/icon-verticalmenu/icon04.png', 1, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(53, 1, 'catalog/icon-verticalmenu/icon07.png', 1, 0, NULL, NULL, NULL, '', '32', '1', 'category', 0, 1, 'menu', 0, 1, 0, 9, 0, '', NULL, 0, 'top', '', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(54, 1, 'catalog/icon-verticalmenu/icon06.png', 1, 0, NULL, NULL, NULL, '', '31', '1', 'category', 0, 1, 'menu', 0, 1, 0, 10, 0, '', NULL, 0, 'top', '', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0),
(55, 1, 'catalog/icon-verticalmenu/icon11.png', 1, 0, NULL, NULL, NULL, '', '27', '1', 'category', 0, 1, 'menu', 0, 1, 0, 11, 0, '', NULL, 0, 'top', '', NULL, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_description`
--

CREATE TABLE IF NOT EXISTS `oc_verticalmenu_description` (
  `verticalmenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`verticalmenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu_description`
--

INSERT INTO `oc_verticalmenu_description` (`verticalmenu_id`, `language_id`, `title`, `description`) VALUES
(7, 1, 'Mobile digital', 'Morbi accumsan ipsum velit. Nam nec tellus'),
(7, 2, 'الألعاب كونسول و', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد'),
(18, 1, 'Curabitur turpis ', ''),
(19, 2, 'يكن ودول التّحول بريطانيا في', ''),
(23, 2, 'يكن ودول التّحول بريطانيا في', ''),
(26, 1, 'Electronics Accessories', ''),
(40, 1, 'Fashion', 'Proin gravida nibh vel velit auctor aliquet'),
(40, 2, 'الكاميرات و أجهزة فيديو', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد'),
(37, 1, 'Televisions', 'Class aptent taciti sociosqu ad litora'),
(37, 2, 'تلفزيونات', 'عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو'),
(36, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(36, 1, 'Computers &amp; Tablets', ''),
(35, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(35, 1, 'TV &amp; Home Theater', ''),
(34, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(34, 1, 'Home &amp; Portable Audio', ''),
(33, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(33, 1, 'Cell Phones &amp; Services', ''),
(32, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(32, 1, 'Camera &amp; Video', ''),
(31, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(31, 1, 'Vehicle, GPS &amp; Navigation', ''),
(30, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(30, 1, 'Software', ''),
(29, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(29, 1, 'Office Products', ''),
(19, 1, 'Software', ''),
(27, 2, 'الإمتعاض إذ جوي.', ''),
(26, 2, 'يكن ودول التّحول بريطانيا في', ''),
(25, 1, 'Trade In Electronics', ''),
(25, 2, 'يكن ودول التّحول بريطانيا في', ''),
(4, 1, 'Musical Instruments', ''),
(4, 2, 'يكن ودول التّحول بريطانيا في', ''),
(16, 2, 'يكن ودول التّحول بريطانيا في', ''),
(15, 2, 'يكن ودول التّحول بريطانيا في', ''),
(15, 1, 'Software', ''),
(13, 1, 'MP3 Players', ''),
(13, 2, 'يكن ودول التّحول بريطانيا في', ''),
(12, 1, 'Desktops', ''),
(12, 2, 'يكن ودول التّحول بريطانيا في', ''),
(10, 1, 'Camera', ''),
(10, 2, 'يكن ودول التّحول بريطانيا في', ''),
(20, 1, 'Camera &amp; Videos', ''),
(20, 2, 'يكن ودول التّحول بريطانيا في', ''),
(17, 1, 'Musical Instruments', ''),
(17, 2, 'يكن ودول التّحول بريطانيا في', ''),
(22, 2, 'يكن ودول التّحول بريطانيا في', ''),
(21, 2, 'يكن ودول التّحول بريطانيا في', ''),
(11, 1, 'Components', ''),
(11, 2, 'يكن ودول التّحول بريطانيا في', ''),
(14, 1, 'Phones &amp; PDAs', ''),
(14, 2, 'يكن ودول التّحول بريطانيا في', ''),
(41, 1, 'Windows', ''),
(42, 1, 'Laptops &amp; Notebooks', ''),
(42, 2, 'يكن ودول التّحول بريطانيا في', ''),
(41, 2, 'يكن ودول التّحول بريطانيا في', ''),
(44, 1, 'Cosmetics', 'Aenean sollicitudin, lorem quis bibendum auctor'),
(44, 2, 'الترفيه المنزلي', 'عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو'),
(16, 1, 'Tablets', ''),
(18, 2, 'يكن ودول التّحول بريطانيا في', ''),
(3, 1, 'Electrical', 'Sed non  mauris vitae erat consequat auctor eu in elit'),
(3, 2, 'الهواتف الذكية وأقراص', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد'),
(45, 2, 'يكن ودول التّحول بريطانيا في', ''),
(47, 1, 'Gifts Cards, Tickets', ''),
(47, 2, 'يكن ودول التّحول بريطانيا في', ''),
(48, 2, 'يكن ودول التّحول بريطانيا في', ''),
(46, 2, 'يكن ودول التّحول بريطانيا في', ''),
(46, 1, 'Clothing &amp; Accessories', ''),
(45, 1, 'Baby, Kids &amp; Toys', ''),
(49, 2, 'يكن ودول التّحول بريطانيا في', ''),
(49, 1, 'Outdoor', ''),
(48, 1, 'Computers &amp; Parts', ''),
(21, 1, 'Video Games', ''),
(22, 1, 'Cameras &amp; Photo', ''),
(23, 1, 'Laptops &amp; Desktops', ''),
(52, 2, 'أجهزة الكمبيوتر وأجهزة', 'الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء.'),
(51, 2, 'مكتب', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد'),
(51, 1, 'Office', 'Proin gravida nibh vel velit auctor'),
(53, 1, 'Jewelry', 'Proin gravida nibh vel velit auctor'),
(53, 2, 'مجوهرات', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد'),
(54, 1, 'T-shirts', 'تي شيرت'),
(54, 2, 'تي شيرت', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد'),
(55, 2, 'عطر', ''),
(55, 1, 'Perfume', ''),
(28, 2, 'ن الإمتعاض إذ جوي', ''),
(52, 1, 'Women shoes', 'Duis sed odio sit amet nibh vulputate'),
(27, 1, 'Infant toys', ''),
(28, 1, 'Food', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_widgets`
--

CREATE TABLE IF NOT EXISTS `oc_verticalmenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `oc_verticalmenu_widgets`
--

INSERT INTO `oc_verticalmenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(1, 'Video Opencart Installation', 'video_code', 'a:1:{s:10:"video_code";s:168:"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;";}', 0),
(2, 'Electronics &amp; Computers', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:1022:"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;Computers &amp;amp; Tablets&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25&quot;&gt;TV &amp;amp; Home Theater&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;Home &amp;amp; Portable Audio&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=29&quot;&gt;Cell Phones &amp;amp; Services&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=28&quot;&gt;Camera &amp;amp; Video&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20&quot;&gt;Vehicle, GPS &amp;amp; Navigation&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34&quot;&gt;Musical Instruments&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n";i:2;s:1282:"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25&quot;&gt;للإمبر &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=29&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=28&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34&quot;&gt;مدن, هذا جديدة المذابح&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;";}}', 0),
(21, '', 'product_list', 'a:8:{s:4:"wkey";s:2:"21";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:13:"List-Category";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:7:"sidebar";s:5:"limit";s:1:"3";s:9:"list_type";s:8:"featured";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:3:"170";s:12:"image_height";s:2:"58";s:5:"limit";s:2:"16";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(29, 'Last Tweets', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:311:"&lt;p&gt;Eum id cibo affert, id vel quod vivendo, ea albucius recusabo ius. Eos ex eius sanctus similique, eu quo diam corrumpit, nec evertitur scribentur an. Eum no euismod sapientem, essent forensibus te usu. Mollis suavitate duo id, te duo quot audiam principes. Facer sapientem repudiare ex usu.&lt;/p&gt;\r\n";i:2;s:459:"&lt;p&gt;أن يجلب له الطعام، أو أنه على قيد الحياة، فإنه  كائن إلى اليمين. منهم من مقدس له مثل، لعبة كرة القدم التي تفسد أو انقلبت أو الاشتراك. جعل هو استثمار حكيم، يمكنك استخدام شريط. حلاوة اثنين الناعمة التي، كما سوف تسمع زعيمين. من الحكمة أن ترفض الطلب.&lt;/p&gt;";}}', 0),
(8, 'Banner', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:112:"&lt;img style=&quot;margin-top:30px&quot; src=&quot;image/data/banner/banner-menu.jpg&quot; alt=&quot;&quot;&gt;";i:2;s:113:"&lt;img style=&quot;margin-top:30px&quot;  src=&quot;image/data/banner/banner-menu.jpg&quot; alt=&quot;&quot;&gt;";}}', 0),
(9, 'Camera &amp; Videos', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:660:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=42&quot;&gt;Apple Cinema 30&quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=33&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=34&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=46&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;";i:2;s:693:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=42&quot;&gt;التفاح سينما 30 &quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=33&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=34&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=34&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;";}}', 0),
(36, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:346:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et\r\n elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique\r\n hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec \r\npurus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis \r\nmetus vel diam imperdiet fermentum.	&lt;/p&gt;";s:13:"htmlcontent_2";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}', 0),
(30, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Fashion";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Fashion";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"4";}', 0),
(31, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"34";s:5:"limit";s:1:"4";}', 0),
(32, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:8:"Homeware";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Homeware";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"20";s:5:"limit";s:1:"4";}', 0),
(33, '', 'product_list', 'a:9:{s:4:"wkey";s:2:"33";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"3";s:9:"list_type";s:6:"newest";}', 0),
(34, '', 'image', 'a:13:{s:4:"wkey";s:2:"34";s:5:"wtype";s:5:"image";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:33:"catalog/banner/vetical-banner.jpg";s:4:"size";s:7:"420X300";s:9:"animation";s:1:"4";s:9:"alignment";s:4:"left";s:7:"ispopup";s:1:"1";s:4:"link";s:0:"";}', 0),
(35, '', 'product_list', 'a:9:{s:4:"wkey";s:2:"35";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:7:"sidebar";s:5:"limit";s:1:"4";s:9:"list_type";s:6:"newest";}', 0),
(12, 'Networking', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:882:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;All Computers &amp;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Networking&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Tablets &amp; Accessories&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;&quot;&gt;Laptops &amp; Accessories &lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Computer &amp; Peripherals &lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Networking &amp; Storage&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Laptops&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Laptop Accessories&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Networking&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Mini PCs&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;";i:2;s:882:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;All Computers &amp;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Networking&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Tablets &amp; Accessories&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;&quot;&gt;Laptops &amp; Accessories &lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;&quot;&gt;Computer &amp; Peripherals &lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Networking &amp; Storage&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Laptops&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Laptop Accessories&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Networking&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Mini PCs&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;";}}', 0),
(13, 'Electrical', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:771:"&lt;h4 class=&quot;title&quot;&gt;Electrical&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_68&quot;&gt;Fridge Freezers&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_70&quot;&gt;LED TVs&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_64&quot;&gt;Vacuums &amp; Accessories&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_69&quot;&gt;Washing Machines&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_66&quot;&gt;Others&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n&lt;/ul&gt;";i:2;s:813:"&lt;h4 class=&quot;title&quot;&gt;الكهربائية&lt;/h4&gt;\r\n&lt;ul class=&quot;content&quot;&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_68&quot;&gt;مجمدات الثلاجة&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_70&quot;&gt;تلفزيونات &lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_64&quot;&gt;الفراغات وكماليات&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_69&quot;&gt;غسالات&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=60_66&quot;&gt;آخرون&lt;/a&gt;\r\n	&lt;/li&gt;	\r\n&lt;/ul&gt;";}}', 0),
(14, 'Accessories', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:822:"&lt;ul&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;All Phones&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Bags &amp; Cases&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Batteries&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Chargers &amp; Docks&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Backup Powers&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Cables&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Lenses&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Parts&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;LCDs&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Holders &amp; Stands&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Stickers&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;";i:2;s:822:"&lt;ul&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;All Phones&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Bags &amp; Cases&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Batteries&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Chargers &amp; Docks&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Backup Powers&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Cables&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Lenses&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Parts&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;LCDs&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Holders &amp; Stands&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=&quot;&quot;&gt;Stickers&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;";}}', 0),
(22, '', 'product_list', 'a:8:{s:4:"wkey";s:2:"22";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:14:"list-cartegory";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:14:"list-cartegory";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"3";s:9:"list_type";s:8:"featured";}', 0),
(23, '', 'sub_categories', 'a:8:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:10:"Computers ";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"Computers ";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"4";}', 0),
(24, '', 'sub_categories', 'a:8:{s:4:"wkey";s:2:"24";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"34";s:5:"limit";s:1:"4";}', 0),
(25, '', 'sub_categories', 'a:8:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:8:"Homeware";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Homeware";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"20";s:5:"limit";s:1:"4";}', 0),
(26, '', 'image', 'a:12:{s:4:"wkey";s:2:"26";s:5:"wtype";s:5:"image";s:11:"widget_name";s:5:"image";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:5:"image";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:33:"catalog/banner/vetical-banner.jpg";s:4:"size";s:7:"420x300";s:9:"animation";s:1:"1";s:9:"alignment";s:6:"center";s:7:"ispopup";s:1:"1";s:4:"link";s:0:"";}', 0),
(27, '', 'product_list', 'a:8:{s:4:"wkey";s:2:"27";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:12:"product-list";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:12:"product-list";s:12:"addition_cls";s:7:"sidebar";s:5:"limit";s:1:"4";s:9:"list_type";s:8:"featured";}', 0),
(28, '', 'html', 'a:7:{s:4:"wkey";s:2:"28";s:5:"wtype";s:4:"html";s:11:"widget_name";s:11:"custom html";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"custom html";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:338:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id metus et elit sollicitudin imperdiet. Fusce vitae augue sit amet risus tristique hendrerit. In eget est ac metus pellentesque iaculis. Phasellus nec purus feugiat, mattis nisl semper, lacinia sapien. Phasellus sagittis metus vel diam imperdiet fermentum. &lt;/p&gt;";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 1000.00000000),
(5, 2.20460000),
(6, 35.27400000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4225 ;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
