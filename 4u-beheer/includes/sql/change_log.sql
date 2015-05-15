-- 
-- Table structure for table `change_log`
-- 

CREATE TABLE `change_log` (
  `id` int auto_increment,
  `updated` timestamp(14) NULL,
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
  KEY `col` (`col`)
) TYPE=MyISAM;
