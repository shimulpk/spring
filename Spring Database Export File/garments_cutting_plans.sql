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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cutting_plans`
--

LOCK TABLES `cutting_plans` WRITE;
/*!40000 ALTER TABLE `cutting_plans` DISABLE KEYS */;
INSERT INTO `cutting_plans` VALUES (1,'Navy Blue','Rahim','CP-1785268107272','CT-01,CT-02,CT-03','2026-06-30','Cooton',90.00,85.00,90.00,10,20000,'2026-06-24','COMPLETED','HM-201',37590.00,1,1),(2,'Blue','Rahim','CP-1785298872753','CT-01,CT-02,CT-03','2026-07-21','Cooton',90.00,80.00,85.00,10,15000,'2026-07-18','COMPLETED','ZA-202',31980.00,2,2),(3,'Navy Blue','Rahim','CP-1785299940423','CT-01,CT-02,CT-03','2026-07-24','Cotton-Polyester Blend',90.00,80.00,85.00,20,17000,'2026-07-21','COMPLETED','PRI-203',32020.00,3,3),(4,'Navy Blue','Rahim','CP-1785300833410','CT-01,CT-02,CT-03','2026-07-27','Cooton',90.00,80.00,85.00,20,17500,'2026-07-25','COMPLETED','WAL-204',35710.00,4,4),(5,'Navy Blue','Rahim','CP-1785301644054','CT-01,CT-02,CT-03','2026-07-29','Cotton-Polyester Blend',90.00,80.00,85.00,20,18000,'2026-07-25','COMPLETED','UN-205',36670.00,5,5),(6,'Navy Blue','Rahim','CP-1785302241709','CT-01,CT-02,CT-03','2026-07-30','Cotton-Polyester Blend',90.00,80.00,85.00,20,19500,'2026-07-28','PENDING','CA-206',39515.00,8,6);
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

-- Dump completed on 2026-07-29 11:38:23
