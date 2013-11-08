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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focus`
--

LOCK TABLES `focus` WRITE;
/*!40000 ALTER TABLE `focus` DISABLE KEYS */;
INSERT INTO `focus` VALUES (3,'dd',1,'b6e13ad53d8ec41b034c49f131c64e99cf25207a.png','http://static.menghuanwd.cn/uploaders/origin/b6e13ad53d8ec41b034c49f131c64e99cf25207a.png',NULL,'2013-10-17 01:34:15','2013-10-17 01:34:15'),(4,'asd',1,'2f84417a9e73cead4d5c99e05daff2a534b30132.png','http://static.menghuanwd.cn/uploaders/origin/2f84417a9e73cead4d5c99e05daff2a534b30132.png',NULL,'2013-10-17 01:34:27','2013-10-17 01:34:27'),(5,'sdsd',1,'cd418e0283c11984d9c1aab7a0fd639745c94085.png','http://static.menghuanwd.cn/uploaders/origin/cd418e0283c11984d9c1aab7a0fd639745c94085.png',NULL,'2013-10-17 01:34:34','2013-10-17 01:34:34'),(6,'sd',1,'950a39b6c2934bb72f2def76c71e88e9c035385f.png','http://static.menghuanwd.cn/uploaders/origin/950a39b6c2934bb72f2def76c71e88e9c035385f.png',NULL,'2013-10-17 01:34:44','2013-10-17 01:34:44'),(7,'可乐1',3,'03b318f3f18b90148ba96b18304b67c674a793e4.jpeg','http://static.menghuanwd.cn/uploaders/origin/03b318f3f18b90148ba96b18304b67c674a793e4.jpeg',NULL,'2013-10-21 21:54:55','2013-10-21 21:54:55'),(8,'可乐2',3,'9ed213e126ee1aca84df3cf93ccdb688a2706ded.jpeg','http://static.menghuanwd.cn/uploaders/origin/9ed213e126ee1aca84df3cf93ccdb688a2706ded.jpeg',NULL,'2013-10-21 21:55:23','2013-10-21 21:55:23'),(9,'可乐3',3,'3649a9b4cbb8bac4c3e3fa33ecebdb917384f6fa.jpeg','http://static.menghuanwd.cn/uploaders/origin/3649a9b4cbb8bac4c3e3fa33ecebdb917384f6fa.jpeg',NULL,'2013-10-21 21:55:37','2013-10-21 21:55:37'),(10,'可乐4',3,'a9b9897a4ee2c7a0d8892b6d9a43c24e39d92b1f.jpeg','http://static.menghuanwd.cn/uploaders/origin/a9b9897a4ee2c7a0d8892b6d9a43c24e39d92b1f.jpeg',NULL,'2013-10-21 21:55:54','2013-10-21 21:55:54');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_categories`
--

