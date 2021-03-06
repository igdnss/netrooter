/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 5.6.29 : Database - netrooter
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`netrooter` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `netrooter`;

/*Table structure for table `dev_live_resource` */

CREATE TABLE `dev_live_resource` (
  `resourceId` varchar(50) NOT NULL,
  `deviceId` varchar(50) NOT NULL,
  `path` varchar(300) DEFAULT NULL,
  `bitrate` int(11) DEFAULT NULL,
  `maxSlaveCnt` int(11) DEFAULT NULL,
  `currentSlaveCnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`resourceId`,`deviceId`),
  CONSTRAINT `dev_live_resource_ibfk_1` FOREIGN KEY (`resourceId`) REFERENCES `live_info` (`resourceId`),
  CONSTRAINT `dev_live_resource_ibfk_2` FOREIGN KEY (`deviceId`) REFERENCES `nr_device` (`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dev_live_resource` */

/*Table structure for table `dev_ntw_topo` */

CREATE TABLE `dev_ntw_topo` (
  `deviceId` varchar(50) NOT NULL,
  `topoGroupId` varchar(50) NOT NULL,
  `metricList` varchar(150) DEFAULT NULL,
  `publicIpAddr` int(11) DEFAULT NULL,
  PRIMARY KEY (`deviceId`,`topoGroupId`),
  CONSTRAINT `dev_ntw_topo_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `nr_device` (`deviceId`),
  CONSTRAINT `dev_ntw_topo_ibfk_2` FOREIGN KEY (`topoGroupId`) REFERENCES `topo_group` (`topoGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dev_ntw_topo` */

/*Table structure for table `live_info` */

CREATE TABLE `live_info` (
  `resourceId` varchar(50) NOT NULL,
  `provider` varchar(20) DEFAULT NULL,
  `filename` varchar(20) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `live_info` */

/*Table structure for table `nr_device` */

CREATE TABLE `nr_device` (
  `deviceId` varchar(50) NOT NULL,
  `manufacture` varchar(64) DEFAULT NULL,
  `manufactureSN` varchar(256) DEFAULT NULL,
  `online` tinyint(1) DEFAULT '0',
  `firstOnlineTime` timestamp NULL DEFAULT NULL,
  `latestOnlineTime` timestamp NULL DEFAULT NULL,
  `ipAddr` int(11) DEFAULT NULL,
  `uplinkBw` int(11) DEFAULT NULL,
  `downlinkBw` int(11) DEFAULT NULL,
  `beMaster` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `nr_device` */

/*Table structure for table `topo_group` */

CREATE TABLE `topo_group` (
  `topoGroupId` varchar(50) NOT NULL,
  `avgdelay` int(11) DEFAULT NULL,
  `ISP` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`topoGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `topo_group` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
