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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sewing_plans`
--

LOCK TABLES `sewing_plans` WRITE;
/*!40000 ALTER TABLE `sewing_plans` DISABLE KEYS */;
INSERT INTO `sewing_plans` VALUES (1,'H&M','Navy Blue','2026-07-20',20000,'OR-301',20000,95,'SP-1785268820886','2026-07-15','COMPLETED','HM-201',1),(2,'Zara (Inditex)','Blue','2026-07-23',15000,'OR-302',15000,70,'SP-1785299106564','2026-07-21','COMPLETED','ZA-202',2),(3,'Primark','Navy Blue','2026-07-27',17000,'	OR-303',17000,70,'SP-1785300303088','2026-07-24','COMPLETED','PRI-203',3),(4,'Walmart','Navy Blue','2026-07-31',17500,'OR-304',15500,80,'SP-1785301070797','2026-07-28','IN_SEWING','WAL-204',4);
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

-- Dump completed on 2026-07-29 11:38:24
