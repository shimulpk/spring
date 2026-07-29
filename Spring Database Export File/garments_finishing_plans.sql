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
-- Table structure for table `finishing_plans`
--

DROP TABLE IF EXISTS `finishing_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finishing_plans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `finishing_plan_id` varchar(255) DEFAULT NULL,
  `finishing_table_no` varchar(255) DEFAULT NULL,
  `input_qty` int DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `pass_qty` int DEFAULT NULL,
  `proc_button_attach` bit(1) DEFAULT NULL,
  `proc_ironing` bit(1) DEFAULT NULL,
  `proc_trimming` bit(1) DEFAULT NULL,
  `proc_washing` bit(1) DEFAULT NULL,
  `rejection_qty` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` enum('COMPLETED','IN_PROGRESS') NOT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `supervisor_name` varchar(255) DEFAULT NULL,
  `target_qty` int DEFAULT NULL,
  `sewing_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1h8tg0u2asx914rtp5olxqplj` (`sewing_plan_id`),
  CONSTRAINT `FK1h8tg0u2asx914rtp5olxqplj` FOREIGN KEY (`sewing_plan_id`) REFERENCES `sewing_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finishing_plans`
--

LOCK TABLES `finishing_plans` WRITE;
/*!40000 ALTER TABLE `finishing_plans` DISABLE KEYS */;
INSERT INTO `finishing_plans` VALUES (1,'H&M','Navy Blue','2026-07-24','FP-1785269648175','Table1,Table2,Table3',20000,'OR-301',20000,_binary '',_binary '',_binary '',_binary '',120,'2026-07-21','COMPLETED','HM-201','Anika Khatun',20000,1),(2,'Zara (Inditex)','Blue','2026-07-27','FP-1785299403326','Table1,Table2,Table3',15000,'OR-302',15000,_binary '',_binary '',_binary '',_binary '',80,'2026-07-24','COMPLETED','ZA-202','Anika Akter',15000,2),(3,'Primark','Navy Blue','2026-07-29','FP-1785300624996','Table1,Table2,Table3',17000,'	OR-303',7000,_binary '',_binary '',_binary '',_binary '',20,'2026-07-27','IN_PROGRESS','PRI-203','Anita Sarkar',17000,3);
/*!40000 ALTER TABLE `finishing_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-29 11:38:21
