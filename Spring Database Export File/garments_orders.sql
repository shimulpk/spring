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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `grand_total` decimal(38,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `ship_date` date DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subtotal` decimal(38,2) DEFAULT NULL,
  `total_amount` decimal(38,2) DEFAULT NULL,
  `total_quantity` int DEFAULT NULL,
  `vat` decimal(38,2) DEFAULT NULL,
  `buyer_id` bigint NOT NULL,
  `style_id` bigint NOT NULL,
  `vat_percent` decimal(38,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm64p5iuhw3kaqel7x21pskgjr` (`buyer_id`),
  KEY `FKoirr195kd4qi3k9lbgbiiirw3` (`style_id`),
  CONSTRAINT `FKm64p5iuhw3kaqel7x21pskgjr` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`),
  CONSTRAINT `FKoirr195kd4qi3k9lbgbiiirw3` FOREIGN KEY (`style_id`) REFERENCES `bom_styles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,15907.50,'2026-06-20','OR-2026-001','HM-PO-7788','2026-09-16',', Stockholm','CONFIRMED',15150.00,15907.50,2300,757.50,1,1,NULL),(2,15823.50,'2026-06-22','OR-2026-002','HM-PO-7740','2026-09-22',', Alexanderstrate-40,Berlin','CONFIRMED',15070.00,15823.50,2300,753.50,4,3,NULL),(3,19320.00,'2026-06-20','OR-2026-004','NC-PO-8850','2026-09-09',', John Smith Street,Kingston Newyork','CONFIRMED',18400.00,19320.00,2800,920.00,5,4,NULL),(4,8442500.00,'2026-07-06','OR-2026-007','TO-PO-5050','2026-08-19','Haidian, Beijing','CONFIRMED',7675000.00,8442500.00,14500,767500.00,6,5,10.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-18 13:39:52
