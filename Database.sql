/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - bugs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bugs` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bugs`;

/*Table structure for table `bl` */

DROP TABLE IF EXISTS `bl`;

CREATE TABLE `bl` (
  `sid` varchar(50) DEFAULT NULL,
  `cate` varchar(50) DEFAULT NULL,
  `qn` varchar(100) DEFAULT NULL,
  `did` varchar(50) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bl` */

insert  into `bl`(`sid`,`cate`,`qn`,`did`,`ans`) values ('Leo','java','how to set javac path','Smith','set path=\"/directory\"');

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `sid` varchar(50) DEFAULT NULL,
  `cate` varchar(50) DEFAULT NULL,
  `qn` varchar(50) DEFAULT NULL,
  `did` varchar(50) DEFAULT NULL,
  `ans` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blog` */

insert  into `blog`(`sid`,`cate`,`qn`,`did`,`ans`) values ('Leo','java','how to set javac path','null','null');

/*Table structure for table `bug` */

DROP TABLE IF EXISTS `bug`;

CREATE TABLE `bug` (
  `n` varchar(50) DEFAULT NULL,
  `d` varchar(50) DEFAULT NULL,
  `t` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bug` */

/*Table structure for table `mlog` */

DROP TABLE IF EXISTS `mlog`;

CREATE TABLE `mlog` (
  `n` varchar(25) DEFAULT NULL,
  `p` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mlog` */

insert  into `mlog`(`n`,`p`) values ('vel','vel');

/*Table structure for table `rank` */

DROP TABLE IF EXISTS `rank`;

CREATE TABLE `rank` (
  `raised` int(100) DEFAULT NULL,
  `solved` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rank` */

insert  into `rank`(`raised`,`solved`) values (3,1);

/*Table structure for table `rep` */

DROP TABLE IF EXISTS `rep`;

CREATE TABLE `rep` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `de` varchar(50) DEFAULT NULL,
  `tri` varchar(50) DEFAULT NULL,
  `assign` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `rep` */

insert  into `rep`(`id`,`name`,`de`,`tri`,`assign`,`date`,`status`) values (7,'Javac','javac not found','mod','smith','04/01/2016','Resolved'),(8,'class file missing','class file not found','mod','smith','05/04/2016','unresolved'),(9,'404 Error Found','In JSP page','mod','lakshmi','06/18/2023','unresolved');

/*Table structure for table `sln` */

DROP TABLE IF EXISTS `sln`;

CREATE TABLE `sln` (
  `err` varchar(50) DEFAULT NULL,
  `de` varchar(50) DEFAULT NULL,
  `triage` varchar(50) DEFAULT NULL,
  `solution` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sln` */

insert  into `sln`(`err`,`de`,`triage`,`solution`) values ('Javac','javac not found','mod','set path for java'),('class file missing','class file not found','mod','waiting'),('404 Error Found','In JSP page','mod','waiting');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `n` varchar(50) DEFAULT NULL,
  `d` varchar(50) DEFAULT NULL,
  `to` varchar(50) DEFAULT NULL,
  `soln` varchar(50) DEFAULT NULL,
  `stat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` varchar(40) NOT NULL,
  `pass` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `age` varchar(40) DEFAULT NULL,
  `desi` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`pass`,`name`,`age`,`desi`,`dob`,`email`,`country`,`state`,`mobile`) values ('lakshmi','lakshmi','Lakshmi','23','Java','06/18/2023','admin','india','Tamil nadu','79678967'),('VLSA@16976','smith','Smith','24','Java Developer','27/03/1992','smith@gmail.com','india','Karnataka','0987654321'),('VLSA@21238','lakshmi','Lakshmi','23','Java','06/18/2023','admin','india','Tamil nadu','79678967'),('VLSA@31465','lakshmi','Lakshmi','23','Java','06/18/2023','admin','india','Tamil nadu','79678967'),('VLSA@43340','leo','Leo','24','Java Developer','27/02/1992','leo@gmail.com','india','TamilNadu','9876543210');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
