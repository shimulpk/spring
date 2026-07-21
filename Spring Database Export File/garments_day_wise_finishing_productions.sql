-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: garments
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `day_wise_finishing_productions`
--

DROP TABLE IF EXISTS `day_wise_finishing_productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_wise_finishing_productions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `pass_qty` int DEFAULT NULL,
  `reject_qty` int DEFAULT NULL,
  `remarks` text,
  `style_no` varchar(255) DEFAULT NULL,
  `finishing_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3wj1u47quj9e474y08e3vh0e6` (`finishing_plan_id`),
  CONSTRAINT `FK3wj1u47quj9e474y08e3vh0e6` FOREIGN KEY (`finishing_plan_id`) REFERENCES `finishing_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_wise_finishing_productions`
--

LOCK TABLES `day_wise_finishing_productions` WRITE;
/*!40000 ALTER TABLE `day_wise_finishing_productions` DISABLE KEYS */;
INSERT INTO `day_wise_finishing_productions` VALUES (1,'Norban Comtex Ltd','2026-06-28',2000,50,'Good Works','NC205',1),(2,'Norban Comtex Ltd','2026-06-28',800,20,'Production completed successfully','NC205',1);
/*!40000 ALTER TABLE `day_wise_finishing_productions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-21 18:59:18
