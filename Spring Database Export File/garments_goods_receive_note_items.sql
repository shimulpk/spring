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
-- Table structure for table `goods_receive_note_items`
--

DROP TABLE IF EXISTS `goods_receive_note_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_receive_note_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `line_total` double NOT NULL,
  `quantity` double NOT NULL,
  `unit_price` double NOT NULL,
  `goods_receive_note_id` bigint NOT NULL,
  `purchase_order_item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7j9e9mrh191nca9lnqewwmt2g` (`goods_receive_note_id`),
  KEY `FKp40rl7g9kx47bh4vsvrblxhsd` (`purchase_order_item_id`),
  CONSTRAINT `FK7j9e9mrh191nca9lnqewwmt2g` FOREIGN KEY (`goods_receive_note_id`) REFERENCES `goods_receive_notes` (`id`),
  CONSTRAINT `FKp40rl7g9kx47bh4vsvrblxhsd` FOREIGN KEY (`purchase_order_item_id`) REFERENCES `purchase_order_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_receive_note_items`
--

LOCK TABLES `goods_receive_note_items` WRITE;
/*!40000 ALTER TABLE `goods_receive_note_items` DISABLE KEYS */;
INSERT INTO `goods_receive_note_items` VALUES (1,360000,3000,120,1,1),(2,4000,2000,2,1,2),(3,6500,2000,3.25,1,3),(4,8000,2000,4,1,4),(5,4000,100,40,1,5);
/*!40000 ALTER TABLE `goods_receive_note_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-15  0:29:33
