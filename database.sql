-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: biblio_eh_ns
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `abonnes`
--

DROP TABLE IF EXISTS `abonnes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abonnes` (
  `id_abonne` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `age` int NOT NULL,
  `courriel` varchar(70) NOT NULL,
  PRIMARY KEY (`id_abonne`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonnes`
--

LOCK TABLES `abonnes` WRITE;
/*!40000 ALTER TABLE `abonnes` DISABLE KEYS */;
INSERT INTO `abonnes` VALUES (1,'hubert','eric',16,'contact@lyenx.com'),(2,'durand','jean-claude',22,'jeanclaude.durand1@gmail.com'),(3,'martin','yves',58,'martin.yves@free.fr');
/*!40000 ALTER TABLE `abonnes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliotheque`
--

DROP TABLE IF EXISTS `bibliotheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliotheque` (
  `id_livre` smallint unsigned NOT NULL AUTO_INCREMENT,
  `titre_livre` varchar(50) NOT NULL,
  `code_rayon` int NOT NULL,
  `auteur` varchar(50) NOT NULL,
  `editeur` varchar(50) NOT NULL,
  `date_acquisition` datetime NOT NULL,
  `etat` varchar(10) DEFAULT NULL,
  `reservation` varchar(10) DEFAULT NULL,
  `id_abonne` smallint DEFAULT NULL,
  PRIMARY KEY (`id_livre`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliotheque`
--

LOCK TABLES `bibliotheque` WRITE;
/*!40000 ALTER TABLE `bibliotheque` DISABLE KEYS */;
INSERT INTO `bibliotheque` VALUES (1,'Belle',10,'Marsden Todd','Editions Atlas','2019-06-16 12:35:58','reserve','2022-10-16',2),(2,'Isolation totale',9,'Marsden Todd','Editions Atlas','2019-06-26 12:35:58',NULL,NULL,NULL),(3,'Isolation totale',9,'Merritt Garcia','Editions Atlas','2019-06-26 12:35:58',NULL,NULL,NULL),(4,'La marche du si├¿cle',6,'Tucker Patton','Gallimard','2019-05-22 12:35:58','reserve','2022-10-03',1),(5,'Lagon Bleu',4,'Scott Villarreal','Milady','2019-02-17 12:35:58','reserve','2022-10-16',2),(6,'Le tr├┤ne ├®carlate',10,'Fritz Dennis','Eyrolles','2019-08-19 12:35:58',NULL,NULL,NULL),(7,'Le tr├┤ne ├®carlate',10,'Fritz Dennis','Gallimard','2019-03-12 12:35:58',NULL,NULL,NULL),(8,'Le tr├┤ne ├®carlate',10,'Fritz Dennis','Hachette','2019-08-18 12:35:58','reserve','2022-10-16',1),(9,'Les 9 couronnes',1,'John Harris','Hachette','2019-08-18 12:35:58','reserve','2022-10-10',1),(10,'Les 9 couronnes',1,'Nathan Barber','Hachette','2019-02-12 12:35:58',NULL,NULL,NULL),(11,'Les fleurs du Mal',5,'John Harris','Editions Atlas','2019-01-30 12:35:58',NULL,NULL,NULL),(12,'Les fleurs du Mal',5,'Oscar Paul','Editions Atlas','2019-01-30 12:35:58',NULL,NULL,NULL),(13,'Les fleurs du Mal',5,'John Harris','Flammarion','2019-08-10 12:35:58',NULL,NULL,NULL),(14,'Les fleurs du Mal',5,'Oscar Paul','Flammarion','2019-08-10 12:35:58','reserve','2022-10-19',3),(15,'Puits sans fond',2,'Oscar Paul','Eyrolles','2019-04-23 12:35:58','reserve','2022-10-13',3),(16,'Puits sans fond',2,'Nathan Barber','Eyrolles','2019-04-23 12:35:58',NULL,NULL,NULL),(17,'Trois dans un appartement',4,'Alfonso Fuentes','Bayard','2019-06-16 12:35:58','reserve','2022-10-05',1),(18,'Vol de nuit',2,'Marshall Mccoy','Editions Atlas','2019-06-16 12:35:58',NULL,NULL,NULL);
/*!40000 ALTER TABLE `bibliotheque` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-19 18:02:59
