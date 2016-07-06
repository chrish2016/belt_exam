-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: friendsdb
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friend` varchar(255) DEFAULT NULL,
  `member` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_friends_users_idx` (`user_id`),
  CONSTRAINT `fk_friends_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pw_hash` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `admin` int(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `friend` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` VALUES (1,'Chris Hamilton','babycakes','chris@home.com','$2b$12$5QzT2h6BlusmPph8RVzBKepEFlO8MmzXk.EwZtNJZVo9l06wQNGeS','1948-01-15',1,'2016-07-06 15:32:07','2016-07-06 15:32:07',NULL),(9,'Andrew Dice Clay','Diceman','diceman@home.com','$2b$12$19Zl48IPNnfWoflaPEUK4ec.JWc7YpRAjBQpPpC8PwuPV9If.gTl2','2023-07-04',0,'2016-07-06 15:55:35','2016-07-06 15:55:35',NULL),(11,'Brittney Spears','Bitch','brittney@home.com','$2b$12$SUBXVXBmLuWNzoeMdHH1EekDgOZlnjk4c452B/IOR7Xdj84Wxs2G2','2016-01-04',0,'2016-07-06 15:57:47','2016-07-06 15:57:47',NULL),(12,'Andre','the Giant','andre@home.com','$2b$12$Mr7fwgwUH5VTSe8m68Dp1e.mrYCEFsQbooyJrBri75zpuD6eNj2iG','2016-07-28',0,'2016-07-06 16:34:39','2016-07-06 16:34:39',NULL),(13,'Richard Pryor','the toy','richard@home.com','$2b$12$RyRcSgjvGrQUHUYfC1whJu6E/juFkJ/6uPpVhshK3mh4eZq.QIwSi','2016-07-01',0,'2016-07-06 16:35:11','2016-07-06 16:35:11',NULL),(14,'Barack Obama','Barack','barack@home.com','$2b$12$j5vYWCnJc2Tlfu.if80ibucenxQj/6UAanR9erxELpd1xk4F2BLnS','2003-02-13',0,'2016-07-06 16:35:51','2016-07-06 16:35:51',NULL),(15,'Hulk Hogan','Hulkster','hulk@home.com','$2b$12$sQDI/iQBx.HIncio/2/eA.HmkBjCd94JKPXeYuPoaGf6z9czoFwBq','1983-04-01',0,'2016-07-06 16:36:23','2016-07-06 16:36:23',NULL);
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

-- Dump completed on 2016-07-06 16:48:57
