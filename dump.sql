-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accroche_form` text,
  `accroche_reseaux` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_reseaux`
--

DROP TABLE IF EXISTS `contact_reseaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_reseaux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `class_reseau` varchar(200) DEFAULT NULL,
  `description` text,
  `url_image` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_reseaux`
--

LOCK TABLES `contact_reseaux` WRITE;
/*!40000 ALTER TABLE `contact_reseaux` DISABLE KEYS */;
INSERT INTO `contact_reseaux` VALUES (1,'Facebook','facebook','<p>Vous pouvez suivre sur mon facebook mes derni&egrave;res actualit&eacute;s, travaux et experimentations dans le domaine de l\'informatique et du web.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>','/sharebar/facebook.png','http://www.facebook.com/matthieu.cneude',2),(2,'Twitter','twitter','<p>Sur twitter je partage, dans le cadre de ma veille technologique, des articles techniques.</p>','/sharebar/twitter.png','https://twitter.com/Cneude_Matthieu',1),(3,'Linkedin','linkedin','<p>Sur Linkedin vous retrouverez mon parcours professionnel.<br />Si mon profil vous int&eacute;resse, venez faire partie de mon r&eacute;seau !</p>','/sharebar/linkedin.png','https://plus.google.com/107021059883292387038/posts',4),(4,'Google +','google','<p>Vous pouvez retrouver sur ce r&eacute;seau &agrave; la fois ma veille technologique mais &eacute;galement mes derni&egrave;res actualit&eacute;s en tant que d&eacute;veloppeur.</p>','/sharebar/google.png','https://plus.google.com/b/101163990784361774569/101163990784361774569/posts',3),(5,'Viadeo','viadeo','<p>Venez rencontrer mon r&eacute;seau fran&ccedil;ais sur Viadeo.</p>','/sharebar/viadeo.png','http://www.viadeo.com/fr/profile/0021i3s4sbf8g4m0',5);
/*!40000 ALTER TABLE `contact_reseaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_reseaux_translation`
--

DROP TABLE IF EXISTS `contact_reseaux_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_reseaux_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_18173C28232D562B` (`object_id`),
  CONSTRAINT `FK_18173C28232D562B` FOREIGN KEY (`object_id`) REFERENCES `contact_reseaux` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_reseaux_translation`
--

LOCK TABLES `contact_reseaux_translation` WRITE;
/*!40000 ALTER TABLE `contact_reseaux_translation` DISABLE KEYS */;
INSERT INTO `contact_reseaux_translation` VALUES (1,1,'fr','nom','Facebook'),(2,1,'fr','description','<p>Vous pouvez suivre sur mon facebook mes derni&egrave;res actualit&eacute;s, travaux et experimentations dans le domaine de l\'informatique et du web.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>'),(3,1,'en','nom','Facebook'),(4,1,'en','description','<p>You can follow on facebook my latest news, studies and experiments in the field of IT and web.</p>'),(5,2,'fr','nom','Twitter'),(6,2,'fr','description','<p>Sur twitter je partage, dans le cadre de ma veille technologique, des articles techniques.</p>'),(7,2,'en','nom','Twitter'),(8,2,'en','description','<p>I share on twitter the latest technical articles from my technology watch</p>'),(9,3,'fr','nom','Linkedin'),(10,3,'fr','description','<p>Sur Linkedin vous retrouverez mon parcours professionnel.<br />Si mon profil vous int&eacute;resse, venez faire partie de mon r&eacute;seau !</p>'),(11,3,'en','nom','Linkedin'),(12,3,'en','description','<p>On linkedin you can see my career.<br />You can also be part of my professionnal network by sending me a request. Don\'t be shy!</p>'),(13,4,'fr','nom','Google +'),(14,4,'fr','description','<p>Vous pouvez retrouver sur ce r&eacute;seau &agrave; la fois ma veille technologique mais &eacute;galement mes derni&egrave;res actualit&eacute;s en tant que d&eacute;veloppeur.</p>'),(15,4,'en','nom','Google +'),(16,4,'en','description','<p>You can find on this social network my technology watch and my latest web developments.</p>'),(17,5,'fr','nom','Viadeo'),(18,5,'fr','description','<p>Venez rencontrer mon r&eacute;seau fran&ccedil;ais sur Viadeo.</p>'),(19,5,'en','nom','Viadeo'),(20,5,'en','description','<p>You can see my professionnal french network on Viadeo</p>');
/*!40000 ALTER TABLE `contact_reseaux_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichiers`
--

DROP TABLE IF EXISTS `fichiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichiers`
--

LOCK TABLES `fichiers` WRITE;
/*!40000 ALTER TABLE `fichiers` DISABLE KEYS */;
INSERT INTO `fichiers` VALUES (1,'CV','/matthieu_cneude_cv.pdf',1);
/*!40000 ALTER TABLE `fichiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichiers_translation`
--

DROP TABLE IF EXISTS `fichiers_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichiers_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_8138D26B232D562B` (`object_id`),
  CONSTRAINT `FK_8138D26B232D562B` FOREIGN KEY (`object_id`) REFERENCES `fichiers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichiers_translation`
--

LOCK TABLES `fichiers_translation` WRITE;
/*!40000 ALTER TABLE `fichiers_translation` DISABLE KEYS */;
INSERT INTO `fichiers_translation` VALUES (1,1,'fr','nom','CV'),(2,1,'fr','url','/matthieu_cneude_cv.pdf'),(3,1,'en','nom','CV'),(4,1,'en','url','/matthieu_cneude_cv_en.pdf');
/*!40000 ALTER TABLE `fichiers_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user`
--

DROP TABLE IF EXISTS `fos_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user`
--

LOCK TABLES `fos_user` WRITE;
/*!40000 ALTER TABLE `fos_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `fos_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user_group`
--

DROP TABLE IF EXISTS `fos_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user_group`
--

LOCK TABLES `fos_user_group` WRITE;
/*!40000 ALTER TABLE `fos_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `fos_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user_user`
--

DROP TABLE IF EXISTS `fos_user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user_user`
--

LOCK TABLES `fos_user_user` WRITE;
/*!40000 ALTER TABLE `fos_user_user` DISABLE KEYS */;
INSERT INTO `fos_user_user` VALUES (1,'admin','admin','matthieu.cneude@gmail.com','matthieu.cneude@gmail.com',1,'cw0nqseykxkwkso8cog0s0ks4sg04cw','oXG5X/+9ZEfMIH1UQbFqpHkVJQPmHWH1zXz0scrjXVWmYXrKqpq3+AFK250htXJLvF2/syJuLSl9iALGistkSg==','2014-08-16 11:11:09',0,0,NULL,NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}',0,NULL,'2013-11-12 10:55:16','2014-08-16 11:11:09',NULL,NULL,NULL,NULL,NULL,'u',NULL,NULL,NULL,NULL,NULL,'null',NULL,NULL,'null',NULL,NULL,'null',NULL,NULL);
/*!40000 ALTER TABLE `fos_user_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user_user_group`
--

DROP TABLE IF EXISTS `fos_user_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`),
  CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user_user_group`
--

LOCK TABLES `fos_user_user_group` WRITE;
/*!40000 ALTER TABLE `fos_user_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `fos_user_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupes_has_projets`
--

DROP TABLE IF EXISTS `groupes_has_projets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupes_has_projets` (
  `projets_id` int(11) NOT NULL,
  `projets_groupe_id` int(11) NOT NULL,
  PRIMARY KEY (`projets_id`,`projets_groupe_id`),
  KEY `fk_projets_has_projets_groupe_projets_groupe1_idx` (`projets_groupe_id`),
  KEY `fk_projets_has_projets_groupe_projets1_idx` (`projets_id`),
  CONSTRAINT `fk_projets_has_projets_groupe_projets1` FOREIGN KEY (`projets_id`) REFERENCES `projets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_projets_has_projets_groupe_projets_groupe1` FOREIGN KEY (`projets_groupe_id`) REFERENCES `projets_groupes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupes_has_projets`
--

LOCK TABLES `groupes_has_projets` WRITE;
/*!40000 ALTER TABLE `groupes_has_projets` DISABLE KEYS */;
INSERT INTO `groupes_has_projets` VALUES (1,1),(2,1),(3,1),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,3);
/*!40000 ALTER TABLE `groupes_has_projets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(45) DEFAULT NULL,
  `accroche` text,
  `url_image` varchar(45) DEFAULT NULL,
  `apprendre` text,
  `construire` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (1,'Bienvenue sur mon portfolio','<p><strong>D&eacute;veloppeur web en agence depuis deux ans</strong> et passionn&eacute; depuis toujours, je vous propose, avec ce portfolio, de pouvoir <strong>parcourir les projets</strong> que j\'ai int&eacute;gralement ou en partie r&eacute;alis&eacute;s et ainsi juger de mes comp&eacute;tences techniques.<br />Je recherche un emploi o&ugrave; je puisse r&eacute;ellement <strong>m\'&eacute;panouir</strong> et <strong>m\'am&eacute;liorer</strong>.<br /><br /><br /></p>','/bureau.jpg','...NodeJs, Symfony 2','...refonte de mon blog');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_translation`
--

DROP TABLE IF EXISTS `home_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_9A57822232D562B` (`object_id`),
  CONSTRAINT `FK_9A57822232D562B` FOREIGN KEY (`object_id`) REFERENCES `home` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_translation`
--

LOCK TABLES `home_translation` WRITE;
/*!40000 ALTER TABLE `home_translation` DISABLE KEYS */;
INSERT INTO `home_translation` VALUES (1,1,'fr','titre','> Hello world <'),(2,1,'en','titre','> Hello world <'),(3,1,'fr','accroche','<p><strong>D&eacute;veloppeur web en agence depuis deux ans</strong> et passionn&eacute; depuis toujours, je vous propose, avec ce portfolio, de pouvoir <strong>parcourir les projets</strong> que j\'ai int&eacute;gralement ou en partie r&eacute;alis&eacute;s et ainsi juger de mes comp&eacute;tences techniques.<br /><br /></p>'),(4,1,'fr','apprendre','...NodeJs, Symfony 2'),(5,1,'fr','construire','...refonte de mon blog'),(6,1,'en','accroche','<p><strong>Web developer in web agencies for three years</strong>, I have always been <strong>passionate</strong> in web technologies.<br />With this portfolio you can browse projects that I made ​​in whole or in part so you can judge my <strong>technical skills</strong>.</p>'),(7,1,'en','apprendre','...Symfony 2, PHP design pattern'),(8,1,'en','construire','...my new blog');
/*!40000 ALTER TABLE `home_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcours`
--

DROP TABLE IF EXISTS `parcours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `experiences_complementaires` text,
  `interets` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcours`
--

LOCK TABLES `parcours` WRITE;
/*!40000 ALTER TABLE `parcours` DISABLE KEYS */;
INSERT INTO `parcours` VALUES (1,'<ul>\r\n<li>Serveur dans des restaurants en Angleterre (Brighton) pendant trois mois pour <strong>renforcer mon niveau d\'anglais</strong> &eacute;crit et oral</li>\r\n<li>Stagiaire &agrave; CESSIT (agence web)\r\n<ul>\r\n<li>Meilleure appr&eacute;hension de la Programmation Orient&eacute;e Objet avec Flash AS3</li>\r\n<li>Graphisme sous Illustrator et Photoshop</li>\r\n<li>R&eacute;alisation d\'un jeu en Flash</li>\r\n</ul>\r\n</li>\r\n<li>Stagiaire en communication &agrave; la pr&eacute;fecture du Calvados et de Basse Normandie\r\n<ul>\r\n<li>D&eacute;pannage informatique</li>\r\n<li>Mise en forme de documents sous LibreOffice...</li>\r\n</ul>\r\n</li>\r\n<li><strong>Apprentissage autodidacte</strong> du langage C (et, de mani&egrave;re plus artificielle du C++) et du langage de GameMaker</li>\r\n</ul>','<ul>\r\n<li>Communication (au sens large : &eacute;changes, travail en &eacute;quipe...)</li>\r\n<li>Randonn&eacute;es</li>\r\n<li>Cin&eacute;ma</li>\r\n<li>Litt&eacute;rature / &eacute;criture</li>\r\n<li>MAO (Musique Assist&eacute;e par Ordinateur)...</li>\r\n</ul>');
/*!40000 ALTER TABLE `parcours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcours_accroches`
--

DROP TABLE IF EXISTS `parcours_accroches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcours_accroches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accroche_etudes` text,
  `accroche_experiences` text,
  `accroche_experiences_complementaires` text,
  `accroche_interets` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcours_accroches`
--

LOCK TABLES `parcours_accroches` WRITE;
/*!40000 ALTER TABLE `parcours_accroches` DISABLE KEYS */;
INSERT INTO `parcours_accroches` VALUES (1,'<p>Voici l\'aper&ccedil;u de mon parcours en tant qu\'&eacute;tudiant. Ma <strong>forte implication</strong>, ma <strong>curiosit&eacute;</strong> et mon <strong>perfectionnisme</strong> m\'ont permis de les mener &agrave; bien :</p>','<p>Je suis a pr&eacute;sent dot&eacute; de <strong>multiples comp&eacute;tences</strong> apr&egrave;s deux ans d\'exp&eacute;riences dans ces agences web :</p>','<p>J\'ai &eacute;galement eu <strong>d\'autres exp&eacute;riences professionnelles</strong> qui m\'ont permis d\'appr&eacute;hender le monde du travail de mani&egrave;re plus large :</p>','<p>Mis &agrave; part le <strong>d&eacute;veloppement web</strong> (qui reste tout de m&ecirc;me ma passion la plus vivace), je m\'int&eacute;resse &eacute;galement &agrave; beaucoup d\'autre domaines :</p>');
/*!40000 ALTER TABLE `parcours_accroches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcours_accroches_translation`
--

DROP TABLE IF EXISTS `parcours_accroches_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcours_accroches_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_10AB0C64232D562B` (`object_id`),
  CONSTRAINT `FK_10AB0C64232D562B` FOREIGN KEY (`object_id`) REFERENCES `parcours_accroches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcours_accroches_translation`
--

LOCK TABLES `parcours_accroches_translation` WRITE;
/*!40000 ALTER TABLE `parcours_accroches_translation` DISABLE KEYS */;
INSERT INTO `parcours_accroches_translation` VALUES (1,1,'fr','accrocheEtudes','<p>Je suis a pr&eacute;sent dot&eacute; de <strong>multiples comp&eacute;tences</strong> apr&egrave;s plusieurs ann&eacute;es d\'exp&eacute;riences :</p>'),(2,1,'fr','accrocheExperiences','<p>Voici l\'aper&ccedil;u de mes &eacute;tudes. Ma <strong>forte implication</strong>, ma <strong>curiosit&eacute;</strong> et mon <strong>perfectionnisme</strong> m\'ont permis de les mener &agrave; bien :</p>'),(3,1,'fr','accrocheExperiencesComplementaires','<p>Mis &agrave; part le<strong> d&eacute;veloppement web</strong> (qui reste tout de m&ecirc;me ma passion la plus vivace), je m\'int&eacute;resse &eacute;galement &agrave; beaucoup d\'autre domaines :</p>'),(4,1,'fr','accrocheInterets','<p>J\'ai &eacute;galement eu d\'autres <strong>exp&eacute;riences professionnelles</strong> qui m\'ont permis d\'appr&eacute;hender le monde du travail de mani&egrave;re plus large :</p>'),(5,1,'en','accrocheEtudes','<p>Here is an overview of my <strong>studies</strong>:</p>'),(6,1,'en','accrocheExperiences','<p>I have acquired many skills after years in <strong>web development</strong>:</p>'),(7,1,'en','accrocheExperiencesComplementaires','<p><strong>Web development</strong> is a huge passion but I have others hobbies and interests:</p>'),(8,1,'en','accrocheInterets','<p>I have <strong>others professional experiences</strong> which allow me to see world of work from different perspectives:</p>');
/*!40000 ALTER TABLE `parcours_accroches_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcours_etudes`
--

DROP TABLE IF EXISTS `parcours_etudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcours_etudes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `description` text,
  `url_image` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcours_etudes`
--

LOCK TABLES `parcours_etudes` WRITE;
/*!40000 ALTER TABLE `parcours_etudes` DISABLE KEYS */;
INSERT INTO `parcours_etudes` VALUES (1,'BTS Communication des entreprises','<ul>\r\n<li>Etude de la communication, du management et du marketing au sein de l\'entreprise</li>\r\n<li>Etude de la communication sur Internet d\'un point de vue strat&eacute;gique</li>\r\n<li>Etude de l\'importance de la communication en interne et en externe</li>\r\n<li>R&eacute;flexions sur la communication au sein d\'une &eacute;quipe ou d\'une entreprise</li>\r\n</ul>','/bts/logo.jpg',NULL,1,'2009-09-10'),(2,'Licence Communication Multimedia','<ul>\r\n<li>Bases du d&eacute;veloppement web\r\n<ul>\r\n<li>XHTML</li>\r\n<li>PHP</li>\r\n<li>Flash AS2 et AS3</li>\r\n<li>CSS 2</li>\r\n</ul>\r\n</li>\r\n<li>R&eacute;flexions sur le web et ses enjeux &eacute;conomiques</li>\r\n<li>Culture de l\'Internet</li>\r\n<li>Graphisme\r\n<ul>\r\n<li>Bases de Photoshop et Illustrator</li>\r\n</ul>\r\n</li>\r\n</ul>','/licence/logo.jpg',NULL,2,'2010-09-15');
/*!40000 ALTER TABLE `parcours_etudes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcours_etudes_translation`
--

DROP TABLE IF EXISTS `parcours_etudes_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcours_etudes_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_32B62CDA232D562B` (`object_id`),
  CONSTRAINT `FK_32B62CDA232D562B` FOREIGN KEY (`object_id`) REFERENCES `parcours_etudes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcours_etudes_translation`
--

LOCK TABLES `parcours_etudes_translation` WRITE;
/*!40000 ALTER TABLE `parcours_etudes_translation` DISABLE KEYS */;
INSERT INTO `parcours_etudes_translation` VALUES (1,1,'fr','nom','BTS Communication des Entreprises'),(2,1,'fr','description','<ul>\r\n<li>Etude de la <strong>communication</strong>, du <strong>management</strong> et du <strong>marketing</strong> au sein de l\'entreprise</li>\r\n<li>Etude de la<strong> communication sur Internet</strong> d\'un point de vue strat&eacute;gique</li>\r\n<li>Etude de l\'importance de la communication en entreprise (interne, externe, au sein d\'une &eacute;quipe...)</li>\r\n</ul>'),(3,1,'en','nom','High National Diploma in communication'),(4,1,'en','description','<ul>\r\n<li>Study of company <strong>communication</strong>, <strong>management</strong> and <strong>marketing</strong></li>\r\n<li>Study of<strong> strategic communication</strong> on <strong>Internet</strong></li>\r\n<li>Study of the importance of <strong>corporate communication</strong><span id=\"result_box\" class=\"long_text\" lang=\"en\"><span class=\"hps\"> (internal, external</span>, <span class=\"hps\">within a</span> <span class=\"hps\">team</span> <span class=\"hps\">...</span>)</span><span id=\"result_box\" class=\"long_text\" lang=\"en\"></span></li>\r\n</ul>'),(5,2,'fr','nom','Licence Communication Multimedia'),(6,2,'fr','description','<ul>\r\n<li>Bases du <strong>d&eacute;veloppement web</strong>\r\n<ul>\r\n<li>XHTML</li>\r\n<li>PHP</li>\r\n<li>Flash AS2 et AS3</li>\r\n<li>CSS 2</li>\r\n</ul>\r\n</li>\r\n<li>R&eacute;flexions sur le web et ses enjeux &eacute;conomiques</li>\r\n<li>Culture de l\'Internet</li>\r\n<li>Graphisme\r\n<ul>\r\n<li>Bases de <strong>Photoshop</strong> et<strong> Illustrator</strong></li>\r\n</ul>\r\n</li>\r\n</ul>'),(7,2,'en','nom','Master degree in computing web developing'),(8,2,'en','description','<ul>\r\n<li><strong>Web development</strong> basics:\r\n<ul>\r\n<li>XHTML</li>\r\n<li>PHP</li>\r\n<li>Flash AS2 and AS3</li>\r\n<li>CSS 2</li>\r\n</ul>\r\n</li>\r\n<li>Reflections on the Web and economic issues</li>\r\n<li><span class=\"long_text\" lang=\"en\"><span class=\"hps\">Graphism</span></span>\r\n<ul>\r\n<li><span class=\"long_text\" lang=\"en\"><span class=\"hps\"><strong>Photoshop</strong> and <strong>Illustrator</strong> basics</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>');
/*!40000 ALTER TABLE `parcours_etudes_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcours_experiences`
--

DROP TABLE IF EXISTS `parcours_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcours_experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `description` text,
  `url_image` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcours_experiences`
--

LOCK TABLES `parcours_experiences` WRITE;
/*!40000 ALTER TABLE `parcours_experiences` DISABLE KEYS */;
INSERT INTO `parcours_experiences` VALUES (1,'La Maison du Web','<p>Engag&eacute; en mars 2012 en tant que <strong>second d&eacute;veloppeur web</strong>, la Maison du Web a &eacute;t&eacute; ma premi&egrave;re exp&eacute;rience professionnelle dans le domaine. <br />Avec un autre d&eacute;veloppeur nous avons cr&eacute;&eacute; un <strong>framework PHP totalement orient&eacute; objet, un back office (WebGestion), </strong>plusieurs e-commerces et sites vitrines...</p>','/maison_du_web/logo.jpg',NULL,1,'2011-03-15'),(2,'Heliopsis','<p>Faire partie de l\'&eacute;quipe d\'Heliopsis m\'a permis de <strong>m\'am&eacute;liorer techniquement </strong>et<strong> organisationnellement </strong>de mani&egrave;re tr&egrave;s significative :</p>\r\n<ul>\r\n<li>Utilisation tr&egrave;s importante du bash de Linux (sous Ubuntu)</li>\r\n<li>Apprentissage de Git</li>\r\n<li>Apprentissage du HTML5</li>\r\n<li>Apprentissage du CMS eZpublish 4</li>\r\n<li>Rapide apprentissage d\'eZpublish 5 et de Symfony 2</li>\r\n<li>Approfondissement du PHP orient&eacute; objet</li>\r\n<li>Approfondissement du CSS3</li>\r\n<li>Approfondissement du Javascript (et notamment JQuery)...</li>\r\n</ul>','/heliopsis/logo.png',NULL,2,'2012-05-21');
/*!40000 ALTER TABLE `parcours_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcours_experiences_translation`
--

DROP TABLE IF EXISTS `parcours_experiences_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcours_experiences_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_2E5DF955232D562B` (`object_id`),
  CONSTRAINT `FK_2E5DF955232D562B` FOREIGN KEY (`object_id`) REFERENCES `parcours_experiences` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcours_experiences_translation`
--

LOCK TABLES `parcours_experiences_translation` WRITE;
/*!40000 ALTER TABLE `parcours_experiences_translation` DISABLE KEYS */;
INSERT INTO `parcours_experiences_translation` VALUES (1,1,'fr','nom','La Maison du Web'),(2,1,'fr','description','<p>Engag&eacute; en mars 2012 en tant que<strong> second d&eacute;veloppeur web</strong>, la Maison du Web a &eacute;t&eacute; ma premi&egrave;re exp&eacute;rience professionnelle dans le domaine.<br />Avec un autre d&eacute;veloppeur nous avons cr&eacute;&eacute; un<strong> framework PHP</strong> orient&eacute; objet, un back office (WebGestion), plusieurs e-commerces et sites vitrines...</p>'),(3,1,'en','nom','La Maison du Web'),(4,1,'en','description','<p><span id=\"result_box\" class=\"long_text\" lang=\"en\"><span class=\"hps\">Started in March</span> <span class=\"hps\">2012 as</span> <strong><span class=\"hps\">second</span> <span class=\"hps\">web</span> </strong><span class=\"hps\"><strong>developer</strong>,</span> La Maison du Web <span class=\"hps\">was my first</span> <span class=\"hps\">professional experience</span> <span class=\"hps\">in the field</span>. <br /><span class=\"hps\">With</span> a competent PHP<span class=\"hps\"> developer</span> <span class=\"hps\">we created a</span> <strong><span class=\"hps\">fully</span> <span class=\"hps\">object-oriented</span> <span class=\"hps\">PHP framework</span></strong>, <span class=\"hps\">a back office</span> <span class=\"hps atn\">(</span>webgestion), several <strong><span class=\"hps atn\">e-commerce</span></strong> and <span class=\"hps\">websites</span> <span class=\"hps\">showcases</span> <span class=\"hps\">...</span></span></p>'),(5,2,'fr','nom','Heliopsis'),(6,2,'fr','description','<p>Faire partie de l\'&eacute;quipe d\'Heliopsis m\'a permis de<strong> m\'am&eacute;liorer</strong> <strong>techniquement</strong> et <strong>organisationnellement</strong> de mani&egrave;re tr&egrave;s significative :</p>\r\n<ul>\r\n<li>Utilisation du bash de Linux (sous Ubuntu)</li>\r\n<li>Apprentissage de Git</li>\r\n<li>Apprentissage du HTML5</li>\r\n<li>Apprentissage du CMS eZpublish 4 &amp; 5</li>\r\n<li>Rapide apprentissage d\'eZpublish 5 et de Symfony 2</li>\r\n<li>Approfondissement du PHP orient&eacute; objet</li>\r\n<li>Approfondissement du CSS3</li>\r\n<li>Approfondissement du Javascript (et notamment JQuery)...</li>\r\n</ul>'),(7,2,'en','nom','Heliopsis'),(8,2,'en','description','<p><span id=\"result_box\" class=\"long_text\" lang=\"en\"><span class=\"hps\">Being part</span> <span class=\"hps\">of the</span> </span><span id=\"result_box\" class=\"long_text\" lang=\"en\"><span id=\"result_box\" class=\"long_text\" lang=\"en\"><span class=\"hps\">Heliopsis</span></span> <span class=\"hps\">team</span> <span class=\"hps\">allowed</span> <span class=\"hps\">me to <strong>improve</strong></span> <span class=\"hps\"><strong>my technic</strong>al <strong>and organisational skills </strong></span><span class=\"hps\">very significantly</span>: </span></p>\r\n<ul>\r\n<li><span class=\"long_text\" lang=\"en\">Use of the Linux bash</span></li>\r\n<li><span class=\"long_text\" lang=\"en\">Discover of Git</span></li>\r\n<li><span class=\"long_text\" lang=\"en\">HTML 5 knowledge acquisition<br /></span></li>\r\n<li><span class=\"long_text\" lang=\"en\">First experience of the CMS eZPublish 4</span></li>\r\n<li><span class=\"long_text\" lang=\"en\">Quick learning of eZpublish 5 and Symfony 2</span></li>\r\n<li><span class=\"long_text\" lang=\"en\">Skills improvement in object oriented PHP</span></li>\r\n<li><span class=\"long_text\" lang=\"en\"><span class=\"long_text\" lang=\"en\">Skills improvement</span> in CSS3</span></li>\r\n<li><span class=\"long_text\" lang=\"en\"><span class=\"long_text\" lang=\"en\">Skills improvement</span> in Javascript and jQuery</span></li>\r\n</ul>');
/*!40000 ALTER TABLE `parcours_experiences_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcours_translation`
--

DROP TABLE IF EXISTS `parcours_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcours_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_8FF4F156232D562B` (`object_id`),
  CONSTRAINT `FK_8FF4F156232D562B` FOREIGN KEY (`object_id`) REFERENCES `parcours` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcours_translation`
--

LOCK TABLES `parcours_translation` WRITE;
/*!40000 ALTER TABLE `parcours_translation` DISABLE KEYS */;
INSERT INTO `parcours_translation` VALUES (1,1,'fr','experiencesComplementaires','<ul>\r\n<li>Serveur dans des restaurants en Angleterre (Brighton) pendant trois mois pour <strong>renforcer mon niveau d\'anglais &eacute;crit et oral</strong></li>\r\n<li>Stagiaire &agrave; CESSIT (agence web)\r\n<ul>\r\n<li>Meilleure appr&eacute;hension de la Programmation Orient&eacute;e Objet avec Flash AS3</li>\r\n<li>Graphisme sous Illustrator et Photoshop</li>\r\n<li>R&eacute;alisation d\'un jeu en Flash</li>\r\n</ul>\r\n</li>\r\n<li>Stagiaire en communication &agrave; la pr&eacute;fecture du Calvados et de Basse Normandie\r\n<ul>\r\n<li>D&eacute;pannage informatique</li>\r\n<li>Mise en forme de documents sous LibreOffice...</li>\r\n</ul>\r\n</li>\r\n<li>Apprentissage autodidacte du langage C (et, de mani&egrave;re plus artificielle du C++) et du langage de GameMaker</li>\r\n</ul>'),(2,1,'fr','interets','<ul>\r\n<li>Randonn&eacute;es</li>\r\n<li>Cin&eacute;ma</li>\r\n<li>Litt&eacute;rature / &eacute;criture</li>\r\n<li>MAO (Musique Assist&eacute;e par Ordinateur)...</li>\r\n</ul>'),(3,1,'en','experiencesComplementaires','<ul>\r\n<li>Waiter in England (Brighton) to <strong>increase my english skills<br /></strong></li>\r\n<li>Trainee at CESSIS (web agency)\r\n<ul>\r\n<li>Better understanding of Object Oriented Programming with Flash AS3</li>\r\n<li>Graphics in Illustrator and Photoshop</li>\r\n<li>Development of a Flash game</li>\r\n</ul>\r\n</li>\r\n<li>Communication Intern at the prefecture of Normandy\r\n<ul>\r\n<li>Computer troubleshooting</li>\r\n<li>Formatting documents in LibreOffice ...</li>\r\n</ul>\r\n</li>\r\n<li>Self-learning C language (and more artificially C++) and development of some games with Gamemaker</li>\r\n</ul>'),(4,1,'en','interets','<ul>\r\n<li>Hiking</li>\r\n<li>Cinema</li>\r\n<li>Literature / Writing</li>\r\n<li>Computer music</li>\r\n</ul>');
/*!40000 ALTER TABLE `parcours_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projet_images`
--

DROP TABLE IF EXISTS `projet_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projet_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projet_id` int(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `nom` varchar(200) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_image_principale` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_image_project1_idx` (`projet_id`),
  CONSTRAINT `fk_project_image_project1` FOREIGN KEY (`projet_id`) REFERENCES `projets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projet_images`
--

LOCK TABLES `projet_images` WRITE;
/*!40000 ALTER TABLE `projet_images` DISABLE KEYS */;
INSERT INTO `projet_images` VALUES (1,2,'/maison_du_web/france_medecin/FM_accueil.jpg','France Médecin Accueil',1,1),(2,2,'/maison_du_web/france_medecin/FM_connection.jpg','France Médecin Connection',2,0),(3,2,'/maison_du_web/france_medecin/FM_envoyer_message.jpg','France Médecin Envoyer un message',3,0),(7,3,'/maison_du_web/idees_en_bulles/IEB_accueil.jpg','Idées en bulles Accueil',1,1),(8,3,'/maison_du_web/idees_en_bulles/IEB_produit_images.jpg','Idées en Bulles images produits',2,0),(9,3,'/maison_du_web/idees_en_bulles/IEB_produit_general_multilangue.jpg','Idées en Bulles produits multilangue',3,0),(16,4,'/heliopsis/forum_refugies/forumref_accueil.png','Forum réfugiés Accueil',1,1),(17,4,'/heliopsis/forum_refugies/forumref_frontpage.png','Forum réfugiés Page intérieur',2,0),(18,4,'/heliopsis/forum_refugies/forumref_page_interieur.png','Forum réfugiés Article',3,0),(22,8,'/heliopsis/lyonfrance/lyonfrance_accueil.png','Lyon France Mobile Accueil',1,1),(23,8,'/heliopsis/lyonfrance/lyonfrance_geolocalisation.png','Lyon France Mobile Géolocalisation',2,0),(24,8,'/heliopsis/lyonfrance/lyonfrance_articles.png','Lyon France Mobile Article',3,0),(25,11,'/heliopsis/montblanc_opera/montblanc_accueil.png','Mont Blanc Opéra Accueil',1,1),(26,11,'/heliopsis/montblanc_opera/montblanc_adherer.png','Mont Blanc Opéra Adhérer',2,0),(27,11,'/heliopsis/montblanc_opera/montblanc_infos.png','Mont Blanc Opéra Informations',3,0),(28,7,'/heliopsis/sogelink/sogelink_accueil.png','Sogelink Formation Accueil',1,1),(29,7,'/heliopsis/sogelink/sogelink_formations.png','Sogelink Formation Formations',2,0),(30,7,'/heliopsis/sogelink/sogelink_quiz.png','Sogelink Formation Quizz',3,0),(31,6,'/heliopsis/sydev/sydev_accueil.png','Sydev Accueil',1,1),(32,6,'/heliopsis/sydev/sydev_page_interieur.png','Sydev Page Intérieur',2,0),(33,6,'/heliopsis/sydev/sydev_recherche.png','Sydev Recherche',3,0),(34,10,'/heliopsis/urbispark_corpo/urbispark_abonnement.png','Urbis Park Corpo Abonnement',1,1),(35,10,'/heliopsis/urbispark_corpo/urbispark_article.png','Urbis Park Corpo Article',2,0),(36,10,'/heliopsis/urbispark_corpo/urbispark_parking.png','Urbis Park Corpo Parking',3,0),(37,13,'/orange/OEA/orange-1.jpg','Front office',1,0),(38,13,'/orange/OEA/orange-2.jpg','Back office événement',2,0),(39,13,'/orange/OEA/orange-3.jpg','Back office pushmail',3,0);
/*!40000 ALTER TABLE `projet_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projets`
--

DROP TABLE IF EXISTS `projets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `description` text,
  `difficultes` text,
  `technologies` text,
  `competences_acquises` text,
  `url_miniature` varchar(45) DEFAULT NULL,
  `slug` varchar(45) NOT NULL,
  `url_external` varchar(45) DEFAULT NULL,
  `is_website` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projets`
--

LOCK TABLES `projets` WRITE;
/*!40000 ALTER TABLE `projets` DISABLE KEYS */;
INSERT INTO `projets` VALUES (1,'Neo Framework',1,'<p>Il s\'agit d\'un framework en PHP d&eacute;stin&eacute; &agrave; &ecirc;tre utilis&eacute; en interne &agrave; la Maison du Web.<br />Le projet fut ensuite abandonn&eacute; alors que parfaitement fonctionnel.</p>','<p>Projet PHP qui &eacute;tait pour moi - &agrave; l\'&eacute;poque - d&eacute;mesur&eacute; par rapport &agrave; mes connaissances en PHP objet...</p>','<p>PHP orient&eacute; objet (avec des design pattern comme le Singleton ou la Factory)</p>','<ul>\r\n<li>Approfondissement important de l\'objet en PHP</li>\r\n<li>D&eacute;couverte du MVC</li>\r\n<li>Apprentissage de certains design pattern en PHP (Singleton et Factory)</li>\r\n<li>Apprentissage de Jquery</li>\r\n</ul>','/maison_du_web/neo_framework.jpg','neo-framework',NULL,0),(2,'France Médecin',2,'<p>Ce site permet de consulter des m&eacute;decins par t&eacute;l&eacute;phone ou avec des messages textuels.</p>','<ul>\r\n<li>Messagerie configurable en back office</li>\r\n<li>Syst&egrave;me d\'appels t&eacute;l&eacute;phoniques automatis&eacute;s entre patients et m&eacute;decins</li>\r\n<li>Evolution du back office WebGestion (d&eacute;velopp&eacute; par moi m&ecirc;me et un autre d&eacute;veloppeur)</li>\r\n</ul>','<ul>\r\n<li>Yii Framework (Framework PHP en MVC stricte)</li>\r\n<li>PHP, CSS 2, XHTML, jquery</li>\r\n</ul>','<ul>\r\n<li>Approfondissement de Jquery</li>\r\n<li>Approfondissement du CSS 2</li>\r\n<li>R&eacute;flexions sur la s&eacute;mantique XHTML</li>\r\n<li>Mise en place de la gestion des messages et appels en PHP</li>\r\n<li>Evolution du back office en PHP objet</li>\r\n</ul>','/maison_du_web/france_medecin.jpg','france-médecin','www.francemedecin.fr',1),(3,'Idées en bulles',3,'<p>Nous avons int&eacute;gralement r&eacute;alis&eacute; le front office et nous avons &eacute;tendu notre back office pour pouvoir g&eacute;rer cet e-commerce.</p>','<ul>\r\n<li>Yii Framework (framework PHP avec une structure MVC stricte)</li>\r\n<li>XHTML, CSS 2 et 3, javascript, jquery...</li>\r\n</ul>','<ul>\r\n<li>Gestion des prix en back office</li>\r\n<li>Gestion des commandes en front et back office</li>\r\n<li>Int&eacute;gration de Payzen</li>\r\n<li>Gestion des produits...</li>\r\n</ul>','<ul>\r\n<li>Fonctionnement d\'un e-commerce (en back et en front)</li>\r\n<li>Gestion des prix en tenant compte des taxes (notamment la TVA)</li>\r\n<li>Base de donn&eacute;es complexe et &eacute;volutive</li>\r\n<li>Approfondissement du SQL (jointures...)</li>\r\n<li>Aprofondissement de l\'AJAX avec Jquery (les pages de produits se chargeaient en AJAX, notamment)</li>\r\n</ul>','/maison_du_web/idees_en_bulles.jpg','idées-en-bulles',NULL,1),(4,'Forum Réfugiés',4,'<p>L\'association Forum R&eacute;fugi&eacute;s souhaitait une refonte de leur site en utilisant le CMS EzPublish 4</p>','<ul>\r\n<li>CMS EzPublish 4</li>\r\n<li>CSS3 / LESS, HTML5, PHP, Jquery, XML</li>\r\n</ul>','<ul>\r\n<li>Premi&egrave;re exp&eacute;rience du CMS EzPublish 4</li>\r\n<li>Charte graphique</li>\r\n<li>Utilisation massive de CSS 3</li>\r\n<li>Premi&egrave;re exp&eacute;rience en utilisant du HTML 5</li>\r\n</ul>','<ul>\r\n<li>Bases d\'EzPublish</li>\r\n<li>Utilisation du HTML5</li>\r\n<li>LESS...</li>\r\n</ul>','/heliopsis/forumre.jpg','forum-réfugiés','www.forumrefugies.org/',1),(5,'Eovi - Intranet Adhérent',5,'<p>La mutuelle Eovi voulait un nouvel Intranet. Il devait r&eacute;pondre &agrave; un grand nombre de sp&eacute;cifications techniques.</p>','<ul>\r\n<li>Arborescence tr&egrave;s complexe</li>\r\n<li>Syst&egrave;me d\'onglets</li>\r\n<li>Recherche avanc&eacute;e</li>\r\n<li>Syst&egrave;me de FAQ</li>\r\n<li>Intranet qui devait &ecirc;tre identique sous les diff&eacute;rentes versions d\'IE (&agrave; partir du 7), chrome et firefox</li>\r\n</ul>','<ul>\r\n<li>Utilisation polyfill (sans toutefois sacrifier les performances)</li>\r\n<li>CMS EzPublish 4</li>\r\n<li>HTML5, CSS 3 / LESS, jQuery, PHP, XML</li>\r\n</ul>','<ul>\r\n<li>Connaissances plus approfondie des diff&eacute;rents navigateurs</li>\r\n<li>Approfondissement en CSS 3 / LESS et HTML...</li>\r\n</ul>','/heliopsis/eovi.jpg','eovi---intranet-adhérent',NULL,0),(6,'Sydev',6,'<p>Site Internet vitrine pour la soci&eacute;t&eacute; Sydev sp&eacute;cialis&eacute; dans le developpement d\'ERP pour le BTP.</p>','<ul>\r\n<li>D&eacute;lais tr&egrave;s courts</li>\r\n</ul>','<ul>\r\n<li>CMS EzPublish 4</li>\r\n<li>HTML5, PHP, Jquery, XML, CSS 3</li>\r\n</ul>','<ul>\r\n<li>Travailler rapidement et efficacement</li>\r\n<li>Concessions entre qualit&eacute; du code et d&eacute;lais tr&egrave;s courts</li>\r\n</ul>','/heliopsis/sydev.jpg','sydev','www.sydev.com/',1),(7,'Sogelink Formation',7,'<p>La soci&eacute;t&eacute; Sogelink voulait un site Internet d&eacute;di&eacute; &agrave; la pr&eacute;sentation de leurs formations.</p>','<ul>\r\n<li>Cr&eacute;ation et gestion d\'un quiz (en PHP et Jquery) qui peut avoir :\r\n<ul>\r\n<li>Un nombre illimit&eacute; de questions (param&eacute;trables en back office)</li>\r\n<li>Un compte des r&eacute;sultats</li>\r\n<li>Un module analysant les r&eacute;sultats (en back office)</li>\r\n</ul>\r\n</li>\r\n<li>Recherche et tri en PHP (avec SolR et EzFind)</li>\r\n</ul>','<ul>\r\n<li>CMS EzPublish 4</li>\r\n<li>HTML5, Jquery, PHP, CSS 3, XML...</li>\r\n</ul>','<ul>\r\n<li>Renforcement des connaissances en Jquery, HTML5, CSS 3</li>\r\n<li>Comp&eacute;tences organisationnelles renforc&eacute;es (n&eacute;cessaire quand les d&eacute;lais sont courts)</li>\r\n</ul>','/heliopsis/sogelink.jpg','sogelink-formation','www.sogelink-formation.fr/',1),(8,'Lyon France Mobile',8,'<p>L\'office du tourisme de Lyon voulait une d&eacute;clinaison de son site www.lyon-france.com pour mobile.</p>','<ul>\r\n<li>Premi&egrave;re exp&eacute;rience dans le d&eacute;veloppement d\'un site web uniquement pour mobile</li>\r\n<li>G&eacute;olocalisation en javascript et PHP</li>\r\n<li>Syst&egrave;me de tri et de recherche avec SolR et EzFind</li>\r\n</ul>','<ul>\r\n<li>EzPublish 4</li>\r\n<li>Jquery, XML, PHP</li>\r\n</ul>','<ul>\r\n<li>Manipulation de l\'API Google Map (en javascript et PHP)</li>\r\n<li>Interfa&ccedil;age EzPublish avec SolR (via EzFind)</li>\r\n<li>Utilisation de SolR</li>\r\n</ul>','/heliopsis/lyonfrance.jpg','lyon-france-mobile',NULL,1),(9,'Intranet Foncière des Régions',9,'<p>La soci&eacute;t&eacute; Fonci&egrave;re des R&eacute;gions souhaitait avoir un nouvel intranet.</p>','<ul>\r\n<li>M&eacute;thodes de tri d\'informations via eZfind et SolR complexes</li>\r\n<li>Charte graphique complexe &agrave; int&eacute;grer (notamment la page d\'accueil)</li>\r\n<li>Import / export en CSV</li>\r\n</ul>','<ul>\r\n<li>EzPublish 4</li>\r\n<li>HTML5, CSS3, javascript, XML, PHP</li>\r\n</ul>','<ul>\r\n<li>Organisation et pr&eacute;paration en &eacute;quipe primordiale pour un projet de cette envergure</li>\r\n<li>D&eacute;veloppement de modules r&eacute;utilisables et &eacute;volutifs</li>\r\n<li>CSS3 pouss&eacute; (transitions, animations...)</li>\r\n</ul>','/heliopsis/fdr.jpg','intranet-foncière-des-régions',NULL,0),(10,'Urbis Park Corpo',10,'<p>Urbis Park, soci&eacute;t&eacute; poss&eacute;dant des parkings, voulait un site Internet qui permettrait &agrave; leurs clients de souscrire &agrave; des abonnements.</p>','<ul>\r\n<li>Cr&eacute;ation d\'une API en PHP qui int&egrave;gre le paiement via Paybox mais aussi toute la proc&eacute;dure d\'inscription</li>\r\n<li>Utilisation de nombreux design pattern en PHP</li>\r\n<li>Interfa&ccedil;age avec le module de paiement en ligne Paybox</li>\r\n<li>API s&eacute;curis&eacute;e au maximum</li>\r\n<li>Import / export de donn&eacute;es clients via des CSV</li>\r\n</ul>','<ul>\r\n<li>EzPublish 4</li>\r\n<li>PHP (massivement), CSS3, javascript, HTML 5</li>\r\n</ul>','<ul>\r\n<li>Approfondissement de PHP 5 objet (notamment au niveau structure et design pattern)</li>\r\n<li>Apprentissage de nombreux design pattern : mod&eacute;rateurs, fa&ccedil;ades, d&eacute;corateurs...</li>\r\n<li>Abstraction et interfa&ccedil;age en objet</li>\r\n</ul>','/heliopsis/urbispark.jpg','urbis-park-corpo','www.urbispark.fr',1),(11,'Mont Blanc Opéra',11,'<p>Mont Blanc Op&eacute;ra est un site promotionnel pour un &eacute;v&eacute;nement : un op&eacute;ra en plein milieu des montagnes.</p>','<ul>\r\n<li>D&eacute;lais tr&egrave;s courts</li>\r\n<li>Charte graphique complexe</li>\r\n</ul>','<ul>\r\n<li>CMS eZpublish 4</li>\r\n<li>HTML5, CSS3 \\ LESS, jQuery, PHP 5</li>\r\n</ul>','<ul>\r\n<li>Approfondissement CSS</li>\r\n<li>Travail qui devait &ecirc;tre rapide et efficace</li>\r\n<li>Organisation et pr&eacute;paration primordiales pour le respect des d&eacute;lais</li>\r\n</ul>','/heliopsis/montblanc.jpg','mont-blanc-opéra','www.montblancopera.com/',1),(12,'Eovi Extranet Adhérent',12,'<p>La mutuelle Eovi voulait d&eacute;velopper une nouvelle plateforme en ligne d&eacute;stin&eacute;e &agrave; ses clients.</p>','<ul>\r\n<li>Utilisation d\'eZpublish 5 bas&eacute; sur Symfony 2</li>\r\n<li>Nouveau langage de templating (twig)</li>\r\n<li>Formulaires complexes &agrave; mettre en place</li>\r\n<li>Responsive design mobile first</li>\r\n</ul>','<ul>\r\n<li>eZpublish 5</li>\r\n<li>CSS 3 / LESS, PHP, Twig, HTML5, YML, jQuery...</li>\r\n</ul>','<ul>\r\n<li>Approfondissement du responsive design</li>\r\n<li>Initiation &agrave; Symfony et eZpublish 5 (ORM doctrine, twig, syst&egrave;me de routes et de contr&ocirc;leurs...)</li>\r\n<li>Approfondissement du MVC</li>\r\n<li>Approfondissement du CSS3 / LESS / Media Queries</li>\r\n</ul>','/heliopsis/eovi_extranet.jpg','eovi-extranet-adhérent','www.espace-adherent.eovi.fr/login',1),(13,'Orange Event Avenue',13,'<p>La soci&eacute;t&eacute; Orange souhaitait d&eacute;velopper un site Internet qui pourrais promouvoir tous les &eacute;v&eacute;nements sposoris&eacute;s par la soci&eacute;t&eacute; mais aussi permettre a des invitants de pouvoir vendre des packages de service (h&eacute;bergement, transport...) li&eacute;s &agrave; des &eacute;venements.<br />Je suis arriv&eacute; en cours de d&eacute;veloppement.</p>','<ul>\r\n<li>Projet tr&egrave;s complexe avec beaucoup de param&ecirc;tres &agrave; prendre en compte</li>\r\n<li>Refonte total du back office d\'eZpublish</li>\r\n<li>Site qui doit &ecirc;tre compatible avec tous les navigateurs &agrave; partir de IE8</li>\r\n<li>Syst&egrave;me de popin et d\'AJAX complexe &agrave; maintenir</li>\r\n</ul>','<p>HTML5, OOP with PHP5, AJAX, jQuery...</p>','<ul>\r\n<li>Knowledge in back end development</li>\r\n<li>Knowledge in jQuery and AJAX</li>\r\n</ul>','/OAB/OEA.png','orange-event-avenue','eventavenue.orange.com',1);
/*!40000 ALTER TABLE `projets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projets_groupes`
--

DROP TABLE IF EXISTS `projets_groupes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projets_groupes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projets_groupes`
--

LOCK TABLES `projets_groupes` WRITE;
/*!40000 ALTER TABLE `projets_groupes` DISABLE KEYS */;
INSERT INTO `projets_groupes` VALUES (1,'La Maison du Web',1),(2,'Heliopsis',2),(3,'Orange',3);
/*!40000 ALTER TABLE `projets_groupes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projets_translation`
--

DROP TABLE IF EXISTS `projets_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projets_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_2AA2260232D562B` (`object_id`),
  CONSTRAINT `FK_2AA2260232D562B` FOREIGN KEY (`object_id`) REFERENCES `projets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projets_translation`
--

LOCK TABLES `projets_translation` WRITE;
/*!40000 ALTER TABLE `projets_translation` DISABLE KEYS */;
INSERT INTO `projets_translation` VALUES (1,1,'fr','nom','Neo Framework'),(2,1,'fr','description','<p>Il s\'agit d\'un framework en PHP d&eacute;stin&eacute; &agrave; &ecirc;tre utilis&eacute; en interne &agrave; la Maison du Web.<br />Le projet fut ensuite abandonn&eacute; alors que parfaitement fonctionnel.</p>'),(3,1,'fr','difficultes','<p>Projet PHP qui &eacute;tait pour moi - &agrave; l\'&eacute;poque - d&eacute;mesur&eacute; par rapport &agrave; mes connaissances en PHP objet...</p>'),(4,1,'fr','technologies','<p>PHP orient&eacute; objet (avec des design pattern comme le Singleton ou la Factory)</p>'),(5,1,'fr','competencesAcquises','<ul>\r\n<li>Approfondissement de l\'objet en PHP</li>\r\n<li>D&eacute;couverte du MVC</li>\r\n<li>Apprentissage de certains design pattern en PHP (Singleton et Factory)</li>\r\n<li>Apprentissage de Jquery</li>\r\n</ul>'),(6,1,'en','nom','Neo Framework'),(7,1,'en','description','<p>It is a PHP framework <span id=\"result_box\" lang=\"en\"><span class=\"hps\">intended </span></span> to be used for website development at the web agency La Maison du Web.<br /><span id=\"result_box\" lang=\"en\"><span class=\"hps\">The project</span> <span class=\"hps\">was fully functional but was abandonned.&nbsp;</span></span></p>'),(8,1,'en','difficultes','<p>This PHP Project was, at the time, huge and complicated given my knowledge of OOP...</p>'),(9,1,'en','technologies','<p>PHP object oriented with the use of design pattern like Singleton, factory, MVC.</p>'),(10,1,'en','competencesAcquises','<ul>\r\n<li>Deepening of PHP OOP</li>\r\n<li>Discovery of MVC principles</li>\r\n<li>Learning some design patterns in PHP</li>\r\n<li>Learning of jQuery</li>\r\n</ul>'),(11,2,'fr','nom','France Médecin'),(12,2,'fr','description','<p>Ce site permet de consulter des m&eacute;decins par t&eacute;l&eacute;phone ou avec des messages textuels.</p>'),(13,2,'fr','difficultes','<ul>\r\n<li>Messagerie configurable en back office</li>\r\n<li>Syst&egrave;me d\'appels t&eacute;l&eacute;phoniques automatis&eacute;s entre patients et m&eacute;decins</li>\r\n<li>Evolution du back office WebGestion (d&eacute;velopp&eacute; par moi m&ecirc;me et un autre d&eacute;veloppeur)</li>\r\n</ul>'),(14,2,'fr','technologies','<ul>\r\n<li>Yii Framework (Framework PHP en MVC stricte)</li>\r\n<li>PHP, CSS 2, XHTML, jquery</li>\r\n</ul>'),(15,2,'fr','competencesAcquises','<ul>\r\n<li>Approfondissement de Jquery</li>\r\n<li>Approfondissement du CSS 2</li>\r\n<li>R&eacute;flexions sur la s&eacute;mantique XHTML</li>\r\n<li>Mise en place de la gestion des messages et appels en PHP</li>\r\n<li>Evolution du back office en PHP objet</li>\r\n</ul>'),(16,2,'en','nom','France Médecin'),(17,2,'en','description','<p>This site provides access to doctors by telephone or text messages.</p>'),(18,2,'en','difficultes','<ul>\r\n<li><span id=\"result_box\" class=\"short_text\" lang=\"en\"><span class=\"hps\">Configurable</span> <span class=\"hps\">messaging</span> <span class=\"hps\">into the adminstration<br /></span></span></li>\r\n<li><span class=\"short_text\" lang=\"en\"><span class=\"hps\">System of automatized calls between patient and doctor</span></span></li>\r\n<li><span class=\"short_text\" lang=\"en\"><span class=\"hps\">Evolutions for Webgestion (an administration system developed by myself and another developer) </span></span></li>\r\n</ul>'),(19,2,'en','technologies','<ul>\r\n<li>Yii Framewotk (PHP framework that uses strict MVC)</li>\r\n<li>PHP, CSS 2, XHTML, jquery</li>\r\n</ul>'),(20,2,'en','competencesAcquises','<ul>\r\n<li>Deepening jQuery</li>\r\n<li>Deepening CSS 2</li>\r\n<li><span id=\"result_box\" lang=\"en\"><span class=\"hps\">Reflections on</span> <span class=\"hps\">XHTML </span></span><span id=\"result_box\" lang=\"en\"><span class=\"hps\">semantic</span></span></li>\r\n</ul>'),(21,3,'fr','nom','Idées en bulles'),(22,3,'fr','description','<p>Nous avons int&eacute;gralement r&eacute;alis&eacute; le front office et nous avons &eacute;tendu notre back office pour pouvoir g&eacute;rer cet e-commerce.</p>'),(23,3,'fr','difficultes','<ul>\r\n<li>Yii Framework (framework PHP avec une structure MVC stricte)</li>\r\n<li>XHTML, CSS 2 et 3, javascript, jquery...</li>\r\n</ul>'),(24,3,'fr','technologies','<ul>\r\n<li>Gestion des prix en back office</li>\r\n<li>Gestion des commandes en front et back office</li>\r\n<li>Int&eacute;gration de Payzen</li>\r\n<li>Gestion des produits...</li>\r\n</ul>'),(25,3,'fr','competencesAcquises','<ul>\r\n<li>Fonctionnement d\'un e-commerce (en back et en front)</li>\r\n<li>Gestion des prix en tenant compte des taxes (notamment la TVA)</li>\r\n<li>Base de donn&eacute;es complexe et &eacute;volutive</li>\r\n<li>Approfondissement du SQL (jointures...)</li>\r\n<li>Aprofondissement de l\'AJAX avec Jquery (les pages de produits se chargeaient en AJAX, notamment)</li>\r\n</ul>'),(26,3,'en','nom','Idées en bulles'),(27,3,'en','description','<p>We fully realized the front office and we extended our back office to administrate this e-commerce.</p>'),(28,3,'en','difficultes','<ul>\r\n<li>Price administration with taxes into the back office</li>\r\n<li>Order administration in the front and the back office</li>\r\n<li>Integration of a <span id=\"result_box\" lang=\"en\"><span class=\"hps\">payment module</span> </span></li>\r\n<li><span lang=\"en\"><span class=\"hps\">Product administration...</span></span></li>\r\n</ul>'),(29,3,'en','technologies','<ul>\r\n<li>Yii Framework (PHP Framework with a strict MVC structure)</li>\r\n<li>XHTML, CSS 2 et 3, javascript, jquery...</li>\r\n</ul>'),(30,3,'en','competencesAcquises','<ul>\r\n<li>Operation of e-commerce (back and front)</li>\r\n<li>Complex database with many join tables</li>\r\n<li><span id=\"result_box\" lang=\"en\"> <span class=\"hps\">Many AJAX request using jQuery</span></span></li>\r\n</ul>'),(31,4,'fr','nom','Forum Réfugiés'),(32,4,'fr','description','<p>L\'association Forum R&eacute;fugi&eacute;s souhaitait une refonte de leur site en utilisant le CMS EzPublish 4.</p>'),(33,4,'fr','difficultes','<ul>\r\n<li>CMS EzPublish 4</li>\r\n<li>CSS3 / LESS, HTML5, PHP, Jquery, XML</li>\r\n</ul>'),(34,4,'fr','technologies','<ul>\r\n<li>Premi&egrave;re exp&eacute;rience du CMS EzPublish 4</li>\r\n<li>Charte graphique</li>\r\n<li>Utilisation massive de CSS 3</li>\r\n<li>Premi&egrave;re exp&eacute;rience en utilisant du HTML 5</li>\r\n</ul>'),(35,4,'fr','competencesAcquises','<ul>\r\n<li>Bases d\'EzPublish</li>\r\n<li>Utilisation du HTML5</li>\r\n<li>LESS...</li>\r\n</ul>'),(36,4,'en','nom','Forum Réfugiés'),(37,4,'en','description','<p>The association Forum R&eacute;fugi&eacute;s wanted a new website using the EzPublish 4 CMS.</p>'),(38,4,'en','difficultes','<ul>\r\n<li>First development using eZpubish</li>\r\n<li>The design was complex</li>\r\n<li>Extensive use of CSS 3</li>\r\n<li>First experience using HTML 5</li>\r\n</ul>'),(39,4,'en','technologies','<ul>\r\n<li>eZpublish 4</li>\r\n<li>CSS3 / LESS, HTML5, PHP, Jquery, XML</li>\r\n</ul>'),(40,4,'en','competencesAcquises','<ul>\r\n<li>eZpublish bases</li>\r\n<li>Use of HTML5</li>\r\n<li>LESS</li>\r\n<li>New performant workflow</li>\r\n</ul>'),(41,5,'fr','nom','Eovi - Intranet Adhérent'),(42,5,'fr','description','<p>La mutuelle Eovi voulait un nouvel Intranet. Il devait r&eacute;pondre &agrave; un grand nombre de sp&eacute;cifications techniques.</p>'),(43,5,'fr','difficultes','<ul>\r\n<li>Arborescence tr&egrave;s complexe</li>\r\n<li>Syst&egrave;me d\'onglets</li>\r\n<li>Recherche avanc&eacute;e</li>\r\n<li>Syst&egrave;me de FAQ</li>\r\n<li>Intranet qui devait &ecirc;tre identique sous les diff&eacute;rentes versions d\'IE (&agrave; partir du 7), chrome et firefox</li>\r\n</ul>'),(44,5,'fr','technologies','<ul>\r\n<li>Utilisation polyfill (sans toutefois sacrifier les performances)</li>\r\n<li>CMS EzPublish 4</li>\r\n<li>HTML5, CSS 3 / LESS, jQuery, PHP, XML</li>\r\n</ul>'),(45,5,'fr','competencesAcquises','<ul>\r\n<li>Connaissances plus approfondie des diff&eacute;rents navigateurs</li>\r\n<li>Approfondissement en CSS 3 / LESS et HTML...</li>\r\n</ul>'),(46,5,'en','nom','Eovi - Intranet Adhérent'),(47,5,'en','description','<p><span id=\"result_box\" lang=\"en\"><span class=\"hps\">The french EO</span><span class=\"hps\">VI mutual</span> <span class=\"hps\">wanted a</span> <span class=\"hps\">new</span> <span class=\"hps\">Intranet</span><span>.</span></span>There was many technical specifications and constraints.</p>'),(48,5,'en','difficultes','<ul>\r\n<li>Very complex tree with many sort of contents</li>\r\n<li>Tab system</li>\r\n<li>Advanced search</li>\r\n<li>FAQ system</li>\r\n<li>This intranet had to be identical in IE7, Firefox and Chrome</li>\r\n</ul>'),(49,5,'en','technologies','<ul>\r\n<li><span id=\"result_box\" lang=\"en\"><span class=\"hps\">Polyfill</span> <span class=\"hps\">use</span> <span class=\"hps atn\">(</span><span>without sacrificing</span> <span class=\"hps\">performance)</span> </span></li>\r\n<li><span lang=\"en\">CMS EzPublish 4</span></li>\r\n<li><span lang=\"en\">HTML5, CSS 3 / LESS, jQuery, PHP, XML</span></li>\r\n</ul>'),(50,5,'en','competencesAcquises','<ul>\r\n<li>Deeper knowledge of different browsers</li>\r\n<li><span id=\"result_box\" lang=\"en\"><span class=\"hps\">Deeper</span> <span class=\"hps\">knowledge </span></span>in CSS3 / HTML5, LESS ...</li>\r\n</ul>'),(51,6,'fr','nom','Sydev'),(52,6,'fr','description','<p>Site Internet vitrine pour la soci&eacute;t&eacute; Sydev sp&eacute;cialis&eacute; dans le developpement d\'ERP pour le BTP.</p>'),(53,6,'fr','difficultes','<p>D&eacute;lais tr&egrave;s courts</p>'),(54,6,'fr','technologies','<ul>\r\n<li>CMS EzPublish 4</li>\r\n<li>HTML5, PHP, Jquery, XML, CSS 3</li>\r\n</ul>'),(55,6,'fr','competencesAcquises','<ul>\r\n<li>Travailler rapidement et efficacement</li>\r\n<li>Concessions entre qualit&eacute; du code et d&eacute;lais tr&egrave;s courts</li>\r\n</ul>'),(56,6,'en','nom','Sydev'),(57,6,'en','description','<p>The company Sydev wanted a website for promote their ERP.</p>'),(58,6,'en','difficultes','<p>Very short <span id=\"result_box\" class=\"short_text\" lang=\"en\"><span class=\"hps\">deadlines</span></span> to develop it</p>'),(59,6,'en','technologies','<ul>\r\n<li>CMS EzPublish 4</li>\r\n<li>HTML5, PHP, Jquery, XML, CSS 3</li>\r\n</ul>'),(60,6,'en','competencesAcquises','<ul>\r\n<li>Work quickly and efficiently</li>\r\n<li>Keeping a good code quality</li>\r\n</ul>'),(61,7,'fr','nom','Sogelink Formation'),(62,7,'fr','description','<p>La soci&eacute;t&eacute; Sogelink voulait un site Internet d&eacute;di&eacute; &agrave; la pr&eacute;sentation de leurs formations.</p>'),(63,7,'fr','difficultes','<ul>\r\n<li>Cr&eacute;ation et gestion d\'un quiz (en PHP et Jquery) qui peut avoir :\r\n<ul>\r\n<li>Un nombre illimit&eacute; de questions (param&eacute;trables en back office)</li>\r\n<li>Un compte des r&eacute;sultats</li>\r\n<li>Un module analysant les r&eacute;sultats (en back office)</li>\r\n</ul>\r\n</li>\r\n<li>Recherche et tri en PHP (avec SolR et EzFind)</li>\r\n</ul>'),(64,7,'fr','technologies','<ul>\r\n<li>CMS EzPublish 4</li>\r\n<li>HTML5, Jquery, PHP, CSS 3, XML...</li>\r\n</ul>'),(65,7,'fr','competencesAcquises','<ul>\r\n<li>Renforcement des connaissances en Jquery, HTML5, CSS 3</li>\r\n<li>Comp&eacute;tences organisationnelles renforc&eacute;es (n&eacute;cessaire quand les d&eacute;lais sont courts)</li>\r\n</ul>'),(66,7,'en','nom','Sogelink Formation'),(67,7,'en','description','<p>The company Sogelink wanted a website to present their training products.</p>'),(68,7,'en','difficultes','<ul>\r\n<li>Creation of a quizz in javascript\r\n<ul>\r\n<li>Unlimited number of questions (configurable in the back office)</li>\r\n<li>Result count</li>\r\n<li><span id=\"result_box\" class=\"short_text\" lang=\"en\"><span class=\"hps\">A module</span> <span class=\"hps\">analyzing the results</span> <span class=\"hps atn\">(</span>back office)</span></li>\r\n</ul>\r\n</li>\r\n<li><span class=\"short_text\" lang=\"en\">Search and sorting with solR and eZFind</span></li>\r\n</ul>'),(69,7,'en','technologies','<ul>\r\n<li>CMS EzPublish 4</li>\r\n<li>HTML5, Jquery, PHP, CSS 3, XML...</li>\r\n</ul>'),(70,7,'en','competencesAcquises','<ul>\r\n<li>Enhanced knowledge in Jquery, HTML5, CSS 3</li>\r\n<li>Organizational skills strengthened (necessary when deadlines are short)</li>\r\n</ul>'),(71,8,'fr','nom','Lyon France Mobile'),(72,8,'fr','description','<p>L\'office du tourisme de Lyon voulait une d&eacute;clinaison de son site www.lyon-france.com pour mobile.</p>'),(73,8,'fr','difficultes','<ul>\r\n<li>Premi&egrave;re exp&eacute;rience dans le d&eacute;veloppement d\'un site web uniquement pour mobile</li>\r\n<li>G&eacute;olocalisation en javascript et PHP</li>\r\n<li>Syst&egrave;me de tri et de recherche avec SolR et EzFind</li>\r\n</ul>'),(74,8,'fr','technologies','<ul>\r\n<li>EzPublish 4</li>\r\n<li>Jquery, XML, PHP</li>\r\n</ul>'),(75,8,'fr','competencesAcquises','<ul>\r\n<li>Manipulation de l\'API Google Map (en javascript et PHP)</li>\r\n<li>Interfa&ccedil;age EzPublish avec SolR (via EzFind)</li>\r\n<li>Utilisation de SolR</li>\r\n</ul>'),(76,8,'en','nom','Lyon France Mobile'),(77,8,'en','description','<p>The Tourist Office of Lyon wanted a new version of its website for mobile.</p>'),(78,8,'en','difficultes','<ul>\r\n<li>First experience in development exclusively for mobile</li>\r\n<li>Geolocation in javascript and PHP</li>\r\n<li>Sorting and search system with solR and eZFind</li>\r\n</ul>'),(79,8,'en','technologies','<ul>\r\n<li>EzPublish 4</li>\r\n<li>Jquery, XML, PHP...</li>\r\n</ul>'),(80,8,'en','competencesAcquises','<ul>\r\n<li>Use of Google Map API (in javascript and PHP)</li>\r\n<li>Use of solR to show restaurants and hostels near user</li>\r\n</ul>'),(81,9,'fr','nom','Intranet Foncière des Régions'),(82,9,'fr','description','<p>La soci&eacute;t&eacute; Fonci&egrave;re des R&eacute;gions souhaitait avoir un nouvel intranet.</p>'),(83,9,'fr','difficultes','<ul>\r\n<li>M&eacute;thodes de tri d\'informations via eZfind et SolR complexes</li>\r\n<li>Charte graphique complexe &agrave; int&eacute;grer (notamment la page d\'accueil)</li>\r\n<li>Import / export en CSV</li>\r\n</ul>'),(84,9,'fr','technologies','<ul>\r\n<li>EzPublish 4</li>\r\n<li>HTML5, CSS3, javascript, XML, PHP</li>\r\n</ul>'),(85,9,'fr','competencesAcquises','<ul>\r\n<li>Organisation et pr&eacute;paration en &eacute;quipe primordiale pour un projet de cette envergure</li>\r\n<li>D&eacute;veloppement de modules r&eacute;utilisables et &eacute;volutifs</li>\r\n<li>CSS3 pouss&eacute; (transitions, animations...)</li>\r\n</ul>'),(86,9,'en','nom','Intranet Foncière des Régions'),(87,9,'en','description','<p>The french company Fonci&egrave;re des R&eacute;gions wanted a new intranet.</p>'),(88,9,'en','difficultes','<ul>\r\n<li>Sorting methods very complex (with eZfind and SolR)</li>\r\n<li>Design complex to integrate. It had to be compatible with IE7.</li>\r\n<li>Import / Export module</li>\r\n</ul>'),(89,9,'en','technologies','<ul>\r\n<li>EzPublish 4</li>\r\n<li>HTML5, CSS3, javascript, XML, PHP</li>\r\n</ul>'),(90,9,'en','competencesAcquises','<ul>\r\n<li>Organisation and preparation in the team very important for a project of this size</li>\r\n<li>Development of modules reusable and scalable</li>\r\n<li>Transitions and complex animations in CSS3</li>\r\n</ul>'),(91,10,'fr','nom','Urbis Park Corpo'),(92,10,'fr','description','<p>Urbis Park, soci&eacute;t&eacute; poss&eacute;dant des parkings, voulait un site Internet qui permettrait &agrave; leurs clients de souscrire &agrave; des abonnements.</p>'),(93,10,'fr','difficultes','<ul>\r\n<li>Cr&eacute;ation d\'une API en PHP qui int&egrave;gre le paiement via Paybox mais aussi toute la proc&eacute;dure d\'inscription</li>\r\n<li>Utilisation de nombreux design pattern en PHP</li>\r\n<li>Interfa&ccedil;age avec le module de paiement en ligne Paybox</li>\r\n<li>API s&eacute;curis&eacute;e au maximum</li>\r\n<li>Import / export de donn&eacute;es clients via des CSV</li>\r\n</ul>'),(94,10,'fr','technologies','<ul>\r\n<li>EzPublish 4</li>\r\n<li>PHP CSS3, javascript, HTML 5</li>\r\n</ul>'),(95,10,'fr','competencesAcquises','<ul>\r\n<li>Approfondissement de PHP 5 objet (notamment au niveau structure et design pattern)</li>\r\n<li>Apprentissage de nombreux design pattern : mod&eacute;rateurs, fa&ccedil;ades, d&eacute;corateurs...</li>\r\n<li>Abstraction et interfa&ccedil;age en objet</li>\r\n</ul>'),(96,10,'en','nom','Urbis Park Corpo'),(97,10,'en','description','<p>Urbis Park, a french parking company, wanted a website for their clients (they can subscribe parking <span id=\"result_box\" class=\"short_text\" lang=\"en\"><span class=\"hps\">spaces</span></span> and pay bills).</p>'),(98,10,'en','difficultes','<ul>\r\n<li>Development of a PHP API scalable that integrates payment with Paybox but also the entire registration procedure</li>\r\n<li>Use of PHP design pattern</li>\r\n<li>API secure</li>\r\n<li>Import / export a lot of data</li>\r\n</ul>'),(99,10,'en','technologies','<ul>\r\n<li>EzPublish 4</li>\r\n<li>PHP, CSS3, javascript, HTML 5</li>\r\n</ul>'),(100,10,'en','competencesAcquises','<ul>\r\n<li>Deepening of PHP 5 object (including structure and design pattern level)</li>\r\n<li>Learning many design patterns: moderator, facade, decorator ...</li>\r\n<li>Use of abstraction and interfacing in OOP</li>\r\n</ul>'),(101,12,'fr','nom','Eovi Extranet Adhérent'),(102,12,'fr','description','<p>La mutuelle Eovi voulait d&eacute;velopper une nouvelle plateforme en ligne d&eacute;stin&eacute;e &agrave; ses clients.</p>'),(103,12,'fr','difficultes','<ul>\r\n<li>Utilisation d\'eZpublish 5 bas&eacute; sur Symfony 2</li>\r\n<li>Nouveau langage de templating (twig)</li>\r\n<li>Formulaires complexes &agrave; mettre en place</li>\r\n<li>Responsive design mobile first</li>\r\n</ul>'),(104,12,'fr','technologies','<ul>\r\n<li>eZpublish 5</li>\r\n<li>CSS 3 / LESS, PHP, Twig, HTML5, YML, jQuery...</li>\r\n</ul>'),(105,12,'fr','competencesAcquises','<ul>\r\n<li>Approfondissement du responsive design</li>\r\n<li>Initiation &agrave; Symfony et eZpublish 5 (ORM doctrine, twig, syst&egrave;me de routes et de contr&ocirc;leurs...)</li>\r\n<li>Approfondissement du MVC</li>\r\n<li>Approfondissement du CSS3 / LESS / Media Queries</li>\r\n</ul>'),(106,12,'en','nom','Eovi Extranet Adhérent'),(107,12,'en','description','<p>The mutual EOVI wanted to develop a new online platform to its customers.</p>'),(108,12,'en','difficultes','<ul>\r\n<li>Use of eZPublish 5 based on the framework Symfony 2</li>\r\n<li>New templating language I didn\'t know (twig)</li>\r\n<li>Complex forms with many exotics fields</li>\r\n<li>Responsive design mobile first</li>\r\n</ul>'),(109,12,'en','technologies','<ul>\r\n<li>eZpublish 5</li>\r\n<li>CSS 3 / LESS, PHP, Twig, HTML5, YML, jQuery...</li>\r\n</ul>'),(110,12,'en','competencesAcquises','<ul>\r\n<li>Deepening of responsive design</li>\r\n<li>Mechanisms of Symfony 2 : routing, use of ORM doctrine, twig</li>\r\n<li>Deepening of MVC design pattern</li>\r\n<li>Deepening of CSS 3 / LESS / media queries</li>\r\n</ul>'),(111,11,'fr','nom','Mont Blanc Opéra'),(112,11,'fr','description','<p>Mont Blanc Op&eacute;ra est un site promotionnel pour un &eacute;v&eacute;nement : un op&eacute;ra en plein milieu des montagnes.</p>'),(113,11,'fr','difficultes','<ul>\r\n<li>D&eacute;lais tr&egrave;s courts</li>\r\n<li>Charte graphique complexe</li>\r\n</ul>'),(114,11,'fr','technologies','<ul>\r\n<li>CMS eZpublish 4</li>\r\n<li>HTML5, CSS3 \\ LESS, jQuery, PHP 5</li>\r\n</ul>'),(115,11,'fr','competencesAcquises','<ul>\r\n<li>Approfondissement CSS</li>\r\n<li>Travail qui devait &ecirc;tre rapide et efficace</li>\r\n<li>Organisation et pr&eacute;paration primordiales pour le respect des d&eacute;lais</li>\r\n</ul>'),(116,11,'en','nom','Mont Blanc Opéra'),(117,11,'en','description','<p>Mont Blanc Opera is a musical event which take place in the middle of mountains. The team of Mont Blanc Opera wanted a website to promote the event.</p>'),(118,11,'en','difficultes','<ul>\r\n<li>Deadlines very short</li>\r\n<li>Complex design to integrate</li>\r\n</ul>'),(119,11,'en','technologies','<ul>\r\n<li>CMS eZpublish 4</li>\r\n<li>HTML5, CSS3 \\ LESS, jQuery, PHP 5</li>\r\n</ul>'),(120,11,'en','competencesAcquises','<ul>\r\n<li>Deepening in CSS technology</li>\r\n<li>Development had to be to quick and efficient</li>\r\n<li><span id=\"result_box\" lang=\"en\"><span class=\"hps\">Organization and preparation</span> <span class=\"hps\">essential for</span> <span class=\"hps\">meeting deadlines</span></span></li>\r\n</ul>'),(121,13,'fr','nom','Orange Event Avenue'),(122,13,'fr','description','<p>Orange souhaitait d&eacute;velopper un site Internet qui pourrais promouvoir tous les &eacute;v&eacute;nements sposoris&eacute;s par la soci&eacute;t&eacute;.</p>'),(123,13,'fr','difficultes','<ul>\r\n<li>Projet tr&egrave;s complexe avec beaucoup de fonctionnalit&eacute;s</li>\r\n<li>Refonte total du back office d\'eZpublish</li>\r\n<li>Site qui doit &ecirc;tre compatible avec tous les navigateurs &agrave; partir de IE8</li>\r\n<li>Syst&egrave;me de popin et d\'AJAX complexe &agrave; maintenir</li>\r\n</ul>'),(124,13,'fr','technologies','<p>HTML5, OOP with PHP5, AJAX, jQuery...</p>'),(125,13,'fr','competencesAcquises','<ul>\r\n<li>Knowledge in back end development</li>\r\n<li>Knowledge in jQuery and AJAX</li>\r\n</ul>'),(126,13,'en','nom','Orange Event Avenue'),(127,13,'en','description','<p>The company Orange wanted a website to promote all events sponsored by the company and also allow people to sell packages (wth transport and rooming) for other people invited at events.</p>'),(128,13,'en','difficultes','<ul>\r\n<li>Project very complex with a lot of functionalities</li>\r\n<li>Development of a new back office for eZpublish</li>\r\n<li>Website which have to be compatible with all browsers (IE8 and so on)</li>\r\n<li>Ajax and popin system very complex</li>\r\n</ul>'),(129,13,'en','technologies','<p>HTML5, OOP with PHP5, AJAX, jQuery...</p>'),(130,13,'en','competencesAcquises','<ul>\r\n<li>Knowledge in back end development</li>\r\n<li>Knowledge in jQuery and AJAX</li>\r\n</ul>');
/*!40000 ALTER TABLE `projets_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quisuisje`
--

DROP TABLE IF EXISTS `quisuisje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quisuisje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pourquoi` text,
  `methodes` text,
  `politique` text,
  `infos` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quisuisje`
--

LOCK TABLES `quisuisje` WRITE;
/*!40000 ALTER TABLE `quisuisje` DISABLE KEYS */;
INSERT INTO `quisuisje` VALUES (1,'<p>Depuis l\'&acirc;ge de 8 ans, lorsque mon fr&egrave;re acheta un Thompson MO5, <strong>je suis passionn&eacute; par l\'informatique et plus particuli&egrave;rement le d&eacute;veloppement</strong>.<br />La communication via Internet et la rapide &eacute;volution de ce m&eacute;dia m\'int&eacute;ressent particuli&eacute;rement. <br /><strong>Apprendre sans cesse dans ce domaine et progresser</strong>, voil&agrave; le moteur principal de ma motivation.</p>','<ul>\r\n<li>Volont&eacute; de <strong>code clair et comment&eacute;</strong></li>\r\n<li>Structures de <strong>code &eacute;volutives</strong></li>\r\n<li><strong>Adapation du design</strong> pour les diff&eacute;rents navigateurs (et surtout les anciens, &agrave; partir d\'IE7)</li>\r\n</ul>','<ul>\r\n<li>Respect des <strong>standards du web</strong></li>\r\n<li><strong>Tests syst&eacute;matiques</strong> sur les environnements habituels (local, recette et production)</li>\r\n<li>V&eacute;rification du serveur de production avant mise en ligne (version de PHP, programmes n&eacute;cessaires install&eacute;s...)</li>\r\n<li>Utilisation de la <strong>m&eacute;thode Kanban</strong> en agence pendant un an</li>\r\n</ul>','<ul>\r\n<li>Connaissances sur l\'installation d\'un <strong>serveur LAMP sur Ubuntu / Debian</strong></li>\r\n<li>Tr&egrave;s bonne connaissance de Windows (jusqu\'&agrave; windows 7)</li>\r\n<li>Bonne connaissance du <strong>d&eacute;bugage JS et PHP</strong> (utilisation actuelle de Xdebug coupl&eacute; &agrave; PHPStorm)</li>\r\n<li>Ma&icirc;trise des webfonts, requ&ecirc;tes HTTP...</li>\r\n</ul>');
/*!40000 ALTER TABLE `quisuisje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quisuisje_accroches`
--

DROP TABLE IF EXISTS `quisuisje_accroches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quisuisje_accroches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accroche_competences` text,
  `accroche_methodes` text,
  `accroche_politique` text,
  `accroche_infos` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quisuisje_accroches`
--

LOCK TABLES `quisuisje_accroches` WRITE;
/*!40000 ALTER TABLE `quisuisje_accroches` DISABLE KEYS */;
/*!40000 ALTER TABLE `quisuisje_accroches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quisuisje_accroches_translation`
--

DROP TABLE IF EXISTS `quisuisje_accroches_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quisuisje_accroches_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_4D778A4232D562B` (`object_id`),
  CONSTRAINT `FK_4D778A4232D562B` FOREIGN KEY (`object_id`) REFERENCES `quisuisje_accroches` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quisuisje_accroches_translation`
--

LOCK TABLES `quisuisje_accroches_translation` WRITE;
/*!40000 ALTER TABLE `quisuisje_accroches_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `quisuisje_accroches_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quisuisje_competences`
--

DROP TABLE IF EXISTS `quisuisje_competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quisuisje_competences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `description` text,
  `position` int(11) DEFAULT NULL,
  `url_image` varchar(45) DEFAULT NULL,
  `is_competences_techniques` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quisuisje_competences`
--

LOCK TABLES `quisuisje_competences` WRITE;
/*!40000 ALTER TABLE `quisuisje_competences` DISABLE KEYS */;
INSERT INTO `quisuisje_competences` VALUES (1,'Javascript \\ Jquery','<p>Bonne ma&icirc;trise de Jquery et de l\'AJAX.<br /><br />Utilisation sommaire du framework Backbone dans le cadre d\'un projet de r&eacute;seau social avort&eacute; chez Heliopsis.</p>',1,NULL,1),(2,'PHP','<p>Bonne connaissance de PHP <strong>proc&eacute;dural et orient&eacute; objet</strong>.<br /><br />Frameworks :</p>\r\n<ul>\r\n<li>Utilisation de <strong>Yii Framework </strong>pendant un an (framework <strong>MVC stricte </strong>avec une structure totalement orient&eacute;e objet)</li>\r\n<li>Tr&egrave;s bonnes bases sur <strong>Symfony 2</strong> (ce portfolio est d&eacute;velopp&eacute; avec ce framework)</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>CMS :</p>\r\n<ul>\r\n<li>Bases de Joomla et Wordpress</li>\r\n<li>Un an de d&eacute;veloppement sur eZpublish 4</li>\r\n</ul>',2,NULL,1),(3,'HTML','<p>Ma&icirc;trise du HTML5</p>\r\n<ul>\r\n<li>Bonnes connaissances s&eacute;mantiques</li>\r\n<li>Veille technologique assidue</li>\r\n</ul>\r\n<p>Maitrise du XHTML</p>',3,NULL,1),(4,'CSS','<p>Ma&icirc;trise du CSS 2 et 3 : </p>\r\n<ul>\r\n<li>Bonne connaissance dans les <strong>grilles CSS</strong></li>\r\n<li>Gestion des <strong>tailles proportionnelles</strong> (em, pourcentages, rem)</li>\r\n<li>Utilisation parcimonieuse du pixel (pour les bordures par exemple)</li>\r\n<li>Utilisation courante des <strong>ombres</strong>, <strong>rotations</strong>, <strong>animations CSS</strong>, <strong>d&eacute;grad&eacute;s</strong>...</li>\r\n<li>Bonnes connaissances dans le <strong>responsive design</strong></li>\r\n</ul>\r\n<p>Tr&egrave;s bonne connaissance du pr&eacute;processeur <strong>LESS</strong></p>',4,NULL,1),(5,'Bash','<ul>\r\n<li><strong>Utilisation quotidienne</strong> du bash d\'Ubuntu</li>\r\n<li>Bonne connaissance des <strong>commandes</strong> les plus courantes (cp, mv, grep, history, cat, rsync...)</li>\r\n<li>Bonne connaissance de <strong>Vi</strong> et <strong>Vim</strong> pour les &eacute;ditions succintes (sur serveur distant par exemple)...</li>\r\n</ul>',5,NULL,1),(6,'GIT','<ul>\r\n<li>Utilisation massive de Git pendant un an</li>\r\n<li>Bonne connaissance des <strong>commandes</strong> de git (commit, add, status, reflog, log, checkout, branch, revert...)</li>\r\n<li>Ma&icirc;trise du syst&egrave;me de <strong>branche</strong>, de <strong>tag</strong> et de <strong>sous modules</strong>...</li>\r\n</ul>',6,NULL,1),(7,'Communication / travail en équipe','<p>Lorqu\'on travaille en &eacute;quipe, il est important de bien se faire comprendre et de savoir d&eacute;samorcer les tensions quand celles-ci surviennent. <br />Mon BTS Communication des Entreprises m\'a <strong>form&eacute; sur ces situations</strong>, mes exp&eacute;riences professionnelles m\'ont donn&eacute;s les cl&eacute;s pour pouvoir <strong>m\'int&eacute;grer facilement &agrave; une &eacute;quipe</strong> et y &eacute;voluer le plus sereinement possible.</p>',1,NULL,0),(8,'Graphisme','<p>Je ne suis pas graphiste mais je sais me servir de <strong>Photoshop</strong>, <strong>InDesign</strong> et <strong>Illustrator</strong>. Je peux rapidement <strong>d&eacute;tourer</strong> des formes simples, <strong>redimensionner</strong> ou encore changer la <strong>teinte</strong> d\'une image.</p>',2,NULL,0),(9,'Adaptation','<p>Je m\'adapte tr&egrave;s rapidement et tr&egrave;s facilement aux <strong>nouvelles situations</strong> ainsi qu\'aux<strong> nouvelles technologies.</strong><br />De plus, j\'effectue une <strong>veille technologique</strong> quotidienne pour &ecirc;tre le plus efficient possible.</p>',3,NULL,0);
/*!40000 ALTER TABLE `quisuisje_competences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quisuisje_competences_translation`
--

DROP TABLE IF EXISTS `quisuisje_competences_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quisuisje_competences_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_3F264D0E232D562B` (`object_id`),
  CONSTRAINT `FK_3F264D0E232D562B` FOREIGN KEY (`object_id`) REFERENCES `quisuisje_competences` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quisuisje_competences_translation`
--

LOCK TABLES `quisuisje_competences_translation` WRITE;
/*!40000 ALTER TABLE `quisuisje_competences_translation` DISABLE KEYS */;
INSERT INTO `quisuisje_competences_translation` VALUES (1,1,'fr','nom','Javascript \\ Jquery'),(2,1,'fr','description','<p>Bonne ma&icirc;trise de <strong>Jquery</strong> et de l\'<strong>AJAX</strong>.<br /><br />Utilisation sommaire du<strong> framework Backbone</strong></p>'),(3,1,'en','nom','Javascript \\ Jquery'),(4,1,'en','description','<ul>\r\n<li>Very good skills in <strong>jQuery</strong> and <strong>AJAX</strong></li>\r\n<li>Good bases in <strong>pure javascript</strong></li>\r\n<li>Quick experimentations with <strong>Backbone framework</strong></li>\r\n</ul>'),(5,2,'fr','nom','PHP'),(6,2,'fr','description','<p>Bonne connaissance de PHP <strong>proc&eacute;dural et orient&eacute; objet</strong>.<br /><br />Frameworks :</p>\r\n<ul>\r\n<li>Utilisation de <strong>Yii Framework </strong>pendant un an (framework <strong>MVC stricte </strong>avec une structure totalement orient&eacute;e objet)</li>\r\n<li>Tr&egrave;s bonnes bases sur <strong>Symfony 2</strong> (ce portfolio est d&eacute;velopp&eacute; avec ce framework)</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>CMS :</p>\r\n<ul>\r\n<li>Bases de Joomla et Wordpress</li>\r\n<li>Un an de d&eacute;veloppement sur eZpublish 4</li>\r\n</ul>'),(7,2,'en','nom','PHP'),(8,2,'en','description','<p>Solid knowledge in <strong>PHP procedural</strong> and <strong>OOP</strong>.<br /><br />Frameworks :</p>\r\n<ul>\r\n<li>Use of <strong>Yii framework</strong> for one year (<strong>MVC</strong> framewok with <strong>OOP</strong> structure)</li>\r\n<li>Very good bases in<strong> Symfony 2</strong> (this porfolio has been developed with this framework)</li>\r\n</ul>\r\n<p>CMS :</p>\r\n<ul>\r\n<li>Bases in <strong>Joomla</strong> and <strong>Wordpress</strong></li>\r\n<li>Very good knowledges in <strong>eZpublish 4</strong> (one year of development with this CMS)</li>\r\n</ul>'),(9,3,'fr','nom','HTML'),(10,3,'fr','description','<p>Ma&icirc;trise du <strong>HTML 5</strong></p>\r\n<ul>\r\n<li>Bonnes connaissances s&eacute;mantiques</li>\r\n<li>Veille technologique assidue</li>\r\n</ul>\r\n<p>Maitrise du <strong>XHTML</strong></p>'),(11,3,'en','nom','HTML'),(12,3,'en','description','<p><span class=\"gt-baf-back\">Proficiency in <strong>HTML5</strong></span></p>\r\n<ul>\r\n<li><span class=\"gt-baf-back\">Good semantic knowledge</span></li>\r\n<li><span id=\"result_box\" class=\"short_text\" lang=\"en\"><span class=\"hps\">Assiduous</span> <span class=\"hps\">technology watch</span></span></li>\r\n</ul>\r\n<p><span class=\"gt-baf-back\">Proficiency in <strong>XHTML</strong></span></p>'),(13,4,'fr','nom','CSS'),(14,4,'fr','description','<p>Ma&icirc;trise du CSS 2 et 3 : </p>\r\n<ul>\r\n<li>Bonne connaissance dans les <strong>grilles CSS</strong></li>\r\n<li>Gestion des <strong>tailles proportionnelles</strong> (em, pourcentages, rem)</li>\r\n<li>Utilisation parcimonieuse du pixel (pour les bordures par exemple)</li>\r\n<li>Utilisation courante des <strong>ombres</strong>, <strong>rotations</strong>, <strong>animations CSS</strong>, <strong>d&eacute;grad&eacute;s</strong>...</li>\r\n<li>Bonnes connaissances dans le <strong>responsive design</strong></li>\r\n</ul>\r\n<p>Tr&egrave;s bonne connaissance du pr&eacute;processeur <strong>LESS</strong></p>'),(15,4,'en','nom','CSS'),(16,4,'en','description','<p>Proficiency in <strong>CSS</strong> 2 and 3 :</p>\r\n<ul>\r\n<li>Good skills in <strong>CSS grid</strong></li>\r\n<li>Use of proportional sizes (<strong>rem, percentage, em</strong>)</li>\r\n<li>Parsimonious use of pixel (to delimit border size for example)</li>\r\n<li>Use of CSS <strong>shadows</strong>, <strong>rotations</strong>, CSS <strong>animations</strong>...</li>\r\n<li>Good skills in <strong>responsive design</strong></li>\r\n</ul>'),(17,5,'fr','nom','Bash'),(18,5,'fr','description','<ul>\r\n<li><strong>Utilisation quotidienne</strong> du bash d\'Ubuntu</li>\r\n<li>Bonne connaissance des <strong>commandes</strong> les plus courantes (cp, mv, grep, history, cat, rsync...)</li>\r\n<li>Bonne connaissance de <strong>Vi</strong> et <strong>Vim</strong> pour les &eacute;ditions succintes (sur serveur distant par exemple)...</li>\r\n</ul>'),(19,5,'en','nom','Bash'),(20,5,'en','description','<ul>\r\n<li>Daily use of <strong>Ubuntu bash</strong></li>\r\n<li>Good knowledge of the most common commands (<strong>cp, mv, grep, history, cat, rsync ...</strong>)</li>\r\n<li>Good skills with<strong> Vi</strong> and <strong>Vim</strong> for succinct editions (on remote servers for example)</li>\r\n</ul>'),(21,6,'fr','nom','GIT'),(22,6,'fr','description','<ul>\r\n<li>Utilisation de <strong>git</strong> sur tous mes projets</li>\r\n<li>Bonne connaissance des commandes de git (<strong>commit, add, status, reflog, log, checkout, branch, revert</strong>...)</li>\r\n<li>Ma&icirc;trise du syst&egrave;me de <strong>branche</strong>, de<strong> tag</strong> et de <strong>sous modules</strong></li>\r\n</ul>'),(23,6,'en','nom','GIT'),(24,6,'en','description','<ul>\r\n<li>Use of <strong>git</strong> on all my projects</li>\r\n<li>Good knowledge of git command (<strong>commit, add, status, reflog, log, checkout, cherry-pick...</strong>)</li>\r\n<li>Good <span id=\"result_box\" class=\"short_text\" lang=\"en\"><span class=\"hps\">understanding of <strong>branch</strong>, <strong>tag</strong> and <strong>submodule</strong> system<br /></span></span></li>\r\n</ul>'),(25,7,'fr','nom','Communication / travail en équipe'),(26,7,'fr','description','<p>Lorqu\'on travaille en &eacute;quipe, il est important de bien se faire comprendre et de savoir d&eacute;samorcer les tensions quand celles-ci surviennent.<br />Mon BTS Communication des Entreprises m\'a<strong> form&eacute; sur ces situations</strong>, mes exp&eacute;riences professionnelles m\'ont donn&eacute;s les cl&eacute;s pour pouvoir <strong>m\'int&eacute;grer facilement &agrave; une &eacute;quipe</strong> et y &eacute;voluer le plus sereinement possible.</p>'),(27,7,'en','nom','Communication / team work'),(28,7,'en','description','<p>When we are a part of a team, it is essential to be understandable and to know how to avoid tension.<br />I am a <strong>solid</strong> and <strong>important part of a team</strong> thanks to my communication studies, my professionnal experiences and my interest in my work.</p>'),(29,8,'fr','nom','Graphisme'),(30,8,'fr','description','<p>Je sais utiliser <strong>Photoshop</strong>, <strong>Indesign</strong> and <strong>Illustrator</strong>.<br />Je peux rapidement <strong>d&eacute;tourer</strong> des formes simples, <strong>redimensionner</strong> ou encore changer la <strong>teinte</strong> d\'une image.</p>'),(31,8,'en','nom','Graphism'),(32,8,'en','description','<p>I am familiar with <strong>Photoshop</strong>, <strong>Indesign</strong> and <strong>Illustrator</strong>.<br />I can quickly <strong>crop</strong> <span id=\"result_box\" lang=\"en\"><span class=\"hps\">simple shapes</span>, <strong>resize</strong> <span class=\"hps\">or</span> <span class=\"hps\">change the</span> <span class=\"hps\"><strong>hue</strong> of an image</span>.</span></p>'),(33,9,'fr','nom','Adaptation'),(34,9,'fr','description','<p>Je m\'adapte tr&egrave;s rapidement et tr&egrave;s facilement aux <strong>nouvelles technologies.</strong><br />De plus, j\'effectue une <strong>veille technologique quotidienne</strong> pour &ecirc;tre le plus efficient possible.</p>'),(35,9,'en','nom','Adaptation'),(36,9,'en','description','<p>I adapt myself very fast and easily to <strong>new technologies</strong>.<br />In addition, I perform a<strong> daily technology</strong> <strong>watch</strong> to be as efficient as possible.</p>');
/*!40000 ALTER TABLE `quisuisje_competences_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quisuisje_translation`
--

DROP TABLE IF EXISTS `quisuisje_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quisuisje_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_3B4CE54E232D562B` (`object_id`),
  CONSTRAINT `FK_3B4CE54E232D562B` FOREIGN KEY (`object_id`) REFERENCES `quisuisje` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quisuisje_translation`
--

LOCK TABLES `quisuisje_translation` WRITE;
/*!40000 ALTER TABLE `quisuisje_translation` DISABLE KEYS */;
INSERT INTO `quisuisje_translation` VALUES (1,1,'fr','pourquoi','<p>Depuis l\'&acirc;ge de 8 ans, lorsque mon fr&egrave;re acheta un Thompson MO5, <strong>je suis passionn&eacute; par l\'informatique et plus particuli&egrave;rement le d&eacute;veloppement</strong>.<br />La communication via Internet et la rapide &eacute;volution de ce m&eacute;dia m\'int&eacute;ressent particuli&eacute;rement. <br /><strong>Apprendre sans cesse dans ce domaine et progresser</strong>, voil&agrave; le moteur principal de ma motivation.</p>'),(2,1,'fr','methodes','<ul>\r\n<li>Volont&eacute; de <strong>code clair et comment&eacute;</strong></li>\r\n<li>Structures de <strong>code &eacute;volutives</strong></li>\r\n<li><strong>Adapation du design</strong> pour les diff&eacute;rents navigateurs (et surtout les anciens, &agrave; partir d\'IE7)</li>\r\n</ul>'),(3,1,'fr','politique','<ul>\r\n<li>Respect des <strong>standards du web</strong></li>\r\n<li><strong>Tests syst&eacute;matiques</strong> sur les environnements habituels (local, recette et production)</li>\r\n<li>V&eacute;rification du serveur de production avant mise en ligne (version de PHP, programmes n&eacute;cessaires install&eacute;s...)</li>\r\n<li>Utilisation de la <strong>m&eacute;thode Kanban</strong> en agence pendant un an</li>\r\n</ul>'),(4,1,'fr','infos','<ul>\r\n<li>Connaissances sur l\'installation d\'un <strong>serveur LAMP sur Ubuntu / Debian</strong></li>\r\n<li>Tr&egrave;s bonne connaissance de Windows (jusqu\'&agrave; windows 7)</li>\r\n<li>Bonne connaissance du <strong>d&eacute;bugage JS et PHP</strong> (utilisation actuelle de Xdebug coupl&eacute; &agrave; PHPStorm)</li>\r\n<li>Ma&icirc;trise des webfonts, requ&ecirc;tes HTTP...</li>\r\n</ul>'),(5,1,'en','pourquoi','<p><strong>Since I was 8 years old </strong>(when my brother bought a MO5 Thomson)<strong> I have been passionate by IT and more particulary development.</strong></p>\r\n<p>The internet, its easiness to communicate with each other and its <strong>very fast evolution</strong>, is something that I am truly <strong>passionate</strong> about. For me it is a huge evolution in the history of mankind and i am very pleased to be a part of it.<br /><strong>Learning without limit and increase my skills in a passionate atmosphere</strong>: here is what really matters in my professionnal life.</p>'),(6,1,'en','methodes','<ul>\r\n<li><strong>Clear</strong> and <strong>commented</strong> code</li>\r\n<li>Code structure scalable</li>\r\n<li><strong>Design adapations</strong> for major browsers (from IE7 to the last Chrome version)</li>\r\n</ul>'),(7,1,'en','politique','<ul>\r\n<li>Compliance with web standards</li>\r\n<li>Routine <strong>testing</strong> on usual environment (local, production...)</li>\r\n<li><strong>Check of the production server</strong> before uploading website online (PHP version, necessary programs installed ...)</li>\r\n<li>Use of <strong>agile methods</strong> in web agencies for two year</li>\r\n</ul>'),(8,1,'en','infos','<ul>\r\n<li>Knowledge in installation of <strong>LAMP environment</strong> (with Ubuntu or Debian)</li>\r\n<li>Very good skills on Windows environment</li>\r\n<li>Good knowledge of <strong>PHP and JS debugging</strong> (using Xdebug, PHPStorm, browser debuggers)</li>\r\n<li>Skills on webfonts, HTTP requests...</li>\r\n</ul>');
/*!40000 ALTER TABLE `quisuisje_translation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-16 11:19:41
