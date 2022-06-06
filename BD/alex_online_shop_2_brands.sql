-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: alex_online_shop_2
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Defender','2022-06-05 19:40:52','2022-06-05 19:40:52'),(2,'Sven','2022-06-05 19:41:07','2022-06-05 19:41:07'),(3,'Dialog','2022-06-05 19:41:19','2022-06-05 19:41:19'),(4,'SmartBuy','2022-06-05 19:41:39','2022-06-05 19:41:39'),(5,'Oklick','2022-06-05 19:41:53','2022-06-05 19:41:53'),(6,'Ritmix','2022-06-05 19:42:08','2022-06-05 19:42:08'),(7,'Logitech','2022-06-05 19:42:26','2022-06-05 19:42:26'),(8,'HyperX','2022-06-05 19:42:49','2022-06-05 19:42:49'),(9,'Canyon','2022-06-05 19:43:01','2022-06-05 19:43:01'),(10,'BVK','2022-06-05 19:43:18','2022-06-05 19:43:18'),(11,'A4Tech','2022-06-05 19:43:36','2022-06-05 19:43:36'),(12,'Redragon','2022-06-05 19:43:58','2022-06-05 19:43:58'),(13,'Maono','2022-06-05 19:44:18','2022-06-05 19:44:18'),(14,'Samsung','2022-06-05 19:44:29','2022-06-05 19:44:29'),(15,'LG','2022-06-05 19:44:36','2022-06-05 19:44:36'),(16,'Acer','2022-06-05 19:44:44','2022-06-05 19:44:44'),(17,'AOC','2022-06-05 19:44:54','2022-06-05 19:44:54'),(18,'Philips','2022-06-05 19:45:05','2022-06-05 19:45:05'),(19,'Epson','2022-06-05 19:45:23','2022-06-05 19:45:23'),(20,'Inter','2022-06-05 19:46:09','2022-06-05 19:46:09'),(21,'ExeGate','2022-06-05 19:46:22','2022-06-05 19:46:22'),(22,'AeroCool','2022-06-05 19:46:39','2022-06-05 19:46:39'),(23,'Toshiba','2022-06-05 19:46:52','2022-06-05 19:46:52'),(24,'WD','2022-06-05 19:47:02','2022-06-05 19:47:02'),(25,'Seagate','2022-06-05 19:47:19','2022-06-05 19:47:19'),(26,'AMD','2022-06-05 19:48:06','2022-06-05 19:48:06'),(27,'5bites','2022-06-05 19:48:28','2022-06-05 19:48:28'),(28,'GeForce','2022-06-05 19:49:02','2022-06-05 19:49:02'),(29,'Creative Sound','2022-06-05 19:49:52','2022-06-05 19:49:52'),(30,'ASRock','2022-06-05 19:50:06','2022-06-05 19:50:06'),(31,'BIOSTAR','2022-06-05 19:50:18','2022-06-05 19:50:18'),(32,'ASUS','2022-06-05 20:20:35','2022-06-05 20:20:35'),(33,'Creative','2022-06-05 20:20:46','2022-06-05 20:20:46'),(34,'MSI','2022-06-05 21:01:21','2022-06-05 21:01:21'),(35,'Apacer','2022-06-05 21:17:51','2022-06-05 21:17:51'),(36,'-','2022-06-05 21:18:33','2022-06-05 21:18:33');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-06  9:37:06
