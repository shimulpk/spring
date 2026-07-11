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
-- Table structure for table `sewing_plans`
--

DROP TABLE IF EXISTS `sewing_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sewing_plans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `input_received_qty` int DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `output_qty` int DEFAULT NULL,
  `rejection_qty` int DEFAULT NULL,
  `sewing_plan_id` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` enum('COMPLETED','IN_SEWING','PENDING') NOT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `cutting_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh8v9t6ywbmuwow2okp1xurn64` (`cutting_plan_id`),
  CONSTRAINT `FKh8v9t6ywbmuwow2okp1xurn64` FOREIGN KEY (`cutting_plan_id`) REFERENCES `cutting_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sewing_plans`
--

LOCK TABLES `sewing_plans` WRITE;
/*!40000 ALTER TABLE `sewing_plans` DISABLE KEYS */;
INSERT INTO `sewing_plans` VALUES (2,'Norban Comtex Ltd','Navy Blue','2026-06-30',2800,'OR-2026-004',2800,65,'SP-1782410430915','2026-06-25','COMPLETED','NC205',1);
/*!40000 ALTER TABLE `sewing_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-11 13:42:23
