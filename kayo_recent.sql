/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - kayo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kayo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `kayo`;

/*Table structure for table `attack` */

DROP TABLE IF EXISTS `attack`;

CREATE TABLE `attack` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `attack` */

insert  into `attack`(`id`,`url`,`keyword`) values (1,'https://timesofindia.indiatimes.com/sports/cricket/ipl','java'),(2,'https://www.fifa.com/tournaments/mens/worldcup/qatar2022','tvk'),(3,'https://en.wikipedia.org/wiki/FIFA_World_Cup','vijay'),(4,'https://www.espncricinfo.com/','election 2026'),(5,'https://indianexpress.com/section/sports/','election');

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `site` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data` */

/*Table structure for table `hacker` */

DROP TABLE IF EXISTS `hacker`;

CREATE TABLE `hacker` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `ips` varchar(100) DEFAULT NULL,
  `urls` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `hacker` */

insert  into `hacker`(`id`,`url`,`keywords`,`ip`,`ips`,`urls`) values (1,NULL,'ipl 2022',NULL,'192.168.29.15','https://timesofindia.indiatimes.com/sports/cricket/ipl'),(2,NULL,'ipl 2022',NULL,'192.168.29.15','https://timesofindia.indiatimes.com/sports/cricket/ipl'),(3,NULL,'ipl 2022',NULL,'192.168.29.15','https://timesofindia.indiatimes.com/sports/cricket/ipl'),(4,NULL,'fifa',NULL,'192.168.29.15','https://www.fifa.com/tournaments/mens/worldcup/qatar2022'),(5,NULL,'gh',NULL,'192.168.29.15','https://en.wikipedia.org/wiki/FIFA_World_Cup'),(6,NULL,'cricket',NULL,'192.168.1.5','https://www.espncricinfo.com/'),(7,NULL,'cricket',NULL,'192.168.1.5','https://www.espncricinfo.com/'),(8,NULL,'cricket',NULL,'192.168.1.5','https://www.espncricinfo.com/'),(9,NULL,'fifa',NULL,'192.168.1.5','https://www.fifa.com/tournaments/mens/worldcup/qatar2022'),(10,NULL,'fifa',NULL,'192.168.1.5','https://www.fifa.com/tournaments/mens/worldcup/qatar2022'),(11,NULL,'fifa',NULL,'192.168.1.5','https://www.fifa.com/tournaments/mens/worldcup/qatar2022'),(12,NULL,'sports',NULL,'192.168.1.5','https://www.fifa.com/'),(13,NULL,'ipl 2022',NULL,'192.168.1.5','https://timesofindia.indiatimes.com/sports/cricket/ipl'),(14,NULL,'ipl 2022',NULL,'192.168.1.5','https://en.wikipedia.org/wiki/Indian_Premier_League'),(15,NULL,'cricket',NULL,'192.168.1.5','https://www.espncricinfo.com/'),(16,NULL,'cricket',NULL,'192.168.1.4','https://www.espncricinfo.com/'),(17,NULL,'junk',NULL,'192.168.1.10','https://indianexpress.com/section/sports/'),(18,NULL,'junk',NULL,'192.168.1.10','https://indianexpress.com/section/sports/'),(19,NULL,'junk',NULL,'192.168.1.10','https://indianexpress.com/section/sports/'),(20,NULL,'fifa',NULL,'192.168.1.7','https://www.fifa.com/tournaments/mens/worldcup/qatar2022');

/*Table structure for table `indexer` */

DROP TABLE IF EXISTS `indexer`;

CREATE TABLE `indexer` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `indexer` */

insert  into `indexer`(`id`,`url`,`keyword`,`status`) values (1,'https://en.wikipedia.org/wiki/Indian_Premier_League','java',NULL),(2,'https://www.fifa.com/','tvk',NULL),(3,'https://en.wikipedia.org/wiki/Indian_Premier_League','vijay',NULL),(4,'https://en.wikipedia.org/wiki/Indian_Premier_League','election 2026',NULL),(5,'https://indianexpress.com/section/sports/','election',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