LOCK TABLES `note_categories` WRITE;
/*!40000 ALTER TABLE `note_categories` DISABLE KEYS */;
INSERT INTO `note_categories` VALUES (1,'安装教程','2013-10-20 19:13:41','2013-10-20 19:14:25'),(2,'gem教程','2013-10-20 19:14:45','2013-10-20 19:14:45'),(3,'Linux','2013-10-21 20:12:18','2013-10-21 20:12:18'),(4,'数据库','2013-10-21 20:17:25','2013-10-21 20:17:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'redis 安装','<div style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; line-height: normal; orphans: 2; text-align: -webkit-auto; widows: 2;\">\r\n<div>\r\n<p>下载安装<br />\r\nwget http://download.redis.io/releases/redis-2.6.16.tar.gz<br />\r\ntar xzf redis-2.6.16.tar.gz<br />\r\ncd redis-2.6.16<br />\r\nmake<br />\r\nsudo make install</p>\r\n\r\n<p>下载启动文件<br />\r\nwget https://github.com/ijonas/dotfiles/raw/master/etc/init.d/redis-server<br />\r\nwget https://github.com/ijonas/dotfiles/raw/master/etc/redis.conf<br />\r\nsudo mv redis-server /etc/init.d/redis-server<br />\r\nsudo chmod +x /etc/init.d/redis-server<br />\r\nsudo mv redis.conf /etc/redis.conf</p>\r\n\r\n<p>创建redis用户<br />\r\nsudo useradd redis<br />\r\nsudo mkdir -p /var/lib/redis<br />\r\nsudo mkdir -p /var/log/redis<br />\r\nsudo chown redis.redis /var/lib/redis<br />\r\nsudo chown redis.redis /var/log/redis</p>\r\n\r\n<p>设置开机启动项<br />\r\nsudo update-rc.d redis-server defaults</p>\r\n\r\n<p>启动<br />\r\nsudo /etc/init.d/redis-server start</p>\r\n\r\n<p>设置密码<br />\r\nCONFIG SET requirepass secret_password&nbsp;</p>\r\n\r\n<p>出错处理：<br />\r\nconfig set stop-writes-on-bgsave-error no</p>\r\n</div>\r\n</div>\r\n',1,'2013-10-20 19:15:19','2013-10-20 19:15:48'),(2,'nokogiri','<p>#encoding: utf-8<br />\r\nrequire &#39;nokogiri&#39;<br />\r\nrequire &#39;open-uri&#39;<br />\r\n#申明两个数组变量<br />\r\narr = []<br />\r\nsong_name = []<br />\r\npage=[]<br />\r\n#分页循环<br />\r\n(1..17).each do |x|<br />\r\n&nbsp;doc = Nokogiri::HTML(open(&#39;http://www.ximalaya.com/1372452/?page=&#39;+x.to_s))<br />\r\n&nbsp;#取得每页中的歌曲和点击数<br />\r\n&nbsp;doc.css(&#39;.play-count&#39;).each do |link|<br />\r\n&nbsp; &nbsp;arr &lt;&lt; link.content.to_i<br />\r\n&nbsp; &nbsp;song_name &lt;&lt; link.parent.parent.parent.css(&#39;a&#39;)[0].text<br />\r\n&nbsp;end<br />\r\n&nbsp;page &lt;&lt; arr.size<br />\r\nend<br />\r\n# puts &quot;每页&quot;+page[0].to_s+&quot;首歌&quot;</p>\r\n\r\n<p>#取得最大点击歌曲的数组的下标<br />\r\nindex = arr.index(arr.sort.last)<br />\r\nputs song_name[index].strip+&quot; &quot;+arr.sort.last.to_s+&quot;次点击&quot;</p>\r\n',2,'2013-10-21 19:49:34','2013-10-21 19:49:34'),(3,'devise','<p>http://blog.csdn.net/aabbcc456aa/article/details/7419493</p>\r\n\r\n<p>gem &#39;devise&#39;<br />\r\nrails g devise:install<br />\r\nrails g devise User<br />\r\nrake db:migrate<br />\r\nrails generate devise:views</p>\r\n',2,'2013-10-21 19:50:53','2013-10-21 19:50:53'),(4,'ckeditor','<p>gem &#39;ckeditor&#39;<br />\r\nrails g ckeditor:install</p>\r\n\r\n<p>&lt;%= javascript_include_tag &quot;ckeditor/ckeditor.js&quot; %&gt; &nbsp;<br />\r\n&lt;%= f.cktext_area(&quot;intro&quot;,:width =&gt; &#39;100%&#39;) %&gt;</p>\r\n',2,'2013-10-21 19:52:17','2013-10-21 19:52:17'),(5,'mini_magick','<p>sudo apt-get install imagemagick</p>\r\n\r\n<p>require &#39;mini_magick&#39;<br />\r\ninclude MiniMagick</p>\r\n\r\n<p># 微信图片<br />\r\npath = &quot;1.jpg&quot;<br />\r\nimage = MiniMagick::Image.open(path)<br />\r\nsize = &quot;640&quot;<br />\r\nimage.resize size<br />\r\nimage.format image[:format] &nbsp;<br />\r\nloc = path.rindex(&quot;.&quot;)<br />\r\nname = path.insert(loc,&quot;_weixin&quot;)<br />\r\nimage.write name</p>\r\n\r\n<p><br />\r\n# 头像<br />\r\npath = &quot;1.jpg&quot;<br />\r\nimage = MiniMagick::Image.open(path)<br />\r\nwidth,height = image[:width],image[:height]<br />\r\nif width&gt;height<br />\r\n&nbsp; shaved_off = ((width-height)/2).round<br />\r\n&nbsp; image.shave &quot;#{shaved_off}x0&quot;<br />\r\nelse<br />\r\n&nbsp; shaved_off = ((height-width)/2).round<br />\r\n&nbsp; image.shave &quot;0x#{shaved_off}&quot;<br />\r\nend<br />\r\nsize = &quot;80&quot;<br />\r\nimage.resize size<br />\r\nimage.format image[:format] &nbsp;<br />\r\nloc = path.rindex(&quot;.&quot;)<br />\r\nname = path.insert(loc,&quot;_avatar&quot;)<br />\r\nimage.write name</p>\r\n\r\n<p># wap and 网页缩略图<br />\r\npath = &quot;1.jpg&quot;<br />\r\nimage = MiniMagick::Image.open(path)<br />\r\nsize = &quot;230&quot;<br />\r\nimage.resize size<br />\r\nimage.format image[:format] &nbsp;<br />\r\nloc = path.rindex(&quot;.&quot;)<br />\r\nname = path.insert(loc,&quot;_wap&quot;)<br />\r\nimage.write name</p>\r\n\r\n<p># 缩小 放大 原图的百分之<br />\r\nimage = MiniMagick::Image.open(path)<br />\r\nimage.combine_options do |c|<br />\r\n&nbsp; c.sample &quot;50%&quot;<br />\r\nend<br />\r\nimage.write &quot;big_small.jpg&quot;</p>\r\n\r\n<p># 进入文件夹 avatar_80_80<br />\r\navatar_80_80 = &quot;/opt/menghuanwd/static/uploaders/&quot;<br />\r\nDir.chdir avatar_80_80</p>\r\n',2,'2013-10-21 19:53:02','2013-10-21 19:53:02'),(6,'daemons+scheduler','<p>*.rb :<br />\r\nrequire &#39;rubygems&#39;<br />\r\nrequire &#39;daemons&#39;<br />\r\nDaemons.run(File.expand_path(&#39;../../lib/baidu_count.subscribe.rb&#39;, __FILE__))</p>\r\n\r\n<p>baidu_count.subscribe.rb :<br />\r\nrequire File.expand_path(&#39;../../config/environment&#39;, __FILE__)<br />\r\nscheduler = Rufus::Scheduler.start_new<br />\r\nscheduler.every &#39;86400s&#39; do<br />\r\n&nbsp; key = Settings.baiduyuyincount<br />\r\n&nbsp; cache = CREDIS.with{|c| c.get(key)}<br />\r\n&nbsp; baidu_count = BaiduCount.new<br />\r\n&nbsp; baidu_count.count = cache<br />\r\n&nbsp; baidu_count.up_date = Time.now<br />\r\n&nbsp; baidu_count.save<br />\r\nend<br />\r\nscheduler.join</p>\r\n\r\n<p>ruby *.rb start</p>\r\n',2,'2013-10-21 19:53:21','2013-10-21 19:55:21'),(7,'delayed_job','<p>gem &#39;delayed_job_active_record&#39;<br />\r\ngem &#39;delayed_job&#39;<br />\r\nrails generate delayed_job:active_record<br />\r\nrake db:migrate<br />\r\nDelayed::Worker.new.start &nbsp;<br />\r\n./delayed_job start restart stop status</p>\r\n',2,'2013-10-21 19:54:04','2013-10-21 19:54:04'),(8,'mailer','<p><span style=\"color:rgb(0, 0, 0); font-family:微软雅黑; font-size:14px\">rails g mailer userMailer</span></p>\r\n',2,'2013-10-21 19:54:23','2013-10-21 19:54:23'),(9,'mongoid','<p>rails new mongo_project --skip-active-record<br />\r\ngem &#39;mongoid&#39;<br />\r\nrails g mongoid:config</p>\r\n',2,'2013-10-21 19:54:38','2013-10-21 19:54:38'),(10,'tesseract-ocr','<p><a href=\"http://www.iteye.com/topic/993538\">http://www.iteye.com/topic/993538</a></p>\r\n',2,'2013-10-21 19:55:51','2013-10-21 19:55:51'),(11,'queue','<div style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; line-height: normal; orphans: 2; text-align: -webkit-auto; widows: 2;\">gem &#39;bunny&#39; 发q<br />\r\ngem &#39;amqp&#39; 收q</div>\r\n',2,'2013-10-21 20:05:29','2013-10-21 20:05:29'),(12,'安装nginx','<p>sudo apt-get install libpcre3-dev build-essential libssl-dev<br />\r\ncd /opt/<br />\r\nsudo wget http://nginx.org/download/nginx-1.3.7.tar.gz<br />\r\nsudo tar -zxvf nginx-1.3.7<br />\r\ncd /opt/nginx-1.3.7/<br />\r\nsudo ./configure --prefix=/opt/nginx --user=nginx --group=nginx --with-http_ssl_module<br />\r\nsudo make<br />\r\nsudo make install<br />\r\nsudo adduser --system --no-create-home --disabled-login --disabled-password --group nginx<br />\r\nsudo wget -O init-deb.sh http://library.linode.com/assets/1139-init-deb.sh<br />\r\nsudo mv init-deb.sh /etc/init.d/nginx<br />\r\nsudo chmod +x /etc/init.d/nginx<br />\r\nsudo /usr/sbin/update-rc.d -f nginx defaults<br />\r\nsudo /etc/init.d/nginx start &nbsp;</p>\r\n',1,'2013-10-21 20:07:07','2013-10-21 20:07:07'),(13,'安装rabbitmq','<p>进入 /etc/apt/sources.list 添加：<br />\r\ndeb http://www.rabbitmq.com/debian/ testing main</p>\r\n\r\n<p>sudo apt-get install rabbitmq-server<br />\r\nrabbitmq-plugins enable rabbitmq_management</p>\r\n',1,'2013-10-21 20:08:23','2013-10-21 20:08:44'),(14,'安装mysql','<p>sudo apt-get install libmysqlclient-dev<br />\r\nsudo apt-get install mysql-server<br />\r\nsudo mysql_secure_installation<br />\r\nsudo mysql -u root -p</p>\r\n',1,'2013-10-21 20:09:21','2013-10-21 20:09:21'),(15,'安装rvm ruby','<div style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; line-height: normal; orphans: 2; text-align: -webkit-auto; widows: 2;\">curl -L https://get.rvm.io | bash -s -- --version latest<br />\r\nrvm install ruby<br />\r\n/bin/bash --login<br />\r\nrvm --default use 2.0.0</div>\r\n',1,'2013-10-21 20:10:11','2013-10-21 20:10:11'),(16,'安装git','<p>sudo apt-get install git git-core</p>\r\n',1,'2013-10-21 20:10:41','2013-10-21 20:10:41'),(17,'安装openssh','<p>sudo apt-get install openssh-server</p>\r\n',1,'2013-10-21 20:11:02','2013-10-21 20:11:02'),(18,'新装电脑不能联网','<p><span style=\"line-height:1.6em\">/etc/resolv.conf:</span><br />\r\nnameserver 8.8.8.8<br />\r\nnameserver 8.8.4.4</p>\r\n',3,'2013-10-21 20:13:10','2013-10-21 20:13:10'),(19,'apt-get 安装 卸载','<p>安装软件 apt-get install softname1 softname2 softname3&hellip;&hellip;<br />\r\n卸载软件 apt-get remove softname1 softname2 softname3&hellip;&hellip;<br />\r\n卸载并清除配置 apt-get remove --purge softname1<br />\r\n更新软件信息数据库 apt-get update<br />\r\n进行系统升级 apt-get upgrade</p>\r\n',3,'2013-10-21 20:14:09','2013-10-21 20:14:09'),(20,'常用命令','<p>重启<br />\r\nshutdown -r now<br />\r\n查看<br />\r\nps -ef|grep thin<br />\r\nps -aux|grep feedback<br />\r\n请求<br />\r\ncurl -i -A &ldquo;other_unitcon&rdquo; -d &quot;device=other_android&amp;id=1074773&quot; &nbsp;http://3rd.ximalaya.com/chezai/played&nbsp;</p>\r\n',3,'2013-10-21 20:16:26','2013-10-21 20:16:26'),(21,'常用命令','<p>备份<br />\r\nmysqldump -h127.0.0.1 -uroot -p1234 menghuanwd_development &gt;menghuanwd.sql<br />\r\nmysqldump -h127.0.0.1 -uroot -p menghuanwd_development &gt;menghuanwd.sql<br />\r\nmysqldump -h127.0.0.1 -uroot -pcaishuying menghuanwd_development &gt; /home/server/sqlbak/menghuanwd.sql</p>\r\n\r\n<p>还原<br />\r\nmysql -uroot -pcaishuying menghuanwd_development &lt; menghuanwd.sql</p>\r\n\r\n<p>修改root密码<br />\r\nmysqladmin -u root -p[oldpass] password newpass<br />\r\nmysqladmin -u root -p password 123 caishuying</p>\r\n',4,'2013-10-21 20:18:05','2013-10-21 21:59:18');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_categories`
--

LOCK TABLES `photo_categories` WRITE;
/*!40000 ALTER TABLE `photo_categories` DISABLE KEYS */;
INSERT INTO `photo_categories` VALUES (1,'剑灵','2013-10-17 01:18:14','2013-10-17 01:18:14'),(2,'蔡淑英','2013-10-20 19:31:51','2013-10-20 19:31:51'),(3,'小可乐','2013-10-21 21:44:30','2013-10-21 21:44:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_details`
--

LOCK TABLES `photo_details` WRITE;
/*!40000 ALTER TABLE `photo_details` DISABLE KEYS */;
INSERT INTO `photo_details` VALUES (1,1,0,86,'2013-10-21 21:48:50','2013-10-21 21:48:50'),(2,1,0,105,'2013-10-21 21:50:39','2013-10-21 21:50:39'),(3,3,0,88,'2013-10-21 21:52:52','2013-10-21 21:53:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (2,'957a2cd50283d63f502901bfc5be77e1b2fefb7c.jpg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/957a2cd50283d63f502901bfc5be77e1b2fefb7c.jpg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(3,'1a78febdb74e037b57726df487b4ecba618e667c.jpeg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/1a78febdb74e037b57726df487b4ecba618e667c.jpeg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(4,'e22309e66165d7fe99627e97117dcb4429aa3697.jpeg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/e22309e66165d7fe99627e97117dcb4429aa3697.jpeg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(5,'2f71ac52b8443a8259a094be7053fc48b80d7975.jpg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/2f71ac52b8443a8259a094be7053fc48b80d7975.jpg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(6,'08fda0244b5397e030ee401fd2bea5b24f78a72b.jpg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/08fda0244b5397e030ee401fd2bea5b24f78a72b.jpg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(7,'b42a9e8f12b42d83dfe2621bda578f6896cd05ba.jpeg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/b42a9e8f12b42d83dfe2621bda578f6896cd05ba.jpeg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(8,'eb055da32a3aa491ee514a5f059501497d8ce5ae.jpg',2,'tmp','http://static.menghuanwd.cn/uploaders/origin/eb055da32a3aa491ee514a5f059501497d8ce5ae.jpg','2013-10-20 19:37:44','2013-10-20 19:37:44'),(9,'8d2e206e97417d532ba330089b7501adcfdbc9bb.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/8d2e206e97417d532ba330089b7501adcfdbc9bb.jpeg','2013-10-21 21:46:54','2013-10-21 21:46:54'),(10,'cf00bb51a517cb0cd0a49e309c0f0f7cfd1cf328.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/cf00bb51a517cb0cd0a49e309c0f0f7cfd1cf328.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(11,'b585b26b5f495305a1ed8b7fd258d865138bbc35.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/b585b26b5f495305a1ed8b7fd258d865138bbc35.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(12,'ca3e6207c06f88b048dc6592ce475959397d2c55.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/ca3e6207c06f88b048dc6592ce475959397d2c55.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(13,'1781f4d391abdaab4df7d8c32ac414a08c6dd22f.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/1781f4d391abdaab4df7d8c32ac414a08c6dd22f.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(14,'a3783eb1c268712d5ff0e62988c9b5db8ef0ea47.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/a3783eb1c268712d5ff0e62988c9b5db8ef0ea47.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(15,'8894a81d4de439250e38adcc9e4775cdd4b3cb79.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/8894a81d4de439250e38adcc9e4775cdd4b3cb79.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(16,'32e9fcad6367323561e09e2e400ead69a70ddfac.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/32e9fcad6367323561e09e2e400ead69a70ddfac.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(17,'3b199f28ba513c9590ca956ba5b2eef2b1f59d1c.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/3b199f28ba513c9590ca956ba5b2eef2b1f59d1c.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(18,'5c710d839c8c003cd5437166ea032121b2b1eff9.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/5c710d839c8c003cd5437166ea032121b2b1eff9.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(19,'33c42b1110e1706791da57dc6fea35b29d3d7c80.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/33c42b1110e1706791da57dc6fea35b29d3d7c80.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(20,'3deac2153166bcb9f780cb23b4b3301d5b165d43.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/3deac2153166bcb9f780cb23b4b3301d5b165d43.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(21,'8092b5ee24befc62ccb519656d4b2578cc5b645b.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/8092b5ee24befc62ccb519656d4b2578cc5b645b.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(22,'133f350bd638a574afe97acc21ed8076be5ad0c7.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/133f350bd638a574afe97acc21ed8076be5ad0c7.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(23,'0138e3e1d666afc4a7315ab1da8c37059ce9a642.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/0138e3e1d666afc4a7315ab1da8c37059ce9a642.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(24,'19bb77ae2ad10b7f4f8c7b17844e63d4f2e16e03.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/19bb77ae2ad10b7f4f8c7b17844e63d4f2e16e03.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(25,'3ae62ef5a79837ea61ac833c269c14f92c737ec3.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/3ae62ef5a79837ea61ac833c269c14f92c737ec3.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(26,'3641e7b96be363c52979ade40895462b871895a8.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/3641e7b96be363c52979ade40895462b871895a8.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(27,'966121e2c400b834a25d75ed53d1509174b79865.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/966121e2c400b834a25d75ed53d1509174b79865.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(28,'ac5380df0c74a37a760bb7c9e6ed55e90050e28a.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/ac5380df0c74a37a760bb7c9e6ed55e90050e28a.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(29,'4e0775cea2f6e4494b3918f8d22c9bcd4a3936bb.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/4e0775cea2f6e4494b3918f8d22c9bcd4a3936bb.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(30,'65c9798a6ea61bbb2fb6fcb060db2f5e5489d467.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/65c9798a6ea61bbb2fb6fcb060db2f5e5489d467.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(31,'9c51b618399fec21a8f7f0ea80153bbe400ff064.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/9c51b618399fec21a8f7f0ea80153bbe400ff064.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(32,'2d70d12d47d4e6f64778209840bcc3edaf2f1ab0.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/2d70d12d47d4e6f64778209840bcc3edaf2f1ab0.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(33,'f236ec388c0a4f94a37fdaaa345033bec60da255.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/f236ec388c0a4f94a37fdaaa345033bec60da255.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(34,'f7192eb44ac442f70ad819fa4c68e095527c23f7.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/f7192eb44ac442f70ad819fa4c68e095527c23f7.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(35,'2f2c7abffaa003ad53d5611735c89a833e6e24de.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/2f2c7abffaa003ad53d5611735c89a833e6e24de.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(36,'ce9f5483ed977e10e6800b995daac8533d67fc94.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/ce9f5483ed977e10e6800b995daac8533d67fc94.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(37,'df608a3bfb1204bd68fd53b112e8b39b21a2599e.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/df608a3bfb1204bd68fd53b112e8b39b21a2599e.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(38,'0cbbd9be6a2de5edcac880e6fbce8194b82e2407.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/0cbbd9be6a2de5edcac880e6fbce8194b82e2407.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(39,'1aeafed04f5b6f6c5b4fbb7ee82f6377c04129e9.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/1aeafed04f5b6f6c5b4fbb7ee82f6377c04129e9.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(40,'93f45654b20dc32518fa4b45923141818b556c72.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/93f45654b20dc32518fa4b45923141818b556c72.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(41,'1ac025ec74d54aba501e3247560ea26c247338a1.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/1ac025ec74d54aba501e3247560ea26c247338a1.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(42,'8e4fca46a4283314337f929fe0c399e085843884.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/8e4fca46a4283314337f929fe0c399e085843884.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(43,'525eca5201d36aa63abdbd2ca015eb02d2b32737.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/525eca5201d36aa63abdbd2ca015eb02d2b32737.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(44,'bd18d7644b193471d4fb1c29dbc417ab99aa63b6.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/bd18d7644b193471d4fb1c29dbc417ab99aa63b6.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(45,'4836eac2b19b4ab58d8183ef03857215bb509d0d.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/4836eac2b19b4ab58d8183ef03857215bb509d0d.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(46,'f4af6dc715f68ee2cd61387803cb6a620e2f8a45.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/f4af6dc715f68ee2cd61387803cb6a620e2f8a45.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(47,'20036dcb7d1fb19a950a75fa1d935caaec786030.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/20036dcb7d1fb19a950a75fa1d935caaec786030.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(48,'b56048a81f0764a9bd378d58b2527cfd6e7c5639.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/b56048a81f0764a9bd378d58b2527cfd6e7c5639.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(49,'d997f3764953e7a3b72a926bc570b7f345689295.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/d997f3764953e7a3b72a926bc570b7f345689295.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(50,'5eab242b39eab512f8f37e983309ccaf2c4af101.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/5eab242b39eab512f8f37e983309ccaf2c4af101.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(51,'04add36258798ee6f5f2d927b508ee09d9c0d03a.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/04add36258798ee6f5f2d927b508ee09d9c0d03a.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(52,'231cdbee7549e99d9f4e9e27d54a9702814699b2.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/231cdbee7549e99d9f4e9e27d54a9702814699b2.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(53,'e6f32cadb043e29655a58b10bac13da14244ea4d.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/e6f32cadb043e29655a58b10bac13da14244ea4d.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(54,'2388b43945d464c1b3c830dad6e2a8c12651adbc.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/2388b43945d464c1b3c830dad6e2a8c12651adbc.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(55,'04228fea4cc1543c7d09e91561bb9b9fff05db63.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/04228fea4cc1543c7d09e91561bb9b9fff05db63.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(56,'1f5102ebb8fe7db3d1b7976cdb0ed33e81207db1.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/1f5102ebb8fe7db3d1b7976cdb0ed33e81207db1.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(57,'c57aefc520d88cbe97065fda8cd3034cb1f49b24.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/c57aefc520d88cbe97065fda8cd3034cb1f49b24.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(58,'8f19145abe44b84418f4b8b2fd7b5f7a67847086.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/8f19145abe44b84418f4b8b2fd7b5f7a67847086.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(59,'ff93efcc4f403da559301a418d7623e0777e8bea.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/ff93efcc4f403da559301a418d7623e0777e8bea.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(60,'b4e0c2e6e3db8002eb37b8a0361fe2d010aac212.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/b4e0c2e6e3db8002eb37b8a0361fe2d010aac212.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(61,'920a0fc0864824d2d6930dae5e4c68ecfe8e375f.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/920a0fc0864824d2d6930dae5e4c68ecfe8e375f.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(62,'63a8fb0a92033af4061993ebb2f830d5f29c0bd5.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/63a8fb0a92033af4061993ebb2f830d5f29c0bd5.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(63,'52b6b955a42824706952a87f7a67864d10db20b4.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/52b6b955a42824706952a87f7a67864d10db20b4.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(64,'60d09617234c5e3d042021ac99f585c3e4739e3f.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/60d09617234c5e3d042021ac99f585c3e4739e3f.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(65,'b7bdf17d8c87eceb2fe18015797a21c39a10febe.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/b7bdf17d8c87eceb2fe18015797a21c39a10febe.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(66,'c47dfd93632fa04939cf7254900bcf9c92dc6205.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/c47dfd93632fa04939cf7254900bcf9c92dc6205.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(67,'932663deb019ea78935a8b4c83f0d15a65a6ee22.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/932663deb019ea78935a8b4c83f0d15a65a6ee22.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(68,'d0ebdc1496aa2233f8818e22c7bc2468b0089ab2.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/d0ebdc1496aa2233f8818e22c7bc2468b0089ab2.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(69,'363fbe4d1f0feaf2e6869ce44cb809f7db5851ce.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/363fbe4d1f0feaf2e6869ce44cb809f7db5851ce.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(70,'deabea822faa0eb96dfbc1b3b06b867cbee19763.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/deabea822faa0eb96dfbc1b3b06b867cbee19763.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(71,'aeab2efbd7f41ebadf0b70b8e15f8384b9cc2923.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/aeab2efbd7f41ebadf0b70b8e15f8384b9cc2923.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(72,'da86aa1a5a35805f6aab41dcd9e8958d32444c71.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/da86aa1a5a35805f6aab41dcd9e8958d32444c71.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(73,'b14362442b4b9e4a2c37d0d45a72b0e2da0eafcb.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/b14362442b4b9e4a2c37d0d45a72b0e2da0eafcb.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(74,'eccea87aabafd9f4ab22f6b434dc469c12557b7e.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/eccea87aabafd9f4ab22f6b434dc469c12557b7e.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(75,'a8361ecb2edb674806542640099803f5cec0539c.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/a8361ecb2edb674806542640099803f5cec0539c.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(76,'4526a1915265ab4414a73af85ca2e315372d67c2.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/4526a1915265ab4414a73af85ca2e315372d67c2.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(77,'38f3f9c8dee7e03c99731cefac48fbe23fdd3cf2.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/38f3f9c8dee7e03c99731cefac48fbe23fdd3cf2.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(78,'7c9822c888ff3b65133add8974cbadbcd465b3ac.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/7c9822c888ff3b65133add8974cbadbcd465b3ac.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(79,'4cddc7953809499a8f939abece56ad1462bfc98b.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/4cddc7953809499a8f939abece56ad1462bfc98b.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(80,'b39307f22f8e5a5c509b3b1d87baa80fc613b348.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/b39307f22f8e5a5c509b3b1d87baa80fc613b348.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(81,'1f9fbe81befa05d99ff0e0228e839225a88ace00.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/1f9fbe81befa05d99ff0e0228e839225a88ace00.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(82,'ad201d1d9eb403cc045072e4e7bb9b1b2d221d35.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/ad201d1d9eb403cc045072e4e7bb9b1b2d221d35.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(83,'10607842e9485abccf9ab855cd3fa918bcff1f19.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/10607842e9485abccf9ab855cd3fa918bcff1f19.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(84,'73111b9606db7c4f0b71c2de4e29d03769050d82.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/73111b9606db7c4f0b71c2de4e29d03769050d82.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(85,'209b0d9779dc0b540fe43d4cf3cc34a8435fe9ad.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/209b0d9779dc0b540fe43d4cf3cc34a8435fe9ad.jpeg','2013-10-21 21:46:55','2013-10-21 21:46:55'),(86,'7bd5f2112fd4c1cbc6e19ad728563ce5b74ae69b.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/7bd5f2112fd4c1cbc6e19ad728563ce5b74ae69b.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(87,'c224c06374d0900214a0712d7fee19ef182fc5d6.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/c224c06374d0900214a0712d7fee19ef182fc5d6.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(88,'dc319153b92894f17cc45a4023296ed05e2287b2.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/dc319153b92894f17cc45a4023296ed05e2287b2.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(89,'e878a2e542298540165c077e9ed5f24e1e60b5c7.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/e878a2e542298540165c077e9ed5f24e1e60b5c7.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(90,'6355c9b9cbcd0372108e85bda3d37bff21e52ba6.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/6355c9b9cbcd0372108e85bda3d37bff21e52ba6.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(91,'8cd2a26281c54ac6450e64c54cc7851fa194916f.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/8cd2a26281c54ac6450e64c54cc7851fa194916f.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(92,'09c110be0073bdf8e7f1f070796f920266f373dc.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/09c110be0073bdf8e7f1f070796f920266f373dc.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(93,'45402e3495dc770972ad610bd68ea38bfcbb96f2.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/45402e3495dc770972ad610bd68ea38bfcbb96f2.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(94,'014d27902d42f6bfbaa8a08eefaec63cecac3109.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/014d27902d42f6bfbaa8a08eefaec63cecac3109.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(95,'75ce7578e2f25034f50a74dbda9bfeec8a7fc5cf.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/75ce7578e2f25034f50a74dbda9bfeec8a7fc5cf.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(96,'c36b8c2af4e8cf89c2097927a14fac07e92f445d.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/c36b8c2af4e8cf89c2097927a14fac07e92f445d.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(97,'0f53a58e2fa642f15353f597f0f6342ca311ef2e.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/0f53a58e2fa642f15353f597f0f6342ca311ef2e.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(98,'d10b3e693fbe76affe0802f9392802ae1545ecac.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/d10b3e693fbe76affe0802f9392802ae1545ecac.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(99,'eabb6b4c422eb64741ec3249450914ac6d5b9c4d.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/eabb6b4c422eb64741ec3249450914ac6d5b9c4d.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(100,'e555f808591315dbb7fb738a78991a7a5c89c236.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/e555f808591315dbb7fb738a78991a7a5c89c236.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(101,'166501d21e8e981f7ac3f60da18d7f312ae25d27.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/166501d21e8e981f7ac3f60da18d7f312ae25d27.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(102,'d8fa1740ad7686b0409d8a75c6e7d851e5874d8a.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/d8fa1740ad7686b0409d8a75c6e7d851e5874d8a.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(103,'2cf278f0dc70e16e709875eb78af47f3efd0fe60.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/2cf278f0dc70e16e709875eb78af47f3efd0fe60.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(104,'1268b0baa3d664bddbeb25f5f736e048325bbdec.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/1268b0baa3d664bddbeb25f5f736e048325bbdec.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(105,'f98404cf40d73b7f3e0e0a58d2dbec704d5abfa6.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/f98404cf40d73b7f3e0e0a58d2dbec704d5abfa6.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(106,'7f5912d7cdd4868dda95f3f282c5c4379824a2c4.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/7f5912d7cdd4868dda95f3f282c5c4379824a2c4.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(107,'1ef28ffe14f73033e588c4063879b440961113d1.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/1ef28ffe14f73033e588c4063879b440961113d1.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(108,'c095d4410ffc9f9205b5587d0794042cafc4d9e2.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/c095d4410ffc9f9205b5587d0794042cafc4d9e2.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(109,'0dbdac6ed22c3bdd24eb256b3176fae549e2b54c.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/0dbdac6ed22c3bdd24eb256b3176fae549e2b54c.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(110,'3e2b199f67df5e791184320892a8373e8f5d5b67.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/3e2b199f67df5e791184320892a8373e8f5d5b67.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(111,'eeb36118ff469b0f22d55ed744a5a6e0926cb3a6.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/eeb36118ff469b0f22d55ed744a5a6e0926cb3a6.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(112,'324c0814eac9ed3197391ee4740ef43761413f4a.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/324c0814eac9ed3197391ee4740ef43761413f4a.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56'),(113,'4c14ee5d2d97fed7aacc9dd7f3afb3c6659affe0.jpeg',3,'tmp','http://static.menghuanwd.cn/uploaders/origin/4c14ee5d2d97fed7aacc9dd7f3afb3c6659affe0.jpeg','2013-10-21 21:46:56','2013-10-21 21:46:56');
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

-- Dump completed on 2013-10-21 21:59:49
