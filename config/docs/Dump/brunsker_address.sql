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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `user_id` int(11) unsigned DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(10) DEFAULT NULL,
  `street` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `complement` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `ibge` int(9) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `addr_user` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,51,'33933550','rua manoel pedro vieira, 810','810','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(2,52,'33933550','paraguai','2041','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(3,53,'33933550','emilio daroz ','107','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(4,54,'33933550','rua lavinia moreira da silva','145','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(5,55,'33933550','padre anchieta','121','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(6,56,'33933550','rua amoroso costa','254','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(7,57,'33933550','alaor martins','312','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(8,58,'33933550','rua das violetas','330','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(9,59,'33933550','francisco carlos ','105','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(10,60,'33933550','torino','95','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(11,61,'33933550','rua erotidas','64','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(12,62,'33933550','r. orquideas','169','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(13,63,'33933550','rua joffre motta','44','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(14,64,'33933550','rua piauí','17','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(15,65,'33933550','fernandes marques','1229','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(16,66,'33933550','av. beta','07','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(17,67,'33933550','abagiba','674','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(18,68,'33933550','gumercindo araujo','302','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(19,69,'33933550','rua 01, quadra 35','35b','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(20,70,'33933550','rua piauí','23d','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(21,71,'33933550','rua leopoldina araãºjo','380','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(22,72,'33933550','rua conceiã§ã£o','101','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(23,73,'33933550','rua benedetto bonfilgi','755','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(24,74,'33933550','rua sã£o francisco','17','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(25,75,'33933550','rua dona zulmira','479','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(26,76,'33933550','rua mampituba','740','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(27,77,'33933550','dezeseis','151','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(28,78,'33933550','rua dos goitacazes','375','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(29,79,'33933550','av lucio jose de meneses','930','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(30,80,'33933550','caetano','3457','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(31,81,'33933550','um nova ','335','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(32,82,'33933550','sres area especial','19','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(33,83,'33933550','islandia','99','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(34,84,'33933550','independência','700','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(35,85,'33933550','sebastiã£o thomaz de oliveira','25','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(36,86,'33933550','nogueira','185','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(37,87,'33933550','tv londrina','12','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(38,88,'33933550','teofilo otoni','222','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(39,89,'33933550','joã£o rasmussen','244','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(40,90,'33933550','travessa elizeu araãºjo','46','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(41,91,'33933550','av. dr. joão pessoa','185','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(42,92,'33933550','travessa brandão','4','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(43,93,'33933550','coqueiros','SN','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(44,94,'33933550','estrada m boi mirim','820','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(45,95,'33933550','travessa dos comerciarios ','5','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(46,96,'33933550','dos jacarandas','30','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(47,97,'33933550','dona ermelinda pereira','413','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(48,98,'33933550','rua projetada 02','742','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(49,99,'33933550','samambaia','96','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35'),(50,100,'33933550','rua dos gerã¢nios','110','casa 1',NULL,'Belo Horizonte','MG',NULL,'2020-08-13 23:45:26','2020-08-13 23:45:35');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-17 14:11:21
