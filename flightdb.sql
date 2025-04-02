-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: flightdb
-- ------------------------------------------------------
-- Server version       8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_date` date DEFAULT NULL,
  `seat_number` varchar(255) DEFAULT NULL,
  `flight_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK546eybei9q7dsna94vryofrbr` (`flight_id`),
  KEY `FKkgseyy7t56x7lkjgu3wah5s3t` (`user_id`),
  CONSTRAINT `FK546eybei9q7dsna94vryofrbr` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`),
  CONSTRAINT `FKkgseyy7t56x7lkjgu3wah5s3t` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `departure_date` date DEFAULT NULL,
  `departure_time` datetime(6) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `flight_number` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (1,'2025-03-20','2025-03-20 06:30:00.000000','Delhi','AF101','Mumbai'),(2,'2025-03-21','2025-03-21 07:00:00.000000','Hyderabad','AI202','Bangalore'),(3,'2025-03-22','2025-03-22 08:15:00.000000','Chennai','AI303','Delhi'),(4,'2025-03-23','2025-03-23 09:30:00.000000','Mumbai','AI404','Kolkata'),(5,'2025-03-24','2025-03-24 10:45:00.000000','Bangalore','AI505','Hyderabad'),(6,'2025-03-25','2025-03-25 11:00:00.000000','Delhi','AI606','Chennai'),(7,'2025-03-26','2025-03-26 12:30:00.000000','Kolkata','AI707','Mumbai'),(8,'2025-03-27','2025-03-27 13:45:00.000000','Bangalore','AI808','Delhi'),(9,'2025-03-28','2025-03-28 14:00:00.000000','Chennai','AI909','Hyderabad'),(10,'2025-03-29','2025-03-29 15:15:00.000000','Kolkata','AI1010','Bangalore'),(11,'2025-03-30','2025-03-30 16:30:00.000000','Hyderabad','AI1111','Kolkata'),(12,'2025-04-01','2025-04-01 06:45:00.000000','Bangalore','6E101','Mumbai'),(13,'2025-04-02','2025-04-02 07:30:00.000000','Hyderabad','6E202','Delhi'),(14,'2025-04-03','2025-04-03 08:15:00.000000','Kolkata','6E303','Chennai'),(15,'2025-04-04','2025-04-04 09:00:00.000000','Delhi','6E404','Bangalore'),(16,'2025-04-05','2025-04-05 10:20:00.000000','Mumbai','6E505','Hyderabad'),(17,'2025-04-06','2025-04-06 11:10:00.000000','Chennai','6E606','Kolkata'),(18,'2025-04-07','2025-04-07 12:30:00.000000','Hyderabad','6E707','Mumbai'),(19,'2025-04-08','2025-04-08 13:45:00.000000','Kolkata','6E808','Delhi'),(20,'2025-04-09','2025-04-09 14:00:00.000000','Chennai','6E909','Bangalore'),(21,'2025-04-10','2025-04-10 15:15:00.000000','Delhi','6E1010','Hyderabad'),(22,'2025-04-11','2025-04-11 16:30:00.000000','Mumbai','6E1111','Chennai'),(23,'2025-04-12','2025-04-12 17:45:00.000000','Bangalore','6E1212','Kolkata'),(24,'2025-04-13','2025-04-13 18:00:00.000000','Chennai','6E1313','Mumbai'),(25,'2025-04-14','2025-04-14 19:15:00.000000','Bangalore','6E1414','Delhi'),(26,'2025-04-15','2025-04-15 20:30:00.000000','Kolkata','6E1515','Hyderabad'),(27,'2025-04-16','2025-04-16 21:45:00.000000','Mumbai','6E1616','Bangalore'),(28,'2025-04-17','2025-04-17 22:00:00.000000','Hyderabad','6E1717','Chennai'),(29,'2025-04-18','2025-04-18 23:15:00.000000','Delhi','6E1818','Kolkata'),(30,'2025-04-19','2025-04-19 00:30:00.000000','Kolkata','6E1919','Mumbai'),(31,'2025-04-20','2025-04-20 01:45:00.000000','Chennai','6E2020','Delhi');
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` int NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,NULL,NULL,NULL,'$2a$10$wl5oEPvMw6EihIzltqypiuOEpeSRTBLs4PQJXdrfJwK4.fMTNkjOi','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  KEY `FK55itppkw3i07do3h7qoclqd4k` (`user_id`),
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'ROLE_ADMIN'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-02  3:02:50