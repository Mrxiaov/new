-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: Forum
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `f_post`
--

DROP TABLE IF EXISTS `f_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_post` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT '主题',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_post`
--

LOCK TABLES `f_post` WRITE;
/*!40000 ALTER TABLE `f_post` DISABLE KEYS */;
INSERT INTO `f_post` VALUES (16,'demo','zhangsan','zhang三','2019-06-08 18:09:38'),(24,'demo','张三','张三123','2019-06-11 18:55:43'),(18,'demo','张三','张三是好人','2019-06-08 21:26:54'),(21,'demo','李四','lis','2019-06-11 18:54:31'),(22,'demo','王五','王五','2019-06-11 18:54:54'),(23,'demo','赵六','赵六','2019-06-11 18:55:19'),(37,'root','root','根','2019-06-13 23:02:19');
/*!40000 ALTER TABLE `f_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_user`
--

DROP TABLE IF EXISTS `f_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `sex` varchar(255) NOT NULL DEFAULT '',
  `birthday` varchar(255) DEFAULT '',
  `user_tel` varchar(255) NOT NULL DEFAULT '',
  `user_address` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `admin` varchar(255) NOT NULL DEFAULT '0' COMMENT '权限 0为用户',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_user`
--

LOCK TABLES `f_user` WRITE;
/*!40000 ALTER TABLE `f_user` DISABLE KEYS */;
INSERT INTO `f_user` VALUES (1,'demo','张三','e10adc3949ba59abbe56e057f20f883e','男','2019-06-14','18307284723','123','2282586126','2282586126@qq.com','1'),(2,'demo2','李四','e10adc3949ba59abbe56e057f20f883e','男','2018-06-06','18307284723','123','2282586126','2282586126@qq.com','1'),(3,'demo3','王五','e10adc3949ba59abbe56e057f20f883e','男','2019-06-14','18307284723','','2282586126','2282586126@qq.com','0'),(4,'demo4','找','e10adc3949ba59abbe56e057f20f883e','男','2019-06-20','18307284723','123','2282586126','2282586126@qq.com','0'),(8,'root','admin','63a9f0ea7bb98050796b649e85481845','男','2019-06-08','18307284723','123','2282586126','2282586126@qq.com','0'),(9,'root2','root','63a9f0ea7bb98050796b649e85481845','男','2019-06-14','18307284723','123','2282586126','2282586126@qq.com','0'),(11,'德莫','admin','63a9f0ea7bb98050796b649e85481845','男','2019-06-15','18307284723','123','2282586126','2282586126@qq.com','0');
/*!40000 ALTER TABLE `f_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `postid` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (17,'demo','张三不是好人','2019-06-13 00:16:58','16'),(18,'demo','zhangsan 123','2019-06-13 00:18:28','16'),(19,'demo','张三是个好人','2019-06-13 00:22:20','21'),(7,'demo3','张三是个好人','2019-06-10 22:10:36','18'),(20,'demo','张三不是好人','2019-06-13 00:22:33','22'),(21,'demo','zhangsan 123','2019-06-13 00:23:24','22'),(22,'demo','张三是个好人','2019-06-13 00:24:15','22'),(24,'demo','张三不是好人','2019-06-13 14:53:28','18');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-13 23:10:18
