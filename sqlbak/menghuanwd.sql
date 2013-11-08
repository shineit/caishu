-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: menghuanwd_development
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'图片分类','2013-10-17 00:47:47','2013-10-17 00:47:47','photo_categories'),(2,'美文','2013-10-17 00:48:02','2013-10-17 00:48:02','essays'),(3,'心情随笔','2013-10-17 00:48:23','2013-10-17 00:48:23','moods'),(4,'焦点图管理','2013-10-17 00:48:39','2013-10-17 00:48:39','focus'),(5,'哲理','2013-10-20 18:51:31','2013-10-20 18:51:31','philosophies'),(6,'备忘笔记','2013-10-20 18:51:49','2013-10-20 19:40:40','notes'),(7,'笔记分类','2013-10-20 18:51:59','2013-10-20 18:51:59','note_categories'),(8,'笑话','2013-10-20 18:52:43','2013-10-20 18:52:43','jokes'),(9,'美文','2013-10-20 19:09:42','2013-10-20 19:09:42','essays'),(10,'图片管理','2013-10-20 19:32:30','2013-10-20 19:32:30','photos');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counttexts`
--

DROP TABLE IF EXISTS `counttexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counttexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ii` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counttexts`
--

LOCK TABLES `counttexts` WRITE;
/*!40000 ALTER TABLE `counttexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `counttexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `essays`
--

DROP TABLE IF EXISTS `essays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `essays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essays`
--

LOCK TABLES `essays` WRITE;
/*!40000 ALTER TABLE `essays` DISABLE KEYS */;
INSERT INTO `essays` VALUES (1,'美文摘抄','你的梦想，是复制别人的么？','<p><span style=\"font-size:20px\">&nbsp; &nbsp; 从小我们就变要求一模一样。服装一样，发型一样，就连人生的梦想也一模一样。考个像样的学校，找个像样的工作，租个像样的房子，过个像样的人生。曾经有着自己的梦想心跳很执着，曾经有着自己喜欢的东西就算没有人明白也没关系。终于有一天，你听最流行的音乐，看最卖座的电影，去最热门的电影，读最畅销的图书，什么时候起，是谁把我变成现在的我。</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><img alt=\"你的梦想，是复制别人的么？\" src=\"http://www.szwj72.cn/Article/UploadFiles/201310/2013102109382846.jpg\" style=\"border:1px solid rgb(204, 204, 204); display:none; height:274px; max-height:400px; max-width:600px; padding:2px; vertical-align:middle; width:500px\" /></span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 老妈说，总有一天你的棱角会被世界磨平，你会拔掉身上的刺，你会学着对讨厌的人微笑，你会变成一个不动声色的人。总是觉得自己还没有准备好，就已经长大了，大人的世界蛮累的，很难懂，有那么多字典里无法解释的字眼，有那么多努力做好了也不会被所有人喜欢的事情。慢慢地，对那些伤害过我我伤害过的人习惯沉默，不去辩解不去反驳。有一天朋友指着你的痛处哈哈大笑，你却只能赔笑，怕被他们说开不起玩笑。明明最难过的是你，最先道歉的也是你。</span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 大学前好像有很多的梦想，总觉得有一天它们都会实现，身边有一群谈天说地一起傻逼的朋友，总觉得他们会一直陪在身边一起向着梦想前进。后来就把梦想弄丢了，那些朋友也找不到了，好像少了些什么，好像人一长大就会把那些丢了。开始想得越来越多反而不能义无反顾，也不会因为单纯的喜欢而跟那个人在一起，更不会再说那些，即使全世界要我们分开我们也不会分开，之类的话了。</span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 甚至不明白自己，到底真的相信我爱你这句话，还是只是想要，有个人对你说，我爱你，这样的话，而内心深处却并不一定是真的相信它。终于开始想，成长是不是人必经的溃烂，是不是收敛一点循规蹈矩一点，生活就会比较好过。是不是即使两个人相爱也是会分开的。是不是青春这个东西就这么没有了，是不是成长是这个世界上最痛苦最郁闷的事情。</span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 谁不曾想要自己的青春牛逼闪闪，谁不曾想要经历一些特别的事情去一些特别的地方，谁不曾想要轰轰烈烈度过那几年，谁不曾有着我们各自的梦想，开一个咖啡店，做一个背包客，开一家可以自己布置的书店，去山区支教，成为一个superstar，写一本书，或者做自己心里想要做的事情，可是为什么到最后我们变得一模一样，慢慢地梦想，就变成了，要赚很多很多的钱，要赚更多更多的钱，要住个不错的房子买个好看的手机有个漂亮带的出去的女朋友，过个像样的人生。如果梦想都一样，那还是梦想么。</span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 绝大多数人，也只是这样，没有遇到什么贵人，没有那么出众的天分，可是这也是世界的一部分，而这个世界上总有着那么一些人，在向前走着。也许有人说你梦想太大不切实际，又有人说你梦想太小胸无大志，有人又对你的梦想不屑一顾，那就不要去解释，没有必要，如果你在乎他总是不在乎，你梦想的东西他总是不屑一顾，那就不要去管那些人。因为他们不明白，也许那些你想要的东西在他们眼里不值一提，在你心里却是最珍贵也是最重要的东西，因为他们不知道，一个人的梦想也许不值钱，但是一个人的努力很值钱。</span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 如果你哭，你只能一个人哭，没有人在意你的懦弱，只有慢慢选择坚强。如果你笑，全世界都会陪着你笑，你给世界一缕阳光，世界还你一个春天。很多时候，我们都是在寂寞中行走，在孤独中思考，不要期望他人解读你的心灵，认同你的思想，要知道，你只是行走在世界的路上，而世界却给了你全部天空。</span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 所以为什么不勇敢地做自己一次看看。做你想要做的事情，因为能找到自己真正想要的事情就已经很难得了。</span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 我们的生命是有限的，青春更加的短暂，不要去过别人的生活，因为你是你。我们不能选择何时降临在这个世界上，我们不能选择我们的父母是谁，我们也不能选择自己会出生在什么地方，出生在什么国家，会在什么样的一个环境里成长。但是我们可以选择成为一个怎么样的人，过一个怎么样的人生，我们可以决定什么才是生命中最重要的东西。也许这个世界，你身边的人不会在乎你的选择你的决定，但是那却是我们自己的决定，最后我们就会变成那样的人。</span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 世界很操蛋，没有人否认这一点，但是其实这个世界也没有你想象的那么坏，因为我们都是这个世界的一部分，所以这是世界上还有那么一部分人，很大一部分人，在向着梦想走着，去相信这个世界的美好去相信未来相信爱情，即使最后一无所有，一事无成，至少不会遗憾，就够了。</span></p>\r\n\r\n<p><span style=\"font-size:20px\">&nbsp;&nbsp;&nbsp; 我们的生活就是在不断地出发中重生的，然后再遇到，最好的自己。</span></p>\r\n','2013-10-20 19:10:20','2013-10-20 19:10:20');
/*!40000 ALTER TABLE `essays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focus`
--

DROP TABLE IF EXISTS `focus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_category_id` int(11) DEFAULT NULL,
  `alias_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus`
--

LOCK TABLES `focus` WRITE;
/*!40000 ALTER TABLE `focus` DISABLE KEYS */;
INSERT INTO `focus` VALUES (3,'dd',1,'b6e13ad53d8ec41b034c49f131c64e99cf25207a.png','http://static.menghuanwd.cn/uploaders/origin/b6e13ad53d8ec41b034c49f131c64e99cf25207a.png',NULL,'2013-10-17 01:34:15','2013-10-17 01:34:15'),(4,'asd',1,'2f84417a9e73cead4d5c99e05daff2a534b30132.png','http://static.menghuanwd.cn/uploaders/origin/2f84417a9e73cead4d5c99e05daff2a534b30132.png',NULL,'2013-10-17 01:34:27','2013-10-17 01:34:27'),(5,'sdsd',1,'cd418e0283c11984d9c1aab7a0fd639745c94085.png','http://static.menghuanwd.cn/uploaders/origin/cd418e0283c11984d9c1aab7a0fd639745c94085.png',NULL,'2013-10-17 01:34:34','2013-10-17 01:34:34'),(6,'sd',1,'950a39b6c2934bb72f2def76c71e88e9c035385f.png','http://static.menghuanwd.cn/uploaders/origin/950a39b6c2934bb72f2def76c71e88e9c035385f.png',NULL,'2013-10-17 01:34:44','2013-10-17 01:34:44');
/*!40000 ALTER TABLE `focus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jokes`
--

DROP TABLE IF EXISTS `jokes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jokes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jokes`
--

LOCK TABLES `jokes` WRITE;
/*!40000 ALTER TABLE `jokes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jokes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mood_categories`
--

DROP TABLE IF EXISTS `mood_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mood_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mood_categories`
--

LOCK TABLES `mood_categories` WRITE;
/*!40000 ALTER TABLE `mood_categories` DISABLE KEYS */;
INSERT INTO `mood_categories` VALUES (1,'2013-10','2013-10-20 19:12:57','2013-10-20 19:12:57');
/*!40000 ALTER TABLE `mood_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moods`
--

DROP TABLE IF EXISTS `moods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_mood_id` int(11) DEFAULT NULL,
  `mood_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moods`
--

LOCK TABLES `moods` WRITE;
/*!40000 ALTER TABLE `moods` DISABLE KEYS */;
INSERT INTO `moods` VALUES (1,'新站初始化','之前数据库资料全部丢失，现在初始化中。',NULL,NULL,'2013-10-20 19:12:56','2013-10-20 19:12:56');
/*!40000 ALTER TABLE `moods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musics`
--

DROP TABLE IF EXISTS `musics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `music_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musics`
--

LOCK TABLES `musics` WRITE;
/*!40000 ALTER TABLE `musics` DISABLE KEYS */;
/*!40000 ALTER TABLE `musics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_categories`
--

DROP TABLE IF EXISTS `note_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_categories`
--

LOCK TABLES `note_categories` WRITE;
/*!40000 ALTER TABLE `note_categories` DISABLE KEYS */;
INSERT INTO `note_categories` VALUES (1,'安装教程','2013-10-20 19:13:41','2013-10-20 19:14:25'),(2,'gem教程','2013-10-20 19:14:45','2013-10-20 19:14:45');
/*!40000 ALTER TABLE `note_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `note_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'redis 安装','<div style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; line-height: normal; orphans: 2; text-align: -webkit-auto; widows: 2;\">\r\n<div>\r\n<p>下载安装<br />\r\nwget http://download.redis.io/releases/redis-2.6.16.tar.gz<br />\r\ntar xzf redis-2.6.16.tar.gz<br />\r\ncd redis-2.6.16<br />\r\nmake<br />\r\nsudo make install</p>\r\n\r\n<p>下载启动文件<br />\r\nwget https://github.com/ijonas/dotfiles/raw/master/etc/init.d/redis-server<br />\r\nwget https://github.com/ijonas/dotfiles/raw/master/etc/redis.conf<br />\r\nsudo mv redis-server /etc/init.d/redis-server<br />\r\nsudo chmod +x /etc/init.d/redis-server<br />\r\nsudo mv redis.conf /etc/redis.conf</p>\r\n\r\n<p>创建redis用户<br />\r\nsudo useradd redis<br />\r\nsudo mkdir -p /var/lib/redis<br />\r\nsudo mkdir -p /var/log/redis<br />\r\nsudo chown redis.redis /var/lib/redis<br />\r\nsudo chown redis.redis /var/log/redis</p>\r\n\r\n<p>设置开机启动项<br />\r\nsudo update-rc.d redis-server defaults</p>\r\n\r\n<p>启动<br />\r\nsudo /etc/init.d/redis-server start</p>\r\n\r\n<p>设置密码<br />\r\nCONFIG SET requirepass secret_password&nbsp;</p>\r\n\r\n<p>出错处理：<br />\r\nconfig set stop-writes-on-bgsave-error no</p>\r\n</div>\r\n</div>\r\n',1,'2013-10-20 19:15:19','2013-10-20 19:15:48');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `philosophies`
--

DROP TABLE IF EXISTS `philosophies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `philosophies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `philosophies`
--

LOCK TABLES `philosophies` WRITE;
/*!40000 ALTER TABLE `philosophies` DISABLE KEYS */;
INSERT INTO `philosophies` VALUES (1,'人生如戏，不揭穿而已。有些话难听，就是不会演戏。                                            ------虞佳',NULL,'2013-10-20 19:11:00','2013-10-20 19:11:50');
/*!40000 ALTER TABLE `philosophies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_categories`
--

DROP TABLE IF EXISTS `photo_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_categories`
--

LOCK TABLES `photo_categories` WRITE;
/*!40000 ALTER TABLE `photo_categories` DISABLE KEYS */;
INSERT INTO `photo_categories` VALUES (1,'剑灵','2013-10-17 01:18:14','2013-10-17 01:18:14'),(2,'蔡淑英','2013-10-20 19:31:51','2013-10-20 19:31:51');
/*!40000 ALTER TABLE `photo_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_details`
--

DROP TABLE IF EXISTS `photo_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `click_times` int(11) DEFAULT '0',
  `download_times` int(11) DEFAULT '0',
  `photo_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_details`
--

LOCK TABLES `photo_details` WRITE;
/*!40000 ALTER TABLE `photo_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (2,'957a2cd50283d63f502901bfc5be77e1b2fefb7c.jpg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/957a2cd50283d63f502901bfc5be77e1b2fefb7c.jpg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(3,'1a78febdb74e037b57726df487b4ecba618e667c.jpeg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/1a78febdb74e037b57726df487b4ecba618e667c.jpeg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(4,'e22309e66165d7fe99627e97117dcb4429aa3697.jpeg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/e22309e66165d7fe99627e97117dcb4429aa3697.jpeg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(5,'2f71ac52b8443a8259a094be7053fc48b80d7975.jpg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/2f71ac52b8443a8259a094be7053fc48b80d7975.jpg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(6,'08fda0244b5397e030ee401fd2bea5b24f78a72b.jpg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/08fda0244b5397e030ee401fd2bea5b24f78a72b.jpg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(7,'b42a9e8f12b42d83dfe2621bda578f6896cd05ba.jpeg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/b42a9e8f12b42d83dfe2621bda578f6896cd05ba.jpeg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(8,'eb055da32a3aa491ee514a5f059501497d8ce5ae.jpg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/eb055da32a3aa491ee514a5f059501497d8ce5ae.jpg','2013-10-20 19:37:44','2013-10-20 19:37:44');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130820111611'),('20130820111735'),('20130820111830'),('20130820111910'),('20130826065905'),('20130903055231'),('20130905041928'),('20130905045231'),('20130917080259'),('20130917080312'),('20130918025724'),('20130918052501'),('20130918054337'),('20130918092639'),('20130922032359'),('20130924014836'),('20130929054405'),('20131017033553'),('20131017033617'),('20131021020926');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'redis','redis','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weblinks`
--

DROP TABLE IF EXISTS `weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weblinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weblinks`
--

LOCK TABLES `weblinks` WRITE;
/*!40000 ALTER TABLE `weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-20 19:41:54
