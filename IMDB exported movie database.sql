-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movie_over_view
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `actorname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'kamalhasan'),(2,'simbu'),(3,'jeyam ravi'),(4,'karthik'),(5,'Iswaryarai'),(6,'Trisha');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Genre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'thriller'),(2,'romance'),(3,'Historical'),(4,'science fiction'),(5,'drama');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `moviename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'vikram'),(2,'Venthu Thaninthathu Kaadu'),(3,'Tik tik tik'),(4,'ponniyin selvan');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movieoverview`
--

DROP TABLE IF EXISTS `movieoverview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movieoverview` (
  `Id` int NOT NULL,
  `actorID` int DEFAULT NULL,
  `skillID` int DEFAULT NULL,
  `roleID` int DEFAULT NULL,
  `movieID` int DEFAULT NULL,
  `ReviewID` int DEFAULT NULL,
  `ReviewedByID` int DEFAULT NULL,
  `GenreID` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `actorID` (`actorID`),
  KEY `skillID` (`skillID`),
  KEY `roleID` (`roleID`),
  KEY `ReviewID` (`ReviewID`),
  KEY `ReviewedByID` (`ReviewedByID`),
  KEY `GenreID` (`GenreID`),
  KEY `movieID` (`movieID`),
  CONSTRAINT `movieoverview_ibfk_1` FOREIGN KEY (`actorID`) REFERENCES `actor` (`Id`),
  CONSTRAINT `movieoverview_ibfk_2` FOREIGN KEY (`skillID`) REFERENCES `skill` (`Id`),
  CONSTRAINT `movieoverview_ibfk_3` FOREIGN KEY (`roleID`) REFERENCES `role` (`Id`),
  CONSTRAINT `movieoverview_ibfk_4` FOREIGN KEY (`ReviewID`) REFERENCES `review` (`Id`),
  CONSTRAINT `movieoverview_ibfk_5` FOREIGN KEY (`ReviewedByID`) REFERENCES `viewerslist` (`Id`),
  CONSTRAINT `movieoverview_ibfk_6` FOREIGN KEY (`GenreID`) REFERENCES `genre` (`Id`),
  CONSTRAINT `movieoverview_ibfk_7` FOREIGN KEY (`movieID`) REFERENCES `movie` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieoverview`
--

LOCK TABLES `movieoverview` WRITE;
/*!40000 ALTER TABLE `movieoverview` DISABLE KEYS */;
INSERT INTO `movieoverview` VALUES (1,1,3,2,1,1,2,5),(2,1,1,1,1,2,5,5),(3,2,2,6,2,2,3,5),(4,3,1,1,3,1,1,4),(5,3,2,6,3,2,4,4),(6,4,1,6,4,1,5,3),(7,5,4,5,4,4,3,3),(8,6,4,4,4,2,5,3),(9,4,3,6,4,4,3,3);
/*!40000 ALTER TABLE `movieoverview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Ratings` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'5*'),(2,'4*'),(3,'3*'),(4,'2*'),(5,'1*');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Father'),(2,'Grandfather'),(3,'princess'),(4,'villan'),(5,'villi'),(6,'hero');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `skillname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'acting'),(2,'dancing'),(3,'direction'),(4,'modeling'),(5,'singing'),(6,'acting'),(7,'dancing'),(8,'direction'),(9,'modeling'),(10,'singing');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewerslist`
--

DROP TABLE IF EXISTS `viewerslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewerslist` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Viewername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewerslist`
--

LOCK TABLES `viewerslist` WRITE;
/*!40000 ALTER TABLE `viewerslist` DISABLE KEYS */;
INSERT INTO `viewerslist` VALUES (1,'vijay'),(2,'Ajith'),(3,'Mani'),(4,'Surya'),(5,'Vishal');
/*!40000 ALTER TABLE `viewerslist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13  2:41:15
