CREATE DATABASE  IF NOT EXISTS `transfermarket` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `transfermarket`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: transfermarket
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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `peso` decimal(4,2) DEFAULT NULL,
  `pé` enum('E','D') DEFAULT NULL,
  `valor` decimal(12,3) DEFAULT NULL,
  `jogano` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jogano` (`jogano`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Lucas Dantas',1.72,60.70,'E',1654789.000,4),(2,'Neymar Jr',1.76,72.00,'D',9456777.000,NULL),(3,'Cristiano Ronaldo',1.88,82.00,'D',5833297.000,12),(4,'Lionel Messi',1.72,70.00,'E',7478999.000,NULL),(5,'Rodrygo Goes',1.75,72.00,'D',6989765.000,9),(6,'Angêlo Gabriel',1.73,75.00,'E',3666277.000,11),(7,'Luka Modric',1.73,72.00,'D',2438878.000,9),(8,'Marcos Leonardo',1.77,75.00,'D',4999876.000,11),(9,'Soteldo',1.60,65.00,'D',2559999.000,11),(10,'Ribamar',1.82,75.00,'D',50000.000,NULL);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `times` (
  `idtime` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `valor` decimal(3,2) DEFAULT NULL,
  `estadio` varchar(40) DEFAULT NULL,
  `país` varchar(30) DEFAULT NULL,
  `ranking` int DEFAULT NULL,
  PRIMARY KEY (`idtime`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times`
--

LOCK TABLES `times` WRITE;
/*!40000 ALTER TABLE `times` DISABLE KEYS */;
INSERT INTO `times` VALUES (1,'Arsenal',1.21,'Emirates','England',7),(2,'Manchester City',1.18,'Etihad','England',1),(3,'Bayern Munchen',0.98,'Allianz','Germany',2),(4,'Napoli',0.56,'Maradona','Italy',4),(5,'Inter Milan',0.48,'Giuseppe Meazza','Italy',5),(6,'Liverpool',0.86,'Anfield','England',6),(7,'Porto',0.28,'Estádio do Dragão','Portugal',8),(8,'Benfica',0.35,'Estádio da Luz','Portugal',9),(9,'Real Madrid',0.98,'Santiago Bernabéu','Spain',3),(10,'Borussia Dortmund',0.46,'Signal Iduna Park','Germany',10),(11,'Santos',0.07,'Vila Belmiro','Brazil',314),(12,'Al Nassr',0.12,'Al-Awwal Park','Saudi Arabia',147);
/*!40000 ALTER TABLE `times` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-05 18:54:32
