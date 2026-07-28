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
-- Table structure for table `day_wise_cutting_production`
--

DROP TABLE IF EXISTS `day_wise_cutting_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_wise_cutting_production` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `actual_cut_pieces` int DEFAULT NULL,
  `cutting_master` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `reject_pieces` int DEFAULT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `cutting_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrtbunx97h4ck7i0wcnglj3e7s` (`cutting_plan_id`),
  CONSTRAINT `FKrtbunx97h4ck7i0wcnglj3e7s` FOREIGN KEY (`cutting_plan_id`) REFERENCES `cutting_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_wise_cutting_production`
--

LOCK TABLES `day_wise_cutting_production` WRITE;
/*!40000 ALTER TABLE `day_wise_cutting_production` DISABLE KEYS */;
INSERT INTO `day_wise_cutting_production` VALUES (1,1000,'Rahim','2026-06-24',20,'NC205',1),(2,1800,'Rahim','2026-06-24',20,'NC205',1),(3,4000,'Rahim','2026-07-11',20,'TO-207',2),(4,4000,'Rahim','2026-07-12',20,'TO-207',2),(5,3500,'Rahim','2026-07-11',10,'TO-207',2),(6,3000,'Rahim','2026-07-11',10,'TO-207',2),(7,800,'Rahim','2026-07-23',10,'VD204',3),(8,700,'Rahim','2026-07-24',20,'VD204',3),(9,800,'Rahim','2026-07-25',10,'VD204',3);
/*!40000 ALTER TABLE `day_wise_cutting_production` ENABLE KEYS */;
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
