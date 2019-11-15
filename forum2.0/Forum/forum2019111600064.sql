-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: forum
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
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_post`
--

LOCK TABLES `f_post` WRITE;
/*!40000 ALTER TABLE `f_post` DISABLE KEYS */;
INSERT INTO `f_post` VALUES (38,'demo1','node.js 爬虫工具','最近有爬虫网页的需求,node有什么好用的框架或工具么?麻烦大家推荐一下…如果有教程那最好了,以前没接触过爬虫这部分…麻烦大家了…','2019-11-14 20:48:29'),(16,'demo','zhangsan','zhang三','2019-06-08 18:09:38'),(24,'demo','张三','张三123','2019-06-11 18:55:43'),(18,'demo','张三','张三是好人','2019-06-08 21:26:54'),(21,'demo','李四','lis','2019-06-11 18:54:31'),(22,'demo','王五','王五','2019-06-11 18:54:54'),(23,'demo','赵六','赵六','2019-06-11 18:55:19'),(37,'root','root','根','2019-06-13 23:02:19');
/*!40000 ALTER TABLE `f_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username_reply` varchar(255) NOT NULL DEFAULT '',
  `content_reply` varchar(255) NOT NULL DEFAULT '',
  `time_reply` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `postid` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (17,'demo','php','2019-06-13 00:16:58','16'),(18,'demo','PHP','2019-06-13 00:18:28','16'),(32,'demo','用 node + selenium + webdriverio 也可以实现，5.0以上支持无头浏览器','2019-11-15 19:58:18','38'),(19,'demo','张三是个好人','2019-06-13 00:22:20','21'),(7,'demo3','张三是个好人','2019-06-10 22:10:36','18'),(33,'demo','其实很多都是superagent加cheerio搭配，这种只能抓HTML上有的数据，原理就是下载网页进行分析。抓取ajax数据什么的，需要无头浏览器。','2019-11-15 19:59:30','38'),(24,'demo','张三不是好人','2019-06-13 14:53:28','18'),(34,'demo','https://github.com/sunfeng90/node-spider @iori2882 可以看一下','2019-11-15 20:02:59','38'),(35,'demo','谢谢例子简单正用的上…学习一下','2019-11-15 20:04:37','38'),(36,'demo','https://github.com/surmon-china/vue-video-player','2019-11-15 20:06:30','38'),(37,'','这应该是ab的预请求，就是第一次判断服务是否可用','2019-11-15 20:10:07','38'),(38,'','demo','2019-11-15 20:18:50','38'),(39,'demo1','demo123','2019-11-15 20:22:35','38'),(40,'demo1','6666','2019-11-15 20:40:20','38');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'demo3','ae6e334f62fb5d989398deed87568c94','1233@qq.com',0),(2,'demo1','e10adc3949ba59abbe56e057f20f883e','1233@qq.com',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-16  0:06:06
