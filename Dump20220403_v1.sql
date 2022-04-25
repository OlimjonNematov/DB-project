-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: data_warehouse
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `daily_product_sales`
--

DROP TABLE IF EXISTS `daily_product_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_product_sales` (
  `date_key` int NOT NULL,
  `product_id` int NOT NULL,
  `total_cost` float NOT NULL,
  `total_sales` float NOT NULL,
  KEY `date_key` (`date_key`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `daily_product_sales_ibfk_1` FOREIGN KEY (`date_key`) REFERENCES `date` (`date_id`),
  CONSTRAINT `daily_product_sales_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_product_sales`
--

LOCK TABLES `daily_product_sales` WRITE;
/*!40000 ALTER TABLE `daily_product_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_product_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_store_sales`
--

DROP TABLE IF EXISTS `daily_store_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_store_sales` (
  `date_key` int NOT NULL,
  `store_id` int NOT NULL,
  `total_cost` float NOT NULL,
  `total_sales` float NOT NULL,
  KEY `date_key` (`date_key`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `daily_store_sales_ibfk_1` FOREIGN KEY (`date_key`) REFERENCES `date` (`date_id`),
  CONSTRAINT `daily_store_sales_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_store_sales`
--

LOCK TABLES `daily_store_sales` WRITE;
/*!40000 ALTER TABLE `daily_store_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_store_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date`
--

DROP TABLE IF EXISTS `date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date` (
  `date_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  PRIMARY KEY (`date_id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date`
--

LOCK TABLES `date` WRITE;
/*!40000 ALTER TABLE `date` DISABLE KEYS */;
INSERT INTO `date` VALUES (100,'2022-01-01'),(102,'2022-01-02'),(103,'2022-01-03'),(104,'2022-01-04'),(105,'2022-01-05'),(106,'2022-01-06'),(107,'2022-01-07'),(108,'2022-01-08'),(109,'2022-01-09'),(110,'2022-01-10'),(111,'2022-01-11'),(112,'2022-01-12'),(113,'2022-01-13'),(114,'2022-01-14'),(115,'2022-01-15'),(116,'2022-01-16'),(117,'2022-01-17'),(118,'2022-01-18'),(119,'2022-01-19'),(120,'2022-01-20'),(121,'2022-01-21'),(122,'2022-01-22'),(123,'2022-01-23'),(124,'2022-01-24'),(125,'2022-01-25'),(126,'2022-01-26'),(127,'2022-01-27'),(128,'2022-01-28'),(129,'2022-01-29'),(130,'2022-01-30'),(131,'2022-01-31'),(132,'2022-02-01'),(133,'2022-02-02'),(134,'2022-02-03'),(135,'2022-02-04'),(136,'2022-02-05'),(137,'2022-02-06'),(138,'2022-02-07'),(139,'2022-02-08'),(140,'2022-02-09'),(141,'2022-02-10'),(142,'2022-02-11'),(143,'2022-02-12'),(144,'2022-02-13'),(145,'2022-02-14'),(146,'2022-02-15'),(147,'2022-02-16'),(148,'2022-02-17'),(149,'2022-02-18'),(150,'2022-02-19'),(151,'2022-02-20'),(152,'2022-02-21'),(153,'2022-02-22'),(154,'2022-02-23'),(155,'2022-02-24'),(156,'2022-02-25'),(157,'2022-02-26'),(158,'2022-02-27'),(159,'2022-02-28'),(160,'2022-03-01'),(161,'2022-03-02'),(162,'2022-03-03'),(163,'2022-03-04'),(164,'2022-03-05'),(165,'2022-03-06'),(166,'2022-03-07'),(167,'2022-03-08'),(168,'2022-03-09'),(169,'2022-03-10'),(170,'2022-03-11'),(171,'2022-03-12'),(172,'2022-03-13'),(173,'2022-03-14'),(174,'2022-03-15'),(175,'2022-03-16'),(176,'2022-03-17'),(177,'2022-03-18'),(178,'2022-03-19'),(179,'2022-03-20'),(180,'2022-03-21'),(181,'2022-03-22'),(182,'2022-03-23'),(183,'2022-03-24'),(184,'2022-03-25'),(185,'2022-03-26'),(186,'2022-03-27'),(187,'2022-03-28'),(188,'2022-03-29'),(189,'2022-03-30'),(190,'2022-03-31'),(191,'2022-04-01'),(192,'2022-04-02'),(193,'2022-04-03'),(194,'2022-04-04'),(195,'2022-04-05'),(196,'2022-04-06'),(197,'2022-04-07'),(198,'2022-04-08'),(199,'2022-04-09'),(200,'2022-04-10'),(201,'2022-04-11'),(202,'2022-04-12'),(203,'2022-04-13'),(204,'2022-04-14'),(205,'2022-04-15'),(206,'2022-04-16'),(207,'2022-04-17'),(208,'2022-04-18'),(209,'2022-04-19'),(210,'2022-04-20'),(211,'2022-04-21'),(212,'2022-04-22'),(213,'2022-04-23'),(214,'2022-04-24'),(215,'2022-04-25'),(216,'2022-04-26'),(217,'2022-04-27'),(218,'2022-04-28'),(219,'2022-04-29'),(220,'2022-04-30'),(221,'2022-05-01'),(222,'2022-05-02'),(223,'2022-05-03'),(224,'2022-05-04'),(225,'2022-05-05'),(226,'2022-05-06'),(227,'2022-05-07'),(228,'2022-05-08'),(229,'2022-05-09'),(230,'2022-05-10'),(231,'2022-05-11'),(232,'2022-05-12'),(233,'2022-05-13'),(234,'2022-05-14'),(235,'2022-05-15'),(236,'2022-05-16'),(237,'2022-05-17'),(238,'2022-05-18'),(239,'2022-05-19'),(240,'2022-05-20'),(241,'2022-05-21'),(242,'2022-05-22'),(243,'2022-05-23'),(244,'2022-05-24'),(245,'2022-05-25'),(246,'2022-05-26'),(247,'2022-05-27'),(248,'2022-05-28'),(249,'2022-05-29'),(250,'2022-05-30'),(251,'2022-05-31'),(252,'2022-06-01'),(253,'2022-06-02'),(254,'2022-06-03'),(255,'2022-06-04'),(256,'2022-06-05'),(257,'2022-06-06'),(258,'2022-06-07'),(259,'2022-06-08'),(260,'2022-06-09'),(261,'2022-06-10'),(262,'2022-06-11'),(263,'2022-06-12'),(264,'2022-06-13'),(265,'2022-06-14'),(266,'2022-06-15'),(267,'2022-06-16'),(268,'2022-06-17'),(269,'2022-06-18'),(270,'2022-06-19'),(271,'2022-06-20'),(272,'2022-06-21'),(273,'2022-06-22'),(274,'2022-06-23'),(275,'2022-06-24'),(276,'2022-06-25'),(277,'2022-06-26'),(278,'2022-06-27'),(279,'2022-06-28'),(280,'2022-06-29'),(281,'2022-06-30'),(282,'2022-07-01'),(283,'2022-07-02'),(284,'2022-07-03'),(285,'2022-07-04'),(286,'2022-07-05'),(287,'2022-07-06'),(288,'2022-07-07'),(289,'2022-07-08'),(290,'2022-07-09'),(291,'2022-07-10'),(292,'2022-07-11'),(293,'2022-07-12'),(294,'2022-07-13'),(295,'2022-07-14'),(296,'2022-07-15'),(297,'2022-07-16'),(298,'2022-07-17'),(299,'2022-07-18'),(300,'2022-07-19'),(301,'2022-07-20'),(302,'2022-07-21'),(303,'2022-07-22'),(304,'2022-07-23'),(305,'2022-07-24'),(306,'2022-07-25'),(307,'2022-07-26'),(308,'2022-07-27'),(309,'2022-07-28'),(310,'2022-07-29'),(311,'2022-07-30'),(312,'2022-07-31'),(313,'2022-08-01'),(314,'2022-08-02'),(315,'2022-08-03'),(316,'2022-08-04'),(317,'2022-08-05'),(318,'2022-08-06'),(319,'2022-08-07'),(320,'2022-08-08'),(321,'2022-08-09'),(322,'2022-08-10'),(323,'2022-08-11'),(324,'2022-08-12'),(325,'2022-08-13'),(326,'2022-08-14');
/*!40000 ALTER TABLE `date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `street` varchar(20) NOT NULL,
  `zipcode` int NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `assigned_store_id` int NOT NULL,
  `salary` float NOT NULL,
  `level` int NOT NULL,
  `Record_status` tinyint(1) NOT NULL,
  `System_creation_date` date NOT NULL,
  `System_update_date` date NOT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (3006,'James','Smith','Ridgeview dr.',75002,'Allen','TX','2021-01-01','9999-01-01',1,55000,2,0,'2022-04-02','0000-00-00');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `name` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `purchase_price` float NOT NULL,
  `sales_price` float NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (200,1,'2021-03-05','2022-04-25','Milk','Dairy',2,3.5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stg_transactions`
--

DROP TABLE IF EXISTS `stg_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg_transactions` (
  `store_id` int DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `date_key` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stg_transactions`
--

LOCK TABLES `stg_transactions` WRITE;
/*!40000 ALTER TABLE `stg_transactions` DISABLE KEYS */;
INSERT INTO `stg_transactions` VALUES (1,'2022-01-02',200,5,18,NULL,NULL),(1,'2022-01-02',214,17,5,NULL,NULL),(1,'2022-01-02',206,20,9,NULL,NULL),(1,'2022-01-02',203,10,18,NULL,NULL),(1,'2022-01-28',213,19,16,NULL,NULL),(1,'2022-03-10',218,15,12,NULL,NULL),(1,'2022-02-21',220,2,8,NULL,NULL),(1,'2022-03-27',215,14,7,NULL,NULL),(1,'2022-01-13',217,14,1,NULL,NULL),(1,'2022-01-09',211,1,18,NULL,NULL),(1,'2022-01-02',202,16,13,NULL,NULL),(1,'2022-01-20',211,4,19,NULL,NULL),(1,'2022-02-23',206,3,11,NULL,NULL),(2,'2022-02-01',309,3,18,NULL,NULL),(2,'2022-02-01',303,5,1,NULL,NULL),(2,'2022-02-01',313,4,19,NULL,NULL),(2,'2022-02-01',318,19,20,NULL,NULL),(2,'2022-02-01',312,19,9,NULL,NULL),(2,'2022-02-20',319,8,13,NULL,NULL),(2,'2022-03-16',316,17,11,NULL,NULL),(2,'2022-03-27',302,14,5,NULL,NULL),(2,'2022-03-03',312,3,13,NULL,NULL),(2,'2022-02-23',312,11,17,NULL,NULL),(2,'2022-03-26',315,2,2,NULL,NULL),(2,'2022-02-25',314,12,17,NULL,NULL),(3,'2022-03-08',412,2,6,NULL,NULL),(3,'2022-03-06',419,4,4,NULL,NULL),(3,'2022-03-13',413,16,19,NULL,NULL),(3,'2022-03-02',417,11,19,NULL,NULL),(3,'2022-01-06',407,1,9,NULL,NULL),(3,'2022-01-01',405,1,1,NULL,NULL),(3,'2022-02-16',404,14,16,NULL,NULL),(3,'2022-03-12',401,16,5,NULL,NULL),(3,'2022-01-31',405,18,9,NULL,NULL),(3,'2022-02-12',403,5,14,NULL,NULL),(3,'2022-03-05',401,1,19,NULL,NULL),(3,'2022-01-26',407,11,13,NULL,NULL),(4,'2022-03-05',507,12,6,NULL,NULL),(4,'2022-03-05',504,16,19,NULL,NULL),(4,'2022-03-05',506,1,10,NULL,NULL),(4,'2022-03-05',520,6,19,NULL,NULL),(4,'2022-03-05',500,5,12,NULL,NULL),(4,'2022-03-05',514,17,10,NULL,NULL),(4,'2022-03-05',513,8,18,NULL,NULL),(4,'2022-03-05',510,15,20,NULL,NULL),(4,'2022-03-05',513,4,19,NULL,NULL),(4,'2022-03-05',501,12,4,NULL,NULL),(4,'2022-03-05',504,13,15,NULL,NULL),(4,'2022-03-05',515,17,10,NULL,NULL);
/*!40000 ALTER TABLE `stg_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(20) DEFAULT NULL,
  `zipcode` int DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(4) DEFAULT NULL,
  `manager_assigned` int DEFAULT NULL,
  `store_size` int DEFAULT NULL,
  PRIMARY KEY (`store_id`),
  KEY `manager_assigned` (`manager_assigned`),
  CONSTRAINT `store_ibfk_2` FOREIGN KEY (`manager_assigned`) REFERENCES `manager` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'Sweetbriar dr.',75002,'Allen','TX',3006,20000);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `store_id` int NOT NULL,
  `date` date NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `total` float DEFAULT NULL,
  KEY `store_id` (`store_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'2022-01-02',200,2,0),(1,'2022-01-02',200,5,0);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'data_warehouse'
--
/*!50003 DROP PROCEDURE IF EXISTS `CalculateTransactionTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateTransactionTotal`( )
Begin
 update stg_transactions a join product p on  p.product_id=a.product_id 
 set  a.total= a.quantity*p.sales_price  
 where
 a.sales_date>p.start_date and
 a.sales_date<=p.end_date;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-03 13:06:22
