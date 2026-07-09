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
-- Table structure for table `bom_views`
--

DROP TABLE IF EXISTS `bom_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bom_views` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `base_fabric` varchar(255) DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `quantity` decimal(38,2) DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `total_cost` decimal(38,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `unit_price` decimal(38,2) DEFAULT NULL,
  `style_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgujq80ku3uvlqtrwgr8pwcdb8` (`style_id`),
  CONSTRAINT `FKgujq80ku3uvlqtrwgr8pwcdb8` FOREIGN KEY (`style_id`) REFERENCES `bom_styles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom_views`
--

LOCK TABLES `bom_views` WRITE;
/*!40000 ALTER TABLE `bom_views` DISABLE KEYS */;
INSERT INTO `bom_views` VALUES (1,'Body','Cotton Fabric',1.88,1,225.60,'Yard',120.00,1),(2,'Body','Care-Label',2.00,2,10.00,'Pieces',5.00,1),(3,'10','Hang Tag',2.00,3,14.00,'Piece',7.00,1),(4,'','Button',8.00,4,10.80,'Pieces',1.35,1),(5,'','Interlining',0.25,5,8.75,'meter',35.00,1),(6,'','Cotton Fabric',1.88,1,244.40,'Yard',130.00,5),(7,'','Hang Tag',3.00,2,15.00,'Pieces',5.00,5),(8,'','Care Label',2.00,3,16.00,'Pieces',8.00,5),(9,'','Button',12.00,4,24.00,'Pieces',2.00,5),(10,'','Interlining',0.45,5,15.75,'meter',35.00,5);
/*!40000 ALTER TABLE `bom_views` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-09 19:21:13
