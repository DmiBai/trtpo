-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: schedule
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
                            `route-id` int DEFAULT NULL,
                            `monday` set('04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                            `tuesday` set('04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                            `wednesday` set('04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                            `thursday` set('04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                            `friday` set('04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                            `saturday` set('04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                            `sunday` set('04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
                            KEY `route-id` (`route-id`),
                            CONSTRAINT `route-id` FOREIGN KEY (`route-id`) REFERENCES `routes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,'04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,13:00,14:00,16:00,17:00,18:00,19:00,20:00','09:00,10:00,11:00,12:00,15:00,16:00,17:00,19:00,21:00','04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00'),(3,'04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00'),(2,'04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00'),(4,'04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00','04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00','04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00','04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00','04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00','04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00','04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00'),(5,'13:00,19:00','13:00,19:00','13:00,19:00','13:00,19:00','13:00,19:00','13:00,19:00','13:00,19:00'),(6,'04:00','04:00','04:00','04:00','04:00','04:00','04:00'),(7,'19:00','19:00','04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00','19:00','04:00,05:00,06:00,07:00,09:00,10:00,12:00,13:00,15:00,17:00,18:00,19:00,20:00,21:00','04:00','13:00,19:00'),(8,'07:00','04:00','05:00,06:00,07:00','05:00,06:00,07:00','21:00','04:00,06:00,08:00,10:00,12:00,14:00,16:00,18:00,20:00','13:00,19:00');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `city` varchar(50) DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Минск'),(2,'Кобрин'),(3,'Гродно'),(4,'Фаниполь'),(5,'Брест');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `route_id` int DEFAULT NULL,
                          `time` time DEFAULT NULL,
                          `user` int DEFAULT NULL,
                          `date` date DEFAULT NULL,
                          `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                          PRIMARY KEY (`id`),
                          KEY `route_id` (`route_id`),
                          KEY `user_id` (`user`),
                          CONSTRAINT `route_id` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`),
                          CONSTRAINT `user_id` FOREIGN KEY (`user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `where_from` int NOT NULL DEFAULT '0',
                          `where_to` int DEFAULT NULL,
                          PRIMARY KEY (`id`),
                          KEY `from` (`where_from`) USING BTREE,
                          KEY `to` (`where_to`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,1,2),(2,2,1),(3,1,3),(4,3,1),(5,1,4),(6,4,1),(7,5,2),(8,2,5);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `name` varchar(50) NOT NULL DEFAULT '',
                         `phone` varchar(50) NOT NULL DEFAULT '',
                         `status` int DEFAULT NULL,
                         `password` varchar(50) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'asd','12',NULL,'asd');
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

-- Dump completed on 2023-01-01 15:32:32
