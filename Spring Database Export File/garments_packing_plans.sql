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
-- Table structure for table `packing_plans`
--

DROP TABLE IF EXISTS `packing_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_plans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `expected_shipment_date` date DEFAULT NULL,
  `hang_tag` bit(1) DEFAULT NULL,
  `input_qty` int DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `packing_method` varchar(255) DEFAULT NULL,
  `packing_plan_id` varchar(255) DEFAULT NULL,
  `packing_supervisor` varchar(255) DEFAULT NULL,
  `pcs_per_carton` int DEFAULT NULL,
  `poly_bag_type` varchar(255) DEFAULT NULL,
  `rejection_qty` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` enum('PENDING','READY_TO_SHIP') NOT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `total_order_qty` int DEFAULT NULL,
  `total_packed_qty` int DEFAULT NULL,
  `total_planned_cartons` int DEFAULT NULL,
  `finishing_plan_id` bigint NOT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsxu2acmf0xa9n0peb5yjp04j7` (`finishing_plan_id`),
  KEY `FKmwnsw3896q4ifnx56tb4sj2nr` (`order_id`),
  CONSTRAINT `FKmwnsw3896q4ifnx56tb4sj2nr` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKsxu2acmf0xa9n0peb5yjp04j7` FOREIGN KEY (`finishing_plan_id`) REFERENCES `finishing_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_plans`
--

LOCK TABLES `packing_plans` WRITE;
/*!40000 ALTER TABLE `packing_plans` DISABLE KEYS */;
INSERT INTO `packing_plans` VALUES (1,'H&M','Navy Blue','2026-07-28',_binary '',20000,'OR-301','Solid Packing','PKG-1785269869206','Rehana Akter',20,'Printed',150,'2026-07-25','READY_TO_SHIP','HM-201',20000,20000,1000,1,1),(2,'Zara (Inditex)','Blue','2026-08-01',_binary '',15000,'OR-302','Solid Packing','PKG-1785299561732','Emon Sarkar',20,'Printed',30,'2026-07-28','PENDING','ZA-202',15000,10000,750,2,2);
/*!40000 ALTER TABLE `packing_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-29 11:38:22
