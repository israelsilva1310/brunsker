--
-- Current Database: `brunsker`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `brunsker` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `brunsker`;

-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: brunsker
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `document` varchar(11) DEFAULT NULL,
  `create` timestamp NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Robson','Santos','robson1@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(2,'Alexandre','Santos','alexandre27@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(3,'Willian','Santos','willian28@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(4,'Eleno','Santos','eleno29@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(5,'Lucas','Santos','lucas30@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(6,'Mateus','Santos','mateus31@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(7,'João','Santos','joão32@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(8,'Felipe','Santos','felipe33@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(9,'Anderson','Santos','anderson34@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(10,'Elton','Santos','elton35@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(11,'Leonardo','Santos','leonardo36@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(12,'Regilton','Santos','regilton37@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(13,'Sidney','Santos','sidney38@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(14,'Lourival','Santos','lourival39@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(15,'Henrique','Santos','henrique40@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(16,'Daniel','Santos','daniel41@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(17,'Pedro','Santos','pedro42@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(18,'Andre Roberto','Santos','andre roberto43@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(19,'Ozeias','Santos','ozeias44@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(20,'Arnobio','Santos','arnobio45@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(21,'Roniel','Santos','roniel46@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(22,'Caíque','Santos','caíque47@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(23,'Lucas','Santos','lucas48@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(24,'Francisco','Santos','francisco49@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(25,'Cristian','Santos','cristian50@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(26,'Eduardo','Santos','eduardo51@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(27,'Rodrigo','Santos','rodrigo52@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(28,'Raphael','Santos','raphael53@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(29,'Jose','Santos','jose54@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(30,'Rodrigo','Santos','rodrigo55@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(31,'Diego','Santos','diego56@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(32,'Alexandre','Santos','alexandre57@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(33,'Edimar','Santos','edimar58@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(34,'Jackell','Santos','jackell59@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(35,'Luis','Santos','luis60@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(36,'Lucas','Santos','lucas61@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(37,'Wander','Santos','wander62@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(38,'Tairo','Santos','tairo63@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(39,'Rubens','Santos','rubens64@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(40,'Hugo','Santos','hugo65@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(41,'Gustavo','Santos','gustavo66@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(42,'Paulo','Santos','paulo67@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(43,'Rodrigo','Santos','rodrigo68@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(44,'Denio','Santos','denio69@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(45,'Idalmir','Santos','idalmir70@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(46,'Ataide','Santos','ataide71@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(47,'Luiz','Santos','luiz72@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(48,'Luciano','Santos','luciano73@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(49,'Adir','Santos','adir74@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(50,'Tainan','Santos','tainan75@email.com.br',NULL,'2020-08-13 22:44:02','2020-08-13 22:44:23'),(61,'Israel','Silva','israel@email.com.br','09078141662','2020-08-16 17:45:16','2020-08-16 17:45:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-17 14:11:22
