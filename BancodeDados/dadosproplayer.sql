CREATE DATABASE  IF NOT EXISTS `proplayer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proplayer`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: proplayer
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `conquistas`
--

DROP TABLE IF EXISTS `conquistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquistas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `valor` enum('5','4','3','2','1') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquistas`
--

LOCK TABLES `conquistas` WRITE;
/*!40000 ALTER TABLE `conquistas` DISABLE KEYS */;
INSERT INTO `conquistas` VALUES (1,'Mundial','5'),(2,'Continental','5'),(3,'Nacional','4'),(4,'Regional','3'),(5,'Estadual','2'),(6,'Municipal','1');
/*!40000 ALTER TABLE `conquistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatistica`
--

DROP TABLE IF EXISTS `estatistica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatistica` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `nacionalidade` varchar(40) DEFAULT 'Brasileiro',
  `kd` decimal(3,2) DEFAULT NULL,
  `partidas` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatistica`
--

LOCK TABLES `estatistica` WRITE;
/*!40000 ALTER TABLE `estatistica` DISABLE KEYS */;
INSERT INTO `estatistica` VALUES (1,'Lucas','Brasileiro',1.80,1255),(2,'Victor','Inglês',1.76,1456),(3,'Juan','Espanhol',1.55,1444),(4,'Carlos','Mexicano',1.56,987),(5,'Sara','Portuguesa',1.32,453),(6,'João','Brasileiro',1.66,111),(7,'Ronan','Italiano',1.78,1908);
/*!40000 ALTER TABLE `estatistica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fama`
--

DROP TABLE IF EXISTS `fama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fama` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tempo` date DEFAULT NULL,
  `idproplayer` int DEFAULT NULL,
  `idtitulos` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idproplayer` (`idproplayer`),
  KEY `idtitulos` (`idtitulos`),
  CONSTRAINT `fama_ibfk_1` FOREIGN KEY (`idproplayer`) REFERENCES `estatistica` (`id`),
  CONSTRAINT `fama_ibfk_2` FOREIGN KEY (`idtitulos`) REFERENCES `conquistas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fama`
--

LOCK TABLES `fama` WRITE;
/*!40000 ALTER TABLE `fama` DISABLE KEYS */;
INSERT INTO `fama` VALUES (1,'2022-11-22',2,4),(2,'2019-12-23',1,3),(3,'2020-10-11',1,2),(4,'2021-02-12',1,1),(5,'2019-10-12',3,1),(6,'2018-02-01',4,5),(7,'2020-02-14',2,3),(8,'2017-09-10',5,1);
/*!40000 ALTER TABLE `fama` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-05 18:40:27
