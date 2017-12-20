-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: attention
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `room_users`
--

DROP TABLE IF EXISTS `room_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_users` (
  `room_uuid` varchar(100) NOT NULL,
  `user_uuid` varchar(100) NOT NULL,
  PRIMARY KEY (`room_uuid`,`user_uuid`),
  CONSTRAINT `fk_users` FOREIGN KEY (`room_uuid`) REFERENCES `room` (`room_uuid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_users`
--

LOCK TABLES `room_users` WRITE;
/*!40000 ALTER TABLE `room_users` DISABLE KEYS */;
INSERT INTO `room_users` VALUES ('052ce6fbedfb497c965d26d5af311028','4da15c84c60b4fe2af692e55d173d30a'),('052ce6fbedfb497c965d26d5af311028','95bd2799968144219f5bda244ed4f14c'),('052ce6fbedfb497c965d26d5af311028','af77ddba7afd416cb3bb624516a5dbb1'),('0ad5bf0830ca4167be801f6a00f3ef43','4da15c84c60b4fe2af692e55d173d30a'),('0ad5bf0830ca4167be801f6a00f3ef43','95bd2799968144219f5bda244ed4f14c'),('0ad5bf0830ca4167be801f6a00f3ef43','af77ddba7afd416cb3bb624516a5dbb1'),('1b200b80d8a24599b553ac483afceaf5','4da15c84c60b4fe2af692e55d173d30a'),('1b200b80d8a24599b553ac483afceaf5','95bd2799968144219f5bda244ed4f14c'),('1b200b80d8a24599b553ac483afceaf5','af77ddba7afd416cb3bb624516a5dbb1'),('1be17c93f561422c8fbd8393777dd966','95bd2799968144219f5bda244ed4f14c'),('1be17c93f561422c8fbd8393777dd966','af77ddba7afd416cb3bb624516a5dbb1'),('2e197f3e5da14139b9b45f9fb04b9a45','4da15c84c60b4fe2af692e55d173d30a'),('2e197f3e5da14139b9b45f9fb04b9a45','95bd2799968144219f5bda244ed4f14c'),('2e197f3e5da14139b9b45f9fb04b9a45','af77ddba7afd416cb3bb624516a5dbb1'),('311ea044bc624f0cbae077917b7da6cf','4da15c84c60b4fe2af692e55d173d30a'),('311ea044bc624f0cbae077917b7da6cf','95bd2799968144219f5bda244ed4f14c'),('311ea044bc624f0cbae077917b7da6cf','af77ddba7afd416cb3bb624516a5dbb1'),('4a227584bb724cd2ba2693669dd78fce','95bd2799968144219f5bda244ed4f14c'),('4a227584bb724cd2ba2693669dd78fce','af77ddba7afd416cb3bb624516a5dbb1'),('5dfd10eff1724d278fc486bf8245b775','4da15c84c60b4fe2af692e55d173d30a'),('5dfd10eff1724d278fc486bf8245b775','95bd2799968144219f5bda244ed4f14c'),('5dfd10eff1724d278fc486bf8245b775','af77ddba7afd416cb3bb624516a5dbb1'),('66cddb840ba04b05885d2c4512cc151c','4da15c84c60b4fe2af692e55d173d30a'),('66cddb840ba04b05885d2c4512cc151c','95bd2799968144219f5bda244ed4f14c'),('66cddb840ba04b05885d2c4512cc151c','af77ddba7afd416cb3bb624516a5dbb1'),('6e7d41c378914f69bf5111a3de77a631','4da15c84c60b4fe2af692e55d173d30a'),('6e7d41c378914f69bf5111a3de77a631','95bd2799968144219f5bda244ed4f14c'),('8f21d75324bd402588a6a06baea278f0','4da15c84c60b4fe2af692e55d173d30a'),('8f21d75324bd402588a6a06baea278f0','95bd2799968144219f5bda244ed4f14c'),('a08444ac6acb487ba7a469e70d48b46b','4da15c84c60b4fe2af692e55d173d30a'),('a08444ac6acb487ba7a469e70d48b46b','95bd2799968144219f5bda244ed4f14c'),('a08444ac6acb487ba7a469e70d48b46b','af77ddba7afd416cb3bb624516a5dbb1'),('a5f3354054214b1f87fe6b198bb75b77','4da15c84c60b4fe2af692e55d173d30a'),('a5f3354054214b1f87fe6b198bb75b77','95bd2799968144219f5bda244ed4f14c'),('a5f3354054214b1f87fe6b198bb75b77','af77ddba7afd416cb3bb624516a5dbb1'),('bf36a4afc10f46b2b470225a507b6d9e','4da15c84c60b4fe2af692e55d173d30a'),('bf36a4afc10f46b2b470225a507b6d9e','95bd2799968144219f5bda244ed4f14c'),('bf36a4afc10f46b2b470225a507b6d9e','af77ddba7afd416cb3bb624516a5dbb1'),('c0b9ab1c925c43ddb75c3ab398afe081','95bd2799968144219f5bda244ed4f14c'),('c0b9ab1c925c43ddb75c3ab398afe081','af77ddba7afd416cb3bb624516a5dbb1'),('c802deb1d95743c6a63a2b364826f642','4da15c84c60b4fe2af692e55d173d30a'),('c802deb1d95743c6a63a2b364826f642','95bd2799968144219f5bda244ed4f14c'),('c802deb1d95743c6a63a2b364826f642','af77ddba7afd416cb3bb624516a5dbb1'),('e4885527593041eda23a966d84ca5909','4da15c84c60b4fe2af692e55d173d30a'),('e4885527593041eda23a966d84ca5909','95bd2799968144219f5bda244ed4f14c'),('e4885527593041eda23a966d84ca5909','af77ddba7afd416cb3bb624516a5dbb1'),('e5636a3d7b964012bd9daf2e4b6aab35','4da15c84c60b4fe2af692e55d173d30a'),('e5636a3d7b964012bd9daf2e4b6aab35','af77ddba7afd416cb3bb624516a5dbb1'),('f84511e3a4c94bfd81da5cc90f4385dd','95bd2799968144219f5bda244ed4f14c'),('f84511e3a4c94bfd81da5cc90f4385dd','af77ddba7afd416cb3bb624516a5dbb1');
/*!40000 ALTER TABLE `room_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-21  8:20:22