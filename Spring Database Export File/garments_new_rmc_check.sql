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
-- Table structure for table `new_rmc_check`
--

DROP TABLE IF EXISTS `new_rmc_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_rmc_check` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `grand_total_cost` double DEFAULT NULL,
  `style_name` varchar(255) DEFAULT NULL,
  `total_order_qty` int DEFAULT NULL,
  `order_id` bigint NOT NULL,
  `style_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd3e1p28yy51sks9hs6tdp2qvq` (`order_id`),
  KEY `FK2lbt1qowpsw7yrkdhaj385irh` (`style_id`),
  CONSTRAINT `FK2lbt1qowpsw7yrkdhaj385irh` FOREIGN KEY (`style_id`) REFERENCES `bom_styles` (`id`),
  CONSTRAINT `FKd3e1p28yy51sks9hs6tdp2qvq` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_rmc_check`
--

LOCK TABLES `new_rmc_check` WRITE;
/*!40000 ALTER TABLE `new_rmc_check` DISABLE KEYS */;
INSERT INTO `new_rmc_check` VALUES (1,'H&M','2026-07-29 00:37:51.400182',6553800,'Short Sleeve Shirt',20000,1,1),(2,'Zara (Inditex)','2026-07-29 00:38:16.373046',5015250,'Full Sleeve Shirt',15000,2,2),(3,'Primark','2026-07-29 00:38:24.334455',5072800,'Short Sleeve Shirt',17000,3,3),(4,'Walmart','2026-07-29 00:39:10.454774',5941775,'Short Sleeve Shirt And Full Sleeve Shirt',17500,4,4),(5,'Uniqlo (Fast Retailing)','2026-07-29 00:39:57.740604',5780880,'Short Sleeve Shirt And Full Sleeve Shirt',18000,5,5),(6,'C&A','2026-07-29 11:13:41.695625',6114030,'Short Sleeve Shirt And Full Sleeve Shirt',19500,6,6);
/*!40000 ALTER TABLE `new_rmc_check` ENABLE KEYS */;
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
