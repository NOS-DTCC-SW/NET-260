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
-- Table structure for table `clinics`
--

DROP TABLE IF EXISTS `clinics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinics` (
  `clinic_id` int NOT NULL AUTO_INCREMENT,
  `clinic_name` varchar(100) NOT NULL,
  `clinic_address` varchar(255) NOT NULL,
  `clinic_suite` varchar(45) NOT NULL,
  `clinic_city` varchar(45) NOT NULL,
  `clinic_state` varchar(2) NOT NULL,
  `clinic_zip` varchar(45) NOT NULL,
  `clinic_phone` varchar(45) NOT NULL,
  `clinic_fax` varchar(45) NOT NULL,
  PRIMARY KEY (`clinic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='clinic information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinics`
--

LOCK TABLES `clinics` WRITE;
/*!40000 ALTER TABLE `clinics` DISABLE KEYS */;
INSERT INTO `clinics` VALUES (1,'UmbrellaMed Primary and Pediatric Care-Asheville','53 S. French Broad Ave','Suite 101','Asheville','NC','28801','828-382-1117','828-381-2292'),(2,'UmbrellaMed Specialty Clinics -Asheville','53 S. French Broad Ave','Suite 201','Asheville','NC','28801','828-382-1120','828-381-2299'),(3,'UmbrellaMed Primary, Pediatric, and Urgent Care-Concord','217 B SE Branchview Dr','','Concord','NC','28025','704-555-9292','704-555-9535'),(4,'UmbrellaMed Primary, Pediatric, and Urgent Care -Gastonia','1525 East Garrison Rd','','Gastonia','NC','28054','704-555-9292','704-884-3627'),(5,'UmbrellaMed Primary, Pediatric, and Urgent Care -Hendersonville','500 Beverly Hank Center','','Hendersonville','NC','28702','828-255-6280','828-255-6288'),(6,'UmbrellaMed Primary, Pediatric, and Urgent Care -Lancaster','116 East Arch St','','Lancaster','SC','29720','803-236-9909','803-236-1112'),(7,'UmbrellaMed Primary and Pediatric Care -Mt. Airy','714 NC-89','','Mt. Airy','NC','27030','336-789-0011','336-789-6311'),(8,'UmbrellaMed Primary and Pediatric Care -Lexington','220 B N Main St','','Lexington','NC','277292','336-235-5555','336-233-7172'),(9,'UmbrellaMed Pediatric and Urget Care -Monroe','1008 E. West Roosevelt Blvd','Suite 107','Monroe','NC','28110','704-555-3981','704-555-3985'),(10,'UmbrellaMed Eye Center -Monroe','1008 E. West Roosevelt Blvd','Suite 106','Monroe','NC','28110','704-555-3985','704-555-3986'),(11,'UmbrellaMed Dental Care -Monroe','1008 E. West Roosevelt Blvd','Suite 108','Monroe','NC','28110','704-555-3990','704-555-3987'),(12,'UmbrellaMed Primary, Pediatric and Urgent Care -Lincolnton','910 East Main St','','Lincolnton','NC','28092','704-365-8300','704-365-8321'),(13,'UmbrellaMed Complete-Care Dental and Radiology','5815 Oleander Dr','','Wilmington','NC','28403','910-382-9000','910-382-9025'),(14,'UmbrellaMed Primary, Pediatric, and Urgent Care -Mooresville','164 Joe Knox Ave','Suite 100','Mooresville','NC','28117','704-555-3990','704-555-9362'),(15,'UmbrellaMed Radiology Services','164 Joe Knox Ave','Suite 104','Mooresville','NC','28117','704-555-9891','704-555-9362'),(16,'UmbrellaMed Primary, Pediatric, and Urgent Care -Newton','1 W A St','','Newton','NC','28658','704-228-9600','704-228-9603'),(17,'UmbrellaMed Primary, Pediatric, and Urgent Care -South Charlotte','16147 Lancaster Hwy','D','Charlotte','NC','28277','704-555-3828','704-555-9113'),(18,'UmbrellaMed Complete-Care Family Medicine and Urgent Care','5815 Oleander Dr','','Wilmington','NC','28403','910-382-9000','910-382-9025'),(19,'UmbrellaMed Primary, Pediatric, and Urgent Care -Spartanburg','128 Garner Rd','','Spartanburg','NC','29303','864-576-5523','84-576-5511'),(20,'UmbrellaMed Primary, Pediatric, and Urgent Care -Hickory','1123 13th Ave Dr SE','','Hickory','NC','28602','828-212-6545','828-212-6563'),(21,'UmbrellaMed Primary, Pediatric, and Urgent Care -Huntersville','1011 Rose Commons Dr','','Huntersville','NC','28070','704-555-5353','704-555-5375'),(22,'UmbrellaMed Urgent Care','1001 Rainy Day Cr BLDG A','102','Charlotte','NC','28262','704-555-5302','704-555-5222'),(23,'UmbrellaMed Primary and Pediatric Care','1001 Rainy Day Cr BLDG A','102','Charlotte','NC','28262','704-555-5302','704-555-5222'),(24,'UmbrellaMed Radiology Services','1001 Rainy Day Cr BLDB A','101','Charlotte','NC','28262','704-555-5306','704-555-5306'),(25,'UmbrellaMed Oncology Services','1001 Rainy Day Cr BLDG A','105','Charlotte','NC','28262','704-555-5308','704-555-5230'),(26,'UmbrellaMed Womens Health Services','1001 Rainy Day Cr BLDG A','106','Charlotte','NC','28262','704-555-5310','704-555-5230'),(27,'UmbrellaMed Teleheath','1001 Rainy Day Cr BLDG A','201','Charlotte','NC','28262','704-555-5312','704-555-5232'),(28,'UmbrellaMed Telehealth- Behavorial Services','1001 Rainy Day Cr BLDG A','202','Charlotte','NC','28262','704-555-5314','704-555-5234'),(29,'UmbrellaMed Behavorial Services','1001 Rainy Day Cr BLDG B','201','Charlotte','NC','28262','704-555-5316','704-555-5236'),(30,'UmbrellaMed Cardiology','1001 Rainy Day Cr BLDG A','106','Charlotte','NC','28262','704-555-5318','704-555-5238'),(31,'UmbrellaMed Dentistry and Orthodontics','1001 Rainy Day Cr BLDG A','107','Charlotte','NC','28262','704-555-5320','704-555-5240'),(32,'UmbrellaMed Eye Center','1001 Rainy Day Cr BLDG A','108','Charlotte','NC','28262','704-555-5322','704-555-5242'),(33,'UmbrellaMed Endocrinology','1001 Rainy Day Cr BLDG B','101','Charlotte','NC','28262','704-555-5324','704-555-5244'),(34,'UmbrellaMed Urology','1001 Rainy Day Cr BLDG B','102','Charlotte','NC','28262','704-555-5326','704-555-5246'),(35,'UmbrellaMed Chiropractic','1001 Rainy Day Cr BLDG B','103','Charlotte','NC','28262','704-555-5328','704-555-5248'),(36,'UmbrellaMed Wellness and Fitness Center','1001 Rainy Day Cr BLDG C','','Charlotte','NC','28262','704-555-5330','704-555-5250'),(37,'UmbrellaMed Orthopedics, Sports & Physical Therapy','1001 Rainy Day Cr BLDG C','104','Charlotte','NC','28262','704-555-5304','704-555-5224');
/*!40000 ALTER TABLE `clinics` ENABLE KEYS */;
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
