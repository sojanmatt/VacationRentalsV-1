-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: homeaway
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_details` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isTraveller` tinyint(1) DEFAULT NULL,
  `isOwner` tinyint(1) DEFAULT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `aboutMe` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES ('don','jon',NULL,1,'don','jon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('mathew','matt',NULL,1,'matt','matt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('mathewsojan','mayy',NULL,1,'matthew','m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('mathewsojansm','mayy',NULL,1,'matthew','m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('mathewsojansm1','mayy',NULL,1,'matthew','m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('matt','matt',NULL,1,'matt','matt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('matt1','matt',NULL,1,'matt','matt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('melvin','melvin',NULL,1,'melvin','mathew','null','null','Apple','null','null','null','null',NULL,NULL),('melvine','melvin',NULL,1,'melvine','mathew',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('melvinmsm','$2b$10$9BBzxt7Da6GIsaaUAMmzO.rOM0tzvOGZ4JXGKxgCdvASp3B8lmARm',1,1,'Melvin','Mathew','Good','','Apple','','Indore','German','male',NULL,NULL),('ray','ray',NULL,1,'Raymond','Chandler',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('root','root',1,NULL,'root','root',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sojan','sojan',1,NULL,'Sojan','Mathew',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-07 23:30:55
