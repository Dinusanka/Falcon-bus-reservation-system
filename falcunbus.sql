-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: falconbus
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Amal','1234567890','amal@example.com','amal','amal123A*'),(2,'Kamal','9876543210','kamal@example.com','kamal','kAmal123@'),(3,'Ann','5555555555','ann@example.com','ann','An@n123'),(4,'Jane','1111111111','jane@example.com','jane','jA@ne123'),(5,'Mark','9998887777','mark@example.com','mark1','Mark123#');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `cid` int DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `busNumber` varchar(20) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `seats` varchar(50) DEFAULT NULL,
  `paymentStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `paymentStatus_index` (`paymentStatus`),
  KEY `cid` (`cid`),
  KEY `busNumber` (`busNumber`),
  KEY `origin` (`origin`,`destination`),
  KEY `date` (`date`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,'2023-10-15','08:00:00','BUS001','City A','City B','5-8','Paid'),(2,2,'2023-10-15','09:30:00','BUS002','City B','City C','3-9','Paid'),(3,3,'2023-10-15','11:00:00','BUS003','City C','City D','1-5','Paid'),(4,4,'2023-10-15','12:30:00','BUS004','City D','City E','4-3','Paid'),(5,5,'2023-10-15','14:00:00','BUS005','City E','City A','5-1','Paid'),(34,6,'2023-10-15','15:00:00','BUS006','City A','City B','5-7,5-8','Paid'),(40,6,'2023-10-15','15:00:00','BUS006','City A','City B','5-4,5-5','Not Paid'),(54,6,'2023-10-15','15:00:00','BUS006','City A','City B','5-8,5-7','Not Paid'),(57,9,'2023-10-15','15:00:00','BUS006','City A','City B','1-1,2-1','Not Paid'),(58,6,'2023-10-15','15:00:00','BUS006','City A','City B','1-10','Not Paid'),(59,6,'2023-10-15','14:30:00','BUS007','City A','City B','1-1,1-2','Paid'),(60,6,'2023-10-15','14:30:00','BUS007','City A','City B','5-9,5-10','Not Paid'),(61,6,'2023-10-15','15:00:00','BUS006','City A','City B','5-6','Not Paid'),(62,6,'2023-10-15','14:45:00','BUS009','City A','City B','5-9,5-10,5-8','Paid'),(63,6,'2023-10-15','15:00:00','BUS006','City A','City B','5-10,5-9','Not Paid'),(64,6,'2023-10-15','08:00:00','BUS001','City A','City B','3-4,4-4','Not Paid'),(65,6,'2023-10-15','14:30:00','BUS007','City A','City B','5-8,5-7','Not Paid'),(66,6,'2023-10-15','14:45:00','BUS009','City A','City B','5-2,5-4','Not Paid');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `BusID` int NOT NULL AUTO_INCREMENT,
  `busNumber` varchar(20) DEFAULT NULL,
  `Capacity` int DEFAULT NULL,
  `Manufacturer` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `YearOfManufacture` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`BusID`),
  UNIQUE KEY `busNumber` (`busNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,'BUS001',50,'ABC Motors','XYZ Model','2020'),(2,'BUS002',40,'DEF Motors','123 Model','2019'),(3,'BUS003',30,'GHI Motors','456 Model','2021'),(4,'BUS004',45,'JKL Motors','789 Model','2022'),(5,'BUS005',55,'MNO Motors','ABC Model','2020'),(6,'BUS006',23,'JKL Motors','456 Model','2021'),(7,'BUS007',45,'MNO Motors','ABC Model','2007'),(8,'BUS008',50,'JKL Motors','123 Model','2019');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `ctid` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`ctid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,'John Doe','john.doe@example.com','0785214563','This is a message from John Doe.'),(2,'Jane Smith','jane.smith@example.com','0774125874','This is a message from Jane Smith.'),(3,'Bob Johnson','bob.johnson@example.com','0752145698','This is a message from Bob Johnson.'),(4,'Alice Williams','alice.williams@example.com','0775258631','This is a message from Alice Williams.'),(5,'Charlie Brown','charlie.brown@example.com','0725896321','This is a message from Charlie Brown.'),(6,'Gayashan','A.g@gmai.com','0776258702','good service'),(7,'Amal','S.g@gmai.com','0776255702','Good ');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Doe','john.doe@example.com','0778521445','john_doe','password123'),(2,'Jane Smith','jane.smith@example.com','0778521456','jane_smith','securepass'),(3,'Bob Johnson','bob.johnson@example.com','0774521456','bob_johnson','pass123'),(4,'Alice Williams','alice.williams@example.com','0748521456','alice_w','password123'),(5,'Charlie Brown','charlie.brown@example.com','0788521456','charlie_b','p@ssw0rd'),(8,'Dinushanka','dinu@gmail.com','0726341456','dinu','Bero@2016'),(9,'Keshan','k@gmail.com','0728528456','keshan','Keshan@123'),(10,'Asanga','asan@gmail.com','0778561456','CID005','Aero@2016');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `did` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `busNumber` varchar(20) DEFAULT NULL,
  `licenNumber` varchar(20) DEFAULT NULL,
  `Nic` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `busNumber` (`busNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Lazy','lazy@example.com','1234567890','BUS001','DL12345','NIC123','lazy','pass123'),(2,'Asela','asela@example.com','9876543210','BUS0044','DL67890','NIC456','asela','securepass'),(3,'Dunil','dunil@example.com','5555555555','BUS003','DL13579','NIC789','dunil','pass123'),(4,'Imesh','imesh@example.com','1111111111','BUS004','DL24680','NIC246','imesh','password123'),(5,'Janith','janith@example.com','9998887777','BUS005','DL98765','NIC987','janith','janith@Ab1');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `sdid` int DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `description` text,
  `location` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `smid` int DEFAULT NULL,
  `reply` text,
  PRIMARY KEY (`sid`),
  KEY `sdid` (`sdid`),
  KEY `smid` (`smid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES (1,1,'Technical','Bus engine issue','City A','2023-10-15',1,'Issue resolved.'),(2,2,'Complaint','Late departure','City B','2023-10-15',2,'Investigating the cause.'),(3,3,'Lost Item','Passenger lost a bag','City C','2023-10-15',3,'Searching for the lost item.'),(4,4,'Accident','Minor collision','City D','2023-10-15',4,'No injuries reported.'),(5,5,'Feedback','Excellent service','City E','2023-10-15',5,'Thank you for your feedback.'),(6,6,'aaaa','aaaaaa','aaa','2023-11-30',0,''),(7,6,'sdcd','.k k','kj','2023-11-10',0,''),(8,6,'sdcd','ad','vvd','2023-10-31',0,''),(9,11,'sdcd','bujiqhs','gsqy','2023-10-24',0,''),(10,16,'sdcd','hi','dddddd','2023-10-26',0,''),(11,17,'maintenace','qhgsuwg','moratuuwa','2023-10-20',0,''),(12,5,'eeee','dddddd','dddd','2023-10-31',0,'');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Inusha','inusha@example.com','inusha','Pass#123'),(2,'Shameen','shameen@example.com','shameen','Secure@pass'),(3,'Navod','navod@example.com','navod','Pass$123'),(4,'Thisum','thisum@example.com','thisum','Password#123'),(5,'Dinushka','dinushka@example.com','dinushka','p@ssw0rD');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `cid` int DEFAULT NULL,
  `bid` int DEFAULT NULL,
  `cardholder` varchar(255) DEFAULT NULL,
  `cardNum` varchar(20) DEFAULT NULL,
  `expiredate` varchar(10) DEFAULT NULL,
  `cvv` varchar(5) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pstatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `cid` (`cid`),
  KEY `bid` (`bid`),
  KEY `pstatus` (`pstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,1,'John Doe','1234567890123456','12/25','123',40.00,'Paid'),(2,2,2,'Jane Smith','9876543210987654','06/24','456',100.00,'Paid'),(3,3,3,'Bob Johnson','1111222233334444','09/23','789',30.00,'Paid'),(4,4,4,'Alice Williams','5555666677778888','03/22','246',72.50,'Paid'),(5,5,5,'Charlie Brown','9999888877776666','11/21','987',110.00,'Paid');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rute`
--

DROP TABLE IF EXISTS `rute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rute` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `raid` int DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `raid` (`raid`),
  KEY `origin_destination_index` (`origin`,`destination`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rute`
