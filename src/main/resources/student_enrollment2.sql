
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_title` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `courses` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `dept_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `department` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `enrollment`;
CREATE TABLE `enrollment` (
  `line_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`line_no`,`s_id`,`term`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `enrollment` WRITE;

UNLOCK TABLES;


DROP TABLE IF EXISTS `instructor`;

CREATE TABLE `instructor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `instructor` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` int(11) NOT NULL,
  `line_no` int(11) NOT NULL,
  `c_no` int(11) DEFAULT NULL,
  `instrFname` varchar(255) DEFAULT NULL,
  `instrLname;` varchar(255) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`term`,`line_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `section` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `credit_hours` int(11) DEFAULT NULL,
  `gpa` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `student` WRITE;

UNLOCK TABLES;
