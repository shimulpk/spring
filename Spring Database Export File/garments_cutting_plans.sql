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
-- Table structure for table `cutting_plans`
--

DROP TABLE IF EXISTS `cutting_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cutting_plans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `cutting_master` varchar(255) DEFAULT NULL,
  `cutting_plan_id` varchar(255) DEFAULT NULL,
  `cutting_table_number` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `fabric_type` varchar(255) DEFAULT NULL,
  `marker_efficiency` decimal(38,2) DEFAULT NULL,
  `marker_length` decimal(38,2) DEFAULT NULL,
  `marker_width` decimal(38,2) DEFAULT NULL,
  `number_of_plies` int DEFAULT NULL,
  `planned_pieces` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` enum('CANCELLED','COMPLETED','IN_PROGRESS','PENDING') NOT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `total_fabric_required` decimal(38,2) DEFAULT NULL,
  `buyer_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm1c3x2lahtl70a240v127y4wv` (`buyer_id`),
  KEY `FKhpbk6xddhq6edwahnmwsbbmtl` (`order_id`),
  CONSTRAINT `FKhpbk6xddhq6edwahnmwsbbmtl` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKm1c3x2lahtl70a240v127y4wv` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cutting_plans`
--

LOCK TABLES `cutting_plans` WRITE;
/*!40000 ALTER TABLE `cutting_plans` DISABLE KEYS */;
INSERT INTO `cutting_plans` VALUES (1,'Navy Blue','Rahim','CP-1782195733424','CT-01','2026-06-28','Cotton-Polyester Blend',85.50,120.50,60.00,80,2800,'2026-06-25','COMPLETED','NC205',5627.00,5,3),(2,'Blue','Rahim','CP-1783763215146','1,2,3','2026-07-16','Cooton',90.00,85.00,90.00,20,14500,'2026-07-11','COMPLETED','TO-207',27955.00,6,4),(3,'Blue','Rahim','CP-1783792279625','1,2,3','2026-07-12','Cooton',80.00,85.00,90.00,20,2300,'2026-07-11','COMPLETED','VD204',4290.00,4,2),(4,'Blue','Rahim','CP-1784833219777','1,2,3','2026-07-26','Cooton',90.00,80.00,85.00,20,2300,'2026-07-24','PENDING','NK201',4312.00,1,1);
/*!40000 ALTER TABLE `cutting_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-28 10:37:09
