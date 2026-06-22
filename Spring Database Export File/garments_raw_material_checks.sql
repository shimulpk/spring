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
-- Table structure for table `raw_material_checks`
--

DROP TABLE IF EXISTS `raw_material_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_material_checks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `total_fabric_required` decimal(38,2) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `style_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5mj2byjw32vj5hgefr6qohy8d` (`order_id`),
  KEY `FKebsdru4kwo36qpo9coquu5yg3` (`style_id`),
  CONSTRAINT `FK5mj2byjw32vj5hgefr6qohy8d` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKebsdru4kwo36qpo9coquu5yg3` FOREIGN KEY (`style_id`) REFERENCES `bom_styles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material_checks`
--

LOCK TABLES `raw_material_checks` WRITE;
/*!40000 ALTER TABLE `raw_material_checks` DISABLE KEYS */;
INSERT INTO `raw_material_checks` VALUES (4,'2026-06-18 21:13:44.716477','OR-2026-001','HM-PO-7788',4312.00,1,1),(5,'2026-06-18 21:15:34.217429','OR-2026-002','HM-PO-7740',4290.00,2,3),(6,'2026-06-18 21:15:45.507023','OR-2026-004','NC-PO-8850',5627.00,3,4);
/*!40000 ALTER TABLE `raw_material_checks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-22 13:19:15
