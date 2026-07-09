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
-- Table structure for table `new_rmc_details`
--

DROP TABLE IF EXISTS `new_rmc_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_rmc_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `material_name` varchar(255) DEFAULT NULL,
  `qty_per_piece` double DEFAULT NULL,
  `total_material_cost` double DEFAULT NULL,
  `total_qty_required` double DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `rmc_check_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6g1etkcsl8xls0ncee5ub5hfx` (`rmc_check_id`),
  CONSTRAINT `FK6g1etkcsl8xls0ncee5ub5hfx` FOREIGN KEY (`rmc_check_id`) REFERENCES `new_rmc_check` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_rmc_details`
--

LOCK TABLES `new_rmc_details` WRITE;
/*!40000 ALTER TABLE `new_rmc_details` DISABLE KEYS */;
INSERT INTO `new_rmc_details` VALUES (1,'Cotton Fabric',1.88,3543800,27260,'Yard',130,1),(2,'Hang Tag',3,217500,43500,'Pieces',5,1),(3,'Care Label',2,232000,29000,'Pieces',8,1),(4,'Button',12,348000,174000,'Pieces',2,1),(5,'Interlining',0.45,228375,6525,'meter',35,1);
/*!40000 ALTER TABLE `new_rmc_details` ENABLE KEYS */;
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
