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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `property` (
  `prop_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(255) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `description` varchar(400) NOT NULL,
  `houseType` varchar(255) NOT NULL,
  `bed` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `bath` varchar(255) NOT NULL,
  `fromDate` varchar(55) DEFAULT NULL,
  `toDate` varchar(55) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `minStay` int(11) DEFAULT NULL,
  `isAvailable` tinyint(1) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `adults` varchar(55) DEFAULT NULL,
  `children` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`prop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'dqwe','wqe','wqeqwe','wqeqw','weqwe',1323,'sds','sadasd','sadas','3','5','2','2018-09-23','2018-09-23','usd',12,3,NULL,NULL,NULL,NULL),(2,'dqwe','wqe','wqeqwe','wqeqw','weqwe',1323,'sds','sadasd','sadas','3','5','2','2018-09-23','2014-06-22','usd',12,3,NULL,NULL,NULL,NULL),(3,'dqwe','wqe','wqeqwe','wqeqw','weqwe',1323,'sds','sadasd','sadas','3','5','2','2018-09-23','2014-06-22','usd',12,3,NULL,NULL,NULL,NULL),(4,'dqwe','wqe','wqeqwe','wqeqw','weqwe',1323,'sds','sadasd','sadas','3','5','2','2018-09-23','2014-06-22','usd',12,3,NULL,NULL,NULL,NULL),(5,'dqwe','wqe','wqeqwe','wqeqw','weqwe',1323,'sds','sadasd','sadas','3','5','2','2018-09-23','2014-06-22','usd',12,3,NULL,NULL,NULL,NULL),(6,'dqwe','wqe','wqeqwe','wqeqw','weqwe',1323,'sds','sadasd','sadas','3','5','2','2018-09-23','2014-06-22','usd',12,3,NULL,NULL,NULL,NULL),(7,'dqwe','wqe','wqeqwe','wqeqw','weqwe',1323,'sds','sadasd','sadas','3','5','2','2018-09-23','2014-06-22','usd',12,3,NULL,NULL,NULL,NULL),(8,'dqwe','wqe','wqeqwe','wqeqw','weqwe',1323,'sds','sadasd','sadas','3','5','2','2018-09-23','2014-06-22','usd',12,3,NULL,NULL,NULL,NULL),(9,'gef','gfdfg','gfg','gfg','sgddfgefg',5345,'etwe','wetwe','wr','0','5','0','2018-09-23','2014-06-22','wre',12,3,NULL,NULL,NULL,NULL),(10,'USA','868 S 5th Street','Foundry','San Jose','california',95112,'Courtyard Palo Alto Los Altos','2bed','condo','0','5','0','2018-09-23','2014-06-22','USD',12,3,NULL,NULL,NULL,NULL),(11,'USA','825','Fountain Plaza','San Jose','CALI',95112,'Laguna Cliffs Marriott','GOOD','apartment','0','4','0','2018-09-23','2014-06-22','usd',30,2,NULL,NULL,NULL,NULL),(12,'USA','123 5th Street','Colonnade','San Francisco','Cali',95112,'2 bed','Good','Apartment','0','4','0','2018-09-23','2014-06-22','USD',33,3,NULL,NULL,NULL,NULL),(13,'USA','Los gatos','LAPD','Miami','Florida',95212,' Modern Mediterranean Style 2Bdr SF Flat W/Parking','Modern Mediterranean Style 2Bdr SF Flat W/Parking','Condo','3','4','2','2018-09-23','2019-06-22','USD',200,2,NULL,NULL,'2','2'),(14,'USA','Bakers Street','Charming','Miami','Florida',1313123,' Bernal Heights','Charming studio with large bedroom area and patio','condo','4','10','0','2018-09-23','2020-06-22','usd',339,4,NULL,NULL,'5','4'),(15,'USA','190 Ryland Street','Fountain Plaza','San Jose','California',95112,'Quirky 2 bed apartment','Cosy cottage full of character set in a wooded area with babbling brook at the rear. Very quirky, as no wall or floor is straight. A secluded walled garden, with seats and a table to sit out on a barmy clear night. You can hear the babbling brook that runs along the back of the house.','Apartment','5','10','4','2018-10-01','2020-11-28','USD',2000,3,NULL,NULL,'7','4'),(16,'USA','Margaret Hwy','Rental Homes','San Jose','California',95112,'Business and Vacation Rental -Downtown','Welcome. This well-maintained, modern 2-room non-smoking apartment is on ground floor in a newly constructed energy-saving residential neighborhoods between Au, Giesing and Haidhausen. ','Mansion','6','12','4','2018-10-01','2020-02-11','USD',2000,7,NULL,NULL,'8','2'),(17,'USA','868 S 5th Street','Foundry commons','San Jose','California',95112,'Cozy, Quiet, Boutique Studio Located Near San Jose Attractions','Charming Studio - A cozy and comfortable new studio in University Heights. Quiet & safe neighborhood . Walk around the corner and have 3 great restaurants at your finger tips, a park to do that morning walk or to have that leisurely stroll. Easy access to San Diego events without using freeway.','Studio','5','10','3','2018-10-01','2020-08-19','USD',1800,5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
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
