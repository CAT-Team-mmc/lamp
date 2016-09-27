/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.28-rc-community-log : Database - jiaoxuetest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaoxuetest` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaoxuetest`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `author` varchar(10) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `dateline` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`author`,`description`,`content`,`dateline`) values (1,'文章1','mmc','aaaaaa','文章1文章1文章1文章1文章1文章1文章1文章1','1474423756'),(2,'文章2','mmc','sssssssss','文章2文章2文章2文章2文章2文章2','1474429422');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_pwd` varchar(32) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL,
  `user_info` varchar(255) DEFAULT NULL,
  `user_tele` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`user_name`,`user_pwd`,`user_email`,`user_info`,`user_tele`) values (1,'mmc','e10adc3949ba59abbe56e057f20f883e','2022137639@qq.com','测试信息','12345678911');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
