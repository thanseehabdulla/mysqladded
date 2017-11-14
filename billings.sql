-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: my_billings
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.10.1

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billno` varchar(40) DEFAULT NULL,
  `userid` bigint(20) NOT NULL,
  `partyname` varchar(40) DEFAULT NULL,
  `sitename` varchar(40) DEFAULT NULL,
  `gstn` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `invoicedate` varchar(40) DEFAULT NULL,
  `sgst` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cgst` decimal(10,2) NOT NULL DEFAULT '0.00',
  `totalwithtax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `roundoff` decimal(10,2) DEFAULT NULL,
  `vehicleno` varchar(40) DEFAULT NULL,
  `billtype` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'BILLB2B001',3,'sahid','','isbn32','tanur','14/11/2017',103500.00,103500.00,1357000.00,'2017-11-14 05:36:02','2017-11-14 05:36:02',0.00,'','0'),(2,'BILLB2B002',3,'raj','','','kinfra','14/11/2017',18000.00,18000.00,236000.00,'2017-11-14 05:36:32','2017-11-14 00:06:32',0.00,'','0');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billdata`
--

DROP TABLE IF EXISTS `billdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hsncode` varchar(40) DEFAULT NULL,
  `item` varchar(40) DEFAULT NULL,
  `quantity` varchar(40) DEFAULT NULL,
  `rate` varchar(40) DEFAULT NULL,
  `total` varchar(40) DEFAULT NULL,
  `userid` varchar(40) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `billid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billdata`
--

LOCK TABLES `billdata` WRITE;
/*!40000 ALTER TABLE `billdata` DISABLE KEYS */;
INSERT INTO `billdata` VALUES (1,'hsb234','oil    ','230','5000','1150000.00','3','2017-11-14 05:36:02','2017-11-14 05:36:02',1),(2,'hsb234','oil    ','40','5000','200000.00','3','2017-11-14 05:36:32','2017-11-14 05:36:17',2);
/*!40000 ALTER TABLE `billdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customername` varchar(250) NOT NULL,
  `customeraddress` varchar(500) NOT NULL,
  `customergstn` varchar(40) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2,'rajoob','kinfra','tax','2017-10-30 22:55:01','2017-10-30 22:55:01','3'),(3,'rajoob','ramanattukara','tax','2017-10-31 05:52:24','2017-10-31 05:52:24','1'),(4,'shahid','newyork','vat','2017-10-31 05:53:53','2017-10-31 05:53:53','1'),(5,'thanseeh','sdfghjkl','sdfghjkl','2017-11-08 04:50:09','2017-11-08 04:50:09','1'),(6,'asd','asd','','2017-11-08 04:53:43','2017-11-08 04:53:43','1'),(7,'sahid','tanur','isbn32','2017-11-13 05:25:19','2017-11-13 05:25:19','3'),(9,'raj','kinfra','','2017-11-13 05:38:48','2017-11-13 05:38:48','3'),(10,'testtrajoob','adjoljsod','tax','2017-11-13 07:14:00','2017-11-13 07:14:00','9');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemhsno` varchar(40) DEFAULT NULL,
  `itemname` varchar(250) NOT NULL,
  `itemrate` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (9,'hs001','instang',765.00,'2017-10-31 05:54:22','2017-10-31 05:54:22',1),(10,'hsnb002','gas',750.00,'2017-11-13 11:03:04','2017-11-13 05:31:08',3),(11,'hsb234','oil',5000.00,'2017-11-13 05:33:15','2017-11-13 05:33:15',3),(12,'fake','fake',12.26,'2017-11-13 11:04:37','2017-11-13 05:33:38',3),(13,'hshs2882','cemenet',456.00,'2017-11-13 07:14:10','2017-11-13 07:14:10',9);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(200) NOT NULL,
  `usertype` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'Thanseeh123','thanseehabdulla@gmail.com','9847444106','2017-11-13 10:29:31','2017-11-13 03:12:56','$2a$11$FKYJ6T3RVGuuuFnND9MzwO0BFYe0hukPiJhJ58T/O9sAl/x23NCDW','1'),(9,'test','test@gmail.com','345678','2017-11-13 10:03:20','2017-11-13 10:03:20','$2a$11$jqcFkRIiybi3gEakYyP.j.eDFdSuaIci1j4imRscU/iHPYPmhdAA2','1'),(10,'overlay','overlay@gmail.com','34567890','2017-11-13 10:09:08','2017-11-13 10:09:08','$2a$11$oxCz.VLiEyCg6uLnkT9.H.DblPcPq/oWsV1M7X0gfhGYeNISFi4T6','1'),(11,'delay','delay@gmail.com','23457890','2017-11-13 10:11:04','2017-11-13 10:11:04','$2a$11$gHyK3ICPjIOjyf7gL4r7GOBYsgWKyvdhOpF4HddfhWJuDolwQVvF6','1'),(12,'HIDE','HIDE@GMAIL.COM','234567891','2017-11-13 10:11:42','2017-11-13 10:11:42','$2a$11$/NXyF167PqxaM6gTPpQ3GuGFxqO/k5/3X2jrBpzv511.jcQorYnCe','1'),(13,'checking out','check@gmailcom','234567','2017-11-13 10:13:45','2017-11-13 10:13:45','$2a$11$eQEJvvndOsRSmzDzjDn1qezOr8osPtEKDeDgwzBHzl9IuDE71BcAq','1'),(14,'maincontainer','main@gmail.com','12345678','2017-11-13 10:15:20','2017-11-13 10:15:20','$2a$11$QqkKCPcEKSDt.O9aEzxRyONMU8qF4bq4pRs4P/ntUt1Mul2XY1Ptq','1'),(15,'maincontainer','main@gmail.com','2345678','2017-11-13 10:16:40','2017-11-13 10:16:40','$2a$11$mE1iDdlCoAbvgfkZ6/aOt.ENKQOz49HIUyd/315MoN4.vzB7OAoGu','1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-14 11:28:46
