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

-- Dump completed on 2023-08-05 18:45:09
CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int NOT NULL DEFAULT '0',
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int unsigned DEFAULT NULL,
  `totaulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2014),(2,'Algoritmos','Lógica de Programação',20,15,2014),(3,'Photoshop5','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2015),(5,'Java','Introdução à Linguagem Java',40,29,2015),(6,'MySQL','Bancos de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2016),(8,'Python','Curso de Python',40,18,2017),(9,'POO','Curso de Programação Orientada a Objetos',60,35,2016),(10,'Excel','Curso completo de Excel',40,30,2017),(11,'Responsividade','Curso de Responsividade',30,15,2018),(12,'C++','Curso de C++ com Orientação a Objetos',40,25,2017),(13,'C#','Curso de C#',30,12,2017),(14,'Android','Curso de Desenvolvimento de Aplicativos para Android',60,30,2018),(15,'JavaScript','Curso de JavaScript',35,18,2017),(16,'PowerPoint','Curso completo de PowerPoint',30,12,2018),(17,'Swift','Curso de Desenvolvimento de Aplicativos para iOS',60,30,2019),(18,'Hardware','Curso de Montagem e Manutenção de PCs',30,12,2017),(19,'Redes','Curso de Redes para Iniciantes',40,15,2016),(20,'Segurança','Curso de Segurança',15,8,2018),(21,'SEO','Curso de Otimização de Sites',30,12,2017),(22,'Premiere','Curso de Edição de Vídeos com Premiere',20,10,2017),(23,'After Effects','Curso de Efeitos em Vídeos com After Effects',20,10,2018),(24,'WordPress','Curso de Criação de Sites com WordPress',60,30,2019),(25,'Joomla','Curso de Criação de Sites com Joomla',60,30,2019),(26,'Magento','Curso de Criação de Lojas Virtuais com Magento',50,25,2019),(27,'Modelagem de Dados','Curso de Modelagem de Dados',30,12,2020),(28,'HTML4','Curso Básico de HTML, versão 4.0',20,9,2010),(29,'PHP7','Curso de PHP, versão 7.0',40,20,2020),(30,'PHP4','Curso de PHP, versão 4.0',30,11,2010);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafanhotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `cursopreferido` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cursopreferido` (`cursopreferido`),
  CONSTRAINT `gafanhotos_ibfk_1` FOREIGN KEY (`cursopreferido`) REFERENCES `cursos` (`idcurso`),
  CONSTRAINT `gafanhotos_ibfk_2` FOREIGN KEY (`cursopreferido`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafanhotos`
--

LOCK TABLES `gafanhotos` WRITE;
/*!40000 ALTER TABLE `gafanhotos` DISABLE KEYS */;
INSERT INTO `gafanhotos` VALUES (1,'Daniel Morais','Auxiliar Administrat','1984-01-02','M',78.50,1.83,'Brasil',10),(2,'Talita Nascimento','Farmacêutico','1999-12-30','F',55.20,1.65,'Portugal',12),(3,'Emerson Gabriel','Programador','1920-12-30','M',50.20,1.65,'Moçambique',1),(4,'Lucas Damasceno','Auxiliar Administrat','1930-11-02','M',63.20,1.75,'Irlanda',1),(5,'Leila Martins','Farmacêutico','1975-04-22','F',99.00,2.15,'Brasil',3),(6,'Letícia Neves','Programador','1999-12-03','F',87.00,2.00,'Brasil',4),(7,'Janaína Couto','Auxiliar Administrat','1987-11-12','F',75.40,1.66,'EUA',5),(8,'Carlisson Rosa','Professor','2010-08-01','M',78.22,1.98,'Brasil',30),(9,'Jackson Telles','Programador','1999-01-23','M',55.75,1.33,'Portugal',12),(10,'Danilo Araujo','Dentista','1975-12-10','M',99.21,1.87,'EUA',3),(11,'Andreia Delfino','Auxiliar Administrat','1975-07-01','F',48.64,1.54,'Irlanda',4),(12,'Valter Vilmerson','Ator','1985-10-12','M',88.55,2.03,'Brasil',5),(13,'Allan Silva','Programador','1993-11-11','M',76.99,1.55,'Brasil',6),(14,'Rosana Kunz','Professor','1935-01-16','F',55.24,1.87,'Brasil',7),(15,'Josiane Dutra','Empreendedor','1950-01-20','F',98.70,1.04,'Portugal',8),(16,'Elvis Schwarz','Dentista','2011-05-07','M',66.69,1.76,'EUA',17),(17,'Paulo Narley','Auxiliar Administrat','1997-03-17','M',120.10,2.22,'Brasil',16),(18,'Joade Assis','Médico','1930-12-01','M',65.88,1.78,'França',11),(19,'Nara Matos','Programador','1978-03-17','F',65.90,1.33,'Brasil',10),(20,'Marcos Dissotti','Empreendedor','2010-01-01','M',53.79,1.54,'Portugal',4),(21,'Ana Carolina Mendes','Ator','2000-12-15','F',88.30,1.54,'Brasil',3),(22,'Guilherme de Sousa','Dentista','2001-05-18','M',132.70,1.97,'Moçambique',22),(23,'Bruno Torres','Auxiliar Administrat','2000-01-30','M',44.65,1.65,'Brasil',25),(24,'Yuji Homa','Empreendedor','1996-12-25','M',33.90,1.22,'Japão',27),(25,'Raian Porto','Programador','1989-05-05','M',54.89,1.54,'Brasil',3),(26,'Paulo Batista','Ator','1999-03-15','M',110.12,1.87,'Portugal',4),(27,'Monique Precivalli','Auxiliar Administrat','2013-12-30','F',48.20,1.22,'Brasil',7),(28,'Herisson Silva','Auxiliar Administrat','1965-10-10','M',74.65,1.56,'EUA',8),(29,'Tiago Ulisses','Dentista','1993-04-22','M',150.30,2.35,'Brasil',8),(30,'Anderson Rafael','Programador','1989-12-01','M',64.22,1.44,'Irlanda',8),(31,'Karine Ribeiro','Empreendedor','1988-10-01','F',42.10,1.65,'Brasil',6),(32,'Roberto Luiz Debarba','Ator','2007-01-09','M',77.44,1.56,'Brasil',4),(33,'Jarismar Andrade','Dentista','2000-06-23','F',63.70,1.33,'Brasil',18),(34,'Janaina Oliveira','Professor','1955-03-12','F',52.90,1.76,'Canadá',15),(35,'Márcio Mello','Programador','2011-11-20','M',54.11,1.55,'EUA',11),(36,'Robson Rodolpho','Auxiliar Administrat','2000-08-08','M',110.10,1.76,'Brasil',15),(37,'Daniele Moledo','Empreendedor','2006-08-11','F',101.30,1.99,'Brasil',6),(38,'Neto Sophiate','Ator','1996-05-17','M',59.28,1.65,'Portugal',4),(39,'Neriton Dias','Auxiliar Administrat','2009-10-30','M',48.99,1.29,'Brasil',3),(40,'André Schmidt','Programador','1993-07-26','M',55.37,1.22,'Angola',2),(41,'Isaias Buscarino','Dentista','2001-01-07','M',99.90,1.55,'Moçambique',1),(42,'Rafael Guimma','Empreendedor','1968-04-11','M',88.88,1.54,'Brasil',NULL),(43,'Ana Carolina Hernandes','Ator','1970-10-11','F',65.40,2.08,'EUA',NULL),(44,'Luiz Paulo','Professor','1984-11-01','M',75.12,1.38,'Portugal',NULL),(45,'Bruna Teles','Programador','1980-11-07','F',55.10,1.86,'Brasil',NULL),(46,'Diogo Padilha','Auxiliar Administrat','2000-03-03','M',54.34,1.88,'Angola',NULL),(47,'Bruno Miltersteiner','Dentista','1986-02-19','M',77.45,1.65,'Alemanha',NULL),(48,'Elaine Nunes','Programador','1998-08-15','F',35.90,2.00,'Canadá',NULL),(49,'Silvio Ricardo','Programador','2012-03-12','M',65.99,1.23,'EUA',NULL),(50,'Denilson Barbosa da Silva','Empreendedor','2000-01-08','M',97.30,2.00,'Brasil',NULL),(51,'Jucinei Teixeira','Professor','1977-11-22','F',44.80,1.76,'Portugal',NULL),(52,'Bruna Santos','Auxiliar Administrat','1991-12-01','F',76.30,1.45,'Canadá',NULL),(53,'André Vitebo','Médico','1970-07-01','M',44.11,1.55,'Brasil',NULL),(54,'Andre Santini','Programador','1991-08-15','M',66.00,1.76,'Itália',NULL),(55,'Ruan Valente','Programador','1998-03-19','M',101.90,1.76,'Canadá',NULL),(56,'Nailton Mauricio','Médico','1992-04-25','M',86.01,1.43,'EUA',NULL),(57,'Rita Pontes','Professor','1999-09-02','F',54.10,1.35,'Angola',NULL),(58,'Carlos Camargo','Programador','2005-02-22','M',124.65,1.33,'Brasil',NULL),(59,'Philppe Oliveira','Auxiliar Administrat','2000-05-23','M',105.10,2.19,'Brasil',NULL),(60,'Dayana Dias','Professor','1993-05-30','F',88.30,1.66,'Angola',NULL),(61,'Silvana Albuquerque','Programador','1999-05-22','F',56.00,1.50,'Brasil',NULL);
/*!40000 ALTER TABLE `gafanhotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-05 18:45:10
