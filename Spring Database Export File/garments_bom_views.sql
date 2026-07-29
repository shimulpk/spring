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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom_views`
--

LOCK TABLES `bom_views` WRITE;
/*!40000 ALTER TABLE `bom_views` DISABLE KEYS */;
INSERT INTO `bom_views` VALUES (1,'','Cotton Fabric',1.88,1,225.60,'Yard',120.00,1),(2,'','Care Label',3.00,2,13.50,'Pieces',4.50,1),(3,'','Hang Tag',4.00,3,28.00,'Piece',7.00,1),(4,'','Button',12.00,4,15.84,'Piece',1.32,1),(5,'','Interlining',0.25,5,8.75,'meter',35.00,1),(6,'','Thread',180.00,6,36.00,'meter',0.20,1),(7,'','	Mash Fabric',1.90,1,247.00,'Yard',130.00,2),(8,'','	Care Label',2.00,2,8.00,'Pieces',4.00,2),(9,'','	Hang Tag',4.00,3,20.00,'	Piece',5.00,2),(10,'','	Button',14.00,4,12.60,'	Piece',0.90,2),(11,'','	Interlining',0.25,5,8.75,'	meter',35.00,2),(12,'','	Thread',190.00,6,38.00,'meter',0.20,2),(13,'','Cotton Fabric',1.77,1,194.70,'Yard',110.00,3),(14,'','	Care Label',3.00,2,21.00,'	Pieces',7.00,3),(15,'','	Hang Tag',4.00,3,24.00,'	Piece',6.00,3),(16,'','Button',12.00,4,15.60,'	Piece',1.30,3),(17,'','Interlining',0.30,5,11.10,'	meter',37.00,3),(18,'','Thread',200.00,6,32.00,'	meter',0.16,3),(19,'','Cotton Fabric',2.10,1,247.80,'Yard',118.00,4),(20,'','	Care Label',3.00,2,12.00,'	Pieces',4.00,4),(21,'','	Hang Tag',3.00,3,21.00,'	Piece',7.00,4),(22,'','	Button',9.00,4,12.60,'Piece',1.40,4),(23,'','	Interlining',0.25,5,8.75,'meter',35.00,4),(24,'','Thread',178.00,6,37.38,'meter',0.21,4),(25,'','Cotton Fabric',1.88,1,219.96,'	Yard',117.00,5),(26,'','	Care Label',3.00,2,15.00,'Pieces',5.00,5),(27,'','	Hang Tag',5.00,3,30.00,'	Piece',6.00,5),(28,'','	Button',12.00,4,13.20,'Piece',1.10,5),(29,'','	Interlining',0.25,5,9.00,'	meter',36.00,5),(30,'','Thread',170.00,6,34.00,'	meter',0.20,5),(31,'','Cotton Fabric',1.87,1,218.79,'	Yard',117.00,6),(32,'','	Care Label',3.00,2,18.00,'	Pieces',6.00,6),(33,'','	Hang Tag',4.00,3,20.00,'	Piece',5.00,6),(34,'','	Button',10.00,4,12.00,'Piece',1.20,6),(35,'','Interlining',0.25,5,8.75,'	meter',35.00,6),(36,'','	Thread',180.00,6,36.00,'	meter',0.20,6),(37,'','Cotton Fabric',1.86,1,219.48,'	Yard',118.00,7),(38,'','	Care Label',2.00,2,10.00,'Pieces',5.00,7),(39,'','Hang Tag',4.00,3,24.00,'	Piece',6.00,7),(40,'','	Button',12.00,4,8.04,'	Piece',0.67,7),(41,'','	Interlining',0.30,5,11.40,'meter',38.00,7),(42,'','Thread',179.00,6,41.17,'meter',0.23,7),(43,'','	Cotton Fabric',1.88,1,225.60,'Yard',120.00,8),(44,'','Care Label',3.00,2,12.00,'	Pieces',4.00,8),(45,'','	Hang Tag',4.00,3,20.00,'Piece',5.00,8),(46,'','	Button',12.00,4,10.80,'Piece',0.90,8),(47,'','Interlining',0.26,5,6.76,'meter',26.00,8),(48,'','	Thread',180.00,6,36.00,'	meter',0.20,8),(49,'','	Cotton Fabric',1.88,1,225.60,'Yard',120.00,9),(50,'','	Care Label',3.00,2,12.00,'Pieces',4.00,9),(51,'','Hang Tag',4.00,3,12.00,'	Piece',3.00,9),(52,'','	Button',12.00,4,10.80,'	Piece',0.90,9),(53,'','	Interlining',0.25,5,9.00,'	meter',36.00,9),(54,'','Thread',180.00,6,36.00,'	meter',0.20,9),(55,'','Cotton Fabric',1.97,1,236.40,'Yard',120.00,10),(56,'','Care Label',3.00,2,9.00,'Pieces',3.00,10),(57,'','Hang Tag',4.00,3,32.00,'	Piece',8.00,10),(58,'','	Button',10.00,4,13.40,'Piece',1.34,10),(59,'','	Interlining',0.30,5,11.70,'	meter',39.00,10),(60,'','	Thread',230.00,6,52.90,'	meter',0.23,10);
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

-- Dump completed on 2026-07-29 11:38:23
