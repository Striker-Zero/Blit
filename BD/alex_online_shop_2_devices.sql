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
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `rating` int DEFAULT '0',
  `img` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `typeId` int DEFAULT NULL,
  `brandId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `typeId` (`typeId`),
  KEY `brandId` (`brandId`),
  CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `devices_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `brands` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'Sound Blaster Audigy Fx',137,0,'962fbd9a-6e60-44c4-8d60-4cf09e314642.jpg','2022-06-05 20:25:31','2022-06-05 20:25:31',8,33),(2,'Strix Soar',284,0,'13a4faea-7d38-4def-ab80-5f50827a00e0.jpg','2022-06-05 20:42:13','2022-06-05 20:42:13',8,32),(3,'Sound BlasterX G6',587,0,'400f7c84-e682-4631-a04a-cedfaf5ebaa2.jpg','2022-06-05 20:43:12','2022-06-05 20:43:12',8,33),(4,'Sound Blaster AE-7',648,0,'0d421ebe-2cf4-4462-8388-b15de0c30623.jpg','2022-06-05 20:44:13','2022-06-05 20:44:13',8,33),(5,'TUF Gaming B450-PLUS II',305,0,'c5f54101-7ee5-4819-85d1-28b3d243c8c3.jpg','2022-06-05 20:53:31','2022-06-05 20:53:31',9,32),(6,'H310CM-DVS',106,0,'9b559693-daa1-47e7-8abe-855c4396dee2.jpg','2022-06-05 20:55:20','2022-06-05 20:55:20',9,30),(7,'A320MH Ver. 6.x',124,0,'254f1dcd-f6bc-499f-ba04-544f6e0a19fa.jpg','2022-06-05 20:59:24','2022-06-05 20:59:24',9,31),(8,'B450MH Ver. 6.x',137,0,'f0ab0ee2-e3a0-4e8f-b010-926bec203eb9.jpg','2022-06-05 21:00:37','2022-06-05 21:00:37',9,31),(9,'A520M-A PRO',127,0,'784364d2-1bb0-4a0c-aa1b-6a8c6435d21f.jpg','2022-06-05 21:04:27','2022-06-05 21:04:27',9,34),(10,'Prime H510M-K',186,0,'58eeec70-1af1-4e93-9bde-b3c06bc2a72d.jpg','2022-06-05 21:05:54','2022-06-05 21:05:54',9,32),(11,'B560M PRO-E',245,0,'2a285582-fec5-47c3-8c15-784888905755.jpg','2022-06-05 21:08:55','2022-06-05 21:08:55',9,34),(12,'B450M Gaming',258,0,'70654a06-2f73-4333-9606-08079d7a69ee.jpg','2022-06-05 21:10:55','2022-06-05 21:10:55',9,12),(13,'H310CM-HDV',112,0,'242a3ee5-8ab3-4c39-a7ca-7ab4b829bd12.jpg','2022-06-05 21:12:01','2022-06-05 21:12:01',9,30),(14,'B450 Pro4 R2.0',220,0,'8d779324-859b-4216-ace6-a0553ad881ab.jpg','2022-06-05 21:13:15','2022-06-05 21:13:15',9,30),(15,'Prime H510M-E',238,0,'e8b65122-6588-4880-a65c-36e896473a9a.jpg','2022-06-05 21:14:08','2022-06-05 21:14:08',9,32),(16,'B365M Pro4-F',236,0,'9f533f3d-9e5a-41ee-b86b-a0ab7c48b9a5.jpg','2022-06-05 21:15:27','2022-06-05 21:15:27',9,30),(17,'B450M Steel Legend',241,0,'619a77eb-471e-4d1c-94d7-75cf19fd320c.jpg','2022-06-05 21:16:07','2022-06-05 21:16:07',9,30),(18,'Apacer 4GB DDR4 PC4-21300',66,0,'628f7b10-96a1-455e-9796-daede872d166.jpg','2022-06-05 21:21:13','2022-06-05 21:21:13',7,35),(19,'Apacer 8GB DDR4 PC4-21300 AU',92,0,'04c92ee1-d84f-40c0-88f1-b46ebd776405.jpg','2022-06-05 21:21:46','2022-06-05 21:21:46',7,35),(20,'GOODRAM 8GB DDR4 SODIMM',94,0,'ec6fcdbd-a640-4680-ae79-6fecf49adb0b.jpg','2022-06-05 21:22:26','2022-06-05 21:22:26',7,36),(21,'Crucial Ballistix 8GB',146,0,'d627622d-f401-4078-8d85-b548df02fb56.jpg','2022-06-05 21:23:25','2022-06-05 21:23:25',7,36),(22,'GeIL 16GB',188,0,'694cba6b-9857-43e4-9844-3985c301423a.jpg','2022-06-05 21:24:04','2022-06-05 21:24:04',7,36),(23,'Netac Basic',191,0,'bc5d6824-6777-4590-8f86-6b4f391a0e73.jpg','2022-06-05 21:24:51','2022-06-05 21:24:51',7,36),(24,'G.Skill Aegis',241,0,'39bb2163-bc29-4c90-9b12-a960c46f5dd1.jpg','2022-06-05 21:25:33','2022-06-05 21:25:33',7,36),(25,'GeIL Super Luce RGB SYNC',260,0,'412aed82-7a17-4caa-bdbf-860573703d57.jpg','2022-06-05 21:25:56','2022-06-05 21:25:56',7,36),(26,'Radeon Entertainment',67,0,'ec89823f-111c-4d5f-8852-288f5b605b15.jpg','2022-06-05 21:26:42','2022-06-05 21:26:42',7,26),(27,'Team Elite',73,0,'fe3002f9-87c6-4029-b173-8e092744a9e5.jpg','2022-06-05 21:27:58','2022-06-05 21:27:58',7,36),(28,'Kingmax',87,0,'4ca33458-bd05-4ac2-908a-1420c9686860.jpg','2022-06-05 21:28:40','2022-06-05 21:28:40',7,36),(29,'Neo Forza',86,0,'f3187aa6-1023-452d-be4e-7acd14116b59.jpg','2022-06-05 21:29:09','2022-06-05 21:29:09',7,36),(30,'Inno3D GeForce RTX 2060 Twin X2',1320,0,'f33aaad0-953e-4294-8412-49c9d9782924.jpg','2022-06-05 21:33:21','2022-06-05 21:33:21',6,28),(31,'Palit GeForce RTX 3050 StormX',1189,0,'c8aa1ddd-3193-4362-96bc-cd31265ba678.jpg','2022-06-05 21:34:05','2022-06-05 21:34:05',6,28),(32,'ASUS Phoenix GeForce RTX 3060',1854,0,'57bb8d55-19ad-4f87-94e1-d7b0180ed184.jpg','2022-06-05 21:34:52','2022-06-05 21:34:52',6,28),(33,'Palit GeForce RTX 2060 Super Dual',2028,0,'8896650c-25cc-4f76-8850-c3ea45d85ee3.jpg','2022-06-05 21:35:53','2022-06-05 21:35:53',6,28),(34,'Gigabyte GeForce RTX 3060 Ti Eagle',2650,0,'37169685-e793-4779-81b9-b5cb75e9c619.jpg','2022-06-05 21:36:38','2022-06-05 21:36:38',6,28),(35,'Manli GeForce RTX 3090',7154,0,'f589787a-6e3f-42b7-a8b0-4b56d7bf1bab.jpg','2022-06-05 21:37:28','2022-06-05 21:37:28',6,28),(36,'AFOX GeForce GT210',111,0,'01da4e7a-5d3e-451a-8cda-1abf9960e1d9.jpg','2022-06-05 21:38:09','2022-06-05 21:38:09',6,28),(37,'ASUS GeForce GTX 1050 Ti',708,0,'e64998f1-eed9-4552-956b-4c3866e072e0.jpg','2022-06-05 21:38:52','2022-06-05 21:38:52',6,28),(38,'Gigabyte GeForce GTX 1650',914,0,'8c1eac5b-621d-49eb-8780-9b1cbcc2e373.jpg','2022-06-05 21:39:48','2022-06-05 21:39:48',6,28),(39,'Gigabyte GeForce GTX 1650 OC Low Profile',914,0,'f88b5537-dc6e-411b-8b6e-b5a0f9a32fda.jpg','2022-06-05 21:40:25','2022-06-05 21:40:25',6,28),(40,'PowerColor Red Dragon Radeon RX',275,0,'d552a2c4-17f8-407a-b5e3-cc6a92d6d8f0.jpg','2022-06-05 21:41:35','2022-06-05 21:41:35',6,26),(41,'Sinotex Ninja Radeon RX 560 4GB GDDR5',640,0,'05e4218c-2028-40c6-888c-c9c567dc3126.jpg','2022-06-05 21:42:21','2022-06-05 21:42:21',6,26),(42,'AMD Ryzen 3 1200',265,0,'81bb984b-32bf-45a0-8687-d9fee49317d2.jpg','2022-06-05 21:47:55','2022-06-05 21:47:55',5,26),(43,'Intel Core i3-10105F',279,0,'1a456a41-a1e3-4b6b-b4e3-bd55e4b7a257.jpg','2022-06-05 21:48:28','2022-06-05 21:48:28',5,20),(44,'Intel Core i5-9400F',411,0,'a3e0548c-b797-4b58-840b-3b1ab26e13cd.jpg','2022-06-05 21:49:04','2022-06-05 21:49:04',5,20),(45,'Intel Celeron G5905',138,0,'15e0aa4f-b607-4e5f-98da-a2ef7b61a582.jpg','2022-06-05 21:49:49','2022-06-05 21:49:49',5,20),(46,'Intel Core i5-10400F',404,0,'b78104bf-88d8-4fe9-8c97-db8c2168bde5.jpg','2022-06-05 21:50:34','2022-06-05 21:50:34',5,20),(47,'AMD Athlon 3000G',209,0,'cfea3fbf-65c3-41cc-b222-0ae0fb05f0c0.jpg','2022-06-05 21:53:47','2022-06-05 21:53:47',5,26),(48,'AMD Ryzen 5 2500X',424,0,'ee0f4493-73df-4323-a51e-728e8e644d3e.jpg','2022-06-05 21:54:28','2022-06-05 21:54:28',5,26),(49,'AMD Ryzen 7 5700G',906,0,'4f9560e2-a65b-49f5-93af-3f63e0ef5537.jpg','2022-06-05 21:55:02','2022-06-05 21:55:02',5,26),(50,'Intel Core i7-10700K',1039,0,'a0f1bac9-517b-4924-b3bd-bf5c08407468.jpg','2022-06-05 21:55:56','2022-06-05 21:55:56',5,20),(51,'Intel Core i9-11900KF',1359,0,'b2ac7bd9-ac74-4668-b6ee-2c653bfbbe5b.jpg','2022-06-05 21:56:28','2022-06-05 21:56:28',5,20),(52,'AMD Ryzen 9 5900X',1569,0,'a474d342-0121-49af-8534-0dd695104304.jpg','2022-06-05 21:57:08','2022-06-05 21:57:08',5,26),(53,' Pure Rock 2 BK007',153,0,'1c77937d-46d4-49ea-93ed-9383b0683c26.jpg','2022-06-05 22:04:17','2022-06-05 22:04:17',4,36),(54,'Intel Original PWM',22,0,'f309e9e0-283e-43a5-86e0-012d42021a5b.jpg','2022-06-05 22:05:13','2022-06-05 22:05:13',4,20),(55,'AMD Wraith Stealth',20,0,'ae300a1b-661c-489a-8ec6-60111aef244c.jpg','2022-06-05 22:05:50','2022-06-05 22:05:50',4,20),(56,'ID-Cooling SE-214-XT',56,0,'7ffe547c-03b2-4db7-8420-27c556431066.jpg','2022-06-05 22:06:41','2022-06-05 22:06:41',4,36),(57,'DeepCool GAMMAXX DP-MCH4-GMX400V2-RD',64,0,'613501e1-4b0e-48d6-b4d5-346b1f6b5937.jpg','2022-06-05 22:07:44','2022-06-05 22:07:44',4,36),(58,'ExeGate ExtraSilent EX283365RUS',14,0,'0c5b90ca-0c78-47b8-84a5-af76678ea3d1.jpg','2022-06-05 22:08:58','2022-06-05 22:08:58',4,36),(59,'AeroCool Force 8',14,0,'bf81acf7-f29e-4bbe-9804-11c679daa2b8.jpg','2022-06-05 22:09:29','2022-06-05 22:09:29',4,22),(60,'AeroCool Motion 8 Plus',14,0,'68e40bfa-c3b0-4150-9ddc-c05831bdd754.jpg','2022-06-05 22:09:58','2022-06-05 22:09:58',4,22),(61,'5bites FB8025S-12L4',15,0,'6a3d1907-9eb5-47b1-b40d-d827b446fb0a.jpg','2022-06-05 22:10:54','2022-06-05 22:10:54',4,27),(62,'AeroCool Frost 9',16,0,'4bc628db-f58a-4e32-ab72-1a22103e1e23.jpg','2022-06-05 22:11:35','2022-06-05 22:11:35',4,22),(63,'Cooler Master MasterLiquid Lite 120',108,0,'3930ae51-ae26-4451-a8cc-ec01031267bc.jpg','2022-06-05 22:12:59','2022-06-05 22:12:59',4,36),(64,'ID-Cooling FrostFlow X 240',148,0,'6b7699d8-e88e-4fb0-a346-ae72ead15439.jpg','2022-06-05 22:13:30','2022-06-05 22:13:30',4,36),(65,'WD Red Plus',599,0,'695a9fb8-277b-41f2-bcdc-736ebfb61084.jpg','2022-06-05 22:25:54','2022-06-05 22:25:54',2,24),(66,'WD Purple',539,0,'69d30cde-dc4f-42f3-a1c0-2c73d714da1c.jpg','2022-06-05 22:26:32','2022-06-05 22:26:32',2,24),(67,'WD Blue',277,0,'ec76cd4d-278b-4798-88c7-85045ffd4ce0.jpg','2022-06-05 22:27:22','2022-06-05 22:27:22',2,24),(68,'Toshiba P300 ',142,0,'691d9729-8331-432b-8e56-170c3155177d.jpg','2022-06-05 22:28:10','2022-06-05 22:28:10',2,23),(69,'WD Blue 3D NAND',156,0,'d5ec62ac-1976-45c9-a250-057b868acf58.jpg','2022-06-05 22:28:58','2022-06-05 22:28:58',2,24),(70,'Seagate IronWolf',709,0,'d39cef9f-075e-4379-afe2-2f63454afdec.jpg','2022-06-05 22:29:45','2022-06-05 22:29:45',2,25),(71,'Seagate Exos 7E8',728,0,'3f020d1d-6884-4d4f-b480-771bc31e6e7d.jpg','2022-06-05 22:30:18','2022-06-05 22:30:18',2,25),(72,'Samsung 870 Evo',459,0,'8dd8e375-15af-4189-bf10-4cad8ac92758.jpg','2022-06-05 22:31:05','2022-06-05 22:31:05',2,14),(73,'Patriot Burst Elite',152,0,'86d7f6f7-5861-45e7-96c8-2eeddcb98246.jpg','2022-06-05 22:31:51','2022-06-05 22:31:51',2,36),(74,'Apacer Panther AS340',96,0,'442d4c6d-10da-4a33-84e4-68004e3919a1.jpg','2022-06-05 22:32:33','2022-06-05 22:32:33',2,36),(75,'A-Data XPG SX6000 Lite',201,0,'451cf952-01a7-4987-bfef-1f8e347e7975.jpg','2022-06-05 22:33:05','2022-06-05 22:33:05',2,36),(76,'AeroCool ECO-500W',76,0,'1119a04c-45ee-458b-9f14-a0b8c0a9bdd8.jpg','2022-06-05 22:37:27','2022-06-05 22:37:27',1,22),(77,'AeroCool VX-500 Plus',86,0,'ef16d01d-e152-4d0c-97c1-bc407b7d2e65.jpg','2022-06-05 22:37:50','2022-06-05 22:37:50',1,22),(78,'be quiet! System Power 9 600W BN247',174,0,'0385411e-921c-4eeb-91ee-85dcc88004a4.jpg','2022-06-05 22:38:43','2022-06-05 22:38:43',1,36),(79,'D-Computer ATX-500W',57,0,'466b3547-9d2b-4a98-b44d-9b3c6d38df7a.jpg','2022-06-05 22:39:28','2022-06-05 22:39:28',1,36),(80,'ExeGate 400NPX EX224732RUS-S',56,0,'8c05e6c4-fdca-464a-8689-1e3686a1572f.jpg','2022-06-05 22:40:23','2022-06-05 22:40:23',1,21),(81,'ExeGate ATX-AB350',41,0,'411adceb-2c8e-4c9b-8dcb-c734295cdc60.jpg','2022-06-05 22:40:57','2022-06-05 22:40:57',1,21),(82,'ExeGate XP400 EX219459RUS-S',60,0,'db9f9a31-9871-4f18-acd1-c6dff3b06346.jpg','2022-06-05 22:41:37','2022-06-05 22:41:37',1,21),(83,'Ginzzu SA400',47,0,'ff8e6617-05f9-4488-b8f9-0358bc698fa0.jpg','2022-06-05 22:42:13','2022-06-05 22:42:13',1,36),(84,'KS-IS 400W',47,0,'e49b0f22-fe2c-45ad-b1c5-0e5de7c0b8f2.jpg','2022-06-05 22:42:51','2022-06-05 22:42:51',1,36),(85,'System Power 9 500W BN246',154,0,'19d9b073-071f-4188-aa3d-d46100a89a00.jpg','2022-06-05 22:43:28','2022-06-05 22:43:28',1,36),(86,'Zalman MegaMax TXll 700W ZM700-TXII',154,0,'f4555cb0-d8a6-429c-9340-adf4ba78a438.jpg','2022-06-05 22:44:15','2022-06-05 22:44:15',1,36),(87,'Monster iSport Achieve',284,0,'eb8853c8-e21f-4f3f-8da4-d66db9aeb366.jpg','2022-06-05 23:07:26','2022-06-05 23:07:26',11,36),(88,'SVEN AP-151MV',26,0,'651eeb77-c353-4b1a-bff9-04717ceec93f.jpg','2022-06-05 23:08:49','2022-06-05 23:08:49',11,2),(89,'Logitech G333',179,0,'683ab6a7-b55b-484c-97cb-450044f2ea56.jpg','2022-06-05 23:09:24','2022-06-05 23:09:24',11,7),(90,'Defender Pulse 420',10,0,'57363590-7be5-48eb-b662-3d36b327b2e7.jpg','2022-06-05 23:10:02','2022-06-05 23:10:02',11,1),(91,'Media-Tech MT3555 MAGICSOUND DS-1',13,0,'4248c6d6-18a6-443c-b2d5-0443220d3cf4.jpg','2022-06-05 23:11:09','2022-06-05 23:11:09',11,36),(92,'Defender Scrapper 500',42,0,'1683a915-28e0-48e6-919f-24d4c34bab19.jpg','2022-06-05 23:12:10','2022-06-05 23:12:10',11,1),(93,'Defender Warhead G-160',28,0,'17f34a2c-2106-40dd-8aca-36a56059ce1e.jpg','2022-06-05 23:12:42','2022-06-05 23:12:42',11,1),(94,'Canyon CNS-CHSC1B',28,0,'901df8e1-b0ba-4ad0-a2e1-b62fb7ea8d93.jpg','2022-06-05 23:13:21','2022-06-05 23:13:21',11,9),(95,'Harper HV-303',27,0,'ae6a6e33-a8cb-4a84-b640-7892de48d932.jpg','2022-06-05 23:14:41','2022-06-05 23:14:41',11,8),(96,'SVEN AP-540',28,0,'96f134a5-351e-49f6-986d-618be8c0349c.jpg','2022-06-05 23:17:42','2022-06-05 23:17:42',11,2),(97,'Oklick HS-M150',20,0,'2ccc32e6-4bb7-45e8-baf7-7dc96ec87dc6.jpg','2022-06-05 23:18:41','2022-06-05 23:18:41',11,5),(98,'QUMO Bionic GHS0002',42,0,'4ff49417-91a5-4de9-abde-f323beabacef.jpg','2022-06-05 23:19:09','2022-06-05 23:19:09',11,5),(99,'BVK K01-B-USB',17,0,'8fe55e88-610e-4567-8740-4cd5bdc3f826.jpg','2022-06-05 23:22:28','2022-06-05 23:22:28',12,10),(100,'Canyon CNE-CKEY01-RU',26,0,'4df62cf6-7960-43d0-b330-0bb05a588ae6.jpg','2022-06-05 23:22:56','2022-06-05 23:22:56',12,9),(101,'Defender Annihilator GK-013',52,0,'13c1f942-cadf-48c6-9c7c-1314bb271aba.jpg','2022-06-05 23:24:04','2022-06-05 23:24:04',12,1),(102,'Defender Element HB-520',17,0,'c3858d17-076e-48f2-92e9-fbe24afa75d1.jpg','2022-06-05 23:24:32','2022-06-05 23:24:32',12,1),(103,'ExeGate LY-403',19,0,'1b20358f-56ed-44df-be62-59e4f82d1174.jpg','2022-06-05 23:25:18','2022-06-05 23:25:18',12,21),(104,'HyperX Alloy Origins',377,0,'5f6a66b7-1a9f-44d6-9666-a52f94e5407c.jpg','2022-06-05 23:25:46','2022-06-05 23:25:46',12,8),(105,'Logitech K780 Multi-Device Wireless Keyboard',293,0,'bc99b0ee-e71d-4804-941d-655f6c85d57f.jpg','2022-06-05 23:26:35','2022-06-05 23:26:35',12,7),(106,'Logitech K780 Multi-Device Wireless Keyboard B',293,0,'aff486c2-e2ee-4327-a9af-02c3af12513c.jpg','2022-06-05 23:27:25','2022-06-05 23:27:25',12,7),(107,'Oklick 840S Wireless Bluetooth Keyboard',48,0,'6cce38b7-df13-4ecc-9ddb-5c23a1c74cbb.jpg','2022-06-05 23:28:09','2022-06-05 23:28:09',12,5),(108,'Redragon Visnu RGB',97,0,'8966c5c3-dc69-4ef2-a724-0a6f1e66cfb6.jpg','2022-06-05 23:28:53','2022-06-05 23:28:53',12,12),(109,'Ritmix RKB-215BL',33,0,'7b64790e-4553-4ab7-8ed4-d3825222161b.jpg','2022-06-05 23:29:25','2022-06-05 23:29:25',12,6),(110,'SmartBuy Rush Raven SBK-200GU-K',29,0,'f9fb280a-75c7-41ce-9369-1ea7c5ef5444.jpg','2022-06-05 23:29:55','2022-06-05 23:29:55',12,4),(111,' Logitech MX Master',407,0,'7514b423-33e3-43ad-9c0c-2bc9063a7a99.jpg','2022-06-05 23:39:35','2022-06-05 23:39:35',13,7),(112,'SmartBuy One SBM-352-K',14,0,'e88f696f-ee46-4975-88e7-488a3c7898b1.jpg','2022-06-05 23:41:52','2022-06-05 23:41:52',13,4),(113,'QUMO Nemesis',20,0,'0b6eb5ae-9e64-4fc4-b7a6-a0d9849cce3c.jpg','2022-06-05 23:46:36','2022-06-05 23:46:36',13,36),(114,'QUMO Fractal',26,0,'f4d4926d-591b-482f-9d40-b3840be3d11c.jpg','2022-06-05 23:47:07','2022-06-05 23:47:07',13,36),(115,'Oklick 595MB',42,0,'3dbb25a4-f998-4f80-a704-86387c10b1aa.jpg','2022-06-05 23:48:40','2022-06-05 23:48:40',13,5),(116,'Logitech M720 Triathlon',177,0,'65327fd0-5203-4a3f-aa17-cec864f309be.jpg','2022-06-05 23:49:23','2022-06-05 23:49:23',13,7),(117,'Logitech G603 Lightspeed',188,0,'d9f87683-b3b0-4f27-a17b-e1dabd4b588f.jpg','2022-06-05 23:49:49','2022-06-05 23:49:49',13,7),(118,'Defender SinSister GM-933',23,0,'68e2aec9-8eda-4eac-8616-cff828086f97.jpg','2022-06-05 23:51:00','2022-06-05 23:51:00',13,1),(119,'Defender Safari MM-675 Nano Stone',33,0,'1a8650e6-5019-4ca2-bf6a-b6f97c35c05b.jpg','2022-06-05 23:51:36','2022-06-05 23:51:36',13,1),(120,'Defender Demoniac GM-540L',26,0,'213ba8fc-09f3-4366-9fe4-6c4f20ecfeac.jpg','2022-06-05 23:52:06','2022-06-05 23:52:06',13,1),(121,'A4Tech K3-23E',12,0,'440afded-edb4-4e84-aeac-784596c43c75.jpg','2022-06-05 23:52:32','2022-06-05 23:52:32',13,11),(122,'BBK CM124',42,0,'9cc8e4d9-3b33-41f6-9324-df680ccb9b13.jpg','2022-06-05 23:55:37','2022-06-05 23:55:37',14,36),(123,'BEHRINGER C-1U',293,0,'f4723f32-e130-4c5c-95de-701951a10dbb.jpg','2022-06-05 23:56:27','2022-06-05 23:56:27',14,36),(124,'Defender Forte GMC 300',49,0,'b69524d5-3334-4820-ba84-7ff4ccff7ab8.jpg','2022-06-05 23:57:15','2022-06-05 23:57:15',14,1),(125,'Defender MIC-109',12,0,'a214539b-dcec-479e-81c9-e42b090afdda.jpg','2022-06-05 23:57:43','2022-06-05 23:57:43',14,1),(126,'HyperX SoloCast',243,0,'1b3fd352-3fcb-46fa-bcf5-793bfe0cc3f9.jpg','2022-06-05 23:58:12','2022-06-05 23:58:12',14,8),(127,'Oklick MP-M009B',15,0,'7b7eefe9-7937-46eb-b93b-c72cdb28f7de.jpg','2022-06-05 23:58:40','2022-06-05 23:58:40',14,5),(128,'Redragon Seyfert GM100',77,0,'28156f15-76cd-4c5e-a0e9-e3184b6804da.jpg','2022-06-05 23:59:14','2022-06-05 23:59:14',14,12),(129,'Ritmix RDM-125',33,0,'e760baa8-7cf4-4b6f-823b-c41c2f413847.jpg','2022-06-05 23:59:42','2022-06-05 23:59:42',14,6),(130,'Ritmix RDM-160',63,0,'2ae6da2e-f93f-43bd-8100-c8bbfe47f9c6.jpg','2022-06-06 00:00:00','2022-06-06 00:00:00',14,6),(131,'SVEN MK-155',12,0,'aad48a78-cad9-4a0f-89a8-b488e2f1b508.jpg','2022-06-06 00:00:25','2022-06-06 00:00:25',14,2),(132,'Brother QL-800',739,0,'9cc8b5d1-9b06-4fe2-b032-9f7591eb49d1.jpg','2022-06-06 00:02:10','2022-06-06 00:02:10',15,36),(133,'Canon Cartridge 725',126,0,'9e2e45ea-29b5-463f-9d07-78f61bb3ec80.jpg','2022-06-06 00:02:59','2022-06-06 00:02:59',15,9),(134,'Canon i-SENSYS LBP113w',781,0,'2e26eaf8-eb1e-4ffc-bb8e-ba3a08ea8d64.jpg','2022-06-06 00:03:19','2022-06-06 00:03:19',15,9),(135,'Canon PIXMA G3411',763,0,'2e9fb8c3-781c-4a4c-a615-30d1b429822c.jpg','2022-06-06 00:03:48','2022-06-06 00:03:48',15,9),(136,'Canon PIXMA G5040',912,0,'81421a76-000a-4b38-aa1a-c131762dfd58.jpg','2022-06-06 00:04:15','2022-06-06 00:04:15',15,9),(137,'Canon Selphy CP1000',409,0,'f9a27762-58bb-442f-bcc7-329d543f6a62.jpg','2022-06-06 00:04:49','2022-06-06 00:04:49',15,9),(138,'Canon SELPHY CP1300',549,0,'696952d2-8d07-49fb-98ab-f3e9d92a6680.jpg','2022-06-06 00:05:13','2022-06-06 00:05:13',15,9),(139,'Epson L1110',740,0,'248a4970-88e2-41b2-bc4f-ebe9c5115260.jpg','2022-06-06 00:05:53','2022-06-06 00:05:53',15,19),(140,'Epson L132',690,0,'184a235f-1e18-4265-9ea5-937b03837797.jpg','2022-06-06 00:06:20','2022-06-06 00:06:20',15,19),(141,'Epson TM-U220B',560,0,'ec68e5a6-61cd-4dab-ad5b-bc0cef3072d7.jpg','2022-06-06 00:06:53','2022-06-06 00:06:53',15,19),(142,'Defender C-090',26,0,'e3677580-e521-4bb6-923d-c262eecf5a9a.jpg','2022-06-06 00:10:52','2022-06-06 00:10:52',16,1),(143,'Defender C-2525HD',46,0,'a8be2a3d-bd99-4ca7-b1b5-18d2fb13b9eb.jpg','2022-06-06 00:11:14','2022-06-06 00:11:14',16,1),(144,'ExeGate GoldenEye C270',30,0,'b49d58cc-e687-4106-bfde-146765acf09c.jpg','2022-06-06 00:11:46','2022-06-06 00:11:46',16,21),(145,'Logitech BCC950 ConferenceCam',846,0,'b73beecb-b391-48aa-82f4-916b80b95276.jpg','2022-06-06 00:12:23','2022-06-06 00:12:23',16,7),(146,'Logitech C922 Pro Stream',390,0,'9c870866-9d95-43ad-84d9-12285074e41d.jpg','2022-06-06 00:12:55','2022-06-06 00:12:55',16,7),(147,'Logitech HD Webcam C270',287,0,'54d09842-010c-42b3-995a-2e686eb344d0.jpg','2022-06-06 00:13:22','2022-06-06 00:13:22',16,7),(148,'SVEN IC-950 HD',69,0,'a2fcf3fa-50da-4a4e-b4c1-ae32790b2eab.jpg','2022-06-06 00:13:49','2022-06-06 00:13:49',16,2);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-06  9:37:07
