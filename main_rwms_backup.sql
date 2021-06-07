-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: temp
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_login` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) DEFAULT NULL,
  `admin_password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES (1,'admin','admin'),(2,'mandar','mandar');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) DEFAULT NULL,
  `eaddress` varchar(50) DEFAULT NULL,
  `econtact` varchar(20) DEFAULT NULL,
  `esalary` int(11) DEFAULT NULL,
  `current_job_count` int(11) DEFAULT NULL,
  `epassword` varchar(20) DEFAULT NULL,
  `eemail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (2,'mandar','mahara','989898989',888888,1,'mandar',NULL),(5,'Vallabh','Modern Coloney, pune','8765456567',50000,1,'vallabh',NULL),(6,'mihir','maharashtra','345534',87878,1,'mihir','mihirnevpurkarmn@gmail.com'),(8,'abc','xsa asda','2323',3434,0,'abc','mandar@gmail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_employee` BEFORE UPDATE ON `employee` FOR EACH ROW BEGIN
   IF old.current_job_count < 0 THEN  
         SET new.current_job_count=0;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `registered_customer`
--

DROP TABLE IF EXISTS `registered_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registered_customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  `caddress` varchar(100) DEFAULT NULL,
  `ccontact` varchar(20) DEFAULT NULL,
  `streak` varchar(20) DEFAULT NULL,
  `deviceid` int(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `estimated_wait` int(11) DEFAULT NULL,
  `estimated_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `deviceid` (`deviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered_customer`
--

LOCK TABLES `registered_customer` WRITE;
/*!40000 ALTER TABLE `registered_customer` DISABLE KEYS */;
INSERT INTO `registered_customer` VALUES (42,'mandar','asdas asdasd 121','6767676','1',1042,'mandar','mandarbhosale02@gmail.com',70,1800),(45,'user1','asdsad','6767','0',1045,'user1',NULL,0,NULL),(46,'shubham','asdasd 322','234234','1',1046,'shubham121','shubhamjadhav5678@gmail.com',0,0),(56,'adarsh','pune','1212','1',1056,'adarsh','adarsh@a',0,0),(57,'vaibhav','pune','7767676','1',1057,'vaibhav','jay.thombre1997@gmail.com',0,0),(59,'mac','pune','76765656','1',1059,'mac','mandarbhosale02@gmail.com',0,0),(66,'abc','asdasd','1212121212','1',1066,'abc','mandarbhosale02@gmail.com',0,0),(70,'xxx','sss','8888888888','1',1070,'xxx','xxx@gamil.com',0,0),(71,'jay1','asd','1234543342','1',1071,'jay','jay.thombre1997@gmail.com',0,0);
/*!40000 ALTER TABLE `registered_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_register` BEFORE UPDATE ON `registered_customer` FOR EACH ROW BEGIN
   IF old.streak < 0 THEN  
        SET new.streak=0;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `repair_docs`
--

DROP TABLE IF EXISTS `repair_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `repair_docs` (
  `rid` int(11) NOT NULL,
  `rname` varchar(100) DEFAULT NULL,
  `restimate` varchar(20) DEFAULT NULL,
  `rcost` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_docs`
--

LOCK TABLES `repair_docs` WRITE;
/*!40000 ALTER TABLE `repair_docs` DISABLE KEYS */;
INSERT INTO `repair_docs` VALUES (121,'Liquid Damage','30Mins',300),(141,'Motherboard_fix','50mins',900),(201,'Battery Replacement','20mins',700),(202,'Charger Fix','20mins',200),(331,'Processor Replacement','30mins',900),(551,'Headphone fix','10mins',100);
/*!40000 ALTER TABLE `repair_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sales` (
  `cid` int(11) DEFAULT NULL,
  `date1` varchar(30) DEFAULT NULL,
  `total_sales` varchar(20) DEFAULT NULL,
  KEY `cid` (`cid`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `registered_customer` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (42,'2018-10-19','1000'),(56,'2018-10-19','900'),(59,'2018-10-19','900'),(46,'2018-10-19','1100'),(66,'2018-10-19','500'),(70,'2018-10-25','1600'),(71,'2018-10-25','1800');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_needed`
--

DROP TABLE IF EXISTS `services_needed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `services_needed` (
  `cid` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `empid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`,`deviceid`,`rid`),
  KEY `deviceid` (`deviceid`),
  KEY `rid` (`rid`),
  KEY `empid` (`empid`),
  CONSTRAINT `services_needed_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `registered_customer` (`cid`),
  CONSTRAINT `services_needed_ibfk_2` FOREIGN KEY (`deviceid`) REFERENCES `registered_customer` (`deviceid`),
  CONSTRAINT `services_needed_ibfk_3` FOREIGN KEY (`rid`) REFERENCES `repair_docs` (`rid`),
  CONSTRAINT `services_needed_ibfk_4` FOREIGN KEY (`empid`) REFERENCES `employee` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_needed`
--

LOCK TABLES `services_needed` WRITE;
/*!40000 ALTER TABLE `services_needed` DISABLE KEYS */;
INSERT INTO `services_needed` VALUES (42,1042,201,0,5),(42,1042,202,0,5),(42,1042,331,0,5);
/*!40000 ALTER TABLE `services_needed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `roll` int(5) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `mark1` int(3) DEFAULT NULL,
  `mark2` int(3) DEFAULT NULL,
  `mark3` int(3) DEFAULT NULL,
  `total` int(3) DEFAULT NULL,
  `average` int(3) DEFAULT NULL,
  `result` varchar(4) DEFAULT NULL,
  `class` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`roll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_on`
--

DROP TABLE IF EXISTS `working_on`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `working_on` (
  `cid` int(11) NOT NULL,
  `empid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`empid`),
  KEY `empid` (`empid`),
  CONSTRAINT `working_on_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `registered_customer` (`cid`),
  CONSTRAINT `working_on_ibfk_2` FOREIGN KEY (`empid`) REFERENCES `employee` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_on`
--

LOCK TABLES `working_on` WRITE;
/*!40000 ALTER TABLE `working_on` DISABLE KEYS */;
/*!40000 ALTER TABLE `working_on` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-25  6:03:50