--

LOCK TABLES `rute` WRITE;
/*!40000 ALTER TABLE `rute` DISABLE KEYS */;
INSERT INTO `rute` VALUES (1,1,'City A','City B',120.50),(2,2,'City B','City C',70.00),(3,3,'City C','City D',30.75),(4,4,'City D','City E',18.25),(5,5,'City E','City A',22.00),(6,6,'City F','City D',50.00),(7,7,'City G','City H',45.00),(8,8,'City H','City I',78.90),(9,9,'City I','City K',67.58),(10,10,'City J','City M',300.00),(11,11,'City K','City N',180.00),(12,12,'City L','City O',132.80),(13,13,'City M','City G',68.00),(14,14,'City N','City H',320.00),(15,15,'City O','City A',511.00),(17,8,'City E','City B',230.00);
/*!40000 ALTER TABLE `rute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_table` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `tmid` int DEFAULT NULL,
  `tbusNumber` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `date_time_index` (`date`,`time`),
  KEY `tmid` (`tmid`),
  KEY `tbusNumber` (`tbusNumber`),
  KEY `origin` (`origin`,`destination`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES (2,2,'BUS002','2023-10-16','09:30:00','City A','City B',70.00),(3,3,'BUS003','2023-10-16','11:00:00','City C','City D',30.75),(4,4,'BUS004','2023-10-15','12:30:00','City D','City B',18.25),(5,5,'BUS005','2023-10-15','14:00:00','City E','City A',22.00),(6,6,'BUS006','2023-10-15','15:00:00','City A','City B',50.00),(7,7,'BUS007','2023-10-15','14:30:00','City A','City B',45.00),(8,8,'BUS008','2023-10-15','15:30:00','City A','City B',78.90),(9,9,'BUS009','2023-10-15','14:45:00','City A','City B',67.58),(10,10,'BUS010','2023-10-15','16:00:00','City J','City M',300.00),(11,11,'BUS011','2023-10-15','16:30:00','City K','City N',180.00),(12,12,'BUS012','2023-10-15','16:45:00','City L','City O',132.80),(13,13,'BUS013','2023-10-15','17:00:00','City M','City G',68.00),(14,14,'BUS014','2023-10-15','17:15:00','City N','City H',320.00),(15,15,'BUS015','2023-10-15','17:30:00','City O','City A',511.00),(16,1,'f34r3','2023-10-27','08:00:00','City A','City H',230.00);
/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26 18:08:21
