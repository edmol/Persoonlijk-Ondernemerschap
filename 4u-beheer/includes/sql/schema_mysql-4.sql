-- phpMyAdmin SQL Dump
-- version 2.10.0.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Sep 30, 2007 at 12:23 PM
-- Server version: 4.1.22
-- PHP Version: 4.4.4

-- 
-- Database: `phpvs_mfg`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `change_log`
-- 

CREATE TABLE `change_log` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `updated` timestamp NOT NULL,
  `user` varchar(50) NOT NULL default '',
  `host` varchar(255) NOT NULL default '',
  `operation` varchar(50) NOT NULL default '',
  `tab` varchar(50) NOT NULL default '',
  `rowkey` varchar(255) NOT NULL default '',
  `col` varchar(255) NOT NULL default '',
  `oldval` text,
  `newval` text,
  PRIMARY KEY  (`id`),
  KEY `tab` (`tab`),
  KEY `col` (`col`),
  KEY `updated` (`updated`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `change_log`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_change_log`
-- 

CREATE TABLE `mfg_change_log` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `updated` timestamp NOT NULL,
  `user` varchar(50) NOT NULL default '',
  `host` varchar(255) NOT NULL default '',
  `operation` varchar(50) NOT NULL default '',
  `tab` varchar(50) NOT NULL default '',
  `rowkey` varchar(255) NOT NULL default '',
  `col` varchar(255) NOT NULL default '',
  `oldval` text,
  `newval` text,
  PRIMARY KEY  (`id`),
  KEY `tab` (`tab`),
  KEY `col` (`col`),
  KEY `updated` (`updated`)
) TYPE=MyISAM  AUTO_INCREMENT=51 ;

-- 
-- Dumping data for table `mfg_change_log`
-- 

INSERT INTO `mfg_change_log` VALUES (1, '2005-11-15 23:55:47', '', '67.174.190.166', 'delete', 'calendar', '38', '', 'a:15:{s:2:"id";s:2:"38";s:7:"sponsor";s:8:"big dave";s:10:"event_type";s:8:"Baseball";s:7:"heading";s:4:"What";s:11:"description";s:0:"";s:10:"start_date";s:10:"2005-12-15";s:10:"start_time";s:8:"08:00:00";s:8:"duration";s:0:"";s:8:"location";s:0:"";s:7:"contact";s:0:"";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:0:"";s:12:"submitted_on";s:19:"2005-12-15 00:32:11";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20041215003211";}', '');
INSERT INTO `mfg_change_log` VALUES (2, '2005-11-15 23:55:50', '', '67.174.190.166', 'delete', 'calendar', '37', '', 'a:15:{s:2:"id";s:2:"37";s:7:"sponsor";s:5:"fasdf";s:10:"event_type";s:6:"Tennis";s:7:"heading";s:5:"hello";s:11:"description";s:0:"";s:10:"start_date";s:10:"2005-10-31";s:10:"start_time";s:8:"00:00:00";s:8:"duration";s:0:"";s:8:"location";s:0:"";s:7:"contact";s:0:"";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:0:"";s:12:"submitted_on";s:19:"2005-12-13 14:01:10";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20041213140110";}', '');
INSERT INTO `mfg_change_log` VALUES (3, '2005-11-15 23:55:55', '', '67.174.190.166', 'delete', 'calendar', '36', '', 'a:15:{s:2:"id";s:2:"36";s:7:"sponsor";s:4:"raca";s:10:"event_type";s:8:"Baseball";s:7:"heading";s:3:"bla";s:11:"description";s:0:"";s:10:"start_date";s:10:"2005-12-11";s:10:"start_time";s:8:"08:00:00";s:8:"duration";s:0:"";s:8:"location";s:0:"";s:7:"contact";s:0:"";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:0:"";s:12:"submitted_on";s:19:"2005-12-11 08:01:15";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20041211080115";}', '');
INSERT INTO `mfg_change_log` VALUES (4, '2005-11-15 23:55:59', '', '67.174.190.166', 'delete', 'calendar', '35', '', 'a:15:{s:2:"id";s:2:"35";s:7:"sponsor";s:8:"Dumingag";s:10:"event_type";s:8:"Baseball";s:7:"heading";s:27:"Dumingag.thefreebizhost.com";s:11:"description";s:0:"";s:10:"start_date";s:10:"2005-12-08";s:10:"start_time";s:8:"08:00:00";s:8:"duration";s:0:"";s:8:"location";s:0:"";s:7:"contact";s:0:"";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:0:"";s:12:"submitted_on";s:19:"2005-12-08 21:32:15";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20041208213300";}', '');
INSERT INTO `mfg_change_log` VALUES (5, '2005-11-16 00:02:30', '', '67.174.190.166', 'delete', 'web_ring', '13', '', 'a:7:{s:7:"ring_id";s:2:"13";s:7:"company";s:18:"PHP Code Generator";s:3:"url";s:42:"hockinson.com/php-code-generator/index.php";s:6:"phrase";s:81:"PHP Code Generator is a PHP script and form generator for use with MySQL database";s:4:"rank";s:1:"2";s:6:"active";s:1:"1";s:7:"updated";s:14:"20051112080611";}', '');
INSERT INTO `mfg_change_log` VALUES (7, '2005-11-16 00:02:42', '', '67.174.190.166', 'delete', 'web_ring', '5', '', 'a:7:{s:7:"ring_id";s:1:"5";s:7:"company";s:23:"Doug Hockinson''s Resume";s:3:"url";s:28:"hockinson.com/index.php?s=74";s:6:"phrase";s:0:"";s:4:"rank";s:1:"2";s:6:"active";s:1:"1";s:7:"updated";s:14:"20050626145456";}', '');
INSERT INTO `mfg_change_log` VALUES (8, '2005-11-16 15:04:07', '', '82.92.249.46', 'insert', 'sql_col_types', '', '', '', 'a:30:{s:8:"time_col";s:8:"00:00:00";s:8:"int_date";s:1:"0";s:5:"email";s:0:"";s:9:"date_null";s:0:"";s:13:"date_not_null";s:10:"0000-00-00";s:9:"time_null";s:0:"";s:13:"time_not_null";s:8:"00:00:00";s:13:"datetime_null";s:0:"";s:17:"datetime_not_null";s:19:"0000-00-00 00:00:00";s:9:"year_null";s:0:"";s:13:"year_not_null";s:2:"00";s:13:"smallint_null";s:0:"";s:17:"smallint_not_null";s:1:"1";s:14:"mediumint_null";s:0:"";s:18:"mediumint_not_null";s:1:"2";s:12:"decimal_null";s:0:"";s:16:"decimal_not_null";s:4:"3.45";s:11:"double_null";s:0:"";s:15:"double_not_null";s:4:"6.78";s:10:"float_null";s:0:"";s:14:"float_not_null";s:4:"9.12";s:9:"char_null";s:0:"";s:13:"char_not_null";s:12:"Hello, world";s:13:"tinytext_null";s:0:"";s:17:"tinytext_not_null";s:0:"";s:9:"text_null";s:0:"";s:15:"mediumtext_null";s:0:"";s:8:"set_null";s:3:"dog";s:12:"set_not_null";s:3:"dog";s:13:"enum_not_null";s:1:"A";}');
INSERT INTO `mfg_change_log` VALUES (9, '2005-11-16 15:10:42', '', '82.92.249.46', 'update', 'suppliers', '22', 'Address', 'Verkoop\r\nRijnweg 22', 'Verkoop');
INSERT INTO `mfg_change_log` VALUES (10, '2005-11-16 15:10:42', '', '82.92.249.46', 'update', 'suppliers', '22', 'Country', 'Netherlands', 'Melanesia');
INSERT INTO `mfg_change_log` VALUES (11, '2005-11-16 15:10:42', '', '82.92.249.46', 'update', 'suppliers', '22', 'country', 'Netherlands', 'Melanesia');
INSERT INTO `mfg_change_log` VALUES (12, '2005-11-16 15:11:33', '', '82.92.249.46', 'update', 'suppliers', '22', 'Country', 'Melanesia', 'Liberia');
INSERT INTO `mfg_change_log` VALUES (13, '2005-11-16 15:11:33', '', '82.92.249.46', 'update', 'suppliers', '22', 'country', 'Melanesia', 'Liberia');
INSERT INTO `mfg_change_log` VALUES (14, '2005-11-24 20:43:13', '', '86.195.122.185', 'update', 'colors', '2', 'name', 'antiquewhite', 'antiquewhites');
INSERT INTO `mfg_change_log` VALUES (15, '2005-11-24 20:44:09', '', '86.195.122.185', 'delete', 'colors', '2', '', 'a:3:{s:2:"id";s:1:"2";s:4:"name";s:13:"antiquewhites";s:3:"hex";s:7:"#FAEBD7";}', '');
INSERT INTO `mfg_change_log` VALUES (16, '2005-11-27 10:41:40', '', '201.144.96.189', 'insert', 'order_details', '0', '', '', 'a:5:{s:7:"OrderID";s:1:"0";s:9:"ProductID";s:1:"0";s:9:"UnitPrice";s:4:"0.00";s:8:"Quantity";s:1:"1";s:8:"Discount";s:1:"0";}');
INSERT INTO `mfg_change_log` VALUES (17, '2005-11-29 05:06:32', '', '62.173.109.70', 'delete', 'order_details', '0', '', 'a:5:{s:7:"OrderID";s:1:"0";s:9:"ProductID";s:1:"0";s:9:"UnitPrice";s:4:"0.00";s:8:"Quantity";s:1:"1";s:8:"Discount";s:1:"0";}', '');
INSERT INTO `mfg_change_log` VALUES (18, '2005-11-29 05:10:35', '', '62.173.109.70', 'delete', 'customers', '85', '', 'a:12:{s:8:"RecordID";s:2:"85";s:10:"CustomerID";s:4:"asdf";s:11:"CompanyName";s:3:"777";s:11:"ContactName";s:3:"777";s:12:"ContactTitle";s:3:"777";s:7:"Address";s:3:"777";s:4:"City";s:0:"";s:6:"Region";s:0:"";s:10:"PostalCode";s:0:"";s:7:"Country";s:0:"";s:5:"Phone";s:0:"";s:3:"Fax";s:0:"";}', '');
INSERT INTO `mfg_change_log` VALUES (19, '2005-12-02 23:40:29', '', '24.177.172.198', 'insert', 'calendar', '', '', '', 'a:13:{s:7:"sponsor";s:3:"boo";s:10:"event_type";s:6:"Soccer";s:7:"heading";s:15:"aaaaaaaaaaaaaaa";s:11:"description";s:0:"";s:10:"start_date";s:10:"2005-01-05";s:10:"start_time";s:8:"08:00:00";s:8:"duration";s:0:"";s:8:"location";s:0:"";s:7:"contact";s:0:"";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:0:"";s:12:"submitted_on";s:19:"2005-01-05 10:11:26";s:6:"hidden";s:1:"0";}');
INSERT INTO `mfg_change_log` VALUES (20, '2005-12-04 15:33:37', '', '212.62.62.199', 'insert', 'to_do', '', '', '', 'a:9:{s:7:"Subject";s:3:"aaa";s:9:"CompanyID";s:1:"0";s:10:"LastNameID";s:1:"0";s:8:"Comments";s:28:"aaaaaaaaaaaaaaaaaaaaaaaaaaaa";s:6:"Status";s:4:"Open";s:4:"ROID";s:1:"0";s:15:"LastUpdatedByID";s:1:"0";s:11:"DateCreated";s:10:"0000-00-00";s:12:"PublicRecord";s:1:"0";}');
INSERT INTO `mfg_change_log` VALUES (21, '2005-12-04 15:33:56', '', '212.62.62.199', 'update', 'to_do', '2', 'Comments', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'ddd');
INSERT INTO `mfg_change_log` VALUES (22, '2005-12-06 09:24:36', '', '62.152.33.6', 'update', 'suppliers', '4', 'Region', '', 'Tokyo');
INSERT INTO `mfg_change_log` VALUES (23, '2005-12-12 15:26:30', '', '192.31.106.35', 'update', 'employees', '5', 'Country', 'UK', '');
INSERT INTO `mfg_change_log` VALUES (24, '2005-12-12 15:26:30', '', '192.31.106.35', 'update', 'employees', '5', 'country', 'UK', '');
INSERT INTO `mfg_change_log` VALUES (25, '2005-12-17 18:05:20', '', '69.227.185.154', 'insert', 'calendar', '', '', '', 'a:13:{s:7:"sponsor";s:9:"ccccccccc";s:10:"event_type";s:8:"cccccccc";s:7:"heading";s:7:"ccccccc";s:11:"description";s:15:"ccccccccccccccc";s:10:"start_date";s:10:"0000-00-00";s:10:"start_time";s:8:"00:00:00";s:8:"duration";s:7:"ccccccc";s:8:"location";s:10:"cccccccccc";s:7:"contact";s:14:"cccccccccccccc";s:12:"attendee_req";s:14:"cccccccccccccc";s:12:"submitted_by";s:11:"ccccccccccc";s:12:"submitted_on";s:19:"0000-00-00 00:00:00";s:6:"hidden";s:1:"0";}');
INSERT INTO `mfg_change_log` VALUES (26, '2005-12-17 18:05:55', '', '69.227.185.154', 'update', 'calendar', '65', 'sponsor', 'ccccccccc', 'xxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `mfg_change_log` VALUES (27, '2005-12-17 18:06:13', '', '69.227.185.154', 'update', 'calendar', '65', 'attendee_req', 'cccccccccccccc', 'xx');
INSERT INTO `mfg_change_log` VALUES (28, '2005-12-17 18:06:35', '', '69.227.185.154', 'delete', 'calendar', '21', '', 'a:15:{s:2:"id";s:2:"21";s:7:"sponsor";s:3:"IOC";s:10:"event_type";s:6:"Soccer";s:7:"heading";s:10:"Big Header";s:11:"description";s:21:"New description added";s:10:"start_date";s:10:"2005-08-31";s:10:"start_time";s:8:"08:00:00";s:8:"duration";s:14:"Duration added";s:8:"location";s:14:"Location added";s:7:"contact";s:9:"Contact 1";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:9:"Submittee";s:12:"submitted_on";s:19:"2005-10-01 13:29:08";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20041001132908";}', '');
INSERT INTO `mfg_change_log` VALUES (29, '2005-12-20 09:09:24', '', '199.67.203.136', 'delete', 'calendar', '20', '', 'a:15:{s:2:"id";s:2:"20";s:7:"sponsor";s:5:"65465";s:10:"event_type";s:8:"Baseball";s:7:"heading";s:5:"64654";s:11:"description";s:0:"";s:10:"start_date";s:10:"2005-09-28";s:10:"start_time";s:8:"08:00:00";s:8:"duration";s:0:"";s:8:"location";s:0:"";s:7:"contact";s:0:"";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:0:"";s:12:"submitted_on";s:19:"2005-09-28 11:22:35";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20040928112235";}', '');
INSERT INTO `mfg_change_log` VALUES (30, '2005-12-20 09:09:36', '', '199.67.203.136', 'delete', 'calendar', '65', '', 'a:15:{s:2:"id";s:2:"65";s:7:"sponsor";s:21:"xxxxxxxxxxxxxxxxxxxxx";s:10:"event_type";s:8:"cccccccc";s:7:"heading";s:7:"ccccccc";s:11:"description";s:15:"ccccccccccccccc";s:10:"start_date";s:10:"0000-00-00";s:10:"start_time";s:8:"00:00:00";s:8:"duration";s:7:"ccccccc";s:8:"location";s:10:"cccccccccc";s:7:"contact";s:14:"cccccccccccccc";s:12:"attendee_req";s:2:"xx";s:12:"submitted_by";s:11:"ccccccccccc";s:12:"submitted_on";s:19:"0000-00-00 00:00:00";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20051217180613";}', '');
INSERT INTO `mfg_change_log` VALUES (31, '2005-12-24 00:30:09', '', '68.46.108.158', 'delete', 'order_details', '1', '', 'a:5:{s:7:"OrderID";s:1:"1";s:9:"ProductID";s:1:"0";s:9:"UnitPrice";s:4:"0.00";s:8:"Quantity";s:1:"1";s:8:"Discount";s:1:"0";}', '');
INSERT INTO `mfg_change_log` VALUES (32, '2005-12-24 00:30:24', '', '68.46.108.158', 'delete', 'order_details', '10251', '', 'a:5:{s:7:"OrderID";s:5:"10251";s:9:"ProductID";s:2:"22";s:9:"UnitPrice";s:5:"16.70";s:8:"Quantity";s:1:"6";s:8:"Discount";s:4:"0.75";}', '');
INSERT INTO `mfg_change_log` VALUES (33, '2005-12-27 06:52:44', '', '67.174.190.166', 'insert', 'outlook', '', '', '', 'a:87:{s:5:"Title";s:4:"gfdf";s:9:"FirstName";s:0:"";s:10:"MiddleName";s:0:"";s:8:"LastName";s:0:"";s:6:"Suffix";s:0:"";s:7:"Company";s:0:"";s:10:"Department";s:0:"";s:8:"JobTitle";s:0:"";s:14:"BusinessStreet";s:0:"";s:15:"BusinessStreet2";s:0:"";s:15:"BusinessStreet3";s:0:"";s:12:"BusinessCity";s:0:"";s:13:"BusinessState";s:0:"";s:18:"BusinessPostalCode";s:0:"";s:15:"BusinessCountry";s:0:"";s:10:"HomeStreet";s:0:"";s:11:"HomeStreet2";s:0:"";s:11:"HomeStreet3";s:0:"";s:8:"HomeCity";s:0:"";s:9:"HomeState";s:0:"";s:14:"HomePostalCode";s:0:"";s:11:"HomeCountry";s:0:"";s:11:"OtherStreet";s:0:"";s:12:"OtherStreet2";s:0:"";s:12:"OtherStreet3";s:0:"";s:9:"OtherCity";s:0:"";s:10:"OtherState";s:0:"";s:15:"OtherPostalCode";s:0:"";s:12:"OtherCountry";s:0:"";s:15:"AssistantsPhone";s:0:"";s:11:"BusinessFax";s:0:"";s:13:"BusinessPhone";s:0:"";s:14:"BusinessPhone2";s:0:"";s:8:"Callback";s:0:"";s:8:"CarPhone";s:0:"";s:16:"CompanyMainPhone";s:0:"";s:7:"HomeFax";s:0:"";s:9:"HomePhone";s:0:"";s:10:"HomePhone2";s:0:"";s:4:"ISDN";s:0:"";s:11:"MobilePhone";s:0:"";s:8:"OtherFax";s:0:"";s:10:"OtherPhone";s:0:"";s:5:"Pager";s:0:"";s:12:"PrimaryPhone";s:0:"";s:10:"RadioPhone";s:0:"";s:11:"TTYTDDPhone";s:0:"";s:5:"Telex";s:0:"";s:7:"Account";s:0:"";s:11:"Anniversary";s:0:"";s:14:"AssistantsName";s:0:"";s:18:"BillingInformation";s:0:"";s:8:"Birthday";s:0:"";s:10:"Categories";s:0:"";s:8:"Children";s:0:"";s:15:"DirectoryServer";s:0:"";s:12:"EmailAddress";s:0:"";s:16:"EmailDisplayName";s:0:"";s:13:"Email2Address";s:0:"";s:17:"Email2DisplayName";s:0:"";s:13:"Email3Address";s:0:"";s:17:"Email3DisplayName";s:0:"";s:6:"Gender";s:0:"";s:18:"GovernmentIDNumber";s:0:"";s:5:"Hobby";s:0:"";s:8:"Initials";s:0:"";s:16:"InternetFreeBusy";s:0:"";s:8:"Keywords";s:0:"";s:9:"Language1";s:0:"";s:8:"Location";s:0:"";s:12:"ManagersName";s:0:"";s:7:"Mileage";s:0:"";s:5:"Notes";s:0:"";s:14:"OfficeLocation";s:0:"";s:22:"OrganizationalIDNumber";s:0:"";s:5:"POBox";s:0:"";s:8:"Priority";s:0:"";s:7:"Private";s:1:"0";s:10:"Profession";s:0:"";s:10:"ReferredBy";s:0:"";s:11:"Sensitivity";s:0:"";s:6:"Spouse";s:0:"";s:5:"User1";s:0:"";s:5:"User2";s:0:"";s:5:"User3";s:0:"";s:5:"User4";s:0:"";s:7:"WebPage";s:0:"";}');
INSERT INTO `mfg_change_log` VALUES (34, '2005-12-27 06:53:04', '', '67.174.190.166', 'insert', 'to_do', '', '', '', 'a:9:{s:7:"Subject";s:4:"test";s:9:"CompanyID";s:1:"0";s:10:"LastNameID";s:1:"0";s:8:"Comments";s:0:"";s:6:"Status";s:4:"Open";s:4:"ROID";s:1:"0";s:15:"LastUpdatedByID";s:1:"0";s:11:"DateCreated";s:10:"0000-00-00";s:12:"PublicRecord";s:1:"0";}');
INSERT INTO `mfg_change_log` VALUES (35, '2006-01-05 10:14:34', '', '62.240.129.3', 'delete', 'order_details', '10249', '', 'a:5:{s:7:"OrderID";s:5:"10249";s:9:"ProductID";s:2:"14";s:9:"UnitPrice";s:5:"18.60";s:8:"Quantity";s:1:"9";s:8:"Discount";s:1:"0";}', '');
INSERT INTO `mfg_change_log` VALUES (36, '2006-01-05 10:14:39', '', '62.240.129.3', 'delete', 'order_details', '10249', '', 'b:0;', '');
INSERT INTO `mfg_change_log` VALUES (37, '2006-01-14 14:48:21', '', '82.120.51.209', 'delete', 'orders', '10254', '', 'a:14:{s:7:"OrderID";s:5:"10254";s:10:"CustomerID";s:5:"CHOPS";s:10:"EmployeeID";s:1:"5";s:9:"OrderDate";s:10:"1994-08-11";s:12:"RequiredDate";s:10:"0000-00-00";s:11:"ShippedDate";s:10:"1994-08-23";s:7:"ShipVia";s:1:"2";s:7:"Freight";s:5:"22.98";s:8:"ShipName";s:17:"Chop-suey Chinese";s:11:"ShipAddress";s:12:"Hauptstr. 31";s:8:"ShipCity";s:4:"Bern";s:10:"ShipRegion";s:0:"";s:14:"ShipPostalCode";s:4:"3012";s:11:"ShipCountry";s:11:"Switzerland";}', '');
INSERT INTO `mfg_change_log` VALUES (38, '2006-01-14 14:52:19', '', '82.120.51.209', 'delete', 'order_details', '10252', '', 'a:5:{s:7:"OrderID";s:5:"10252";s:9:"ProductID";s:2:"20";s:9:"UnitPrice";s:5:"64.80";s:8:"Quantity";s:2:"40";s:8:"Discount";s:4:"0.05";}', '');
INSERT INTO `mfg_change_log` VALUES (39, '2006-01-14 15:22:15', '', '82.120.51.209', 'update', 'calendar', '19', 'hidden', '0', '1');
INSERT INTO `mfg_change_log` VALUES (40, '2006-01-14 15:31:16', '', '82.120.51.209', 'delete', 'calendar', '63', '', 'a:15:{s:2:"id";s:2:"63";s:7:"sponsor";s:5:"aaaaa";s:10:"event_type";s:6:"Tennis";s:7:"heading";s:5:"zzzzz";s:11:"description";s:0:"";s:10:"start_date";s:10:"2005-11-05";s:10:"start_time";s:8:"08:00:00";s:8:"duration";s:0:"";s:8:"location";s:0:"";s:7:"contact";s:0:"";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:0:"";s:12:"submitted_on";s:19:"2005-11-05 08:54:48";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20051105085448";}', '');
INSERT INTO `mfg_change_log` VALUES (41, '2006-01-14 15:31:21', '', '82.120.51.209', 'delete', 'calendar', '46', '', 'a:15:{s:2:"id";s:2:"46";s:7:"sponsor";s:4:"asdf";s:10:"event_type";s:6:"Tennis";s:7:"heading";s:3:"asf";s:11:"description";s:0:"";s:10:"start_date";s:10:"0000-00-00";s:10:"start_time";s:8:"08:00:00";s:8:"duration";s:0:"";s:8:"location";s:0:"";s:7:"contact";s:0:"";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:0:"";s:12:"submitted_on";s:19:"2005-01-15 16:04:23";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20050115160423";}', '');
INSERT INTO `mfg_change_log` VALUES (42, '2006-01-14 15:31:27', '', '82.120.51.209', 'delete', 'calendar', '42', '', 'a:15:{s:2:"id";s:2:"42";s:7:"sponsor";s:3:"boo";s:10:"event_type";s:6:"Soccer";s:7:"heading";s:15:"aaaaaaaaaaaaaaa";s:11:"description";s:0:"";s:10:"start_date";s:10:"2005-01-05";s:10:"start_time";s:8:"08:00:00";s:8:"duration";s:0:"";s:8:"location";s:0:"";s:7:"contact";s:0:"";s:12:"attendee_req";s:0:"";s:12:"submitted_by";s:0:"";s:12:"submitted_on";s:19:"2005-01-05 10:11:26";s:6:"hidden";s:1:"0";s:7:"updated";s:14:"20050118172926";}', '');
INSERT INTO `mfg_change_log` VALUES (43, '2006-01-17 08:02:33', '', '212.254.230.133', 'insert', 'order_details', '0', '', '', 'a:5:{s:7:"OrderID";s:1:"0";s:9:"ProductID";s:3:"123";s:9:"UnitPrice";s:4:"0.00";s:8:"Quantity";s:1:"3";s:8:"Discount";s:1:"0";}');
INSERT INTO `mfg_change_log` VALUES (44, '2006-01-17 08:02:53', '', '212.254.230.133', 'update', 'order_details', '21312', 'OrderID', '0', '21312');
INSERT INTO `mfg_change_log` VALUES (45, '2006-01-18 17:26:06', '', '81.190.140.77', 'delete', 'colors', '6', '', 'a:3:{s:2:"id";s:1:"6";s:4:"name";s:5:"beige";s:3:"hex";s:7:"#F5F5DC";}', '');
INSERT INTO `mfg_change_log` VALUES (46, '2006-01-20 09:48:25', '', '82.77.20.126', 'delete', 'customers', '8', '', 'a:12:{s:8:"RecordID";s:1:"8";s:10:"CustomerID";s:5:"COMMI";s:11:"CompanyName";s:16:"Comércio Mineiro";s:11:"ContactName";s:12:"Pedro Afonso";s:12:"ContactTitle";s:15:"Sales Associate";s:7:"Address";s:20:"Av. dos Lusíadas, 23";s:4:"City";s:9:"São Paulo";s:6:"Region";s:2:"SP";s:10:"PostalCode";s:9:"05432-043";s:7:"Country";s:6:"Brazil";s:5:"Phone";s:13:"(11) 555-7647";s:3:"Fax";s:0:"";}', '');
INSERT INTO `mfg_change_log` VALUES (47, '2006-01-20 09:48:29', '', '82.77.20.126', 'delete', 'customers', '9', '', 'a:12:{s:8:"RecordID";s:1:"9";s:10:"CustomerID";s:5:"CONSH";s:11:"CompanyName";s:21:"Consolidated Holdings";s:11:"ContactName";s:15:"Elizabeth Brown";s:12:"ContactTitle";s:20:"Sales Representative";s:7:"Address";s:29:"Berkeley Gardens\r\n12  Brewery";s:4:"City";s:6:"London";s:6:"Region";s:0:"";s:10:"PostalCode";s:7:"WX1 6LT";s:7:"Country";s:2:"UK";s:5:"Phone";s:14:"(171) 555-2282";s:3:"Fax";s:14:"(171) 555-9199";}', '');
INSERT INTO `mfg_change_log` VALUES (48, '2006-01-20 09:48:32', '', '82.77.20.126', 'delete', 'customers', '11', '', 'a:12:{s:8:"RecordID";s:2:"11";s:10:"CustomerID";s:5:"DUMON";s:11:"CompanyName";s:15:"Du monde entier";s:11:"ContactName";s:14:"Janine Labrune";s:12:"ContactTitle";s:5:"Owner";s:7:"Address";s:28:"67, rue des Cinquante Otages";s:4:"City";s:6:"Nantes";s:6:"Region";s:0:"";s:10:"PostalCode";s:5:"44000";s:7:"Country";s:6:"France";s:5:"Phone";s:11:"40.67.88.88";s:3:"Fax";s:11:"40.67.89.89";}', '');
INSERT INTO `mfg_change_log` VALUES (49, '2006-01-20 09:48:35', '', '82.77.20.126', 'delete', 'customers', '12', '', 'a:12:{s:8:"RecordID";s:2:"12";s:10:"CustomerID";s:5:"EASTC";s:11:"CompanyName";s:18:"Eastern Connection";s:11:"ContactName";s:9:"Ann Devon";s:12:"ContactTitle";s:11:"Sales Agent";s:7:"Address";s:14:"35 King George";s:4:"City";s:6:"London";s:6:"Region";s:0:"";s:10:"PostalCode";s:7:"WX3 6FW";s:7:"Country";s:2:"UK";s:5:"Phone";s:14:"(171) 555-0297";s:3:"Fax";s:14:"(171) 555-3373";}', '');
INSERT INTO `mfg_change_log` VALUES (50, '2006-01-20 09:48:43', '', '82.77.20.126', 'delete', 'customers', '87', '', 'a:12:{s:8:"RecordID";s:2:"87";s:10:"CustomerID";s:4:"0322";s:11:"CompanyName";s:5:"saDas";s:11:"ContactName";s:4:"dddd";s:12:"ContactTitle";s:6:"wertte";s:7:"Address";s:6:"ertert";s:4:"City";s:5:"etert";s:6:"Region";s:6:"fgdfgd";s:10:"PostalCode";s:5:"dfgdf";s:7:"Country";s:2:"fg";s:5:"Phone";s:4:"gfdg";s:3:"Fax";s:2:"fg";}', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_colors`
-- 

CREATE TABLE `mfg_colors` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `name` char(20) NOT NULL default '',
  `hex` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) TYPE=MyISAM  AUTO_INCREMENT=153 ;

