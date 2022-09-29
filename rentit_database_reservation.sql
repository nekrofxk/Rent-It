-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rentit_database
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(225) DEFAULT NULL,
  `location` varchar(225) NOT NULL,
  `pickUpDate` date NOT NULL,
  `pickUpTime` time NOT NULL,
  `returnDate` date DEFAULT NULL,
  `returnTime` time DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `FK_vehicle_id` (`vehicle_id`),
  KEY `FK1_customer_id` (`customer_id`),
  CONSTRAINT `FK1_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `FK_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'selfdrive','colombo','2018-05-19','03:33:00','2018-05-22','23:00:00',NULL,NULL),(2,'selfdrive','colombo','2018-05-17','04:54:00','2018-05-25','00:44:00',NULL,NULL),(3,'selfdrive','colombo','2018-05-25','16:52:00','2018-05-30','00:22:00',NULL,NULL),(4,'selfdrive','colombo','2018-05-25','16:52:00','2018-05-30','00:22:00',NULL,NULL),(5,'selfdrive','colombo','2018-05-20','08:08:00','2018-05-21','12:00:00',NULL,NULL),(6,'selfdrive','colombo','2018-05-20','01:59:00','2018-05-24','01:00:00',NULL,NULL),(7,'selfdrive','colombo','2018-05-20','08:00:00','2018-05-20','00:00:00',NULL,NULL),(8,'selfdrive','colombo','2018-05-15','00:05:00','2018-05-16','14:32:00',NULL,NULL),(9,'selfdrive','colombo','2018-05-20','12:23:00','2018-05-26','23:23:00',NULL,NULL),(10,'selfdrive','colombo','2018-05-22','00:59:00','2018-05-24','12:00:00',2,NULL),(11,'selfdrive','colombo','2018-05-25','08:08:00','2018-05-27','00:00:00',2,5),(12,'selfdrive','colombo','2018-05-20','00:12:00','2018-05-31','00:12:00',1,5),(13,'selfdrive','colombo','2018-05-11','00:12:00','2018-05-23','00:12:00',1,5),(14,'selfdrive','colombo','2018-05-20','08:00:00','2018-05-25','00:00:00',3,1),(15,'selfdrive','colombo','2018-05-20','08:00:00','2018-05-25','00:00:00',3,1),(16,'tours','colombo','2018-05-20','08:00:00','2018-05-25','00:00:00',3,1),(17,'wedding','colombo','2018-05-20','08:00:00','2018-05-25','00:00:00',3,1),(18,'selfdrive','colombo','2018-05-20','15:43:00','2018-05-15','13:02:00',2,5);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-20 22:51:24
