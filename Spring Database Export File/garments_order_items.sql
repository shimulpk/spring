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
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `unit_price` decimal(38,2) DEFAULT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbioxgbv59vetrxe0ejfubep1w` (`order_id`),
  CONSTRAINT `FKbioxgbv59vetrxe0ejfubep1w` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,'',4000,'S','Short Sleeve Shirt',500.00,1),(2,'',5000,'M','Short Sleeve Shirt',520.00,1),(3,'',7000,'L','Short Sleeve Shirt',520.00,1),(4,'',4000,'XL','Short Sleeve Shirt',520.00,1),(5,'',4000,'S','Full Sleeve Shirt',460.00,2),(6,'',4000,'M','Full Sleeve Shirt',490.00,2),(7,'',4000,'L','Full Sleeve Shirt',500.00,2),(8,'',3000,'XL','Full Sleeve Shirt',520.00,2),(21,'',3000,'S','Short Sleeve Shirt',480.00,3),(22,'',5000,'M','Short Sleeve Shirt',500.00,3),(23,'',5000,'L','Short Sleeve Shirt',510.00,3),(24,'',4000,'XL','Short Sleeve Shirt',520.00,3),(25,'',1000,'S','Short Sleeve Shirt',470.00,4),(26,'',2000,'M','Short Sleeve Shirt',490.00,4),(27,'',3000,'L','Short Sleeve Shirt',495.00,4),(28,'',2000,'XL','Short Sleeve Shirt',500.00,4),(29,'',1500,'S','Full Sleeve Shirt',500.00,4),(30,'',2000,'M','Full Sleeve Shirt',510.00,4),(31,'',4000,'L','Full Sleeve Shirt',520.00,4),(32,'',2000,'XL','Full Sleeve Shirt',530.00,4),(33,'',1000,'S','Short Sleeve Shirt',480.00,5),(34,'',2000,'M','Short Sleeve Shirt',490.00,5),(35,'',3000,'L','Short Sleeve Shirt',500.00,5),(36,'',2000,'XL','Short Sleeve Shirt',510.00,5),(37,'',2000,'S','Full Sleeve Shirt',500.00,5),(38,'',3000,'M','Full Sleeve Shirt',510.00,5),(39,'',2000,'L','Full Sleeve Shirt',520.00,5),(40,'',3000,'XL','Full Sleeve Shirt',530.00,5),(41,'',2000,'S','Short Sleeve Shirt',450.00,6),(42,'',2000,'M','Short Sleeve Shirt',470.00,6),(43,'',3000,'L','Short Sleeve Shirt',480.00,6),(44,'',2000,'XL','Short Sleeve Shirt',500.00,6),(45,'',2000,'S','Full Sleeve Shirt',500.00,6),(46,'',3000,'M','Full Sleeve Shirt',510.00,6),(47,'',3500,'L','Full Sleeve Shirt',520.00,6),(48,'',2000,'XL','Full Sleeve Shirt',530.00,6),(49,'',5000,'S','Short Sleeve Shirt',470.00,7),(50,'',6000,'M','Short Sleeve Shirt',480.00,7),(51,'',5000,'L','Short Sleeve Shirt',500.00,7),(52,'',4000,'XL','Short Sleeve Shirt',510.00,7);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-29 11:38:21
