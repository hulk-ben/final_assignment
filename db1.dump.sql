-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 192.168.56.5    Database: db1
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.1

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
-- Current Database: `db1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db1`;

--
-- Table structure for table `circulation`
--

DROP TABLE IF EXISTS `circulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `circulation` (
  `top` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `price` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`top`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circulation`
--

LOCK TABLES `circulation` WRITE;
/*!40000 ALTER TABLE `circulation` DISABLE KEYS */;
INSERT INTO `circulation` VALUES (1,'联想(Lenovo)天逸510S英特尔酷睿i5商务台式机电脑整机(13代i5-13400 16G 1TB HDD+512G SSD win11)23英寸','4399.00'),(2,'戴尔(Dell)成就3020台式机电脑主机 商用办公电脑整机 (13代i5-13400 16G 256GSSD+1TB)23.8英寸','4199.00'),(3,'联想(Lenovo)台式机电脑主机 扬天M4000q 英特尔酷睿i3(i3-12100 8G 512G Type-C Win11)21.45英寸整机','2999.00'),(4,'Apple Mac mini【教育优惠】 八核M2芯片 8G 256G SSD 台式电脑主机 MMFJ3CH/A','3699.00'),(5,'戴尔(Dell)成就3020台式机电脑主机 商用办公电脑整机 (13代i5-13400 16G 512GSSD+1TB)23.8英寸','4299.00'),(6,'联想(Lenovo)天逸510S 个人商务台式机电脑整机(13代i5-13400  16G 1TB SSD wifi win11 )23英寸','4299.00'),(7,'联想(Lenovo)天逸510S英特尔酷睿i5个人商务台式机电脑整机(12代i5-12400 16G 512G SSD win11)23英寸','4199.00'),(8,'戴尔(Dell)成就3020台式机电脑主机 商用办公电脑整机 (13代i3-13100 16G 256GSSD+1TB)23.8英寸','3599.00'),(9,'联想(Lenovo)天逸510S 个人商务台式机电脑整机(13代i3-13100  16G 512G SSD wifi win11 )23英寸','3599.00'),(10,'惠普HP 小欧S01电脑主机 商务办公台式机（酷睿i3-12100 8G 512GSSD WiFi 注册五年上门）+21.45英寸显示器','2899.00'),(11,'Apple Mac mini 八核M2芯片 16G 256G SSD 台式电脑主机  Z16K0003Q【定制机】','5999.00'),(12,'华硕（ASUS）天选X 2023游戏台式机电脑主机设计师电脑(13代i5-13400F RTX3060 12GB显卡 16G 1TB SSD WiFi6)','6298.00'),(13,'联想(Lenovo)拯救者刃7000K 2023游戏电脑主机(13代i7-13700KF RTX4070Ti 12GB显卡 16G DDR5 1TB SSD )','13988.00'),(14,'联想(Lenovo)扬天M4000q 英特尔酷睿i5 商用台式机电脑整机(13代i5-13400 16G 1T+512G wifi Win11)23英寸','4299.00'),(15,'联想(Lenovo)拯救者刃9000K 2023游戏电脑主机(13代酷睿i9-13900KF RTX4090 24G显卡 64G DDR5 2TB SSD)','32999.00'),(16,'联想(Lenovo)天逸510S英特尔酷睿i7个人商务台式机电脑整机(12代i7-12700 16G 1T+512G SSD win11)23英寸','5799.00'),(17,'联想(Lenovo)台式机电脑主机 扬天M4000q 英特尔酷睿i5(i5-12400 16G 512G Type-C Win11)21.45英寸整机','3899.00'),(18,'苹果Apple Mac mini 2023新款M2芯片迷你台式电脑主机盒子 M2芯片【8G+256G】8核+10核','3386.00'),(19,'华为HUAWEI MateStation S 12代酷睿版商务台式机电脑整机(i5-12400/16G/256GSSD+1THDD集显 WIN11)23.8英寸','4648.00'),(20,'酷开 创维电脑 八核主机办公商用台式机电脑整机（AMD八核A9 8G 256G M.2 WiFi 全国联保）23.8英寸全套','1399.00'),(21,'联想(Lenovo)小新mini主机 英特尔13代酷睿i5 高性能商务台式机电脑（13代i5-13500H 16G 1TB高速固态硬盘 ）','3699.00'),(22,'联想(Lenovo)扬天M4000q 英特尔酷睿i5 商用台式机电脑整机(i5-12400 16G 1T+256G Type-C Win11)23英寸','4199.00'),(23,'惠普HP 星Box商务办公台式电脑主机(13代酷睿i5-13400 16G 1TBSSD WiFi Office 注册五年上门)23.8英寸显示器','3998.00'),(24,'Apple Mac mini 八核M2芯片 16G 512G SSD 台式电脑主机  Z16L0002T【定制机】','7499.00'),(25,'联想(Lenovo)扬天M4000q 英特尔酷睿i3 商用台式机电脑整机(13代i3-13100 16G 512G SSD wifi Win11)23英寸','3499.00'),(26,'戴尔(Dell)灵越3020 台式机电脑主机 商务办公电脑整机(13代i5-13400 16G 256GSSD+1TB)23.8英寸','4999.00'),(27,'惠普(HP)战99 23款商用办公电脑台式主机大机箱(i5-13500 16G 1TSSD WiFi蓝牙 Office)23.8英寸显示器','4298.00'),(28,'戴尔(Dell)成就3020台式机电脑主机 商用办公电脑整机 (13代i3-13100 8G 256GSSD+1TB)23.8英寸','3599.00'),(29,'戴尔(Dell)灵越3020S台式机电脑主机 家用办公电脑整机(13代i5-13400 16G 512GSSD)23.8英寸','3999.00'),(30,'品纯（PINCHUN）英特尔十二核32G内存/台式机电脑主机整机全套组装家用游戏办公 主机+32英寸显示器全套 套六：十二核+32G内存丨RTX3060光追显卡','3747.00');
/*!40000 ALTER TABLE `circulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpus`
--

DROP TABLE IF EXISTS `cpus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpus` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `count` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpus`
--

LOCK TABLES `cpus` WRITE;
/*!40000 ALTER TABLE `cpus` DISABLE KEYS */;
INSERT INTO `cpus` VALUES (1,'intel i5','34万+'),(2,'intel i7','28万+'),(3,'intel i9','6.4万+'),(4,'AMD R7','3.1万+'),(5,'AMD R9','2800+'),(6,'AMD R5','2.5万+'),(7,'AMD 速龙','500+'),(8,'Intel i3','4900+'),(9,'intel E5','700+'),(10,'高通骁龙865+','60+'),(11,'兆芯','1500+'),(12,'飞腾','4400+'),(13,'龙芯','1800+'),(14,'至强W系列','1.7万+'),(15,'Apple M1芯片','2000+'),(16,'海思麒麟 710A','70+'),(17,'Apple M2','2400+'),(18,'高通680','400+'),(19,'A14','1400+'),(20,'Apple M2芯片','1900+'),(21,'Apple M2 Max','600+'),(22,'三星猎户座9611','30+'),(23,'intel','13万+'),(24,'高通骁龙778G 4G','50+'),(25,'Apple M2 Pro','900+'),(26,'麒麟','1700+'),(27,'高通骁龙662','50+'),(28,'海思麒麟990','40+'),(29,'AMD A10','70+'),(30,'高通骁龙670','10+'),(31,'intel Z8300','70+'),(32,'AMD A8','60+'),(33,'海思麒麟710A','40+'),(34,'Apple M1 Max','400+'),(35,'AMD A9','10+'),(36,'高通','200+'),(37,'intel Core-M','400+'),(38,'Apple M1 Pro','700+'),(39,'高通骁龙870','800+'),(40,'intel 至强','300+'),(41,'海思麒麟9000','20+'),(42,'海思麒麟9000E','90+'),(43,'麒麟820','50+'),(44,'高通骁龙750G','100+'),(45,'高通骁龙860','60+'),(46,'高通骁龙865','200+'),(47,'A13','900+'),(48,'A15','1000+'),(49,'Apple M1','1400+'),(50,'虎贲T618','50+'),(51,'intel Z8350','80+'),(52,'AMD R3','1100+'),(53,'AMD 双核','10+'),(54,'AMD 四核','200+'),(55,'intel 奔腾 赛扬','5400+'),(56,'至强Xeon-银牌','200+'),(57,'AMD','5400+'),(58,'intel 其他','6.2万+'),(59,'安卓','4300+'),(60,'高通骁龙','2600+'),(61,'AMD APU','2800+'),(62,'Ryzen 5 5600G','10+'),(63,'AMD 5700U','4'),(64,'至强Xeon-金牌','800+'),(65,'至强Xeon-铂金','40+'),(66,'至强Xeon-铜牌','5.7万+'),(67,'intel i3','2.5万+'),(68,'至强Xeon-E3','2.5万+'),(69,'至强Xeon-E5','4.0万+'),(70,'intel 赛扬','8.2万+'),(71,'intel 奔腾','4500+'),(72,'其他','4000+');
/*!40000 ALTER TABLE `cpus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kinds`
--

DROP TABLE IF EXISTS `kinds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kinds` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `count` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kinds`
--

LOCK TABLES `kinds` WRITE;
/*!40000 ALTER TABLE `kinds` DISABLE KEYS */;
INSERT INTO `kinds` VALUES (1,'台式机','55万+'),(2,'笔记本','34万+'),(3,'游戏本','6.2万+'),(4,'一体机','4.5万+'),(5,'平板电脑','21万+'),(6,'服务器','26万+'),(7,'工作站','5.5万+'),(8,'笔记本配件','56万+'),(9,'平板电脑配件','58万+');
/*!40000 ALTER TABLE `kinds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-26 12:17:01
