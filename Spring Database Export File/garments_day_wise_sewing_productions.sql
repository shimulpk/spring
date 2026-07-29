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
-- Table structure for table `day_wise_sewing_productions`
--

DROP TABLE IF EXISTS `day_wise_sewing_productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_wise_sewing_productions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `achieved_quantity` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `rejection_qty` int DEFAULT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `production_line_id` bigint NOT NULL,
  `sewing_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8d0nto8j7u55y4dreys2efjmf` (`production_line_id`),
  KEY `FKcb3v251q7r6k83pexcxvma2xt` (`sewing_plan_id`),
  CONSTRAINT `FK8d0nto8j7u55y4dreys2efjmf` FOREIGN KEY (`production_line_id`) REFERENCES `production_lines` (`id`),
  CONSTRAINT `FKcb3v251q7r6k83pexcxvma2xt` FOREIGN KEY (`sewing_plan_id`) REFERENCES `sewing_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_wise_sewing_productions`
--

LOCK TABLES `day_wise_sewing_productions` WRITE;
/*!40000 ALTER TABLE `day_wise_sewing_productions` DISABLE KEYS */;
INSERT INTO `day_wise_sewing_productions` VALUES (1,3000,'2026-07-16','OR-301',20,'HM-201',1,1),(2,2000,'2026-07-17','OR-301',10,'HM-201',1,1),(3,2000,'2026-07-18','OR-301',10,'HM-201',2,1),(4,2000,'2026-07-19','OR-301',10,'HM-201',2,1),(5,3000,'2026-07-19','OR-301',10,'HM-201',3,1),(6,2000,'2026-07-17','OR-301',10,'HM-201',4,1),(7,2000,'2026-07-19','OR-301',5,'HM-201',4,1),(8,4000,'2026-07-19','OR-301',20,'HM-201',5,1),(9,2500,'2026-07-21','OR-302',10,'ZA-202',1,2),(10,2500,'2026-07-22','OR-302',10,'ZA-202',1,2),(11,3000,'2026-07-22','OR-302',10,'ZA-202',2,2),(12,2000,'2026-07-23','OR-302',20,'ZA-202',3,2),(13,2500,'2026-07-22','OR-302',10,'ZA-202',4,2),(14,2500,'2026-07-23','OR-302',10,'ZA-202',5,2),(15,3000,'2026-07-24','	OR-303',10,'PRI-203',1,3),(16,2000,'2026-07-25','	OR-303',10,'PRI-203',1,3),(17,4000,'2026-07-26','	OR-303',20,'PRI-203',2,3),(18,3000,'2026-07-24','	OR-303',10,'PRI-203',3,3),(19,2000,'2026-07-26','	OR-303',10,'PRI-203',3,3),(20,3000,'2026-07-26','	OR-303',10,'PRI-203',4,3),(21,2000,'2026-07-28','OR-304',20,'WAL-204',1,4),(22,3000,'2026-07-29','OR-304',20,'WAL-204',2,4),(23,3000,'2026-07-29','OR-304',20,'WAL-204',4,4),(24,3000,'2026-07-29','OR-304',10,'WAL-204',3,4),(25,4500,'2026-07-28','OR-304',10,'WAL-204',5,4);
/*!40000 ALTER TABLE `day_wise_sewing_productions` ENABLE KEYS */;
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
