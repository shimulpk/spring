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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `grand_total` decimal(38,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `ship_date` date DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subtotal` decimal(38,2) DEFAULT NULL,
  `total_quantity` int DEFAULT NULL,
  `vat` decimal(38,2) DEFAULT NULL,
  `vat_percent` decimal(38,2) DEFAULT NULL,
  `buyer_id` bigint NOT NULL,
  `style_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm64p5iuhw3kaqel7x21pskgjr` (`buyer_id`),
  KEY `FKoirr195kd4qi3k9lbgbiiirw3` (`style_id`),
  CONSTRAINT `FKm64p5iuhw3kaqel7x21pskgjr` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`),
  CONSTRAINT `FKoirr195kd4qi3k9lbgbiiirw3` FOREIGN KEY (`style_id`) REFERENCES `bom_styles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,11352000.00,'2026-05-28','OR-301','HM-PO-401','2026-07-28','Mäster Samuelsgatan 46A, SE-106 38 Stockholm','CONFIRMED',10320000.00,20000,1032000.00,10.00,1,1),(2,8096000.00,'2026-06-24','OR-302','ZA-PO-402','2026-07-29','Av. de la Diputación, 15142 Arteixo, A Coruña','CONFIRMED',7360000.00,15000,736000.00,10.00,2,2),(3,8998500.00,'2026-06-22','	OR-303','PRI-PO-403','2026-08-28','Arthur Ryan House, 22-24 Parnell Street, Dublin 1','CONFIRMED',8570000.00,17000,428500.00,5.00,3,3),(4,9729500.00,'2026-06-24','OR-304','WL-PO-404','2026-08-29','702 S.W. 8th Street, Bentonville, Arkansas 72716','CONFIRMED',8845000.00,17500,884500.00,10.00,4,4),(5,10054000.00,'2026-06-23','OR-305','UN-PO-405','2026-08-30','Midtown Tower, 9-7-1 Akasaka, Minato-ku, Tokyo 107-6231','CONFIRMED',9140000.00,18000,914000.00,10.00,5,5),(6,10174500.00,'2026-06-24','OR-306','CA-PO-406','2026-08-31','Wanheimer Straße 70, 40468 Düsseldorf','CONFIRMED',9690000.00,19500,484500.00,5.00,8,6),(7,10747000.00,'2026-06-16','OR-307','TES-PO-407','2026-07-30','Tesco House, Shire Park, Kestrel Way, Welwyn Garden City, AL7 1GA','CONFIRMED',9770000.00,20000,977000.00,10.00,9,7);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-29 11:38:22