-- 
-- Dumping data for table `mfg_colors`
-- 

INSERT INTO `mfg_colors` VALUES (5, 'azure', '#F0FFFF');
INSERT INTO `mfg_colors` VALUES (7, 'bisque', '#FFE4C4');
INSERT INTO `mfg_colors` VALUES (8, 'black', '#000000');
INSERT INTO `mfg_colors` VALUES (9, 'blanchedalmond', '#FFEBCD');
INSERT INTO `mfg_colors` VALUES (151, 'azure', '#F0FFFF');
INSERT INTO `mfg_colors` VALUES (11, 'blueviolet', '#8A2BE2');
INSERT INTO `mfg_colors` VALUES (12, 'brown', '#A52A2A');
INSERT INTO `mfg_colors` VALUES (13, 'burlywood', '#DEB887');
INSERT INTO `mfg_colors` VALUES (14, 'cadetblue', '#5F9EA0');
INSERT INTO `mfg_colors` VALUES (15, 'chartreuse', '#7FFF00');
INSERT INTO `mfg_colors` VALUES (16, 'chocolate', '#D2691E');
INSERT INTO `mfg_colors` VALUES (17, 'coral', '#FF7F50');
INSERT INTO `mfg_colors` VALUES (18, 'cornflowerblue', '#6495ED');
INSERT INTO `mfg_colors` VALUES (19, 'cornsilk', '#FFF8DC');
INSERT INTO `mfg_colors` VALUES (20, 'crimson', '#DC143C');
INSERT INTO `mfg_colors` VALUES (21, 'cyan', '#00FFFF');
INSERT INTO `mfg_colors` VALUES (22, 'darkblue', '#00008B');
INSERT INTO `mfg_colors` VALUES (23, 'darkcyan', '#008B8B');
INSERT INTO `mfg_colors` VALUES (24, 'darkgoldenrod', '#B8860B');
INSERT INTO `mfg_colors` VALUES (25, 'darkgray', '#A9A9A9');
INSERT INTO `mfg_colors` VALUES (26, 'darkgreen', '#006400');
INSERT INTO `mfg_colors` VALUES (27, 'darkkhaki', '#BDB76B');
INSERT INTO `mfg_colors` VALUES (28, 'darkmagenta', '#8B008B');
INSERT INTO `mfg_colors` VALUES (29, 'darkolivegreen', '#556B2F');
INSERT INTO `mfg_colors` VALUES (30, 'darkorange', '#FF8C00');
INSERT INTO `mfg_colors` VALUES (31, 'darkorchid', '#9932CC');
INSERT INTO `mfg_colors` VALUES (32, 'darkred', '#8B0000');
INSERT INTO `mfg_colors` VALUES (33, 'darksalmon', '#E9967A');
INSERT INTO `mfg_colors` VALUES (34, 'darkseagreen', '#8FBC8F');
INSERT INTO `mfg_colors` VALUES (35, 'darkslateblue', '#483D8B');
INSERT INTO `mfg_colors` VALUES (36, 'darkslategray', '#2F4F4F');
INSERT INTO `mfg_colors` VALUES (37, 'darkturquoise', '#00CED1');
INSERT INTO `mfg_colors` VALUES (38, 'darkviolet', '#9400D3');
INSERT INTO `mfg_colors` VALUES (39, 'deeppink', '#FF1493');
INSERT INTO `mfg_colors` VALUES (40, 'deepskyblue', '#00BFFF');
INSERT INTO `mfg_colors` VALUES (41, 'dimgray', '#696969');
INSERT INTO `mfg_colors` VALUES (42, 'dodgerblue', '#1E90FF');
INSERT INTO `mfg_colors` VALUES (43, 'firebrick', '#B22222');
INSERT INTO `mfg_colors` VALUES (44, 'floralwhite', '#FFFAF0');
INSERT INTO `mfg_colors` VALUES (45, 'forestgreen', '#228B22');
INSERT INTO `mfg_colors` VALUES (46, 'fuchsia', '#FF00FF');
INSERT INTO `mfg_colors` VALUES (47, 'gainsboro', '#DCDCDC');
INSERT INTO `mfg_colors` VALUES (48, 'ghostwhite', '#F8F8FF');
INSERT INTO `mfg_colors` VALUES (49, 'gold', '#FFD700');
INSERT INTO `mfg_colors` VALUES (50, 'goldenrod', '#DAA520');
INSERT INTO `mfg_colors` VALUES (51, 'gray', '#808080');
INSERT INTO `mfg_colors` VALUES (52, 'green', '#008000');
INSERT INTO `mfg_colors` VALUES (53, 'greenyellow', '#ADFF2F');
INSERT INTO `mfg_colors` VALUES (54, 'honeydew', '#F0FFF0');
INSERT INTO `mfg_colors` VALUES (55, 'hotpink', '#FF69B4');
INSERT INTO `mfg_colors` VALUES (56, 'indianred', '#CD5C5C');
INSERT INTO `mfg_colors` VALUES (57, 'indigo', '#4B0082');
INSERT INTO `mfg_colors` VALUES (58, 'ivory', '#FFFFF0');
INSERT INTO `mfg_colors` VALUES (59, 'khaki', '#F0E68C');
INSERT INTO `mfg_colors` VALUES (60, 'lavender', '#E6E6FA');
INSERT INTO `mfg_colors` VALUES (61, 'lavenderblush', '#FFF0F5');
INSERT INTO `mfg_colors` VALUES (62, 'lawngreen', '#7CFC00');
INSERT INTO `mfg_colors` VALUES (63, 'lemonchiffon', '#FFFACD');
INSERT INTO `mfg_colors` VALUES (64, 'lightblue', '#ADD8E6');
INSERT INTO `mfg_colors` VALUES (65, 'lightcoral', '#F08080');
INSERT INTO `mfg_colors` VALUES (66, 'lightcyan', '#E0FFFF');
INSERT INTO `mfg_colors` VALUES (67, 'lightgoldenrodyellow', '#FAFAD2');
INSERT INTO `mfg_colors` VALUES (68, 'lightgreen', '#90EE90');
INSERT INTO `mfg_colors` VALUES (69, 'lightgrey', '#D3D3D3');
INSERT INTO `mfg_colors` VALUES (70, 'lightpink', '#FFB6C1');
INSERT INTO `mfg_colors` VALUES (71, 'lightsalmon', '#FFA07A');
INSERT INTO `mfg_colors` VALUES (72, 'lightseagreen', '#20B2AA');
INSERT INTO `mfg_colors` VALUES (73, 'lightskyblue', '#87CEFA');
INSERT INTO `mfg_colors` VALUES (74, 'lightslategray', '#778899');
INSERT INTO `mfg_colors` VALUES (75, 'lightsteelblue', '#B0C4DE');
INSERT INTO `mfg_colors` VALUES (76, 'lightyellow', '#FFFFE0');
INSERT INTO `mfg_colors` VALUES (77, 'lime', '#00FF00');
INSERT INTO `mfg_colors` VALUES (78, 'limegreen', '#32CD32');
INSERT INTO `mfg_colors` VALUES (79, 'linen', '#FAF0E6');
INSERT INTO `mfg_colors` VALUES (80, 'magenta', '#FF00FF');
INSERT INTO `mfg_colors` VALUES (81, 'maroon', '#800000');
INSERT INTO `mfg_colors` VALUES (82, 'mediumaquamarine', '#66CDAA');
INSERT INTO `mfg_colors` VALUES (83, 'mediumblue', '#0000CD');
INSERT INTO `mfg_colors` VALUES (84, 'mediumorchid', '#BA55D3');
INSERT INTO `mfg_colors` VALUES (85, 'mediumpurple', '#9370DB');
INSERT INTO `mfg_colors` VALUES (86, 'mediumseagreen', '#3CB371');
INSERT INTO `mfg_colors` VALUES (87, 'mediumslateblue', '#7B68EE');
INSERT INTO `mfg_colors` VALUES (88, 'mediumspringgreen', '#00FA9A');
INSERT INTO `mfg_colors` VALUES (89, 'mediumturquoise', '#48D1CC');
INSERT INTO `mfg_colors` VALUES (90, 'mediumvioletred', '#C71585');
INSERT INTO `mfg_colors` VALUES (91, 'midnightblue', '#191970');
INSERT INTO `mfg_colors` VALUES (92, 'mintcream', '#F5FFFA');
INSERT INTO `mfg_colors` VALUES (93, 'mistyrose', '#FFE4E1');
INSERT INTO `mfg_colors` VALUES (94, 'moccasin', '#FFE4B5');
INSERT INTO `mfg_colors` VALUES (95, 'navajowhite', '#FFDEAD');
INSERT INTO `mfg_colors` VALUES (96, 'navy', '#000080');
INSERT INTO `mfg_colors` VALUES (97, 'oldlace', '#FDF5E6');
INSERT INTO `mfg_colors` VALUES (98, 'olive', '#808000');
INSERT INTO `mfg_colors` VALUES (99, 'olivedrab', '#6B8E23');
INSERT INTO `mfg_colors` VALUES (100, 'orange', '#FFA500');
INSERT INTO `mfg_colors` VALUES (101, 'orangered', '#FF4500');
INSERT INTO `mfg_colors` VALUES (102, 'orchid', '#DA70D6');
INSERT INTO `mfg_colors` VALUES (103, 'palegoldenrod', '#EEE8AA');
INSERT INTO `mfg_colors` VALUES (104, 'palegreen', '#98FB98');
INSERT INTO `mfg_colors` VALUES (105, 'paleturquoise', '#AFEEEE');
INSERT INTO `mfg_colors` VALUES (106, 'palevioletred', '#DB7093');
INSERT INTO `mfg_colors` VALUES (107, 'papayawhip', '#FFEFD5');
INSERT INTO `mfg_colors` VALUES (108, 'peachpuff', '#FFDAB9');
INSERT INTO `mfg_colors` VALUES (109, 'peru', '#CD853F');
INSERT INTO `mfg_colors` VALUES (110, 'pink', '#FFC0CB');
INSERT INTO `mfg_colors` VALUES (111, 'plum', '#DDA0DD');
INSERT INTO `mfg_colors` VALUES (112, 'powderblue', '#B0E0E6');
INSERT INTO `mfg_colors` VALUES (113, 'purple', '#800080');
INSERT INTO `mfg_colors` VALUES (114, 'red', '#FF0000');
INSERT INTO `mfg_colors` VALUES (115, 'rosybrown', '#BC8F8F');
INSERT INTO `mfg_colors` VALUES (116, 'royalblue', '#4169E1');
INSERT INTO `mfg_colors` VALUES (117, 'saddlebrown', '#8B4513');
INSERT INTO `mfg_colors` VALUES (118, 'salmon', '#FA8072');
INSERT INTO `mfg_colors` VALUES (119, 'sandybrown', '#F4A460');
INSERT INTO `mfg_colors` VALUES (120, 'seagreen', '#2E8B57');
INSERT INTO `mfg_colors` VALUES (121, 'seashell', '#FFF5EE');
INSERT INTO `mfg_colors` VALUES (122, 'sienna', '#A0522D');
INSERT INTO `mfg_colors` VALUES (123, 'silver', '#C0C0C0');
INSERT INTO `mfg_colors` VALUES (124, 'skyblue', '#87CEEB');
INSERT INTO `mfg_colors` VALUES (125, 'slateblue', '#6A5ACD');
INSERT INTO `mfg_colors` VALUES (126, 'slategray', '#708090');
INSERT INTO `mfg_colors` VALUES (127, 'snow', '#FFFAFA');
INSERT INTO `mfg_colors` VALUES (128, 'springgreen', '#00FF7F');
INSERT INTO `mfg_colors` VALUES (129, 'steelblue', '#4682B4');
INSERT INTO `mfg_colors` VALUES (130, 'tan', '#D2B48C');
INSERT INTO `mfg_colors` VALUES (131, 'teal', '#008080');
INSERT INTO `mfg_colors` VALUES (132, 'thistle', '#D8BFD8');
INSERT INTO `mfg_colors` VALUES (133, 'tomato', '#FF6347');
INSERT INTO `mfg_colors` VALUES (134, 'turquoise', '#40E0D0');
INSERT INTO `mfg_colors` VALUES (135, 'violet', '#EE82EE');
INSERT INTO `mfg_colors` VALUES (136, 'wheat', '#F5DEB3');
INSERT INTO `mfg_colors` VALUES (137, 'white', '#FFFFFF');
INSERT INTO `mfg_colors` VALUES (138, 'whitesmoke', '#F5F5F5');
INSERT INTO `mfg_colors` VALUES (139, 'yellow', '#FFFF00');
INSERT INTO `mfg_colors` VALUES (140, 'yellowgreen', '#9ACD32');
INSERT INTO `mfg_colors` VALUES (143, 'hugo', '#222222');
INSERT INTO `mfg_colors` VALUES (145, 'aliceblue', '#F0F8FF');
INSERT INTO `mfg_colors` VALUES (150, 'jkjkljkljljl', '12');
INSERT INTO `mfg_colors` VALUES (148, 'chartreuse', '#7FFF00');
INSERT INTO `mfg_colors` VALUES (152, 'rojo', '#FF0000');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_content`
-- 

CREATE TABLE `mfg_content` (
  `id` smallint(6) NOT NULL auto_increment,
  `snum` smallint(5) unsigned NOT NULL default '0',
  `pnum` smallint(5) unsigned NOT NULL default '0',
  `link` varchar(255) NOT NULL default '',
  `heading` varchar(255) NOT NULL default '',
  `meta_title` varchar(255) NOT NULL default '',
  `meta_desc` text NOT NULL,
  `meta_key` text NOT NULL,
  `html_1` text NOT NULL,
  `html_2` text NOT NULL,
  `php_script` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `td_left` enum('1','0') NOT NULL default '1',
  `eval_content` enum('0','1') NOT NULL default '0',
  `mli` enum('0','1') NOT NULL default '0',
  `ul` enum('0','1','2','3','4','5','6','7','8','9') NOT NULL default '0',
  `https` enum('0','1') NOT NULL default '0',
  `nav` enum('0','1') NOT NULL default '0',
  `hidden` enum('0','1') NOT NULL default '0',
  `deleted` enum('0','1') NOT NULL default '0',
  `spider` enum('1','0') NOT NULL default '1',
  `priority` enum('0.0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1.0') NOT NULL default '0.5',
  `changefreq` enum('always','daily','hourly','monthly','never','weekly','yearly') NOT NULL default 'monthly',
  `posted` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated` timestamp NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `snum` (`snum`),
  KEY `pnum` (`pnum`),
  KEY `hidden` (`hidden`),
  KEY `mli` (`mli`),
  KEY `deleted` (`deleted`),
  KEY `ul` (`ul`),
  FULLTEXT KEY `search_index` (`heading`,`content`)
) TYPE=MyISAM  AUTO_INCREMENT=49 ;

