For demonstration purposes, sample MySQL schema is provided 
in formats compatible with MySQL 3.32 or MySQL 4 or MySQL 5.

Note that the table structure of tables in schema_mysql-5.sql
calls for "DEFAULT CHARSET=utf8". 

At a minimum, please install the "change_log" 
schema from the appropriate .SQL file.

CREATE TABLE change_log (
  id mediumint unsigned NOT NULL auto_increment,
  updated timestamp NOT NULL,
  `user` varchar(50) NOT NULL default '',
  host varchar(255) NOT NULL default '',
  operation varchar(50) NOT NULL default '',
  tab varchar(50) NOT NULL default '',
  rowkey varchar(255) NOT NULL default '',
  col varchar(255) NOT NULL default '',
  oldval text,
  newval text,
  PRIMARY KEY  (id),
  KEY tab (tab),
  KEY col (col),
  KEY updated (updated)
) TYPE=MyISAM;