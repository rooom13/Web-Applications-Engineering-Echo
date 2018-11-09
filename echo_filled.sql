-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tweet
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `claps`
--

DROP TABLE IF EXISTS `claps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claps` (
  `clapper` varchar(45) NOT NULL,
  `voice` int(11) NOT NULL,
  PRIMARY KEY (`clapper`,`voice`),
  KEY `voicefk_idx` (`voice`),
  CONSTRAINT `clapperfk` FOREIGN KEY (`clapper`) REFERENCES `users` (`username`) ON UPDATE NO ACTION,
  CONSTRAINT `voicefk` FOREIGN KEY (`voice`) REFERENCES `voices` (`idvoice`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claps`
--

LOCK TABLES `claps` WRITE;
/*!40000 ALTER TABLE `claps` DISABLE KEYS */;
/*!40000 ALTER TABLE `claps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `district` varchar(45) NOT NULL,
  `dateLastVoice` datetime NOT NULL,
  PRIMARY KEY (`district`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES ('#BCN','2018-06-23 19:07:09'),('#Gracia','2018-06-23 19:24:10'),('#Kanto','2018-09-19 10:20:27'),('#Kanto</p>','2018-06-24 21:58:16'),('#LesCorts','2018-03-25 18:20:27'),('#LesRambles','2018-06-21 12:20:27'),('#Manhattan','2018-06-23 19:24:59'),('#Medellin','2018-06-19 12:25:27'),('#MonteCarlo','2018-08-19 12:20:27'),('#Rambles','2018-06-19 13:20:27'),('#SaFa','2018-06-19 12:20:27');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `word` varchar(45) NOT NULL,
  PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES ('bike'),('goGreen'),('techno');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userfollowsdistrict`
--

DROP TABLE IF EXISTS `userfollowsdistrict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userfollowsdistrict` (
  `user` varchar(45) NOT NULL,
  `district` varchar(45) NOT NULL,
  PRIMARY KEY (`user`,`district`),
  KEY `districtufd_idx` (`district`),
  CONSTRAINT `districtfkufd` FOREIGN KEY (`district`) REFERENCES `districts` (`district`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `userfkufd` FOREIGN KEY (`user`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userfollowsdistrict`
--

LOCK TABLES `userfollowsdistrict` WRITE;
/*!40000 ALTER TABLE `userfollowsdistrict` DISABLE KEYS */;
INSERT INTO `userfollowsdistrict` VALUES ('agapito64','#BCN'),('agapito64','#Gracia'),('ManuLi52','#Gracia'),('juandoc','#Kanto</p>'),('VictorBk','#LesRambles'),('agapito64','#Manhattan'),('JoseLuis','#Medellin'),('VictorBk','#MonteCarlo'),('MariaRod','#Rambles');
/*!40000 ALTER TABLE `userfollowsdistrict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userfollowsuser`
--

DROP TABLE IF EXISTS `userfollowsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userfollowsuser` (
  `follower` varchar(45) NOT NULL,
  `followed` varchar(45) NOT NULL,
  PRIMARY KEY (`follower`,`followed`),
  KEY `followed_idx` (`followed`),
  CONSTRAINT `followedfk` FOREIGN KEY (`followed`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `followerfk` FOREIGN KEY (`follower`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userfollowsuser`
--

LOCK TABLES `userfollowsuser` WRITE;
/*!40000 ALTER TABLE `userfollowsuser` DISABLE KEYS */;
INSERT INTO `userfollowsuser` VALUES ('MariaRod','JoseLuis'),('agapito64','MariaRod');
/*!40000 ALTER TABLE `userfollowsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `pseudonym` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `description` varchar(140) DEFAULT NULL,
  `isAdmin` tinyint(4) NOT NULL DEFAULT '0',
  `picture` varchar(1000) DEFAULT 'https://www.jamf.com/jamf-nation/img/default-avatars/generic-user-purple.png',
  PRIMARY KEY (`username`),
  UNIQUE KEY `mail_UNIQUE` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('agapito64','agapito64@mail.com','Undefined','03DB+zV+elMKuA3K3ehrNeGTAaMwFQ6JW+V7jXIY61Q=','aga','SE','Default description',0,'https://media.giphy.com/media/f8ZiseeYFgOFW/giphy.gif'),('ernesto','ernesto@mail.com','Who cares?','A8IbC95DXcemH0qYnTtA6uNBXsocbDD4M/CilFiZjQ4=','ernesto','AL','Default description',0,'https://www.jamf.com/jamf-nation/img/default-avatars/generic-user-purple.png'),('glad74','admin2@mail.com','Female','A8IbC95DXcemH0qYnTtA6uNBXsocbDD4M/CilFiZjQ4=','Admin2','MC','I am always reading',0,'https://i.pinimg.com/originals/86/a2/db/86a2db2907e130d27235674fb0410e16.gif'),('JoseLuis','admin@mail.com','Male','A8IbC95DXcemH0qYnTtA6uNBXsocbDD4M/CilFiZjQ4=','Admin','AL','Connected',0,'https://www.jamf.com/jamf-nation/img/default-avatars/generic-user-purple.png'),('juan','juan@mail.com','Who cares?','5eMiFDZJrf1rq2IGDqLJIMIFG9aaBtECgP6pjMv9fME=','juan','AL','Default description',0,'https://www.jamf.com/jamf-nation/img/default-avatars/generic-user-purple.png'),('juandoc','juandoc64@mail.com','Male','WN2ujTxZxxAtRXlE1bxfqQqTHrImcsvzLl4SmirrkFM=','frans','US','Default description',1,'https://media.tenor.com/images/a507d6519065e444ce004fa2f37f2689/tenor.gif'),('ManuLi52','manu52@github.com','Male','A8IbC95DXcemH0qYnTtA6uNBXsocbDD4M/CilFiZjQ4=','activist','AF','Concern about the world',0,'https://i.pinimg.com/originals/1c/58/87/1c58875f2f7828f172d7e30212ff5190.gif'),('MariaRod','mar201@gmail.com','Female','A8IbC95DXcemH0qYnTtA6uNBXsocbDD4M/CilFiZjQ4=','bio2015','LU','Biology',0,'https://i.pinimg.com/originals/18/99/84/189984ef78e4722151ea85b0272392e8.gif'),('MikeJons','jaime1982@oetic.com','Undefined','A8IbC95DXcemH0qYnTtA6uNBXsocbDD4M/CilFiZjQ4=','oficinista','BN','Always listening to my neighbours',0,'https://i.pinimg.com/originals/d1/56/74/d156746ba8105ca1443e0a884411a452.gif'),('NonExistentUser','nonexistentuser@mail.com','Who cares?','NbLhm+HQ5slrUF5jEgkWsmt/MYf/Gic62LKHobzCvN0=','NonExistentUser','AL','It seems the user you are looking for does not exist!!!',0,'https://www.jamf.com/jamf-nation/img/default-avatars/generic-user-purple.png'),('VictorBk','vicbk@upf.com','Male','A8IbC95DXcemH0qYnTtA6uNBXsocbDD4M/CilFiZjQ4=','biker21','EG','I enjoy riding on my bike',0,'https://i.pinimg.com/originals/e8/2c/6f/e82c6fbc4ceb07701672b8fe6a5d8203.gif');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voicerepliesvoice`
--

DROP TABLE IF EXISTS `voicerepliesvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voicerepliesvoice` (
  `reply` int(11) NOT NULL,
  `replied` int(11) NOT NULL,
  `voicerepliesvoice` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`voicerepliesvoice`),
  KEY `repliedfk_idx` (`replied`),
  KEY `replyfkvrv_idx` (`reply`),
  CONSTRAINT `repliedfkvrv` FOREIGN KEY (`replied`) REFERENCES `voices` (`idvoice`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `replyfkvrv` FOREIGN KEY (`reply`) REFERENCES `voices` (`idvoice`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voicerepliesvoice`
--

LOCK TABLES `voicerepliesvoice` WRITE;
/*!40000 ALTER TABLE `voicerepliesvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `voicerepliesvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voices`
--

DROP TABLE IF EXISTS `voices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voices` (
  `idvoice` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(45) NOT NULL,
  `content` varchar(140) NOT NULL,
  `district` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `fatherid` int(11) DEFAULT NULL,
  PRIMARY KEY (`idvoice`),
  KEY `authorfk_idx` (`author`),
  KEY `districtfk_idx` (`district`),
  KEY `district_v_fk_idx` (`district`),
  CONSTRAINT `authorfk` FOREIGN KEY (`author`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `district_v_fk` FOREIGN KEY (`district`) REFERENCES `districts` (`district`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voices`
--

LOCK TABLES `voices` WRITE;
/*!40000 ALTER TABLE `voices` DISABLE KEYS */;
INSERT INTO `voices` VALUES (4,'ManuLi52','The verdi cinema is always full #Gracia','#Gracia','2018-06-11 12:29:27',0),(5,'ManuLi52','The square is full of kids drinking #Gracia','#Gracia','2018-08-13 12:16:14',0),(10,'JoseLuis','Hi Everybody #Medellin','#Medellin','2018-06-19 12:25:27',0),(11,'MariaRod','There should be less tourists #Rambles','#Rambles','2018-06-19 13:20:27',0),(12,'VictorBk','Shopping on Zara #LesRambles','#LesRambles','2018-06-21 12:20:27',0),(13,'VictorBk','Trying my new bike #MonteCarlo','#MonteCarlo','2018-08-19 12:20:27',0),(39,'agapito64','having a good time at upf #BCN','#BCN','2018-06-23 19:07:09',NULL),(40,'agapito64','My neighbours are so kind #Gracia','#Gracia','2018-06-23 19:24:10',NULL),(41,'agapito64','Great trip to learn how other communities interact #Manhattan','#Manhattan','2018-06-23 19:24:59',NULL),(42,'juandoc','THIS IS A REVOICE FROM felip2014: \n				<p>Japanese people is very kind #Kanto</p>\n			','#Kanto</p>','2018-06-24 21:58:12',NULL);
/*!40000 ALTER TABLE `voices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voiceshastopics`
--

DROP TABLE IF EXISTS `voiceshastopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voiceshastopics` (
  `voice` int(11) NOT NULL,
  `topic` varchar(45) NOT NULL,
  PRIMARY KEY (`voice`,`topic`),
  KEY `topicfkvht_idx` (`topic`),
  CONSTRAINT `topicfkvht` FOREIGN KEY (`topic`) REFERENCES `topics` (`word`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `voicefkvht` FOREIGN KEY (`voice`) REFERENCES `voices` (`idvoice`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voiceshastopics`
--

LOCK TABLES `voiceshastopics` WRITE;
/*!40000 ALTER TABLE `voiceshastopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `voiceshastopics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-24 22:00:21
