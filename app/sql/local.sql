-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (139,'action_scheduler/migration_hook','complete','2021-02-15 09:26:51','2021-02-15 09:26:51','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1613381211;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1613381211;}',1,1,'2021-02-15 09:26:52','2021-02-15 09:26:52',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (140,'woocommerce_update_marketplace_suggestions','complete','2021-02-15 09:26:27','2021-02-15 09:26:27','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1613381187;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1613381187;}',0,1,'2021-02-15 09:26:52','2021-02-15 09:26:52',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,139,'action created','2021-02-15 09:25:51','2021-02-15 09:25:51');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,140,'action created','2021-02-15 09:26:27','2021-02-15 09:26:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,139,'action started via Async Request','2021-02-15 09:26:52','2021-02-15 09:26:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,139,'action complete via Async Request','2021-02-15 09:26:52','2021-02-15 09:26:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,140,'action started via Async Request','2021-02-15 09:26:52','2021-02-15 09:26:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,140,'action complete via Async Request','2021-02-15 09:26:52','2021-02-15 09:26:52');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-02-06 09:10:32','2021-02-06 09:10:32','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10018','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10018','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Ignaweb','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:122:{s:20:\"ignaweb_productos/?$\";s:37:\"index.php?post_type=ignaweb_productos\";s:50:\"ignaweb_productos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=ignaweb_productos&feed=$matches[1]\";s:45:\"ignaweb_productos/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=ignaweb_productos&feed=$matches[1]\";s:37:\"ignaweb_productos/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=ignaweb_productos&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"ignaweb_productos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"ignaweb_productos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"ignaweb_productos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"ignaweb_productos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"ignaweb_productos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"ignaweb_productos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"ignaweb_productos/([^/]+)/embed/?$\";s:50:\"index.php?ignaweb_productos=$matches[1]&embed=true\";s:38:\"ignaweb_productos/([^/]+)/trackback/?$\";s:44:\"index.php?ignaweb_productos=$matches[1]&tb=1\";s:58:\"ignaweb_productos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?ignaweb_productos=$matches[1]&feed=$matches[2]\";s:53:\"ignaweb_productos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?ignaweb_productos=$matches[1]&feed=$matches[2]\";s:46:\"ignaweb_productos/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?ignaweb_productos=$matches[1]&paged=$matches[2]\";s:53:\"ignaweb_productos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?ignaweb_productos=$matches[1]&cpage=$matches[2]\";s:42:\"ignaweb_productos/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?ignaweb_productos=$matches[1]&page=$matches[2]\";s:34:\"ignaweb_productos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"ignaweb_productos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"ignaweb_productos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"ignaweb_productos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"ignaweb_productos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"ignaweb_productos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"Categoría/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?genero=$matches[1]&feed=$matches[2]\";s:46:\"Categoría/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?genero=$matches[1]&feed=$matches[2]\";s:27:\"Categoría/([^/]+)/embed/?$\";s:39:\"index.php?genero=$matches[1]&embed=true\";s:39:\"Categoría/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?genero=$matches[1]&paged=$matches[2]\";s:21:\"Categoría/([^/]+)/?$\";s:28:\"index.php?genero=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=18&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:8:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"categories-images/categories-images.php\";i:2;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:3;s:41:\"ignaser_post_types/ignaser_post_types.php\";i:4;s:23:\"mobile-menu/mobmenu.php\";i:5;s:29:\"mystickymenu/mystickymenu.php\";i:6;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:7;s:31:\"wp-google-maps/wpGoogleMaps.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','ignaweb','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','ignaweb','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','18','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1628154632','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:10:{i:1613575551;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613575592;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613578232;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613596232;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1613639432;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613639493;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613639494;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613640351;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613898632;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','j1B^vSumf3K$|Tkb^kQTc+~[?6cfq`nx~=*E%>DL0n7O4[PM^aLQDW%w>8FfLwNF','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','Pe+6MM=07+;Ii^rYt{&0>?$j1zKmf_Y>eVevD4_+_b2kSt&pt/J_fsB+*>fsM,.y','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1613573945;s:15:\"version_checked\";s:5:\"5.6.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613573946;s:7:\"checked\";a:1:{s:7:\"ignaweb\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (132,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (147,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (148,'theme_mods_twentytwentyone','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1612602944;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (149,'current_theme','','yes');
INSERT INTO `wp_options` VALUES (150,'theme_mods_ignaweb','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (151,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (152,'recently_activated','a:1:{s:27:\"woocommerce/woocommerce.php\";i:1613382375;}','yes');
INSERT INTO `wp_options` VALUES (184,'_transient_health-check-site-status-result','{\"good\":\"12\",\"recommended\":\"6\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (194,'acf_version','5.9.5','yes');
INSERT INTO `wp_options` VALUES (236,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:20:\"mobile-menu/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.4.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1612794635;s:11:\"plugin_path\";s:23:\"mobile-menu/mobmenu.php\";}}s:7:\"abspath\";s:45:\"/Users/alfredo/LocalSites/ignaweb/app/public/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:23:\"mobile-menu/mobmenu.php\";s:8:\"sdk_path\";s:20:\"mobile-menu/freemius\";s:7:\"version\";s:5:\"2.4.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1612794635;}}','yes');
INSERT INTO `wp_options` VALUES (237,'fs_debug_mode','','yes');
INSERT INTO `wp_options` VALUES (238,'fs_accounts','a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:235;a:3:{s:4:\"slug\";s:11:\"mobile-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}}s:11:\"plugin_data\";a:1:{s:11:\"mobile-menu\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1612794635;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:9:\"2.8.1.8.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:15:\"localhost:10018\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1612794635;s:7:\"version\";s:9:\"2.8.1.8.1\";}s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;}}s:13:\"file_slug_map\";a:1:{s:23:\"mobile-menu/mobmenu.php\";s:11:\"mobile-menu\";}s:7:\"plugins\";a:1:{s:11:\"mobile-menu\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:11:\"Mobile Menu\";s:4:\"slug\";s:11:\"mobile-menu\";s:12:\"premium_slug\";s:19:\"mobile-menu-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:23:\"mobile-menu/mobmenu.php\";s:7:\"version\";s:9:\"2.8.1.8.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:7:\"Premium\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_1ec93edfb66875251b62505b96489\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"235\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"93248443908cbef4208b5520d85412b2\";s:13:\"admin_notices\";a:1:{s:11:\"mobile-menu\";a:0:{}}}','yes');
INSERT INTO `wp_options` VALUES (239,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (240,'fs_api_cache','a:0:{}','no');
INSERT INTO `wp_options` VALUES (243,'mobmenu_latest_update_version','2.8.1.8.1','yes');
INSERT INTO `wp_options` VALUES (244,'mobmenu_options','s:2042:\"a:52:{s:16:\"f63e853ff9f5e599\";s:0:\"\";s:30:\"right_menu_parent_link_submenu\";s:1:\"0\";s:19:\"right_menu_icon_new\";s:4:\"icon\";s:20:\"right_menu_icon_font\";s:4:\"menu\";s:20:\"right_icon_font_size\";s:2:\"30\";s:15:\"right_menu_icon\";s:4:\"menu\";s:15:\"right_menu_text\";s:0:\"\";s:22:\"right_menu_icon_action\";s:1:\"1\";s:14:\"right_icon_url\";s:0:\"\";s:21:\"right_icon_url_target\";s:1:\"1\";s:21:\"right_icon_top_margin\";s:2:\"10\";s:23:\"right_icon_right_margin\";s:1:\"5\";s:16:\"4d2880c737074642\";s:0:\"\";s:19:\"right_menu_bg_image\";s:0:\"\";s:21:\"right_menu_bg_opacity\";s:3:\"100\";s:24:\"right_menu_bg_image_size\";s:5:\"cover\";s:22:\"right_menu_bg_gradient\";s:0:\"\";s:22:\"right_menu_width_units\";s:1:\"1\";s:16:\"right_menu_width\";s:3:\"270\";s:27:\"right_menu_width_percentage\";s:2:\"70\";s:26:\"right_menu_content_padding\";s:2:\"10\";s:16:\"aa60e3d5fe704267\";s:0:\"\";s:16:\"enable_left_menu\";s:1:\"0\";s:9:\"left_menu\";s:0:\"\";s:17:\"enable_right_menu\";s:1:\"1\";s:10:\"right_menu\";s:5:\"menu1\";s:16:\"55e89d9a7f740b76\";s:0:\"\";s:13:\"width_trigger\";s:4:\"1024\";s:16:\"edc117863e7ad302\";s:0:\"\";s:19:\"only_mobile_devices\";s:1:\"0\";s:17:\"only_testing_mode\";s:1:\"0\";s:16:\"dde6c32f06c5caf8\";s:0:\"\";s:13:\"hide_elements\";s:0:\"\";s:16:\"38b76206e3791895\";s:0:\"\";s:22:\"default_hided_elements\";s:226:\"a:17:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:1:\"8\";i:8;s:1:\"9\";i:9;s:2:\"10\";i:10;s:2:\"11\";i:11;s:2:\"12\";i:12;s:2:\"13\";i:13;s:2:\"14\";i:14;s:2:\"15\";i:15;s:2:\"16\";i:16;s:2:\"17\";}\";s:16:\"eb4218389e2d7f1a\";s:0:\"\";s:17:\"menu_display_type\";s:13:\"slideout-over\";s:18:\"autoclose_submenus\";s:1:\"0\";s:22:\"menu_items_border_size\";s:1:\"0\";s:15:\"close_icon_font\";s:8:\"cancel-1\";s:20:\"close_icon_font_size\";s:2:\"30\";s:22:\"submenu_open_icon_font\";s:9:\"down-open\";s:23:\"submenu_close_icon_font\";s:7:\"up-open\";s:22:\"submenu_icon_font_size\";s:2:\"25\";s:16:\"967bcf13a38e2bab\";s:0:\"\";s:17:\"cache_dynamic_css\";s:1:\"0\";s:15:\"sticky_elements\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:9:\"custom_js\";s:0:\"\";s:16:\"7a9dbb4c45fde28a\";s:0:\"\";s:16:\"6ac253251e631bc4\";s:0:\"\";s:16:\"d82aab16c3557b41\";s:0:\"\";}\";','yes');
INSERT INTO `wp_options` VALUES (245,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (246,'wp_mobile_menu_banner_dismissed','yes','yes');
INSERT INTO `wp_options` VALUES (311,'_site_transient_timeout_browser_4853ba0b18950b426d4c3572e2139b70','1613815439','no');
INSERT INTO `wp_options` VALUES (312,'_site_transient_browser_4853ba0b18950b426d4c3572e2139b70','a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"14.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (313,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1613815439','no');
INSERT INTO `wp_options` VALUES (314,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (360,'mystickymenu_update_message','2','yes');
INSERT INTO `wp_options` VALUES (361,'mystickymenu_intro_box','hide','yes');
INSERT INTO `wp_options` VALUES (362,'sticky_header_status','done','yes');
INSERT INTO `wp_options` VALUES (363,'has_sticky_header_old_version','no','yes');
INSERT INTO `wp_options` VALUES (364,'mysticky_option_name','a:14:{s:26:\"mysticky_class_id_selector\";s:6:\"custom\";s:23:\"mysticky_class_selector\";s:7:\".navbar\";s:14:\"device_desktop\";s:2:\"on\";s:13:\"device_mobile\";s:2:\"on\";s:14:\"myfixed_zindex\";s:5:\"99990\";s:15:\"myfixed_bgcolor\";s:7:\"#f7f5e7\";s:15:\"myfixed_opacity\";s:2:\"90\";s:23:\"myfixed_transition_time\";s:3:\"0.3\";s:28:\"myfixed_disable_small_screen\";s:1:\"0\";s:28:\"myfixed_disable_large_screen\";s:1:\"0\";s:25:\"mysticky_active_on_height\";s:1:\"0\";s:30:\"mysticky_active_on_height_home\";s:1:\"0\";s:12:\"myfixed_fade\";s:4:\"fade\";s:16:\"myfixed_cssstyle\";s:98:\"#mysticky-nav .myfixed { margin:0 auto; float:none; border:0px; background:none; max-width:100%; }\";}','yes');
INSERT INTO `wp_options` VALUES (365,'update_mysticky_version_2_6','1','yes');
INSERT INTO `wp_options` VALUES (366,'my-sticky-menu_show_review_box_after','2021-02-21','yes');
INSERT INTO `wp_options` VALUES (367,'mystickymenu_show_affiliate_box_after','2021-02-19','yes');
INSERT INTO `wp_options` VALUES (368,'wpgmza_db_version','8.1.9','yes');
INSERT INTO `wp_options` VALUES (369,'wpgmza_global_settings','{\"engine\":\"google-maps\",\"google_maps_api_key\":false,\"default_marker_icon\":\"http:\\/\\/localhost:10018\\/wp-content\\/plugins\\/wp-google-maps\\/images\\/spotlight-poi2.png\",\"developer_mode\":false,\"user_interface_style\":\"default\",\"wpgmza_gdpr_enabled\":1,\"wpgmza_gdpr_default_notice\":\"<p>\\n\\tI agree for my personal data to be processed by <span name=\\\"wpgmza_gdpr_company_name\\\"><\\/span>, for the purpose(s) of <span name=\\\"wpgmza_gdpr_retention_purpose\\\"><\\/span>.\\n<\\/p>\\n\\n<p>\\t\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\n<\\/p>\\n<p>\\n\\tSome visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\n<\\/p>\\n<p>\\n\\tWP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\\"state\\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\\n<\\/p>\\n<p>\\n\\tPlease <a href=\\\"https:\\/\\/developers.google.com\\/maps\\/terms\\\">see here<\\/a> and <a href=\\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\\">here<\\/a> for Google\'s terms. Please also see <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\n<\\/p>\\n<p>\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\n<\\/p>\",\"wpgmza_gdpr_company_name\":\"Ignaweb\",\"wpgmza_gdpr_retention_purpose\":\"displaying map tiles, geocoding addresses and calculating and display directions.\",\"wpgmza_marker_xml_location\":\"\\/Users\\/alfredo\\/LocalSites\\/ignaweb\\/app\\/public\\/wp-content\\/uploads\\/wp-google-maps\\/\",\"wpgmza_marker_xml_url\":\"http:\\/\\/localhost:10018\\/wp-content\\/uploads\\/wp-google-maps\\/\"}','yes');
INSERT INTO `wp_options` VALUES (370,'WPGMZA_OTHER_SETTINGS','a:11:{s:6:\"engine\";s:11:\"google-maps\";s:19:\"google_maps_api_key\";b:0;s:19:\"default_marker_icon\";s:82:\"http://localhost:10018/wp-content/plugins/wp-google-maps/images/spotlight-poi2.png\";s:14:\"developer_mode\";b:0;s:20:\"user_interface_style\";s:7:\"default\";s:19:\"wpgmza_gdpr_enabled\";i:1;s:26:\"wpgmza_gdpr_default_notice\";s:1954:\"<p>\n	I agree for my personal data to be processed by <span name=\"wpgmza_gdpr_company_name\"></span>, for the purpose(s) of <span name=\"wpgmza_gdpr_retention_purpose\"></span>.\n</p>\n\n<p>	\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\n</p>\n<p>\n	Some visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\n</p>\n<p>\n	WP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \"state\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\n</p>\n<p>\n	Please <a href=\"https://developers.google.com/maps/terms\">see here</a> and <a href=\"https://maps.google.com/help/terms_maps.html\">here</a> for Google\'s terms. Please also see <a href=\"https://policies.google.com/privacy?hl=en-GB&amp;gl=uk\">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\n</p>\n<p>\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\n</p>\";s:24:\"wpgmza_gdpr_company_name\";s:7:\"Ignaweb\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:26:\"wpgmza_marker_xml_location\";s:79:\"/Users/alfredo/LocalSites/ignaweb/app/public/wp-content/uploads/wp-google-maps/\";s:21:\"wpgmza_marker_xml_url\";s:57:\"http://localhost:10018/wp-content/uploads/wp-google-maps/\";}','yes');
INSERT INTO `wp_options` VALUES (371,'wpgmza_xml_location','/Users/alfredo/LocalSites/ignaweb/app/public/wp-content/uploads/wp-google-maps/','yes');
INSERT INTO `wp_options` VALUES (372,'wpgmza_xml_url','http://localhost:10018/wp-content/uploads/wp-google-maps/','yes');
INSERT INTO `wp_options` VALUES (373,'wpgmza_temp_api','AIzaSyDo_fG7DXBOVvdhlrLa-PHREuFDpTklWhY','yes');
INSERT INTO `wp_options` VALUES (374,'wpgmza-first-run','2021-02-14T11:51:51+0000','yes');
INSERT INTO `wp_options` VALUES (375,'wpgmza_welcome_screen_done','1','yes');
INSERT INTO `wp_options` VALUES (376,'widget_wpgmza_map_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (410,'action_scheduler_hybrid_store_demarkation','138','yes');
INSERT INTO `wp_options` VALUES (411,'schema-ActionScheduler_StoreSchema','3.0.1613381149','yes');
INSERT INTO `wp_options` VALUES (412,'schema-ActionScheduler_LoggerSchema','2.0.1613381149','yes');
INSERT INTO `wp_options` VALUES (415,'woocommerce_schema_version','430','yes');
INSERT INTO `wp_options` VALUES (416,'woocommerce_store_address','','yes');
INSERT INTO `wp_options` VALUES (417,'woocommerce_store_address_2','','yes');
INSERT INTO `wp_options` VALUES (418,'woocommerce_store_city','','yes');
INSERT INTO `wp_options` VALUES (419,'woocommerce_default_country','GB','yes');
INSERT INTO `wp_options` VALUES (420,'woocommerce_store_postcode','','yes');
INSERT INTO `wp_options` VALUES (421,'woocommerce_allowed_countries','all','yes');
INSERT INTO `wp_options` VALUES (422,'woocommerce_all_except_countries','','yes');
INSERT INTO `wp_options` VALUES (423,'woocommerce_specific_allowed_countries','','yes');
INSERT INTO `wp_options` VALUES (424,'woocommerce_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (425,'woocommerce_specific_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (426,'woocommerce_default_customer_address','base','yes');
INSERT INTO `wp_options` VALUES (427,'woocommerce_calc_taxes','no','yes');
INSERT INTO `wp_options` VALUES (428,'woocommerce_enable_coupons','yes','yes');
INSERT INTO `wp_options` VALUES (429,'woocommerce_calc_discounts_sequentially','no','no');
INSERT INTO `wp_options` VALUES (430,'woocommerce_currency','GBP','yes');
INSERT INTO `wp_options` VALUES (431,'woocommerce_currency_pos','left','yes');
INSERT INTO `wp_options` VALUES (432,'woocommerce_price_thousand_sep',',','yes');
INSERT INTO `wp_options` VALUES (433,'woocommerce_price_decimal_sep','.','yes');
INSERT INTO `wp_options` VALUES (434,'woocommerce_price_num_decimals','2','yes');
INSERT INTO `wp_options` VALUES (435,'woocommerce_shop_page_id','139','yes');
INSERT INTO `wp_options` VALUES (436,'woocommerce_cart_redirect_after_add','no','yes');
INSERT INTO `wp_options` VALUES (437,'woocommerce_enable_ajax_add_to_cart','yes','yes');
INSERT INTO `wp_options` VALUES (438,'woocommerce_placeholder_image','138','yes');
INSERT INTO `wp_options` VALUES (439,'woocommerce_weight_unit','kg','yes');
INSERT INTO `wp_options` VALUES (440,'woocommerce_dimension_unit','cm','yes');
INSERT INTO `wp_options` VALUES (441,'woocommerce_enable_reviews','yes','yes');
INSERT INTO `wp_options` VALUES (442,'woocommerce_review_rating_verification_label','yes','no');
INSERT INTO `wp_options` VALUES (443,'woocommerce_review_rating_verification_required','no','no');
INSERT INTO `wp_options` VALUES (444,'woocommerce_enable_review_rating','yes','yes');
INSERT INTO `wp_options` VALUES (445,'woocommerce_review_rating_required','yes','no');
INSERT INTO `wp_options` VALUES (446,'woocommerce_manage_stock','yes','yes');
INSERT INTO `wp_options` VALUES (447,'woocommerce_hold_stock_minutes','60','no');
INSERT INTO `wp_options` VALUES (448,'woocommerce_notify_low_stock','yes','no');
INSERT INTO `wp_options` VALUES (449,'woocommerce_notify_no_stock','yes','no');
INSERT INTO `wp_options` VALUES (450,'woocommerce_stock_email_recipient','dev-email@flywheel.local','no');
INSERT INTO `wp_options` VALUES (451,'woocommerce_notify_low_stock_amount','2','no');
INSERT INTO `wp_options` VALUES (452,'woocommerce_notify_no_stock_amount','0','yes');
INSERT INTO `wp_options` VALUES (453,'woocommerce_hide_out_of_stock_items','no','yes');
INSERT INTO `wp_options` VALUES (454,'woocommerce_stock_format','','yes');
INSERT INTO `wp_options` VALUES (455,'woocommerce_file_download_method','force','no');
INSERT INTO `wp_options` VALUES (456,'woocommerce_downloads_require_login','no','no');
INSERT INTO `wp_options` VALUES (457,'woocommerce_downloads_grant_access_after_payment','yes','no');
INSERT INTO `wp_options` VALUES (458,'woocommerce_downloads_add_hash_to_filename','yes','yes');
INSERT INTO `wp_options` VALUES (459,'woocommerce_prices_include_tax','no','yes');
INSERT INTO `wp_options` VALUES (460,'woocommerce_tax_based_on','shipping','yes');
INSERT INTO `wp_options` VALUES (461,'woocommerce_shipping_tax_class','inherit','yes');
INSERT INTO `wp_options` VALUES (462,'woocommerce_tax_round_at_subtotal','no','yes');
INSERT INTO `wp_options` VALUES (463,'woocommerce_tax_classes','','yes');
INSERT INTO `wp_options` VALUES (464,'woocommerce_tax_display_shop','excl','yes');
INSERT INTO `wp_options` VALUES (465,'woocommerce_tax_display_cart','excl','yes');
INSERT INTO `wp_options` VALUES (466,'woocommerce_price_display_suffix','','yes');
INSERT INTO `wp_options` VALUES (467,'woocommerce_tax_total_display','itemized','no');
INSERT INTO `wp_options` VALUES (468,'woocommerce_enable_shipping_calc','yes','no');
INSERT INTO `wp_options` VALUES (469,'woocommerce_shipping_cost_requires_address','no','yes');
INSERT INTO `wp_options` VALUES (470,'woocommerce_ship_to_destination','billing','no');
INSERT INTO `wp_options` VALUES (471,'woocommerce_shipping_debug_mode','no','yes');
INSERT INTO `wp_options` VALUES (472,'woocommerce_enable_guest_checkout','yes','no');
INSERT INTO `wp_options` VALUES (473,'woocommerce_enable_checkout_login_reminder','no','no');
INSERT INTO `wp_options` VALUES (474,'woocommerce_enable_signup_and_login_from_checkout','no','no');
INSERT INTO `wp_options` VALUES (475,'woocommerce_enable_myaccount_registration','no','no');
INSERT INTO `wp_options` VALUES (476,'woocommerce_registration_generate_username','yes','no');
INSERT INTO `wp_options` VALUES (477,'woocommerce_registration_generate_password','yes','no');
INSERT INTO `wp_options` VALUES (478,'woocommerce_erasure_request_removes_order_data','no','no');
INSERT INTO `wp_options` VALUES (479,'woocommerce_erasure_request_removes_download_data','no','no');
INSERT INTO `wp_options` VALUES (480,'woocommerce_allow_bulk_remove_personal_data','no','no');
INSERT INTO `wp_options` VALUES (481,'woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (482,'woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (483,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (484,'woocommerce_trash_pending_orders','','no');
INSERT INTO `wp_options` VALUES (485,'woocommerce_trash_failed_orders','','no');
INSERT INTO `wp_options` VALUES (486,'woocommerce_trash_cancelled_orders','','no');
INSERT INTO `wp_options` VALUES (487,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (488,'woocommerce_email_from_name','Ignaweb','no');
INSERT INTO `wp_options` VALUES (489,'woocommerce_email_from_address','dev-email@flywheel.local','no');
INSERT INTO `wp_options` VALUES (490,'woocommerce_email_header_image','','no');
INSERT INTO `wp_options` VALUES (491,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','no');
INSERT INTO `wp_options` VALUES (492,'woocommerce_email_base_color','#96588a','no');
INSERT INTO `wp_options` VALUES (493,'woocommerce_email_background_color','#f7f7f7','no');
INSERT INTO `wp_options` VALUES (494,'woocommerce_email_body_background_color','#ffffff','no');
INSERT INTO `wp_options` VALUES (495,'woocommerce_email_text_color','#3c3c3c','no');
INSERT INTO `wp_options` VALUES (496,'woocommerce_merchant_email_notifications','yes','no');
INSERT INTO `wp_options` VALUES (497,'woocommerce_cart_page_id','140','no');
INSERT INTO `wp_options` VALUES (498,'woocommerce_checkout_page_id','141','no');
INSERT INTO `wp_options` VALUES (499,'woocommerce_myaccount_page_id','142','no');
INSERT INTO `wp_options` VALUES (500,'woocommerce_terms_page_id','','no');
INSERT INTO `wp_options` VALUES (501,'woocommerce_force_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (502,'woocommerce_unforce_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (503,'woocommerce_checkout_pay_endpoint','order-pay','yes');
INSERT INTO `wp_options` VALUES (504,'woocommerce_checkout_order_received_endpoint','order-received','yes');
INSERT INTO `wp_options` VALUES (505,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes');
INSERT INTO `wp_options` VALUES (506,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes');
INSERT INTO `wp_options` VALUES (507,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes');
INSERT INTO `wp_options` VALUES (508,'woocommerce_myaccount_orders_endpoint','orders','yes');
INSERT INTO `wp_options` VALUES (509,'woocommerce_myaccount_view_order_endpoint','view-order','yes');
INSERT INTO `wp_options` VALUES (510,'woocommerce_myaccount_downloads_endpoint','downloads','yes');
INSERT INTO `wp_options` VALUES (511,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes');
INSERT INTO `wp_options` VALUES (512,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes');
INSERT INTO `wp_options` VALUES (513,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes');
INSERT INTO `wp_options` VALUES (514,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes');
INSERT INTO `wp_options` VALUES (515,'woocommerce_logout_endpoint','customer-logout','yes');
INSERT INTO `wp_options` VALUES (516,'woocommerce_api_enabled','no','yes');
INSERT INTO `wp_options` VALUES (517,'woocommerce_allow_tracking','no','no');
INSERT INTO `wp_options` VALUES (518,'woocommerce_show_marketplace_suggestions','yes','no');
INSERT INTO `wp_options` VALUES (519,'woocommerce_single_image_width','600','yes');
INSERT INTO `wp_options` VALUES (520,'woocommerce_thumbnail_image_width','300','yes');
INSERT INTO `wp_options` VALUES (521,'woocommerce_checkout_highlight_required_fields','yes','yes');
INSERT INTO `wp_options` VALUES (522,'woocommerce_demo_store','no','no');
INSERT INTO `wp_options` VALUES (523,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (524,'current_theme_supports_woocommerce','no','yes');
INSERT INTO `wp_options` VALUES (525,'woocommerce_queue_flush_rewrite_rules','no','yes');
INSERT INTO `wp_options` VALUES (526,'_transient_wc_attribute_taxonomies','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (528,'default_product_cat','16','yes');
INSERT INTO `wp_options` VALUES (531,'woocommerce_version','5.0.0','yes');
INSERT INTO `wp_options` VALUES (532,'woocommerce_db_version','5.0.0','yes');
INSERT INTO `wp_options` VALUES (536,'_transient_jetpack_autoloader_plugin_paths','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (537,'action_scheduler_lock_async-request-runner','1613382388','yes');
INSERT INTO `wp_options` VALUES (538,'woocommerce_admin_notices','a:1:{i:0;s:20:\"no_secure_connection\";}','yes');
INSERT INTO `wp_options` VALUES (539,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"1fACoOERhxwpbTYMvLD3NvcxcAvf67l9\";}','yes');
INSERT INTO `wp_options` VALUES (540,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (541,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (542,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (543,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (544,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (545,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (546,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (547,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (548,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (549,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (550,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (551,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (552,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (555,'woocommerce_admin_version','1.9.0','yes');
INSERT INTO `wp_options` VALUES (556,'woocommerce_admin_install_timestamp','1613381151','yes');
INSERT INTO `wp_options` VALUES (560,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (561,'wc_blocks_db_schema_version','260','yes');
INSERT INTO `wp_options` VALUES (562,'wc_remote_inbox_notifications_stored_state','O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (563,'woocommerce_meta_box_errors','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (564,'wc_remote_inbox_notifications_specs','a:13:{s:23:\"facebook_pixel_api_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:23:\"facebook_pixel_api_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:44:\"Improve the performance of your Facebook ads\";s:7:\"content\";s:168:\"Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"upgrade_now_facebook_pixel_api\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Upgrade now\";}}s:3:\"url\";s:67:\"plugin-install.php?tab=plugin-information&plugin=&section=changelog\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-02-15 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-02-29 00:00:00\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"facebook-for-woocommerce\";s:7:\"version\";s:5:\"2.1.4\";s:8:\"operator\";s:2:\"<=\";}}}s:16:\"facebook_ec_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:16:\"facebook_ec_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:59:\"Sync your product catalog with Facebook to help boost sales\";s:7:\"content\";s:170:\"A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:22:\"learn_more_facebook_ec\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:42:\"https://woocommerce.com/products/facebook/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-03-01 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-03-15 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:24:\"facebook-for-woocommerce\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:10:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-12-07 00:00:00\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:9;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:10:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-12-07 00:00:00\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:9;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Get 50% off transaction fees with WooCommerce Payments\";s:7:\"content\";s:625:\"Keep more of your hard-earned cash by adding <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> to your store. Lock in a discounted rate of 1.5% + $0.15 for $25,000 of payments (or three months, whichever comes first). Limited time offer – don’t miss out! <br/><br/><em>By clicking \"Install now,\" you agree to our promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:43:\"Manage payments from your store\'s dashboard\";s:7:\"content\";s:560:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>! Zero setup fees or monthly fees. Just pay-as-you-go, starting at just 2.9% + $0.30 per transaction for U.S.-issued cards. <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:461:\"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";}}}s:31:\"wc-square-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"wc-square-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:191:\"Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:97:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:38:\"wc-square-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:38:\"wc-square-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"Grow your business with Square and Apple Pay \";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:104:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}}','yes');
INSERT INTO `wp_options` VALUES (567,'_transient_woocommerce_reports-transient-version','1613381152','yes');
INSERT INTO `wp_options` VALUES (568,'_transient_timeout_orders-all-statuses','1613985952','no');
INSERT INTO `wp_options` VALUES (569,'_transient_orders-all-statuses','a:2:{s:7:\"version\";s:10:\"1613381152\";s:5:\"value\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (576,'woocommerce_onboarding_profile','a:1:{s:7:\"skipped\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (578,'_transient_timeout_wc_report_orders_stats_3cefbb9cfd2e46f6efb4dda1d456fc8a','1613985965','no');
INSERT INTO `wp_options` VALUES (579,'_transient_wc_report_orders_stats_3cefbb9cfd2e46f6efb4dda1d456fc8a','a:2:{s:7:\"version\";s:10:\"1613381152\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-06\";s:10:\"date_start\";s:19:\"2021-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2021-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (580,'_transient_timeout_wc_report_orders_stats_1af8d9d499c96aa99fcc368d53202cae','1613985965','no');
INSERT INTO `wp_options` VALUES (581,'_transient_wc_report_orders_stats_1af8d9d499c96aa99fcc368d53202cae','a:2:{s:7:\"version\";s:10:\"1613381152\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-06\";s:10:\"date_start\";s:19:\"2021-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-02-14 00:00:00\";s:8:\"date_end\";s:19:\"2021-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-02-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (582,'_transient_timeout_wc_report_orders_stats_cb4306fa0fc2b9da3cd644bef97bc42d','1613985965','no');
INSERT INTO `wp_options` VALUES (583,'_transient_wc_report_orders_stats_cb4306fa0fc2b9da3cd644bef97bc42d','a:2:{s:7:\"version\";s:10:\"1613381152\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-07\";s:10:\"date_start\";s:19:\"2021-02-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-02-15 00:00:00\";s:8:\"date_end\";s:19:\"2021-02-15 10:26:00\";s:12:\"date_end_gmt\";s:19:\"2021-02-15 10:26:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (584,'_transient_timeout_wc_report_orders_stats_3e2634cf2b75e095c4a4f63ace0c2048','1613985965','no');
INSERT INTO `wp_options` VALUES (585,'_transient_wc_report_orders_stats_3e2634cf2b75e095c4a4f63ace0c2048','a:2:{s:7:\"version\";s:10:\"1613381152\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-07\";s:10:\"date_start\";s:19:\"2021-02-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-02-15 00:00:00\";s:8:\"date_end\";s:19:\"2021-02-15 10:26:00\";s:12:\"date_end_gmt\";s:19:\"2021-02-15 10:26:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (586,'woocommerce_task_list_welcome_modal_dismissed','yes','yes');
INSERT INTO `wp_options` VALUES (587,'_transient_timeout_wc_report_customers_stats_5ff75cebf84d86c9115c2c6a07ac292c','1613985991','no');
INSERT INTO `wp_options` VALUES (588,'_transient_wc_report_customers_stats_5ff75cebf84d86c9115c2c6a07ac292c','a:2:{s:7:\"version\";s:10:\"1613381152\";s:5:\"value\";O:8:\"stdClass\":4:{s:15:\"customers_count\";i:0;s:16:\"avg_orders_count\";d:0;s:15:\"avg_total_spend\";d:0;s:19:\"avg_avg_order_value\";d:0;}}','no');
INSERT INTO `wp_options` VALUES (591,'_transient_timeout_wc_marketing_recommended_plugins','1613640395','no');
INSERT INTO `wp_options` VALUES (592,'_transient_wc_marketing_recommended_plugins','a:12:{i:0;a:7:{s:5:\"title\";s:11:\"AutomateWoo\";s:11:\"description\";s:86:\"Convert and retain customers with automated marketing that does the hard work for you.\";s:3:\"url\";s:110:\"https://woocommerce.com/products/automatewoo/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/automatewoo.svg\";s:7:\"product\";s:11:\"automatewoo\";s:6:\"plugin\";s:27:\"automatewoo/automatewoo.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}}i:1;a:7:{s:5:\"title\";s:25:\"Mailchimp for WooCommerce\";s:11:\"description\";s:73:\"Send targeted campaigns, recover abandoned carts and more with Mailchimp.\";s:3:\"url\";s:124:\"https://woocommerce.com/products/mailchimp-for-woocommerce/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/mailchimp.svg\";s:7:\"product\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}}i:2;a:7:{s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:11:\"description\";s:79:\"Grow your business by targeting the right people & driving sales with Facebook.\";s:3:\"url\";s:107:\"https://woocommerce.com/products/facebook/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/facebook.svg\";s:7:\"product\";s:8:\"facebook\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}}i:3;a:7:{s:5:\"title\";s:32:\"Google Ads & Marketing by Kliken\";s:11:\"description\";s:121:\"Get in front of shoppers and drive traffic so you can grow your business with Smart Shopping Campaigns and free listings.\";s:3:\"url\";s:109:\"https://woocommerce.com/products/google-ads/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/google-ads.svg\";s:7:\"product\";s:10:\"google-ads\";s:6:\"plugin\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}}i:4;a:7:{s:5:\"title\";s:23:\"HubSpot for WooCommerce\";s:11:\"description\";s:76:\"Grow traffic, convert leads, close deals, and turn customers into promoters.\";s:3:\"url\";s:122:\"https://woocommerce.com/products/hubspot-for-woocommerce/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/hubspot.svg\";s:7:\"product\";s:23:\"hubspot-for-woocommerce\";s:6:\"plugin\";s:51:\"hubspot-for-woocommerce/hubspot-for-woocommerce.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}}i:5;a:7:{s:5:\"title\";s:41:\"Amazon & eBay Integration for WooCommerce\";s:11:\"description\";s:75:\"List your entire WooCommerce product catalog on Amazon and eBay in minutes.\";s:3:\"url\";s:122:\"https://woocommerce.com/products/amazon-ebay-integration/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/amazon-ebay.svg\";s:7:\"product\";s:23:\"amazon-ebay-integration\";s:6:\"plugin\";s:75:\"woocommerce-amazon-ebay-integration/woocommerce-amazon-ebay-integration.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}}i:6;a:7:{s:5:\"title\";s:20:\"Personalized Coupons\";s:11:\"description\";s:86:\"Generate dynamic personalized coupons for your customers that increase purchase rates.\";s:3:\"url\";s:110:\"https://woocommerce.com/products/automatewoo/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:122:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/automatewoo-personalized-coupons.svg\";s:7:\"product\";s:11:\"automatewoo\";s:6:\"plugin\";s:27:\"automatewoo/automatewoo.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}}i:7;a:7:{s:5:\"title\";s:13:\"Smart Coupons\";s:11:\"description\";s:100:\"Powerful, \"all in one\" solution for gift certificates, store credits, discount coupons and vouchers.\";s:3:\"url\";s:112:\"https://woocommerce.com/products/smart-coupons/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:115:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-smart-coupons.svg\";s:7:\"product\";s:25:\"woocommerce-smart-coupons\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}}i:8;a:7:{s:5:\"title\";s:11:\"URL Coupons\";s:11:\"description\";s:108:\"Create a unique URL that applies a discount and optionally adds one or more products to the customer\'s cart.\";s:3:\"url\";s:110:\"https://woocommerce.com/products/url-coupons/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-url-coupons.svg\";s:7:\"product\";s:23:\"woocommerce-url-coupons\";s:6:\"plugin\";s:51:\"woocommerce-url-coupons/woocommerce-url-coupons.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}}i:9;a:7:{s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:11:\"description\";s:77:\"Create \"store credit\" coupons for customers which are redeemable at checkout.\";s:3:\"url\";s:111:\"https://woocommerce.com/products/store-credit/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-store-credit.svg\";s:7:\"product\";s:24:\"woocommerce-store-credit\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}}i:10;a:7:{s:5:\"title\";s:17:\"Free Gift Coupons\";s:11:\"description\";s:59:\"Give away a free item to any customer with the coupon code.\";s:3:\"url\";s:116:\"https://woocommerce.com/products/free-gift-coupons/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-free-gift-coupons.svg\";s:7:\"product\";s:29:\"woocommerce-free-gift-coupons\";s:6:\"plugin\";s:63:\"woocommerce-free-gift-coupons/woocommerce-free-gift-coupons.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}}i:11;a:7:{s:5:\"title\";s:13:\"Group Coupons\";s:11:\"description\";s:137:\"Coupons for groups. Provides the option to have coupons that are restricted to group members or roles. Works with the free Groups plugin.\";s:3:\"url\";s:112:\"https://woocommerce.com/products/group-coupons/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:115:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-group-coupons.svg\";s:7:\"product\";s:25:\"woocommerce-group-coupons\";s:6:\"plugin\";s:55:\"woocommerce-group-coupons/woocommerce-group-coupons.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}}}','no');
INSERT INTO `wp_options` VALUES (594,'woocommerce_marketplace_suggestions','a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1613381212;}','no');
INSERT INTO `wp_options` VALUES (601,'product_cat_children','a:1:{i:17;a:1:{i:0;i:19;}}','yes');
INSERT INTO `wp_options` VALUES (611,'genero_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (623,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613573946;s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:39:\"categories-images/categories-images.php\";s:5:\"3.0.1\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.4\";s:41:\"ignaser_post_types/ignaser_post_types.php\";s:5:\"1.0.0\";s:23:\"mobile-menu/mobmenu.php\";s:9:\"2.8.1.8.1\";s:29:\"mystickymenu/mystickymenu.php\";s:5:\"2.4.9\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.4\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:5:\"8.1.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"categories-images/categories-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/categories-images\";s:4:\"slug\";s:17:\"categories-images\";s:6:\"plugin\";s:39:\"categories-images/categories-images.php\";s:11:\"new_version\";s:5:\"3.0.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/categories-images/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/categories-images.3.0.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/categories-images/assets/icon-128x128.png?rev=2256871\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/categories-images/assets/banner-772x250.png?rev=1803373\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:23:\"mobile-menu/mobmenu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/mobile-menu\";s:4:\"slug\";s:11:\"mobile-menu\";s:6:\"plugin\";s:23:\"mobile-menu/mobmenu.php\";s:11:\"new_version\";s:9:\"2.8.1.8.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/mobile-menu/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/mobile-menu.2.8.1.8.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/mobile-menu/assets/icon-128x128.png?rev=1890426\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/mobile-menu/assets/banner-772x250.jpg?rev=1976792\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"mystickymenu/mystickymenu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/mystickymenu\";s:4:\"slug\";s:12:\"mystickymenu\";s:6:\"plugin\";s:29:\"mystickymenu/mystickymenu.php\";s:11:\"new_version\";s:5:\"2.4.9\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/mystickymenu/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/mystickymenu.2.4.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/mystickymenu/assets/icon-256x256.png?rev=2136316\";s:2:\"1x\";s:65:\"https://ps.w.org/mystickymenu/assets/icon-256x256.png?rev=2136316\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/mystickymenu/assets/banner-772x250.jpg?rev=2136316\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:5:\"8.1.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.gif?rev=2426404\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.gif?rev=2394385\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-google-maps/assets/banner-1544x500.png?rev=2230737\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.png?rev=2230737\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (626,'z_taxonomy_image23','http://localhost:10018/wp-content/uploads/2021/02/mamparas-de-oficina-principal-807x500-1.jpg','no');
INSERT INTO `wp_options` VALUES (628,'z_taxonomy_image24','http://localhost:10018/wp-content/uploads/2021/02/diseno-muebles-de-oficina.jpg','no');
INSERT INTO `wp_options` VALUES (630,'z_taxonomy_image25','http://localhost:10018/wp-content/uploads/2021/02/almacenaje-personal-oficina10.jpg','no');
INSERT INTO `wp_options` VALUES (632,'z_taxonomy_image26','http://localhost:10018/wp-content/uploads/2021/02/mobiliario-de-oficina-moderno-lanmobel-st54.jpg','no');
INSERT INTO `wp_options` VALUES (635,'recovery_mode_email_last_sent','1613388267','yes');
INSERT INTO `wp_options` VALUES (654,'z_taxonomy_image28','http://localhost:10018/wp-content/uploads/2021/02/airelimpio.jpg','no');
INSERT INTO `wp_options` VALUES (671,'category_product_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (674,'_site_transient_timeout_theme_roots','1613575745','no');
INSERT INTO `wp_options` VALUES (675,'_site_transient_theme_roots','a:1:{s:7:\"ignaweb\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=968 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,2,'_edit_lock','1612607570:1');
INSERT INTO `wp_postmeta` VALUES (4,3,'_edit_lock','1612607573:1');
INSERT INTO `wp_postmeta` VALUES (6,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (7,6,'_edit_lock','1613299573:1');
INSERT INTO `wp_postmeta` VALUES (9,18,'_edit_lock','1613304347:1');
INSERT INTO `wp_postmeta` VALUES (10,24,'_wp_attached_file','2021/02/01.jpg');
INSERT INTO `wp_postmeta` VALUES (11,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/01.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"01-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"01-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"01-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"01-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (12,25,'_wp_attached_file','2021/02/02.jpg');
INSERT INTO `wp_postmeta` VALUES (13,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/02.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"02-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"02-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"02-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"02-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (14,26,'_wp_attached_file','2021/02/03.jpg');
INSERT INTO `wp_postmeta` VALUES (15,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/03.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"03-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"03-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"03-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"03-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (16,27,'_wp_attached_file','2021/02/04.jpg');
INSERT INTO `wp_postmeta` VALUES (17,27,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/04.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"04-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"04-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"04-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"04-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (18,28,'_wp_attached_file','2021/02/05.jpg');
INSERT INTO `wp_postmeta` VALUES (19,28,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/05.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"05-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"05-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"05-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"05-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (20,29,'_wp_attached_file','2021/02/05T.png');
INSERT INTO `wp_postmeta` VALUES (21,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:702;s:6:\"height\";i:468;s:4:\"file\";s:15:\"2021/02/05T.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"05T-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"05T-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (22,30,'_wp_attached_file','2021/02/06.jpg');
INSERT INTO `wp_postmeta` VALUES (23,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/06.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"06-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"06-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"06-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"06-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (24,31,'_wp_attached_file','2021/02/07.jpg');
INSERT INTO `wp_postmeta` VALUES (25,31,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/07.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"07-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"07-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"07-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"07-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (26,32,'_wp_attached_file','2021/02/08.jpg');
INSERT INTO `wp_postmeta` VALUES (27,32,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:14:\"2021/02/08.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"08-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"08-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"08-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"08-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (28,33,'_wp_attached_file','2021/02/09.jpg');
INSERT INTO `wp_postmeta` VALUES (29,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:14:\"2021/02/09.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"09-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"09-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"09-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"09-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"09-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (30,34,'_wp_attached_file','2021/02/10.jpg');
INSERT INTO `wp_postmeta` VALUES (31,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/10.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"10-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"10-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"10-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (32,35,'_wp_attached_file','2021/02/11.jpg');
INSERT INTO `wp_postmeta` VALUES (33,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/11.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"11-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"11-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"11-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (34,36,'_wp_attached_file','2021/02/12.jpg');
INSERT INTO `wp_postmeta` VALUES (35,36,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:14:\"2021/02/12.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"12-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"12-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"12-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (36,37,'_wp_attached_file','2021/02/15.jpg');
INSERT INTO `wp_postmeta` VALUES (37,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:14:\"2021/02/15.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"15-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"15-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"15-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"15-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (38,38,'_wp_attached_file','2021/02/16.jpg');
INSERT INTO `wp_postmeta` VALUES (39,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:14:\"2021/02/16.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"16-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"16-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"16-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"16-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (40,39,'_wp_attached_file','2021/02/19.jpg');
INSERT INTO `wp_postmeta` VALUES (41,39,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/19.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"19-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"19-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"19-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"19-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"19-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (42,40,'_wp_attached_file','2021/02/21.jpg');
INSERT INTO `wp_postmeta` VALUES (43,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/21.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"21-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"21-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"21-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"21-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (44,41,'_wp_attached_file','2021/02/22.jpg');
INSERT INTO `wp_postmeta` VALUES (45,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:14:\"2021/02/22.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"22-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"22-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"22-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"22-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"22-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (46,42,'_wp_attached_file','2021/02/23.jpg');
INSERT INTO `wp_postmeta` VALUES (47,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:14:\"2021/02/23.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"23-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"23-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"23-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"23-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"23-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (48,43,'_wp_attached_file','2021/02/24.jpg');
INSERT INTO `wp_postmeta` VALUES (49,43,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:14:\"2021/02/24.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"24-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"24-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"24-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"24-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"24-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (50,44,'_wp_attached_file','2021/02/26.jpg');
INSERT INTO `wp_postmeta` VALUES (51,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:14:\"2021/02/26.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"26-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"26-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"26-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"26-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"26-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (52,45,'_wp_attached_file','2021/02/29.jpg');
INSERT INTO `wp_postmeta` VALUES (53,45,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/29.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"29-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"29-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"29-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"29-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"29-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (54,46,'_wp_attached_file','2021/02/30.jpg');
INSERT INTO `wp_postmeta` VALUES (55,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:14:\"2021/02/30.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"30-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"30-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"30-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"30-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"30-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (56,47,'_wp_attached_file','2021/02/33.jpg');
INSERT INTO `wp_postmeta` VALUES (57,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/33.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"33-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"33-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"33-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"33-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"33-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (58,48,'_wp_attached_file','2021/02/35.jpg');
INSERT INTO `wp_postmeta` VALUES (59,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/35.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"35-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"35-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"35-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"35-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"35-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (60,49,'_wp_attached_file','2021/02/38.jpg');
INSERT INTO `wp_postmeta` VALUES (61,49,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/38.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"38-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"38-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"38-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"38-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"38-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (62,50,'_wp_attached_file','2021/02/40.jpg');
INSERT INTO `wp_postmeta` VALUES (63,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/40.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"40-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"40-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"40-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"40-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"40-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (64,51,'_wp_attached_file','2021/02/41.jpg');
INSERT INTO `wp_postmeta` VALUES (65,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:14:\"2021/02/41.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"41-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"41-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"41-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"41-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"41-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (66,52,'_wp_attached_file','2021/02/42.jpg');
INSERT INTO `wp_postmeta` VALUES (67,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:14:\"2021/02/42.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"42-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"42-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"42-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"42-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"42-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (68,53,'_wp_attached_file','2021/02/43.jpg');
INSERT INTO `wp_postmeta` VALUES (69,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/43.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"43-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"43-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"43-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"43-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"43-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (70,54,'_wp_attached_file','2021/02/44.jpg');
INSERT INTO `wp_postmeta` VALUES (71,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/44.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"44-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"44-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"44-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"44-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"44-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (72,55,'_wp_attached_file','2021/02/45.jpg');
INSERT INTO `wp_postmeta` VALUES (73,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/45.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"45-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"45-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"45-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"45-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"45-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (74,56,'_wp_attached_file','2021/02/46.jpg');
INSERT INTO `wp_postmeta` VALUES (75,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/46.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"46-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"46-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"46-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"46-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"46-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (76,57,'_wp_attached_file','2021/02/47.jpg');
INSERT INTO `wp_postmeta` VALUES (77,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2021/02/47.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"47-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"47-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"47-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"47-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"47-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(C)Alina Banta www.luzestudio.es\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (78,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (79,18,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (80,18,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (81,18,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (82,18,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (83,18,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (84,18,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (85,18,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (86,18,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (87,18,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (88,18,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (89,18,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (90,18,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (91,18,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (92,18,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (93,18,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (94,18,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (95,18,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (96,18,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (97,23,'producto_1_product_imagen','');
INSERT INTO `wp_postmeta` VALUES (98,23,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (99,23,'producto_1_producto_texto','');
INSERT INTO `wp_postmeta` VALUES (100,23,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (101,23,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (102,23,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (103,23,'producto_2_product_imagen','');
INSERT INTO `wp_postmeta` VALUES (104,23,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (105,23,'producto_2_producto_texto','');
INSERT INTO `wp_postmeta` VALUES (106,23,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (107,23,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (108,23,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (109,23,'producto_3_product_imagen','');
INSERT INTO `wp_postmeta` VALUES (110,23,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (111,23,'producto_3_producto_texto','');
INSERT INTO `wp_postmeta` VALUES (112,23,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (113,23,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (114,23,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (115,58,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (116,58,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (117,58,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (118,58,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (119,58,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (120,58,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (121,58,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (122,58,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (123,58,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (124,58,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (125,58,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (126,58,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (127,58,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (128,58,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (129,58,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (130,58,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (131,58,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (132,58,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (133,59,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (134,59,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (135,59,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (136,59,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (137,59,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (138,59,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (139,59,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (140,59,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (141,59,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (142,59,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (143,59,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (144,59,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (145,59,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (146,59,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (147,59,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (148,59,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (149,59,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (150,59,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (151,61,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (152,61,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (153,61,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (154,61,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (155,61,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (156,61,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (157,61,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (158,61,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (159,61,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (160,61,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (161,61,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (162,61,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (163,61,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (164,61,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (165,61,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (166,61,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (167,61,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (168,61,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (169,63,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (170,63,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (171,63,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (172,63,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (173,63,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (174,63,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (175,63,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (176,63,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (177,63,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (178,63,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (179,63,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (180,63,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (181,63,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (182,63,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (183,63,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (184,63,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (185,63,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (186,63,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (187,18,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (188,18,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (189,18,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (190,18,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (191,18,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (192,18,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (193,64,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (194,64,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (195,64,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (196,64,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (197,64,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (198,64,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (199,64,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (200,64,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (201,64,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (202,64,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (203,64,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (204,64,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (205,64,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (206,64,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (207,64,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (208,64,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (209,64,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (210,64,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (211,64,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (212,64,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (213,64,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (214,64,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (215,64,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (216,64,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (217,65,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (218,65,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (219,65,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (220,65,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (221,65,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (222,65,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (223,65,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (224,65,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (225,65,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (226,65,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (227,65,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (228,65,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (229,65,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (230,65,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (231,65,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (232,65,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (233,65,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (234,65,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (235,65,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (236,65,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (237,65,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (238,65,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (239,65,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (240,65,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (241,18,'producto_1_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (242,18,'_producto_1_product_descripcion','field_6020394715391');
INSERT INTO `wp_postmeta` VALUES (243,18,'producto_2_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (244,18,'_producto_2_product_descripcion','field_6020399b15392');
INSERT INTO `wp_postmeta` VALUES (245,18,'producto_3_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (246,18,'_producto_3_product_descripcion','field_602039b715393');
INSERT INTO `wp_postmeta` VALUES (247,69,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (248,69,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (249,69,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (250,69,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (251,69,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (252,69,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (253,69,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (254,69,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (255,69,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (256,69,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (257,69,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (258,69,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (259,69,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (260,69,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (261,69,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (262,69,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (263,69,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (264,69,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (265,69,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (266,69,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (267,69,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (268,69,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (269,69,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (270,69,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (271,69,'producto_1_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (272,69,'_producto_1_product_descripcion','field_6020394715391');
INSERT INTO `wp_postmeta` VALUES (273,69,'producto_2_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (274,69,'_producto_2_product_descripcion','field_6020399b15392');
INSERT INTO `wp_postmeta` VALUES (275,69,'producto_3_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (276,69,'_producto_3_product_descripcion','field_602039b715393');
INSERT INTO `wp_postmeta` VALUES (277,73,'_wp_attached_file','2021/02/obrero-e-ingeniero-asiaticos-como-equipo-56707540.jpg');
INSERT INTO `wp_postmeta` VALUES (278,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:900;s:4:\"file\";s:61:\"2021/02/obrero-e-ingeniero-asiaticos-como-equipo-56707540.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"obrero-e-ingeniero-asiaticos-como-equipo-56707540-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"obrero-e-ingeniero-asiaticos-como-equipo-56707540-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (279,18,'servicios_servicios_imagen','73');
INSERT INTO `wp_postmeta` VALUES (280,18,'_servicios_servicios_imagen','field_60205a8ef9584');
INSERT INTO `wp_postmeta` VALUES (281,18,'servicios_servivicos_descripcion','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makea type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (282,18,'_servicios_servivicos_descripcion','field_60205ab1f9585');
INSERT INTO `wp_postmeta` VALUES (283,18,'servicios','');
INSERT INTO `wp_postmeta` VALUES (284,18,'_servicios','field_60205a51f9583');
INSERT INTO `wp_postmeta` VALUES (285,74,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (286,74,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (287,74,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (288,74,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (289,74,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (290,74,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (291,74,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (292,74,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (293,74,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (294,74,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (295,74,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (296,74,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (297,74,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (298,74,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (299,74,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (300,74,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (301,74,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (302,74,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (303,74,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (304,74,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (305,74,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (306,74,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (307,74,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (308,74,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (309,74,'producto_1_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (310,74,'_producto_1_product_descripcion','field_6020394715391');
INSERT INTO `wp_postmeta` VALUES (311,74,'producto_2_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (312,74,'_producto_2_product_descripcion','field_6020399b15392');
INSERT INTO `wp_postmeta` VALUES (313,74,'producto_3_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (314,74,'_producto_3_product_descripcion','field_602039b715393');
INSERT INTO `wp_postmeta` VALUES (315,74,'servicios_servicios_imagen','73');
INSERT INTO `wp_postmeta` VALUES (316,74,'_servicios_servicios_imagen','field_60205a8ef9584');
INSERT INTO `wp_postmeta` VALUES (317,74,'servicios_servivicos_descripcion','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makea type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (318,74,'_servicios_servivicos_descripcion','field_60205ab1f9585');
INSERT INTO `wp_postmeta` VALUES (319,74,'servicios','');
INSERT INTO `wp_postmeta` VALUES (320,74,'_servicios','field_60205a51f9583');
INSERT INTO `wp_postmeta` VALUES (321,75,'_wp_attached_file','2021/02/pollo9-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (322,75,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1810;s:6:\"height\";i:2560;s:4:\"file\";s:25:\"2021/02/pollo9-scaled.jpg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pollo9-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"pollo9-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pollo9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"pollo9-768x1086.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"pollo9-1086x1536.jpg\";s:5:\"width\";i:1086;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"pollo9-1448x2048.jpg\";s:5:\"width\";i:1448;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"pollo9-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:18:\"pollo9-430x322.jpg\";s:5:\"width\";i:430;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:18:\"pollo9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"pollo9-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"pollo9-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"pollo9-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"pollo9-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"pollo9.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (324,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (325,77,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (326,77,'mobmenu_88a5303e404eeb93','');
INSERT INTO `wp_postmeta` VALUES (327,77,'_edit_lock','1612794871:1');
INSERT INTO `wp_postmeta` VALUES (328,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (329,79,'_edit_lock','1613304422:1');
INSERT INTO `wp_postmeta` VALUES (330,79,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (331,79,'mobmenu_88a5303e404eeb93','');
INSERT INTO `wp_postmeta` VALUES (332,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (333,81,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (334,81,'mobmenu_88a5303e404eeb93','');
INSERT INTO `wp_postmeta` VALUES (335,81,'_edit_lock','1613300485:1');
INSERT INTO `wp_postmeta` VALUES (336,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (337,83,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (338,83,'mobmenu_88a5303e404eeb93','');
INSERT INTO `wp_postmeta` VALUES (339,83,'_edit_lock','1612794900:1');
INSERT INTO `wp_postmeta` VALUES (340,85,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (341,85,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (342,85,'mobmenu_88a5303e404eeb93','');
INSERT INTO `wp_postmeta` VALUES (343,85,'_edit_lock','1612794904:1');
INSERT INTO `wp_postmeta` VALUES (344,77,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (345,77,'_wp_trash_meta_time','1612794914');
INSERT INTO `wp_postmeta` VALUES (346,77,'_wp_desired_post_slug','inicio-2');
INSERT INTO `wp_postmeta` VALUES (347,87,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (348,87,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (349,87,'_menu_item_object_id','85');
INSERT INTO `wp_postmeta` VALUES (350,87,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (351,87,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (352,87,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (353,87,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (354,87,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (356,88,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (357,88,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (358,88,'_menu_item_object_id','83');
INSERT INTO `wp_postmeta` VALUES (359,88,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (360,88,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (361,88,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (362,88,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (363,88,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (365,89,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (366,89,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (367,89,'_menu_item_object_id','81');
INSERT INTO `wp_postmeta` VALUES (368,89,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (369,89,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (370,89,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (371,89,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (372,89,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (374,90,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (375,90,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (376,90,'_menu_item_object_id','79');
INSERT INTO `wp_postmeta` VALUES (377,90,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (378,90,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (379,90,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (380,90,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (381,90,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (383,91,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (384,91,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (385,91,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (386,91,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (387,91,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (388,91,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (389,91,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (390,91,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (391,91,'_menu_item_orphaned','1612794935');
INSERT INTO `wp_postmeta` VALUES (392,92,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (393,92,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (394,92,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (395,92,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (396,92,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (397,92,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (398,92,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (399,92,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (401,18,'cifra_1_descripcion_cifra','Trabajos realizados');
INSERT INTO `wp_postmeta` VALUES (402,18,'_cifra_1_descripcion_cifra','field_6027a4e2a1ce1');
INSERT INTO `wp_postmeta` VALUES (403,18,'cifra_1_valor_cifra','2412');
INSERT INTO `wp_postmeta` VALUES (404,18,'_cifra_1_valor_cifra','field_6027a4f2a1ce2');
INSERT INTO `wp_postmeta` VALUES (405,18,'cifra_1','');
INSERT INTO `wp_postmeta` VALUES (406,18,'_cifra_1','field_6027a4afa1ce0');
INSERT INTO `wp_postmeta` VALUES (407,18,'cifra_2_descripcion_cifra','Trabajadores');
INSERT INTO `wp_postmeta` VALUES (408,18,'_cifra_2_descripcion_cifra','field_6027a57116a2d');
INSERT INTO `wp_postmeta` VALUES (409,18,'cifra_2_valor_cifra','17');
INSERT INTO `wp_postmeta` VALUES (410,18,'_cifra_2_valor_cifra','field_6027a57116a2e');
INSERT INTO `wp_postmeta` VALUES (411,18,'cifra_2','');
INSERT INTO `wp_postmeta` VALUES (412,18,'_cifra_2','field_6027a57116a2c');
INSERT INTO `wp_postmeta` VALUES (413,18,'cifra_3_descripcion_cifra','clientes satisfechos ');
INSERT INTO `wp_postmeta` VALUES (414,18,'_cifra_3_descripcion_cifra','field_6027a56c16a2a');
INSERT INTO `wp_postmeta` VALUES (415,18,'cifra_3_valor_cifra','152');
INSERT INTO `wp_postmeta` VALUES (416,18,'_cifra_3_valor_cifra','field_6027a56c16a2b');
INSERT INTO `wp_postmeta` VALUES (417,18,'cifra_3','');
INSERT INTO `wp_postmeta` VALUES (418,18,'_cifra_3','field_6027a56c16a29');
INSERT INTO `wp_postmeta` VALUES (419,104,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (420,104,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (421,104,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (422,104,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (423,104,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (424,104,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (425,104,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (426,104,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (427,104,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (428,104,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (429,104,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (430,104,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (431,104,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (432,104,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (433,104,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (434,104,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (435,104,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (436,104,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (437,104,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (438,104,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (439,104,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (440,104,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (441,104,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (442,104,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (443,104,'producto_1_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (444,104,'_producto_1_product_descripcion','field_6020394715391');
INSERT INTO `wp_postmeta` VALUES (445,104,'producto_2_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (446,104,'_producto_2_product_descripcion','field_6020399b15392');
INSERT INTO `wp_postmeta` VALUES (447,104,'producto_3_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (448,104,'_producto_3_product_descripcion','field_602039b715393');
INSERT INTO `wp_postmeta` VALUES (449,104,'servicios_servicios_imagen','73');
INSERT INTO `wp_postmeta` VALUES (450,104,'_servicios_servicios_imagen','field_60205a8ef9584');
INSERT INTO `wp_postmeta` VALUES (451,104,'servicios_servivicos_descripcion','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makea type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (452,104,'_servicios_servivicos_descripcion','field_60205ab1f9585');
INSERT INTO `wp_postmeta` VALUES (453,104,'servicios','');
INSERT INTO `wp_postmeta` VALUES (454,104,'_servicios','field_60205a51f9583');
INSERT INTO `wp_postmeta` VALUES (455,104,'cifra_1_descripcion_cifra','Trabajos realizados');
INSERT INTO `wp_postmeta` VALUES (456,104,'_cifra_1_descripcion_cifra','field_6027a4e2a1ce1');
INSERT INTO `wp_postmeta` VALUES (457,104,'cifra_1_valor_cifra','2412');
INSERT INTO `wp_postmeta` VALUES (458,104,'_cifra_1_valor_cifra','field_6027a4f2a1ce2');
INSERT INTO `wp_postmeta` VALUES (459,104,'cifra_1','');
INSERT INTO `wp_postmeta` VALUES (460,104,'_cifra_1','field_6027a4afa1ce0');
INSERT INTO `wp_postmeta` VALUES (461,104,'cifra_2_descripcion_cifra','Trabajadores');
INSERT INTO `wp_postmeta` VALUES (462,104,'_cifra_2_descripcion_cifra','field_6027a57116a2d');
INSERT INTO `wp_postmeta` VALUES (463,104,'cifra_2_valor_cifra','17');
INSERT INTO `wp_postmeta` VALUES (464,104,'_cifra_2_valor_cifra','field_6027a57116a2e');
INSERT INTO `wp_postmeta` VALUES (465,104,'cifra_2','');
INSERT INTO `wp_postmeta` VALUES (466,104,'_cifra_2','field_6027a57116a2c');
INSERT INTO `wp_postmeta` VALUES (467,104,'cifra_3_descripcion_cifra','clientes satisfechos ');
INSERT INTO `wp_postmeta` VALUES (468,104,'_cifra_3_descripcion_cifra','field_6027a56c16a2a');
INSERT INTO `wp_postmeta` VALUES (469,104,'cifra_3_valor_cifra','152');
INSERT INTO `wp_postmeta` VALUES (470,104,'_cifra_3_valor_cifra','field_6027a56c16a2b');
INSERT INTO `wp_postmeta` VALUES (471,104,'cifra_3','');
INSERT INTO `wp_postmeta` VALUES (472,104,'_cifra_3','field_6027a56c16a29');
INSERT INTO `wp_postmeta` VALUES (473,18,'cliente_1_nombre_cliente','Prueba 1');
INSERT INTO `wp_postmeta` VALUES (474,18,'_cliente_1_nombre_cliente','field_6027ae94f5879');
INSERT INTO `wp_postmeta` VALUES (475,18,'cliente_1_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (476,18,'_cliente_1_imagen_cliente','field_6027ae9ef587a');
INSERT INTO `wp_postmeta` VALUES (477,18,'cliente_1','');
INSERT INTO `wp_postmeta` VALUES (478,18,'_cliente_1','field_6027ae81f5878');
INSERT INTO `wp_postmeta` VALUES (479,18,'cliente_2_nombre_cliente','Prueba 2');
INSERT INTO `wp_postmeta` VALUES (480,18,'_cliente_2_nombre_cliente','field_6027aeb3f587c');
INSERT INTO `wp_postmeta` VALUES (481,18,'cliente_2_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (482,18,'_cliente_2_imagen_cliente','field_6027aeb3f587d');
INSERT INTO `wp_postmeta` VALUES (483,18,'cliente_2','');
INSERT INTO `wp_postmeta` VALUES (484,18,'_cliente_2','field_6027aeb3f587b');
INSERT INTO `wp_postmeta` VALUES (485,18,'cliente_3_nombre_cliente','Prueba 3');
INSERT INTO `wp_postmeta` VALUES (486,18,'_cliente_3_nombre_cliente','field_6027aeb7f587f');
INSERT INTO `wp_postmeta` VALUES (487,18,'cliente_3_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (488,18,'_cliente_3_imagen_cliente','field_6027aeb7f5880');
INSERT INTO `wp_postmeta` VALUES (489,18,'cliente_3','');
INSERT INTO `wp_postmeta` VALUES (490,18,'_cliente_3','field_6027aeb7f587e');
INSERT INTO `wp_postmeta` VALUES (491,18,'cliente_4_nombre_cliente','Prueba 4');
INSERT INTO `wp_postmeta` VALUES (492,18,'_cliente_4_nombre_cliente','field_6027aeb9f5882');
INSERT INTO `wp_postmeta` VALUES (493,18,'cliente_4_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (494,18,'_cliente_4_imagen_cliente','field_6027aeb9f5883');
INSERT INTO `wp_postmeta` VALUES (495,18,'cliente_4','');
INSERT INTO `wp_postmeta` VALUES (496,18,'_cliente_4','field_6027aeb9f5881');
INSERT INTO `wp_postmeta` VALUES (497,18,'cliente_5_nombre_cliente','Prueba 5');
INSERT INTO `wp_postmeta` VALUES (498,18,'_cliente_5_nombre_cliente','field_6027aebcf5885');
INSERT INTO `wp_postmeta` VALUES (499,18,'cliente_5_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (500,18,'_cliente_5_imagen_cliente','field_6027aebcf5886');
INSERT INTO `wp_postmeta` VALUES (501,18,'cliente_5','');
INSERT INTO `wp_postmeta` VALUES (502,18,'_cliente_5','field_6027aebcf5884');
INSERT INTO `wp_postmeta` VALUES (503,18,'cliente_6_nombre_cliente','Prueba 6');
INSERT INTO `wp_postmeta` VALUES (504,18,'_cliente_6_nombre_cliente','field_6027aec0f5888');
INSERT INTO `wp_postmeta` VALUES (505,18,'cliente_6_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (506,18,'_cliente_6_imagen_cliente','field_6027aec0f5889');
INSERT INTO `wp_postmeta` VALUES (507,18,'cliente_6','');
INSERT INTO `wp_postmeta` VALUES (508,18,'_cliente_6','field_6027aec0f5887');
INSERT INTO `wp_postmeta` VALUES (509,18,'cliente_7_nombre_cliente','Prueba 7');
INSERT INTO `wp_postmeta` VALUES (510,18,'_cliente_7_nombre_cliente','field_6027aec2f588b');
INSERT INTO `wp_postmeta` VALUES (511,18,'cliente_7_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (512,18,'_cliente_7_imagen_cliente','field_6027aec2f588c');
INSERT INTO `wp_postmeta` VALUES (513,18,'cliente_7','');
INSERT INTO `wp_postmeta` VALUES (514,18,'_cliente_7','field_6027aec2f588a');
INSERT INTO `wp_postmeta` VALUES (515,18,'cliente_8_nombre_cliente','Prueba 8');
INSERT INTO `wp_postmeta` VALUES (516,18,'_cliente_8_nombre_cliente','field_6027aec4f588e');
INSERT INTO `wp_postmeta` VALUES (517,18,'cliente_8_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (518,18,'_cliente_8_imagen_cliente','field_6027aec4f588f');
INSERT INTO `wp_postmeta` VALUES (519,18,'cliente_8','');
INSERT INTO `wp_postmeta` VALUES (520,18,'_cliente_8','field_6027aec4f588d');
INSERT INTO `wp_postmeta` VALUES (521,130,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (522,130,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (523,130,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (524,130,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (525,130,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (526,130,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (527,130,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (528,130,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (529,130,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (530,130,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (531,130,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (532,130,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (533,130,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (534,130,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (535,130,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (536,130,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (537,130,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (538,130,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (539,130,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (540,130,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (541,130,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (542,130,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (543,130,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (544,130,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (545,130,'producto_1_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (546,130,'_producto_1_product_descripcion','field_6020394715391');
INSERT INTO `wp_postmeta` VALUES (547,130,'producto_2_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (548,130,'_producto_2_product_descripcion','field_6020399b15392');
INSERT INTO `wp_postmeta` VALUES (549,130,'producto_3_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (550,130,'_producto_3_product_descripcion','field_602039b715393');
INSERT INTO `wp_postmeta` VALUES (551,130,'servicios_servicios_imagen','73');
INSERT INTO `wp_postmeta` VALUES (552,130,'_servicios_servicios_imagen','field_60205a8ef9584');
INSERT INTO `wp_postmeta` VALUES (553,130,'servicios_servivicos_descripcion','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makea type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (554,130,'_servicios_servivicos_descripcion','field_60205ab1f9585');
INSERT INTO `wp_postmeta` VALUES (555,130,'servicios','');
INSERT INTO `wp_postmeta` VALUES (556,130,'_servicios','field_60205a51f9583');
INSERT INTO `wp_postmeta` VALUES (557,130,'cifra_1_descripcion_cifra','Trabajos realizados');
INSERT INTO `wp_postmeta` VALUES (558,130,'_cifra_1_descripcion_cifra','field_6027a4e2a1ce1');
INSERT INTO `wp_postmeta` VALUES (559,130,'cifra_1_valor_cifra','2412');
INSERT INTO `wp_postmeta` VALUES (560,130,'_cifra_1_valor_cifra','field_6027a4f2a1ce2');
INSERT INTO `wp_postmeta` VALUES (561,130,'cifra_1','');
INSERT INTO `wp_postmeta` VALUES (562,130,'_cifra_1','field_6027a4afa1ce0');
INSERT INTO `wp_postmeta` VALUES (563,130,'cifra_2_descripcion_cifra','Trabajadores');
INSERT INTO `wp_postmeta` VALUES (564,130,'_cifra_2_descripcion_cifra','field_6027a57116a2d');
INSERT INTO `wp_postmeta` VALUES (565,130,'cifra_2_valor_cifra','17');
INSERT INTO `wp_postmeta` VALUES (566,130,'_cifra_2_valor_cifra','field_6027a57116a2e');
INSERT INTO `wp_postmeta` VALUES (567,130,'cifra_2','');
INSERT INTO `wp_postmeta` VALUES (568,130,'_cifra_2','field_6027a57116a2c');
INSERT INTO `wp_postmeta` VALUES (569,130,'cifra_3_descripcion_cifra','clientes satisfechos ');
INSERT INTO `wp_postmeta` VALUES (570,130,'_cifra_3_descripcion_cifra','field_6027a56c16a2a');
INSERT INTO `wp_postmeta` VALUES (571,130,'cifra_3_valor_cifra','152');
INSERT INTO `wp_postmeta` VALUES (572,130,'_cifra_3_valor_cifra','field_6027a56c16a2b');
INSERT INTO `wp_postmeta` VALUES (573,130,'cifra_3','');
INSERT INTO `wp_postmeta` VALUES (574,130,'_cifra_3','field_6027a56c16a29');
INSERT INTO `wp_postmeta` VALUES (575,130,'cliente_1_nombre_cliente','Prueba 1');
INSERT INTO `wp_postmeta` VALUES (576,130,'_cliente_1_nombre_cliente','field_6027ae94f5879');
INSERT INTO `wp_postmeta` VALUES (577,130,'cliente_1_imagen_cliente','75');
INSERT INTO `wp_postmeta` VALUES (578,130,'_cliente_1_imagen_cliente','field_6027ae9ef587a');
INSERT INTO `wp_postmeta` VALUES (579,130,'cliente_1','');
INSERT INTO `wp_postmeta` VALUES (580,130,'_cliente_1','field_6027ae81f5878');
INSERT INTO `wp_postmeta` VALUES (581,130,'cliente_2_nombre_cliente','Prueba 2');
INSERT INTO `wp_postmeta` VALUES (582,130,'_cliente_2_nombre_cliente','field_6027aeb3f587c');
INSERT INTO `wp_postmeta` VALUES (583,130,'cliente_2_imagen_cliente','75');
INSERT INTO `wp_postmeta` VALUES (584,130,'_cliente_2_imagen_cliente','field_6027aeb3f587d');
INSERT INTO `wp_postmeta` VALUES (585,130,'cliente_2','');
INSERT INTO `wp_postmeta` VALUES (586,130,'_cliente_2','field_6027aeb3f587b');
INSERT INTO `wp_postmeta` VALUES (587,130,'cliente_3_nombre_cliente','Prueba 3');
INSERT INTO `wp_postmeta` VALUES (588,130,'_cliente_3_nombre_cliente','field_6027aeb7f587f');
INSERT INTO `wp_postmeta` VALUES (589,130,'cliente_3_imagen_cliente','75');
INSERT INTO `wp_postmeta` VALUES (590,130,'_cliente_3_imagen_cliente','field_6027aeb7f5880');
INSERT INTO `wp_postmeta` VALUES (591,130,'cliente_3','');
INSERT INTO `wp_postmeta` VALUES (592,130,'_cliente_3','field_6027aeb7f587e');
INSERT INTO `wp_postmeta` VALUES (593,130,'cliente_4_nombre_cliente','Prueba 4');
INSERT INTO `wp_postmeta` VALUES (594,130,'_cliente_4_nombre_cliente','field_6027aeb9f5882');
INSERT INTO `wp_postmeta` VALUES (595,130,'cliente_4_imagen_cliente','75');
INSERT INTO `wp_postmeta` VALUES (596,130,'_cliente_4_imagen_cliente','field_6027aeb9f5883');
INSERT INTO `wp_postmeta` VALUES (597,130,'cliente_4','');
INSERT INTO `wp_postmeta` VALUES (598,130,'_cliente_4','field_6027aeb9f5881');
INSERT INTO `wp_postmeta` VALUES (599,130,'cliente_5_nombre_cliente','Prueba 5');
INSERT INTO `wp_postmeta` VALUES (600,130,'_cliente_5_nombre_cliente','field_6027aebcf5885');
INSERT INTO `wp_postmeta` VALUES (601,130,'cliente_5_imagen_cliente','75');
INSERT INTO `wp_postmeta` VALUES (602,130,'_cliente_5_imagen_cliente','field_6027aebcf5886');
INSERT INTO `wp_postmeta` VALUES (603,130,'cliente_5','');
INSERT INTO `wp_postmeta` VALUES (604,130,'_cliente_5','field_6027aebcf5884');
INSERT INTO `wp_postmeta` VALUES (605,130,'cliente_6_nombre_cliente','Prueba 6');
INSERT INTO `wp_postmeta` VALUES (606,130,'_cliente_6_nombre_cliente','field_6027aec0f5888');
INSERT INTO `wp_postmeta` VALUES (607,130,'cliente_6_imagen_cliente','75');
INSERT INTO `wp_postmeta` VALUES (608,130,'_cliente_6_imagen_cliente','field_6027aec0f5889');
INSERT INTO `wp_postmeta` VALUES (609,130,'cliente_6','');
INSERT INTO `wp_postmeta` VALUES (610,130,'_cliente_6','field_6027aec0f5887');
INSERT INTO `wp_postmeta` VALUES (611,130,'cliente_7_nombre_cliente','Prueba 7');
INSERT INTO `wp_postmeta` VALUES (612,130,'_cliente_7_nombre_cliente','field_6027aec2f588b');
INSERT INTO `wp_postmeta` VALUES (613,130,'cliente_7_imagen_cliente','75');
INSERT INTO `wp_postmeta` VALUES (614,130,'_cliente_7_imagen_cliente','field_6027aec2f588c');
INSERT INTO `wp_postmeta` VALUES (615,130,'cliente_7','');
INSERT INTO `wp_postmeta` VALUES (616,130,'_cliente_7','field_6027aec2f588a');
INSERT INTO `wp_postmeta` VALUES (617,130,'cliente_8_nombre_cliente','Prueba 9');
INSERT INTO `wp_postmeta` VALUES (618,130,'_cliente_8_nombre_cliente','field_6027aec4f588e');
INSERT INTO `wp_postmeta` VALUES (619,130,'cliente_8_imagen_cliente','75');
INSERT INTO `wp_postmeta` VALUES (620,130,'_cliente_8_imagen_cliente','field_6027aec4f588f');
INSERT INTO `wp_postmeta` VALUES (621,130,'cliente_8','');
INSERT INTO `wp_postmeta` VALUES (622,130,'_cliente_8','field_6027aec4f588d');
INSERT INTO `wp_postmeta` VALUES (623,131,'_wp_attached_file','2021/02/logo.png');
INSERT INTO `wp_postmeta` VALUES (624,131,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:243;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2021/02/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (625,132,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (626,132,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (627,132,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (628,132,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (629,132,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (630,132,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (631,132,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (632,132,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (633,132,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (634,132,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (635,132,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (636,132,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (637,132,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (638,132,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (639,132,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (640,132,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (641,132,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (642,132,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (643,132,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (644,132,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (645,132,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (646,132,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (647,132,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (648,132,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (649,132,'producto_1_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (650,132,'_producto_1_product_descripcion','field_6020394715391');
INSERT INTO `wp_postmeta` VALUES (651,132,'producto_2_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (652,132,'_producto_2_product_descripcion','field_6020399b15392');
INSERT INTO `wp_postmeta` VALUES (653,132,'producto_3_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (654,132,'_producto_3_product_descripcion','field_602039b715393');
INSERT INTO `wp_postmeta` VALUES (655,132,'servicios_servicios_imagen','73');
INSERT INTO `wp_postmeta` VALUES (656,132,'_servicios_servicios_imagen','field_60205a8ef9584');
INSERT INTO `wp_postmeta` VALUES (657,132,'servicios_servivicos_descripcion','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makea type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (658,132,'_servicios_servivicos_descripcion','field_60205ab1f9585');
INSERT INTO `wp_postmeta` VALUES (659,132,'servicios','');
INSERT INTO `wp_postmeta` VALUES (660,132,'_servicios','field_60205a51f9583');
INSERT INTO `wp_postmeta` VALUES (661,132,'cifra_1_descripcion_cifra','Trabajos realizados');
INSERT INTO `wp_postmeta` VALUES (662,132,'_cifra_1_descripcion_cifra','field_6027a4e2a1ce1');
INSERT INTO `wp_postmeta` VALUES (663,132,'cifra_1_valor_cifra','2412');
INSERT INTO `wp_postmeta` VALUES (664,132,'_cifra_1_valor_cifra','field_6027a4f2a1ce2');
INSERT INTO `wp_postmeta` VALUES (665,132,'cifra_1','');
INSERT INTO `wp_postmeta` VALUES (666,132,'_cifra_1','field_6027a4afa1ce0');
INSERT INTO `wp_postmeta` VALUES (667,132,'cifra_2_descripcion_cifra','Trabajadores');
INSERT INTO `wp_postmeta` VALUES (668,132,'_cifra_2_descripcion_cifra','field_6027a57116a2d');
INSERT INTO `wp_postmeta` VALUES (669,132,'cifra_2_valor_cifra','17');
INSERT INTO `wp_postmeta` VALUES (670,132,'_cifra_2_valor_cifra','field_6027a57116a2e');
INSERT INTO `wp_postmeta` VALUES (671,132,'cifra_2','');
INSERT INTO `wp_postmeta` VALUES (672,132,'_cifra_2','field_6027a57116a2c');
INSERT INTO `wp_postmeta` VALUES (673,132,'cifra_3_descripcion_cifra','clientes satisfechos ');
INSERT INTO `wp_postmeta` VALUES (674,132,'_cifra_3_descripcion_cifra','field_6027a56c16a2a');
INSERT INTO `wp_postmeta` VALUES (675,132,'cifra_3_valor_cifra','152');
INSERT INTO `wp_postmeta` VALUES (676,132,'_cifra_3_valor_cifra','field_6027a56c16a2b');
INSERT INTO `wp_postmeta` VALUES (677,132,'cifra_3','');
INSERT INTO `wp_postmeta` VALUES (678,132,'_cifra_3','field_6027a56c16a29');
INSERT INTO `wp_postmeta` VALUES (679,132,'cliente_1_nombre_cliente','Prueba 1');
INSERT INTO `wp_postmeta` VALUES (680,132,'_cliente_1_nombre_cliente','field_6027ae94f5879');
INSERT INTO `wp_postmeta` VALUES (681,132,'cliente_1_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (682,132,'_cliente_1_imagen_cliente','field_6027ae9ef587a');
INSERT INTO `wp_postmeta` VALUES (683,132,'cliente_1','');
INSERT INTO `wp_postmeta` VALUES (684,132,'_cliente_1','field_6027ae81f5878');
INSERT INTO `wp_postmeta` VALUES (685,132,'cliente_2_nombre_cliente','Prueba 2');
INSERT INTO `wp_postmeta` VALUES (686,132,'_cliente_2_nombre_cliente','field_6027aeb3f587c');
INSERT INTO `wp_postmeta` VALUES (687,132,'cliente_2_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (688,132,'_cliente_2_imagen_cliente','field_6027aeb3f587d');
INSERT INTO `wp_postmeta` VALUES (689,132,'cliente_2','');
INSERT INTO `wp_postmeta` VALUES (690,132,'_cliente_2','field_6027aeb3f587b');
INSERT INTO `wp_postmeta` VALUES (691,132,'cliente_3_nombre_cliente','Prueba 3');
INSERT INTO `wp_postmeta` VALUES (692,132,'_cliente_3_nombre_cliente','field_6027aeb7f587f');
INSERT INTO `wp_postmeta` VALUES (693,132,'cliente_3_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (694,132,'_cliente_3_imagen_cliente','field_6027aeb7f5880');
INSERT INTO `wp_postmeta` VALUES (695,132,'cliente_3','');
INSERT INTO `wp_postmeta` VALUES (696,132,'_cliente_3','field_6027aeb7f587e');
INSERT INTO `wp_postmeta` VALUES (697,132,'cliente_4_nombre_cliente','Prueba 4');
INSERT INTO `wp_postmeta` VALUES (698,132,'_cliente_4_nombre_cliente','field_6027aeb9f5882');
INSERT INTO `wp_postmeta` VALUES (699,132,'cliente_4_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (700,132,'_cliente_4_imagen_cliente','field_6027aeb9f5883');
INSERT INTO `wp_postmeta` VALUES (701,132,'cliente_4','');
INSERT INTO `wp_postmeta` VALUES (702,132,'_cliente_4','field_6027aeb9f5881');
INSERT INTO `wp_postmeta` VALUES (703,132,'cliente_5_nombre_cliente','Prueba 5');
INSERT INTO `wp_postmeta` VALUES (704,132,'_cliente_5_nombre_cliente','field_6027aebcf5885');
INSERT INTO `wp_postmeta` VALUES (705,132,'cliente_5_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (706,132,'_cliente_5_imagen_cliente','field_6027aebcf5886');
INSERT INTO `wp_postmeta` VALUES (707,132,'cliente_5','');
INSERT INTO `wp_postmeta` VALUES (708,132,'_cliente_5','field_6027aebcf5884');
INSERT INTO `wp_postmeta` VALUES (709,132,'cliente_6_nombre_cliente','Prueba 6');
INSERT INTO `wp_postmeta` VALUES (710,132,'_cliente_6_nombre_cliente','field_6027aec0f5888');
INSERT INTO `wp_postmeta` VALUES (711,132,'cliente_6_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (712,132,'_cliente_6_imagen_cliente','field_6027aec0f5889');
INSERT INTO `wp_postmeta` VALUES (713,132,'cliente_6','');
INSERT INTO `wp_postmeta` VALUES (714,132,'_cliente_6','field_6027aec0f5887');
INSERT INTO `wp_postmeta` VALUES (715,132,'cliente_7_nombre_cliente','Prueba 7');
INSERT INTO `wp_postmeta` VALUES (716,132,'_cliente_7_nombre_cliente','field_6027aec2f588b');
INSERT INTO `wp_postmeta` VALUES (717,132,'cliente_7_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (718,132,'_cliente_7_imagen_cliente','field_6027aec2f588c');
INSERT INTO `wp_postmeta` VALUES (719,132,'cliente_7','');
INSERT INTO `wp_postmeta` VALUES (720,132,'_cliente_7','field_6027aec2f588a');
INSERT INTO `wp_postmeta` VALUES (721,132,'cliente_8_nombre_cliente','Prueba 8');
INSERT INTO `wp_postmeta` VALUES (722,132,'_cliente_8_nombre_cliente','field_6027aec4f588e');
INSERT INTO `wp_postmeta` VALUES (723,132,'cliente_8_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (724,132,'_cliente_8_imagen_cliente','field_6027aec4f588f');
INSERT INTO `wp_postmeta` VALUES (725,132,'cliente_8','');
INSERT INTO `wp_postmeta` VALUES (726,132,'_cliente_8','field_6027aec4f588d');
INSERT INTO `wp_postmeta` VALUES (727,133,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (728,133,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (729,133,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (730,133,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (731,133,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (732,133,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (733,133,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (734,133,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (735,133,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (736,133,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (737,133,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (738,133,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (739,133,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (740,133,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (741,133,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (742,133,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (743,133,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (744,133,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (745,133,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (746,133,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (747,133,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (748,133,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (749,133,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (750,133,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (751,133,'producto_1_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (752,133,'_producto_1_product_descripcion','field_6020394715391');
INSERT INTO `wp_postmeta` VALUES (753,133,'producto_2_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (754,133,'_producto_2_product_descripcion','field_6020399b15392');
INSERT INTO `wp_postmeta` VALUES (755,133,'producto_3_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (756,133,'_producto_3_product_descripcion','field_602039b715393');
INSERT INTO `wp_postmeta` VALUES (757,133,'servicios_servicios_imagen','73');
INSERT INTO `wp_postmeta` VALUES (758,133,'_servicios_servicios_imagen','field_60205a8ef9584');
INSERT INTO `wp_postmeta` VALUES (759,133,'servicios_servivicos_descripcion','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makea type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (760,133,'_servicios_servivicos_descripcion','field_60205ab1f9585');
INSERT INTO `wp_postmeta` VALUES (761,133,'servicios','');
INSERT INTO `wp_postmeta` VALUES (762,133,'_servicios','field_60205a51f9583');
INSERT INTO `wp_postmeta` VALUES (763,133,'cifra_1_descripcion_cifra','Trabajos realizados');
INSERT INTO `wp_postmeta` VALUES (764,133,'_cifra_1_descripcion_cifra','field_6027a4e2a1ce1');
INSERT INTO `wp_postmeta` VALUES (765,133,'cifra_1_valor_cifra','2412');
INSERT INTO `wp_postmeta` VALUES (766,133,'_cifra_1_valor_cifra','field_6027a4f2a1ce2');
INSERT INTO `wp_postmeta` VALUES (767,133,'cifra_1','');
INSERT INTO `wp_postmeta` VALUES (768,133,'_cifra_1','field_6027a4afa1ce0');
INSERT INTO `wp_postmeta` VALUES (769,133,'cifra_2_descripcion_cifra','Trabajadores');
INSERT INTO `wp_postmeta` VALUES (770,133,'_cifra_2_descripcion_cifra','field_6027a57116a2d');
INSERT INTO `wp_postmeta` VALUES (771,133,'cifra_2_valor_cifra','17');
INSERT INTO `wp_postmeta` VALUES (772,133,'_cifra_2_valor_cifra','field_6027a57116a2e');
INSERT INTO `wp_postmeta` VALUES (773,133,'cifra_2','');
INSERT INTO `wp_postmeta` VALUES (774,133,'_cifra_2','field_6027a57116a2c');
INSERT INTO `wp_postmeta` VALUES (775,133,'cifra_3_descripcion_cifra','clientes satisfechos ');
INSERT INTO `wp_postmeta` VALUES (776,133,'_cifra_3_descripcion_cifra','field_6027a56c16a2a');
INSERT INTO `wp_postmeta` VALUES (777,133,'cifra_3_valor_cifra','152');
INSERT INTO `wp_postmeta` VALUES (778,133,'_cifra_3_valor_cifra','field_6027a56c16a2b');
INSERT INTO `wp_postmeta` VALUES (779,133,'cifra_3','');
INSERT INTO `wp_postmeta` VALUES (780,133,'_cifra_3','field_6027a56c16a29');
INSERT INTO `wp_postmeta` VALUES (781,133,'cliente_1_nombre_cliente','Prueba 1');
INSERT INTO `wp_postmeta` VALUES (782,133,'_cliente_1_nombre_cliente','field_6027ae94f5879');
INSERT INTO `wp_postmeta` VALUES (783,133,'cliente_1_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (784,133,'_cliente_1_imagen_cliente','field_6027ae9ef587a');
INSERT INTO `wp_postmeta` VALUES (785,133,'cliente_1','');
INSERT INTO `wp_postmeta` VALUES (786,133,'_cliente_1','field_6027ae81f5878');
INSERT INTO `wp_postmeta` VALUES (787,133,'cliente_2_nombre_cliente','Prueba 2');
INSERT INTO `wp_postmeta` VALUES (788,133,'_cliente_2_nombre_cliente','field_6027aeb3f587c');
INSERT INTO `wp_postmeta` VALUES (789,133,'cliente_2_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (790,133,'_cliente_2_imagen_cliente','field_6027aeb3f587d');
INSERT INTO `wp_postmeta` VALUES (791,133,'cliente_2','');
INSERT INTO `wp_postmeta` VALUES (792,133,'_cliente_2','field_6027aeb3f587b');
INSERT INTO `wp_postmeta` VALUES (793,133,'cliente_3_nombre_cliente','Prueba 3');
INSERT INTO `wp_postmeta` VALUES (794,133,'_cliente_3_nombre_cliente','field_6027aeb7f587f');
INSERT INTO `wp_postmeta` VALUES (795,133,'cliente_3_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (796,133,'_cliente_3_imagen_cliente','field_6027aeb7f5880');
INSERT INTO `wp_postmeta` VALUES (797,133,'cliente_3','');
INSERT INTO `wp_postmeta` VALUES (798,133,'_cliente_3','field_6027aeb7f587e');
INSERT INTO `wp_postmeta` VALUES (799,133,'cliente_4_nombre_cliente','Prueba 4');
INSERT INTO `wp_postmeta` VALUES (800,133,'_cliente_4_nombre_cliente','field_6027aeb9f5882');
INSERT INTO `wp_postmeta` VALUES (801,133,'cliente_4_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (802,133,'_cliente_4_imagen_cliente','field_6027aeb9f5883');
INSERT INTO `wp_postmeta` VALUES (803,133,'cliente_4','');
INSERT INTO `wp_postmeta` VALUES (804,133,'_cliente_4','field_6027aeb9f5881');
INSERT INTO `wp_postmeta` VALUES (805,133,'cliente_5_nombre_cliente','Prueba 5');
INSERT INTO `wp_postmeta` VALUES (806,133,'_cliente_5_nombre_cliente','field_6027aebcf5885');
INSERT INTO `wp_postmeta` VALUES (807,133,'cliente_5_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (808,133,'_cliente_5_imagen_cliente','field_6027aebcf5886');
INSERT INTO `wp_postmeta` VALUES (809,133,'cliente_5','');
INSERT INTO `wp_postmeta` VALUES (810,133,'_cliente_5','field_6027aebcf5884');
INSERT INTO `wp_postmeta` VALUES (811,133,'cliente_6_nombre_cliente','Prueba 6');
INSERT INTO `wp_postmeta` VALUES (812,133,'_cliente_6_nombre_cliente','field_6027aec0f5888');
INSERT INTO `wp_postmeta` VALUES (813,133,'cliente_6_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (814,133,'_cliente_6_imagen_cliente','field_6027aec0f5889');
INSERT INTO `wp_postmeta` VALUES (815,133,'cliente_6','');
INSERT INTO `wp_postmeta` VALUES (816,133,'_cliente_6','field_6027aec0f5887');
INSERT INTO `wp_postmeta` VALUES (817,133,'cliente_7_nombre_cliente','Prueba 7');
INSERT INTO `wp_postmeta` VALUES (818,133,'_cliente_7_nombre_cliente','field_6027aec2f588b');
INSERT INTO `wp_postmeta` VALUES (819,133,'cliente_7_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (820,133,'_cliente_7_imagen_cliente','field_6027aec2f588c');
INSERT INTO `wp_postmeta` VALUES (821,133,'cliente_7','');
INSERT INTO `wp_postmeta` VALUES (822,133,'_cliente_7','field_6027aec2f588a');
INSERT INTO `wp_postmeta` VALUES (823,133,'cliente_8_nombre_cliente','Prueba 8');
INSERT INTO `wp_postmeta` VALUES (824,133,'_cliente_8_nombre_cliente','field_6027aec4f588e');
INSERT INTO `wp_postmeta` VALUES (825,133,'cliente_8_imagen_cliente','75');
INSERT INTO `wp_postmeta` VALUES (826,133,'_cliente_8_imagen_cliente','field_6027aec4f588f');
INSERT INTO `wp_postmeta` VALUES (827,133,'cliente_8','');
INSERT INTO `wp_postmeta` VALUES (828,133,'_cliente_8','field_6027aec4f588d');
INSERT INTO `wp_postmeta` VALUES (829,134,'producto_1_product_imagen','48');
INSERT INTO `wp_postmeta` VALUES (830,134,'_producto_1_product_imagen','field_60202097ec8c3');
INSERT INTO `wp_postmeta` VALUES (831,134,'producto_1_producto_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (832,134,'_producto_1_producto_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (833,134,'producto_1','');
INSERT INTO `wp_postmeta` VALUES (834,134,'_producto_1','field_60202052ec8c2');
INSERT INTO `wp_postmeta` VALUES (835,134,'producto_2_product_imagen','35');
INSERT INTO `wp_postmeta` VALUES (836,134,'_producto_2_product_imagen','field_60202105ec8c6');
INSERT INTO `wp_postmeta` VALUES (837,134,'producto_2_producto_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (838,134,'_producto_2_producto_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (839,134,'producto_2','');
INSERT INTO `wp_postmeta` VALUES (840,134,'_producto_2','field_60202105ec8c5');
INSERT INTO `wp_postmeta` VALUES (841,134,'producto_3_product_imagen','37');
INSERT INTO `wp_postmeta` VALUES (842,134,'_producto_3_product_imagen','field_6020210eec8c9');
INSERT INTO `wp_postmeta` VALUES (843,134,'producto_3_producto_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (844,134,'_producto_3_producto_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (845,134,'producto_3','');
INSERT INTO `wp_postmeta` VALUES (846,134,'_producto_3','field_6020210eec8c8');
INSERT INTO `wp_postmeta` VALUES (847,134,'producto_1_product_texto','Mamparas');
INSERT INTO `wp_postmeta` VALUES (848,134,'_producto_1_product_texto','field_602020d6ec8c4');
INSERT INTO `wp_postmeta` VALUES (849,134,'producto_2_product_texto','Muebles');
INSERT INTO `wp_postmeta` VALUES (850,134,'_producto_2_product_texto','field_60202105ec8c7');
INSERT INTO `wp_postmeta` VALUES (851,134,'producto_3_product_texto','Taquillas');
INSERT INTO `wp_postmeta` VALUES (852,134,'_producto_3_product_texto','field_6020210eec8ca');
INSERT INTO `wp_postmeta` VALUES (853,134,'producto_1_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (854,134,'_producto_1_product_descripcion','field_6020394715391');
INSERT INTO `wp_postmeta` VALUES (855,134,'producto_2_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (856,134,'_producto_2_product_descripcion','field_6020399b15392');
INSERT INTO `wp_postmeta` VALUES (857,134,'producto_3_product_descripcion','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac quam lacus.');
INSERT INTO `wp_postmeta` VALUES (858,134,'_producto_3_product_descripcion','field_602039b715393');
INSERT INTO `wp_postmeta` VALUES (859,134,'servicios_servicios_imagen','73');
INSERT INTO `wp_postmeta` VALUES (860,134,'_servicios_servicios_imagen','field_60205a8ef9584');
INSERT INTO `wp_postmeta` VALUES (861,134,'servicios_servivicos_descripcion','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makea type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (862,134,'_servicios_servivicos_descripcion','field_60205ab1f9585');
INSERT INTO `wp_postmeta` VALUES (863,134,'servicios','');
INSERT INTO `wp_postmeta` VALUES (864,134,'_servicios','field_60205a51f9583');
INSERT INTO `wp_postmeta` VALUES (865,134,'cifra_1_descripcion_cifra','Trabajos realizados');
INSERT INTO `wp_postmeta` VALUES (866,134,'_cifra_1_descripcion_cifra','field_6027a4e2a1ce1');
INSERT INTO `wp_postmeta` VALUES (867,134,'cifra_1_valor_cifra','2412');
INSERT INTO `wp_postmeta` VALUES (868,134,'_cifra_1_valor_cifra','field_6027a4f2a1ce2');
INSERT INTO `wp_postmeta` VALUES (869,134,'cifra_1','');
INSERT INTO `wp_postmeta` VALUES (870,134,'_cifra_1','field_6027a4afa1ce0');
INSERT INTO `wp_postmeta` VALUES (871,134,'cifra_2_descripcion_cifra','Trabajadores');
INSERT INTO `wp_postmeta` VALUES (872,134,'_cifra_2_descripcion_cifra','field_6027a57116a2d');
INSERT INTO `wp_postmeta` VALUES (873,134,'cifra_2_valor_cifra','17');
INSERT INTO `wp_postmeta` VALUES (874,134,'_cifra_2_valor_cifra','field_6027a57116a2e');
INSERT INTO `wp_postmeta` VALUES (875,134,'cifra_2','');
INSERT INTO `wp_postmeta` VALUES (876,134,'_cifra_2','field_6027a57116a2c');
INSERT INTO `wp_postmeta` VALUES (877,134,'cifra_3_descripcion_cifra','clientes satisfechos ');
INSERT INTO `wp_postmeta` VALUES (878,134,'_cifra_3_descripcion_cifra','field_6027a56c16a2a');
INSERT INTO `wp_postmeta` VALUES (879,134,'cifra_3_valor_cifra','152');
INSERT INTO `wp_postmeta` VALUES (880,134,'_cifra_3_valor_cifra','field_6027a56c16a2b');
INSERT INTO `wp_postmeta` VALUES (881,134,'cifra_3','');
INSERT INTO `wp_postmeta` VALUES (882,134,'_cifra_3','field_6027a56c16a29');
INSERT INTO `wp_postmeta` VALUES (883,134,'cliente_1_nombre_cliente','Prueba 1');
INSERT INTO `wp_postmeta` VALUES (884,134,'_cliente_1_nombre_cliente','field_6027ae94f5879');
INSERT INTO `wp_postmeta` VALUES (885,134,'cliente_1_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (886,134,'_cliente_1_imagen_cliente','field_6027ae9ef587a');
INSERT INTO `wp_postmeta` VALUES (887,134,'cliente_1','');
INSERT INTO `wp_postmeta` VALUES (888,134,'_cliente_1','field_6027ae81f5878');
INSERT INTO `wp_postmeta` VALUES (889,134,'cliente_2_nombre_cliente','Prueba 2');
INSERT INTO `wp_postmeta` VALUES (890,134,'_cliente_2_nombre_cliente','field_6027aeb3f587c');
INSERT INTO `wp_postmeta` VALUES (891,134,'cliente_2_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (892,134,'_cliente_2_imagen_cliente','field_6027aeb3f587d');
INSERT INTO `wp_postmeta` VALUES (893,134,'cliente_2','');
INSERT INTO `wp_postmeta` VALUES (894,134,'_cliente_2','field_6027aeb3f587b');
INSERT INTO `wp_postmeta` VALUES (895,134,'cliente_3_nombre_cliente','Prueba 3');
INSERT INTO `wp_postmeta` VALUES (896,134,'_cliente_3_nombre_cliente','field_6027aeb7f587f');
INSERT INTO `wp_postmeta` VALUES (897,134,'cliente_3_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (898,134,'_cliente_3_imagen_cliente','field_6027aeb7f5880');
INSERT INTO `wp_postmeta` VALUES (899,134,'cliente_3','');
INSERT INTO `wp_postmeta` VALUES (900,134,'_cliente_3','field_6027aeb7f587e');
INSERT INTO `wp_postmeta` VALUES (901,134,'cliente_4_nombre_cliente','Prueba 4');
INSERT INTO `wp_postmeta` VALUES (902,134,'_cliente_4_nombre_cliente','field_6027aeb9f5882');
INSERT INTO `wp_postmeta` VALUES (903,134,'cliente_4_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (904,134,'_cliente_4_imagen_cliente','field_6027aeb9f5883');
INSERT INTO `wp_postmeta` VALUES (905,134,'cliente_4','');
INSERT INTO `wp_postmeta` VALUES (906,134,'_cliente_4','field_6027aeb9f5881');
INSERT INTO `wp_postmeta` VALUES (907,134,'cliente_5_nombre_cliente','Prueba 5');
INSERT INTO `wp_postmeta` VALUES (908,134,'_cliente_5_nombre_cliente','field_6027aebcf5885');
INSERT INTO `wp_postmeta` VALUES (909,134,'cliente_5_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (910,134,'_cliente_5_imagen_cliente','field_6027aebcf5886');
INSERT INTO `wp_postmeta` VALUES (911,134,'cliente_5','');
INSERT INTO `wp_postmeta` VALUES (912,134,'_cliente_5','field_6027aebcf5884');
INSERT INTO `wp_postmeta` VALUES (913,134,'cliente_6_nombre_cliente','Prueba 6');
INSERT INTO `wp_postmeta` VALUES (914,134,'_cliente_6_nombre_cliente','field_6027aec0f5888');
INSERT INTO `wp_postmeta` VALUES (915,134,'cliente_6_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (916,134,'_cliente_6_imagen_cliente','field_6027aec0f5889');
INSERT INTO `wp_postmeta` VALUES (917,134,'cliente_6','');
INSERT INTO `wp_postmeta` VALUES (918,134,'_cliente_6','field_6027aec0f5887');
INSERT INTO `wp_postmeta` VALUES (919,134,'cliente_7_nombre_cliente','Prueba 7');
INSERT INTO `wp_postmeta` VALUES (920,134,'_cliente_7_nombre_cliente','field_6027aec2f588b');
INSERT INTO `wp_postmeta` VALUES (921,134,'cliente_7_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (922,134,'_cliente_7_imagen_cliente','field_6027aec2f588c');
INSERT INTO `wp_postmeta` VALUES (923,134,'cliente_7','');
INSERT INTO `wp_postmeta` VALUES (924,134,'_cliente_7','field_6027aec2f588a');
INSERT INTO `wp_postmeta` VALUES (925,134,'cliente_8_nombre_cliente','Prueba 8');
INSERT INTO `wp_postmeta` VALUES (926,134,'_cliente_8_nombre_cliente','field_6027aec4f588e');
INSERT INTO `wp_postmeta` VALUES (927,134,'cliente_8_imagen_cliente','131');
INSERT INTO `wp_postmeta` VALUES (928,134,'_cliente_8_imagen_cliente','field_6027aec4f588f');
INSERT INTO `wp_postmeta` VALUES (929,134,'cliente_8','');
INSERT INTO `wp_postmeta` VALUES (930,134,'_cliente_8','field_6027aec4f588d');
INSERT INTO `wp_postmeta` VALUES (931,135,'_wp_attached_file','2021/02/logo@2x.png');
INSERT INTO `wp_postmeta` VALUES (932,135,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1695;s:6:\"height\";i:708;s:4:\"file\";s:19:\"2021/02/logo@2x.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"logo@2x-300x125.png\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"logo@2x-1024x428.png\";s:5:\"width\";i:1024;s:6:\"height\";i:428;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"logo@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"logo@2x-768x321.png\";s:5:\"width\";i:768;s:6:\"height\";i:321;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"logo@2x-1536x642.png\";s:5:\"width\";i:1536;s:6:\"height\";i:642;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (933,137,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (934,137,'_edit_lock','1613381566:1');
INSERT INTO `wp_postmeta` VALUES (935,138,'_wp_attached_file','woocommerce-placeholder.png');
INSERT INTO `wp_postmeta` VALUES (936,138,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-430x322.png\";s:5:\"width\";i:430;s:6:\"height\";i:322;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"galleryMobile\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-355x265.png\";s:5:\"width\";i:355;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"galleryMobile2\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"galleryMobile3\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-320x240.png\";s:5:\"width\";i:320;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-350x724.png\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-400x375.png\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-700x400.png\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"blog\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-966x644.png\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (937,144,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (938,144,'_edit_lock','1613381558:1');
INSERT INTO `wp_postmeta` VALUES (939,146,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (940,146,'_edit_lock','1613382423:1');
INSERT INTO `wp_postmeta` VALUES (941,147,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (942,147,'_edit_lock','1613382434:1');
INSERT INTO `wp_postmeta` VALUES (943,141,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (944,141,'_wp_trash_meta_time','1613383186');
INSERT INTO `wp_postmeta` VALUES (945,141,'_wp_desired_post_slug','checkout');
INSERT INTO `wp_postmeta` VALUES (946,140,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (947,140,'_wp_trash_meta_time','1613383188');
INSERT INTO `wp_postmeta` VALUES (948,140,'_wp_desired_post_slug','cart');
INSERT INTO `wp_postmeta` VALUES (949,142,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (950,142,'_wp_trash_meta_time','1613383190');
INSERT INTO `wp_postmeta` VALUES (951,142,'_wp_desired_post_slug','my-account');
INSERT INTO `wp_postmeta` VALUES (952,139,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (953,139,'_wp_trash_meta_time','1613383193');
INSERT INTO `wp_postmeta` VALUES (954,139,'_wp_desired_post_slug','shop');
INSERT INTO `wp_postmeta` VALUES (955,154,'_wp_attached_file','2021/02/diseno-muebles-de-oficina.jpg');
INSERT INTO `wp_postmeta` VALUES (956,154,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:933;s:4:\"file\";s:37:\"2021/02/diseno-muebles-de-oficina.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"diseno-muebles-de-oficina-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-430x322.jpg\";s:5:\"width\";i:430;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"galleryMobile\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-355x265.jpg\";s:5:\"width\";i:355;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile2\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile3\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-320x240.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:37:\"diseno-muebles-de-oficina-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (957,155,'_wp_attached_file','2021/02/almacenaje-personal-oficina10.jpg');
INSERT INTO `wp_postmeta` VALUES (958,155,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:467;s:4:\"file\";s:41:\"2021/02/almacenaje-personal-oficina10.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-430x322.jpg\";s:5:\"width\";i:430;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"galleryMobile\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-355x265.jpg\";s:5:\"width\";i:355;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile2\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile3\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-320x240.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-350x467.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:41:\"almacenaje-personal-oficina10-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (959,156,'_wp_attached_file','2021/02/mamparas-de-oficina-principal-807x500-1.jpg');
INSERT INTO `wp_postmeta` VALUES (960,156,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:807;s:6:\"height\";i:500;s:4:\"file\";s:51:\"2021/02/mamparas-de-oficina-principal-807x500-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-768x476.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:476;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-430x322.jpg\";s:5:\"width\";i:430;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"galleryMobile\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-355x265.jpg\";s:5:\"width\";i:355;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile2\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile3\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-320x240.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-350x500.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:51:\"mamparas-de-oficina-principal-807x500-1-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (961,157,'_wp_attached_file','2021/02/mobiliario-de-oficina-moderno-lanmobel-st54.jpg');
INSERT INTO `wp_postmeta` VALUES (962,157,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:866;s:4:\"file\";s:55:\"2021/02/mobiliario-de-oficina-moderno-lanmobel-st54.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:56:\"mobiliario-de-oficina-moderno-lanmobel-st54-1024x739.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:739;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-768x554.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-430x322.jpg\";s:5:\"width\";i:430;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"galleryMobile\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-355x265.jpg\";s:5:\"width\";i:355;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile2\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile3\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-320x240.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:55:\"mobiliario-de-oficina-moderno-lanmobel-st54-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (963,159,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (964,159,'_edit_lock','1613420385:1');
INSERT INTO `wp_postmeta` VALUES (965,159,'_thumbnail_id','156');
INSERT INTO `wp_postmeta` VALUES (966,160,'_wp_attached_file','2021/02/airelimpio.jpg');
INSERT INTO `wp_postmeta` VALUES (967,160,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1733;s:6:\"height\";i:866;s:4:\"file\";s:22:\"2021/02/airelimpio.jpg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"airelimpio-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"airelimpio-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"airelimpio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"airelimpio-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"airelimpio-1536x768.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:22:\"airelimpio-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"gallery\";a:4:{s:4:\"file\";s:22:\"airelimpio-430x322.jpg\";s:5:\"width\";i:430;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"galleryMobile\";a:4:{s:4:\"file\";s:22:\"airelimpio-355x265.jpg\";s:5:\"width\";i:355;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile2\";a:4:{s:4:\"file\";s:22:\"airelimpio-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"galleryMobile3\";a:4:{s:4:\"file\";s:22:\"airelimpio-320x240.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:22:\"airelimpio-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:22:\"airelimpio-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:22:\"airelimpio-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:22:\"airelimpio-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:22:\"airelimpio-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-02-06 09:10:32','2021-02-06 09:10:32','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-02-06 09:10:32','2021-02-06 09:10:32','',0,'http://localhost:10018/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-02-06 09:10:32','2021-02-06 09:10:32','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10018/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-02-06 09:10:32','2021-02-06 09:10:32','',0,'http://localhost:10018/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-02-06 09:10:32','2021-02-06 09:10:32','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:10018.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-02-06 09:10:32','2021-02-06 09:10:32','',0,'http://localhost:10018/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"18\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Inicio','inicio','publish','closed','closed','','group_60201f220b956','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',0,'http://localhost:10018/?post_type=acf-field-group&#038;p=6',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:52:\"añadir un producto con su descripción y una imagen\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Productos','productos','publish','closed','closed','','field_60201f3eec8c1','','','2021-02-07 17:20:14','2021-02-07 17:20:14','',6,'http://localhost:10018/?post_type=acf-field&p=7',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:48:\"Añadir un producto con su descripción e imagen\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','producto 1','producto_1','publish','closed','closed','','field_60202052ec8c2','','','2021-02-07 17:20:14','2021-02-07 17:20:14','',6,'http://localhost:10018/?post_type=acf-field&p=8',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','product_imagen','publish','closed','closed','','field_60202097ec8c3','','','2021-02-07 17:20:14','2021-02-07 17:20:14','',8,'http://localhost:10018/?post_type=acf-field&p=9',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','product_texto','publish','closed','closed','','field_602020d6ec8c4','','','2021-02-07 18:14:24','2021-02-07 18:14:24','',8,'http://localhost:10018/?post_type=acf-field&#038;p=10',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:48:\"Añadir un producto con su descripción e imagen\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','producto 2','producto_2','publish','closed','closed','','field_60202105ec8c5','','','2021-02-07 17:20:14','2021-02-07 17:20:14','',6,'http://localhost:10018/?post_type=acf-field&p=11',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','product_imagen','publish','closed','closed','','field_60202105ec8c6','','','2021-02-07 17:20:14','2021-02-07 17:20:14','',11,'http://localhost:10018/?post_type=acf-field&p=12',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','product_texto','publish','closed','closed','','field_60202105ec8c7','','','2021-02-07 18:14:24','2021-02-07 18:14:24','',11,'http://localhost:10018/?post_type=acf-field&#038;p=13',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:48:\"Añadir un producto con su descripción e imagen\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','producto 3','producto_3','publish','closed','closed','','field_6020210eec8c8','','','2021-02-07 17:20:14','2021-02-07 17:20:14','',6,'http://localhost:10018/?post_type=acf-field&p=14',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','product_imagen','publish','closed','closed','','field_6020210eec8c9','','','2021-02-07 17:20:14','2021-02-07 17:20:14','',14,'http://localhost:10018/?post_type=acf-field&p=15',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-02-07 17:20:14','2021-02-07 17:20:14','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','product_texto','publish','closed','closed','','field_6020210eec8ca','','','2021-02-07 18:14:24','2021-02-07 18:14:24','',14,'http://localhost:10018/?post_type=acf-field&#038;p=16',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-02-07 17:21:57','2021-02-07 17:21:57','','Inicio','','publish','closed','closed','','inicio','','','2021-02-13 11:53:15','2021-02-13 11:53:15','',0,'http://localhost:10018/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-02-07 17:21:57','2021-02-07 17:21:57','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 17:21:57','2021-02-07 17:21:57','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-02-07 17:25:40','2021-02-07 17:25:40','<!-- wp:categories /-->','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 17:25:40','2021-02-07 17:25:40','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-02-07 17:26:16','2021-02-07 17:26:16','<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 17:26:16','2021-02-07 17:26:16','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-02-07 17:28:06','2021-02-07 17:28:06','<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 17:28:06','2021-02-07 17:28:06','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-02-07 17:34:45','2021-02-07 17:34:45','','01','','inherit','open','closed','','01','','','2021-02-07 17:34:45','2021-02-07 17:34:45','',18,'http://localhost:10018/wp-content/uploads/2021/02/01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-02-07 17:34:45','2021-02-07 17:34:45','','02','','inherit','open','closed','','02','','','2021-02-07 17:34:45','2021-02-07 17:34:45','',18,'http://localhost:10018/wp-content/uploads/2021/02/02.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-02-07 17:34:45','2021-02-07 17:34:45','','03','','inherit','open','closed','','03','','','2021-02-07 17:34:45','2021-02-07 17:34:45','',18,'http://localhost:10018/wp-content/uploads/2021/02/03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-02-07 17:34:46','2021-02-07 17:34:46','','04','','inherit','open','closed','','04','','','2021-02-07 17:34:46','2021-02-07 17:34:46','',18,'http://localhost:10018/wp-content/uploads/2021/02/04.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-02-07 17:34:46','2021-02-07 17:34:46','','05','','inherit','open','closed','','05','','','2021-02-07 17:34:46','2021-02-07 17:34:46','',18,'http://localhost:10018/wp-content/uploads/2021/02/05.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-02-07 17:34:47','2021-02-07 17:34:47','','05T','','inherit','open','closed','','05t','','','2021-02-07 17:34:47','2021-02-07 17:34:47','',18,'http://localhost:10018/wp-content/uploads/2021/02/05T.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-02-07 17:34:47','2021-02-07 17:34:47','','06','','inherit','open','closed','','06','','','2021-02-07 17:34:47','2021-02-07 17:34:47','',18,'http://localhost:10018/wp-content/uploads/2021/02/06.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-02-07 17:34:47','2021-02-07 17:34:47','','07','','inherit','open','closed','','07','','','2021-02-07 17:34:47','2021-02-07 17:34:47','',18,'http://localhost:10018/wp-content/uploads/2021/02/07.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-02-07 17:34:47','2021-02-07 17:34:47','','08','','inherit','open','closed','','08','','','2021-02-07 17:34:47','2021-02-07 17:34:47','',18,'http://localhost:10018/wp-content/uploads/2021/02/08.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-02-07 17:34:48','2021-02-07 17:34:48','','09','','inherit','open','closed','','09','','','2021-02-07 17:34:48','2021-02-07 17:34:48','',18,'http://localhost:10018/wp-content/uploads/2021/02/09.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-02-07 17:34:48','2021-02-07 17:34:48','','10','','inherit','open','closed','','10','','','2021-02-07 17:34:48','2021-02-07 17:34:48','',18,'http://localhost:10018/wp-content/uploads/2021/02/10.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-02-07 17:34:49','2021-02-07 17:34:49','','11','','inherit','open','closed','','11','','','2021-02-07 17:34:49','2021-02-07 17:34:49','',18,'http://localhost:10018/wp-content/uploads/2021/02/11.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-02-07 17:34:49','2021-02-07 17:34:49','','12','','inherit','open','closed','','12','','','2021-02-07 17:34:49','2021-02-07 17:34:49','',18,'http://localhost:10018/wp-content/uploads/2021/02/12.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-02-07 17:34:49','2021-02-07 17:34:49','','15','','inherit','open','closed','','15','','','2021-02-07 17:34:49','2021-02-07 17:34:49','',18,'http://localhost:10018/wp-content/uploads/2021/02/15.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-02-07 17:34:50','2021-02-07 17:34:50','','16','','inherit','open','closed','','16','','','2021-02-07 17:34:50','2021-02-07 17:34:50','',18,'http://localhost:10018/wp-content/uploads/2021/02/16.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-02-07 17:34:50','2021-02-07 17:34:50','','19','','inherit','open','closed','','19','','','2021-02-07 17:34:50','2021-02-07 17:34:50','',18,'http://localhost:10018/wp-content/uploads/2021/02/19.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-02-07 17:34:51','2021-02-07 17:34:51','','21','','inherit','open','closed','','21','','','2021-02-07 17:34:51','2021-02-07 17:34:51','',18,'http://localhost:10018/wp-content/uploads/2021/02/21.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-02-07 17:34:51','2021-02-07 17:34:51','','22','','inherit','open','closed','','22','','','2021-02-07 17:34:51','2021-02-07 17:34:51','',18,'http://localhost:10018/wp-content/uploads/2021/02/22.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-02-07 17:34:51','2021-02-07 17:34:51','','23','','inherit','open','closed','','23','','','2021-02-07 17:34:51','2021-02-07 17:34:51','',18,'http://localhost:10018/wp-content/uploads/2021/02/23.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-02-07 17:34:52','2021-02-07 17:34:52','','24','','inherit','open','closed','','24','','','2021-02-07 17:34:52','2021-02-07 17:34:52','',18,'http://localhost:10018/wp-content/uploads/2021/02/24.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-02-07 17:34:52','2021-02-07 17:34:52','','26','','inherit','open','closed','','26','','','2021-02-07 17:34:52','2021-02-07 17:34:52','',18,'http://localhost:10018/wp-content/uploads/2021/02/26.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-02-07 17:34:53','2021-02-07 17:34:53','','29','','inherit','open','closed','','29','','','2021-02-07 17:34:53','2021-02-07 17:34:53','',18,'http://localhost:10018/wp-content/uploads/2021/02/29.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-02-07 17:34:53','2021-02-07 17:34:53','','30','','inherit','open','closed','','30','','','2021-02-07 17:34:53','2021-02-07 17:34:53','',18,'http://localhost:10018/wp-content/uploads/2021/02/30.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-02-07 17:34:53','2021-02-07 17:34:53','','33','','inherit','open','closed','','33','','','2021-02-07 17:34:53','2021-02-07 17:34:53','',18,'http://localhost:10018/wp-content/uploads/2021/02/33.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-02-07 17:34:54','2021-02-07 17:34:54','','35','','inherit','open','closed','','35','','','2021-02-07 17:34:54','2021-02-07 17:34:54','',18,'http://localhost:10018/wp-content/uploads/2021/02/35.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-02-07 17:34:54','2021-02-07 17:34:54','','38','','inherit','open','closed','','38','','','2021-02-07 17:34:54','2021-02-07 17:34:54','',18,'http://localhost:10018/wp-content/uploads/2021/02/38.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-02-07 17:34:54','2021-02-07 17:34:54','','40','','inherit','open','closed','','40','','','2021-02-07 17:34:54','2021-02-07 17:34:54','',18,'http://localhost:10018/wp-content/uploads/2021/02/40.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-02-07 17:34:55','2021-02-07 17:34:55','','41','','inherit','open','closed','','41','','','2021-02-07 17:34:55','2021-02-07 17:34:55','',18,'http://localhost:10018/wp-content/uploads/2021/02/41.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-02-07 17:34:55','2021-02-07 17:34:55','','42','','inherit','open','closed','','42','','','2021-02-07 17:34:55','2021-02-07 17:34:55','',18,'http://localhost:10018/wp-content/uploads/2021/02/42.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-02-07 17:34:56','2021-02-07 17:34:56','','43','','inherit','open','closed','','43','','','2021-02-07 17:34:56','2021-02-07 17:34:56','',18,'http://localhost:10018/wp-content/uploads/2021/02/43.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-02-07 17:34:56','2021-02-07 17:34:56','','44','','inherit','open','closed','','44','','','2021-02-07 17:34:56','2021-02-07 17:34:56','',18,'http://localhost:10018/wp-content/uploads/2021/02/44.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-02-07 17:34:56','2021-02-07 17:34:56','','45','','inherit','open','closed','','45','','','2021-02-07 17:34:56','2021-02-07 17:34:56','',18,'http://localhost:10018/wp-content/uploads/2021/02/45.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-02-07 17:34:57','2021-02-07 17:34:57','','46','','inherit','open','closed','','46','','','2021-02-07 17:34:57','2021-02-07 17:34:57','',18,'http://localhost:10018/wp-content/uploads/2021/02/46.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-02-07 17:34:57','2021-02-07 17:34:57','','47','','inherit','open','closed','','47','','','2021-02-07 17:34:57','2021-02-07 17:34:57','',18,'http://localhost:10018/wp-content/uploads/2021/02/47.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-02-07 17:48:48','2021-02-07 17:48:48','<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 17:48:48','2021-02-07 17:48:48','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-02-07 17:49:00','2021-02-07 17:49:00','<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 17:49:00','2021-02-07 17:49:00','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-02-07 17:57:13','2021-02-07 17:57:13','<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 17:57:13','2021-02-07 17:57:13','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-02-07 18:04:52','2021-02-07 18:04:52','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 18:04:52','2021-02-07 18:04:52','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-02-07 18:18:44','2021-02-07 18:18:44','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 18:18:44','2021-02-07 18:18:44','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-02-07 18:21:21','2021-02-07 18:21:21','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 18:21:21','2021-02-07 18:21:21','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-02-07 19:04:39','2021-02-07 19:04:39','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:50:\"Aquí va la descripción del producto seleccionado\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Descripcion','product_descripcion','publish','closed','closed','','field_6020394715391','','','2021-02-07 19:04:39','2021-02-07 19:04:39','',8,'http://localhost:10018/?post_type=acf-field&p=66',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-02-07 19:04:39','2021-02-07 19:04:39','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:50:\"Aquí va la descripción del producto seleccionado\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Descripcion','product_descripcion','publish','closed','closed','','field_6020399b15392','','','2021-02-07 19:04:39','2021-02-07 19:04:39','',11,'http://localhost:10018/?post_type=acf-field&p=67',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-02-07 19:04:39','2021-02-07 19:04:39','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:50:\"Aquí va la descripción del producto seleccionado\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Descripcion','product_descripcion','publish','closed','closed','','field_602039b715393','','','2021-02-07 19:04:39','2021-02-07 19:04:39','',14,'http://localhost:10018/?post_type=acf-field&p=68',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-02-07 19:06:25','2021-02-07 19:06:25','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 19:06:25','2021-02-07 19:06:25','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-02-07 21:26:35','2021-02-07 21:26:35','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:52:\"Imagen y descripción de los servicios en la empresa\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Servicios','servicios','publish','closed','closed','','field_60205a51f9583','','','2021-02-07 21:26:35','2021-02-07 21:26:35','',6,'http://localhost:10018/?post_type=acf-field&p=70',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-02-07 21:26:35','2021-02-07 21:26:35','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:49:\"Imagen descriptiva de los servicios de la empresa\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','servicios_imagen','publish','closed','closed','','field_60205a8ef9584','','','2021-02-07 21:26:35','2021-02-07 21:26:35','',70,'http://localhost:10018/?post_type=acf-field&p=71',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-02-07 21:26:35','2021-02-07 21:26:35','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:38:\"Resumen de los servicios de la empresa\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Descripcion','servivicos_descripcion','publish','closed','closed','','field_60205ab1f9585','','','2021-02-07 21:27:01','2021-02-07 21:27:01','',70,'http://localhost:10018/?post_type=acf-field&#038;p=72',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-02-07 21:45:06','2021-02-07 21:45:06','','obrero-e-ingeniero-asiáticos-como-equipo-56707540','','inherit','open','closed','','obrero-e-ingeniero-asiaticos-como-equipo-56707540','','','2021-02-07 21:45:06','2021-02-07 21:45:06','',18,'http://localhost:10018/wp-content/uploads/2021/02/obrero-e-ingeniero-asiaticos-como-equipo-56707540.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-02-07 21:45:49','2021-02-07 21:45:49','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-07 21:45:49','2021-02-07 21:45:49','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-02-08 14:31:55','2021-02-08 14:31:55','','pollo9','','inherit','open','closed','','pollo9','','','2021-02-13 10:56:27','2021-02-13 10:56:27','',18,'http://localhost:10018/wp-content/uploads/2021/02/pollo9.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-02-08 14:34:25','2021-02-08 14:34:25','','Inicio','','trash','closed','closed','','inicio-2__trashed','','','2021-02-08 14:35:14','2021-02-08 14:35:14','',0,'http://localhost:10018/?page_id=77',0,'page','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-02-08 14:34:25','2021-02-08 14:34:25','','Inicio','','inherit','closed','closed','','77-revision-v1','','','2021-02-08 14:34:25','2021-02-08 14:34:25','',77,'http://localhost:10018/77-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-02-08 14:34:42','2021-02-08 14:34:42','','Productos','','publish','closed','closed','','productos-categorias','','','2021-02-14 12:07:01','2021-02-14 12:07:01','',0,'http://localhost:10018/?page_id=79',0,'page','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-02-08 14:34:42','2021-02-08 14:34:42','','Productos','','inherit','closed','closed','','79-revision-v1','','','2021-02-08 14:34:42','2021-02-08 14:34:42','',79,'http://localhost:10018/79-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-02-08 14:34:51','2021-02-08 14:34:51','','Galeria','','publish','closed','closed','','galeria','','','2021-02-08 14:34:51','2021-02-08 14:34:51','',0,'http://localhost:10018/?page_id=81',0,'page','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-02-08 14:34:51','2021-02-08 14:34:51','','Galeria','','inherit','closed','closed','','81-revision-v1','','','2021-02-08 14:34:51','2021-02-08 14:34:51','',81,'http://localhost:10018/81-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-02-08 14:35:00','2021-02-08 14:35:00','','Nosotros','','publish','closed','closed','','nosotros','','','2021-02-08 14:35:00','2021-02-08 14:35:00','',0,'http://localhost:10018/?page_id=83',0,'page','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-02-08 14:35:00','2021-02-08 14:35:00','','Nosotros','','inherit','closed','closed','','83-revision-v1','','','2021-02-08 14:35:00','2021-02-08 14:35:00','',83,'http://localhost:10018/83-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-02-08 14:35:04','2021-02-08 14:35:04','','Contacto','','publish','closed','closed','','contacto','','','2021-02-08 14:35:04','2021-02-08 14:35:04','',0,'http://localhost:10018/?page_id=85',0,'page','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-02-08 14:35:04','2021-02-08 14:35:04','','Contacto','','inherit','closed','closed','','85-revision-v1','','','2021-02-08 14:35:04','2021-02-08 14:35:04','',85,'http://localhost:10018/85-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-02-08 14:36:04','2021-02-08 14:36:04',' ','','','publish','closed','closed','','87','','','2021-02-08 14:36:04','2021-02-08 14:36:04','',0,'http://localhost:10018/?p=87',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-02-08 14:36:04','2021-02-08 14:36:04',' ','','','publish','closed','closed','','88','','','2021-02-08 14:36:04','2021-02-08 14:36:04','',0,'http://localhost:10018/?p=88',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-02-08 14:36:04','2021-02-08 14:36:04',' ','','','publish','closed','closed','','89','','','2021-02-08 14:36:04','2021-02-08 14:36:04','',0,'http://localhost:10018/?p=89',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-02-08 14:36:04','2021-02-08 14:36:04',' ','','','publish','closed','closed','','90','','','2021-02-08 14:36:04','2021-02-08 14:36:04','',0,'http://localhost:10018/?p=90',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-02-08 14:35:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-02-08 14:35:35','0000-00-00 00:00:00','',0,'http://localhost:10018/?p=91',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-02-08 14:36:04','2021-02-08 14:36:04',' ','','','publish','closed','closed','','92','','','2021-02-08 14:36:04','2021-02-08 14:36:04','',0,'http://localhost:10018/?p=92',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-02-13 10:03:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-02-13 10:03:59','0000-00-00 00:00:00','',0,'http://localhost:10018/?p=93',0,'post','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-02-13 10:09:22','2021-02-13 10:09:22','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','CifrasIgnaser','cifrasignaser','publish','closed','closed','','field_6027a492a1cdf','','','2021-02-13 10:09:22','2021-02-13 10:09:22','',6,'http://localhost:10018/?post_type=acf-field&p=94',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-02-13 10:09:22','2021-02-13 10:09:22','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cifra 1','cifra_1','publish','closed','closed','','field_6027a4afa1ce0','','','2021-02-13 10:09:22','2021-02-13 10:09:22','',6,'http://localhost:10018/?post_type=acf-field&p=95',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-02-13 10:09:22','2021-02-13 10:09:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Descripción cifra','descripcion_cifra','publish','closed','closed','','field_6027a4e2a1ce1','','','2021-02-13 10:09:22','2021-02-13 10:09:22','',95,'http://localhost:10018/?post_type=acf-field&p=96',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-02-13 10:09:22','2021-02-13 10:09:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Valor cifra','valor_cifra','publish','closed','closed','','field_6027a4f2a1ce2','','','2021-02-13 10:10:15','2021-02-13 10:10:15','',95,'http://localhost:10018/?post_type=acf-field&#038;p=97',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-02-13 10:10:15','2021-02-13 10:10:15','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cifra 2','cifra_2','publish','closed','closed','','field_6027a57116a2c','','','2021-02-13 10:10:15','2021-02-13 10:10:15','',6,'http://localhost:10018/?post_type=acf-field&p=98',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-02-13 10:10:15','2021-02-13 10:10:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Descripción cifra','descripcion_cifra','publish','closed','closed','','field_6027a57116a2d','','','2021-02-13 10:10:15','2021-02-13 10:10:15','',98,'http://localhost:10018/?post_type=acf-field&p=99',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-02-13 10:10:15','2021-02-13 10:10:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Valor cifra','valor_cifra','publish','closed','closed','','field_6027a57116a2e','','','2021-02-13 10:10:15','2021-02-13 10:10:15','',98,'http://localhost:10018/?post_type=acf-field&p=100',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-02-13 10:10:15','2021-02-13 10:10:15','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cifra 3','cifra_3','publish','closed','closed','','field_6027a56c16a29','','','2021-02-13 10:10:15','2021-02-13 10:10:15','',6,'http://localhost:10018/?post_type=acf-field&p=101',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-02-13 10:10:15','2021-02-13 10:10:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Descripción cifra','descripcion_cifra','publish','closed','closed','','field_6027a56c16a2a','','','2021-02-13 10:10:15','2021-02-13 10:10:15','',101,'http://localhost:10018/?post_type=acf-field&p=102',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-02-13 10:10:15','2021-02-13 10:10:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Valor cifra','valor_cifra','publish','closed','closed','','field_6027a56c16a2b','','','2021-02-13 10:10:15','2021-02-13 10:10:15','',101,'http://localhost:10018/?post_type=acf-field&p=103',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-02-13 10:11:28','2021-02-13 10:11:28','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-13 10:11:28','2021-02-13 10:11:28','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Clientes','clientes','publish','closed','closed','','field_6027ae6af5877','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',6,'http://localhost:10018/?post_type=acf-field&p=105',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cliente 1','cliente_1','publish','closed','closed','','field_6027ae81f5878','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',6,'http://localhost:10018/?post_type=acf-field&p=106',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nombre cliente','nombre_cliente','publish','closed','closed','','field_6027ae94f5879','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',106,'http://localhost:10018/?post_type=acf-field&p=107',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen cliente','imagen_cliente','publish','closed','closed','','field_6027ae9ef587a','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',106,'http://localhost:10018/?post_type=acf-field&p=108',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cliente 2','cliente_2','publish','closed','closed','','field_6027aeb3f587b','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',6,'http://localhost:10018/?post_type=acf-field&p=109',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nombre cliente','nombre_cliente','publish','closed','closed','','field_6027aeb3f587c','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',109,'http://localhost:10018/?post_type=acf-field&p=110',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen cliente','imagen_cliente','publish','closed','closed','','field_6027aeb3f587d','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',109,'http://localhost:10018/?post_type=acf-field&p=111',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cliente 3','cliente_3','publish','closed','closed','','field_6027aeb7f587e','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',6,'http://localhost:10018/?post_type=acf-field&p=112',12,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nombre cliente','nombre_cliente','publish','closed','closed','','field_6027aeb7f587f','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',112,'http://localhost:10018/?post_type=acf-field&p=113',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen cliente','imagen_cliente','publish','closed','closed','','field_6027aeb7f5880','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',112,'http://localhost:10018/?post_type=acf-field&p=114',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cliente 4','cliente_4','publish','closed','closed','','field_6027aeb9f5881','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',6,'http://localhost:10018/?post_type=acf-field&p=115',13,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nombre cliente','nombre_cliente','publish','closed','closed','','field_6027aeb9f5882','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',115,'http://localhost:10018/?post_type=acf-field&p=116',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen cliente','imagen_cliente','publish','closed','closed','','field_6027aeb9f5883','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',115,'http://localhost:10018/?post_type=acf-field&p=117',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cliente 5','cliente_5','publish','closed','closed','','field_6027aebcf5884','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',6,'http://localhost:10018/?post_type=acf-field&p=118',14,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nombre cliente','nombre_cliente','publish','closed','closed','','field_6027aebcf5885','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',118,'http://localhost:10018/?post_type=acf-field&p=119',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen cliente','imagen_cliente','publish','closed','closed','','field_6027aebcf5886','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',118,'http://localhost:10018/?post_type=acf-field&p=120',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cliente 6','cliente_6','publish','closed','closed','','field_6027aec0f5887','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',6,'http://localhost:10018/?post_type=acf-field&p=121',15,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nombre cliente','nombre_cliente','publish','closed','closed','','field_6027aec0f5888','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',121,'http://localhost:10018/?post_type=acf-field&p=122',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen cliente','imagen_cliente','publish','closed','closed','','field_6027aec0f5889','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',121,'http://localhost:10018/?post_type=acf-field&p=123',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cliente 7','cliente_7','publish','closed','closed','','field_6027aec2f588a','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',6,'http://localhost:10018/?post_type=acf-field&p=124',16,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nombre cliente','nombre_cliente','publish','closed','closed','','field_6027aec2f588b','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',124,'http://localhost:10018/?post_type=acf-field&p=125',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen cliente','imagen_cliente','publish','closed','closed','','field_6027aec2f588c','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',124,'http://localhost:10018/?post_type=acf-field&p=126',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','cliente 8','cliente_8','publish','closed','closed','','field_6027aec4f588d','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',6,'http://localhost:10018/?post_type=acf-field&p=127',17,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nombre cliente','nombre_cliente','publish','closed','closed','','field_6027aec4f588e','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',127,'http://localhost:10018/?post_type=acf-field&p=128',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2021-02-13 10:53:11','2021-02-13 10:53:11','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen cliente','imagen_cliente','publish','closed','closed','','field_6027aec4f588f','','','2021-02-13 10:53:11','2021-02-13 10:53:11','',127,'http://localhost:10018/?post_type=acf-field&p=129',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2021-02-13 10:56:27','2021-02-13 10:56:27','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-13 10:56:27','2021-02-13 10:56:27','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2021-02-13 11:13:58','2021-02-13 11:13:58','','logo','','inherit','open','closed','','logo','','','2021-02-13 11:13:58','2021-02-13 11:13:58','',18,'http://localhost:10018/wp-content/uploads/2021/02/logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (132,1,'2021-02-13 11:14:36','2021-02-13 11:14:36','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-13 11:14:36','2021-02-13 11:14:36','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2021-02-13 11:52:59','2021-02-13 11:52:59','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-13 11:52:59','2021-02-13 11:52:59','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2021-02-13 11:53:15','2021-02-13 11:53:15','','Inicio','','inherit','closed','closed','','18-revision-v1','','','2021-02-13 11:53:15','2021-02-13 11:53:15','',18,'http://localhost:10018/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2021-02-13 14:00:11','2021-02-13 14:00:11','','logo@2x','','inherit','open','closed','','logo2x','','','2021-02-13 14:00:11','2021-02-13 14:00:11','',18,'http://localhost:10018/wp-content/uploads/2021/02/logo@2x.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (137,1,'2021-02-14 13:39:50','2021-02-14 13:39:50','Mampara de calidad extrema','Mampara Clásica','','publish','closed','closed','','mampara-clasica','','','2021-02-14 13:39:50','2021-02-14 13:39:50','',0,'http://localhost:10018/?post_type=ignaweb_prooductos&#038;p=137',0,'ignaweb_prooductos','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2021-02-15 09:25:50','2021-02-15 09:25:50','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2021-02-15 09:25:50','2021-02-15 09:25:50','',0,'http://localhost:10018/wp-content/uploads/2021/02/woocommerce-placeholder.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (139,1,'2021-02-15 09:25:51','2021-02-15 09:25:51','','Shop','','trash','closed','closed','','shop__trashed','','','2021-02-15 09:59:53','2021-02-15 09:59:53','',0,'http://localhost:10018/shop/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2021-02-15 09:25:51','2021-02-15 09:25:51','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Cart','','trash','closed','closed','','cart__trashed','','','2021-02-15 09:59:48','2021-02-15 09:59:48','',0,'http://localhost:10018/cart/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2021-02-15 09:25:51','2021-02-15 09:25:51','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Checkout','','trash','closed','closed','','checkout__trashed','','','2021-02-15 09:59:46','2021-02-15 09:59:46','',0,'http://localhost:10018/checkout/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2021-02-15 09:25:51','2021-02-15 09:25:51','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','trash','closed','closed','','my-account__trashed','','','2021-02-15 09:59:50','2021-02-15 09:59:50','',0,'http://localhost:10018/my-account/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2021-02-15 09:31:15','0000-00-00 00:00:00','','AUTO-DRAFT','','auto-draft','open','closed','','','','','2021-02-15 09:31:15','0000-00-00 00:00:00','',0,'http://localhost:10018/?post_type=product&p=143',0,'product','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2021-02-15 09:32:17','0000-00-00 00:00:00','','Mam','','draft','open','closed','','','','','2021-02-15 09:32:17','2021-02-15 09:32:17','',0,'http://localhost:10018/?post_type=product&#038;p=144',0,'product','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2021-02-15 09:45:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-15 09:45:28','0000-00-00 00:00:00','',0,'http://localhost:10018/?post_type=ignaweb_productos&p=145',0,'ignaweb_productos','',0);
INSERT INTO `wp_posts` VALUES (146,1,'2021-02-15 09:46:54','2021-02-15 09:46:54','It is a long established fact that a reader will be distracted by the readable content of a when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','Mampara clásica','','publish','closed','closed','','mampara-clasica','','','2021-02-15 09:47:03','2021-02-15 09:47:03','',0,'http://localhost:10018/?post_type=ignaweb_productos&#038;p=146',0,'ignaweb_productos','',0);
INSERT INTO `wp_posts` VALUES (147,1,'2021-02-15 09:47:14','0000-00-00 00:00:00','','Mampara','','draft','closed','closed','','','','','2021-02-15 09:47:14','2021-02-15 09:47:14','',0,'http://localhost:10018/?post_type=ignaweb_productos&#038;p=147',0,'ignaweb_productos','',0);
INSERT INTO `wp_posts` VALUES (148,1,'2021-02-15 09:48:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-15 09:48:21','0000-00-00 00:00:00','',0,'http://localhost:10018/?post_type=ignaweb_productos&p=148',0,'ignaweb_productos','',0);
INSERT INTO `wp_posts` VALUES (149,1,'2021-02-15 09:59:46','2021-02-15 09:59:46','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Checkout','','inherit','closed','closed','','141-revision-v1','','','2021-02-15 09:59:46','2021-02-15 09:59:46','',141,'http://localhost:10018/141-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2021-02-15 09:59:48','2021-02-15 09:59:48','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Cart','','inherit','closed','closed','','140-revision-v1','','','2021-02-15 09:59:48','2021-02-15 09:59:48','',140,'http://localhost:10018/140-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2021-02-15 09:59:50','2021-02-15 09:59:50','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','inherit','closed','closed','','142-revision-v1','','','2021-02-15 09:59:50','2021-02-15 09:59:50','',142,'http://localhost:10018/142-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2021-02-15 09:59:53','2021-02-15 09:59:53','','Shop','','inherit','closed','closed','','139-revision-v1','','','2021-02-15 09:59:53','2021-02-15 09:59:53','',139,'http://localhost:10018/139-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2021-02-15 10:34:54','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-15 10:34:54','0000-00-00 00:00:00','',0,'http://localhost:10018/?post_type=ignaweb_productos&p=153',0,'ignaweb_productos','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2021-02-15 12:17:33','2021-02-15 12:17:33','','diseno-muebles-de-oficina','','inherit','open','closed','','diseno-muebles-de-oficina','','','2021-02-15 12:17:33','2021-02-15 12:17:33','',0,'http://localhost:10018/wp-content/uploads/2021/02/diseno-muebles-de-oficina.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (155,1,'2021-02-15 12:17:36','2021-02-15 12:17:36','','almacenaje-personal-oficina10','','inherit','open','closed','','almacenaje-personal-oficina10','','','2021-02-15 12:17:36','2021-02-15 12:17:36','',0,'http://localhost:10018/wp-content/uploads/2021/02/almacenaje-personal-oficina10.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (156,1,'2021-02-15 12:17:43','2021-02-15 12:17:43','','mamparas-de-oficina-principal-807x500','','inherit','open','closed','','mamparas-de-oficina-principal-807x500','','','2021-02-15 12:17:43','2021-02-15 12:17:43','',0,'http://localhost:10018/wp-content/uploads/2021/02/mamparas-de-oficina-principal-807x500-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (157,1,'2021-02-15 12:17:46','2021-02-15 12:17:46','','mobiliario-de-oficina-moderno-lanmobel-st54','','inherit','open','closed','','mobiliario-de-oficina-moderno-lanmobel-st54','','','2021-02-15 12:17:46','2021-02-15 12:17:46','',0,'http://localhost:10018/wp-content/uploads/2021/02/mobiliario-de-oficina-moderno-lanmobel-st54.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (158,1,'2021-02-15 12:57:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-15 12:57:10','0000-00-00 00:00:00','',0,'http://localhost:10018/?post_type=ignaweb_productos&p=158',0,'ignaweb_productos','',0);
INSERT INTO `wp_posts` VALUES (159,1,'2021-02-15 12:57:45','2021-02-15 12:57:45','','Mampara deluxe','','publish','closed','closed','','mampara-deluxe','','','2021-02-15 12:57:45','2021-02-15 12:57:45','',0,'http://localhost:10018/?post_type=ignaweb_productos&#038;p=159',0,'ignaweb_productos','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2021-02-15 20:07:29','2021-02-15 20:07:29','','airelimpio','','inherit','open','closed','','airelimpio','','','2021-02-15 20:07:29','2021-02-15 20:07:29','',0,'http://localhost:10018/wp-content/uploads/2021/02/airelimpio.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (87,2,0);
INSERT INTO `wp_term_relationships` VALUES (88,2,0);
INSERT INTO `wp_term_relationships` VALUES (89,2,0);
INSERT INTO `wp_term_relationships` VALUES (90,2,0);
INSERT INTO `wp_term_relationships` VALUES (92,2,0);
INSERT INTO `wp_term_relationships` VALUES (146,20,0);
INSERT INTO `wp_term_relationships` VALUES (159,23,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'product_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'product_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'product_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'product_cat','',17,0);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'genero','Mamparas diseñadas exclusivamente para tu empresa',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'genero','Muebles diseñados exclusivamente para tu empresa',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'genero','Taquillas diseñadas exclusivamente para tu empresa',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'category_product','Mamparas diseñadas exclusivamente para su negocio de última generación',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (24,24,'category_product','Muebles diseñados exclusivamente para su empresa ',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (25,25,'category_product','Taquillas diseñadas exclusivamente para su negocio',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (26,26,'category_product','Escritorios diseñados exclusivamente para tu empresa',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (28,28,'category_product','dasfasfasdasd',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,17,'order','0');
INSERT INTO `wp_termmeta` VALUES (2,17,'display_type','');
INSERT INTO `wp_termmeta` VALUES (3,17,'thumbnail_id','138');
INSERT INTO `wp_termmeta` VALUES (4,18,'order','0');
INSERT INTO `wp_termmeta` VALUES (5,18,'display_type','');
INSERT INTO `wp_termmeta` VALUES (6,18,'thumbnail_id','138');
INSERT INTO `wp_termmeta` VALUES (7,19,'order','0');
INSERT INTO `wp_termmeta` VALUES (8,19,'display_type','');
INSERT INTO `wp_termmeta` VALUES (9,19,'thumbnail_id','0');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'menu1','menu1',0);
INSERT INTO `wp_terms` VALUES (3,'simple','simple',0);
INSERT INTO `wp_terms` VALUES (4,'grouped','grouped',0);
INSERT INTO `wp_terms` VALUES (5,'variable','variable',0);
INSERT INTO `wp_terms` VALUES (6,'external','external',0);
INSERT INTO `wp_terms` VALUES (7,'exclude-from-search','exclude-from-search',0);
INSERT INTO `wp_terms` VALUES (8,'exclude-from-catalog','exclude-from-catalog',0);
INSERT INTO `wp_terms` VALUES (9,'featured','featured',0);
INSERT INTO `wp_terms` VALUES (10,'outofstock','outofstock',0);
INSERT INTO `wp_terms` VALUES (11,'rated-1','rated-1',0);
INSERT INTO `wp_terms` VALUES (12,'rated-2','rated-2',0);
INSERT INTO `wp_terms` VALUES (13,'rated-3','rated-3',0);
INSERT INTO `wp_terms` VALUES (14,'rated-4','rated-4',0);
INSERT INTO `wp_terms` VALUES (15,'rated-5','rated-5',0);
INSERT INTO `wp_terms` VALUES (16,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (17,'Mamparas','mamparas',0);
INSERT INTO `wp_terms` VALUES (18,'Muebles','muebles',0);
INSERT INTO `wp_terms` VALUES (19,'Mamparas Clásicas','mamparas-clasicas',0);
INSERT INTO `wp_terms` VALUES (20,'Mamparas','mamparas',0);
INSERT INTO `wp_terms` VALUES (21,'Muebles','muebles',0);
INSERT INTO `wp_terms` VALUES (22,'Taquillas','taquillas',0);
INSERT INTO `wp_terms` VALUES (23,'Mamparas','mamparas',0);
INSERT INTO `wp_terms` VALUES (24,'Muebles','muebles',0);
INSERT INTO `wp_terms` VALUES (25,'Taquillas','taquillas',0);
INSERT INTO `wp_terms` VALUES (26,'Escritorios','escritorios',0);
INSERT INTO `wp_terms` VALUES (28,'Oficinas','oficinas',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"5a80e6a455ecd4e3fd50a40219b67ae69540837e04b4b82405ba0e21a74d3a9a\";a:4:{s:10:\"expiration\";i:1613556671;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\";s:5:\"login\";i:1613383871;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','93');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings-time','1612719884');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_page','a:2:{i:0;s:27:\"wp-mobile-menu-meta-options\";i:1;s:12:\"revisionsdiv\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (29,1,'closedpostboxes_ignaweb_prooductos','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (30,1,'metaboxhidden_ignaweb_prooductos','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (31,1,'_woocommerce_tracks_anon_id','woo:FezFfiBr+P0tPxLABmmJTQv8');
INSERT INTO `wp_usermeta` VALUES (32,1,'last_update','1613381153');
INSERT INTO `wp_usermeta` VALUES (33,1,'woocommerce_admin_activity_panel_inbox_last_read','1613381153378');
INSERT INTO `wp_usermeta` VALUES (34,1,'wc_last_active','1613347200');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BXeNBBHkz3NmlxzZ6nlbujb8.p67dG/','admin','dev-email@flywheel.local','http://localhost:10018','2021-02-06 09:10:32','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` VALUES (1,1,'learn-more','Learn more','https://docs.woocommerce.com/document/home-screen/?utm_source=inbox','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (2,2,'connect','Connect','?page=wc-addons&section=helper','unactioned',0,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (3,3,'yes-please','Yes please!','https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin','actioned',0,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (4,4,'open-marketing-hub','Open marketing hub','http://localhost:10018/wp-admin/admin.php?page=wc-admin&path=/marketing','actioned',0,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (18,18,'remove-legacy-coupon-menu','Remove legacy coupon menu','http://localhost:10018/wp-admin/admin.php?page=wc-admin&action=remove-coupon-menu','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (19,5,'upgrade_now_facebook_pixel_api','Upgrade now','plugin-install.php?tab=plugin-information&plugin=&section=changelog','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (20,6,'learn_more_facebook_ec','Learn more','https://woocommerce.com/products/facebook/','unactioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (21,7,'set-up-concierge','Schedule free session','https://wordpress.com/me/concierge','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (22,8,'learn-more','Learn more','https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox','unactioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (23,9,'learn-more-ecomm-unique-shopping-experience','Learn more','https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (24,10,'install-now','Install now','admin.php?page=wc-admin&action=setup-woocommerce-payments','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (25,11,'install-now','Install now','admin.php?page=wc-admin&action=setup-woocommerce-payments','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (26,12,'install-now','Install now','admin.php?page=wc-admin&action=setup-woocommerce-payments','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (27,13,'install-now','Install now','admin.php?page=wc-admin&action=setup-woocommerce-payments','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (28,14,'watch-the-webinar','Watch the webinar','https://youtu.be/V_2XtCOyZ7o','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (29,15,'learn-more','Learn more','https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (30,16,'boost-sales-marketing-guide','See marketing guide','https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales','actioned',1,'');
INSERT INTO `wp_wc_admin_note_actions` VALUES (31,17,'grow-your-business-marketing-guide','See marketing guide','https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business','actioned',1,'');
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` VALUES (1,'wc-admin-manage-store-activity-from-home-screen','info','en_US','New! Manage your store activity from the Home screen','Start your day knowing the next steps you need to take with your orders, products, and customer feedback.<br /><br />Read more about how to use the activity panels on the Home screen.','{}','unactioned','woocommerce-admin','2021-02-15 09:25:51',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (2,'wc-admin-wc-helper-connection','info','en_US','Connect to WooCommerce.com','Connect to get important product notifications and updates.','{}','unactioned','woocommerce-admin','2021-02-15 09:25:51',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (3,'wc-admin-onboarding-email-marketing','info','en_US','Sign up for tips, product updates, and inspiration','We\'re here for you - get tips, product updates and inspiration straight to your email box','{}','unactioned','woocommerce-admin','2021-02-15 09:25:51',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (4,'wc-admin-marketing-intro','info','en_US','Connect with your audience','Grow your customer base and increase your sales with marketing tools built for WooCommerce.','{}','unactioned','woocommerce-admin','2021-02-15 09:25:51',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (5,'facebook_pixel_api_2021','marketing','en_US','Improve the performance of your Facebook ads','Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (6,'facebook_ec_2021','marketing','en_US','Sync your product catalog with Facebook to help boost sales','A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (7,'ecomm-need-help-setting-up-your-store','info','en_US','Need help setting up your Store?','Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (8,'woocommerce-services','info','en_US','WooCommerce Shipping & Tax','WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (9,'ecomm-unique-shopping-experience','info','en_US','For a shopping experience as unique as your customers','Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (10,'wcpay-promo-2020-11','marketing','en_US','Manage subscriber payments from your store\'s dashboard','Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (11,'wcpay-subscriptions-2020-11','marketing','en_US','Manage subscriber payments from your store\'s dashboard','Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (12,'wcpay-promo-2020-12','marketing','en_US','Get 50% off transaction fees with WooCommerce Payments','Keep more of your hard-earned cash by adding <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> to your store. Lock in a discounted rate of 1.5% + $0.15 for $25,000 of payments (or three months, whichever comes first). Limited time offer – don’t miss out! <br /><br /><em>By clicking \"Install now,\" you agree to our promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (13,'wcpay-subscriptions-2020-12','marketing','en_US','Manage payments from your store\'s dashboard','Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>! Zero setup fees or monthly fees. Just pay-as-you-go, starting at just 2.9% + $0.30 per transaction for U.S.-issued cards. <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (14,'wc-admin-getting-started-in-ecommerce','info','en_US','Getting Started in eCommerce - webinar','We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (15,'your-first-product','info','en_US','Your first product','That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (16,'wc-square-apple-pay-boost-sales','marketing','en_US','Boost sales with Apple Pay','Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (17,'wc-square-apple-pay-grow-your-business','marketing','en_US','Grow your business with Square and Apple Pay ','Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.','{}','pending','woocommerce.com','2021-02-15 09:25:52',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (18,'wc-admin-coupon-page-moved','update','en_US','Coupon management has moved!','Coupons can now be managed from Marketing &gt; Coupons. Click the button below to remove the legacy WooCommerce &gt; Coupons menu item.','{}','unactioned','woocommerce-admin','2021-02-15 09:26:33',NULL,0,'plain','',0,'info');
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES (16,16);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_reserved_stock`
--

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_reserved_stock`
--

LOCK TABLES `wp_wc_reserved_stock` WRITE;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES (1,'Reduced rate','reduced-rate');
INSERT INTO `wp_wc_tax_rate_classes` VALUES (2,'Zero rate','zero-rate');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (1,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:738:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-02-15T09:25:53+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}',1613553954);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza`
--

DROP TABLE IF EXISTS `wp_wpgmza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pic` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(2083) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lat` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lng` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `anim` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `infoopen` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `other_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `latlng` point DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza`
--

LOCK TABLES `wp_wpgmza` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza` DISABLE KEYS */;
INSERT INTO `wp_wpgmza` VALUES (1,1,'California','','','','','36.778261','-119.4179323999','','','','',1,0,0,'',0,'',_binary '\0\0\0\0\0\0\0J`s�cB@�`�g�\�]�');
/*!40000 ALTER TABLE `wp_wpgmza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_circles`
--

DROP TABLE IF EXISTS `wp_wpgmza_circles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_circles`
--

LOCK TABLES `wp_wpgmza_circles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_circles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_circles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lat` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lng` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_location` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `other_settings` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_maps`
--

LOCK TABLES `wp_wpgmza_maps` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_maps` DISABLE KEYS */;
INSERT INTO `wp_wpgmza_maps` VALUES (1,'New Map','100','400','36.778261','-119.4179323999','45.950464398418106,-109.81550500000003',4,'',0,4,0,0,'',0,'',0,0,0,'',0,0,0,0,0,'','%','px',0,0,0,0,0,'','a:6:{s:8:\"map_type\";i:1;s:15:\"sl_stroke_color\";s:7:\"#FF0000\";s:13:\"sl_fill_color\";s:7:\"#FF0000\";s:17:\"sl_stroke_opacity\";i:1;s:15:\"sl_fill_opacity\";d:0.5;s:15:\"transport_layer\";N;}');
/*!40000 ALTER TABLE `wp_wpgmza_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polygon`
--

DROP TABLE IF EXISTS `wp_wpgmza_polygon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `innerpolydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lineopacity` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohfillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohlinecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohopacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polygon`
--

LOCK TABLES `wp_wpgmza_polygon` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polylines`
--

DROP TABLE IF EXISTS `wp_wpgmza_polylines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linethickness` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polylines`
--

LOCK TABLES `wp_wpgmza_polylines` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_rectangles`
--

DROP TABLE IF EXISTS `wp_wpgmza_rectangles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_rectangles`
--

LOCK TABLES `wp_wpgmza_rectangles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17 16:25:57
