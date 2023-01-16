-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: airportdb
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `flightschedule`
--

DROP TABLE IF EXISTS `flightschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flightschedule` (
  `flightno` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` smallint NOT NULL,
  `to` smallint NOT NULL,
  `departure` time NOT NULL,
  `arrival` time NOT NULL,
  `airline_id` smallint NOT NULL,
  `monday` tinyint(1) DEFAULT '0',
  `tuesday` tinyint(1) DEFAULT '0',
  `wednesday` tinyint(1) DEFAULT '0',
  `thursday` tinyint(1) DEFAULT '0',
  `friday` tinyint(1) DEFAULT '0',
  `saturday` tinyint(1) DEFAULT '0',
  `sunday` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`flightno`),
  KEY `from_idx` (`from`),
  KEY `to_idx` (`to`),
  KEY `airline_idx` (`airline_id`),
  CONSTRAINT `flightschedule_ibfk_1` FOREIGN KEY (`from`) REFERENCES `airport` (`airport_id`),
  CONSTRAINT `flightschedule_ibfk_2` FOREIGN KEY (`to`) REFERENCES `airport` (`airport_id`),
  CONSTRAINT `flightschedule_ibfk_3` FOREIGN KEY (`airline_id`) REFERENCES `airline` (`airline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightschedule`
--

LOCK TABLES `flightschedule` WRITE;
/*!40000 ALTER TABLE `flightschedule` DISABLE KEYS */;
INSERT INTO `flightschedule` VALUES ('AF1593',602,64,'00:02:00','16:48:00',1,1,1,1,0,1,1,1),('AR9808',103,1185,'01:53:00','14:22:00',5,0,0,1,1,1,1,0),('AU1513',1235,982,'00:37:00','18:49:00',6,1,1,0,1,1,0,0),('AZ4160',1223,15,'22:04:00','09:27:00',7,0,0,0,0,1,0,0),('BA4024',939,590,'15:08:00','06:06:00',8,1,0,1,0,0,0,1),('BO6178',302,989,'22:38:00','11:38:00',11,0,0,0,0,1,0,0),('BR6804',159,482,'10:26:00','23:57:00',12,0,1,1,1,1,0,0),('BR8594',1110,737,'21:04:00','05:18:00',12,1,0,0,0,0,1,0),('CH3914',664,1130,'05:34:00','06:35:00',16,0,1,1,1,0,0,1),('CO1472',13,1110,'13:19:00','16:16:00',17,0,0,1,1,0,0,0),('CO8648',644,882,'08:09:00','11:03:00',17,1,0,1,0,1,1,1),('CY7329',471,722,'17:06:00','08:23:00',20,0,1,1,1,0,1,0),('DE9186',205,791,'22:42:00','01:29:00',23,1,0,1,0,1,0,0),('DJ6563',789,495,'03:09:00','21:34:00',24,1,0,0,1,0,0,0),('EG1536',698,167,'22:31:00','23:28:00',27,0,1,0,0,0,1,0),('ER1777',1290,692,'22:30:00','05:04:00',30,1,1,1,0,1,1,0),('ER2713',793,374,'08:47:00','12:11:00',30,1,0,0,0,0,1,0),('ER4331',1062,747,'09:42:00','11:03:00',30,1,0,0,1,0,1,0),('ER8602',68,83,'04:07:00','07:56:00',30,1,0,0,0,1,0,0),('ET2624',806,1291,'11:12:00','13:13:00',32,1,0,0,1,0,0,0),('ET5471',278,604,'02:26:00','16:23:00',32,0,0,0,0,1,0,0),('GA4144',1156,896,'01:38:00','12:23:00',36,0,0,0,1,0,0,1),('GR5184',110,12,'16:15:00','21:22:00',40,0,0,0,1,0,1,0),('GU7975',866,415,'04:42:00','14:40:00',41,1,1,1,1,1,0,0),('IN4874',56,377,'22:31:00','10:05:00',46,0,0,0,1,1,0,1),('IR1736',404,164,'15:34:00','16:34:00',47,1,0,1,1,1,1,1),('IR2713',745,367,'12:38:00','10:23:00',47,1,0,0,1,0,0,0),('KA8678',472,632,'15:08:00','23:47:00',54,1,1,0,0,1,1,0),('LA7933',344,359,'11:02:00','20:44:00',60,0,1,1,0,0,1,1),('LE3891',38,659,'04:05:00','19:08:00',61,1,0,1,0,1,1,0),('PA4899',576,1175,'16:20:00','12:01:00',74,1,0,0,0,0,1,0),('PE1783',456,160,'08:11:00','12:50:00',75,0,1,0,0,1,0,1),('PH5229',310,755,'16:56:00','08:48:00',76,1,0,0,1,1,0,0),('PO7217',552,108,'21:12:00','09:02:00',77,1,0,1,1,1,1,0),('SE4471',1222,368,'20:08:00','23:05:00',85,0,0,0,0,1,1,1),('SP9834',1269,623,'12:34:00','01:04:00',89,1,1,1,0,0,1,0),('SR1110',492,95,'18:24:00','22:01:00',90,1,1,1,0,1,0,1),('SR8939',1172,163,'17:13:00','06:00:00',90,0,1,0,1,1,0,1),('SU7878',1026,612,'21:07:00','08:07:00',92,0,1,1,0,0,1,0),('SU8447',403,935,'19:17:00','11:46:00',92,0,1,1,1,0,1,1),('TH1005',107,1090,'01:05:00','07:31:00',96,0,1,1,0,1,0,0),('TH1023',1265,222,'00:05:00','07:07:00',96,0,0,0,0,1,0,0),('UG4201',478,1261,'18:02:00','07:51:00',100,0,0,0,1,1,1,1),('UN1333',180,911,'21:15:00','16:05:00',102,0,0,1,0,1,1,0),('VA1254',601,513,'05:07:00','08:13:00',105,0,1,1,1,0,1,0),('VA3255',935,550,'03:39:00','09:21:00',105,1,0,1,0,1,1,0),('VA3529',552,62,'10:36:00','20:55:00',105,0,0,1,0,1,1,1),('VE6266',858,25,'15:59:00','07:19:00',106,1,0,1,1,1,1,0),('YU5775',1005,420,'15:12:00','00:38:00',111,1,1,0,1,1,1,0),('YU6024',1143,953,'23:47:00','15:29:00',111,1,0,1,1,1,0,0);
/*!40000 ALTER TABLE `flightschedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 14:04:55