-- 
-- Dumping data for table `mfg_content`
-- 

INSERT INTO `mfg_content` VALUES (1, 10, 0, 'Home', 'Latin Text Used As Page Filler (h1)', '', '', 'f', '', '', '', '<h2>Latin Text Used As Page Filler (h2)</h2>\r\n\r\n<h3>Latin Text Used As Page Filler (h3)</h3>\r\n<h4>Latin Text Used As Page Filler (h4)</h4>\r\n<h5>Latin Text Used As Page Filler (h5)</h5>\r\n\r\n\r\n<!--\r\nhttp://ajaxaspects.blogspot.com/2006/05/another-view-to-back-button-problem-of.html\r\n-->\r\n\r\n<ajax:PropHistory runat="server" />\r\n<script defer="defer" type="text/javascript">\r\n<!-- \r\n// set default values for the Page Properties, if the value is not in the URL:\r\njcl.DataConnections.Load("s", "1");\r\n// declare the properties that should be written to the URL:\r\nPropHistory.propList = {"s":"1"};\r\n// declare the properties that are meaningful for history recording:\r\nPropHistory.stateList = {"s":"1"}; \r\n-->\r\n</script>\r\n\r\n<div id="ajax-nav">\r\n\r\n<a href="index.php?s=1" onMouseOver="javascript:sndReqArg(''db'', ''4::10'');" class="ajax">Home</a> - \r\n\r\n<a href="index.php?s=18" onMouseOver="javascript:sndReqArg(''db'', ''4::900'');" class="ajax">Clients</a> - \r\n\r\n<a href="index.php?s=17" onMouseOver="javascript:sndReqArg(''db'', ''4::950'');" class="ajax">Catalog</a>\r\n\r\n<!-- - <a href="index.php?s=1" onMouseOver="javascript:sndReqArg(''db'', ''2'');" class="ajax">clear data</a> -->\r\n\r\n<div id="db">&nbsp;|&nbsp;</div>\r\n\r\n</div>\r\n\r\n\r\n<!--\r\n<form name="ajax1" action="#">\r\n	<select name="myajax1" onchange="javascript:sndReqArg(''db'', document.ajax1.myajax1.options[document.ajax1.myajax1.selectedIndex].value);">\r\n	<option value="0">- Select a Resource -</option>\r\n	<option value="1">Colors</option>\r\n	<option value="2">Greeting</option>\r\n	<option value="3">Section Menu</option>\r\n	<option value="4::10">Section 1</option>\r\n	<option value="4::900">Section 2</option>\r\n	<option value="4::950">Section 3</option>\r\n	</select>\r\n</form>\r\n-->\r\n\r\n\r\n\r\n\r\n<p><strong>PLEASE IGNORE LATIN TEXT USED AS PAGE FILLER</strong></p><p class="accent">1. Post&#39;S <strong>emensos</strong> insuperabilis expeditionis eventus languentibus partium animis,  quas periculorum varietas fregerat et laborum, nondum tubarum cessante clangore vel milite locato per stationes hibernas, fortunae saevientis procellae tempestates alias rebus infudere <a href="index.php">communibus per multae</a> illa et dira facinora Caesaris Galli, qui ex squalore imo miseriarum in aetatis adultae primitiis ad principale culmen insperato saltu provectus ultra terminos potestatis delatae procurrens asperitate nimia cuncta foedabat.  propinquitate enim regiae stirdis gentilitateque etiam tum Constantini nominis efferebatur in fastus, si plus valuisset, ausurus hostilia in auctorem suae felicitatis, ut videbatur.</p>\r\n\r\n<p class="accent2">2. Cuius acerbitati uxor grave accesserat incentivum, germanitate Augusti turgida supra modum, quam Hannibaliano regi fratris filio antehac Constantinus iunxerat pater, Megaera quaedam mortalis, inflammatrix saevientis adsidua, humani cruoris avida nihil mitius quam maritus; qui paulatim eruditiores facti processu temporis ad nocendum per clandestinos versutosque rumigerulos conpertis leviter addere quaedam male suetos falsa et placentia  sibi discentes, adfectati regni vel  artium nefandarum calumnias insontibus adfligebant.</p><p>3. eminuit autem inter humilia supergressa iam impotentia fines mediocrium delictorum nefanda Clematii cuiusdam Alexandrini nobilis mors repentina; cuius socrus cum misceri sibi generum,  flagrans eius amore, non impetraret, ut ferebatur, per palatii pseudothyrum introducta, oblato pretioso reginae monili id adsecuta est, ut ad Honoratum tum comitem orientis formula missa letali omnino scelere nullo contactus idem Clematius nec hiscere nec loqui permissus occideretur.</p><p>4. Post hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.</p><p>5. nec vox accusatoris ulla licet subditicii in his malorum quaerebatur acervis ut saltem specie tenus crimina praescriptis legum committerentur, quod aliquotiens fecere principes saevi: sed quicquid Caesaris implacabilitati sedisset, id velut fas iusque perpensum confestim urgebatur impleri.</p><ul><li>stuff and more</li><li>stuff and more</li><li>stuff and more</li></ul><p><strong>This is bold</strong></p><p><em>This is italic</em></p>\r\n\r\n', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:50', '2007-06-28 10:08:31');
INSERT INTO `mfg_content` VALUES (32, 990, 0, 'WEBMASTER', 'HIDDEN WEBMASTER NOTES', '', '', '', '', '', '', 'THIS PAGE EXISTS AS A STORAGE PLACE \r\nFOR ASSORTED NOTES, CLIPS OF CODE, ETC.\r\n\r\nDO NOT DELETE (LEAVE HIDDEN)\r\n\r\n\r\nhttp://ajaxaspects.blogspot.com/2006/05/another-view-to-back-button-problem-of.html\r\n<ajax:PropHistory runat="server" />\r\n<script defer="defer" type="text/javascript">\r\n  // set default values for the Page Properties, if the value is not in the URL:\r\n  jcl.DataConnections.Load("s", "1");\r\n  \r\n  // declare the properties that should be written to the URL:\r\n  PropHistory.propList = {"s":"1"};\r\n  \r\n  // declare the properties that are meaningful for history recording:\r\n  PropHistory.stateList = {"s":"1"};\r\n</script>\r\n\r\n\r\n<form name="ajax1" action="#">\r\n	<select name="myajax1" onchange="javascript:sndReqArg(''db'', document.ajax1.myajax1.options[document.ajax1.myajax1.selectedIndex].value);">\r\n	<option value="0">- Select a Resource -</option>\r\n	<!-- <option value="0">Clear</option> -->\r\n	<option value="1">Colors</option>\r\n	<option value="2">Greeting</option>\r\n	</select>\r\n</form>\r\n\r\n<div id="db">&nbsp;</div>', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0.5', 'monthly', '2007-03-26 09:27:16', '2007-03-26 15:27:16');
INSERT INTO `mfg_content` VALUES (2, 900, 260, 'My Orders', 'My Orders', '', '', '', '', '', './inc/cart/vsinvoices.php', '<!-- content include file: /public_html/inc/cart/vsinvoices.php -->\r\n', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0.1', 'monthly', '2006-12-01 18:59:50', '2007-03-12 16:15:11');
INSERT INTO `mfg_content` VALUES (3, 900, 250, 'My Password', 'My Password', '', '', '', '', '', './inc/forms/change.password.form.php', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0.1', 'monthly', '2006-12-01 18:59:50', '2007-03-12 16:29:50');
INSERT INTO `mfg_content` VALUES (4, 900, 10, 'Register', 'Register', '', '', '', '', '', './inc/forms/registration.form.php', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:50', '2007-03-12 17:46:20');
INSERT INTO `mfg_content` VALUES (5, 900, 30, 'Reset Password', 'Reset Password', '', '', '', '', '', './inc/forms/reset.password.form.php', '\r\n', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:50', '2007-03-12 17:37:57');
INSERT INTO `mfg_content` VALUES (6, 900, 40, 'Recover Username', 'Recover Username', '', '', '', '', '', './inc/forms/recover.username.form.php', '\r\n', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:50', '2007-03-12 17:36:52');
INSERT INTO `mfg_content` VALUES (7, 900, 100, 'What''s New', 'What''s New', '', '', '', '', '', '', 'Users must be logged in to see this page.', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0.1', 'monthly', '2006-12-01 18:59:50', '2006-12-02 01:59:50');
INSERT INTO `mfg_content` VALUES (8, 900, 150, 'Quiz 1', 'Quiz 1', '', '', '', '', '', './inc/quiz/quiz1.form.php', '', '1', '0', '1', '9', '0', '0', '0', '0', '0', '0.1', 'monthly', '2006-12-01 18:59:50', '2007-03-13 03:54:50');
INSERT INTO `mfg_content` VALUES (9, 10, 940, 'Contact Us', 'Contact Us', '', '', '', '', '', './inc/forms/feedback.form.php', '<!-- Content comes from fan included programming script. -->', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2007-03-12 14:39:59');
INSERT INTO `mfg_content` VALUES (10, 900, 230, 'My News', 'My News', '', 'd', '', '', '', './inc/pme/vs_news_articles.php', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0.1', 'monthly', '2006-12-01 18:59:51', '2007-06-28 10:09:28');
INSERT INTO `mfg_content` VALUES (11, 10, 880, 'News & Articles', 'News Articles', '', '', '', '', '', './inc/reports/news_articles.php', '<!-- content include file: /public_html/inc/reports/news_articles.php -->\r\n', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2007-03-12 14:38:18');
INSERT INTO `mfg_content` VALUES (12, 10, 960, 'Site Map', 'Site Map', '', '', '', '', '', './inc/sitemap.php', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2007-03-12 18:11:22');
INSERT INTO `mfg_content` VALUES (13, 10, 890, 'Current Events', 'Current Events by Sorted Date', '', '', '', '', '', './inc/reports/calendar1.php', '<!-- content include file: /public_html/inc/reports/calendar1.php -->', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2007-03-12 14:39:23');
INSERT INTO `mfg_content` VALUES (14, 10, 900, 'Newsletter', 'Newsletter Sign-Up', '', '', '', '', '', './inc/forms/newsletter.form.php', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2007-03-12 16:28:32');
INSERT INTO `mfg_content` VALUES (15, 10, 901, 'Newsletter 2', 'Newsletter Sign-Up', '', '', '', '', '', '', '<p>Please use this form manage your subscription to our free newsletter. Newsletters are sent as plain text messages, not HTML messages. If you sign up but do not receive our next newsletter, check to make sure that your spam filters are not redirecting the newsletter to a junk folder.</p>\r\n\r\n<p>Privacy Policy: All e-mail addresses collected are used solely for the purpose of sending our newsletter to those who subscriber voluntarily subscribe. The submitted e-mail address will remain confidential and never be sold, shared, or passed on to anyone else. </p>\r\n\r\n\r\n<!-- Note: an included script is used to display the sign-up form -->', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2006-12-02 01:59:51');
INSERT INTO `mfg_content` VALUES (16, 10, 980, 'Search', 'Search this site''s content', '', '', '', '', '', './inc/forms/sitesearch.form.php', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2007-03-12 18:05:14');
INSERT INTO `mfg_content` VALUES (17, 950, 0, 'Catalog', 'Product Catalog', '', '', '', '', '', './inc/cart/_master.php', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2007-03-12 18:33:14');
INSERT INTO `mfg_content` VALUES (18, 900, 0, 'Clients', 'Welcome!', '', '', '', '', '', '', '<p>Benefits of user registration include ...</p>\r\n<!-- \r\n<ul><li><a title="Register" href="./index.php?s=4">Register</a></li></ul>\r\n\r\n<ul><li><a title="Log In" href="./index.php?s=19">Log In</a></li></ul>\r\n -->', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2007-04-23 12:47:36');
INSERT INTO `mfg_content` VALUES (19, 900, 20, 'Log In', 'Log In', '', '', '', '', '', './inc/forms/login.php', '<!--\r\n<p>To continue, please visit the <a title="Catalog" href="index.php?s=17">Catalog</a> or <a title="click here" href="index.php?s=18">click here</a>.</p>\r\n-->\r\n\r\n<p>If you''re using a public computer, please log out when you''re finished. For your protection, a time limit is applied to user sessions. This means you may have Log In again if your session expires.</p>\r\n\r\n<p>To complete the Log In process, please <a title="click here" href="index.php?s=18">click here</a>.</p>\r\n\r\n\r\n', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '2006-12-01 18:59:51', '2007-03-31 03:18:34');
INSERT INTO `mfg_content` VALUES (20, 900, 999, 'Log Out', 'Log Out', '', '', '', '', '', './inc/logout.php', '<!-- content include file: /public_html/inc/logout.php -->\r\n', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0.1', 'monthly', '2006-12-01 18:59:51', '2007-03-12 14:41:49');
INSERT INTO `mfg_content` VALUES (21, 900, 240, 'My Profile', 'My Profile', '', '', '', '', '', './inc/pme/vs_users.php', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0.1', 'monthly', '2006-12-01 18:59:51', '2007-03-12 18:12:32');
INSERT INTO `mfg_content` VALUES (23, 900, 200, 'My Content 1', 'Edit Website Content', '', '', '', '', '', './inc/pme/vs_content1a.php', '\r\n', '1', '0', '1', '9', '1', '0', '0', '0', '0', '0.1', 'monthly', '2007-01-14 14:07:58', '2007-03-12 18:15:05');
INSERT INTO `mfg_content` VALUES (24, 900, 110, 'Upload Files', 'Upload Files (JPEG, GIF, PNG, PDF, DOC, etc.)', '', '', '', '', '', './inc/forms/upload.form.php', '\r\n', '1', '0', '1', '5', '1', '0', '0', '0', '1', '0.5', 'monthly', '2007-01-17 18:14:16', '2007-03-12 18:15:29');
INSERT INTO `mfg_content` VALUES (25, 900, 220, 'My Uploads', 'My Uploads', '', '', '', '', '', './inc/pme/vs_user_uploads.php', '\r\n', '1', '0', '1', '5', '0', '0', '0', '0', '1', '0.5', 'monthly', '2007-01-18 12:34:08', '2007-03-12 18:16:46');
INSERT INTO `mfg_content` VALUES (26, 900, 210, 'My Content 2', 'Edit Website Content', '', '', '', '', '', './inc/pme/vs_content1a-2.php', '', '1', '0', '1', '9', '1', '0', '0', '0', '0', '0.1', 'monthly', '2007-01-21 13:31:37', '2007-03-12 18:17:31');
INSERT INTO `mfg_content` VALUES (27, 900, 300, 'All Users', 'All Reqistered Users', '', '', '', '', '', './inc/pme/vs_users-all.php', '\r\n', '1', '0', '1', '9', '0', '0', '0', '0', '0', '0.1', 'monthly', '2007-01-21 14:37:36', '2007-03-12 18:18:31');
INSERT INTO `mfg_content` VALUES (28, 900, 310, 'All Uploads', 'Uploads From All Users', '', '', '', '', '', './inc/pme/vs_user_uploads.all.php', '', '1', '0', '1', '9', '0', '0', '0', '0', '0', '0.1', 'monthly', '2007-01-31 13:03:12', '2007-03-12 18:19:12');
INSERT INTO `mfg_content` VALUES (29, 900, 400, 'Hits', 'Hits', '', '', '', '', '', './inc/reports/vs_user_log2.php', '\r\n', '1', '0', '1', '9', '0', '0', '0', '0', '0', '0.1', 'monthly', '2007-02-02 13:32:18', '2007-03-12 18:20:38');
INSERT INTO `mfg_content` VALUES (30, 900, 320, 'Export Data', 'Export Data From MySQL to Excel', '', '', '', '', '', './inc/reports/export2excel.php', '\r\n', '1', '0', '1', '9', '0', '0', '0', '0', '0', '0.1', 'monthly', '2007-02-07 14:36:58', '2007-03-12 18:21:46');
INSERT INTO `mfg_content` VALUES (31, 900, 450, 'Validation Errors', 'Validation Errors', '', '', '', '', '', './inc/pme/phpcg_log_errors.php', '', '1', '0', '1', '9', '0', '0', '0', '0', '0', '0.1', 'monthly', '2007-02-13 08:44:21', '2007-03-24 20:29:44');
INSERT INTO `mfg_content` VALUES (33, 10, 990, 'Newsletter 2', 'Newsletter Sign-Up', '', '', '', '', '', '', '<p>Please use this form manage your subscription to our free newsletter. Newsletters are sent as plain text messages, not HTML messages. If you sign up but do not receive our next newsletter, check to make sure that your spam filters are not redirecting the newsletter to a junk folder.</p>\r\n\r\n<p>Privacy Policy: All e-mail addresses collected are used solely for the purpose of sending our newsletter to those who subscriber voluntarily subscribe. The submitted e-mail address will remain confidential and never be sold, shared, or passed on to anyone else. </p>\r\n\r\n\r\n<!-- Note: an included script is used to display the sign-up form -->', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0.5', 'monthly', '2007-03-26 09:32:41', '2007-03-26 15:32:41');
INSERT INTO `mfg_content` VALUES (34, 990, 10, 'WEBMASTER', 'HIDDEN AJAX NOTE', '', '', '', '', '', '', '<!--\r\nhttp://ajaxaspects.blogspot.com/2006/05/another-view-to-back-button-problem-of.html\r\n-->\r\n\r\n<ajax:PropHistory runat="server" />\r\n<script defer="defer" type="text/javascript">\r\n<!-- \r\n// set default values for the Page Properties, if the value is not in the URL:\r\njcl.DataConnections.Load("s", "1");\r\n// declare the properties that should be written to the URL:\r\nPropHistory.propList = {"s":"1"};\r\n// declare the properties that are meaningful for history recording:\r\nPropHistory.stateList = {"s":"1"}; \r\n-->\r\n</script>\r\n\r\n<p>\r\n\r\n<a href="index.php?s=1" onMouseOver="javascript:sndReqArg(''db'', ''4::10'');">Section 1</a> - \r\n\r\n<a href="index.php?s=18" onMouseOver="javascript:sndReqArg(''db'', ''4::900'');">Section 2</a> - \r\n\r\n<a href="index.php?s=17" onMouseOver="javascript:sndReqArg(''db'', ''4::950'');">Section 3</a>\r\n\r\n<!-- - <a href="index.php?s=1" onMouseOver="javascript:sndReqArg(''db'', ''2'');">clear data</a> -->\r\n\r\n</p>\r\n\r\n<!--\r\n<form name="ajax1" action="#">\r\n	<select name="myajax1" onchange="javascript:sndReqArg(''db'', document.ajax1.myajax1.options[document.ajax1.myajax1.selectedIndex].value);">\r\n	<option value="0">- Select a Resource -</option>\r\n	<option value="1">Colors</option>\r\n	<option value="2">Greeting</option>\r\n	<option value="3">Section Menu</option>\r\n	<option value="4::10">Section 1</option>\r\n	<option value="4::900">Section 2</option>\r\n	<option value="4::950">Section 3</option>\r\n	</select>\r\n</form>\r\n-->\r\n\r\n\r\n<hr size="1">\r\n<div id="db">&nbsp;|&nbsp;</div>\r\n<hr size="1">\r\n', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0.5', 'monthly', '2007-03-26 19:04:38', '2007-03-27 22:05:03');
INSERT INTO `mfg_content` VALUES (35, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-11 15:43:21');
INSERT INTO `mfg_content` VALUES (36, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-11 15:43:17');
INSERT INTO `mfg_content` VALUES (37, 900, 230, 'My News', 'My News', '', '', '', '', '', './inc/pme/vs_news_articles.php', '', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0.1', 'monthly', '2006-12-01 18:59:51', '2007-06-05 09:43:12');
INSERT INTO `mfg_content` VALUES (38, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-14 07:01:50');
INSERT INTO `mfg_content` VALUES (39, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-14 07:02:01');
INSERT INTO `mfg_content` VALUES (40, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-14 07:03:38');
INSERT INTO `mfg_content` VALUES (41, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-14 07:03:46');
INSERT INTO `mfg_content` VALUES (42, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-14 07:04:11');
INSERT INTO `mfg_content` VALUES (43, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-14 07:04:20');
INSERT INTO `mfg_content` VALUES (44, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-14 07:07:23');
INSERT INTO `mfg_content` VALUES (45, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-14 08:22:13');
INSERT INTO `mfg_content` VALUES (46, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-06-14 08:22:19');
INSERT INTO `mfg_content` VALUES (47, 10, 5555, 'Home', 'Latin Text Used As Page Filler (h1)', '', '', 'f', '', '', '', '<h2>Latin Text Used As Page Filler (h2)</h2>\r\n\r\n<h3>Latin Text Used As Page Filler (h3)</h3>\r\n<h4>Latin Text Used As Page Filler (h4)</h4>\r\n<h5>Latin Text Used As Page Filler (h5)</h5>\r\n\r\n\r\n<!--\r\nhttp://ajaxaspects.blogspot.com/2006/05/another-view-to-back-button-problem-of.html\r\n-->\r\n\r\n<ajax:PropHistory runat="server" />\r\n<script defer="defer" type="text/javascript">\r\n<!-- \r\n// set default values for the Page Properties, if the value is not in the URL:\r\njcl.DataConnections.Load("s", "1");\r\n// declare the properties that should be written to the URL:\r\nPropHistory.propList = {"s":"1"};\r\n// declare the properties that are meaningful for history recording:\r\nPropHistory.stateList = {"s":"1"}; \r\n-->\r\n</script>\r\n\r\n<div id="ajax-nav">\r\n\r\n<a href="index.php?s=1" onMouseOver="javascript:sndReqArg(''db'', ''4::10'');" class="ajax">Home</a> - \r\n\r\n<a href="index.php?s=18" onMouseOver="javascript:sndReqArg(''db'', ''4::900'');" class="ajax">Clients</a> - \r\n\r\n<a href="index.php?s=17" onMouseOver="javascript:sndReqArg(''db'', ''4::950'');" class="ajax">Catalog</a>\r\n\r\n<!-- - <a href="index.php?s=1" onMouseOver="javascript:sndReqArg(''db'', ''2'');" class="ajax">clear data</a> -->\r\n\r\n<div id="db">&nbsp;|&nbsp;</div>\r\n\r\n</div>\r\n\r\n\r\n<!--\r\n<form name="ajax1" action="#">\r\n	<select name="myajax1" onchange="javascript:sndReqArg(''db'', document.ajax1.myajax1.options[document.ajax1.myajax1.selectedIndex].value);">\r\n	<option value="0">- Select a Resource -</option>\r\n	<option value="1">Colors</option>\r\n	<option value="2">Greeting</option>\r\n	<option value="3">Section Menu</option>\r\n	<option value="4::10">Section 1</option>\r\n	<option value="4::900">Section 2</option>\r\n	<option value="4::950">Section 3</option>\r\n	</select>\r\n</form>\r\n-->\r\n\r\n\r\n\r\n\r\n<p><strong>PLEASE IGNORE LATIN TEXT USED AS PAGE FILLER</strong></p><p class="accent">1. Post&#39;S <strong>emensos</strong> insuperabilis expeditionis eventus languentibus partium animis,  quas periculorum varietas fregerat et laborum, nondum tubarum cessante clangore vel milite locato per stationes hibernas, fortunae saevientis procellae tempestates alias rebus infudere <a href="index.php">communibus per multae</a> illa et dira facinora Caesaris Galli, qui ex squalore imo miseriarum in aetatis adultae primitiis ad principale culmen insperato saltu provectus ultra terminos potestatis delatae procurrens asperitate nimia cuncta foedabat.  propinquitate enim regiae stirdis gentilitateque etiam tum Constantini nominis efferebatur in fastus, si plus valuisset, ausurus hostilia in auctorem suae felicitatis, ut videbatur.</p>\r\n\r\n<p class="accent2">2. Cuius acerbitati uxor grave accesserat incentivum, germanitate Augusti turgida supra modum, quam Hannibaliano regi fratris filio antehac Constantinus iunxerat pater, Megaera quaedam mortalis, inflammatrix saevientis adsidua, humani cruoris avida nihil mitius quam maritus; qui paulatim eruditiores facti processu temporis ad nocendum per clandestinos versutosque rumigerulos conpertis leviter addere quaedam male suetos falsa et placentia  sibi discentes, adfectati regni vel  artium nefandarum calumnias insontibus adfligebant.</p><p>3. eminuit autem inter humilia supergressa iam impotentia fines mediocrium delictorum nefanda Clematii cuiusdam Alexandrini nobilis mors repentina; cuius socrus cum misceri sibi generum,  flagrans eius amore, non impetraret, ut ferebatur, per palatii pseudothyrum introducta, oblato pretioso reginae monili id adsecuta est, ut ad Honoratum tum comitem orientis formula missa letali omnino scelere nullo contactus idem Clematius nec hiscere nec loqui permissus occideretur.</p><p>4. Post hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.</p><p>5. nec vox accusatoris ulla licet subditicii in his malorum quaerebatur acervis ut saltem specie tenus crimina praescriptis legum committerentur, quod aliquotiens fecere principes saevi: sed quicquid Caesaris implacabilitati sedisset, id velut fas iusque perpensum confestim urgebatur impleri.</p><ul><li>stuff and more</li><li>stuff and more</li><li>stuff and more</li></ul><p><strong>This is bold</strong></p><p><em>This is italic</em></p>\r\n\r\n', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0.5', 'monthly', '2006-12-01 18:59:50', '2007-09-24 14:43:35');
INSERT INTO `mfg_content` VALUES (48, 0, 0, '', '', '', '', '', '', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0.5', 'monthly', '0000-00-00 00:00:00', '2007-09-24 18:13:48');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_customers`
-- 

CREATE TABLE `mfg_customers` (
  `RecordID` mediumint(9) NOT NULL auto_increment,
  `CustomerID` varchar(5) NOT NULL default '',
  `CompanyName` varchar(40) NOT NULL default '',
  `ContactName` varchar(30) default NULL,
  `ContactTitle` varchar(30) default NULL,
  `Address` varchar(60) default NULL,
  `City` varchar(15) NOT NULL default '',
  `Region` varchar(15) NOT NULL default '',
  `PostalCode` varchar(10) NOT NULL default '',
  `Country` varchar(15) default NULL,
  `Phone` varchar(24) default NULL,
  `Fax` varchar(24) default NULL,
  PRIMARY KEY  (`RecordID`)
) TYPE=MyISAM  AUTO_INCREMENT=46 ;

-- 
-- Dumping data for table `mfg_customers`
-- 

INSERT INTO `mfg_customers` VALUES (40, '23', 'testting', 'test', 'titkle', 'hjgfghf', 'city goes heer', 'gghjg', '786786', 'JKHJKH', 'JKHKJH', 'JKHJKH');
INSERT INTO `mfg_customers` VALUES (5, 'BOTTM', 'Bottom-Dollar Market', 'Elizabeth Lincoln', 'Accounting Managers', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', '(604) 555-4729', '(604) 555-3745');
INSERT INTO `mfg_customers` VALUES (7, 'CHOPa', 'Chop-suey Chinese', 'Yang Wang', 'Owner', 'Hauptstr. 295', 'Bern', '', '3012', 'Switzerland', '0452-076545', NULL);
INSERT INTO `mfg_customers` VALUES (13, 'ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria', '7675-3425', '7675-3426');
INSERT INTO `mfg_customers` VALUES (14, 'FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Marketing Assistant', 'Rua Orós, 92', 'São Paulo', 'SP', '05442-030', 'Brazil', '(11) 555-9857', '');
INSERT INTO `mfg_customers` VALUES (18, 'FRANK', 'Frankenversand', 'Peter Franken', 'Marketing Manager', 'Berliner Platz 43', 'Mï¿½nchen', '', '80805', 'Germany', '089-0877310', '089-0877451');
INSERT INTO `mfg_customers` VALUES (20, 'FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Sales Representative', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Canton And Ende', '011-4988260', '011-4988261');
INSERT INTO `mfg_customers` VALUES (21, 'FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Sales Manager', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Brazil', '(1) 354-2534', '(1) 354-2535');
INSERT INTO `mfg_customers` VALUES (22, 'GALED', 'Galería del gastrónomo', 'Eduardo Saavedra', 'Marketing Manager', 'Rambla de Cataluña, 23', 'Barcelona', '', '08022', 'Spain', '(93) 203 4560', '(93) 203 4561');
INSERT INTO `mfg_customers` VALUES (23, 'GODOS', 'Godos Cocina Típica', 'José Pedro Freyre', 'Sales Manager', 'C/ Romero, 33', 'Sevilla', '', '41101', 'Spain', '(95) 555 82 82', '');
INSERT INTO `mfg_customers` VALUES (24, 'GOURL', 'Gourmet Lanchonetes', 'André Fonseca', 'Sales Associate', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', '(11) 555-9482', '');
INSERT INTO `mfg_customers` VALUES (26, 'GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Owner', '5? Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', '(2) 283-2951', '(2) 283-3397');
INSERT INTO `mfg_customers` VALUES (27, 'HANAR', 'Hanari Carnes', 'Mario Pontes', 'Accounting Manager', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', '(21) 555-0091', '(21) 555-8765');
INSERT INTO `mfg_customers` VALUES (30, 'HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Sales Associate', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Ireland', '2967 542', '2967 3333');
INSERT INTO `mfg_customers` VALUES (31, 'ISLAT', 'Island Trading', 'Helen Bennett', 'Marketing Manager', 'Garden House\r\nCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', '(198) 555-8888', '');
INSERT INTO `mfg_customers` VALUES (32, 'KOENE', 'Königlich Essen', 'Philip Cramer', 'Sales Associate', 'Maubelstr. 90', 'Brandenburg', '', '14776', 'Germany', '0555-09876', '');
INSERT INTO `mfg_customers` VALUES (33, 'LACOR', 'La corne d''abondance', 'Daniel Tonini', 'Sales Representative', '67, avenue de l''Europe', 'Versailles', '', '78000', 'France', '30.59.84.10', '30.59.85.11');
INSERT INTO `mfg_customers` VALUES (34, 'LAMAI', 'La maison d''Asie', 'Annette Roulet', 'Sales Manager', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'France', '61.77.61.10', '61.77.61.11');
INSERT INTO `mfg_customers` VALUES (35, 'LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Marketing Assistant', '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', '(604) 555-3392', '(604) 555-7293');
INSERT INTO `mfg_customers` VALUES (36, 'LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Marketing Manager', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA', '(509) 555-7969', '(509) 555-6221');
INSERT INTO `mfg_customers` VALUES (37, 'LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Sales Representative', 'Magazinweg 7', 'Frankfurt a.M.', '', '60528', 'Germany', '069-0245984', '069-0245874');
INSERT INTO `mfg_customers` VALUES (38, 'LETSS', 'Let''s Stop N Shop', 'Jaime Yorres', 'Owner', '87 Polk St.\r\nSuite 5', 'San Francisco', 'CA', '94117', 'USA', '(415) 555-5938', '');
INSERT INTO `mfg_customers` VALUES (39, 'LILAS', 'LILA-Supermercado', 'Carlos González', 'Accounting Manager', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', '(9) 331-6954', '(9) 331-7256');
INSERT INTO `mfg_customers` VALUES (41, 'BOTTM', 'Bottom-Dollar Market', 'Elizabeth Lincoln', 'Accounting Manager', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', '(604) 555-4729', '(604) 555-3745');
INSERT INTO `mfg_customers` VALUES (42, 'BOTTM', 'Bottom-Dollar Market', 'Elizabeth Lincoln', 'Accounting Manager', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', '(604) 555-4729', '(604) 555-3745');
INSERT INTO `mfg_customers` VALUES (45, '23', 'testting', 'test', 'titkle', 'hjgfghf', 'city goes heer', 'gghjg', '786786', 'JKHJKH', 'JKHKJH', 'JKHJKH');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_employees`
-- 

CREATE TABLE `mfg_employees` (
  `EmployeeID` int(11) NOT NULL auto_increment,
  `LastName` varchar(20) NOT NULL default '',
  `FirstName` varchar(10) NOT NULL default '',
  `Title` varchar(30) default NULL,
  `TitleOfCourtesy` varchar(25) default NULL,
  `BirthDate` date default NULL,
  `HireDate` date default NULL,
  `Address` varchar(60) default NULL,
  `City` varchar(15) default NULL,
  `Region` varchar(15) default NULL,
  `PostalCode` varchar(10) NOT NULL default '',
  `Country` varchar(15) default NULL,
  `HomePhone` varchar(24) default NULL,
  `Extension` varchar(4) default NULL,
  `Notes` longtext,
  `ReportsTo` int(11) default NULL,
  PRIMARY KEY  (`EmployeeID`),
  KEY `LastName` (`LastName`),
  KEY `PostalCode` (`PostalCode`)
) TYPE=MyISAM  AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `mfg_employees`
-- 

INSERT INTO `mfg_employees` VALUES (12, 'Bunny', 'Nancy', 'Sales Representative', 'Ms.', '1948-12-08', '1992-05-01', '507 - 20th Ave. E.Apt. 2A', 'Seattle', 'WA', '98122', '', '(206) 555-9857', '5467', 'Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.', 2);
INSERT INTO `mfg_employees` VALUES (16, 'Bly', 'Gretchin', 'The Boss', 'Ms.', '1960-11-12', '0000-00-00', '', '', '', '', '', '', '', '', 0);
INSERT INTO `mfg_employees` VALUES (17, 'Reagan', 'Ron', 'Mr. Pres.', 'Great Scott', '1900-08-09', '1920-09-08', '120 Penn State Ave', 'Washington', '', '03922', 'Algeria', '303.908-6654', '345', '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_help_data`
-- 

CREATE TABLE `mfg_help_data` (
  `hid` mediumint(9) NOT NULL auto_increment,
  `tb_name` varchar(50) NOT NULL default '',
  `fd_num` smallint(6) NOT NULL default '0',
  `fd_name` varchar(50) NOT NULL default '',
  `fd_name2` varchar(50) NOT NULL default '',
  `help_text` text NOT NULL,
  `example` tinytext NOT NULL,
  `language` varchar(50) NOT NULL default 'English',
  `lang_code` varchar(5) NOT NULL default 'en-US',
  `char_set` varchar(15) NOT NULL default 'UTF-8',
  `dir` enum('ltr','rtl') default 'ltr',
  `deleted` tinyint(4) NOT NULL default '0',
  `updated` timestamp NOT NULL,
  PRIMARY KEY  (`hid`),
  UNIQUE KEY `no_duplicates` (`tb_name`,`fd_name`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `mfg_help_data`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_orders`
-- 

CREATE TABLE `mfg_orders` (
  `OrderID` int(11) NOT NULL auto_increment,
  `CustomerID` varchar(5) NOT NULL default '',
  `EmployeeID` int(11) NOT NULL default '0',
  `OrderDate` date default NULL,
  `RequiredDate` date default NULL,
  `ShippedDate` date default NULL,
  `ShipVia` int(11) NOT NULL default '0',
  `Freight` double(6,2) default '0.00',
  `ShipName` varchar(40) default NULL,
  `ShipAddress` varchar(60) default NULL,
  `ShipCity` varchar(15) default NULL,
  `ShipRegion` varchar(15) default NULL,
  `ShipPostalCode` varchar(10) NOT NULL default '',
  `ShipCountry` varchar(15) default NULL,
  PRIMARY KEY  (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `EmployeesOrders` (`EmployeeID`),
  KEY `OrderDate` (`OrderDate`),
  KEY `ShippedDate` (`ShippedDate`),
  KEY `ShippersOrders` (`ShipVia`),
  KEY `ShipPostalCode` (`ShipPostalCode`)
) TYPE=MyISAM  AUTO_INCREMENT=11094 ;

-- 
-- Dumping data for table `mfg_orders`
-- 

INSERT INTO `mfg_orders` VALUES (11084, '1', 0, '0000-00-00', '0000-00-00', '0000-00-00', 0, 0.00, '', '', '', '', '', '');
INSERT INTO `mfg_orders` VALUES (10251, 'VICTE', 3, '1994-08-08', '1994-09-05', '1994-08-15', 1, 41.34, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', 'aouth', '69004', 'France');
INSERT INTO `mfg_orders` VALUES (10252, 'SUPRD', 4, '1994-08-09', '1994-09-06', '1994-08-11', 2, 51.30, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Belgium');
INSERT INTO `mfg_orders` VALUES (10253, 'HANAR', 3, '1994-08-10', '1994-08-24', '1994-08-16', 2, 58.17, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO `mfg_orders` VALUES (10255, 'RICSU', 9, '1994-08-12', '1994-09-09', '1994-08-15', 3, 148.33, 'Richter Supermarkt', 'Starenweg 5', 'Genève', '', '1204', 'Switzerland');
INSERT INTO `mfg_orders` VALUES (11087, '123', 0, '0000-00-00', '0000-00-00', '0000-00-00', 0, 0.00, '', '', '', '', '', '');
INSERT INTO `mfg_orders` VALUES (11088, 'SUPRD', 4, '1994-08-09', '1994-09-06', '1994-08-11', 2, 51.30, 'Suprjmes dilices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Belgium');
INSERT INTO `mfg_orders` VALUES (10257, 'HILAA', 4, '1994-08-16', '1994-09-13', '1994-08-22', 3, 81.91, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO `mfg_orders` VALUES (10258, 'ERNSH', 1, '1994-08-17', '1994-09-14', '1994-08-23', 1, 140.51, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria');
INSERT INTO `mfg_orders` VALUES (11083, 'SUPRD', 4, '1994-08-09', '1994-09-06', '1994-08-11', 2, 51.30, 'Suprjmes dilices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Belgium');
INSERT INTO `mfg_orders` VALUES (10260, 'OTTIK', 4, '1994-08-19', '1994-09-16', '1994-08-29', 1, 55.09, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Germany');
INSERT INTO `mfg_orders` VALUES (10261, 'QUEDE', 4, '1994-08-19', '1994-09-16', '1994-08-30', 2, 3.05, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO `mfg_orders` VALUES (10262, 'RATTC', 8, '1994-08-22', '1994-09-19', '1994-08-25', 3, 48.29, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO `mfg_orders` VALUES (10263, 'ERNSH', 9, '1994-08-23', '1994-09-20', '1994-08-31', 3, 146.06, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria');
INSERT INTO `mfg_orders` VALUES (11078, 'VINET', 5, '1994-08-04', '1994-09-01', '1994-08-16', 3, 32.38, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', '', '51100', 'France');
INSERT INTO `mfg_orders` VALUES (11079, '23423', 1, '0000-00-00', '0000-00-00', '0000-00-00', 0, 0.00, '234`424`2432432`4', '', '', '', '', '');
INSERT INTO `mfg_orders` VALUES (11080, '1', 1, '0000-00-00', '0000-00-00', '0000-00-00', 11, 11.00, '1111111', '111', '', '', '11', '');
INSERT INTO `mfg_orders` VALUES (11081, '13', 12, '2005-01-23', '2005-02-01', '2005-02-02', 0, 47.00, 'billybobs majic spinning tops', '1414 no street', 'atlanta', 'se', '30102', 'usa');
INSERT INTO `mfg_orders` VALUES (11082, 'WELLI', 3, '1994-08-15', '1994-09-12', '1994-08-17', 2, 13.97, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO `mfg_orders` VALUES (11085, '212', 0, '0000-00-00', '0000-00-00', '0000-00-00', 0, 0.00, '', '', '', '', '', '');
INSERT INTO `mfg_orders` VALUES (11086, '1', 0, '0000-00-00', '0000-00-00', '0000-00-00', 0, 0.00, '', '', '', '', '', '');
INSERT INTO `mfg_orders` VALUES (11089, '5512', 10, '2006-08-19', '2006-08-25', '0000-00-00', 0, 25.00, 'FedEx', '5512 1st ave', 'Boston', '', '', '');
INSERT INTO `mfg_orders` VALUES (11090, 'jab', 155, '2006-02-02', '0000-00-00', '0000-00-00', 0, 0.00, '', '', '', '', '', '');
INSERT INTO `mfg_orders` VALUES (11091, 'jab', 155, '2006-02-02', '0000-00-00', '0000-00-00', 0, 0.00, '', '', '', '', '', '');
INSERT INTO `mfg_orders` VALUES (11092, 'jab', 155, '2006-02-02', '2006-02-02', '2006-02-02', 2, 50.00, 'jose benitez', 'san lorenzo', 'posadas', 'Nordeste', '3300', 'Arg');
INSERT INTO `mfg_orders` VALUES (11093, '1', 0, '0000-00-00', '0000-00-00', '0000-00-00', 0, 0.00, '1', '1', '1', '1', '11', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_order_details`
-- 

CREATE TABLE `mfg_order_details` (
  `OrderID` int(11) NOT NULL default '0',
  `ProductID` int(11) NOT NULL default '0',
  `UnitPrice` double(6,2) NOT NULL default '0.00',
  `Quantity` smallint(6) NOT NULL default '1',
  `Discount` float NOT NULL default '0',
  PRIMARY KEY  (`OrderID`,`ProductID`),
  KEY `ProductID` (`ProductID`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `mfg_order_details`
-- 

INSERT INTO `mfg_order_details` VALUES (0, 0, 0.00, 1, 0);
INSERT INTO `mfg_order_details` VALUES (1, 1, 12.00, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_outlook`
-- 

CREATE TABLE `mfg_outlook` (
  `ID` mediumint(9) NOT NULL auto_increment,
  `Title` varchar(255) default NULL,
  `FirstName` varchar(255) default NULL,
  `MiddleName` varchar(255) default NULL,
  `LastName` varchar(255) default NULL,
  `Suffix` varchar(255) default NULL,
  `Company` varchar(255) default NULL,
  `Department` varchar(255) default NULL,
  `JobTitle` varchar(255) default NULL,
  `BusinessStreet` varchar(255) default NULL,
  `BusinessStreet2` varchar(255) default NULL,
  `BusinessStreet3` varchar(255) default NULL,
  `BusinessCity` varchar(255) default NULL,
  `BusinessState` varchar(255) default NULL,
  `BusinessPostalCode` varchar(255) default NULL,
  `BusinessCountry` varchar(255) default NULL,
  `HomeStreet` varchar(255) default NULL,
  `HomeStreet2` varchar(255) default NULL,
  `HomeStreet3` varchar(255) default NULL,
  `HomeCity` varchar(255) default NULL,
  `HomeState` varchar(255) default NULL,
  `HomePostalCode` varchar(255) default NULL,
  `HomeCountry` varchar(255) default NULL,
  `OtherStreet` varchar(255) default NULL,
  `OtherStreet2` varchar(255) default NULL,
  `OtherStreet3` varchar(255) default NULL,
  `OtherCity` varchar(255) default NULL,
  `OtherState` varchar(255) default NULL,
  `OtherPostalCode` varchar(255) default NULL,
  `OtherCountry` varchar(255) default NULL,
  `AssistantsPhone` varchar(255) default NULL,
  `BusinessFax` varchar(255) default NULL,
  `BusinessPhone` varchar(255) default NULL,
  `BusinessPhone2` varchar(255) default NULL,
  `Callback` varchar(255) default NULL,
  `CarPhone` varchar(255) default NULL,
  `CompanyMainPhone` varchar(255) default NULL,
  `HomeFax` varchar(255) default NULL,
  `HomePhone` varchar(255) default NULL,
  `HomePhone2` varchar(255) default NULL,
  `ISDN` varchar(255) default NULL,
  `MobilePhone` varchar(255) default NULL,
  `OtherFax` varchar(255) default NULL,
  `OtherPhone` varchar(255) default NULL,
  `Pager` varchar(255) default NULL,
  `PrimaryPhone` varchar(255) default NULL,
  `RadioPhone` varchar(255) default NULL,
  `TTYTDDPhone` varchar(255) default NULL,
  `Telex` varchar(255) default NULL,
  `Account` varchar(255) default NULL,
  `Anniversary` varchar(255) default NULL,
  `AssistantsName` varchar(255) default NULL,
  `BillingInformation` varchar(255) default NULL,
  `Birthday` varchar(255) default NULL,
  `Categories` varchar(255) default NULL,
  `Children` varchar(255) default NULL,
  `DirectoryServer` varchar(255) default NULL,
  `EmailAddress` varchar(255) default NULL,
  `EmailDisplayName` varchar(255) default NULL,
  `Email2Address` varchar(255) default NULL,
  `Email2DisplayName` varchar(255) default NULL,
  `Email3Address` varchar(255) default NULL,
  `Email3DisplayName` varchar(255) default NULL,
  `Gender` varchar(255) default NULL,
  `GovernmentIDNumber` varchar(255) default NULL,
  `Hobby` varchar(255) default NULL,
  `Initials` varchar(255) default NULL,
  `InternetFreeBusy` varchar(255) default NULL,
  `Keywords` varchar(255) default NULL,
  `Language1` varchar(255) default NULL,
  `Location` varchar(255) default NULL,
  `ManagersName` varchar(255) default NULL,
  `Mileage` varchar(255) default NULL,
  `Notes` longtext,
  `OfficeLocation` varchar(255) default NULL,
  `OrganizationalIDNumber` varchar(255) default NULL,
  `POBox` varchar(255) default NULL,
  `Priority` varchar(255) default NULL,
  `Private` tinyint(3) unsigned NOT NULL default '0',
  `Profession` varchar(255) default NULL,
  `ReferredBy` varchar(255) default NULL,
  `Sensitivity` varchar(255) default NULL,
  `Spouse` varchar(255) default NULL,
  `User1` varchar(255) default NULL,
  `User2` varchar(255) default NULL,
  `User3` varchar(255) default NULL,
  `User4` varchar(255) default NULL,
  `WebPage` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `Company` (`Company`),
  KEY `LastName` (`LastName`)
) TYPE=MyISAM  AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `mfg_outlook`
-- 

INSERT INTO `mfg_outlook` VALUES (24, 'Title01', 'FirstName01', '', '', '', 'Company01a', 'Department01', 'JobTitle01', 'BusinessStreet01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'AssistantsPhone01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01', 'OfficeLocation01', '', '', '', 0, '', '', '', '', '', '', '', '', '');
INSERT INTO `mfg_outlook` VALUES (16, 'Title01', 'FirstName01', '', '', '', 'Company01', 'Department01', 'JobTitle01', 'BusinessStreet01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'AssistantsPhone01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01Notes01', 'OfficeLocation01', '', '', '', 0, '', '', '', '', '', '', '', '', '');
INSERT INTO `mfg_outlook` VALUES (19, '', '', '', '', '', 't nmbnmbnm', 't', 't', 't', 't', 't', 't', 't', 't', 't', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', '', '', '', '', '', '', '', '');
INSERT INTO `mfg_outlook` VALUES (20, 'Mr.', 'Bob', 'Rob', 'Roberts', 'Jr.', 'XCo', 'Mail', 'Clerk', '123 West So. St.', '', '', 'Ortenuka', 'OH', '33414', 'USA', '3333 W. 3rd Ave', '', '', 'Boston', 'AK', '34243', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '');
INSERT INTO `mfg_outlook` VALUES (25, 'Mr.', 'Bob', 'Rob', 'Roberts', 'Jr.', 'XCo', 'Mail', 'Clerk', '123 West So. St.', '', '', 'Ortenuka', 'OH', '33414', 'USA', '3333 W. 3rd Ave', '', '', 'Boston', 'AK', '34243', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '');
INSERT INTO `mfg_outlook` VALUES (28, 'gfdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '');
INSERT INTO `mfg_outlook` VALUES (29, 'mr', 'test', 'justa', 'test', 'phd', '', 'dep', '', 'st', 'st2', 'st3', 'cty', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_products`
-- 

CREATE TABLE `mfg_products` (
  `ProductID` int(11) NOT NULL auto_increment,
  `ProductName` varchar(40) NOT NULL default '',
  `SupplierID` int(11) NOT NULL default '0',
  `CategoryID` int(11) NOT NULL default '0',
  `QuantityPerUnit` varchar(20) default NULL,
  `UnitPrice` double(6,2) default '0.00',
  `UnitsInStock` smallint(6) default '0',
  `UnitsOnOrder` smallint(6) default '0',
  `ReorderLevel` smallint(6) default '0',
  `Discontinued` tinyint(4) default NULL,
  PRIMARY KEY  (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `ProductName` (`ProductName`),
  KEY `SupplierID` (`SupplierID`)
) TYPE=MyISAM  AUTO_INCREMENT=88 ;

-- 
-- Dumping data for table `mfg_products`
-- 

INSERT INTO `mfg_products` VALUES (81, 'Uncle Bob''s Organic Dried Pears2', 3, 7, '12 - 1 lb pkgs.', 30.00, 15, 0, 10, 0);
INSERT INTO `mfg_products` VALUES (3, 'Aniseed Syrupghg123', 1, 2, '', 10.00, 13, 70, 26, 0);
INSERT INTO `mfg_products` VALUES (4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00, 53, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (6, 'Grandma''s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25.00, 120, 0, 25, 0);
INSERT INTO `mfg_products` VALUES (7, 'Uncle Bob''s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30.00, 15, 0, 10, 0);
INSERT INTO `mfg_products` VALUES (8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.00, 6, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.00, 29, 0, 0, 1);
INSERT INTO `mfg_products` VALUES (10, 'Ikura', 4, 8, '12 - 200 ml jars', 31.00, 31, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21.00, 22, 30, 30, 0);
INSERT INTO `mfg_products` VALUES (12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38.00, 86, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (13, 'Konbu', 6, 8, '2 kg box', 6.00, 24, 0, 5, 0);
INSERT INTO `mfg_products` VALUES (14, 'Tofu', 6, 7, '', 23.25, 35, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.50, 39, 0, 5, 0);
INSERT INTO `mfg_products` VALUES (16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.45, 29, 0, 10, 0);
INSERT INTO `mfg_products` VALUES (18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.50, 42, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.20, 25, 0, 5, 0);
INSERT INTO `mfg_products` VALUES (20, 'Sir Rodney''s Marmalade', 8, 3, '30 gift boxes', 81.00, 40, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (21, 'Sir Rodney''s Scones', 8, 3, '24 pkgs. x 4 pieces', 10.00, 3, 40, 5, 0);
INSERT INTO `mfg_products` VALUES (22, 'Gustaf''s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21.00, 104, 0, 25, 0);
INSERT INTO `mfg_products` VALUES (23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9.00, 61, 0, 25, 0);
INSERT INTO `mfg_products` VALUES (24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.50, 20, 0, 0, 1);
INSERT INTO `mfg_products` VALUES (25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14.00, 76, 0, 30, 0);
INSERT INTO `mfg_products` VALUES (26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.23, 15, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.90, 49, 0, 30, 0);
INSERT INTO `mfg_products` VALUES (28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 45.60, 26, 0, 0, 1);
INSERT INTO `mfg_products` VALUES (29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79, 0, 0, 0, 1);
INSERT INTO `mfg_products` VALUES (30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.89, 10, 0, 15, 0);
INSERT INTO `mfg_products` VALUES (31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.50, 0, 70, 20, 0);
INSERT INTO `mfg_products` VALUES (32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32.00, 9, 40, 25, 0);
INSERT INTO `mfg_products` VALUES (33, 'Geitost', 15, 4, '500 g', 2.50, 112, 0, 20, 0);
INSERT INTO `mfg_products` VALUES (34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14.00, 111, 0, 15, 0);
INSERT INTO `mfg_products` VALUES (35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18.00, 20, 0, 15, 0);
INSERT INTO `mfg_products` VALUES (36, 'Inlagd Sill', 17, 8, '24 - 250 g  jars', 19.00, 112, 0, 20, 0);
INSERT INTO `mfg_products` VALUES (37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26.00, 11, 50, 25, 0);
INSERT INTO `mfg_products` VALUES (38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.50, 17, 0, 15, 0);
INSERT INTO `mfg_products` VALUES (39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18.00, 69, 0, 5, 0);
INSERT INTO `mfg_products` VALUES (40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.40, 123, 0, 30, 0);
INSERT INTO `mfg_products` VALUES (41, 'Jack''s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.65, 85, 0, 10, 0);
INSERT INTO `mfg_products` VALUES (42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14.00, 26, 0, 0, 1);
INSERT INTO `mfg_products` VALUES (43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46.00, 53, 10, 25, 0);
INSERT INTO `mfg_products` VALUES (44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.45, 27, 0, 15, 0);
INSERT INTO `mfg_products` VALUES (45, 'R&#248;gede sildy', 21, 8, '1k pkg.', 9.50, 5, 70, 15, 0);
INSERT INTO `mfg_products` VALUES (46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12.00, 95, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.50, 36, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (48, 'Chocolade', 22, 3, '10 pkgs.', 12.75, 15, 70, 25, 0);
INSERT INTO `mfg_products` VALUES (49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20.00, 10, 60, 15, 0);
INSERT INTO `mfg_products` VALUES (50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25, 65, 0, 30, 0);
INSERT INTO `mfg_products` VALUES (51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53.00, 20, 0, 10, 0);
INSERT INTO `mfg_products` VALUES (52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7.00, 38, 0, 25, 0);
INSERT INTO `mfg_products` VALUES (53, 'Perth Pasties', 24, 6, '48 pieces', 32.80, 0, 0, 0, 1);
INSERT INTO `mfg_products` VALUES (54, 'Tourtière', 25, 6, '16 pies', 7.45, 21, 0, 10, 0);
INSERT INTO `mfg_products` VALUES (55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24.00, 115, 0, 20, 0);
INSERT INTO `mfg_products` VALUES (56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38.00, 21, 10, 30, 0);
INSERT INTO `mfg_products` VALUES (57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.50, 36, 0, 20, 0);
INSERT INTO `mfg_products` VALUES (58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.25, 62, 0, 20, 0);
INSERT INTO `mfg_products` VALUES (59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55.00, 79, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34.00, 19, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (61, 'Sirop d''érable', 29, 2, '24 - 500 ml bottles', 28.50, 113, 0, 25, 0);
INSERT INTO `mfg_products` VALUES (63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.90, 24, 0, 5, 0);
INSERT INTO `mfg_products` VALUES (83, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.00, 13, 70, 32767, 0);
INSERT INTO `mfg_products` VALUES (86, '123', 0, 0, '', 0.00, 0, 0, 0, 0);
INSERT INTO `mfg_products` VALUES (87, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00, 53, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_sql_col_types`
-- 

CREATE TABLE `mfg_sql_col_types` (
  `unit_id` int(11) NOT NULL auto_increment,
  `time_col` time NOT NULL default '00:00:00',
  `int_date` int(11) NOT NULL default '0',
  `email` varchar(255) NOT NULL default '',
  `date_null` date default NULL,
  `date_not_null` date NOT NULL default '0000-00-00',
  `time_null` time default NULL,
  `time_not_null` time NOT NULL default '00:00:00',
  `datetime_null` datetime default NULL,
  `datetime_not_null` datetime NOT NULL default '0000-00-00 00:00:00',
  `year_null` year(4) default NULL,
  `year_not_null` year(2) NOT NULL default '00',
  `timestamp_14` timestamp NOT NULL,
  `smallint_null` smallint(6) default NULL,
  `smallint_not_null` smallint(6) NOT NULL default '1',
  `mediumint_null` mediumint(9) default NULL,
  `mediumint_not_null` mediumint(9) NOT NULL default '2',
  `decimal_null` decimal(7,5) default NULL,
  `decimal_not_null` decimal(7,2) NOT NULL default '3.45',
  `double_null` double(7,2) default NULL,
  `double_not_null` double(7,2) NOT NULL default '6.78',
  `float_null` float(7,2) default NULL,
  `float_not_null` float(7,2) NOT NULL default '9.12',
  `char_null` varchar(255) default NULL,
  `char_not_null` varchar(255) NOT NULL default 'Hello, world',
  `tinytext_null` tinytext,
  `tinytext_not_null` tinytext NOT NULL,
  `text_null` text,
  `mediumtext_null` mediumtext,
  `set_null` set('cat','dog','hamster') default NULL,
  `set_not_null` set('rabbit','cat','dog','hamster') NOT NULL default 'rabbit',
  `enum_not_null` enum('A','B','C') NOT NULL default 'A',
  PRIMARY KEY  (`unit_id`)
) TYPE=MyISAM  AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `mfg_sql_col_types`
-- 

INSERT INTO `mfg_sql_col_types` VALUES (1, '08:00:00', 0, 'b', '2004-05-12', '2004-08-12', '00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2000, 00, '2004-08-23 20:38:59', 0, 0, 0, 0, 0.00000, 0.00, 0.00, 0.00, 0.00, 0.00, 'a', 'a', 'a', 'a', 'asdf', 'asdf', 'dog', 'hamster', 'B');
INSERT INTO `mfg_sql_col_types` VALUES (2, '00:00:00', 0, 'a', '2004-05-12', '2004-08-12', '00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2000, 00, '2006-08-01 17:00:03', 0, 0, 0, 0, 0.00000, 0.00, 0.00, 0.00, 0.00, 0.00, 'a', 'a', 'a', 'a', 'asdf', 'asdf', 'hamster', 'hamster', 'B');
INSERT INTO `mfg_sql_col_types` VALUES (3, '00:00:00', 0, '56465', '0000-00-00', '2004-12-28', '838:59:05', '08:00:00', '0008-00-00 00:00:00', '2004-12-28 08:00:00', 2004, 04, '2007-08-06 08:25:50', 0, -12, 8388607, -54, 45.00000, 564.00, 3.45, 0.00, 6.78, 0.00, '9.12', '', 'Hello, world', 'This is an o''test', 'This is an o''test', 'This is an o''test', NULL, 'cat', 'A');
INSERT INTO `mfg_sql_col_types` VALUES (4, '00:00:00', 0, 'aaa@bbb.com', '2005-03-06', '0000-00-00', '00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2000, 00, '2005-03-06 23:05:46', 0, 1, 0, 2, 0.00000, 3.45, 0.00, 6.78, 0.00, 9.12, '', 'Hello, world', '', '', '', '', 'cat', 'rabbit', 'A');
INSERT INTO `mfg_sql_col_types` VALUES (6, '00:00:00', 0, '', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2000, 00, '2005-11-16 15:04:07', 0, 1, 0, 2, 0.00000, 3.45, 0.00, 6.78, 0.00, 9.12, '', 'Hello, world', '', '', '', '', 'dog', 'dog', 'A');
INSERT INTO `mfg_sql_col_types` VALUES (7, '00:00:00', 0, '', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2000, 00, '2006-10-18 09:09:09', 0, 1, 0, 2, 0.00000, 3.45, 0.00, 6.78, 0.00, 9.12, '', 'Hello, world', '', '', '', '', 'hamster', 'cat', 'A');
INSERT INTO `mfg_sql_col_types` VALUES (8, '00:00:00', 0, '', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2000, 00, '2006-08-01 17:01:54', 0, 1, 0, 2, 0.00000, 3.45, 0.00, 6.78, 0.00, 9.12, '', 'Hello, world', '', '', '', '', '', 'rabbit', 'A');
INSERT INTO `mfg_sql_col_types` VALUES (9, '00:00:00', 0, 'cROLA', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2000, 00, '2006-08-01 17:02:25', 0, 1, 0, 2, 0.00000, 3.45, 0.00, 6.78, 0.00, 9.12, '', 'Hello, world', '', '', '', '', 'dog', 'dog', 'A');
INSERT INTO `mfg_sql_col_types` VALUES (13, '00:00:00', 0, '', NULL, '0000-00-00', NULL, '00:00:00', NULL, '0000-00-00 00:00:00', NULL, 00, '2007-07-04 16:43:05', NULL, 1, NULL, 2, NULL, 3.45, NULL, 6.78, NULL, 9.12, NULL, 'Hello, world', NULL, '', NULL, NULL, NULL, 'rabbit', 'A');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_streets`
-- 

CREATE TABLE `mfg_streets` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `st` char(30) NOT NULL default '',
  `dir` char(5) NOT NULL default '',
  `blk` double(7,1) unsigned NOT NULL default '0.0',
  `rot` char(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `st` (`st`)
) TYPE=MyISAM  AUTO_INCREMENT=617 ;

-- 
-- Dumping data for table `mfg_streets`
-- 

INSERT INTO `mfg_streets` VALUES (1, '1st Av', 'E-W', 1.0, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (2, '2nd Av', 'E-W', 2.0, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (3, 'Abilene St', 'N-S', 138.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (4, 'Acoma St', 'N-S', 1.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (5, 'Ada Pl', 'E-W', 8.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (6, 'Adams St', 'N-S', 33.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (7, 'Addish St', 'N-S', 234.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (8, 'Adriatic Pl', 'E-W', 21.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (9, 'Akron St', 'N-S', 90.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (10, 'Alabama Pl', 'E-W', 12.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (11, 'Alameda Av', 'E-W', 3.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (12, 'Alaska Pl', 'E-W', 4.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (13, 'Albion St', 'N-S', 41.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (14, 'Alcott St', 'N-S', 25.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (15, 'Algonquin St', 'N-S', 235.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (16, 'Alkire St', 'N-S', 132.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (17, 'Allison St', 'N-S', 80.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (18, 'Alton St', 'N-S', 91.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (19, 'Altura St', 'N-S', 149.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (20, 'Ames St', 'N-S', 53.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (21, 'Amherst Av', 'E-W', 28.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (22, 'Ammons St', 'N-S', 81.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (23, 'Andes St', 'N-S', 186.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (24, 'Arapahoe Rd', 'E-W', 67.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (25, 'Arapahoe St', 'SW-NE', 11.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (26, 'Arbutus St', 'N-S', 133.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (27, 'Archer Pl', 'E-W', 0.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (28, 'Argonne St', 'N-S', 187.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (29, 'Arizona Av', 'E-W', 12.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (30, 'Arkansas Av', 'E-W', 14.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (31, 'Asbury Av', 'E-W', 20.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (32, 'Ash St', 'N-S', 42.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (33, 'Atchison St', 'N-S', 139.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (34, 'Atlantic Pl', 'E-W', 19.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (35, 'Bahama St', 'N-S', 188.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (36, 'Bails Pl', 'E-W', 18.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (37, 'Balsam St', 'N-S', 82.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (38, 'Baltic Pl', 'E-W', 22.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (39, 'Bannock St', 'N-S', 2.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (40, 'Bassett St', 'SW-NE', 21.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (41, 'Batavia Pl', 'E-W', 16.5, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (42, 'Bates Av', 'E-W', 29.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (43, 'Bayaud Av', 'E-W', 1.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (44, 'Beech St', 'N-S', 134.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (45, 'Beeler St', 'N-S', 92.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (46, 'Bellaire St', 'N-S', 43.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (47, 'Belleview Av', 'E-W', 51.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (48, 'Benton St', 'N-S', 54.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (49, 'Berry Av', 'E-W', 55.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (50, 'Bethany Pl', 'E-W', 29.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (51, 'Billings St', 'N-S', 140.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (52, 'Biloxi St', 'N-S', 236.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (53, 'Birch St', 'N-S', 44.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (54, 'Biscay St', 'N-S', 189.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (55, 'Blackhawk St', 'N-S', 141.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (56, 'Blake St', 'SW-NE', 15.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (57, 'Boston St', 'N-S', 93.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (58, 'Boulder St', 'SW-NE', 26.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (59, 'Braun St', 'N-S', 135.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (60, 'Brentwood St', 'N-S', 83.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (61, 'Briarwood Av', 'E-W', 68.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (62, 'Broadway', 'N-S', 0.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (63, 'Brown Pl', 'E-W', 28.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (64, 'Bruce Randolph Av', 'E-W', 34.0, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (65, 'Bryant St', 'N-S', 26.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (66, 'Buchanan St', 'N-S', 237.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (67, 'Buckley Rd', 'N-S', 169.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (68, 'Byers Pl', 'E-W', 2.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (69, 'Caley Av', 'E-W', 63.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (70, 'California St', 'SW-NE', 7.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (71, 'Carr St', 'N-S', 84.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (72, 'Carson St', 'N-S', 142.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (73, 'Caspian Pl', 'E-W', 23.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (74, 'Catawba St', 'N-S', 238.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (75, 'Cathay St', 'N-S', 190.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (76, 'Cedar Av', 'E-W', 2.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (77, 'Center Av', 'E-W', 6.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (78, 'Central St', 'SW-NE', 25.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (79, 'Ceylon St', 'N-S', 191.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (80, 'Chambers Rd', 'N-S', 153.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (81, 'Champa St', 'SW-NE', 9.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (82, 'Chase St', 'N-S', 55.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (83, 'Chenango Av', 'E-W', 49.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (84, 'Cherokee St', 'N-S', 3.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (85, 'Cherry St', 'N-S', 46.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (86, 'Chester St', 'N-S', 94.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (87, 'Chestnut Pl', 'SW-NE', 20.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (88, 'Cheyenne Pl', 'SW-NE', 1.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (89, 'Clarkson St', 'N-S', 8.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (90, 'Clay St', 'N-S', 27.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (91, 'Clayton St', 'N-S', 27.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (92, 'Clermont St', 'N-S', 45.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (93, 'Cleveland Pl', 'SW-NE', 2.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (94, 'Clinton St', 'N-S', 95.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (95, 'Cody St', 'N-S', 85.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (96, 'Cole St', 'N-S', 136.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (97, 'Colfax Av', 'E-W', 15.0, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (98, 'Colorado Av', 'E-W', 18.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (99, 'Colorado Bl', 'N-S', 40.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (100, 'Columbia Pl', 'E-W', 30.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (101, 'Columbine St', 'N-S', 25.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (102, 'Cook St', 'N-S', 34.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (103, 'Coolidge St', 'N-S', 239.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (104, 'Coors St', 'N-S', 137.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (105, 'Cornell Av', 'E-W', 30.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (106, 'Corona St', 'N-S', 11.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (107, 'Costilla Av', 'E-W', 69.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (108, 'County Line Rd', 'E-W', 83.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (109, 'Court Pl', 'SW-NE', 3.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (110, 'Crestline Av', 'E-W', 54.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (111, 'Crystal St', 'N-S', 143.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (112, 'Curtis St', 'SW-NE', 10.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (113, 'Custer Pl', 'E-W', 5.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (114, 'Dahlia St', 'N-S', 48.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (115, 'Dakota Av', 'E-W', 4.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (116, 'Dallas St', 'N-S', 96.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (117, 'Danube St', 'N-S', 192.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (118, 'Dartmouth Av', 'E-W', 31.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (119, 'Davies Av', 'E-W', 70.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (120, 'Dayton St', 'N-S', 97.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (121, 'De Gaulle St', 'N-S', 240.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (122, 'Dearborn St', 'N-S', 146.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (123, 'Decatur St', 'N-S', 28.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (124, 'Deframe St', 'N-S', 138.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (125, 'Delaware St', 'N-S', 4.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (126, 'Delgany St', 'SW-NE', 19.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (127, 'Depew St', 'N-S', 56.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (128, 'Dequesne St', 'N-S', 241.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (129, 'Detroit St', 'N-S', 28.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (130, 'Devinney St', 'N-S', 139.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (131, 'Dexter St', 'N-S', 47.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (132, 'Dick Connor Av', 'E-W', 17.0, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (133, 'Dickenson Pl', 'E-W', 24.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (134, 'Dillon St', 'N-S', 144.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (135, 'Dorado Av', 'E-W', 57.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (136, 'Dover St', 'N-S', 86.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (137, 'Downing St', 'N-S', 12.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (138, 'Dry Creek Rd', 'E-W', 75.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (139, 'Dudley St', 'N-S', 87.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (140, 'Dunkirk St', 'N-S', 193.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (141, 'Eagle St', 'N-S', 147.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (142, 'Easter Av', 'E-W', 71.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (143, 'Eastman Av', 'E-W', 32.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (144, 'Eaton St', 'N-S', 57.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (145, 'Eden Park St', 'N-S', 242.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (146, 'Elati St', 'N-S', 5.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (147, 'Eldorado Pl', 'E-W', 31.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (148, 'Eldridge St', 'N-S', 140.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (149, 'Eliot St', 'N-S', 29.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (150, 'Elizabeth St', 'N-S', 26.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (151, 'Elk St', 'N-S', 243.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (152, 'Elkhart St', 'N-S', 148.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (153, 'Ellis St', 'N-S', 141.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (154, 'Ellsworth Av', 'E-W', 0.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (155, 'Elm St', 'N-S', 50.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (156, 'Elmira St', 'N-S', 99.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (157, 'Emerson St', 'N-S', 9.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (158, 'Emporia St', 'N-S', 98.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (159, 'Ensenada St', 'N-S', 194.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (160, 'Erie St', 'SW-NE', 27.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (161, 'Espana St', 'N-S', 195.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (162, 'Estes St', 'N-S', 88.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (163, 'Euclid Av', 'E-W', 66.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (164, 'Eudora St', 'N-S', 49.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (165, 'Evans Av', 'E-W', 21.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (166, 'Everett St', 'N-S', 89.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (167, 'Exposition Av', 'E-W', 7.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (168, 'Fair Av', 'E-W', 62.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (169, 'Fairfax St', 'N-S', 51.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (170, 'Fairplay St', 'N-S', 150.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (171, 'Federal Bl', 'N-S', 30.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (172, 'Fenton St', 'N-S', 58.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (173, 'Field St', 'N-S', 90.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (174, 'Fig St', 'N-S', 142.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (175, 'Filmore St', 'N-S', 29.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (176, 'Flanders St', 'N-S', 196.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (177, 'Flatrock St', 'N-S', 244.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (178, 'Flora Pl', 'E-W', 32.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (179, 'Flora St', 'N-S', 143.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (180, 'Florence St', 'N-S', 100.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (181, 'Florida Av', 'E-W', 15.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (182, 'Flower St', 'N-S', 91.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (183, 'Floyd Av', 'E-W', 33.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (184, 'Flundy St', 'N-S', 197.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (185, 'Ford Pl', 'E-W', 9.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (186, 'Forest St', 'N-S', 52.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (187, 'Fox St', 'N-S', 6.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (188, 'Franklin St', 'N-S', 16.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (189, 'Fraser St', 'N-S', 151.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (190, 'Fremont Av', 'E-W', 72.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (191, 'Fulton St', 'N-S', 101.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (192, 'Fultondale St', 'N-S', 245.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (193, 'Galapago St', 'N-S', 7.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (194, 'Galena St', 'N-S', 102.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (195, 'Gardenia St', 'N-S', 144.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (196, 'Garfield St', 'N-S', 37.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (197, 'Garland St', 'N-S', 93.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (198, 'Garrison St', 'N-S', 92.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (199, 'Gaylord St', 'N-S', 22.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (200, 'Geddes Av', 'E-W', 73.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (201, 'Geneva St', 'N-S', 103.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (202, 'Genoa St', 'N-S', 198.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (203, 'Gibraltar St', 'N-S', 199.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (204, 'Gill Pl', 'E-W', 6.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (205, 'Giplin St', 'N-S', 17.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (206, 'Girard Av', 'E-W', 34.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (207, 'Gladiola St', 'N-S', 145.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (208, 'Glenarm Pl', 'SW-NE', 5.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (209, 'Glencoe St', 'N-S', 53.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (210, 'Gold Bug St', 'N-S', 246.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (211, 'Granby St', 'N-S', 152.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (212, 'Grand Av', 'E-W', 50.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (213, 'Grandbay St', 'N-S', 247.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (214, 'Grant St', 'N-S', 3.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (215, 'Grape St', 'N-S', 54.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (216, 'Gray St', 'N-S', 59.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (217, 'Greenwood Pl', 'E-W', 33.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (218, 'Grove St', 'N-S', 31.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (219, 'Gun Club Rd', 'N-S', 233.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (220, 'Gunnison Pl', 'E-W', 15.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (221, 'Haleyville St', 'N-S', 248.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (222, 'Halifax St', 'N-S', 200.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (223, 'Hamilton Pl', 'E-W', 34.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (224, 'Hampden Pl', 'E-W', 35.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (225, 'Hannibal St', 'N-S', 154.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (226, 'Hanover St', 'N-S', 104.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (227, 'Harlan St', 'N-S', 60.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (228, 'Harrison St', 'N-S', 39.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (229, 'Harvard Av', 'E-W', 25.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (230, 'Harvest Rd', 'N-S', 249.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (231, 'Havana St', 'N-S', 105.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (232, 'Helena St', 'N-S', 155.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (233, 'High St', 'N-S', 19.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (234, 'Himalaya St', 'N-S', 201.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (235, 'Hinsdale Av', 'E-W', 74.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (236, 'Holland St', 'N-S', 94.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (237, 'Holly St', 'N-S', 56.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (238, 'Holman St', 'N-S', 146.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (239, 'Hooker St', 'N-S', 32.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (240, 'Howell St', 'N-S', 147.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (241, 'Hoyt St', 'N-S', 95.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (242, 'Hudson St', 'N-S', 55.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (243, 'Humboldt St', 'N-S', 15.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (244, 'Huron St', 'N-S', 8.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (245, 'Ida Av', 'E-W', 58.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (246, 'Idaho Pl', 'E-W', 14.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (247, 'Idalia St', 'N-S', 156.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (248, 'Ider St', 'N-S', 250.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (249, 'Iliff Av', 'E-W', 23.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (250, 'Inca St', 'N-S', 9.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (251, 'Independence St', 'N-S', 96.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (252, 'Indiana St', 'N-S', 148.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (253, 'Ingalls St', 'N-S', 61.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (254, 'Iola St', 'N-S', 106.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (255, 'Iowa Av', 'E-W', 16.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (256, 'Iran St', 'N-S', 202.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (257, 'Ireland St', 'N-S', 203.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (258, 'Iris St', 'N-S', 97.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (259, 'Ironton St', 'N-S', 107.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (260, 'Irving St', 'N-S', 33.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (261, 'Irvington Pl', 'E-W', 0.5, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (262, 'Irvington St', 'N-S', 251.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (263, 'Isabell St', 'N-S', 149.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (264, 'Ithaca Pl', 'E-W', 35.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (265, 'Ivanhoe St', 'N-S', 57.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (266, 'Ivy St', 'N-S', 58.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (267, 'Jackson Gap St', 'N-S', 252.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (268, 'Jackson St', 'N-S', 38.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (269, 'Jamaica St', 'N-S', 108.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (270, 'Jamestown St', 'N-S', 253.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (271, 'Jamison Av', 'E-W', 76.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (272, 'Jarvis Pl', 'E-W', 36.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (273, 'Jasmine St', 'N-S', 60.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (274, 'Jason St', 'N-S', 10.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (275, 'Jasper St', 'N-S', 157.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (276, 'Jay St', 'N-S', 62.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (277, 'Jebel St', 'N-S', 204.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (278, 'Jefferson Av', 'E-W', 36.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (279, 'Jellison St', 'N-S', 98.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (280, 'Jericho St', 'N-S', 205.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (281, 'Jersey St', 'N-S', 59.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (282, 'Jewell Av', 'E-W', 19.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (283, 'Johnson St', 'N-S', 99.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (284, 'Joliet St', 'N-S', 109.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (285, 'Joplin St', 'N-S', 158.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (286, 'Josephine St', 'N-S', 24.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (287, 'Joyce St', 'N-S', 150.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (288, 'Julian St', 'N-S', 34.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (289, 'Juniper St', 'N-S', 151.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (290, 'Kalamath St', 'N-S', 11.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (291, 'Kalispell St', 'N-S', 159.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (292, 'Kearney St', 'N-S', 61.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (293, 'Kellerman St', 'N-S', 254.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (294, 'Kendall St', 'N-S', 63.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (295, 'Kendrick St', 'N-S', 152.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (296, 'Kent Pl', 'E-W', 37.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (297, 'Kenton St', 'N-S', 110.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (298, 'Kentucky Av', 'E-W', 9.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (299, 'Kenyon Av', 'E-W', 37.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (300, 'Kettle Av', 'E-W', 77.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (301, 'Kewaunee St', 'N-S', 255.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (302, 'Killarney St', 'N-S', 206.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (303, 'Kilmer St', 'N-S', 153.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (304, 'King St', 'N-S', 35.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (305, 'Kingston St', 'N-S', 111.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (306, 'Kipling St', 'N-S', 100.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (307, 'Kirk St', 'N-S', 207.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (308, 'Kittredge St', 'N-S', 160.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (309, 'Kline St', 'N-S', 101.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (310, 'Knollbrook St', 'N-S', 258.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (311, 'Krameria St', 'N-S', 62.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (312, 'La Salle Pl', 'E-W', 25.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (313, 'Lafayette St', 'N-S', 14.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (314, 'Lake Av', 'E-W', 60.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (315, 'Lamar St', 'N-S', 64.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (316, 'Langdale St', 'N-S', 256.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (317, 'Lansing St', 'N-S', 112.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (318, 'Laredo St', 'N-S', 161.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (319, 'Larimer St', 'SW-NE', 13.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (320, 'Lawrence St', 'SW-NE', 12.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (321, 'Layton Av', 'E-W', 48.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (322, 'Lee St', 'N-S', 102.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (323, 'Lehigh Av', 'E-W', 38.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (324, 'Lewis St', 'N-S', 103.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (325, 'Lewiston St', 'N-S', 162.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (326, 'Leyden St', 'N-S', 63.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (327, 'Lima St', 'N-S', 113.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (328, 'Lincoln St', 'N-S', 1.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (329, 'Linvale Pl', 'E-W', 27.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (330, 'Lipan St', 'N-S', 12.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (331, 'Lisbon St', 'N-S', 208.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (332, 'Little River St', 'N-S', 257.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (333, 'Liverpool St', 'N-S', 209.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (334, 'Locust St', 'N-S', 64.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (335, 'Logan St', 'N-S', 4.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (336, 'Long Av', 'E-W', 78.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (337, 'Louisiana Av', 'E-W', 13.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (338, 'Loveland St', 'N-S', 154.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (339, 'Lowell Bl', 'N-S', 36.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (340, 'Lupine St', 'N-S', 155.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (341, 'Macon St', 'N-S', 114.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (342, 'Madison St', 'N-S', 35.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (343, 'Magnolia St', 'N-S', 66.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (344, 'Malaya St', 'N-S', 210.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (345, 'Malta St', 'N-S', 211.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (346, 'Mansfield Av', 'E-W', 39.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (347, 'Maple Av', 'E-W', 1.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (348, 'Maplewood Av', 'E-W', 61.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (349, 'Marion St', 'N-S', 13.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (350, 'Mariposa St', 'N-S', 13.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (351, 'Market St', 'SW-NE', 14.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (352, 'Marshall St', 'N-S', 65.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (353, 'McIntyre St', 'N-S', 156.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (354, 'Meade St', 'N-S', 37.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (355, 'Memphis St', 'N-S', 163.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (356, 'Mexico Av', 'E-W', 17.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (357, 'Milan PL', 'E-W', 38.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (358, 'Miller St', 'N-S', 104.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (359, 'Milwaukee St', 'N-S', 30.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (360, 'Mineral Av', 'E-W', 79.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (361, 'Mississippi Av', 'E-W', 11.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (362, 'ML King Jr Bl', 'E-W', 32.0, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (363, 'Mobile St', 'N-S', 164.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (364, 'Moline St', 'N-S', 115.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (365, 'Monaco Pkwy', 'N-S', 65.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (366, 'Monroe St', 'N-S', 36.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (367, 'Montana Pl', 'E-W', 17.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (368, 'Montview Bl', 'E-W', 20.0, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (369, 'Moore St', 'N-S', 105.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (370, 'Moss St', 'N-S', 157.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (371, 'Muscadine St', 'N-S', 259.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (372, 'Nassau Av', 'E-W', 40.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (373, 'Navajo St', 'N-S', 14.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (374, 'Nelson St', 'N-S', 106.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (375, 'Nepal St', 'N-S', 212.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (376, 'Netherland St', 'N-S', 213.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (377, 'Nevada Pl', 'E-W', 3.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (378, 'New Castle St', 'N-S', 261.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (379, 'Newark St', 'N-S', 116.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (380, 'Newberne St', 'N-S', 260.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (381, 'Newcombe St', 'N-S', 107.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (382, 'Newland St', 'N-S', 66.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (383, 'Newport St', 'N-S', 68.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (384, 'Newton St', 'N-S', 38.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (385, 'Niagara St', 'N-S', 67.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (386, 'Nichols Av', 'E-W', 80.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (387, 'Nile St', 'N-S', 158.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (388, 'Nome St', 'N-S', 117.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (389, 'Norfolk St', 'N-S', 165.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (390, 'Norse St', 'N-S', 159.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (391, 'Nucla St', 'N-S', 166.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (392, 'Oak Hill St', 'N-S', 262.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (393, 'Oak St', 'N-S', 108.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (394, 'Oakland St', 'N-S', 118.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (395, 'Odessa St', 'N-S', 214.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (396, 'Ogden St', 'N-S', 10.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (397, 'Ohio Av', 'E-W', 8.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (398, 'Olathe St', 'N-S', 167.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (399, 'Old Hammer St', 'N-S', 263.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (400, 'Olive St', 'N-S', 70.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (401, 'Oneida St', 'N-S', 69.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (402, 'Orchard Rd', 'E-W', 59.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (403, 'Orchard St', 'N-S', 160.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (404, 'Oregon Pl', 'E-W', 16.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (405, 'Orion St', 'N-S', 161.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (406, 'Orleans St', 'N-S', 215.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (407, 'Osage St', 'N-S', 15.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (408, 'Osceola St', 'N-S', 39.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (409, 'Oswego St', 'N-S', 119.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (410, 'Otero Av', 'E-W', 81.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (411, 'Otis St', 'N-S', 67.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (412, 'Ouray St', 'N-S', 168.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (413, 'Owens St', 'N-S', 109.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (414, 'Oxford Av', 'E-W', 41.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (415, 'Pacific Pl', 'E-W', 20.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (416, 'Pagosa St', 'N-S', 170.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (417, 'Parfet St', 'N-S', 110.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (418, 'Paris St', 'N-S', 120.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (419, 'Patsburg St', 'N-S', 264.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (420, 'Peakview Av', 'E-W', 65.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (421, 'Pearl St', 'N-S', 6.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (422, 'Pearson St', 'N-S', 111.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (423, 'Pecos St', 'N-S', 16.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (424, 'Pennsylvania St', 'N-S', 5.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (425, 'Peoria St', 'N-S', 121.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (426, 'Perry St', 'N-S', 40.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (427, 'Perth St', 'N-S', 216.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (428, 'Phillips Av', 'E-W', 82.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (429, 'Picadilly Rd', 'N-S', 217.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (430, 'Pierce St', 'N-S', 68.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (431, 'Pierson St', 'N-S', 111.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (432, 'Pike St', 'N-S', 162.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (433, 'Pitkin St', 'N-S', 171.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (434, 'Platte St', 'SW-NE', 24.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (435, 'Pontiac St', 'N-S', 71.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (436, 'Poplar St', 'N-S', 72.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (437, 'Poppy St', 'N-S', 163.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (438, 'Potomac St', 'N-S', 137.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (439, 'Powers Av', 'E-W', 56.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (440, 'Powhaton Rd', 'N-S', 265.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (441, 'Prentice Av', 'E-W', 53.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (442, 'Princeton Av', 'E-W', 42.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (443, 'Progress Av', 'E-W', 52.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (444, 'Quail St', 'N-S', 112.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (445, 'Quaker St', 'N-S', 164.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (446, 'Quarl St', 'N-S', 122.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (447, 'Quartz St', 'N-S', 165.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (448, 'Quater St', 'N-S', 218.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (449, 'Quay St', 'N-S', 69.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (450, 'Quebec St', 'N-S', 73.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (451, 'Queen St', 'N-S', 113.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (452, 'Quency St', 'N-S', 219.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (453, 'Quentin St', 'N-S', 123.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (454, 'Quince St', 'N-S', 74.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (455, 'Quincy Av', 'E-W', 43.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (456, 'Quintero St', 'N-S', 172.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (457, 'Quitman St', 'N-S', 41.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (458, 'Quivas St', 'N-S', 17.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (459, 'Race St', 'N-S', 20.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (460, 'Racine St', 'N-S', 124.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (461, 'Radcliff Av', 'E-W', 44.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (462, 'Raleigh St', 'N-S', 42.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (463, 'Raritan St', 'N-S', 18.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (464, 'Reed St', 'N-S', 70.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (465, 'Revere St', 'N-S', 125.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (466, 'Richfield St', 'N-S', 173.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (467, 'Richthofen Pl', 'E-W', 11.5, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (468, 'Rifle St', 'N-S', 174.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (469, 'Riviera St', 'N-S', 220.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (470, 'Robb St', 'N-S', 114.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (471, 'Rogers St', 'N-S', 166.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (472, 'Rome St', 'N-S', 221.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (473, 'Rosemary St', 'N-S', 76.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (474, 'Roslyn St', 'N-S', 75.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (475, 'Routt St', 'N-S', 115.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (476, 'Russell St', 'N-S', 167.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (477, 'Sable Bl', 'N-S', 145.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (478, 'Salem St', 'N-S', 126.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (479, 'Salida St', 'N-S', 175.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (480, 'Salvia St', 'N-S', 168.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (481, 'Santa Fe Dr', 'N-S', 10.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (482, 'Saulsbury St', 'N-S', 71.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (483, 'Scranton St', 'N-S', 127.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (484, 'Secrest St', 'N-S', 169.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (485, 'Sedalia St', 'N-S', 176.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (486, 'Severn Pl', 'E-W', 7.5, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (487, 'Shawnee St', 'N-S', 222.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (488, 'Sheridan Bl', 'N-S', 52.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (489, 'Sherman St', 'N-S', 2.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (490, 'Shoshone St', 'N-S', 19.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (491, 'Sicily St', 'N-S', 223.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (492, 'Simms St', 'N-S', 116.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (493, 'Spruce St', 'N-S', 78.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (494, 'St Paul St', 'N-S', 31.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (495, 'Stanford Av', 'E-W', 45.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (496, 'Steele St', 'N-S', 32.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (497, 'Stout St', 'SW-NE', 8.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (498, 'Stuart St', 'N-S', 43.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (499, 'Swadley St', 'N-S', 117.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (500, 'Syracuse St', 'N-S', 77.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (501, 'Tabor St', 'N-S', 118.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (502, 'Taft St', 'N-S', 119.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (503, 'Tamarac St', 'N-S', 80.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (504, 'Tejon St', 'N-S', 20.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (505, 'Teller St', 'N-S', 72.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (506, 'Telluride St', 'N-S', 177.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (507, 'Tempe St', 'N-S', 224.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (508, 'Tennessee Av', 'E-W', 10.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (509, 'Tennyson St', 'N-S', 44.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (510, 'Terry St', 'N-S', 170.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (511, 'Tibet St', 'N-S', 225.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (512, 'Torrey St', 'N-S', 171.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (513, 'Tower Rd', 'N-S', 185.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (514, 'Tremont Pl', 'SW-NE', 4.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (515, 'Trenton St', 'N-S', 79.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (516, 'Troy St', 'N-S', 128.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (517, 'Truckee St', 'N-S', 178.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (518, 'Tucson St', 'N-S', 129.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (519, 'Tufts Av', 'E-W', 46.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (520, 'Uinta St', 'N-S', 82.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (521, 'Ukraine St', 'N-S', 226.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (522, 'Ulster St', 'N-S', 81.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (523, 'Ulysses St', 'N-S', 172.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (524, 'Umatilla St', 'N-S', 21.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (525, 'Union Av', 'E-W', 47.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (526, 'Union St', 'N-S', 120.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (527, 'University Bl', 'N-S', 23.5, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (528, 'Upham St', 'N-S', 73.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (529, 'Uravan St', 'N-S', 179.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (530, 'Urban St', 'N-S', 121.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (531, 'Ursula St', 'N-S', 130.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (532, 'Utah Pl', 'E-W', 18.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (533, 'Utah St', 'N-S', 173.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (534, 'Utica St', 'N-S', 45.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (535, 'Uvalda St', 'N-S', 131.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (536, 'Valdai St', 'N-S', 227.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (537, 'Valentia St', 'N-S', 83.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (538, 'Vallejo St', 'N-S', 22.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (539, 'Van Gordon St', 'N-S', 122.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (540, 'Vance St', 'N-S', 74.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (541, 'Vassar Av', 'E-W', 26.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (542, 'Vaughn St', 'N-S', 132.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (543, 'Ventura St', 'N-S', 180.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (544, 'Verbena St', 'N-S', 84.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (545, 'Versailles St', 'N-S', 228.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (546, 'Victor St', 'N-S', 133.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (547, 'Villanova Pl', 'E-W', 26.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (548, 'Vine St', 'N-S', 21.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (549, 'Violet St', 'N-S', 174.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (550, 'Virgil St', 'N-S', 175.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (551, 'Virginia Av', 'E-W', 5.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (552, 'Vivian St', 'N-S', 123.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (553, 'Vrain St', 'N-S', 46.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (554, 'Wabash St', 'N-S', 85.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (555, 'Waco St', 'N-S', 181.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (556, 'Wadsworth Bl', 'N-S', 76.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (557, 'Walden St', 'N-S', 182.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (558, 'Walnut St', 'SW-NE', 14.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (559, 'Walsh Pl', 'E-W', 7.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (560, 'Ward Rd', 'N-S', 124.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (561, 'Warren Av', 'E-W', 22.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (562, 'Washington St', 'N-S', 7.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (563, 'Water St', 'SW-NE', 23.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (564, 'Wazee St', 'SW-NE', 16.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (565, 'Weaver Av', 'E-W', 64.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (566, 'Webster St', 'N-S', 75.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (567, 'Welch St', 'N-S', 124.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (568, 'Welton St', 'SW-NE', 6.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (569, 'Wenatchee St', 'N-S', 229.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (570, 'Wesley Av', 'E-W', 24.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (571, 'West St', 'N-S', 177.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (572, 'Wewatta St', 'SW-NE', 18.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (573, 'Wheeling St', 'N-S', 134.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (574, 'Wier St', 'N-S', 176.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (575, 'Williams St', 'N-S', 18.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (576, 'Willow St', 'N-S', 86.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (577, 'Winnipeg St', 'N-S', 230.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (578, 'Winona Ct', 'N-S', 47.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (579, 'Wolff St', 'N-S', 48.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (580, 'Worchester St', 'N-S', 135.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (581, 'Wright St', 'N-S', 125.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (582, 'Wyandot St', 'N-S', 23.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (583, 'Wynkoop St', 'SW-NE', 17.0, 'NW of Broadway, Downtown');
INSERT INTO `mfg_streets` VALUES (584, 'Wyoming Pl', 'E-W', 13.5, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (585, 'Xanadu St', 'N-S', 136.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (586, 'Xanthia St', 'N-S', 87.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (587, 'Xapary St', 'N-S', 137.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (588, 'Xavier St', 'N-S', 49.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (589, 'Xebec St', 'N-S', 178.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (590, 'Xenia St', 'N-S', 88.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (591, 'Xenon St', 'N-S', 126.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (592, 'Xenophon St', 'N-S', 127.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (593, 'Xylon St', 'N-S', 179.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (594, 'Yakima St', 'N-S', 231.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (595, 'Yale Av', 'E-W', 27.0, 'S of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (596, 'Yampa St', 'N-S', 183.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (597, 'Yank St', 'N-S', 129.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (598, 'Yankee St', 'N-S', 180.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (599, 'Yarrow St', 'N-S', 78.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (600, 'Yates St', 'N-S', 50.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (601, 'York St', 'N-S', 23.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (602, 'Yosemite St', 'N-S', 89.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (603, 'Youngfield St', 'N-S', 128.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (604, 'Yucca St', 'N-S', 181.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (605, 'Yukon St', 'N-S', 77.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (606, 'Zang St', 'N-S', 130.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (607, 'Zante St', 'N-S', 232.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (608, 'Zeno St', 'N-S', 184.0, 'E of Broadway');
INSERT INTO `mfg_streets` VALUES (609, 'Zenobia St', 'N-S', 51.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (610, 'Zephyr St', 'N-S', 79.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (611, 'Zeta St', 'N-S', 182.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (612, 'Zinnia St', 'N-S', 131.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (613, 'Zircon St', 'N-S', 183.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (614, 'Zuni St', 'N-S', 24.0, 'W of Broadway');
INSERT INTO `mfg_streets` VALUES (615, '1st Av', 'E-W', 1.0, 'N of Ellsworth Av');
INSERT INTO `mfg_streets` VALUES (616, 'a', '', 0.0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_suppliers`
-- 

CREATE TABLE `mfg_suppliers` (
  `SupplierID` int(11) NOT NULL auto_increment,
  `CompanyName` varchar(40) NOT NULL default '',
  `ContactName` varchar(30) default NULL,
  `ContactTitle` varchar(30) default NULL,
  `Address` varchar(60) default NULL,
  `City` varchar(15) default NULL,
  `Region` varchar(15) default NULL,
  `PostalCode` varchar(10) NOT NULL default '',
  `Country` varchar(15) default NULL,
  `Phone` varchar(24) default NULL,
  `Fax` varchar(24) default NULL,
  `HomePage` longtext,
  PRIMARY KEY  (`SupplierID`),
  KEY `CompanyName` (`CompanyName`),
  KEY `PostalCode` (`PostalCode`)
) TYPE=MyISAM  AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `mfg_suppliers`
-- 

INSERT INTO `mfg_suppliers` VALUES (30, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai', 'Tokyo', '', '100', 'Japan', '(03) 3555-5011', '', '');
INSERT INTO `mfg_suppliers` VALUES (4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 SekimaiMusashino-shi', 'Tokyo', 'Tokyo', '100', 'India', '(03) 3555-5011', '', '');
INSERT INTO `mfg_suppliers` VALUES (5, 'Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', '', '');
INSERT INTO `mfg_suppliers` VALUES (6, 'Mayumi''sxx', 'Mayumi Ohno', 'Marketing Representative', '92 SetsukoChuo-ku', 'Osaka', '', '545', 'Japan', '(06) 431-7877', '', 'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#');
INSERT INTO `mfg_suppliers` VALUES (8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', '', 'M14 GSD', 'UK', '(161) 555-4448', '', '');
INSERT INTO `mfg_suppliers` VALUES (9, 'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', '', 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91', '');
INSERT INTO `mfg_suppliers` VALUES (10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'São Pauloasdasd', '', '5442', 'Brazil', ' 555 4640', '', '');
INSERT INTO `mfg_suppliers` VALUES (11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', '', '10785', 'Germany', '(010) 9984510', '', '');
INSERT INTO `mfg_suppliers` VALUES (13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', '', '27478', 'Germany', '(04721) 8713', '(04721) 8714', '');
INSERT INTO `mfg_suppliers` VALUES (14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', '', '48100', 'Pakistan', '(0544) 60323', '(0544) 60603', '#FORMAGGI.HTM#');
INSERT INTO `mfg_suppliers` VALUES (15, 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', '', '1320', 'Norway', '(0)2-953010', '', '');
INSERT INTO `mfg_suppliers` VALUES (16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue\r\nSuite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931', '', '');
INSERT INTO `mfg_suppliers` VALUES (17, 'Svensk Sjöföda AB', 'Michael Björn', 'Sales Representative', 'Brovallavägen 231', 'Stockholm', '', 'S-123 45', 'Sweden', '08-123 45 67', '', '');
INSERT INTO `mfg_suppliers` VALUES (18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', '', '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', '');
INSERT INTO `mfg_suppliers` VALUES (19, 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept.2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', '', '(617) 555-3267', '(617) 555-3389', 'http://www.test.com');
INSERT INTO `mfg_suppliers` VALUES (20, 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', '', '0512', 'Singapore', '555-8787', '', '');
INSERT INTO `mfg_suppliers` VALUES (21, 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild\r\nFiskebakken 10', 'Lyngby', '', '2800', 'Denmark', '43844108', '43844115', '');
INSERT INTO `mfg_suppliers` VALUES (22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop', 'Zaandam', '', '9999 ZZ', 'Liberia', '(12345) 1212', '(12345) 1210', '');
INSERT INTO `mfg_suppliers` VALUES (23, 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', '', '53120', 'Finland', '(953) 10956', '', '');
INSERT INTO `mfg_suppliers` VALUES (24, 'G''day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade\r\nHunter''s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#');
INSERT INTO `mfg_suppliers` VALUES (25, 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-9022', '', '');
INSERT INTO `mfg_suppliers` VALUES (26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', '', '84100', 'Italy', '(089) 6547665', '(089) 6547667', '');
INSERT INTO `mfg_suppliers` VALUES (27, 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', '', '71300', 'French Guiana', '85.57.00.07', '', '');
INSERT INTO `mfg_suppliers` VALUES (28, 'Gai pâturage', 'Eliane Noz', 'Sales Representative', 'Bat. B\r\n3, rue des Alpes', 'Annecy', '', '74000', 'France', '38.76.98.06', '38.76.98.58', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_to_do`
-- 

CREATE TABLE `mfg_to_do` (
  `ID` smallint(5) unsigned NOT NULL auto_increment,
  `Subject` varchar(30) NOT NULL default '',
  `CompanyID` mediumint(8) unsigned NOT NULL default '0',
  `LastNameID` mediumint(8) unsigned NOT NULL default '0',
  `Comments` text NOT NULL,
  `Status` enum('Open','Closed') NOT NULL default 'Open',
  `ROID` mediumint(8) unsigned NOT NULL default '0',
  `LastUpdatedByID` mediumint(8) unsigned NOT NULL default '0',
  `DateCreated` date NOT NULL default '0000-00-00',
  `PublicRecord` tinyint(3) unsigned NOT NULL default '0',
  `DateModified` timestamp NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `Subject` (`Subject`)
) TYPE=MyISAM  AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `mfg_to_do`
-- 

INSERT INTO `mfg_to_do` VALUES (2, 'change a record', 100, 0, 'the new stuf', 'Closed', 0, 0, '2006-11-16', 0, '2006-11-16 11:59:25');
INSERT INTO `mfg_to_do` VALUES (3, 'test', 0, 0, '', 'Open', 0, 0, '0000-00-00', 0, '2005-12-27 06:53:04');
INSERT INTO `mfg_to_do` VALUES (4, 'My Test', 123, 0, 'Hello World', 'Open', 0, 0, '2006-01-26', 0, '2006-01-26 21:46:45');
INSERT INTO `mfg_to_do` VALUES (5, 'cvbncvb', 54, 45, 'fdgdfgdf', 'Open', 0, 0, '0000-00-00', 0, '2006-04-16 09:36:08');

-- --------------------------------------------------------

-- 
-- Table structure for table `mfg_user_log`
-- 

CREATE TABLE `mfg_user_log` (
  `id` mediumint(6) NOT NULL auto_increment,
  `submit_token` varchar(32) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `host` varchar(75) NOT NULL default '',
  `user` varchar(30) NOT NULL default '',
  `agent` varchar(255) NOT NULL default '',
  `referer` varchar(255) NOT NULL default '',
  `method` varchar(10) NOT NULL default '',
  `request` varchar(100) NOT NULL default '',
  `data` text NOT NULL,
  `updated` timestamp NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `updated` (`updated`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `mfg_user_log`
-- 

