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
-- Table structure for table `sewing_targets`
--

DROP TABLE IF EXISTS `sewing_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sewing_targets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `target_quantity` int DEFAULT NULL,
  `production_line_id` bigint NOT NULL,
  `sewing_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs1xpva6e5e3t1793j1r0ethsa` (`production_line_id`),
  KEY `FK4bv7opasu1a069b8arqrihsv2` (`sewing_plan_id`),
  CONSTRAINT `FK4bv7opasu1a069b8arqrihsv2` FOREIGN KEY (`sewing_plan_id`) REFERENCES `sewing_plans` (`id`),
  CONSTRAINT `FKs1xpva6e5e3t1793j1r0ethsa` FOREIGN KEY (`production_line_id`) REFERENCES `production_lines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sewing_targets`
--

LOCK TABLES `sewing_targets` WRITE;
/*!40000 ALTER TABLE `sewing_targets` DISABLE KEYS */;
INSERT INTO `sewing_targets` VALUES (1,5000,1,1),(2,4000,2,1),(3,3000,3,1),(4,4000,4,1),(5,4000,5,1),(6,5000,1,2),(7,3000,2,2),(8,2000,3,2),(9,2500,4,2),(10,2500,5,2),(11,5000,1,3),(12,4000,2,3),(13,5000,3,3),(14,3000,4,3),(15,4000,1,4),(16,3000,2,4),(17,3000,3,4),(18,3000,4,4),(19,4500,5,4);
/*!40000 ALTER TABLE `sewing_targets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-29 11:38:24
