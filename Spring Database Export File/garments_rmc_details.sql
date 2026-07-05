-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: garments
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `rmc_details`
--

DROP TABLE IF EXISTS `rmc_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rmc_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `base_fabric` decimal(38,2) DEFAULT NULL,
  `calculated_fabric` decimal(38,2) DEFAULT NULL,
  `has_uom` bit(1) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `rmc_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4jv3uxwlrfygido9xdyeomafe` (`rmc_id`),
  CONSTRAINT `FK4jv3uxwlrfygido9xdyeomafe` FOREIGN KEY (`rmc_id`) REFERENCES `raw_material_checks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rmc_details`
--

LOCK TABLES `rmc_details` WRITE;
/*!40000 ALTER TABLE `rmc_details` DISABLE KEYS */;
INSERT INTO `rmc_details` VALUES (13,1.79,895.00,_binary '','Short Sleeve Shirt',500,'S','Short Sleeve Shirt',4),(14,1.84,1472.00,_binary '','Short Sleeve Shirt',800,'M','Short Sleeve Shirt',4),(15,1.89,945.00,_binary '','Short Sleeve Shirt',500,'L','Short Sleeve Shirt',4),(16,2.00,1000.00,_binary '','Short Sleeve Shirt',500,'XL','Short Sleeve Shirt',4),(17,1.79,895.00,_binary '','Short Sleeve Shirt',500,'S','Short Sleeve Shirt',5),(18,1.84,1472.00,_binary '','Short Sleeve Shirt',800,'M','Short Sleeve Shirt',5),(19,1.89,1323.00,_binary '','Short Sleeve Shirt',700,'L','Short Sleeve Shirt',5),(20,2.00,600.00,_binary '','Short Sleeve Shirt',300,'XL','Short Sleeve Shirt',5),(21,1.94,1552.00,_binary '','Full Sleeve Shirt',800,'S','Full Sleeve Shirt',6),(22,2.00,2000.00,_binary '','Full Sleeve Shirt',1000,'M','Full Sleeve Shirt',6),(23,2.05,1025.00,_binary '','Full Sleeve Shirt',500,'L','Full Sleeve Shirt',6),(24,2.10,1050.00,_binary '','Full Sleeve Shirt',500,'XL','Full Sleeve Shirt',6);
/*!40000 ALTER TABLE `rmc_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-05 12:47:59
