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
-- Table structure for table `store_requisition_items`
--

DROP TABLE IF EXISTS `store_requisition_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_requisition_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` double DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `store_requisition_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9q0nlvx3ualaki28xai84jvpd` (`item_id`),
  KEY `FK6wjadjscgdp7rg67uhu3k7t2e` (`store_requisition_id`),
  CONSTRAINT `FK6wjadjscgdp7rg67uhu3k7t2e` FOREIGN KEY (`store_requisition_id`) REFERENCES `store_requisitions` (`id`),
  CONSTRAINT `FK9q0nlvx3ualaki28xai84jvpd` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_requisition_items`
--

LOCK TABLES `store_requisition_items` WRITE;
/*!40000 ALTER TABLE `store_requisition_items` DISABLE KEYS */;
INSERT INTO `store_requisition_items` VALUES (1,10,1,1),(2,2000,2,1),(3,3000,4,1),(4,100,6,1),(5,100,1,2),(6,2000,4,2),(7,2000,7,2),(8,2000,2,3),(9,4000,7,3);
/*!40000 ALTER TABLE `store_requisition_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-09 19:21:14
