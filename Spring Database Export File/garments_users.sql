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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','MERCHANDISER','PRODUCTION_MANAGER','STORE_MANAGER','PURCHASE_MANAGER','CUTTING_MANAGER','SEWING_MANAGER','FINISHING_MANAGER','PACKING_MANAGER') DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','admin@gmail.com',NULL,'$2a$10$sHsZGWivPcys2mY/6NKxn.xgHNbuT5VIo.J270VJimxkVN0zl6k6C','01700000000','ADMIN',NULL,'MD Emran Hossain'),(2,_binary '','shimulpk61100@gmail.com',NULL,'$2a$10$eduLQCOpEc9LD7wMyOzXVusC6/CO3URKwN0.w.mSEZXEsxdMlW2/6','01568186408','MERCHANDISER',NULL,'Md Shimul Pramanik'),(3,_binary '','store@gmail.com',NULL,'$2a$10$cnYCaKpPNtaEYT/CZqXYGuM.5e8xDE9y4WYUmTAMHJj.VmXZeIPdS','01576987865','STORE_MANAGER',NULL,'Badrul Amin'),(4,_binary '','procurement@gmail.com',NULL,'$2a$10$U9PE/aR.LqnEj2ncpkxGLO85rMgnEy5wDRa1ZXCslD0W7IOq6cv9i','01568186456','PURCHASE_MANAGER',NULL,'Abul Hasan'),(5,_binary '','production@gmail.com',NULL,'$2a$10$icPCJNGKahmiIYVvn7KJLO5tIwHpeUgBHv0FwjZwqfeEgxDbhMVi6','01568186434','PRODUCTION_MANAGER',NULL,'Tanvir Hossain'),(6,_binary '','cutting@gmail.com',NULL,'$2a$10$DD4Uf5rwXE2CapVKdWfTF.AevLvo./P2wZInIT3tYWxmoetZsjwkq','01568186419','CUTTING_MANAGER',NULL,'Miskatul Islam'),(7,_binary '','sewing@gmail.com',NULL,'$2a$10$1ErdwByXNjDXtJgBxcEP3OxGn4sKUHZf.qWOihBJymmeSWHKf2xZ.','01568185643','SEWING_MANAGER',NULL,'Sajin Ahmed'),(8,_binary '','finishing@gmail.com',NULL,'$2a$10$.wIaXfEbmM.bpb.5hLrK7.mpHV/6Yw4S5SQ6paL5ywTTFgFZ5uY66','01568180956','FINISHING_MANAGER',NULL,'Shaharan Hossen'),(9,_binary '','packing@gmail.com',NULL,'$2a$10$I4YLPGjz1C9MbhynpJVmVe18mdcsv/7BxL7bTH12lsAqSvs97zzDK','01568182305','PACKING_MANAGER',NULL,'Masud Rana');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-21 18:59:21
