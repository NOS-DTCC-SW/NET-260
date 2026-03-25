CREATE DATABASE  IF NOT EXISTS `umbrellamed` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `umbrellamed`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: umbrellamed
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `clinic_specialties`
--

DROP TABLE IF EXISTS `clinic_specialties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinic_specialties` (
  `clinic_id` int DEFAULT NULL,
  `specialty_id` int DEFAULT NULL,
  KEY `clinic_id` (`clinic_id`),
  KEY `specialty_id` (`specialty_id`),
  CONSTRAINT `clinic_specialties_ibfk_1` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`clinic_id`),
  CONSTRAINT `clinic_specialties_ibfk_2` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`specialty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic_specialties`
--

LOCK TABLES `clinic_specialties` WRITE;
/*!40000 ALTER TABLE `clinic_specialties` DISABLE KEYS */;
INSERT INTO `clinic_specialties` VALUES (2,1),(2,2),(24,3),(15,3),(18,3),(22,4),(3,4),(4,4),(5,4),(21,4),(12,4),(9,4),(14,4),(16,4),(17,4),(19,4),(20,4),(13,4),(6,4),(33,7),(33,8),(2,9),(33,9),(26,10),(32,11),(10,11),(2,12),(37,14),(27,16),(28,16),(24,17),(15,17),(18,17),(13,18),(34,19),(31,29),(11,29),(13,29),(31,30),(11,30),(13,30),(33,31),(22,5),(3,5),(4,5),(5,5),(21,5),(6,5),(12,5),(9,5),(14,5),(16,5),(17,5),(13,5),(19,5),(20,5),(23,5),(1,5),(3,5),(4,5),(5,5),(21,5),(7,5),(8,5),(22,6),(3,6),(4,6),(5,6),(21,6),(6,6),(12,6),(9,6),(14,6),(16,6),(17,6),(13,6),(19,6),(20,6),(23,6),(1,6),(3,6),(4,6),(5,6),(21,6),(7,6),(8,6),(2,6),(22,13),(3,13),(4,13),(5,13),(21,13),(6,13),(12,13),(9,13),(14,13),(16,13),(13,13),(17,13),(19,13),(20,13),(23,13),(1,13),(3,13),(4,13),(5,13),(21,13),(8,13),(7,13),(22,15),(3,15),(4,15),(5,15),(21,15),(6,15),(12,15),(9,15),(14,15),(16,15),(17,15),(13,15),(19,15),(20,15),(23,15),(1,15),(3,15),(4,15),(5,15),(21,15),(7,15),(8,15),(22,21),(3,21),(4,21),(5,21),(21,21),(6,21),(12,21),(9,21),(14,21),(16,21),(17,21),(13,21),(19,21),(20,21),(23,21),(1,21),(3,21),(4,21),(5,21),(21,21),(7,21),(8,21),(22,20),(3,20),(4,20),(5,20),(21,20),(6,20),(12,20),(9,20),(14,20),(16,20),(17,20),(13,20),(19,20),(20,20),(23,20),(1,20),(3,20),(4,20),(5,20),(21,20),(7,20),(8,20),(22,23),(3,23),(4,23),(5,23),(21,23),(6,23),(12,23),(9,23),(14,23),(16,23),(17,23),(13,23),(19,23),(20,23),(23,23),(1,23),(3,23),(4,23),(5,23),(21,23),(7,23),(8,23),(15,23),(22,25),(3,25),(4,25),(5,25),(21,25),(6,25),(12,25),(9,25),(14,25),(16,25),(17,25),(13,25),(19,25),(20,25),(23,25),(1,25),(3,25),(4,25),(5,25),(21,25),(7,25),(8,25),(27,28),(28,28),(22,28),(3,28),(4,28),(5,28),(21,28),(6,28),(12,28),(9,28),(14,28),(16,28),(17,28),(13,28),(19,28),(20,28),(23,28),(1,28),(3,28),(4,28),(5,28),(21,28),(7,28),(8,28),(22,22),(3,22),(4,22),(5,22),(21,22),(6,22),(12,22),(9,22),(14,22),(16,22),(17,22),(13,22),(19,22),(20,22),(22,24),(3,24),(4,24),(5,24),(21,24),(6,24),(12,24),(9,24),(14,24),(16,24),(17,24),(13,24),(19,24),(20,24),(22,26),(3,26),(4,26),(5,26),(21,26),(6,26),(12,26),(9,26),(14,26),(16,26),(17,26),(13,26),(19,26),(20,26),(22,27),(3,27),(4,27),(5,27),(21,27),(6,27),(12,27),(9,27),(14,27),(16,27),(17,27),(13,27),(19,27),(20,27);
/*!40000 ALTER TABLE `clinic_specialties` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-30 13:24:38
