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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_rmc_details`
--

LOCK TABLES `new_rmc_details` WRITE;
/*!40000 ALTER TABLE `new_rmc_details` DISABLE KEYS */;
INSERT INTO `new_rmc_details` VALUES (1,'Cotton Fabric',1.88,4512000,37600,'Yard',120,1),(2,'Care Label',3,270000,60000,'Pieces',4.5,1),(3,'Hang Tag',4,560000,80000,'Piece',7,1),(4,'Button',12,316800,240000,'Piece',1.32,1),(5,'Interlining',0.25,175000,5000,'meter',35,1),(6,'Thread',180,720000,3600000,'meter',0.2,1),(7,'	Mash Fabric',1.9,3705000,28500,'Yard',130,2),(8,'	Care Label',2,120000,30000,'Pieces',4,2),(9,'	Hang Tag',4,300000,60000,'	Piece',5,2),(10,'	Button',14,189000,210000,'	Piece',0.9,2),(11,'	Interlining',0.25,131250,3750,'	meter',35,2),(12,'	Thread',190,570000,2850000,'meter',0.2,2),(13,'Cotton Fabric',1.77,3309900,30090,'Yard',110,3),(14,'	Care Label',3,357000,51000,'	Pieces',7,3),(15,'	Hang Tag',4,408000,68000,'	Piece',6,3),(16,'Button',12,265200,204000,'	Piece',1.3,3),(17,'Interlining',0.3,188700,5100,'	meter',37,3),(18,'Thread',200,544000,3400000,'	meter',0.16,3),(19,'Cotton Fabric',2.1,4336500,36750,'Yard',118,4),(20,'	Care Label',3,210000,52500,'	Pieces',4,4),(21,'	Hang Tag',3,367500,52500,'	Piece',7,4),(22,'	Button',9,220500,157500,'Piece',1.4,4),(23,'	Interlining',0.25,153125,4375,'meter',35,4),(24,'Thread',178,654150,3115000,'meter',0.21,4),(25,'Cotton Fabric',1.88,3959280,33840,'	Yard',117,5),(26,'	Care Label',3,270000,54000,'Pieces',5,5),(27,'	Hang Tag',5,540000,90000,'	Piece',6,5),(28,'	Button',12,237600.00000000003,216000,'Piece',1.1,5),(29,'	Interlining',0.25,162000,4500,'	meter',36,5),(30,'Thread',170,612000,3060000,'	meter',0.2,5),(31,'Cotton Fabric',1.87,4266405,36465,'	Yard',117,6),(32,'	Care Label',3,351000,58500,'	Pieces',6,6),(33,'	Hang Tag',4,390000,78000,'	Piece',5,6),(34,'	Button',10,234000,195000,'Piece',1.2,6),(35,'Interlining',0.25,170625,4875,'	meter',35,6),(36,'	Thread',180,702000,3510000,'	meter',0.2,6);
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

-- Dump completed on 2026-07-29 11:38:21
